<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Graduation Decor</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />

</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/DecorImages/Images2/img0.jpg"; // No image background
    $serviceName = "Graduation Decor"; // Title of the service
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



                <div class="card" onclick="openPopup(59)"


                    data-img="../assets/Images/DecorImages/Images2/img1.jpg">

                    <img src="../assets/Images/DecorImages/Images2/img1.jpg" alt="Decoration" />

                    <div class="overlay">

                        <h3>Enchanting Outdoor Graduation Décor</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(60)"


                    data-img="../assets/Images/DecorImages/Images2/img2.jpg">

                    <img src="../assets/Images/DecorImages/Images2/img2.jpg" />

                    <div class="overlay">
                        <h3>Elegant Home Graduation Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(61)"



                    data-img="pics/pexels-hellojoshwithers-26088007.jpg">

                    <img src="../assets/Images/DecorImages/Images2/img3.jpg" alt="Staffing Services" />

                    <div class="overlay">

                        <h3>Garden Graduation Décor</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>






                <div class="card" onclick="openPopup(62)"
                    data-img="../assets/Images/DecorImages/Images2/img4.jpg">
                    <img src="../assets/Images/DecorImages/Images2/img4.jpg" alt="Clothes" />
                    <div class="overlay">
                        <h3>Modern Indoor Graduation Décor</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>

                <div class="card" onclick="openPopup(63)" data-title="Luxurious Ballroom Wedding Décor"
                    data-img="../assets/Images/DecorImages/Images2/img5.jpg">
                    <img src="../assets/Images/DecorImages/Images2/img5.jpg" alt="Event Location" />
                    <div class="overlay">
                        <h3>Luxurious Ballroom Graduation Décor</h3>


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


                <script>
                    let services = Array.from({
                        length: 5
                    }, (_, itemIndex) => [{
                            name: `Service Provider ${itemIndex + 1}A`,
                            price: `$${200 + itemIndex * 20}`,
                            image: `../assets/Images/DecorImages/Images2/image${itemIndex + 1}a.jpg`,
                            rating: 0
                        },
                        {
                            name: `Service Provider ${itemIndex + 1}B`,
                            price: `$${300 + itemIndex * 20}`,
                            image: `../assets/Images/DecorImages/Images2/image${itemIndex + 1}b.jpg`,
                            rating: 0
                        },
                    ]);
                </script>
            </div>




        </div>
    </div>
    <script src="../assets/javascript/services.js"></script>


    <?php include '../components/footer.php'; ?>
    <?php include '../components/messaging.php'; ?>
</body>

</html>