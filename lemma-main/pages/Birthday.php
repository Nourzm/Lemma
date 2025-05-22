<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Birthday</title>
    <link rel="stylesheet" href="../assets/css/EventsStyles.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
  </head>
  <body>
    <!-- Header Section -->

    <?php
$videoSrc = "../assets/Images/EventsPhotos/birthday2.mp4"; // Video file for the header
$imageBackground = ""; // No image background
$serviceName = ""; // Title of the service
include '../components/header.php';
?>
    <!-- Services Section -->
    <section class="Services">
      <!-- Decoration -->
      <div class="section">
        <img src="../assets/Images/EventsPhotos/birthday_deco.jpg" alt="Decoration" />
        <div class="content">
          <h2>Enchanting Décor Creations</h2>
          <p>
            <span class="quote">
              Transforming spaces into breathtaking settings.
            </span>
            <br />
            We craft stunning décor that reflects your vision. From elegant
            floral arrangements to captivating table settings, our designs
            create a magical backdrop for unforgettable moments.
          </p>
          <a href="birthday.decor.php">Explore Details</a>
        </div>
      </div>

      <!-- Photography -->
      <div class="section">
        <img src="../assets/Images/EventsPhotos/birthday_photgraph.webp" alt="Photography" />
        <div class="content">
          <h2>Cinematic Photography & Videography</h2>
          <p>
            <span class="quote">
              Capturing the essence of your special moments.
            </span>
            <br />Preserve your events with our professional photography and
            videography. Our talented team captures every emotion and detail,
            ensuring timeless memories to cherish.
          </p>
          <a href="Photography.php">Explore Details</a>
        </div>
      </div>

      <!-- Protocol Services -->
      <div class="section">
        <img
          src="../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg"
          alt="Staffing Services"
        />
        <div class="content">
          <h2>Professional Event Staffing Solutions</h2>
          <p>
            <span class="quote"> Your trusted team for seamless service.</span>
            <br />
            Ensure smooth service with our experienced staff. From setup to
            cleanup, our dedicated team manages logistics and guest needs,
            allowing you to enjoy your celebration worry-free.
          </p>
          <a href="EventStaffing.php">Explore Details</a>
        </div>
      </div>

      <!-- Food -->
      <div class="section">
        <img src="../assets/Images/EventsPhotos/birthday_food.jpeg" alt="Food" />
        <div class="content">
          <h2>Gourmet Culinary Experiences</h2>
          <p>
            <span class="quote">
              Delicious flavors crafted to delight your palate.
            </span>
            <br />Elevate your event with our gourmet catering, featuring a
            diverse menu tailored to your tastes. We cater to all dietary needs,
            ensuring a memorable culinary experience for every guest.
          </p>
          <a href="GourmetCulinary.php">Explore Details</a>
        </div>
      </div>

      <!-- Clothes -->
      <div class="section">
        <img src="../assets/Images/EventsPhotos/birthday_dress.avif" alt="Clothes" />
        <div class="content">
          <h2>Stylish Attire & Accessories</h2>
          <p>
            <span class="quote">
              Look and feel your best on your special day.
            </span>
            <br />Discover stunning attire for all occasions, from elegant gowns
            to sharp suits. Our consultants help you find the perfect look that
            matches your style and event theme.
          </p>
          <a href="birthday.attire.php">Explore Details</a>
        </div>
      </div>

      <!-- Event Location -->
      <div class="section">
        <img src="../assets/Images/EventsPhotos/birthday_venue.jpg" alt="Event Location" />
        <div class="content">
          <h2>Premier Venue Selection</h2>
          <p>
            <span class="quote"
              >Find the ideal location for your unforgettable event.</span
            >
            <br />
            Choose from a variety of stunning venues that match your vision. Our
            team guides you in selecting the perfect backdrop,whether a grand
            ballroom, serene outdoor space, or intimate setting ,ensuring it
            aligns with your event's style and size for a memorable celebration.
          </p>
          <a href="venuselection.php">Explore Details</a>
        </div>
        <!-- Placeholder image, adjust as needed -->
      </div>
    </section>
      <!-- Footer with brown and beige parts -->
      <?php include '../components/footer.php'; ?>
      <?php include '../components/messaging.php'; ?>
      </body>
</html>
