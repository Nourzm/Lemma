<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = mysqli_connect('localhost', 'root', '', 'lemma');


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Sanitize input
    $email = isset($_POST['email']) ? htmlspecialchars($_POST['email']) : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;

    // Check if input is provided
    if ($email === null || $password === null) {
        echo "Please fill in all required fields.";
        die();
    }

    // Database query - Procedural style
    $query = "SELECT User_Id, password FROM user WHERE email = ?";
    $stmt = mysqli_prepare($conn, $query);  // $conn is the database connection from db.php
    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "s", $email);  // "s" indicates the email parameter is a string
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);  // Store result to check number of rows

        if (mysqli_stmt_num_rows($stmt) > 0) {
            mysqli_stmt_bind_result($stmt, $user_id, $hashedPassword);
            mysqli_stmt_fetch($stmt);  // Fetch the result

            // Verify the password
            if (password_verify($password, $hashedPassword)) {
                // Set session variables
                $_SESSION['user_id'] = $user_id;
                $_SESSION['user_email'] = $email;
                // header("Location: ../index.php");
                // exit();

                // Redirect to index.php
                // header("Location: index.php");
                echo json_encode(['status' => true, 'message' => "Login Successful"]);

                exit();
            } else {
                echo json_encode(['status'=>false, 'message'=> "Incorrect Password"]);
            }
        } else {
            echo json_encode(['status'=>false, 'message'=> "No user found with that email address."]);
        }

        // Close statement
        mysqli_stmt_close($stmt);
    } else {
        echo json_encode(['status'=>false, 'message'=> "Database query failed."]);
    }
} else {
    echo json_encode(['status'=>false, 'message'=> "Invalid request method."]);
}

// Close the database connection if necessary
mysqli_close($conn);
?>
