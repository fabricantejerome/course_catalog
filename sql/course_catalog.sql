-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2019 at 03:13 PM
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
-- Database: `course_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses_tbl`
--

DROP TABLE IF EXISTS `courses_tbl`;
CREATE TABLE IF NOT EXISTS `courses_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `title` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_tbl`
--

INSERT INTO `courses_tbl` (`id`, `code`, `title`, `created_at`) VALUES
(1, 'BSCS', 'BACHELOR OF SCIENCE IN COMPUTER SCIENCE 2018', '2019-01-28 14:59:44');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info_tbl`
--

INSERT INTO `personal_info_tbl` (`id`, `fullname`, `birthdate`, `gender`, `address`, `mobile`, `created_at`) VALUES
(1, 'Jerome Fabricante', '1992-12-22', 'Male', 'Block 4 Lot 24 Buklod Bahayan Tartaria Silang Cavite', '09272612690', '2018-07-24 01:28:18'),
(5, 'JUAN DELA CRUZ', '2018-07-25', 'Male', 'TARTARIA SILANG CAVITE', '(0932) 132-1321', '2018-07-28 15:29:58'),
(6, 'TEST', '1990-07-11', 'Male', 'TEST', '(1321) 321-3211', '2018-07-28 15:31:46'),
(7, 'TSET1', '2018-08-05', 'Male', 'TEST1', '(6546) 546-5465', '2018-08-05 08:48:28'),
(8, 'TEST TRY', '2019-01-15', 'Male', 'TRY', '(2132) 132-1321', '2019-01-23 13:07:03'),
(9, 'ADMINISTRATOR', '2019-01-26', 'Male', 'SILANG CAVITE', '(6546) 549-8798', '2019-01-26 12:53:53');

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
(2, 'Student', '2018-07-24 00:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_tbl`
--

