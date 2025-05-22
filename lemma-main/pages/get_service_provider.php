<?php
include '../db1.php';
header('Content-Type: application/json');

// Fetch service providers from the database
$query = "SELECT name, price, image FROM service_providers"; // Adjust according to your database schema
$result = $conn->query($query);

$providers = [];
while ($row = $result->fetch_assoc()) {
    $providers[] = $row;
}

echo json_encode(['success' => true, 'providers' => $providers]);
?>