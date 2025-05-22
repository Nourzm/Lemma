// Fetch services when an event is selected
document.getElementById("event-type").addEventListener("change", fetchServices);

// Fetch themes when a service is selected
document.getElementById("service-type").addEventListener("change", fetchThemes);

function fetchServices() {
    const eventType = document.getElementById("event-type").value;
    console.log("Selected Event ID:", eventType); // Debugging: Log the selected event ID

    if (eventType) {
        // Fetch services for the selected event
        fetch(`../pages/get-services.php?eventType=${eventType}`)
            .then((response) => {
                console.log("Response:", response); // Debugging: Log the response
                return response.json();
            })
            .then((data) => {
                console.log("Data:", data); // Debugging: Log the data
                const serviceDropdown = document.getElementById("service-type");
                serviceDropdown.innerHTML = '<option value="">Select Service Type</option>';
                data.forEach((service) => {
                    const option = document.createElement("option");
                    option.value = service.Service_Id;
                    option.textContent = service.Name;
                    serviceDropdown.appendChild(option);
                });
            })
            .catch((error) => {
                console.error("Error fetching services:", error); // Debugging: Log any errors
            });
    }
}

function fetchThemes() {
    const serviceType = document.getElementById("service-type").value;

    if (serviceType) {
        // Fetch themes for the selected service
        fetch(`../pages/get-themes.php?serviceType=${serviceType}`)
            .then((response) => response.json())
            .then((data) => {
                const themeDropdown = document.getElementById("theme");
                themeDropdown.innerHTML = '<option value="">Select Theme</option>';
                data.forEach((theme) => {
                    const option = document.createElement("option");
                    option.value = theme.Theme_Id;
                    option.textContent = theme.Title;
                    themeDropdown.appendChild(option);
                });
            });
    }
}

// Add event listener for file input
document.getElementById("file-input").addEventListener("change", previewImages);

// File upload preview
function previewImages() {
    const fileInput = document.getElementById("file-input");
    const imagePreview = document.getElementById("image-preview");
    imagePreview.innerHTML = ""; // Clear previews

    // Check if more than one file is selected
    if (fileInput.files.length > 1) {
        alert("You can upload only one image.");
        fileInput.value = ""; // Clear the file input
        return;
    }

    const file = fileInput.files[0]; // Get the first (and only) file

    if (file && file.type.startsWith("image/")) {
        const reader = new FileReader();
        reader.onload = () => {
            const img = document.createElement("img");
            img.src = reader.result;
            imagePreview.appendChild(img);
        };
        reader.readAsDataURL(file);
    } else if (file) {
        alert("The selected file is not an image.");
        fileInput.value = ""; // Clear the file input
    }
}

// Input validation
document.getElementById("addServiceForm").addEventListener("submit", function (event) {
    // Reset error messages first
    resetErrorMessages();

    const eventType = document.getElementById("event-type").value;
    const serviceType = document.getElementById("service-type").value;
    const theme = document.getElementById("theme");
    const price = document.getElementById("price").value;
    const fileInput = document.getElementById("file-input");
    const serviceName = document.getElementById("service-name").value;
    const description = document.getElementById("description").value;



    let formValid = true;
    
    if (!serviceName.trim()) {
        displayErrorMessage("service-name-error-message", "Please enter a service name.");
        formValid = false;
    }

    if (!description.trim()) {
        displayErrorMessage("description-error-message", "Please enter a description.");
        formValid = false;
    }

    // Validate event type
    if (!eventType) {
        displayErrorMessage("event-type-error-message", "Please select an event type.");
        formValid = false;
    }

    // Validate service type
    if (!serviceType) {
        displayErrorMessage("service-type-error-message", "Please select a service type.");
        formValid = false;
    }

    // Validate specify option
    if (!theme) {
        displayErrorMessage("theme-error-message", "Please select a theme.");
        formValid = false;
    }


    // Validate price
    if (!price || isNaN(price) || price <= 0) {
        displayErrorMessage("price-error-message", "Please enter a valid price.");
        formValid = false;
    }

    // Validate file upload (make sure a file is selected)
    if (!fileInput.files.length) {
        displayErrorMessage("image-error-message", "Please upload at least one image.");
        formValid = false;
    }

    // If any validation fails, prevent form submission
    if (!formValid) {
        event.preventDefault();
    }
});

// Function to display error messages under the inputs
function displayErrorMessage(inputId, message) {
    const errorElement = document.getElementById(inputId);
    errorElement.textContent = message;
    errorElement.style.display = 'block'; // Show the error message
}

// Function to reset error messages
function resetErrorMessages() {
    // Reset error messages for all inputs
    const errorElements = document.querySelectorAll('.error-message');
    errorElements.forEach(element => {
        element.style.display = 'none'; // Hide the error messages
        element.textContent = ''; // Clear the text content
    });
}



