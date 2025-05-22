<?php
session_start();
include '../db1.php';

// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the section and ID of the item being edited
    $section = $_POST['section'];
    $id = $_POST['id'];

    // Validate the section value to prevent SQL injection
    $valid_sections = ['event', 'services', 'theme'];
    if (!in_array($section, $valid_sections)) {
        echo "<script>alert('Invalid section.');  </script>";
        exit();
    }

    // Prepare data for the update query
    $columns = [];
    $values = [];
    $types = "";

    // For different sections, set the corresponding fields
    if ($section === 'event') {
        $columns = ['Name', 'Description', 'photo'];
        $types = 'sss'; // 3 string fields (name, description, photo)
    } elseif ($section === 'services') {
        $columns = ['Name', 'Description', 'photo', 'Event_id'];
        $types = 'sssi'; // 3 string fields and 1 integer field (name, description, photo, event_id)
    } elseif ($section === 'theme') {
        $columns = ['Title', 'description', 'picture', 'Service_Id'];
        $types = 'sssi'; // 3 string fields and 1 integer field (title, description, picture, service_id)
    }

    // Bind values dynamically from the form
    foreach ($columns as $index => $column) {
        if (isset($_POST[$column])) {
            // If Service_Id is not set, allow it to be NULL (optional)
            if ($column === 'Service_Id' && empty($_POST[$column])) {
                $values[] = NULL;
            }
            if ($column === 'Event_Id' && empty($_POST[$column])) {
                $values[] = NULL;
            } else {
                $values[] = $_POST[$column];
            }
        } else {
            echo "<script>alert('Missing value for $column.');  </script>";
            exit();
        }
    }

    // Update query
    $setClause = "";
    foreach ($columns as $column) {
        $setClause .= "$column = ?, ";
    }
    $setClause = rtrim($setClause, ", "); // Remove trailing comma

    // Set query based on section
    if ($section === 'event') {
        $query = "UPDATE $section SET $setClause WHERE Event_Id = ?";
    } elseif ($section === 'services') {
        $query = "UPDATE $section SET $setClause WHERE Service_Id = ?";
    } elseif ($section === 'theme') {
        $query = "UPDATE $section SET $setClause WHERE Theme_Id = ?";
    }



    // Prepare the statement and bind parameters
    $stmt = $conn->prepare($query);
    if (!$stmt) {
        die('Error preparing statement: ' . $conn->error);
    }

    // Add the ID to the values array
    $values[] = $id;

    // Bind the parameters dynamically
    $stmt->bind_param($types . "i", ...$values);

    // Execute the query
    if ($stmt->execute()) {
        echo "<script>alert('Item updated successfully!'); </script>";
    } else {
        echo "<script>alert('Failed to update item.'); </script>";
    }
}
