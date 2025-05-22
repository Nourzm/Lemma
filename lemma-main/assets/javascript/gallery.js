const coverflow = document.querySelector(".coverflow");
const items = document.querySelectorAll(".coverflow-item");

// Adjust rotation based on cursor position
coverflow.addEventListener("mousemove", (e) => {
  const rect = coverflow.getBoundingClientRect();
  const x = e.clientX - rect.left;
  const mid = rect.width / 2;
  const rotation = ((x - mid) / mid) * 30;

  items.forEach((item, index) => {
    const zIndex = Math.abs(index - rotation / 30);
    item.style.setProperty("--i", zIndex);
  });
});

// Automatically adjust slider rotation for a dynamic effect
let currentIndex = 0;
setInterval(() => {
  items.forEach((item, index) => {
    const zIndex = Math.abs((index - currentIndex) % items.length);
    item.style.setProperty("--i", zIndex);
  });
  currentIndex = (currentIndex + 1) % items.length;
}, 3000);
