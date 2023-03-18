-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2023 at 09:34 AM
-- Server version: 8.0.27
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `local_url` varchar(255) DEFAULT NULL,
  `remote_url` varchar(255) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `image`, `local_url`, `remote_url`, `description`, `start_date`, `status`) VALUES
(1, 'Ravensby', 'http://localhost/projects/ravensby/screenshot.jpg', 'http://localhost/wordpress12/wp-login.php', 'http://www.ravensby.com/', 'Bed and breakfast site in wordpress.', '2023-03-01 00:31:20', 'current'),
(2, 'Amber Salon v3', 'http://localhost/projects/amber/images/amber-header-logo-red.png', 'http://localhost/wordpress16/', 'https://www.ambersalon.co.uk/', 'Wordpress site for salon.', '2021-11-17 09:12:51', 'active'),
(3, 'Calista', 'http://localhost/projects/calista/screenshot.png', 'http://localhost/wordpress13/wp-login.php', 'https://www.calista.beauty/', 'Wordpress salon site.', '2021-12-15 09:23:21', 'complete'),
(4, 'Football Quotes', 'http://localhost/projects/footballquotes-site/screenshot.jpg', 'http://localhost/projects/footballquotes-site/', 'https://footballquotes.co.uk/', 'Football quotes site.', '2021-12-06 09:30:27', 'complete');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
