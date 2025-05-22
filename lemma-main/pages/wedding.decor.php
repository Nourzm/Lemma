<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wedding Decor</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />

</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/DecorImages/Images1/img0.jpg"; // No image background
    $serviceName = "Wedding Decor"; // Title of the service
    include '../components/header.php';
    ?>

    <!-- Services Section -->
    <section class="Services">
        <div class="description">
            <div class="image-container">
                <img src="../assets/Images/photos/flower-for-main.png" alt="Small Image">
                <h2>How would you like your <img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo" style="width: 150px;"></a> to look like? </h2>
            </div>
        </div>
        <section id="types-of-events">

            <div class="cards-area">



                <div class="card" onclick="openPopup(1)" data-title="Enchanting Décor Creations"

                    data-img="../assets/Images/DecorImages/Images1/img1.jpg">

                    <img src="../assets/Images/DecorImages/Images1/img1.jpg" alt="Decoration" />

                    <div class="overlay">

                        <h3>Enchanting Outdoor Wedding Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(2)" data-title="Cinematic Photography & Videography"

                    data-img="../assets/Images/DecorImages/Images1/img2.jpg">

                    <img src="../assets/Images/DecorImages/Images1/img2.jpg" alt="Photography" />

                    <div class="overlay">
                        <h3>Romantic Garden Wedding Décor</h3>

                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(3)"

                    data-title="Serene Beach Wedding Décor"

                    data-desc="Celebrate your love with the perfect beach wedding décor. Our team brings the natural beauty of the seaside to life with flowing fabrics, tropical florals, and subtle coastal accents. Whether it’s a barefoot ceremony or a seaside reception, we ensure a serene and breathtaking ambiance."

                    data-img="../assets/Images/DecorImages/Images1/img3.jpg">

                    <img src="../assets/Images/DecorImages/Images1/img3.jpg" alt="Staffing Services" />

                    <div class="overlay">

                        <h3>Serene Beach Wedding Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(4)" data-title="Elegant Home Wedding Décor"


                    data-img="../assets/Images/DecorImages/Images1/4.jpg">

                    <img src="../assets/Images/DecorImages/Images1/img4.jpg" alt="Food" />

                    <div class="overlay">

                        <h3>Elegant Home Wedding Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(5)" data-title="Modern Indoor Wedding Décor" data-desc="Elevate your indoor wedding with contemporary décor that reflects your style. From chic centerpieces to elegant backdrops, our designs are tailored to create a sophisticated and memorable atmosphere, blending tradition with modern flair." data-img="../assets/Images/DecorImages/Images1/img8.jpg">
                    <img src="../assets/Images/DecorImages/Images1/img5.jpg" alt="Clothes" />
                    <div class="overlay">
                        <h3>Modern Indoor Wedding Décor</h3>

                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(6)" data-title="Luxurious Ballroom Wedding Décor"
                    data-img="../assets/Images/DecorImages/Images1/img6.jpg">
                    <img src="../assets/Images/DecorImages/Images1/img6.jpg" alt="Event Location" />
                    <div class="overlay">
                        <h3>Luxurious Ballroom Wedding Décor</h3>

                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(7)" data-title="Bohemian Wedding Décor"
                    data-img="../assets/Images/DecorImages/Images1/img7.jpg">
                    <img src="../assets/Images/DecorImages/Images1/img7.jpg" alt="Event Location" />
                    <div class="overlay">
                        <h3>Bohemian Wedding Décor</h3>

                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>


            </div>

        </section>
    </section>

    <!-- Popup Modal -->
    <div id="overlay"></div>
    <div class="popup" id="popup">
        <div id="popup-title" style="font-size: 24px; color: white; text-align: center;"></div>

        <div class="popup-content">
            <p class="quote">"Experience the magic of elegant decor surrounded by the people you love."</p>


            <span class="close" onclick="closePopup()">&times;</span>
            <p id="popup-desc"></p>
            <ul class="provider-tab-list" id="provider-tab-list">
                <!-- Dynamic content will be injected here -->
            </ul>
            <div class="provider-tab-content" id="provider-tab-content">
                <!-- Dynamic content will be injected here -->
            </div>
            <div class="message-section">
                <button class="purchase-button" onclick="window.open('purchase.php', '_self')">
                    Purchase
                </button>

            </div>




        </div>
    </div>
    <script src="../assets/javascript/services.js"></script>
    <?php include '../components/footer.php'; ?>
    <?php include '../components/messaging.php'; ?>

</body>

</html>