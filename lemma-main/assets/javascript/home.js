// Get modal elements
const addServiceBtn = document.getElementById('addServiceBtn');
const addServiceModal = document.getElementById('addServiceModal');
const closeModal = document.getElementById('closeModal');

// Open modal when the "+" button is clicked
addServiceBtn.onclick = function() {
    addServiceModal.style.display = 'flex';
}

// Close the modal when the 'X' button is clicked
closeModal.onclick = function() {
    addServiceModal.style.display = 'none';
}

// Close the modal when clicking outside of the modal content
window.onclick = function(event) {
    if (event.target === addServiceModal) {
        addServiceModal.style.display = 'none';
    }
}

// Handle form submission
document.getElementById('addServiceForm').addEventListener('submit', function(event) {
    event.preventDefault();
    // Gather form data (you can handle this to save the service/product)
    const serviceName = document.getElementById('service-name').value;
    const serviceDescription = document.getElementById('service-description').value;
    const serviceType = document.getElementById('service-type').value;
    const serviceCategory = document.getElementById('service-category').value;

    alert(`New ${serviceType} Added: ${serviceName}\nCategory: ${serviceCategory}\nDescription: ${serviceDescription}`);
    
    // Clear the form and close modal after submission
    document.getElementById('addServiceForm').reset();
    addServiceModal.style.display = 'none';
});
