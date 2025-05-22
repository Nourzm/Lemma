<?php
session_start();
session_unset(); // Clear all session variables
session_destroy(); // Destroy the session

header("Location: llog.php"); // Redirect to login page
die();
?>  