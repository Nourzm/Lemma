<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Professional Event Staffing Solutions</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
</head>

<body>
    <?php
    $videoSrc = ""; // Video file for the header
    $imageBackground = "../assets/Images/AttireImages/Images6/img0.jpg"; // No image background
    $serviceName = "Event Staffing Services"; // Title of the service
    include '../components/header.php';
    ?>
    <section class="Services">
        <div class="description">
            <div class="image-container">
                <img src="../assets/Images/photos/flower-for-main.png" alt="Small Image">
                <h2>How would you like your <img src="../assets/Images/photos/lemma logo dark.png" alt="Lemma Logo" style="width: 150px;"></a> to look like? </h2>
            </div>
        </div>
        <section id="types-of-events">

            <div class="cards-area">



                <div class="card" onclick="openPopup(40)"


                    data-img="../assets/Images/AttireImages/Images6/img1.jpg">

                    <img src="../assets/Images/AttireImages/Images6/img1.jpg" />

                    <div class="overlay">

                        <h3>No Photography Team</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>


                <div class="card" onclick="openPopup(41)"


                    data-img="../assets/Images/AttireImages/Images6/img2.jpg">

                    <img src="../assets/Images/AttireImages/Images6/img2.jpg" />

                    <div class="overlay">
                        <h3>Event Service Staff</h3>


                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>



                <div class="card" onclick="openPopup(42)"



                    data-img="pics/pexels-hellojoshwithers-26088007.jpg">

                    <img src="../assets/Images/AttireImages/Images6/img3.jpg" />

                    <div class="overlay">

                        <h3>Baby Sitting Service</h3>



                        <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>

                    </div>

                </div>






                <div class="card" onclick="openPopup(43)"
                    data-img="../assets/Images/AttireImages/Images6/img4.jpg">
                    <img src="../assets/Images/AttireImages/Images6/img4.jpg" alt="Cooking team" />
                    <div class="overlay">
                        <h3>Cooking Team</h3>


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
            <p class="quote">"Enjoy the lovely moments and let the service to us."
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
                    // Define the service ID (e.g., 17 for Birthday Attire)
                    const serviceId = 40;

                    // Fetch products for the specified service ID
                    fetch(`../pages/fetch_products.php?service_id=${serviceId}`)
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok');
                            }
                            return response.json();
                        })
                        .then(data => {
                            // Populate the services array
                            window.services = data.map((product, index) => ({
                                name: product.Name,
                                price: `$${product.price}`,
                                image: product.photo,
                                rating: 0,
                                productId: product.product_id
                            }));
                            console.log("Services array:", window.services); // Debugging
                        })
                        .catch(error => {
                            console.error('Error fetching products:', error);
                        });
                </script>
            </div>




        </div>
    </div>
    <script src="../assets/javascript/services.js"></script>
    <?php include '../components/footer.php'; ?>
    <?php include '../components/messaging.php'; ?>

</body>

</html>