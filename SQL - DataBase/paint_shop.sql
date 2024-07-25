-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 06:43 PM
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
-- Database: `paint_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2024-02-13 10:49:27'),
(9, 'smd', 'aef4bdc01c45a0f39a7f7dbca49c15bd', 'smd@gmail.com', 'QMZR92', '2024-02-13 10:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(11) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 55, 'True Blue', 'Blue is versatile and easily schemed with other colors for your interior or exterior space.', 1750.00, 'B1.png'),
(20, 55, 'Royal Blue', 'In its many shades and tones, orange can radiate warmth and energy, while being stimulating and thought-provoking.', 1560.00, 'B2.png'),
(21, 56, 'Solid Green', 'The many shades of browns are perfect to help your home feel like a peaceful, secure sanctuary.', 1470.00, 'G1.png'),
(22, 56, 'Bright Green', 'Reds are perfect for adding a sense of drama to any space.', 1390.00, 'G2.png'),
(23, 57, 'Golden Yellow', 'Green is very versatile, and can feel either warm or cool, perfect for interior and exterior spaces.', 1780.00, 'Y1.png'),
(24, 57, 'Lemon Yellow', 'Yellows are vibrant and reflective and can create a happy and bright environment.', 1350.00, 'Y2.webp'),
(25, 59, 'Light Red', 'Purples and pinks can help create a dramatic mood as a hallway or entry color, especially in the\r\ndarker tones.', 1150.00, 'R1.jpg'),
(26, 59, 'Scarlet Ribbons', 'Luminous, fresh, natural and light; white makes up some of Australia\'s most loved color choices.', 1120.00, 'R2.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `des` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`rs_id`, `c_id`, `title`, `des`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(55, 14, 'Blue', 'Blue is versatile and easily schemed with other colors for your interior or exterior space.', '0372259874', 'www.vividflow.lk', '8.30am', '6.00pm', 'Every day open without Poya day.', 'Colpetty', 'Blue.webp', '2024-02-18 16:31:54'),
(56, 12, 'Green', 'Green is very versatile, and can feel either warm or cool, perfect for interior and exterior spaces.', '037569874586', 'vividflow.lk', '8.30 am', '6.00 pm', 'Every day open without Poya day', 'Colpetty', 'Green.webp', '2024-02-18 16:36:54'),
(57, 13, 'Yellow', 'Yellows are vibrant and reflective and can create a happy and bright environment.', '0372564875', 'whitesmoke.lk', '8.30 am', '6.00 pm', '24hr-x7', 'Copetty', 'Yellow.webp', '2024-02-18 16:37:51'),
(58, 15, 'Pink', 'Purples and pinks can help create a dramatic mood as a hallway or entry color, especially in the\r\ndarker tones.', '0256985246', 'www.vividflow.lk', '8.30am', '6.00pm', 'Every day open without Poya day', 'Colpetty', 'Pink.webp', '2024-02-18 16:38:19'),
(59, 16, 'Red', 'Reds are perfect for adding a sense of drama to any space.', '04569865426', 'www.vividflow.lk', '8.30 am', '6.00pm', '24hr-x7', 'Colpetty', 'Red.webp', '2024-02-18 16:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(72, 41, 'in process', 'on the way!', '2021-03-18 23:27:44'),
(73, 43, 'in process', 'Done', '2024-02-18 17:53:56'),
(74, 43, 'in process', 'ok', '2024-02-18 17:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'SeaFood', '2024-02-13 10:49:28'),
(13, 'Grill', '2024-02-13 10:49:28'),
(14, 'Pastry', '2024-02-13 10:49:28'),
(15, 'SoupSalad', '2024-02-13 10:49:28'),
(16, 'Beverages', '2024-02-13 10:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(36, 'Peshala', 'Rasadi', '', 'peshala@gmail.com', '0719681241', 'bcbc93a39ba88bd1e21b10005f659eb5', 'up town, kalutra.', 1, '2024-02-13 10:49:28'),
(39, 'prasari', 'Peshala', 'Rasari', 'kdprasarinilmini421@gmail.com', '0766832243', '73be4cf12bfff927c81ac0cb9c2e61df', 'No:77, Welithduwa waththa, Gamagoda, Kalutara South', 1, '2024-02-18 11:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(43, 39, 'Golden Yellow', 1, 1780.00, 'in process', '2024-02-18 17:53:56'),
(44, 39, 'Lemon Yellow', 8, 1350.00, NULL, '2024-02-18 17:01:54'),
(45, 39, 'Golden Yellow', 1, 1780.00, NULL, '2024-02-18 17:04:51'),
(46, 39, 'Lemon Yellow', 8, 1350.00, NULL, '2024-02-18 17:04:51'),
(47, 39, 'True Blue', 1, 1750.00, NULL, '2024-02-19 02:16:54'),
(48, 39, 'Solid Green', 2, 1470.00, NULL, '2024-02-19 04:42:45'),
(49, 39, 'Bright Green', 1, 1390.00, NULL, '2024-02-19 04:42:45'),
(50, 39, 'Solid Green', 1, 1470.00, NULL, '2024-02-25 16:46:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
