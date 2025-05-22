function openPopup(themeId) {
    console.log("Opening popup for themeId:", themeId); // Debug: Log the theme ID

    // Fetch products for the specified theme ID
    fetch(`fetch_products.php?theme_id=${themeId}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            // Populate the services array with products
            window.services = data.map((product, index) => ({
                name: product.Name,
                price: `$${product.price}`,
                image: product.photo,
                rating: 0,
                productId: product.product_id
            }));
            console.log("Services array:", window.services); // Debugging

            // Generate provider tabs and show the popup
            generateProviderTabs();
            showProvider(0); // Default to the first provider
            showPopup();
        })
        .catch(error => {
            console.error('Error fetching products:', error);
        });
}
function closePopup() {
    const popup = document.getElementById('popup');
    popup.style.opacity = 0; // Start fade out
    setTimeout(() => {
        popup.style.display = 'none'; // Hide the popup after fading out
    }, 300); // Duration of fade out
    document.getElementById('overlay').style.display = 'none'; // Hide overlay
  }
 // Updated services.js with database integration
 async function rateService(stars, providerIndex) {
    try {
        // Directly access the product ID from the services array
        const productId = window.services[providerIndex].productId;
        
        const response = await fetch('handle_rating.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                action: 'add_feedback',
                product_id: productId,
                comment: stars.toString()
            })
        });

        const data = await response.json();
        
        if (data.success) {
            // Update visual star rating
            let starElements = document.querySelectorAll(`#rating-item-${providerIndex} .star`);
            starElements.forEach((star, i) => {
                star.classList.toggle('selected', i < stars);
            });
            
            // Update the service's rating in the local array
            window.services[providerIndex].rating = stars;
            
            // Reload product feedback
            await loadProductFeedback(productId, providerIndex);
        } else {
            throw new Error(data.error || 'Failed to submit rating');
        }
    } catch (error) {
        console.error('Rating submission error:', error);
        alert('Error submitting rating: ' + error.message);
    }
}

async function loadProductFeedback(productId, providerIndex) {
    try {
        const response = await fetch('handle_rating.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                action: 'get_feedback',
                product_id: productId
            })
        });
        
        const data = await response.json();
        
        if (data.success) {
            // Update comments list
            const commentsList = document.getElementById(`comments-list-${providerIndex}`);
            commentsList.innerHTML = data.comments.map(comment => `
                <div class="comment">
                    <div class="user-info">
                        <img src="${comment.Photo || '../assets/Images/photos/account.png'}" alt="${comment.Name}" class="user-photo">
                        <span class="user-name">${comment.Name}</span>
                    </div>
                    <p class="comment-text">${comment.comment}</p>
                </div>
            `).join('');
            
            // Update rating display
            const ratingDisplay = document.getElementById(`rating-display-${providerIndex}`);
            if (ratingDisplay && data.rating_stats) {
                ratingDisplay.textContent = `Average Rating: ${data.rating_stats.average_rating} (${data.rating_stats.total_ratings} ratings)`;
            }
        }
    } catch (error) {
        console.error('Error loading feedback:', error);
    }
}

async function submitComment(providerIndex) {
    const commentInput = document.getElementById(`comment-${providerIndex}`);
    const commentText = commentInput.value.trim();
    
    if (!commentText) {
        alert("Comment cannot be empty.");
        return;
    }
    
    try {
        const productId = window.services[providerIndex].productId;
        
        const response = await fetch('handle_rating.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                action: 'add_feedback',
                product_id: productId,
                comment: commentText
            })
        });
        
        const data = await response.json();
        
        if (data.success) {
            // Clear input
            commentInput.value = '';
            
            // Reload product feedback
            await loadProductFeedback(productId, providerIndex);
        } else {
            throw new Error(data.error || 'Failed to submit comment');
        }
    } catch (error) {
        console.error('Comment submission error:', error);
        alert('Error submitting comment: ' + error.message);
    }
}

