<?php
include 'config.php';

session_start();

// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    http_response_code(403); // Forbidden
    exit("User not logged in");
}

// Get item details from POST request
$itemName = $_POST['name'];
$itemPrice = $_POST['price'];
$itemImage = $_POST['image'];
$userId = $_SESSION['user_id'];

// Prepare SQL statement
$sql = "INSERT INTO cart (user_id, item_name, item_price, item_image, quantity) VALUES (?, ?, ?, ?, 1)";

$stmt = $conn->prepare($sql);
if ($stmt) {
    $stmt->bind_param("isds", $userId, $itemName, $itemPrice, $itemImage);
    if ($stmt->execute()) {
        // Item added to cart successfully
        http_response_code(200);
        exit("Item added to cart successfully");
    } else {
        // Error executing SQL statement
        http_response_code(500); // Internal Server Error
        exit("Error adding item to cart: " . $conn->error);
    }
} else {
    // Error preparing SQL statement
    http_response_code(500); // Internal Server Error
    exit("Error preparing SQL statement: " . $conn->error);
}
?>
