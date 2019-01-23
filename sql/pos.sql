-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2018 at 07:06 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch_tbl`
--

DROP TABLE IF EXISTS `branch_tbl`;
CREATE TABLE IF NOT EXISTS `branch_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_tbl`
--

INSERT INTO `branch_tbl` (`id`, `name`, `created_at`) VALUES
(1, 'Vista Mall', '2018-07-25 22:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

DROP TABLE IF EXISTS `category_tbl`;
CREATE TABLE IF NOT EXISTS `category_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`, `created_at`) VALUES
(3, 'HANDBAG', '2018-07-30 12:04:19'),
(4, 'WALLET', '2018-08-02 13:53:36'),
(7, 'BACKPACK', '2018-08-21 02:48:02'),
(8, 'SLINGBAG', '2018-08-21 02:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `items_tbl`
--

DROP TABLE IF EXISTS `items_tbl`;
CREATE TABLE IF NOT EXISTS `items_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_line` varchar(120) NOT NULL,
  `style_number` varchar(30) NOT NULL,
  `size` varchar(60) NOT NULL,
  `color` varchar(60) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_tbl`
--

INSERT INTO `items_tbl` (`id`, `product_line`, `style_number`, `size`, `color`, `quantity`, `price`, `barcode`, `category_id`, `created_at`, `updated_at`) VALUES
(50, 'MK MOTT LARGE NYLON DIAPER BACKPACK', '3058G0B3', 'W=15.5 X H= 13.5 X D=7', 'ADMIRAL/BLACK', 10, '398.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(49, 'MK VIV LARGE LEATHER BACKPAK', '30F6GVBB3L', 'W=11 X H= 8 X D=4.75', 'BLACK', 10, '398.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(48, 'MK RHEA MEDIUM LOGO BACKPACK', '30H6GEZB2V', 'W=11.5X H= 11.75 X D=4.5', 'BROWN', 10, '258.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(36, 'JET SET CARNATION SLIM WALLET', '#3258GFGD3I', 'W=7.5 X H= 3.25 X D=0.5', 'BEGONIA', 10, '98.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(37, 'MK FULTON LOGO CARRYALL WALLET', '#3257GFTE3B', 'W=7.75 X H= 4 X D=1.25', 'BROWN', 10, '148.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(38, 'MK JETSET LEATHER CHAIN WALLET', '#32F7GFDW6L', 'W=7.5 X H= 4.5 X D=2', 'SOFT PINK', 10, '98.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(39, 'MK MARCEL METALLIC LEATHER CHAIN', '#32F7MFDW6M', 'W=7.5 X H= 4.5 X D=3', 'PALE GOLD', 10, '98.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(40, 'JET SET LEATHER WALLET', '#3258GF6ZIL', 'W=4.5 X H= 3 X D=1', 'BLACK', 10, '58.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(41, 'MK JESSA SMALL LOGO ONVERTIBLE BACKPAK', '30T8GEVB5B', 'W=8 X H= 10 X D=4', 'ADMIRAL/PL BLUE', 10, '268.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(42, 'MK JET SET LOGO BACKPAK', '37H7LMNB3B', 'W=13 X H= 16 X D=7', 'BALTIC BLUE', 10, '398.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(43, 'MK KENT NYLON CARGO BACKPAK', '3358LKNB7C', 'W=14.25 X H= 15.5 X D=7', 'BLACK', 10, '248.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(44, 'MK EVIE MEDIUM LEATHER BACKPACK', '3058SZUB2L', 'W=12 X H= 13 X D=6.5', 'OPTIC WHITE', 10, '398.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(45, 'MK RHEA MEDIUM LEATHER BACKPACK', '3055GEZB1L', 'W=10 X H= 11.75 X D=4.5', 'SOFT PINK', 10, '298.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(46, 'MK RHEA MEDIUM BACKPACK', '3057GEZBIB', 'W=9.5 H= 12.5 X D=5', 'VANILLA', 10, '298.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(47, 'MK RHEA MINI LOGO BACKPACK', '3057GEZB1V', 'W=6.25 X H= 7.5 X D=2.75', 'BROWN', 10, '228.00', NULL, 7, '2018-08-21 03:02:46', '2018-08-21 03:02:46'),
(28, 'MICHAEL KORSS JET SET', '#35H6GYAE3L', 'LARGE', 'RED', 10, '178.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(29, 'MK ADELE LEATHER SMARTPHONE WRISTLET', '#32T7SAFW4L', 'LARGE', 'PEARL/GREY', 10, '108.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(30, 'MK ADELE PEBBLED  LEATHER SMARTPHONE WRISTLET', '#32T8TFDW4L', 'LARGE', 'TRUFFLE', 10, '108.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(31, 'MK MERCER LEATHER WRISTLET', '#32F6GM9W3L', 'W=9.75 X H= 5.5 X D=0.75', 'SOFT PINK', 10, '98.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(32, 'MK SET TRAVEL SMARTPHONE WRISTLET', '#32H4GTVE9L', 'LARGE W=7 X H= 4 X D=1', 'BRIGHT RED', 10, '75.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(33, 'MK MERCER TRI-FOLD LEATHER WALLET', '#32H6GM9F3L', 'W=7.13 H= 4 X D=0.75', 'ACORN', 10, '128.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(34, 'MK JET SET TRAVEL SLIM SAFFIANO LEATHER WALLET', '#32F3GTVE7L', 'W=7.75 X H= 4 X D=0.25', 'BLACK', 10, '128.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(35, 'MK JET SET IRIDESCENT LEATHER CONTINENTAL WALLET', '#32H7MEGE5K', 'W=8 X H= 4 X D=1', 'PALE GOLD', 10, '168.00', NULL, 4, '2018-08-15 13:07:35', '2018-08-15 13:07:35'),
(51, 'MK BROOKLYN LARGE METALLIC LEATHER SATCHEL', '30F7MBT3M', 'W=17 X H= 11 X D=5.5', 'PALE GOLD', 10, '498.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(52, 'MK EVIE LARGE LEATHER SHOULDER BAG', '3058SZMC3L', 'W=14.25X H= 12 X D=5', 'OPTIC WHITE', 10, '398.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(53, 'MK RAVEN LOGO SHOULDER BAG', '30H6GRXE3V', 'W=15 X H= 9.5 X D=4.5', 'BROWN', 10, '298.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(54, 'MK SAVANNAH COLOR-BLACK LOGO SATCHEL', '30H6GS7S8B', 'W=13 X H= 9.25 X D=4.5', 'BRN/ACORN', 10, '298.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(55, 'MK CYNTHIA SAFFIANO LEATHER SATCHEL', '30F7GCYS2L', 'W=12.25 X H= 9 X D=5.25', 'ULTRA PINK', 10, '298.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(56, 'MK SAVANNAH LARGE SAFFIANO LEATHER SATCHEL', '3056GS7S3L', 'W=14 H= 10 X D=6', 'ADMIRAL', 10, '298.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(57, 'MK MERCER EXTRA LARGE LEATHER TOTE ', '30H7GM9T4T', 'W=14  X H= 11 X D=6.25', 'BRIGHT RED', 10, '348.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(58, 'MK  MEDIUM SAFFIANO LEATHER TOP ZIP TOTE', '30T5GTVT2L', 'W=11.5 X H= 15 X D=5.5', 'LUGGAGE', 10, '298.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(59, 'MK JETSET TRAVEL SMALL LOGO TOTE', '30H6GTTT3V', 'W=15.5X H= 10.75 X D=5.25', 'BROWN', 10, '148.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39'),
(60, 'MK KELSEY MEDIUM NYLON TOTE', '30F7G02T2C', 'W=16 X H= 10.25 D=5.75', 'BLACK', 10, '108.00', NULL, 3, '2018-08-21 03:03:39', '2018-08-21 03:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info_tbl`
--

DROP TABLE IF EXISTS `personal_info_tbl`;
CREATE TABLE IF NOT EXISTS `personal_info_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(60) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info_tbl`
--

INSERT INTO `personal_info_tbl` (`id`, `fullname`, `birthdate`, `gender`, `address`, `mobile`, `created_at`) VALUES
(1, 'Jerome Fabricante', '1992-12-22', 'Male', 'Block 4 Lot 24 Buklod Bahayan Tartaria Silang Cavite', '09272612690', '2018-07-24 01:28:18'),
(5, 'JUAN DELA CRUZ', '2018-07-25', 'Male', 'TARTARIA SILANG CAVITE', '(0932) 132-1321', '2018-07-28 15:29:58'),
(6, 'TEST', '1990-07-11', 'Male', 'TEST', '(1321) 321-3211', '2018-07-28 15:31:46'),
(7, 'TSET1', '2018-08-05', 'Male', 'TEST1', '(6546) 546-5465', '2018-08-05 08:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles_tbl`
--

DROP TABLE IF EXISTS `roles_tbl`;
CREATE TABLE IF NOT EXISTS `roles_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_tbl`
--

INSERT INTO `roles_tbl` (`id`, `name`, `created_at`) VALUES
(1, 'Administrator', '2018-07-24 00:49:55'),
(2, 'Cashier', '2018-07-24 00:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item_tbl`
--

DROP TABLE IF EXISTS `transaction_item_tbl`;
CREATE TABLE IF NOT EXISTS `transaction_item_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `total` double(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_item_tbl`
--

INSERT INTO `transaction_item_tbl` (`id`, `trans_id`, `item_id`, `price`, `quantity`, `total`, `created_at`) VALUES
(1, 1, 40, 58.00, 2, 116.00, '2018-08-21 03:10:01'),
(2, 1, 29, 108.00, 4, 432.00, '2018-08-21 03:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tbl`
--

DROP TABLE IF EXISTS `transaction_tbl`;
CREATE TABLE IF NOT EXISTS `transaction_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `trans_total` double(8,2) NOT NULL,
  `cash` double(8,2) NOT NULL,
  `change` double(8,2) NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_tbl`
--

INSERT INTO `transaction_tbl` (`id`, `trans_total`, `cash`, `change`, `cashier_id`, `created_at`) VALUES
(1, 548.00, 600.00, 52.00, 1, '2018-08-21 03:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

DROP TABLE IF EXISTS `users_tbl`;
CREATE TABLE IF NOT EXISTS `users_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `username`, `password`, `email`, `p_id`, `b_id`, `created_at`) VALUES
(1, 'yo', 'yo', 'fabricantejerome@gmail.com', 1, 1, '2018-07-24 01:29:00'),
(2, 'juan', 'juan', 'juan@gmail.com', 5, 1, '2018-07-28 15:29:58'),
(3, 'test', 'test', 'test@gmail.com', 6, 1, '2018-07-28 15:31:46'),
(4, 'test1', 'test1', 'test1@gmail.com', 7, 1, '2018-08-05 08:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_tbl`
--

DROP TABLE IF EXISTS `user_role_tbl`;
CREATE TABLE IF NOT EXISTS `user_role_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role_tbl`
--

INSERT INTO `user_role_tbl` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 1, '2018-07-24 01:47:13'),
(2, 2, 1, '2018-07-28 15:29:58'),
(3, 3, 2, '2018-07-28 15:31:46'),
(4, 4, 2, '2018-08-05 08:48:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
