-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 11:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techiemart`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `stock_available` int(11) NOT NULL,
  `item_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_description`, `stock_available`, `item_image`) VALUES
(1, 'Iphone 13 Blue', '6789.00', '174g, 7.7mm thickness\niOS 15, up to iOS 17.5.1\n128GB/256GB/512GB storage, no card slot', 5, 'iphone13ablue.png'),
(2, 'Iphone 13 Pink', '9999.00', '174g, 7.7mm thickness\r\niOS 15, up to iOS 17.5.1\r\n128GB/256GB/512GB storage, no card slot', 4, 'iphone13apink.png'),
(3, 'Iphone 14 Purple', '7899.00', '174g, 7.7mm thickness\r\niOS 15, up to iOS 17.5.1\r\n128GB/256GB/512GB storage, no card slot', 6, 'iphone14apurple.png'),
(4, 'Iphone 14 Yellow', '8999.00', '174g, 7.7mm thickness\r\niOS 15, up to iOS 17.5.1\r\n128GB/256GB/512GB storage, no card slot', 3, 'iphone14ayellow.png'),
(5, 'Iphone 15 Pro Black ', '9899.00', '174g, 7.7mm thickness\r\niOS 15, up to iOS 17.5.1\r\n128GB/256GB/512GB storage, no card slot', 10, 'iphone15problack.png'),
(6, 'Iphone 15 Pro White', '9889.00', '174g, 7.7mm thickness\r\niOS 15, up to iOS 17.5.1\r\n128GB/256GB/512GB storage, no card slot', 15, 'iphone15prowhite.png'),
(7, 'Huawei Mate X3 Black', '7899.00', '239g or 241g, 5.3mm thickness\r\nHarmony OS 3.1, EMUI 13.1\r\n256GB/512GB/1TB storage, NM', 7, 'huaweimatex3black.png'),
(8, 'Huawei Mate X3 Green', '7988.00', '239g or 241g, 5.3mm thickness\r\nHarmony OS 3.1, EMUI 13.1\r\n256GB/512GB/1TB storage, NM', 9, 'huaweimatex3green.png'),
(9, 'Huawei P60 Pro Black', '7899.00', '239g or 241g, 5.3mm thickness\r\nHarmony OS 3.1, EMUI 13.1\r\n256GB/512GB/1TB storage, NM', 5, 'huaweip60problack.png'),
(10, 'Huawei P60 Pro Rococo Pearl ', '8999.00', '239g or 241g, 5.3mm thickness\r\nHarmony OS 3.1, EMUI 13.1\r\n256GB/512GB/1TB storage, NM', 3, 'huaweip60prorococopearl.png'),
(11, 'Oppo Find N3 Black', '6788.00', '198g, 7.8mm thickness\r\nAndroid 13, up to Android 14, Color OS 14\r\n256GB/512GB storage, no card slot', 5, 'oppofindn3black.png'),
(12, 'Oppo Find N3 Gold', '6999.00', '198g, 7.8mm thickness\r\nAndroid 13, up to Android 14, Color OS 14\r\n256GB/512GB storage, no card slot', 5, 'oppofindn3gold.png'),
(13, 'Oppo Find X7 Ultra Black', '7999.00', '198g, 7.8mm thickness\r\nAndroid 13, up to Android 14, Color OS 14\r\n256GB/512GB storage, no card slot', 4, 'oppofindx7ultrablack.png'),
(14, 'Oppo Find X7 Ultra Blue', '7899.00', '198g, 7.8mm thickness\r\nAndroid 13, up to Android 14, Color OS 14\r\n256GB/512GB storage, no card slot', 5, 'oppofindx7ultrablue.png'),
(15, 'Samsung S24 Ultra Black', '7899.00', '232g or 233g, 8.6mm thickness\r\nAndroid 14, One UI 6.1.1\r\n256GB/512GB/1TB storage, no card slot', 5, 'samsungs24ultrablack.png'),
(16, 'Samsung s24 Ultra Purple', '7899.00', '232g or 233g, 8.6mm thickness\r\nAndroid 14, One UI 6.1.1\r\n256GB/512GB/1TB storage, no card slot', 5, 'samsungs24ultrapurple.png'),
(17, 'Samsung ZFlip 5 Blue', '9999.00', '232g or 233g, 8.6mm thickness\r\nAndroid 14, One UI 6.1.1\r\n256GB/512GB/1TB storage, no card slot', 10, 'samsungzflip5blue.png'),
(18, 'Samsung ZFold Phantom Black', '8999.00', '232g or 233g, 8.6mm thickness\r\nAndroid 14, One UI 6.1.1\r\n256GB/512GB/1TB storage, no card slot', 5, 'samsungzfoldphantomblack.png'),
(19, 'Vivo 29 Majestic Red ', '7899.00', '186g, 7.5mm thickness\r\nAndroid 13, Funtouch 13\r\n128GB/256GB/512GB storage, no card slot', 5, 'vivov29majesticred.png'),
(20, 'Vivo X100 Chenye Black', '9999.00', '186g, 7.5mm thickness\r\nAndroid 13, Funtouch 13\r\n128GB/256GB/512GB storage, no card slot', 10, 'vivox100chenyeblack.png'),
(21, 'Vivo V29 Himalayan Blue', '7899.00', '186g, 7.5mm thickness\r\nAndroid 13, Funtouch 13\r\n128GB/256GB/512GB storage, no card slot', 5, 'vivov29himalayanblue.png'),
(22, 'Vivo X100 Sunset Orange', '9899.00', '186g, 7.5mm thickness\r\nAndroid 13, Funtouch 13\r\n128GB/256GB/512GB storage, no card slot', 10, 'vivox100sunsetorange.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_num` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `user_status` char(1) NOT NULL DEFAULT 'A',
  `user_type` char(1) NOT NULL DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `password`, `email`, `contact_num`, `address`, `date_added`, `user_status`, `user_type`) VALUES
(1, 'Mheg', 'Adra', 'Menggay', '$2y$10$pZ8uQ4zh02WCde7YxXRTmOVB3f./9mDoDf6Dei3H8/ZnB5s3oiLHi', 'mhegamillare.adra@gmail.com', '', '', '2024-05-29 14:37:08', 'A', 'C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
