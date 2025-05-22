<!-- C:\xampp\htdocs\lemma\ServiceProviderProfile.php -->
<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
    header('Location: llog.php');
    exit;
}

// Include database connection
include '../db1.php';

// Fetch user data
$userId = $_SESSION['user_id'];
$sql = "SELECT * FROM user WHERE User_Id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $userId);
$stmt->execute();
$result = $stmt->get_result();
$userData = $result->fetch_assoc();
$stmt->close();

// Fetch services added by the user
$servicesSql = "SELECT * FROM product WHERE User_Id = ?";
$servicesStmt = $conn->prepare($servicesSql);
$servicesStmt->bind_param("i", $userId);
$servicesStmt->execute();
$servicesResult = $servicesStmt->get_result();
$services = [];
while ($row = $servicesResult->fetch_assoc()) {
    $services[] = $row;
}
$servicesStmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Settings</title>
    <link rel="stylesheet" href="../assets/css/ServiceProviderProfile.css">
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="jquery-3.7.1.js"></script>
</head>

<body>
    <input type="hidden" id="user-id" value="<?php echo htmlspecialchars($userId); ?>">

    <section class="header">
        <nav>
            <a href="index.php">
                <img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo">
            </a>
            <div class="nav-link">
                <ul>
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="../pages/About.php">About us</a></li>
                    <li><a href="logout.php">Logout</a></li>
                    <li>
                        <a href="ServiceProviderProfile.php">
                            <img src="../assets/Images/photos/account.png" alt="Account Icon">
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </section>

    <section class="mainContent">
        <div class="outer-container">
            <div class="container">
                <div class="profile-sidebar">
                    <div class="profile-pic">
                        <div class="photo-container">
                            <img src="<?php echo !empty($userData['Photo']) ? htmlspecialchars($userData['Photo']) : 'assets/Images/default-img.png'; ?>"
                                id="user-photo" alt="Profile Picture">
                        </div>
                        <input type="file" id="file" name="profilePicture" accept="image/*" onchange="updateProfilePic(event)">
                        <label for="file" class="file-label">
                            <span class="overlay">UPDATE</span>
                        </label>
                    </div>
                    <h2 class="name"><?php echo htmlspecialchars($userData['Name'] ?? 'User Name'); ?></h2>
                    <p class="email"><?php echo htmlspecialchars($userData['email'] ?? 'email@example.com'); ?></p>
                 
                </div>

                <div class="profile-content">
                    <h2>Profile Settings</h2>
                    <form class="form-section" id="profileForm">
                        <div class="form-group">
                            <label for="firstName">Name</label>
                            <input type="text" id="firstName" name="Name" placeholder="First name"
                                value="<?php echo htmlspecialchars($userData['Name'] ?? ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="surname">Surname</label>
                            <input type="text" id="surname" name="Surname" placeholder="Surname"
                                value="<?php echo htmlspecialchars($userData['Surname'] ?? ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="mobileNumber">Mobile Number</label>
                            <input type="text" id="mobileNumber" name="Mobile_Number" placeholder="Enter phone number"
                                value="<?php echo htmlspecialchars($userData['Mobile_Number'] ?? ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" id="address" name="Address" placeholder="Enter address"
                                value="<?php echo htmlspecialchars($userData['Address'] ?? ''); ?>">
                        </div>
                        <div class="saveButton">
                            <button type="submit" class="button">SAVE</button>
                        </div>
                    </form>
                </div>

                <div class="experience-section">
                    <h2>Your Offerings</h2>
                    
                    <div class="all_services-cards">
                    <?php if (!empty($services)): ?>
                        <?php foreach ($services as $service): ?>
                            <div class="service-card">
                                <img src="<?php echo htmlspecialchars($service['photo']); ?>" alt="Service Image" class="service-image">
                                <div class="service-details">
                                    <h3><?php echo htmlspecialchars($service['Name']); ?></h3>
                                    <p class="price">Price: $<?php echo htmlspecialchars($service['price']); ?></p>
                                    <p class="description"><?php echo htmlspecialchars($service['discription']); ?></p>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <p class="no-services">No services added yet.</p>
                    <?php endif; ?>
                    </div>
                    <button class="button" id="servButton">
                        <a href="../pages/addService.php">Add Service</a>
                    </button>
                </div>
            </div>
        </div>
    </section>

    <script src="../assets/javascript/ServiceProviderProfile.js"></script>
</body>

</html>

    <script src="../assets/javascript/ServiceProviderProfile.js"></script>
</body>

</html>
