<?php
header("Content-Type: application/json");
include '../DataBase/db_connection.php'; // Include your database connection

$serviceType = $_GET['serviceType'];

// Query the database to fetch themes for the selected service
$query = "
    SELECT Theme_Id, Title 
    FROM theme 
    WHERE Service_Id = ?
";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $serviceType);
$stmt->execute();
$result = $stmt->get_result();

$themes = [];
while ($row = $result->fetch_assoc()) {
    $themes[] = $row;
}

echo json_encode($themes);

$stmt->close();
$conn->close();
