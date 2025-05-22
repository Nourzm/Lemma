// C:\xampp\htdocs\lemma\assets\javascript\ServiceProviderProfile.js
document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector(".form-section");
    const firstName = document.getElementById("firstName");
    const surname = document.getElementById("surname");
    const mobileNumber = document.getElementById("mobileNumber");
    const address = document.getElementById("address");

    // Disable name and surname fields
    firstName.disabled = true;
    surname.disabled = true;
    firstName.style.backgroundColor = "#f0f0f0";
    surname.style.backgroundColor = "#f0f0f0";

    // Real-time validation for editable fields only
    mobileNumber.addEventListener("input", validateMobileNumber);
    address.addEventListener("input", validateAddress);

    // Form submit event
    form.addEventListener("submit", function (event) {
        event.preventDefault();

        // Reset any existing error messages
        removeError(mobileNumber);
        removeError(address);
        
        let hasError = false;

        // Validate mobile number
        if (mobileNumber.value.trim() === "") {
            showError(mobileNumber, "Mobile number is required.");
            hasError = true;
        } else if (!/^\d{8,}$/.test(mobileNumber.value)) {
            showError(mobileNumber, "Please enter a valid mobile number (at least 8 digits).");
            hasError = true;
        }

        // Validate address
        if (address.value.trim() === "") {
            showError(address, "Address is required.");
            hasError = true;
        }

        if (!hasError) {
            // Create FormData object
            const formData = new FormData(form);
            formData.append('user_id', document.getElementById('user-id').value);

            // Send AJAX request using fetch
            fetch('ServiceProviderConfig.php', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    // Clear any existing error messages
                    removeError(mobileNumber);
                    removeError(address);
                    
                    // Show success message
                    showSuccessMessage("Profile updated successfully!");
                    
                    // Refresh the displayed data by calling get_data()
                    get_data(document.getElementById('user-id').value);
                } else {
                    showError(form, data.message || "Error updating profile");
                }
            })
            .catch(error => {
                console.error('Error:', error);
                showError(form, "Error connecting to server");
            });
        }
    });
});

// Validation functions
function validateMobileNumber() {
    if (mobileNumber.value.trim() === "" || !/^\d{8,}$/.test(mobileNumber.value)) {
        markInvalid(mobileNumber, "Please enter a valid mobile number");
        return false;
    } else {
        markValid(mobileNumber);
        return true;
    }
}

function validateAddress() {
    if (address.value.trim() === "") {
        markInvalid(address, "Address is required");
        return false;
    } else {
        markValid(address);
        return true;
    }
}

// UI helper functions
function markValid(input) {
    input.style.borderColor = "green";
    removeError(input);
}

function markInvalid(input, message) {
    input.style.borderColor = "red";
    showError(input, message);
}

function showError(input, message) {
    removeError(input); // Remove existing error first
    const errorMessage = document.createElement("div");
    errorMessage.className = "error-message";
    errorMessage.style.color = "red";
    errorMessage.style.fontSize = "12px";
    errorMessage.style.marginTop = "5px";
    errorMessage.innerText = message;
    input.parentNode.appendChild(errorMessage);
}

function removeError(input) {
    const errorMessage = input.parentNode.querySelector(".error-message");
    if (errorMessage) {
        errorMessage.remove();
    }
}

function showSuccessMessage(message) {
    // Remove any existing success messages first
    const existingMessages = document.querySelectorAll('.success-message');
    existingMessages.forEach(msg => msg.remove());

    const successMessage = document.createElement("div");
    successMessage.className = "success-message";
    successMessage.style.position = "fixed";
    successMessage.style.top = "20px";
    successMessage.style.right = "20px";
    successMessage.style.backgroundColor = "#4CAF50";
    successMessage.style.color = "white";
    successMessage.style.padding = "15px";
    successMessage.style.borderRadius = "5px";
    successMessage.style.zIndex = "1000";
    successMessage.innerText = message;
    document.body.appendChild(successMessage);

    setTimeout(() => {
        successMessage.remove();
    }, 3000);
}

// Data fetching function
function get_data(user_id) {
    $.ajax({
        url: 'fetch-user-data.php',
        type: 'GET',
        data: { user_id: user_id },
        success: function(res) {
            try {
                let response = JSON.parse(res);
                if (response.length > 0) {
                    const data = response[0];
                    $('#firstName').val(data.Name);
                    $('#surname').val(data.Surname);
                    $('#mobileNumber').val(data.Mobile_Number);
                    $('#address').val(data.Address);
                    if (data.Photo) {
                        $('#user-photo').attr('src', data.Photo);
                    }
                }
            } catch (e) {
                console.error('Error parsing user data:', e);
            }
        },
        error: function() {
            showError(form, "Error fetching user data");
        }
    });
}

// Profile picture update function
function updateProfilePic(event) {
    const file = event.target.files[0];
    if (file) {
        const formData = new FormData();
        const user_id = document.getElementById('user-id').value;
        formData.append('profilePicture', file);
        formData.append('user_id', user_id);

        $.ajax({
            url: 'uploadProfilePic.php',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function(response) {
                try {
                    const result = JSON.parse(response);
                    if (result.status === 'success') {
                        document.getElementById('user-photo').src = result.photoUrl;
                        showSuccessMessage('Profile picture updated successfully');
                    } else {
                        showError(document.getElementById('file'), result.message);
                    }
                } catch (e) {
                    console.error('Error:', e);
                    showError(document.getElementById('file'), 'Error updating profile picture');
                }
            },
            error: function() {
                showError(document.getElementById('file'), 'Error uploading profile picture');
            }
        });
    }
}
