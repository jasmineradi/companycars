-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2025 at 01:19 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_fleet`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_cars`
--

DROP TABLE IF EXISTS `company_cars`;
CREATE TABLE IF NOT EXISTS `company_cars` (
  `license` varchar(10) DEFAULT NULL,
  `make` varchar(25) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mileage` float DEFAULT NULL,
  `model_year` smallint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_cars`
--

INSERT INTO `company_cars` (`license`, `make`, `model`, `mileage`, `model_year`) VALUES
('CK-0514', 'Toyota', 'Corolla', 3508.4, 2009),
('CK-5371', 'Toyota', 'Corolla', 3508.4, 2019),
('CK-5312', 'Chevrolet', 'Cobalt', 24829.4, 2016),
('CK-0450', 'Ford', 'Focus', 24829.4, 2017),
('CK-6314', 'Honda', 'Civic', 48891.1, 2018),
('CK-0219', 'Nissan', 'Sentra', 28336.7, 2017),
('CK-2153', 'Honda', 'Accord', 77484.4, 2015),
('CK-0111', 'Toyota', 'Camry', 855.5, 2020),
('CK-4095', 'Ford', 'Fusion', 95.9, 2020),
('CK-0144', 'Chevrolet', 'Malibu', 57024.2, 2016),
('CK-8434', 'Hyundai', 'Sonata', 62993.6, 2015),
('CK-1739', 'Nissan', 'Altima', 17398.3, 2018);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
