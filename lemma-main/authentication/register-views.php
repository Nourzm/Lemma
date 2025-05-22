<!-- C:\xampp\htdocs\lemma\register-views.php -->
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include '../db1.php';

function render_errors()
{
    $error_types = ["signup_errors", "login_errors"];

    foreach ($error_types as $error_type) {
        if (isset($_SESSION[$error_type])) {
            $errors = $_SESSION[$error_type];

            foreach ($errors as $error) {
                echo '<center><h4 style="color:firebrick">' . $error . '</h4></center>';
            }

            unset($_SESSION[$error_type]); // Clear errors after displaying
        }
    }
}
?>