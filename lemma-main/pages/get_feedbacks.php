<?php
header('Content-Type: application/json');

// Database configuration
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "lemma";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $dbusername, $dbpassword);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'error' => 'Database connection failed']);
    exit;
}


try {
    $stmt = $pdo->query("SELECT user_name, feedback_text, event_type, image_path FROM feedback ORDER BY created_at DESC");
    $testimonials = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        'success' => true,
        'data' => $testimonials
    ]);
} catch (Exception $e) {
    echo json_encode([
        'success' => false,
        'error' => $e->getMessage()
    ]);
}
