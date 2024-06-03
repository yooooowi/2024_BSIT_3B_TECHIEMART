<?php
include 'config.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_SESSION['cart_items']) && !empty($_SESSION['cart_items'])) {
        // Extract user_id from session or any other source
        $user_id = 1; // Assuming user_id is 1 for demonstration purposes

        // Prepare and bind SQL statement
        $stmt = $conn->prepare("INSERT INTO `order` (user_id, item_name, quantity, date_added, total_price) VALUES (?, ?, ?, NOW(), ?)");
        $stmt->bind_param("isis", $user_id, $item_name, $quantity, $total_price);

        // Insert each item from the session into the database
        foreach ($_SESSION['cart_items'] as $item) {
            $item_name = $item['name'];
            $quantity = $item['quantity'];
            $total_price = $item['price'] * $quantity;
            $stmt->execute();
        }

        // Close statement
        $stmt->close();

        // Clear the cart after placing the order
        unset($_SESSION['cart_items']);

        // Redirect to a confirmation page
        header("Location: order_confirmation.php");
        exit();
    } else {
        // If cart is empty, redirect back to shop page or show an error message
        header("Location: shop.php");
        exit();
    }
} else {
    // If someone tries to access this page directly without submitting the form, redirect to shop page
    header("Location: shop.php");
    exit();
}
?>

<!DOCTYPE html>
<html> 
<head>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
    <section class="header">
        <div class="container-shop">
            <div class="navbar-shop">
                <img src="img/logo.png" class="logo">
                <ul>
                    <li><a href="index.php">HOME</a></li>
                    <li><a href="shop.php">SHOP</a></li>
                    <li><a href="track_orders.php">TRACK ORDERS</a></li>
                    <li class="tooltip-container"><a href="login.php"><i class="fa-solid fa-user"></i><span class="tooltip">Sign In</span></a></li>
                </ul>
            </div>
        </div>
    </section>
    <div class="confirmation-message">
        <h1>Your order has been processed!</h1>
        <p>Thank you for shopping with us.</p>
        <a href="track_orders.php" class="btn">Track Orders</a>
    </div>
    <!----------footer--------->
    <footer>
        <section class="footer">
            <div class="container">
                <div class="footer-content">
                    <h3>Contact Us</h3>
                    <p>Email: techiemart@gmail.com</p>
                    <p>Phone: +0912-345-6789</p>
                    <p>Website: techiemart.com</p>
                </div>
                <div class="footer-content">
                    <h3>Quick Links</h3>
                    <ul class="list">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="#about-section" class="scroll-to">About</a></li>
                        <li><a href="shop.php">Products</a></li>
                        <li><a href="">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-content">
                    <h3>Follow Us</h3>
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="https://www.tiktok.com"><i class="fab fa-tiktok"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="bottom-bar">
                <p>&copy; 2024 TECHIEMART. All rights reserved</p>
            </div>
        </section>
    </footer>
</body>
</html>
