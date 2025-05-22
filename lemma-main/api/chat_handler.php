<?php
session_start();
include '../db1.php';
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: application/json');

// Handle GET request for chat history
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    try {
        // Return empty array if user not logged in
        if (!isset($_SESSION['user_id'])) {
            echo json_encode(['success' => true, 'chat_history' => []]);
            exit;
        }

        $userId = $_SESSION['user_id'];

        $stmt = $conn->prepare("SELECT user_message, bot_response, timstamp FROM chat_history WHERE user_id = ? ORDER BY timstamp ASC");
        
        if (!$stmt) {
            throw new Exception("Database prepare error: " . $conn->error);
        }

        $stmt->bind_param("i", $userId);
        
        if (!$stmt->execute()) {
            throw new Exception("Database execute error: " . $stmt->error);
        }

        $result = $stmt->get_result();
        $chatHistory = [];

        while ($row = $result->fetch_assoc()) {
            $chatHistory[] = $row;
        }

        $stmt->close();
        echo json_encode(['success' => true, 'chat_history' => $chatHistory]);
        exit;
    } catch (Exception $e) {
        error_log("Error: " . $e->getMessage());
        http_response_code(500);
        echo json_encode(['success' => false, 'error' => $e->getMessage()]);
        exit;
    }
}

// Handle POST request for new messages
try {
    $input = file_get_contents('php://input');
    $data = json_decode($input, true);

    if (!isset($data['message'])) {
        throw new Exception('No message provided');
    }

    $userMessage = $data['message'];
    $API_KEY = '';
    $API_URL = "https://generativelanguage.googleapis.com/v1/models/gemini-1.5-flash:generateContent?key=${API_KEY}";

    $requestBody = [
        'contents' => [
            [
                'role' => 'user',
                'parts' => [
                    ['text' => $userMessage]
                ]
            ]
        ]
    ];

    if (isset($data['file']) && !empty($data['file']['data'])) {
        $fileData = $data['file']['data'];
        $fileMimeType = $data['file']['mime_type'];
        $requestBody['contents'][0]['parts'][] = [
            'inline_data' => [
                'data' => $fileData,
                'mime_type' => $fileMimeType
            ]
        ];
    }

    $ch = curl_init($API_URL);
    curl_setopt_array($ch, [
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => json_encode($requestBody),
        CURLOPT_HTTPHEADER => ['Content-Type: application/json']
    ]);

    $apiResponse = curl_exec($ch);
    
    if (curl_errno($ch)) {
        throw new Exception('Curl error: ' . curl_error($ch));
    }

    curl_close($ch);
    $responseData = json_decode($apiResponse, true);
    $botResponse = $responseData['candidates'][0]['content']['parts'][0]['text'];

    // Store in database if user is logged in
    if (isset($_SESSION['user_id'])) {
        $userId = $_SESSION['user_id'];

        $stmt = $conn->prepare("INSERT INTO chat_history (user_id, user_message, bot_response) VALUES (?, ?, ?)");
        
        if (!$stmt) {
            throw new Exception("Database prepare error: " . $conn->error);
        }

        $stmt->bind_param("iss", $userId, $userMessage, $botResponse);
        
        if (!$stmt->execute()) {
            throw new Exception("Database execute error: " . $stmt->error);
        }

        $stmt->close();
    }

    echo json_encode(['success' => true, 'response' => $botResponse]);

} catch (Exception $e) {
    error_log("Error: " . $e->getMessage());
    http_response_code(500);
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}

if (isset($conn)) {
    $conn->close();
}
?>
