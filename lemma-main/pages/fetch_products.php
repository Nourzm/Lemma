<?php
// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include the database connection file
require_once '../Database/db_connection.php'; // Adjust the path as needed

// Get the theme ID from the query string
$themeId = isset($_GET['theme_id']) ? (int)$_GET['theme_id'] : 0;

if ($themeId <= 0) {
    http_response_code(400); // Bad request
    echo json_encode(['error' => 'Invalid theme ID']);
    exit;
}

// Check if the connection is successful
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL query to fetch products for the specified theme ID
$sql = "SELECT p.product_id, p.Name, p.photo, p.price, p.discription 
        FROM product p 
        WHERE p.theme_id = ?";

// Prepare and bind the statement
$stmt = $conn->prepare($sql);
if (!$stmt) {
    die("Prepare failed: " . $conn->error);
}

$stmt->bind_param("i", $themeId); // Bind the theme ID as an integer

// Execute the query
if (!$stmt->execute()) {
    die("Execute failed: " . $stmt->error);
}

// Get the result
$result = $stmt->get_result();

if ($result === false) {
    die("Query failed: " . $conn->error);
}

// Fetch the data
$products = $result->fetch_all(MYSQLI_ASSOC);

// Return the data as JSON
header('Content-Type: application/json');
echo json_encode($products);

// Close the statement and connection
$stmt->close();
$conn->close();
?>
