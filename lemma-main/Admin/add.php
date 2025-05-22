<?php
session_start();
include '../db1.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $section = $_POST['section'];

    if ($section === 'event') {
        $query = "INSERT INTO event (Name, Description, photo) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("sss", $_POST['Name'], $_POST['Description'], $_POST['photo']);
    } elseif ($section === 'services') {
        $query = "INSERT INTO services (Name, Description, photo, Event_Id) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("sssi", $_POST['Name'], $_POST['Description'], $_POST['photo'], $_POST['Event_Id']);
    } elseif ($section === 'theme') {
        $query = "INSERT INTO theme (Title, description, picture, Service_Id) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("sssi", $_POST['Title'], $_POST['description'], $_POST['picture'], $_POST['Service_Id']);
    }

    if ($stmt->execute()) {
        header("Location: index3.php?section=$section");
    } else {
        echo "Error: " . $conn->error;
    }

    $stmt->close();
}
$conn->close();
