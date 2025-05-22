<?php
session_start();

// Redirect to login if the user is not logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: ../authentication/llog.php");
    exit();
}
include '../DataBase/db_connection.php'; // Include the database connection

$success = false;
$errors = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get and sanitize inputs
    $eventType = filter_input(INPUT_POST, 'event-type', FILTER_SANITIZE_NUMBER_INT);
    $serviceType = filter_input(INPUT_POST, 'service-type', FILTER_SANITIZE_NUMBER_INT);
    $theme = filter_input(INPUT_POST, 'theme', FILTER_SANITIZE_NUMBER_INT);
    $price = filter_input(INPUT_POST, 'price', FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    $name = filter_input(INPUT_POST, 'service-name', FILTER_SANITIZE_SPECIAL_CHARS);
    $description = filter_input(INPUT_POST, 'description', FILTER_SANITIZE_SPECIAL_CHARS);
    // Retrieve the user_id from the session
    $userId = $_SESSION['user_id'];
    // Validate inputs
    if (empty($eventType)) $errors[] = "Event type is required";
    if (empty($serviceType)) $errors[] = "Service type is required";
    if (empty($theme)) $errors[] = "Theme is required";
    if (empty($price) || $price <= 0) $errors[] = "Valid price is required";
    if (empty($name)) $errors[] = "Service name is required";
    if (empty($description)) $errors[] = "Description is required";

    // Handle file upload
    if (isset($_FILES['file-input']) && $_FILES['file-input']['error'] === UPLOAD_ERR_OK) {
        $file = $_FILES['file-input'];
        $allowedTypes = ['image/jpeg', 'image/png'];

        if (!in_array($file['type'], $allowedTypes)) {
            $errors[] = "Only JPG and PNG files are allowed";
        } else {
            $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
            $filename = uniqid() . '.' . $extension;
            $uploadPath = __DIR__ . '/../assets/uploads/' . $filename;
            $dbImagePath = '../assets/uploads/' . $filename;

            if (!is_dir(__DIR__ . '/../assets/uploads/')) {
                mkdir(__DIR__ . '/../assets/uploads/', 0777, true);
            }

            if (!move_uploaded_file($file['tmp_name'], $uploadPath)) {
                $errors[] = "Failed to upload file";
            }
        }
    } else {
        $errors[] = "Image upload is required";
    }

    // Database insertion
    if (empty($errors)) {
        try {
            $conn->begin_transaction();

            $stmt = $conn->prepare("INSERT INTO product (Name,User_Id, photo, price, discription, theme_id) VALUES (?, ? ,?, ?, ?, ?)");
            $stmt->bind_param("sisdsi", $name, $userId, $dbImagePath, $price, $description, $theme);

            if ($stmt->execute()) {
                $conn->commit();
                $success = true;
            } else {
                throw new Exception("Failed to add product");
            }
        } catch (Exception $e) {
            $conn->rollback();
            $errors[] = $e->getMessage();
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Service</title>
    <link rel="stylesheet" href="../assets/css/addService.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap"
        rel="stylesheet">
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
</head>

<body>
    <section id="profile">
        <h2>Add Your Service</h2>
        <div id="form-container">
            <!-- Display success or error messages -->
            <?php if ($success): ?>
                <p style="color: green;">Service added successfully!</p>
            <?php endif; ?>
            <?php foreach ($errors as $error): ?>
                <p style="color: red;"><?= htmlspecialchars($error) ?></p>
            <?php endforeach; ?>

            <!-- Add Service Form -->
            <form id="addServiceForm" method="POST" action="addservice.php" enctype="multipart/form-data">
                <!-- Service Images -->
                <div class="form-group">
                    <label for="file-input" class="file-upload-label">
                        Upload Service Image
                        <input type="file" id="file-input" name="file-input" accept="image/png, image/jpeg">
                    </label>
                    <div id="image-preview"></div>
                    <div id="image-error-message" class="error-message"></div>
                </div>
                <div class="form-group">
                    <label for="service-name">Service Name</label>
                    <input type="text" id="service-name" name="service-name" placeholder="Enter service name">
                    <div id="service-name-error-message" class="error-message"></div>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" placeholder="Enter service description" rows="4"></textarea>
                    <div id="description-error-message" class="error-message"></div>
                </div>

                <!-- Event Type -->
                <div class="form-group">
                    <label for="event-type">Event Type</label>
                    <select id="event-type" name="event-type">
                        <option value="">--Select Event Type--</option>

                        <?php
                        // Fetch event types from the database
                        $query = "SELECT * FROM event";
                        $result = mysqli_query($conn, $query);
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='{$row['Event_Id']}'>{$row['Name']}</option>";
                        }
                        ?>

                    </select>
                    <div id="event-type-error-message" class="error-message"></div>
                </div>

                <!-- Service/Product Type -->
                <div class="form-group">
                    <label for="service-type">Service/Product Type</label>
                    <select id="service-type" name="service-type">
                        <option value="">--Select Service Type--</option>
                        <!-- Services will be populated dynamically using JavaScript -->
                    </select>
                    <div id="service-type-error-message" class="error-message"></div>
                </div>

                <!-- Specific Options -->
                <div class="form-group">
                    <label for="theme">Theme</label>
                    <select id="theme" name="theme">
                        <option value="">--Select Theme--</option>
                        <!-- Themes will be populated dynamically using JavaScript -->
                    </select>
                    <div id="theme-error-message" class="error-message"></div>
                </div>

                <!-- Service Price -->
                <div class="form-group">
                    <label for="price">Price ($)</label>
                    <input type="number" id="price" name="price" placeholder="Enter service price" min="1">
                    <div id="price-error-message" class="error-message"></div>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="submit-btn">Add Service</button>
            </form>
        </div>
    </section>

    <script src="../assets/javascript/addService.js"></script>
</body>

</html>