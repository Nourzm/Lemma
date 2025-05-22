<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Graduation Decor</title>
  <link rel="stylesheet" href="../assets/css/About.css" />

</head>

<body>
  <?php
  $videoSrc = ""; // Video file for the header
  $imageBackground = "../assets/Images/AboutPics/about.png";
  $serviceName = "About Us"; // Title of the service
  include '../components/header.php';
  ?>




  <!-- Main Content -->
  <section class="container">
    <div class="image-container">
      <img src="../assets/images/photos/flower-for-main.png" alt="Small Image" />
    </div>
    <div id="our-story" class="about-content">
      <h2 class="section-title">Our Story</h2>
      <p>
        At Lemma, we are passionate about unleashing only the best
        experiences. With years of expertise and a portfolio of countless
        successful events, we transform your dreams into reality. Our
        dedication to excellence and attention to detail ensures that every
        celebration becomes a cherished memory.
      </p>
    </div>

    <div class="stats">
      <div class="stat-item">
        <div id="events-completed" class="stat-number">79+</div>
        <p>Events Completed</p>
      </div>
      <div class="stat-item">
        <div id="expert-planners" class="stat-number">15+</div>
        <p>Expert Planners</p>
      </div>
      <div class="stat-item">
        <div id="satisfaction-rate" class="stat-number">90%</div>
        <p>Satisfaction Rate</p>
      </div>
    </div>

    <h2 id="why-choose-us" class="section-title">Why Choose Lemma/لمَّة</h2>
    <div class="why-choose-us">
      <div class="feature-card">
        <div class="feature-icon"> <img src="../assets/Images/AboutPics/creation.png" alt=""></div>
        <h3>Innovative Concepts</h3>
        <p>
          We bring creative, fresh ideas to every event, ensuring a unique, memorable experience tailored to your vision.
        </p>
      </div>
      <div class="feature-card">
        <div class="feature-icon"> <img src="../assets/Images/AboutPics/people.png" alt=""></div>
        <h3>Vetted Professionals</h3>
        <p>
          Connect with a network of top-rated local service providers, from photographers to decorators, for seamless event planning.
        </p>
      </div>
      <div class="feature-card">
        <div class="feature-icon"><img src="../assets/Images/AboutPics/message.png" alt=""></div>
        <h3>Effortless Communication</h3>
        <p>
          Enjoy streamlined messaging with vendors and our support team for smooth coordination at every step.
        </p>
      </div>
      <div class="feature-card">
        <div class="feature-icon"><img src="../assets/Images/AboutPics/red-carpet.png" alt=""></div>
        <h3>Personalized Events</h3>
        <p>
          Every event is crafted with attention to detail, reflecting your unique style and preferences for a one-of-a-kind experience.
        </p>
      </div>
      <div class="feature-card">
        <div class="feature-icon"><img src="../assets/Images/AboutPics/business-teamwork.png" alt=""></div>
        <h3>Experienced Team</h3>
        <p>
          Our seasoned professionals bring expertise and dedication to make your event exceptional, so you can relax and enjoy.
        </p>
      </div>
      <div class="feature-card">
        <div class="feature-icon"><img src="../assets/Images/AboutPics/advantage.png" alt=""></div>
        <h3>All-In-One Solutions</h3>
        <p>
          From planning to execution, Lemma/لمَّة offers a comprehensive platform to simplify event organization and bring your vision to life.
        </p>
      </div>
    </div>

  </section>


  <div id="our-team" class="team-section">
    <h2 class="section-title">Our Team</h2>
    <div class="team-grid">
      <div class="team-member">
        <img src="../assets/Images/AboutPics/Maroua.jpg" alt="Team Member" />
        <h3 class="member-name">Sayah Maroua </h3>
        <div class="social-icons">
          <a href="#"><img src="../assets/Images/AboutPics/mail.png" alt="Mail" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-instagram-96.png" alt="Instagram" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-linkedin-96.png" alt="LinkedIn" /></a>
        </div>

      </div>
      <div class="team-member">
        <img src="../assets/Images/AboutPics/nour.jpg" alt="Team Member" />
        <h3 class="member-name">Zamiche Nour</h3>
        <div class="social-icons">
          <a href="#"><img src="../assets/Images/AboutPics/mail.png" alt="Mail" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-instagram-96.png" alt="Instagram" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-linkedin-96.png" alt="LinkedIn" /></a>
        </div>

      </div>
      <div class="team-member">
        <img src="../assets/Images/AboutPics/Belkeis.jpg" alt="Team Member" />

        <h3 class="member-name">Salhi Belkis</h3>
        <div class="social-icons">
          <a href="#"><img src="../assets/Images/AboutPics/mail.png" alt="Mail" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-instagram-96.png" alt="Instagram" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-linkedin-96.png" alt="LinkedIn" /></a>
        </div>

      </div>
      <div class="team-member">
        <img src="../assets/Images/AboutPics/imene.jpg" alt="Team Member" />
        <h3 class="member-name">Tifour Imane</h3>
        <div class="social-icons">
          <a href="#"><img src="../assets/Images/AboutPics/mail.png" alt="Mail" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-instagram-96.png" alt="Instagram" /></a>
          <a href="#"><img src="../assets/Images/photos/icons8-linkedin-96.png" alt="LinkedIn" /></a>
        </div>

      </div>
    </div>
  </div>
  </div>

  <?php include '../components/footer.php'; ?>
  <?php include '../components/messaging.php'; ?>
  <script src="../assets/javascript/About.js"></script>
</body>

</html>