-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_statement`
--

CREATE TABLE `mini_statement` (
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mini_statement`
--

INSERT INTO `mini_statement` (`sender`, `receiver`, `amount`) VALUES
('yogendra', 'tanzeem', 100),
('tanzeem', 'satyesh', 60),
('tanzeem', 'yogendra', 13),
('tanzeem', 'ashwani', 2),
('tanzeem', 'yogendra', 1),
('tanzeem', 'yogendra', 122),
('tanzeem', 'yogendra', 500),
('yogendra', 'tanzeem', 221);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `amount`) VALUES
('tanzeem', 'khantanzeem999@gmail.com', 944),
('yogendra', 'yogi1234@gmail.com', 1106),
('ashwani','ashwani123@gmail.com', 802),
('farheen', 'farheen321@gmail.com', 3503),
('niharika', 'niharika222@gmail.com', 3450),
('satyesh', 'satya456@gmail.com', 3460),
('shivam', 'shivam123@gmail.com', 7000),
('saurabh', 'saurabh567@gmail.com', 4590),
('divyansh', 'adivyansh121@gmail.com', 4578),
('shrishti', 'shrishti123@gmail.com', 5678);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
