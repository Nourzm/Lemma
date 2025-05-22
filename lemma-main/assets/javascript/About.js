function animateNumber(element, endValue, duration) {
  let startValue = 0;
  const stepTime = duration / endValue; // Calculate time between each step
  const interval = setInterval(() => {
    startValue++;
    element.textContent =
      startValue + (element.id === "satisfaction-rate" ? "%" : "+");
    if (startValue === endValue) {
      clearInterval(interval); // Stop the interval once the number reaches the target
    }
  }, stepTime);
}

// Wait for the DOM to load before starting the animation
document.addEventListener("DOMContentLoaded", () => {
  // Animate each stat number with a duration of 2000ms (2 seconds)
  animateNumber(document.getElementById("events-completed"), 79, 3000);
  animateNumber(document.getElementById("expert-planners"), 15, 3000);
  animateNumber(document.getElementById("satisfaction-rate"), 90, 3000);
});
