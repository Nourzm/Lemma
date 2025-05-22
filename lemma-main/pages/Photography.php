<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Photography & Videography</title>
    <link rel="stylesheet" href="../assets/css/services.style.css" />
    <link rel="icon" href="../assets/Images/icon.png" type="image/png">
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_GOOGLE_MAPS_API_KEY&libraries=places"></script>

</head>
<body>
<?php
$videoSrc = ""; // Video file for the header
$imageBackground = "../assets/Images/PhotographyImages/img0.jpg"; // No image background
$serviceName = "Cinematic photography and videography"; // Title of the service
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

           
        
                <div class="card" onclick="openPopup(50)"  
        
        
                data-img="../assets/Images/PhotographyImages/img1.jpg">
        
                <img src="../assets/Images/PhotographyImages/img1.jpg"  />
        
                <div class="overlay">
        
                    <h3>Celebrate the memories of your dream day.</h3>

        
                    <a href="javascript:void(0);"class="button-explore-details" >Explore Details</a>
        
                </div>
        
             </div>

     
             <div class="card" onclick="openPopup(51)" 
     
     
                data-img="../assets/Images/PhotographyImages/img2.jpg">
     
                <img src="../assets/Images/PhotographyImages/img2.jpg"  />
     
                  <div class="overlay">
                  <h3>Capture Your Pride At Your Graduation Ceremony.</h3>
                  

                  <a href="javascript:void(0);"class="button-explore-details" >Explore Details</a>
     
                </div>
     
             </div>

     
     
             <div class="card" onclick="openPopup(52)" 
     
     
     
             data-img="pics/pexels-hellojoshwithers-26088007.jpg">
     
             <img src="../assets/Images/PhotographyImages/img3.jpg" />
     
                 <div class="overlay">
     
                 <h3>Honor your moments of professional achievement.</h3>
                 

     
                 <a href="javascript:void(0);" class="button-explore-details" >Explore Details</a>
     
                </div>
     
             </div>

    
             

   

             <div class="card" onclick="openPopup(53)" 
              data-img="../assets/Images/PhotographyImages/img4.jpg">
             <img src="../assets/Images/PhotographyImages/img4.jpg"  />
                <div class="overlay">
                 <h3>Let Your Birthday Memories Live Forever</h3>
                 

                 <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                 </div>
             </div>


             <div class="card" onclick="openPopup(54)" 
              data-img="../assets/Images/PhotographyImages/img5.jpg">
             <img src="../assets/Images/PhotographyImages/img5.jpg"  />
                <div class="overlay">
                 <h3>Take The Loveliest Picture Of Your Baby</h3>
                 

                 <a href="javascript:void(0);" class="button-explore-details">Explore Details</a>
                 </div>
             </div>

            

             

             

             
     </div>
        
    </section>
</section>
    
    <!-- Popup Modal --><div id="overlay"></div>
    <div class="popup" id="popup">
        <div id="popup-title" style="font-size: 24px; color: white; text-align: center;"></div>
    
        <div class="popup-content">
            <p class="quote">"Experience the magic of an elegant Look surrounded by those who you love."
            </p> 

          <span class="close" onclick="closePopup()">&times;</span>
          
          <p id="popup-desc"></p>
          <ul class="provider-tab-list" id="provider-tab-list">
          </ul>
          <div class="provider-tab-content" id="provider-tab-content">
          <div class="comment">
    <div class="user-info">
        <img src="../assets/Images/photos/account.png" alt="John Doe" class="user-photo">
        <span class="user-name">John Doe</span>
    </div>
    <p class="comment-text">This is a sample comment.</p>
</div></div>
          
            <button class="purchase-button" onclick="window.open('https://www.adahabya.com', '_blank')">
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