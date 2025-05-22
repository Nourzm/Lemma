<?php
include '../db1.php';

$section = $_GET['section'] ?? '';
$id = $_GET['id'] ?? '';

// Define the correct table and ID column based on the section
$table = '';
$idColumn = '';

switch ($section) {
    case 'users':
        $table = 'user';
        $idColumn = 'User_Id';  // Correct column for users
        break;
    case 'event':
        $table = 'event';
        $idColumn = 'Event_ID';  // Correct column for events
        break;
    case 'products':
        $table = 'product';
        $idColumn = 'Product_ID';  // Correct column for products
        break;
    case 'feedback':
        $table = 'feedback';
        $idColumn = 'feedback_id';  // Correct column for feedback
        break;
    case 'services':  // New: Services section
        $table = 'services';
        $idColumn = 'Service_Id';  // Correct column for services
        break;
    case 'theme':  // New: Themes section
        $table = 'theme';
        $idColumn = 'Theme_Id';  // Correct column for themes
        break;
    default:
        echo "Invalid section.";
        exit;
}

if ($table && $idColumn && is_numeric($id)) {
    // Prepare the DELETE query using the correct ID column
    $query = "DELETE FROM $table WHERE $idColumn = ?";
    $stmt = $conn->prepare($query);

    if ($stmt) {
        $stmt->bind_param('i', $id);  // 'i' for integer binding
        if ($stmt->execute()) {
            // Redirect to the appropriate section after deletion
            header("Location: index3.php?section=$section");
            exit;
        } else {
            echo "Error executing query: " . $stmt->error;
        }
        $stmt->close();
    } else {
        echo "Error preparing statement: " . $conn->error;
    }
} else {
    echo "Invalid section or ID.";
}

$conn->close();