DROP TABLE IF EXISTS `subjects_tbl`;
CREATE TABLE IF NOT EXISTS `subjects_tbl` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `units` int(11) NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `sem` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects_tbl`
--

INSERT INTO `subjects_tbl` (`id`, `code`, `title`, `units`, `year`, `sem`, `course_id`, `description`, `created_at`) VALUES
(1, 'GE1', 'Understanding The Self', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(2, 'GE2', 'Mathematics in The Modern World', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(3, 'GE3', 'Science Technology and Society', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(4, 'GE4', 'Purposive Communication', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(5, 'CC1', 'Introduction to Computing', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(6, 'CC2', 'Fundamentals of Programming (C/C++)', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(7, 'NSTP1', 'Civic Welfare Training Service', 3, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(8, 'PE1', 'Physical Fitness', 2, 1, 1, 1, NULL, '2019-01-28 14:59:45'),
(9, 'CC3', 'Intermediate Programming (Java PPL)', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(10, 'CC4', 'Data Structures and Algorithm', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(11, 'CC5', 'Information Management (RDBMS/MySQL)', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(12, 'PRC1', 'Discrete Structures 1', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(13, 'GE5', 'Arts Appreciation (HUM 1)', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(14, 'GE6', 'Readings in The Philippine History', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(15, 'NSTP2', 'Literacy Training Service', 3, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(16, 'PE2', 'Rhythmic Activities', 2, 1, 2, 1, NULL, '2019-01-28 14:59:45'),
(17, 'APC1', 'Web Development 1 (PHP/MYSQL)', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(18, 'PRC2', 'Design and Analysis of Algorithms', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(19, 'APC2', 'Taxation', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(20, 'AMSTAT', 'Probability and Statistics', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(21, 'PRC3', 'Operating Systems', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(22, 'FIL1', 'Komunikasyon sa Akademikong Pilipino', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(23, 'PRC4', 'Discrete Structures 2', 3, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(24, 'PE3', 'Individuals Sports', 2, 2, 1, 1, NULL, '2019-01-28 14:59:45'),
(25, 'PRC5', 'Computer Organization and Architecture', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(26, 'PRC6', 'Programming Languages (Design and Implementation)', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(27, 'GE7', 'Ethics', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(28, 'APC3', 'Web Development 2 (Codeigniter/Phalcon/NodeJS)', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(29, 'APC4', 'Technoprenuership', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(30, 'PRE1', 'Fundamentals of Accounting', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(31, 'FIL2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(32, 'PE4', 'Team Sports', 2, 2, 2, 1, NULL, '2019-01-28 14:59:45'),
(33, 'PRC7', 'Automata and Language Theory', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(34, 'PRC8', 'Software Engineering 1', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(35, 'PRC9', 'Object Oriented Programming (Adv. Java)', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(36, 'APC5', 'Methods of Research', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(37, 'PRC10', 'Networks and Communications', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(38, 'CC7', 'App Dev. and Emerging Tech (Mobile Base)', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(39, 'FIL3', 'Masining na Pagpapahayag', 3, 3, 1, 1, NULL, '2019-01-28 14:59:45'),
(40, 'PRC11', 'Software Engineering 2', 3, 3, 2, 1, NULL, '2019-01-28 14:59:45'),
(41, 'APC6', 'Social Issues and Professional Practice', 3, 3, 2, 1, NULL, '2019-01-28 14:59:45'),
(42, 'PRC12', 'Thesis Writing 1', 3, 3, 2, 1, NULL, '2019-01-28 14:59:45'),
(43, 'PRE2', 'Intelligent System (AI) with Python', 3, 3, 2, 1, NULL, '2019-01-28 14:59:45'),
(44, 'PRC13', 'Fundamentals of Human Computer Interaction', 3, 3, 2, 1, NULL, '2019-01-28 14:59:45'),
(45, 'PRC14', 'Thesis Writing 2', 3, 4, 1, 1, NULL, '2019-01-28 14:59:45'),
(46, 'PRE3', 'Graphics and Visual Computing (HCI)', 3, 4, 1, 1, NULL, '2019-01-28 14:59:45'),
(47, 'PRE4', 'Computational Science (Modeling Simulation)', 3, 4, 1, 1, NULL, '2019-01-28 14:59:45'),
(48, 'GE8', 'Life and Works of Rizal', 3, 4, 1, 1, NULL, '2019-01-28 14:59:45'),
(49, 'GE9', 'The Contemporary World', 3, 4, 1, 1, NULL, '2019-01-28 14:59:45'),
(50, 'PRC15', 'Internship/OJT/Practicum(Outside 200hrs/In School 50hrs)', 3, 4, 2, 1, NULL, '2019-01-28 14:59:45'),
(51, 'PRC16', 'Information Assurance and Security', 3, 4, 2, 1, NULL, '2019-01-28 14:59:45'),
(52, 'APC7', 'Foreign Language (Nihongo) CMO23 52010', 3, 4, 2, 1, NULL, '2019-01-28 14:59:45'),
(53, 'APC8', 'Seminar and Tours', 3, 4, 2, 1, NULL, '2019-01-28 14:59:45');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `username`, `password`, `email`, `p_id`, `b_id`, `created_at`) VALUES
(1, 'yo', 'yo', 'fabricantejerome@gmail.com', 1, 1, '2018-07-24 01:29:00'),
(2, 'juan', 'juan', 'juan@gmail.com', 5, 1, '2018-07-28 15:29:58'),
(3, 'test', 'test', 'test@gmail.com', 6, 1, '2018-07-28 15:31:46'),
(4, 'test1', 'test1', 'test1@gmail.com', 7, 1, '2018-08-05 08:48:28'),
(5, 'ya', 'ya', 'ya@gmail.com', 8, 0, '2019-01-23 13:07:03'),
(6, 'admin', 'admin', 'admin@gmail.com', 9, 0, '2019-01-26 12:53:53');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role_tbl`
--

INSERT INTO `user_role_tbl` (`id`, `user_id`, `role_id`, `created_at`) VALUES
(1, 1, 1, '2018-07-24 01:47:13'),
(2, 2, 1, '2018-07-28 15:29:58'),
(3, 3, 2, '2018-07-28 15:31:46'),
(4, 4, 2, '2018-08-05 08:48:28'),
(5, 5, 2, '2019-01-23 13:07:03'),
(6, 6, 1, '2019-01-26 12:53:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
