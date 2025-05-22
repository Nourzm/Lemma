<?php
// config.php - Database connection
$host = "localhost";
$username = "root";
$password = "";
$database = "lemma";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo json_encode(['error' => "Connection failed: " . $e->getMessage()]);
    exit;
}

// handle_rating.php - Handle both ratings and comments
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    session_start();
    
    if (!isset($_SESSION['user_id'])) {
        echo json_encode(['error' => 'User not logged in']);
        exit;
    }

    $data = json_decode(file_get_contents('php://input'), true);
    
    if (isset($data['action'])) {
        switch ($data['action']) {
            // In your handle_rating.php, within the 'add_feedback' case:
                case 'add_feedback':
                    try {
                        if (!isset($data['product_id'])) {
                            throw new Exception('Missing required fields');
                        }
                
                        // Check if this is a star rating or a comment
                        $isRating = is_numeric($data['comment']) && $data['comment'] >= 1 && $data['comment'] <= 5;
                        
                        if ($isRating) {
                            // Find existing rating for this product and user
                            $checkStmt = $pdo->prepare("SELECT Rating_id, rating_value FROM rating 
                                WHERE Product_id = ? AND User_Id = ? AND rating_value IS NOT NULL");
                            $checkStmt->execute([$data['product_id'], $_SESSION['user_id']]);
                            $existingRating = $checkStmt->fetch(PDO::FETCH_ASSOC);
                
                            if ($existingRating) {
                                // Update the existing rating
                                $updateStmt = $pdo->prepare("UPDATE rating 
                                    SET rating_value = :new_rating 
                                    WHERE Rating_id = :rating_id");
                                
                                $updateStmt->execute([
                                    ':new_rating' => $data['comment'],
                                    ':rating_id' => $existingRating['Rating_id']
                                ]);
                            } else {
                                // Insert new rating if no existing rating
                                $insertStmt = $pdo->prepare("INSERT INTO rating (Product_id, User_Id, rating_value) 
                                    VALUES (:product_id, :user_id, :rating_value)");
                                
                                $insertStmt->execute([
                                    ':product_id' => $data['product_id'],
                                    ':user_id' => $_SESSION['user_id'],
                                    ':rating_value' => $data['comment']
                                ]);
                            }
                        } else {
                            // Existing comment submission logic
                            $stmt = $pdo->prepare("INSERT INTO rating (Product_id, User_Id, comment) 
                                VALUES (:product_id, :user_id, :comment)");
                            
                            $stmt->execute([
                                ':product_id' => $data['product_id'],
                                ':user_id' => $_SESSION['user_id'],
                                ':comment' => $data['comment']
                            ]);
                        }
                        
                        // Rest of the existing code...
                        $userStmt = $pdo->prepare("SELECT Name, Photo FROM user WHERE User_Id = ?");
                        $userStmt->execute([$_SESSION['user_id']]);
                        $user = $userStmt->fetch(PDO::FETCH_ASSOC);
                        
                        echo json_encode([
                            'success' => true,
                            'user' => [
                                'name' => $user['Name'],
                                'photo' => $user['Photo'] ?? '../assets/Images/photos/account.png'
                            ]
                        ]);
                    } catch(Exception $e) {
                        echo json_encode(['error' => $e->getMessage()]);
                    }
                    break;
                        case 'get_feedback':
        try {
            if (!isset($data['product_id'])) {
                throw new Exception('Product ID is required');
            }
    
            // Get comments (where rating_value is NULL)
            $stmt = $pdo->prepare("
                SELECT r.*, u.Name, u.Photo 
                FROM rating r 
                LEFT JOIN user u ON r.User_Id = u.User_Id 
                WHERE r.Product_id = ? AND r.rating_value IS NULL
                ORDER BY r.Rating_id DESC
            ");
            
            $stmt->execute([$data['product_id']]);
            $comments = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            // Get rating statistics
            $ratingStmt = $pdo->prepare("
                SELECT AVG(rating_value) as average_rating, COUNT(*) as total_ratings
                FROM rating 
                WHERE Product_id = ? AND rating_value IS NOT NULL
            ");
            $ratingStmt->execute([$data['product_id']]);
            $ratingStats = $ratingStmt->fetch(PDO::FETCH_ASSOC);
            
            echo json_encode([
                'success' => true,
                'comments' => $comments,
                'rating_stats' => [
                    'average_rating' => round($ratingStats['average_rating'], 1),
                    'total_ratings' => $ratingStats['total_ratings']
                ]
            ]);
        } catch(Exception $e) {
            echo json_encode(['error' => $e->getMessage()]);
        }
        break;
                
            default:
                echo json_encode(['error' => 'Invalid action']);
                break;
        }
    } else {
        echo json_encode(['error' => 'No action specified']);
    }
}
?>