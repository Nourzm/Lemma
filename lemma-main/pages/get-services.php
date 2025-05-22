<?php
header("Content-Type: application/json");
include '../DataBase/db_connection.php'; // Include your database connection

$eventType = $_GET['eventType'];

// Query the database to fetch services for the selected event
$query = "

    SELECT Service_Id, Name 
    FROM services 
    WHERE Event_Id = ? OR Event_Id IS NULL
";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $eventType);
$stmt->execute();
$result = $stmt->get_result();

$services = [];
while ($row = $result->fetch_assoc()) {
    $services[] = $row;
}

echo json_encode($services);

$stmt->close();
$conn->close();
