<!-- C:\xampp\htdocs\lemma\user_existance.php -->
<?php
include '../db1.php';

declare(strict_types=1);

function get_user_by_email(PDO $conn, string $email)
{
    $query = "SELECT * FROM user WHERE email = :email"; // Use named parameter
    $statement = $conn->prepare($query);
    $statement->bindParam(':email', $email, PDO::PARAM_STR); // Bind email parameter
    $statement->execute();
    return $statement->fetch(PDO::FETCH_ASSOC); // Fetch associative array
}
