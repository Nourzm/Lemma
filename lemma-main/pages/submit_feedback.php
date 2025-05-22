<?php

// Database configuration
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "lemma";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $dbusername, $dbpassword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'error' => 'Database connection failed']);
    exit;
}


if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['success' => false, 'error' => 'Method not allowed']);
    exit;
}

try {
    // Validate required fields
    $requiredFields = ['name', 'eventType', 'feedback'];
    foreach ($requiredFields as $field) {
        if (empty($_POST[$field])) {
            throw new Exception("Missing required field '$field'");
        }
    }

    // Sanitize inputs
    $name = htmlspecialchars(strip_tags($_POST['name']));
    $eventType = htmlspecialchars(strip_tags($_POST['eventType']));
    $feedback = htmlspecialchars(strip_tags($_POST['feedback']));

    // Handle image upload
    $imagePath = null;
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $imagePath = handleImageUpload($_FILES['image']);
    }

    // Save to database
    saveFeedback($pdo, $name, $feedback, $eventType, $imagePath);

    // Return success response
    echo json_encode([
        'success' => true,
        'data' => [
            'name' => $name,
            'feedback' => $feedback,
            'eventType' => $eventType,
            'imagePath' => $imagePath
        ]
    ]);
} catch (Exception $e) {
    http_response_code(400);
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}

function handleImageUpload(array $imageFile): ?string
{
    $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
    $maxSize = 5 * 1024 * 1024; // 5 MB

    if (!in_array($imageFile['type'], $allowedTypes)) {
        throw new Exception('Invalid file type');
    }

    if ($imageFile['size'] > $maxSize) {
        throw new Exception('File size exceeds limit');
    }

    $uploadDir = 'uploads';
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    $extension = pathinfo($imageFile['name'], PATHINFO_EXTENSION);
    $filename = uniqid() . '.' . $extension;
    $uploadPath = $uploadDir . '/' . $filename;

    if (!move_uploaded_file($imageFile['tmp_name'], $uploadPath)) {
        throw new Exception('Failed to upload image');
    }

    return $uploadPath;
}
//Save feedback to the database.


function saveFeedback(PDO $pdo, string $name, string $feedback, string $eventType, ?string $imagePath): void
{
    $sql = "INSERT INTO feedback (user_name, feedback_text, event_type, image_path, created_at) 
            VALUES (:name, :feedback, :eventType, :imagePath, NOW())";

    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        ':name' => $name,
        ':feedback' => $feedback,
        ':eventType' => $eventType,
        ':imagePath' => $imagePath
    ]);
}
