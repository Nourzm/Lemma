document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector(".form-section");

    // Real-time validation for inputs
    const firstName = document.getElementById("firstName");
    const surname = document.getElementById("surname");
    const mobileNumber = document.getElementById("mobileNumber");
    const address = document.getElementById("address");
    const bankAccountNumber = document.getElementById("UserBankAccountNumber");

    // Adding event listeners for each input field to validate as the user types
    firstName.addEventListener("input", validateFirstName);
    surname.addEventListener("input", validateSurname);
    mobileNumber.addEventListener("input", validateMobileNumber);
    address.addEventListener("input", validateAddress);

    // Form submit event
    form.addEventListener("submit", function (event) {
        event.preventDefault(); // Prevent form submission

        let hasError = false;
        // Validate fields again before submission
        if (firstName.value.trim() === "") {
            showError(firstName, "First name is required.");
            hasError = true;
        } else {
            markValid(firstName);
        }

        if (surname.value.trim() === "") {
            showError(surname, "Surname is required.");
            hasError = true;
        } else {
            markValid(surname);
        }
   if (mobileNumber.value.trim() === "") {
            showError(mobileNumber, "Mobile number is required.");
            hasError = true;
        } else if (!/^\d{8,}$/.test(mobileNumber.value)) {
            showError(mobileNumber, "Please enter a valid mobile number at least 8 digits.");
            hasError = true;
        } else {
            markValid(mobileNumber);
        }

        if (address.value.trim() === "") {
            showError(address, "Address is required.");
            hasError = true;
        } else {
            markValid(address);
        }

     
        // Show success message if no errors
        if (!hasError) {
            showSuccessMessage("Data has been successfully saved!");
        }
    });

    // Real-time validation functions
    function validateFirstName() {
        if (firstName.value.trim() === "") {
            markInvalid(firstName);
        } else {
            markValid(firstName);
        }
    }

    function validateSurname() {
        if (surname.value.trim() === "") {
            markInvalid(surname);
        } else {
            markValid(surname);
        }
    }

    function validateMobileNumber() {
        if (mobileNumber.value.trim() === "" || !/^\d+$/.test(mobileNumber.value)) {
            markInvalid(mobileNumber);
        } else {
            markValid(mobileNumber);
        }
    }

    function validateAddress() {
        if (address.value.trim() === "") {
            markInvalid(address);
        } else {
            markValid(address);
        }
    }

 

    // Function to mark input as valid (green color)
    function markValid(input) {
        input.style.borderColor = "green"; // Change border color to green
        removeError(input); // Remove any error message if the data is valid
    }

    // Function to mark input as invalid (red color)
    function markInvalid(input) {
        input.style.borderColor = "red"; // Change border color to red
        showError(input, "This field is required and must be valid.");
    }

    // Function to display error messages
    function showError(input, message) {
        let errorMessage = input.nextElementSibling; // Check for an existing error message
        if (!errorMessage || !errorMessage.classList.contains("error-message")) {
            errorMessage = document.createElement("div");
            errorMessage.className = "error-message";
            input.parentNode.appendChild(errorMessage);
        }
        errorMessage.innerText = message;
    }

    // Function to remove the error message
    function removeError(input) {
        let errorMessage = input.nextElementSibling;
        if (errorMessage && errorMessage.classList.contains("error-message")) {
            errorMessage.remove();
        }
    }

    // Function to display success message
    function showSuccessMessage(message) {
        const successMessage = document.createElement("div");
        successMessage.className = "success-message";
        successMessage.innerText = message;
        document.body.appendChild(successMessage);

        // Automatically hide the success message after 3 seconds
        setTimeout(() => {
            successMessage.remove();
        }, 3000);
    }
});
function updateProfilePic(event) {
    const fileInput = event.target;
    const file = fileInput.files[0];
    
    if (file) {
        const reader = new FileReader();
        reader.onload = function (e) {
            const profilePic = document.querySelector(".profile-pic");
            profilePic.style.backgroundImage = `url(${e.target.result})`;
        };
        reader.readAsDataURL(file);
    }
}
