<?php
// Database configuration
$host = 'localhost'; // Replace with your database host
$username = 'root'; // Replace with your database username
$password = ''; // Replace with your database password
$dbname = 'lemma'; // Replace with your database name


// Create a MySQLi connection
$conn = new mysqli($host, $username, $password, $dbname);


// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>