const generalSign = document.getElementById("generalSign");
const logUp = document.getElementById("logup");
const logIn = document.getElementById("login");

// Toggle between signup and signin forms
logUp.addEventListener("click", () => {
    generalSign.classList.add("active");
});

logIn.addEventListener("click", () => {
    generalSign.classList.remove("active");
});

// Helper function to validate email format
function validateEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
}

// Sign-up form validation
function validateSignUp() {
    const name = document.getElementById("signUpName").value.trim();
    const lastname = document.getElementById("signUpLast").value.trim();
    const email = document.getElementById("signUpEmail").value.trim();
    const password = document.getElementById("signUpPassword").value;
    const confirmPassword = document.getElementById("confirmPassword").value;
    const errorElement = document.getElementById("signUpError");

    errorElement.textContent = "";

    if (name === "" || lastname === "") {
        errorElement.textContent = "Name and lastname are required.";
        return false;
    }

    if (!validateEmail(email)) {
        errorElement.textContent = "Please enter a valid email address.";
        return false;
    }

    if (password.length < 8) {
        errorElement.textContent = "Password must be at least 8 characters long.";
        return false;
    }

    if (!/[0-9]/.test(password) || !/[a-zA-Z]/.test(password)) {
        errorElement.textContent = "Password must contain both letters and numbers.";
        return false;
    }

    if (password !== confirmPassword) {
        errorElement.textContent = "Passwords do not match.";
        return false;
    }

    return true;
}

// Sign-in form validation
function validateSignIn() {
    const email = document.getElementById("signInEmail").value.trim();
    const password = document.getElementById("signInPassword").value;
    const errorElement = document.getElementById("signInError");

    errorElement.textContent = "";

    if (!validateEmail(email)) {
        errorElement.textContent = "Please enter a valid email address.";
        return false;
    }

    if (password.length < 8) {
        errorElement.textContent = "Password must be at least 8 characters long.";
        return false;
    }

    return true;
}

// jQuery document ready
$(document).ready(function() {
    // Sign in form submission
    $('#signInForm').on('submit', function(e) {
        e.preventDefault();
        if (validateSignIn()) {
            let email = $('#signInEmail').val();
            let password = $('#signInPassword').val();
            
            $.ajax({
                url: 'SignInconfig.php',
                type: 'POST',
                data: {
                    email: email,
                    password: password
                },
                success: function(res) {
                    let response = JSON.parse(res);
                    if (response.status) {
                        window.location.href = "../index.php";
                    } else {
                        $("#signInError").text(response.message);
                        setTimeout(() => {
                            $("#signInError").text("");
                        }, 3000);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error:", status, error);
                    $("#signInError").text("An error occurred. Please try again.");
                }
            });
        }
    });

    // Sign up form submission
    $('#signUpForm').on('submit', function(e) {
        e.preventDefault();
        if (validateSignUp()) {
            let name = $('#signUpName').val();
            let lastname = $('#signUpLast').val();
            let email = $('#signUpEmail').val();
            let password = $('#signUpPassword').val();
            let cpassword = $('#confirmPassword').val();
            
            $.ajax({
                url: 'SignUpconfig.php',
                type: 'POST',
                data: {
                    fname: name,
                    lname: lastname,
                    email: email,
                    password: password,
                    confirmPassword: cpassword
                },
                success: function(res) {
                    let response = JSON.parse(res);
                    if (response.status === 'success') {
                        $('#signUpError').css('color', 'green');
                        $('#signUpError').text(response.message);
                        setTimeout(() => {
                            window.location.href = '../index.php';
                        }, 2000);
                    } else {
                        $('#signUpError').css('color', 'red');
                        $('#signUpError').text(response.message);
                        setTimeout(() => {
                            $('#signUpError').text('');
                        }, 3000);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX Error:", status, error);
                    $('#signUpError').css('color', 'red');
                    $('#signUpError').text("An error occurred. Please try again.");
                }
            });
        }
    });
});