<?php
include 'db1.php';
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

if (!isset($_SESSION['user_id'])) {
  echo "User not authenticated. Redirecting to login page.";
  header("Location: authentication/llog.php");
  exit();
} else {
  // Debugging: Log message to confirm session is set
  error_log("User authenticated. User ID: " . $_SESSION['user_id']);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Lemma</title>
  <link rel="stylesheet" href="assets/css/home.css" />

  <link rel="stylesheet" href="/assets/css/testimonial.css" />
  <link rel="stylesheet" href="assets/css/gallery.css" />
  <link
    href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap"
    rel="stylesheet" />
  <link
    href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>

<body>

  <?php
  $videoSrc = "";
  $imageBackground = "/assets/Images/photos/home1.jpg";
  $serviceName = "";
  include 'components/header.php';
  ?>

  <section class="main-content">
    <div class="description_HOME">
      <div class="image-container">
        <img src="assets/images/photos/flower-for-main.png" alt="Small Image" />
      </div>

      <p>
        Welcome to <span class="playfair-display"><strong>Lemma</strong></span>, your one-stop platform for organizing unforgettable events! Whether
        it's a wedding, graduation, or any special celebration, we have all the services you need in one place.
      </p>
    </div>
    <section class="coverflow-section">
      <div class="coverflow-container">
        <!-- Coverflow Slider -->
        <div class="coverflow">
          <div class="coverflow-item" style="--i: 0">
            <img src="assets/Images/photos/g1.jpg" alt="Birthday Event" />
          </div>
          <div class="coverflow-item" style="--i: 1">
            <img src="assets/Images/photos/g2.jpg" alt="Wedding Event" />
          </div>
          <div class="coverflow-item" style="--i: 2">
            <img src="assets/Images/photos/g3.jpg" alt="Graduation Event" />
          </div>
          <div class="coverflow-item" style="--i: 2">
            <img src="assets/Images/photos/g4.jpg" alt="Graduation Event" />
          </div>
        </div>

        <!-- Description -->
        <div class="description">
          <p>
            Discover who we are and what drives us! Our mission is to create meaningful connections and provide exceptional services to make your experience unforgettable. Learn more about our values, our story, and the amazing team behind our success.
          </p>
          <a href="pages/About.php" class="learn-more-button">Learn More</a>
        </div>
      </div>
    </section>

    <!-- Type of events with 6 cards -->
    <section id="types-of-events">
      <h2>Type of Events</h2>
      <div class="cards-area">
        <div class="card">
          <img src="assets/Images/photos/graduations.jpg" alt="Graduation Event" />
          <div class="overlay">
            <h3>Graduation Glitz & Glam</h3>
            <p>"A proud moment deserves an unforgettable celebration."</p>
            <a href="pages/Graduation.php" class="button-check-services">Check services</a>
          </div>
        </div>
        <div class="card">
          <img src="assets/Images/photos/weddings.jpg" alt="Wedding Event" />
          <div class="overlay">
            <h3>Ever After Weddings</h3>
            <p>"Your love story deserves the perfect beginning."</p>
            <a href="pages/Wedding.php" class="button-check-services">Check services</a>
          </div>
        </div>
        <div class="card">
          <img src="assets/Images/photos/birthday2s.jpg" alt="Birthday Event" />
          <div class="overlay">
            <h3>Whimsical Birthday Bash</h3>
            <p>"Celebrate life with a party as unique as you are."</p>
            <a href="pages/Birthday.php" class="button-check-services">Check services</a>
          </div>
        </div>
        <div class="card">
          <img src="assets/Images/photos/formal partys.jpg" alt="Corporate Event" />
          <div class="overlay">
            <h3>Corporate Prestige Events</h3>
            <p>"Creating memorable experiences for your business and team."</p>
            <a href="pages/CorporatePrestigeEvents.php" class="button-check-services">Check services</a>
          </div>
        </div>
        <div class="card">
          <img src="assets/Images/photos/party1s.jpg" alt="Party Event" />
          <div class="overlay">
            <h3>Signature Events for Every Occasion</h3>
            <p>"Because every moment deserves to be celebrated."</p>
            <a href="pages/SignatureEvents.php" class="button-check-services">Check services</a>
          </div>
        </div>
        <div class="card">
          <img src="assets/Images/photos/babys.jpg" alt="Baby Celebration" />
          <div class="overlay">
            <h3>Joyful Baby Arrival Celebration</h3>
            <p>"Welcoming a precious new life with love and laughter!"</p>
            <a href="pages/BabyArrivalCelebration.php" class="button-check-services">Check services</a>
          </div>
        </div>
      </div>
    </section>
    <!--faq section-->
    <div class="faq-section">
      <div class="faq-image">
        <img src="assets/Images/photos/faq1.jpg" alt="Table Decoration" />
      </div>
      <div class="faq-content">
        <h2>Frequently Asked Questions</h2>

        <div class="faq-item">
          <input type="checkbox" id="faq1" />
          <label for="faq1" class="faq-question">What is Lemma?</label>
          <div class="faq-answer">
            <p>
              Lemma is an Algerian online platform that connects users with service providers for various events such as weddings, parties, and graduations. We simplify the process by offering a one-stop solution for all your event planning needs.
            </p>
          </div>
        </div>

        <div class="faq-item">
          <input type="checkbox" id="faq2" />
          <label for="faq2" class="faq-question">How does Lemma work?</label>
          <div class="faq-answer">
            <p>
              You can browse service providers like photographers, decorators, and pastry chefs, compare their services, prices, and reviews, and book them directly through our platform.
            </p>
          </div>
        </div>

        <div class="faq-item">
          <input type="checkbox" id="faq3" />
          <label for="faq3" class="faq-question">How do I find the right vendors for my event?</label>
          <div class="faq-answer">
            <p>
              Use our search filters to sort vendors based on services, location, pricing, and user reviews. You can easily compare different providers to find the best fit for your event.
            </p>
          </div>
        </div>

        <div class="faq-item">
          <input type="checkbox" id="faq4" />
          <label for="faq4" class="faq-question">What types of events does Lemma cater to?</label>
          <div class="faq-answer">
            <p>
              Lemma is designed to help plan all kinds of events, from weddings and corporate events to graduations and birthday parties.
            </p>
          </div>
        </div>
      </div>
    </div>



    <!-- Testimonial Section with Feedback Button -->
    <section class="testimonial-container">
      <h2>What Our Clients Say</h2>

      <!-- Testimonial Slider -->
      <div class="testimonial-slider">
        <div class="slider-container">
          <div class="slides">
            <!-- Initial testimonials -->
            <div class="slide">
              <div class="client_info">
                <img
                  src=""
                  alt=""
                  class="image" />
                <span class="name">Michael Chen</span>
              </div>

              <p>
                "Our corporate event was executed flawlessly. The team's
                professionalism and attention to detail made our company
                anniversary truly memorable. Highly recommend!"
              </p>
              <i class="bx bxs-quote-alt-left quote-icon"></i>
              <div class="event-type">Corporate Event</div>
            </div>

            <!-- Additional testimonials -->
          </div>

          <!-- Navigation dots -->
          <div class="slider-dots"></div>
        </div>
      </div>

      <!-- Modal Container for Feedback Form -->
      <div id="feedbackModal" class="modal">
        <div class="modal-content">
          <span class="close-btn">&times;</span>
          <form id="feedbackForm">
            <!-- Form fields -->
            <div class="form-group">
              <input type="text" id="name" required placeholder="Your Name" />
            </div>
            <div class="form-group">
              <input type="file" id="image" />
            </div>
            <div class="form-group">
              <select id="eventType" required>
                <option value="">Select Event Type</option>
                <option value="Wedding Celebration">Wedding</option>
                <option value="Graduation Ceremony">Graduation</option>
                <option value="Birthday Party">Birthday</option>
                <option value="Corporate Event">Corporate Event</option>
                <option value="Signature Event">Signature Event</option>
                <option value="Baby Celebration">Baby Celebration</option>
              </select>
            </div>
            <div class="form-group">
              <textarea
                id="feedback"
                required
                placeholder="Share your experience..."></textarea>
            </div>

            <button type="submit" class="submit-btn">Submit Feedback</button>
          </form>
        </div>
      </div>
      <button id="addFeedbackBtn" class="feedback-btn">
        Share Your Experience
      </button>

      <!-- Feedback Confirmation -->
      <div id="feedbackConfirmation"></div>
    </section>
    <!-- Testimonial JavaScript -->
    <script src="assets/javascript/testimonial.js"></script>
    <script src="assets/javascript/gallery.js"></script>
  </section>
  <?php include 'components/footer.php'; ?>
  <?php include 'components/messaging.php'; ?>


</body>

</html>