async function loadProductFeedback(productId, providerIndex) {
    try {
        const response = await fetch('handle_rating.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                action: 'get_feedback',
                product_id: productId
            })
        });
        
        const data = await response.json();
        
        if (data.success) {
            // Update comments list
            const commentsList = document.getElementById(`comments-list-${providerIndex}`);
            commentsList.innerHTML = data.comments.map(comment => `
                <div class="comment">
                    <div class="user-info">
                        <img src="${comment.Photo || '../assets/Images/photos/account.png'}" alt="${comment.Name}" class="user-photo">
                        <span class="user-name">${comment.Name}</span>
                    </div>
                    <p class="comment-text">${comment.comment}</p>
                </div>
            `).join('');
            
            // Update rating display if available
            if (data.rating_stats) {
                const ratingDisplay = document.getElementById(`rating-display-${providerIndex}`);
                if (ratingDisplay) {
                    ratingDisplay.textContent = `Average Rating: ${data.rating_stats.average_rating} (${data.rating_stats.total_ratings} ratings)`;
                }
            }
        }
    } catch (error) {
        console.error('Error loading feedback:', error);
    }
}



// Modify your generateProviderTabs function to include the productId
function generateProviderTabs() {
    console.log("Services array:", window.services);

    if (!window.services || !Array.isArray(window.services)) {
        console.error("Services array is not defined or is not an array.");
        return;
    }

    let providerTabList = document.getElementById('provider-tab-list');
    let providerTabContent = document.getElementById('provider-tab-content');
    providerTabList.innerHTML = '';
    providerTabContent.innerHTML = '';

    window.services.forEach((service, providerIndex) => {
        providerTabList.innerHTML += `
            <li><button onclick="showProvider(${providerIndex})">${service.name}</button></li>`;

        providerTabContent.innerHTML += `
            <div class="provider-item" id="provider-item-${providerIndex}" style="display: none;">
                <div class="provider-content">
                    <div class="provider-info">
                        <h2>${service.name}</h2>
                        <p>Price: ${service.price}</p>
                        <div class="rating-section">
                            <h3>Rate the Service</h3>
                            <div class="stars" id="rating-item-${providerIndex}">
                                ${[1,2,3,4,5].map(star => 
                                    `<span class="star" onclick="rateService(${star}, ${providerIndex})">★</span>`
                                ).join('')}
                            </div>
                            <div id="rating-display-${providerIndex}"></div>
                        </div>
                        <div class="comment-section">
                            <h3>Comments</h3>
                            <textarea id="comment-${providerIndex}" placeholder="Leave a comment..."></textarea>
                            <button onclick="submitComment(${providerIndex})">Submit Comment</button>
                            <div class="comments-list" id="comments-list-${providerIndex}"></div>
                        </div>
                    </div>
                    <div class="provider-image">
                        <img src="${service.image}" alt="${service.name} service image" />
                    </div>
                </div>
            </div>`;
    });

    // Load feedback for first service when tabs are generated
    if (window.services.length > 0) {
        loadProductFeedback(window.services[0].productId, 0);
    }
}

// Modify showProvider to load feedback when switching tabs
function showProvider(providerIndex) {
    console.log("Showing provider:", providerIndex);

    if (!window.services || !Array.isArray(window.services)) {
        console.error("Services array is not defined or is not an array.");
        return;
    }

    const selectedService = window.services[providerIndex];
    if (!selectedService) {
        console.error("No service found at index:", providerIndex);
        return;
    }

    // Update the popup title
    document.getElementById("popup-title").textContent = selectedService.name;

    // Show the provider content
    let providerItems = document.querySelectorAll('.provider-item');
    providerItems.forEach((item, i) => {
        item.style.display = (i === providerIndex) ? 'block' : 'none';
    });

    // Highlight the active tab
    const tabButtons = document.querySelectorAll('.provider-tab-list button');
    tabButtons.forEach((button, i) => {
        button.classList.remove('active');
        if (i === providerIndex) {
            button.classList.add('active');
        }
    });

    // Load feedback for the selected provider
    loadProductFeedback(selectedService.productId, providerIndex);
}
  
  function showPopup() {
    document.getElementById('popup').style.display = 'flex';
    document.getElementById('popup').style.opacity = '1';
    document.getElementById('overlay').style.display = 'block';
  }
  
  // Add event listener to close popup when clicking outside
  document.getElementById('overlay').addEventListener('click', (event) => {
    if (event.target === document.getElementById('overlay')) {
      closePopup();
    }
  });
