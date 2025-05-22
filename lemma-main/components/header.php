<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Graduation</title>
  <link rel="stylesheet" href="../assets/css/header.css" />
  <link rel="icon" href="../assets/Images/icon.png" type="image/png">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>
  <section class="header"
    <?php if (!empty($imageBackground)) : ?>
    style="background-image: url('<?= $imageBackground ?>');"
    <?php endif; ?>>
    <?php if (!empty($videoSrc)) : ?>
      <div class="video-container">
        <video autoplay muted loop playsinline class="header-video">
          <source src="<?= $videoSrc ?>" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>
    <?php endif; ?>

    <nav>
      <a href="../index.php">
        <img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo" />
      </a>
      <div class="hamburger" id="hamburger">
        <i class="fas fa-bars"></i>
      </div>
      <div class="nav-link" id="nav-links">
        <ul>
          <li><a href="../index.php">Home</a></li>
          <li class="dropdown">
            <a href="#" class="dropbtn">Events</a>
            <div class="dropdown-content">
              <a href="../pages/Graduation.php">Graduation</a>
              <a href="../pages/Wedding.php">Weddings</a>
              <a href="../pages/Birthday.php">Birthday</a>
              <a href="../pages/CorporatePrestigeEvents.php">Prestige Events</a>
              <a href="../pages/SignatureEvents.php">General Events</a>
              <a href="../pages/BabyArrivalCelebration.php">Baby Arrival</a>
            </div>
          </li>
          <li><a href="../pages/about.php">About us</a></li>
          <li><a href="../authentication/logout.php">Log Out</a></li>
          <li>
            <a href="../authentication/ServiceProviderProfile.php">
              <img src="../assets/Images/photos/account.png" alt="Account Icon" class="profile-icon" />
            </a>
          </li>

        </ul>
      </div>
    </nav>

    <img class="svg-overlay" src="../assets/Images/photos/Untitled-1.svg" alt="SVG Overlay" />

    
  </section>

  <script>
    const hamburger = document.getElementById('hamburger');
    const navLinks = document.getElementById('nav-links');
    const dropdowns = document.querySelectorAll('.dropdown');

    hamburger.addEventListener('click', () => {
      navLinks.classList.toggle('active');
    });

    // Handle dropdown clicks on mobile
    dropdowns.forEach(dropdown => {
      const dropdownBtn = dropdown.querySelector('.dropbtn');
      dropdownBtn.addEventListener('click', (e) => {
        if (window.innerWidth <= 768) {
          e.preventDefault();
          dropdown.classList.toggle('active');
        }
      });
    });

    // Close menu when clicking outside
    document.addEventListener('click', (e) => {
      if (!navLinks.contains(e.target) && !hamburger.contains(e.target)) {
        navLinks.classList.remove('active');
        dropdowns.forEach(dropdown => dropdown.classList.remove('active'));
      }
    });
  </script>
</body>

</html>
