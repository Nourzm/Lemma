<!-- C:\xampp\htdocs\lemma\uploadProfilePic.php -->
<?php
session_start();
include '../db1.php';

header('Content-Type: application/json');

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['status' => 'error', 'message' => 'Not logged in']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['profilePicture'])) {
    $user_id = $_SESSION['user_id'];
    $file = $_FILES['profilePicture'];

    $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
    if (!in_array($file['type'], $allowedTypes)) {
        echo json_encode(['status' => 'error', 'message' => 'Invalid file type']);
        exit;
    }

    if ($file['size'] > 2 * 1024 * 1024) {
        echo json_encode(['status' => 'error', 'message' => 'File size exceeds 2MB']);
        exit;
    }

    $uploadDir = 'uploads/';
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0755, true);
    }

    $fileName = $user_id . '_' . time() . '.' . pathinfo($file['name'], PATHINFO_EXTENSION);
    $filePath = $uploadDir . $fileName;

    if (move_uploaded_file($file['tmp_name'], $filePath)) {
        $sql = "UPDATE user SET Photo = ? WHERE User_Id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("si", $filePath, $user_id);

        if ($stmt->execute()) {
            echo json_encode(['status' => 'success', 'photoUrl' => $filePath]);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Database update failed']);
        }
        $stmt->close();
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Failed to upload file']);
    }
}
$conn->close();
