<?php
session_start(); // Start session if not already started

include 'config.php'; // Include the database connection configuration

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Registration handling
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['register'])) {
    // Prepare user data
    $first_name = mysqli_real_escape_string($conn, $_POST['first_name']);
    $last_name = mysqli_real_escape_string($conn, $_POST['last_name']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $contact_num = mysqli_real_escape_string($conn, $_POST['contact_num']);
    $address = mysqli_real_escape_string($conn, $_POST['address']);

    // Construct SQL query
    $sql = "INSERT INTO users_info (first_name, last_name, username, password, email, contact_num, address) VALUES ('$first_name', '$last_name', '$username', '$password', '$email', '$contact_num', '$address')";

    // Execute SQL query
    if ($conn->query($sql) === TRUE) {
        // Registration successful
        $_SESSION['registration_success'] = true;
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <title>Register</title>
</head>
<body>
<div class="container-login">
    <div class="form-box">
        <h1 id="title">Register</h1>
        <form id="registerForm" method="POST" action="register.php">
            <div class="input-group">
                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="first_name" placeholder="First Name" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="last_name" placeholder="Last Name" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" name="email" placeholder="Email" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-phone"></i>
                    <input type="text" name="contact_num" placeholder="Contact Number" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-map-marker-alt"></i>
                    <input type="text" name="address" placeholder="Address" required>
                </div>
            </div>
            <div class="btn-field">
                <button type="submit" name="register">Register</button>
                <a href="login.php" class="btn-link">Login</a>
            </div>
        </form>
        <!-- Display the success message if registration is successful -->
        <?php if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['register'])): ?>
            <div class="success-message">Registration successful</div>
        <?php endif; ?>
    </div>
</div>
</body>
</html>
