<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = mysqli_connect('localhost', 'root', '', 'lemma');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Sanitize input
    $firstName = isset($_POST['fname']) ? htmlspecialchars($_POST['fname']) : null;
    $lastName = isset($_POST['lname']) ? htmlspecialchars($_POST['lname']) : null;
    $email = isset($_POST['email']) ? htmlspecialchars($_POST['email']) : null;
    $password = isset($_POST['password']) ? $_POST['password'] : null;
    $confirmPassword = isset($_POST['confirmPassword']) ? $_POST['confirmPassword'] : null;

    // Check if all inputs are provided
    if ($firstName === null || $lastName === null || $email === null || $password === null || $confirmPassword === null) {
        echo json_encode(['status' => 'error', 'message' => 'Please fill in all required fields.']);
        exit();
    }

    // Validate password match
    if ($password !== $confirmPassword) {
        echo json_encode(['status' => 'error', 'message' => 'Passwords do not match.']);
        exit();
    }

    // Check if email already exists
    $checkEmail = "SELECT COUNT(*) as count FROM user WHERE email = ?";
    $stmt = mysqli_prepare($conn, $checkEmail);
    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $row = mysqli_fetch_assoc($result);

        if ($row['count'] > 0) {
            echo json_encode(['status' => 'error', 'message' => 'Email already exists.']);
            mysqli_stmt_close($stmt);
            exit();
        }
        mysqli_stmt_close($stmt);
    }

    // Hash password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Insert new user
    $query = "INSERT INTO user (Name, Surname, email, password) VALUES (?, ?, ?, ?)";
    $stmt = mysqli_prepare($conn, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "ssss", $firstName, $lastName, $email, $hashedPassword);

        if (mysqli_stmt_execute($stmt)) {
            $user_id = mysqli_insert_id($conn);

            // Set session variables
            $_SESSION['user_id'] = $user_id;
            $_SESSION['user_email'] = $email;
    
            echo json_encode(['status' => 'success', 'message' => 'Registration successful!']);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Registration failed. Please try again.']);
        }
        mysqli_stmt_close($stmt);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Database query failed.']);
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method.']);
}

mysqli_close($conn);
