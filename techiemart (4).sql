-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 06:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(1, 'Iphone 13 Pink', 9999.00, 'http://localhost/website/img/iphone13apink.png', 2),
(2, 'Iphone 13 Blue', 6789.00, 'http://localhost/website/img/iphone13ablue.png', 1),
(3, 'Iphone 13 Pink', 9999.00, 'http://localhost/website/img/iphone13apink.png', 2),
(4, 'Iphone 13 Blue', 6789.00, 'http://localhost/website/img/iphone13ablue.png', 1),
(5, 'Iphone 13 Pink', 9999.00, 'http://localhost/website/img/iphone13apink.png', 2),
(6, 'Iphone 13 Blue', 6789.00, 'http://localhost/website/img/iphone13ablue.png', 1),
(7, 'Iphone 13 Pink', 9999.00, 'http://localhost/website/img/iphone13apink.png', 2),
(8, 'Iphone 13 Blue', 6789.00, 'http://localhost/website/img/iphone13ablue.png', 1),
(9, 'Vivo X100 Sunset Orange', 9899.00, 'http://localhost/website/img/vivox100sunsetorange.png', 1),
(10, 'Vivo V29 Himalayan Blue', 7899.00, 'http://localhost/website/img/vivov29himalayanblue.png', 1),
(11, 'Vivo X100 Chenye Black', 9999.00, 'http://localhost/website/img/vivox100chenyeblack.png', 1);

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
(22, 'Vivo X100 Sunset Orange', '9899.00', '186g, 7.5mm thickness\r\nAndroid 13, Funtouch 13\r\n128GB/256GB/512GB storage, no card slot', 10, 'vivox100sunsetorange.png'),
(23, 'iPhone 13 Red', '8999', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 15, 'iphone13ared.png'),
(24, 'iPhone 13 Green', '9089', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 8, 'iphone13agreen.png'),
(25, 'iPhone 14 Red', '8999', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 21, 'iphone14ared.png'),
(26, 'iPhone 14 Midnight', '8999', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 19, 'iphone14amidnight.png'),
(27, 'iPhone 14 Pro Purple', '8909', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 27, 'iphone14propurple.png'),
(28, 'iPhone 14 Pro Gold', '9909', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 19, 'iphone14progold.png'),
(30, 'iPhone 15 Pro Natural Titanium', '9999', '174g, 7.7mm thickness iOS 15, up to iOS 17.5.1 128GB/256GB/512GB storage, no card slot', 23, 'samsungfeat.png');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT '',
  `date_added` datetime DEFAULT current_timestamp(),
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` enum('Pending','Confirmed','Canceled') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `item_name`, `item_image`, `quantity`, `payment_method`, `date_added`, `total_price`, `status`) VALUES
(32, 2, 'Huawei Mate X3 Black', 'huaweimatex3black.png', 1, 'Credit Card', '2024-06-03 20:52:25', 7899.00, 'Canceled'),
(35, 8, 'Iphone 15 Pro White', 'iphone15prowhite.png', 2, 'Credit Card', '2024-06-03 20:59:35', 19778.00, 'Confirmed'),
(36, 8, 'Huawei P60 Pro Rococo Pearl ', 'huaweip60prorococopearl.png', 1, 'Credit Card', '2024-06-03 21:07:41', 8999.00, 'Canceled'),
(38, 2, 'Iphone 14 Purple', 'iphone14apurple.png', 1, 'Credit Card', '2024-06-03 21:15:08', 7899.00, 'Confirmed'),
(39, 2, 'Iphone 14 Yellow', 'iphone14ayellow.png', 1, 'Credit Card', '2024-06-03 21:15:08', 8999.00, 'Canceled'),
(40, 10, 'Vivo V29 Himalayan Blue', 'vivov29himalayanblue.png', 1, 'Credit Card', '2024-06-03 23:11:29', 7899.00, 'Confirmed'),
(41, 10, 'Vivo X100 Sunset Orange', 'vivox100sunsetorange.png', 2, 'Credit Card', '2024-06-03 23:11:29', 19798.00, 'Confirmed'),
(42, 11, 'Huawei P60 Pro Rococo Pearl ', 'huaweip60prorococopearl.png', 1, 'Credit Card', '2024-06-03 23:14:34', 8999.00, 'Canceled'),
(43, 11, 'Oppo Find X7 Ultra Blue', 'oppofindx7ultrablue.png', 1, 'Credit Card', '2024-06-03 23:14:34', 7899.00, 'Confirmed'),
(44, 11, 'Samsung ZFold Phantom Black', 'samsungzfoldphantomblack.png', 1, 'Credit Card', '2024-06-03 23:14:34', 8999.00, 'Canceled'),
(45, 11, 'Iphone 14 Yellow', 'iphone14ayellow.png', 1, 'Credit Card', '2024-06-03 23:14:34', 8999.00, 'Confirmed'),
(46, 11, 'Iphone 13 Pink', 'iphone13apink.png', 1, 'Credit Card', '2024-06-03 23:14:34', 9999.00, 'Confirmed'),
(47, 12, 'Samsung ZFold Phantom Black', 'samsungzfoldphantomblack.png', 1, 'Credit Card', '2024-06-03 23:36:09', 8999.00, 'Canceled'),
(48, 12, 'iPhone 14 Pro Gold', 'iphone14progold.png', 1, 'Credit Card', '2024-06-03 23:36:09', 9909.00, 'Confirmed'),
(49, 12, 'iPhone 14 Pro Purple', 'iphone14propurple.png', 1, 'Credit Card', '2024-06-03 23:36:09', 8909.00, 'Canceled'),
(50, 12, 'iPhone 15 Pro Natural Titanium', 'samsungfeat.png', 1, 'Credit Card', '2024-06-03 23:36:09', 9999.00, 'Canceled'),
(51, 9, 'iPhone 13 Red', 'iphone13ared.png', 1, 'Credit Card', '2024-06-04 00:10:28', 8999.00, 'Pending'),
(52, 13, 'iPhone 15 Pro Natural Titanium', 'samsungfeat.png', 1, 'Credit Card', '2024-06-04 00:12:19', 9999.00, 'Confirmed'),
(53, 13, 'iPhone 14 Pro Purple', 'iphone14propurple.png', 1, 'Credit Card', '2024-06-04 00:12:19', 8909.00, 'Confirmed'),
(54, 13, 'Samsung ZFlip 5 Blue', 'samsungzflip5blue.png', 1, 'Credit Card', '2024-06-04 00:12:19', 9999.00, 'Confirmed'),
(55, 13, 'Oppo Find N3 Gold', 'oppofindn3gold.png', 1, 'Credit Card', '2024-06-04 00:12:19', 6999.00, 'Confirmed'),
(56, 13, 'Huawei P60 Pro Black', 'huaweip60problack.png', 2, 'Credit Card', '2024-06-04 00:12:19', 15798.00, 'Confirmed'),
(57, 13, 'Huawei Mate X3 Black', 'huaweimatex3black.png', 1, 'Credit Card', '2024-06-04 00:12:19', 7899.00, 'Confirmed'),
(58, 8, 'Vivo X100 Sunset Orange', 'vivox100sunsetorange.png', 4, 'Credit Card', '2024-06-04 00:24:30', 39596.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
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
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`user_id`, `first_name`, `last_name`, `username`, `password`, `email`, `contact_num`, `address`, `date_added`, `user_status`, `user_type`) VALUES
(1, 'Mheg', 'Adra', 'Menggay', '$2y$10$e2qC5LwM1xbXw9aIPJ.bgutFuEfMpRabjhyjGHqeBPq4WtKfBwP4K', 'mhegadra@gmail.com', '09123456789', 'Sagpon Daraga Albay', '2024-06-03 08:10:07', 'A', 'C'),
(2, 'Luis', 'Sayago', 'Patrick', '$2y$10$NySCCSXWc/5SZlhWhdtFI.oO74GUDsjwt8yCr8a8.aajW2hfE80oC', 'luispatricksayago@gmail.com', '09123456789', '143 Sugcad Polangui Albay', '2024-06-03 08:28:08', 'A', 'C'),
(3, 'Shane ', 'De Los Santos', 'Shane', '$2y$10$v8GjO8HOzAw9U9kucV8zbeu5I6dBwYi6Sqg4qvkUAQXxW9Pf5s64G', 'shane@gmail.com', '09090909090', 'Tuburan Ligao City', '2024-06-03 09:31:42', 'A', 'C'),
(4, 'Mheg', 'Millare', 'Ming', '$2y$10$Jg5JLDQyElrRD3EtmCuem..IHDUeapyeMu5rfP44aqb8JOc4OHSb.', 'mheg@gmail.com', '09123456789', 'Sagpon Daraga Albay', '2024-06-03 10:12:53', 'A', 'C'),
(5, 'Luis Patrick', 'Sayago', 'patrick', '$2y$10$5EC1yEI5asYGevDAhpVpiuD/8p3506QBuw8wkFlgGWOwKA.f3FT.y', 'yoowi.sayago@gmail.com', '09177112383', 'Zone 2 Brgy Sugcad', '2024-06-03 13:42:33', 'A', 'C'),
(6, 'Aizel', 'Maquinana', 'Aiz', '$2y$10$QwRAbZwZBn/KRhhRaui.2utaU67Agmpjz1GFDtDmF5jBaVrfgj3Wq', 'aizel@gmail.com', '09123456789', 'Pilar Sorsogon', '2024-06-03 16:22:22', 'A', 'C'),
(7, 'Mikha', 'Lim', 'Miks', '$2y$10$sNWZCicdYnxNUklX7w.ph.kAdPoF.8M2TL8nzrKqJwS2mJru6zgFm', 'binimikha@gmail.com', '09123456789', 'Pasay City ', '2024-06-03 17:42:47', 'A', 'C'),
(8, 'Maloi', 'Guru', 'maloi', '$2y$10$43omjyOuteSSI/tg6gaxYOslxJCgBrmlnn91d3D8KSsLuHyshNUBi', 'maloiguru@gmail.com', '09487286571', 'Metro Manila', '2024-06-03 20:59:08', 'A', 'C'),
(9, 'sheena', 'libtong', 'binishe', '$2y$10$Cp7SKP14l5qzGNkNJpajz.OVUDq9LvQ7skaC/goOPyT8BqrcLspAa', 'sheenalibtong@gmail.com', '09836672890', 'Malolos Bulacan', '2024-06-03 21:25:23', 'A', 'C'),
(10, 'Djuni', 'David', 'djuni', '$2y$10$s.aQPpSQ2UtrIDYnHOo9KOii4gXTZPTis8d6uHUUnL2Ei98XtBDq6', 'djunidavid@gmail.com', '09177112383', 'Centro Pliar Sorsogon', '2024-06-03 23:10:55', 'A', 'C'),
(11, 'Raphael', 'Sayago', 'paeng', '$2y$10$r3oRH0wMo9TGOeNbSjDSAOH2pPf2/FsSFcfJAZ6OFsQKvPF2d5pIG', 'RaphaelKyleSayago@gmail.com', '09273937979', 'Zone 2 Brgy Sugcad', '2024-06-03 23:13:25', 'A', 'C'),
(12, 'Abby', 'Martin', 'abby', '$2y$10$vG2Cm/ivFR4HYjf6HXhIOuPo1J5vHvaXKSrj.IEReyFbrmBAwz./K', 'abbymartin@gmail.com', '09673451891', 'Basud Polangui Albay', '2024-06-03 23:35:33', 'A', 'C'),
(13, 'Sabrina', 'Capenter', 'meespresso', '$2y$10$8vL5Kbn.65SWsG0XjRiu4OmFDeYgM3boQK9Uql7G.4DwSBn3gKaua', 'SabrinaCarpenter@gmail.com', '09573537477', 'United States', '2024-06-04 00:11:29', 'A', 'C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
