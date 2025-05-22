<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gourmet Culinary Experiences</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/GourmetImages/Images1/img0.jpg"; // No image background
    $serviceName = "Gourmet Culinary Experiences</ti"; // Title of the service
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



                <div class="card" onclick="openPopup(64)" data-title="caftan"

                    data-img="../assets/Images/GourmetImages/Images1/img1.jpg">

                    <img src="../assets/Images/GourmetImages/Images1/img1.jpg" />

                    <div class="overlay">

                        <h3>Order Baklwaoua</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(65)" data-title="karako"

                    data-img="../assets/Images/GourmetImages/Images1/img2.jpg">

                    <img src="../assets/Images/GourmetImages/Images1/img2.jpg" />

                    <div class="overlay">
                        <h3>Order Makrout Ellouz</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(66)"

                    data-img="../assets/Images/GourmetImages/Images1/img3.jpg">

                    <img src="../assets/Images/GourmetImages/Images1/img3.jpg" />

                    <div class="overlay">

                        <h3>Order Charek Mseker</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(67)" data-title="Melhfa"


                    data-img="../assets/Images/GourmetImages/Images1/4.jpg">

                    <img src="../assets/Images/GourmetImages/Images1/img4.jpg" />

                    <div class="overlay">

                        <h3>Order Mkhebez</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(68)" data-title="Guendora"
                    data-img="../assets/Images/GourmetImages/Images1/img5.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img5.jpg" />
                    <div class="overlay">
                        <h3>Order Laaraiche</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(69)" data-title="Chedda"
                    data-img="../assets/Images/GourmetImages/Images1/img6.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img6.jpg" />
                    <div class="overlay">
                        <h3>Order Thouma</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>



                <div class="card" onclick="openPopup(70)" data-title="Blousa"
                    data-img="../assets/Images/GourmetImages/Images1/img7.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img7.jpg" />
                    <div class="overlay">
                        <h3>Order Dziriet</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>


                <div class="card" onclick="openPopup(71)" data-title="Robe soirée"
                    data-img="../assets/Images/GourmetImages/Images1/img8.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img8.jpg" />
                    <div class="overlay">
                        <h3>Order Mekrout</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>





                <div class="card" onclick="openPopup(72)" data-title="Robe blanche"
                    data-img="../assets/Images/GourmetImages/Images1/img9.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img9.jpg" />
                    <div class="overlay">
                        <h3>Order Charek El Aariane</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>
                <div class="card" onclick="openPopup(73)" data-title="Robe blanche"
                    data-img="../assets/Images/GourmetImages/Images1/img10.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img10.jpg" />
                    <div class="overlay">
                        <h3>Order your dreamday cake</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                    </div>
                </div>
                <div class="card" onclick="openPopup(74)" data-title="Robe blanche"
                    data-img="../assets/Images/GourmetImages/Images1/img11.jpg">
                    <img src="../assets/Images/GourmetImages/Images1/img11.jpg" />
                    <div class="overlay">
                        <h3>Order sweety cupcakes</h3>


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
            <p class="quote">"Experience the flavor of gourmet culinary surrounded by the people you love."</p>


            <span class="close" onclick="closePopup()">&times;</span>
            <p id="popup-desc"></p>
            <ul class="provider-tab-list" id="provider-tab-list">
                <!-- Dynamic content will be injected here -->
            </ul>
            <div class="provider-tab-content" id="provider-tab-content">
                <!-- Dynamic content will be injected here -->
                <div class="comment">
                    <div class="user-info">
                        <img src="../assets/Images/photos/account.png" alt="John Doe" class="user-photo">
                        <span class="user-name">John Doe</span>
                    </div>
                    <p class="comment-text">This is a sample comment.</p>
                </div>
            </div>

            <div class="message-section">
                <button class="purchase-button" onclick="window.open('purchase.php', '_self')">
                    Purchase
                </button>

            </div>

        </div>




    </div>
    </div>
    <script src="../assets/javascript/services.js"></script>


    <?php include '../components/footer.php'; ?>
    <?php include '../components/messaging.php'; ?>
</body>

</html>