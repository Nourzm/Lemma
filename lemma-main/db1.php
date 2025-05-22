<!-- C:\xampp\htdocs\lemma\db.php -->

<!-- $conn = mysqli_connect('localhost', 'root', '', 'lemma');
if (!$conn) {
    die(mysqli_connect_error());
    // die(mysqli_error($conn));
} -->

<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = mysqli_connect('localhost', 'root', '', 'lemma');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Set charset to ensure proper handling of special characters
mysqli_set_charset($conn, "utf8mb4");
?>