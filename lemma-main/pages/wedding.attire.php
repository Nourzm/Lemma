<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wedding Decor</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/AttireImages/Images1/img0.jpg"; // No image background
    $serviceName = "Wedding Attire"; // Title of the service
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



                <div class="card" onclick="openPopup(8)" data-title="caftan"

                    data-img="../assets/Images/AttireImages/Images1/img1.jpg">

                    <img src="../assets/Images/AttireImages/Images1/img1.jpg" alt="CAFTAN" />

                    <div class="overlay">

                        <h3>Buy Or Reserve a Caftan</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(9)" data-title="karako"

                    data-img="../assets/Images/AttireImages/Images1/img2.jpg">

                    <img src="../assets/Images/AttireImages/Images1/img2.jpg" alt="KARAKO" />

                    <div class="overlay">
                        <h3>Buy Or Reserve a karako</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(2)"

                    data-title="Robe Kabyle"

                    data-desc="Celebrate your love with the perfect beach wedding décor. Our team brings the natural beauty of the seaside to life with flowing fabrics, tropical florals, and subtle coastal accents. Whether it’s a barefoot ceremony or a seaside reception, we ensure a serene and breathtaking ambiance."

                    data-img="../assets/Images/AttireImages/Images1/img3.jpg">

                    <img src="../assets/Images/AttireImages/Images1/img3.jpg" alt="Robe Kabyle" />

                    <div class="overlay">

                        <h3>Buy Or Reserve "Robe Kabyle"</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(10)" data-title="Melhfa"


                    data-img="../assets/Images/AttireImages/Images1/4.jpg">

                    <img src="../assets/Images/AttireImages/Images1/img4.jpg" alt="Melhfa" />

                    <div class="overlay">

                        <h3>Buy Or Reserve a Melhfa</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(11)" data-title="Guendora"
                    data-img="../assets/Images/AttireImages/Images1/img5.jpg">
                    <img src="../assets/Images/AttireImages/Images1/img5.jpg" alt="Guendora" />
                    <div class="overlay">
                        <h3>Buy Or Reserve a Guendora</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(12)" data-title="Chedda"
                    data-img="../assets/Images/AttireImages/Images1/img6.jpg">
                    <img src="../assets/Images/AttireImages/Images1/img6.jpg" alt="Chedda" />
                    <div class="overlay">
                        <h3>Buy Or Reserve a "Chedda Tlemcenia"</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(13)" data-title="Blousa"
                    data-img="../assets/Images/AttireImages/Images1/img7.jpg">
                    <img src="../assets/Images/AttireImages/Images1/img7.jpg" alt="Blousa" />
                    <div class="overlay">
                        <h3>Buy Or Reserve a Blousa</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>


                <div class="card" onclick="openPopup(14)" data-title="Robe soirée"
                    data-img="../assets/Images/AttireImages/Images1/img8.jpg">
                    <img src="../assets/Images/AttireImages/Images1/img8.jpg" alt="Robe soirée" />
                    <div class="overlay">
                        <h3>Buy Or Reserve a "Robe soirée"</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>


                <div class="card" onclick="openPopup(15)" data-title="Robe blanche"
                    data-img="../assets/Images/AttireImages/Images1/img9.jpg">
                    <img src="../assets/Images/AttireImages/Images1/img9.jpg" alt="robe blanche" />
                    <div class="overlay">
                        <h3>Buy Or Reserve a "Robe blanche"</h3>


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
            <p class="quote">"Experience the magic of elegant attire surrounded by the people you love."</p>


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