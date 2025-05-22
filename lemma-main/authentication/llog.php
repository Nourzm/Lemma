<?php
require_once '../db1.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="llog.css" />
  <link rel="icon" href="../assets/Images/icon.png" type="image/png">
  <title>Sign In/Sign Up</title>
</head>

<body>
  <div class="generalSign" id="generalSign">
    <div class="genrsing sign-up">
      <form id="signUpForm" action="SignUpconfig.php" method="post" autocomplete="off" novalidate>
        <h1>Create Account</h1>
        <input type="text" name="fname" id="signUpName" placeholder="First Name" />
        <input type="text" name="lname" id="signUpLast" placeholder="Last Name" />
        <input type="email" id="signUpEmail" name="email" placeholder="Enter Your Email" />
        <input type="password" id="signUpPassword" name="password" class="passwordEye" placeholder="Enter Your Password" minlength="8" />
        <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm Your Password" />
        <div id="signUpError" class="error-message"></div>
        <button type="submit">Sign Up</button>
      </form>
    </div>

    <div class="genrsing sign-in">
      <form id="signInForm" action="SignInconfig.php" method="post" autocomplete="off" novalidate>
        <h1>Sign In</h1>
        <input type="email" id="signInEmail" name="email" placeholder="Enter Your Email" />
        <input type="password" id="signInPassword" name="password" placeholder="Enter Your Password" />
        <div id="signInError" class="error-message"></div>
        <a href="forgot_password.html">Forget Your Password?</a>
        <button type="submit">Sign In</button>
      </form>
    </div>

    <div class="generalSwap">
      <div class="swap">
        <div class="genswap swap-left">
          <h1>Excited to Have You Join Us!</h1>
          <p>Become a part of Lemma by creating your profile, and enjoy full access to all our features!</p>
          <button class="hidden" id="login">Sign In</button>
        </div>
        <div class="genswap swap-right">
          <h1>Welcome Back!</h1>
          <p>Welcome back to Lemma! Log in to access all our features and continue enjoying your event planning experience!</p>
          <button class="hidden" id="logup">Sign Up</button>
        </div>
      </div>
    </div>
  </div>

  <script src="jquery-3.7.1.js"></script>
  <script src="llog.js"></script>
</body>

</html>