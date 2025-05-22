<?php
session_start();
include '../db1.php';

$currentSection = isset($_GET['section']) ? $_GET['section'] : 'dashboard';
$search = isset($_GET['search']) ? $_GET['search'] : '';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Lemma</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <div class="admin-container">
        <button class="sidebar-toggle">☰</button>
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="logo">
                <h2>Lemma Admin</h2>
            </div>
            <nav>
                <a href="?section=dashboard" class="<?php echo $currentSection === 'dashboard' ? 'active' : ''; ?>"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                <a href="?section=users" class="<?php echo $currentSection === 'users' ? 'active' : ''; ?>"><i class="fas fa-users"></i> Users</a>
                <a href="?section=event" class="<?php echo $currentSection === 'event' ? 'active' : ''; ?>"><i class="fas fa-calendar"></i> Events</a>
                <a href="?section=product" class="<?php echo $currentSection === 'product' ? 'active' : ''; ?>"><i class="fas fa-box"></i> Products</a>
                <a href="?section=feedback" class="<?php echo $currentSection === 'feedback' ? 'active' : ''; ?>"><i class="fas fa-comments"></i> Feedback</a>
                <a href="?section=services" class="<?php echo $currentSection === 'services' ? 'active' : ''; ?>"><i class="fas fa-cogs"></i> Services</a>
                <a href="?section=theme" class="<?php echo $currentSection === 'theme' ? 'active' : ''; ?>"><i class="fas fa-th"></i> theme</a>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <header>
                <div class="search-bar">
                    <form method="GET">
                        <input type="hidden" name="section" value="<?php echo htmlspecialchars($currentSection); ?>">
                        <input type="text" name="search" placeholder="Search..." value="<?php echo htmlspecialchars($search); ?>">
                        <button type="submit"><i class="fas fa-search"></i></button>
                    </form>
                </div>
                <div class="admin-profile">
                    <i class="fas fa-user-circle"></i>
                    <span>Admin</span>
                </div>
            </header>

            <div class="content-section">
                <?php if (in_array($currentSection, ['event', 'services', 'theme'])): ?>
                    <button onclick="editItem('<?php echo $currentSection; ?>')" style="margin-bottom: 20px;">
                        Add New <?php echo ucfirst($currentSection); ?>
                    </button>
                <?php endif; ?>
                <?php
                switch ($currentSection) {
                    case 'users':
                        $query = "SELECT * FROM user WHERE name LIKE ?";
                        $idColumn = 'User_Id';
                        break;
                    case 'event':
                        $query = "SELECT * FROM event WHERE Name LIKE ?";
                        $idColumn = 'Event_Id';
                        break;
                    case 'product':
                        $query = "SELECT * FROM product WHERE name LIKE ?";
                        $idColumn = 'Product_ID';
                        break;
                    case 'feedback':
                        $query = "SELECT * FROM feedback WHERE feedback_text LIKE ?";
                        $idColumn = 'feedback_id';
                        break;
                    case 'services':
                        $query = "SELECT * FROM services WHERE Name LIKE ?";
                        $idColumn = 'Service_Id';
                        break;
                    case 'theme':
                        $query = "SELECT * FROM theme WHERE Title LIKE ?";
                        $idColumn = 'Theme_Id';
                        break;
                    default:
                        echo "<h1>Welcome to the Dashboard!</h1>";
                        exit;
                }

                $stmt = $conn->prepare($query);
                $searchParam = "%" . $search . "%";
                $stmt->bind_param("s", $searchParam);
                $stmt->execute();
                $result = $stmt->get_result();

                echo "<table>";
                echo "<thead><tr>";
                while ($field = $result->fetch_field()) {
                    echo "<th>" . htmlspecialchars($field->name) . "</th>";
                }
                echo "<th>Actions</th>";
                echo "</tr></thead><tbody>";

                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    foreach ($row as $key => $value) {
                        echo "<td>" . htmlspecialchars($value ?? '', ENT_QUOTES, 'UTF-8') . "</td>";
                    }

                    // Conditionally render edit button only for Services and theme
                    if ($currentSection === 'services' || $currentSection === 'theme' || $currentSection === 'event') {
                        echo "<td>
                       <div class=\"container\">


                            <button onclick=\"editItem('{$currentSection}', {$row[$idColumn]})\">Edit</button>
                            <button onclick=\"deleteItem('{$currentSection}', {$row[$idColumn]})\">Delete</button>
                            </div>
                        </td>";
                    } else {
                        echo "<td>
                            <button onclick=\"deleteItem('{$currentSection}', {$row[$idColumn]})\">Delete</button>
                        </td>";
                    }

                    echo "</tr>";
                }

                echo "</tbody></table>";
                ?>
            </div>
        </main>
    </div>

    <!-- Modal Form for Edit (Services and theme) -->



    <!-- Modal for Edit Form -->
    <!-- Modal for Edit Form -->
    <div id="editModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>

            <form id="editForm" method="POST" action="edit.php">
                <div class="form-group">
                    <input type="hidden" id="editSection" name="section">
                </div>
                <div class="form-group">
                    <input type="hidden" id="editId" name="id">
                </div>
                <div class="form-group" id="dynamicFields"></div>
                <button type="submit" class="submit-btn">Save Changes</button>
            </form>
        </div>
    </div>



    <script src="Admin.js">

    </script>
</body>

</html>