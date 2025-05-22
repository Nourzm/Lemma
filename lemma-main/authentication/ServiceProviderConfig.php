<!-- C:\xampp\htdocs\lemma\ServiceProviderConfig.php -->
<?php
session_start();
include '../db1.php';

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['status' => 'error', 'message' => 'Not logged in']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_id = $_SESSION['user_id'];
    $mobile_number = $_POST['Mobile_Number'] ?? '';
    $address = $_POST['Address'] ?? '';

    if (!preg_match('/^\d{8,}$/', $mobile_number)) {
        echo json_encode(['status' => 'error', 'message' => 'Invalid mobile number']);
        exit;
    }

    $sql = "UPDATE user SET Mobile_Number = ?, Address = ? WHERE User_Id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssi", $mobile_number, $address, $user_id);

    if ($stmt->execute()) {
        echo json_encode(['status' => 'success', 'message' => 'Profile updated successfully']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Error updating profile']);
    }
    $stmt->close();
    $conn->close();
}
