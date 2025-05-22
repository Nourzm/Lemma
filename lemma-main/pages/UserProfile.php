<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Settings</title>
    <link rel="stylesheet" href="../assets/css/UserProfile.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
  </head>
<section class="header">
    <nav>
            <a href="../index.php"><img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo"></a>
            <div class="nav-link">
                <ul>
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="about.php">About us</a></li>
                    <li><a href="llog.php">Log in</a></li>
                    <li><a href="ServiceProviderProfile.php"><img src="../assets/Images/photos/account.png" alt="Account Icon"></a></li>
                </ul>
            </div>
        </nav>
        </section>
  <body>


    <div class="outer-container">
      <div class="container">
        <div class="profile-sidebar">
          <div class="profile-pic">
            <input
              type="file"
              id="file"
              name="file"
              onchange="updateProfilePic(event)"
            />
            <label for="file" class="file-label">
              <span class="overlay">UPDATE</span>
            </label>
          </div>
          <h2 class="name">User Name</h2>
          <p class="email">UserName@gmail.com</p>
          <br />
        </div>
        <div class="profile-content">
          <h2>Profile Settings</h2>
          <br />
          <form class="form-section" autocomplete="off" novalidate>
            <div class="form-group">
              <label for="firstName">Name</label>
              <input type="text" id="firstName" placeholder="First name" />
            </div>
            <div class="form-group">
              <label for="surname">Surname</label>
              <input type="text" id="surname" placeholder="Surname" />
            </div>
            <div class="form-group">
              <label for="mobileNumber">Mobile Number</label>
              <input
                type="text"
                id="mobileNumber"
                placeholder="Enter phone number"
              />
            </div>
            <div class="form-group">
              <label for="address">Address</label>
              <input type="text" id="address" placeholder="Enter address" />
            </div>
            <div class="saveButton">
              <button type="submit" class="button">SAVE</button>
            </div>
          </form>
        </div>
        <div class="experience-section">
          <h2>Your Selections</h2>
          <br />
          <div class="form-group">
            <img src="../assets/Images/profile2.jpg" alt="Work Image" class="pic2" />
            <br />
            <p class="proDetails">Item Informations</p>
          </div>
        </div>
      </div>
    </div>
    <!--Message Icone-->

    <?php include '../components/messaging.php'; ?>
    <script src="../assets/javascript/UserProfile.js"></script>
  </body>
</html>
