<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Baby Arrival Decor</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/DecorImages/Images4/img0.jpg"; // No image background
    $serviceName = "Baby Arrival Decor"; // Title of the service
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



                <div class="card" onclick="openPopup(24)"


                    data-img="../assets/Images/DecorImages/Images4/img1.jpg">

                    <img src="../assets/Images/DecorImages/Images4/img1.jpg" alt="Decoration" />

                    <div class="overlay">

                        <h3>Enchanting Baby Girl Arrival Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(25)"


                    data-img="../assets/Images/DecorImages/Images4/img2.jpg">

                    <img src="../assets/Images/DecorImages/Images4/img2.jpg" />

                    <div class="overlay">
                        <h3>Enchanting Baby Boy Arrival Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(26)"



                    data-img="pics/pexels-hellojoshwithers-26088007.jpg">

                    <img src="../assets/Images/DecorImages/Images4/img3.jpg" alt="Staffing Services" />

                    <div class="overlay">

                        <h3>A Soft Neutral Theme Decor</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>






                <div class="card" onclick="openPopup(27)"
                    data-img="../assets/Images/DecorImages/Images4/img4.jpg">
                    <img src="../assets/Images/DecorImages/Images4/img4.jpg" />
                    <div class="overlay">
                        <h3>Modern Outdoor Baby Arrival Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
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
            <p class="quote">"Experience the magic of an elegant decor surrounded by those who you love."
            </p>

            <span class="close" onclick="closePopup()">&times;</span>
            <p id="popup-desc"></p>
            <ul class="provider-tab-list" id="provider-tab-list">
            </ul>
            <div class="provider-tab-content" id="provider-tab-content">
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