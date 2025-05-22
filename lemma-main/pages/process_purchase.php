<?php
// Database connection

$conn = new mysqli('localhost', 'root', '', 'lemma');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Sanitize input
$product_name = $conn->real_escape_string($_POST['product_name']);
$product_price = floatval($_POST['product_price']);
$full_name = $conn->real_escape_string($_POST['full_name']);
$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
$phone = $conn->real_escape_string($_POST['phone']);
$card_number = $conn->real_escape_string($_POST['card_number']);
$card_expiry = $conn->real_escape_string($_POST['card_expiry']);
$card_cvv = $conn->real_escape_string($_POST['card_cvv']);

// Validate inputs
if (!$email) {
    die("Invalid email address");
}

// Insert order
$sql = "INSERT INTO orders (
    product_name, 
    product_price, 
    full_name, 
    email, 
    phone, 
    card_last_4,
    card_expiry,
    card_cvv,
    total_amount
) VALUES (
    '$product_name', 
    $product_price, 
    '$full_name', 
    '$email', 
    '$phone', 
    '".substr($card_number, -4)."',
    '$card_expiry',
    '$card_cvv',
    $product_price
)";

if ($conn->query($sql) === TRUE) {
    header("Location: order_confirmation.php");
    exit();
}else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>