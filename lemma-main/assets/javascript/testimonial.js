document.addEventListener("DOMContentLoaded", async function () {
  // Get DOM elements
  const slidesContainer = document.querySelector(".slides");
  let slides = document.querySelectorAll(".slide");
  const dotsContainer = document.querySelector(".slider-dots");
  const feedbackModal = document.getElementById("feedbackModal");
  const addFeedbackBtn = document.getElementById("addFeedbackBtn");
  const closeBtn = document.querySelector(".close-btn");
  const feedbackForm = document.getElementById("feedbackForm");
  const feedbackConfirmation = document.getElementById("feedbackConfirmation");

  let currentSlide = 0;
  let slideInterval;

  // Fetch testimonials from database
  async function loadTestimonials() {
    try {
      const response = await fetch("/pages/get_feedbacks.php");
      const result = await response.json();

      if (result.success) {
        slidesContainer.innerHTML = ""; // Clear existing slides
        dotsContainer.innerHTML = ""; // Clear existing dots

        result.data.forEach((testimonial) => {
          const slide = createNewSlide(testimonial);
          slidesContainer.appendChild(slide);
        });

        slides = document.querySelectorAll(".slide");
        slides.forEach((_, index) => createDot(index));

        if (slides.length > 0) {
          goToSlide(0);
          startSlideshow();
        }
      }
    } catch (error) {
      console.error("Error loading testimonials:", error);
    }
  }

  // Function to create and append a dot
  function createDot(index) {
    const dot = document.createElement("div");
    dot.classList.add("dot");
    if (index === 0) dot.classList.add("active");
    dot.addEventListener("click", () => goToSlide(index));
    dotsContainer.appendChild(dot);
  }

  function createNewSlide(data) {
    const slide = document.createElement("div");
    slide.className = "slide";
    const imageURL = data.image_path || "../assets/Images/photos/account.png";
    slide.innerHTML = `
      <div class="client_info">
        <img src="${imageURL}" alt="${data.user_name}" class="image" />
        <span class="name">${data.user_name}</span>
      </div>
      <p>"${data.feedback_text}"</p>
      <i class="bx bxs-quote-alt-left quote-icon"></i>
      <div class="event-type">${data.event_type}</div>
    `;
    return slide;
  }

  // Function to update slide position
  function updateSlidePosition() {
    slidesContainer.style.transform = `translateX(-${currentSlide * 100}%)`;
    document.querySelectorAll(".dot").forEach((dot, index) => {
      dot.classList.toggle("active", index === currentSlide);
    });
  }

  // Function to go to specific slide
  function goToSlide(index) {
    currentSlide = index;
    updateSlidePosition();
    resetInterval();
  }

  // Function to go to next slide
  function nextSlide() {
    currentSlide = (currentSlide + 1) % slides.length;
    updateSlidePosition();
  }

  // Function to reset interval
  function resetInterval() {
    clearInterval(slideInterval);
    slideInterval = setInterval(nextSlide, 5000);
  }

  // Start auto-sliding
  function startSlideshow() {
    resetInterval();
  }

  // Initial load of testimonials
  await loadTestimonials();

  // Modal functionality for adding feedback
  addFeedbackBtn.onclick = () => {
    feedbackModal.style.display = "block";
  };

  // Close modal
  closeBtn.onclick = () => {
    feedbackModal.style.display = "none";
  };

  // Close modal if clicking outside of it
  window.onclick = (event) => {
    if (event.target === feedbackModal) {
      feedbackModal.style.display = "none";
    }
  };

  // Handle form submission
  feedbackForm.onsubmit = async (e) => {
    e.preventDefault();

    // Collect form data
    const name = document.getElementById("name").value;
    const eventType = document.getElementById("eventType").value;
    const feedback = document.getElementById("feedback").value;
    const imageFile = document.getElementById("image").files[0];

    const formData = new FormData();
    formData.append("name", name);
    formData.append("eventType", eventType);
    formData.append("feedback", feedback);
    if (imageFile) formData.append("image", imageFile);

    try {
      const response = await fetch("/pages/submit_feedback.php", {
        method: "POST",
        body: formData,
      });

      const result = await response.json();

      if (result.success) {
        await loadTestimonials(); // Reload all testimonials
        feedbackForm.reset();
        feedbackConfirmation.textContent = "Thank you for your feedback!";
        feedbackConfirmation.style.display = "block";
        setTimeout(() => {
          feedbackModal.style.display = "none";
          feedbackConfirmation.style.display = "none";
        }, 3000);
      } else {
        throw new Error(result.error);
      }
    } catch (error) {
      feedbackConfirmation.textContent =
        "Error submitting feedback. Please try again.";
      feedbackConfirmation.style.display = "block";
    }
  };
});
