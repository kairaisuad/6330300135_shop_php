-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 05:27 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 7, 1),
(20, 7, 2),
(21, 7, 3),
(22, 8, 1),
(23, 8, 2),
(24, 8, 3),
(25, 9, 1),
(26, 9, 2),
(27, 9, 3),
(28, 10, 1),
(29, 10, 2),
(30, 10, 3),
(31, 11, 1),
(32, 11, 2),
(33, 11, 3),
(34, 12, 1),
(35, 12, 2),
(36, 12, 3),
(37, 13, 1),
(38, 13, 2),
(39, 13, 3),
(40, 14, 1),
(41, 14, 2),
(42, 14, 3),
(43, 15, 1),
(44, 15, 2),
(45, 15, 3),
(46, 16, 1),
(47, 16, 2),
(48, 16, 3),
(49, 17, 46),
(50, 17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_date`, `fname`, `lname`, `address`, `mobile`) VALUES
(1, '2022-10-10 23:28:21', 'SAT', 'SAT', 'SAT', 'SAT'),
(2, '2022-10-10 23:35:09', 'x', 'x', 'x', 'xx'),
(3, '2022-10-10 23:36:34', 'x', 'x', 'x', 'xx'),
(4, '2022-10-10 23:36:51', 'x', 'x', 'x', 'xx'),
(5, '2022-10-10 23:36:55', 'x', 'x', 'x', 'xx'),
(6, '2022-10-10 23:36:56', 'x', 'x', 'x', 'xx'),
(7, '2022-10-10 23:43:58', 'x', 'x', 'x', 'xx'),
(8, '2022-10-10 23:43:59', 'x', 'x', 'x', 'xx'),
(9, '2022-10-10 23:44:33', 'x', 'x', 'x', 'xx'),
(10, '2022-10-10 23:46:02', 'x', 'x', 'x', 'xx'),
(11, '2022-10-10 23:46:48', 'x', 'x', 'x', 'xx'),
(12, '2022-10-10 23:48:38', 'x', 'x', 'x', 'xx'),
(13, '2022-10-10 23:51:22', 'x', 'x', 'x', 'xx'),
(14, '2022-10-10 23:52:40', 'x', 'x', 'x', 'xx'),
(15, '2022-10-10 23:52:50', 'x', 'x', 'x', 'xx'),
(16, '2022-10-10 23:53:05', 'x', 'x', 'x', 'xx'),
(17, '2022-10-10 23:54:06', 'ธัญญ์ภูวิศ', 'ธัญณัฐสิทธิ์', '39/148', '0642943987');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `pic` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `pic`) VALUES
(1, '1clubs', '1c', 10, 'AC.png'),
(2, '1diamonds', '1d', 20, 'AD.png'),
(3, '1hearts', '1h', 30, 'AH.png'),
(4, '1spades', '1s', 40, 'AS.png'),
(5, '2clubs', '2c', 50, '2C.png'),
(6, '2diamonds', '2d', 60, '2D.png'),
(7, '2hearts', '2h', 70, '2H.png'),
(8, '2spades', '2s', 80, '2S.png'),
(9, '3clubs', '3c', 90, '3C.png'),
(10, '3diamonds', '3d', 100, '3D.png'),
(11, '3hearts', '3h', 110, '3H.png'),
(12, '3spades', '3s', 120, '3S.png'),
(13, '4clubs', '4c', 130, '4C.png'),
(14, '4diamonds', '4d', 140, '4D.png'),
(15, '4hearts', '4h', 150, '4H.png'),
(16, '4spades', '4s', 160, '4S.png'),
(17, '5clubs', '5c', 170, '5C.png'),
(18, '5diamonds', '5d', 180, '5D.png'),
(19, '5hearts', '5h', 190, '5H.png'),
(20, '5spades', '5s', 200, '5S.png'),
(21, '6clubs', '6c', 210, '6C.png'),
(22, '6diamonds', '6d', 220, '6D.png'),
(23, '6hearts', '6h', 230, '6H.png'),
(24, '6spades', '6s', 240, '6S.png'),
(25, '7clubs', '7c', 250, '7C.png'),
(26, '7diamonds', '7d', 260, '7D.png'),
(27, '7hearts', '7h', 270, '7H.png'),
(28, '7spades', '7s', 280, '7S.png'),
(29, '8clubs', '8c', 290, '8C.png'),
(30, '8diamonds', '8d', 300, '8D.png'),
(31, '8hearts', '8h', 310, '8H.png'),
(32, '8spades', '8s', 320, '8S.png'),
(33, '9clubs', '9c', 330, '9C.png'),
(34, '9diamonds', '9d', 340, '9D.png'),
(35, '9hearts', '9h', 350, '9H.png'),
(36, '9spades', '9s', 360, '9S.png'),
(37, 'Tclubs', 'Tc', 370, 'TC.png'),
(38, 'Tdiamonds', 'Td', 380, 'TD.png'),
(39, 'Thearts', 'Th', 390, 'TH.png'),
(40, 'Tspades', 'Ts', 400, 'TS.png'),
(41, 'Jclubs', 'Jc', 410, 'JC.png'),
(42, 'Jdiamonds', 'Jd', 420, 'JD.png'),
(43, 'Jhearts', 'Jh', 430, 'JH.png'),
(44, 'Jspades', 'Js', 440, 'JS.png'),
(45, 'Qclubs', 'Qc', 450, 'QC.png'),
(46, 'Qdiamonds', 'Qd', 460, 'QD.png'),
(47, 'Qhearts', 'Qh', 470, 'QH.png'),
(48, 'Qspades', 'Qs', 480, 'QS.png'),
(49, 'Kclubs', 'Kc', 490, 'KC.png'),
(50, 'Kdiamonds', 'Kd', 500, 'KD.png'),
(51, 'Khearts', 'Kh', 510, 'KH.png'),
(52, 'Kspades', 'Ks', 520, 'KS.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
