<?php

declare(strict_types=1);
error_reporting(E_ALL);
ini_set('display_errors', '1');

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

require_once '../db1.php';

function validate_registration_data(string $firstName, string $lastName, string $email, string $password, string $confirmPassword, $conn): array
{
    $errors = [];

    // Check for empty fields
    if (empty($firstName) || empty($lastName) || empty($email) || empty($password) || empty($confirmPassword)) {
        $errors[] = "Please fill all the fields";
    }

    // Check if passwords match
    if ($password !== $confirmPassword) {
        $errors[] = "Passwords do not match";
    }

    // Check password length and complexity
    if (strlen($password) < 8) {
        $errors[] = "Password must be at least 8 characters long";
    }
    if (!preg_match("/[0-9]/", $password) || !preg_match("/[a-zA-Z]/", $password)) {
        $errors[] = "Password must contain both letters and numbers";
    }

    // Validate email format
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Please enter a valid email address";
    }

    // Check if email already exists
    $stmt = mysqli_prepare($conn, "SELECT COUNT(*) FROM user WHERE email = ?");
    mysqli_stmt_bind_param($stmt, 's', $email);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_bind_result($stmt, $count);
    mysqli_stmt_fetch($stmt);
    mysqli_stmt_close($stmt);

    if ($count > 0) {
        $errors[] = "Email already exists";
    }

    return $errors;
}

function insert_user($conn, string $firstName, string $lastName, string $email, string $password): int
{
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $stmt = mysqli_prepare($conn, "INSERT INTO user (Name, Surname, email, password) VALUES (?, ?, ?, ?)");

    if ($stmt === false) {
        throw new Exception("Error preparing statement: " . mysqli_error($conn));
    }

    mysqli_stmt_bind_param($stmt, 'ssss', $firstName, $lastName, $email, $hashedPassword);

    if (!mysqli_stmt_execute($stmt)) {
        throw new Exception("Error executing statement: " . mysqli_stmt_error($stmt));
    }

    $userId = mysqli_insert_id($conn);
    mysqli_stmt_close($stmt);

    return $userId;
}
