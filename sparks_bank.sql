-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 09:55 PM
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
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(8, 'Ramu Ray', 'Deep Kushal', 90000, '2023-04-08 18:08:56'),
(9, 'Neha Sharma', 'June Malia', 10000, '2023-04-08 14:55:43'),
(10, 'Priyanka Sen', 'Tista Aggarwal', 15000, '2023-04-08 14:58:55'),
(11, 'Aryan Raj', 'Nill Kumar', 25000, '2023-05-03 21:49:16'),
(12, 'Arko Sekh', 'Silpa Bose', 35000, '2023-05-15 20:41:06'),
(13, 'Ramu Ray', 'Arko Sekh', 45000, '2023-05-25 23:34:40'),
(14, 'June Malia', 'Silpa Bose', 55000, '2023-06-01 10:42:24'),
(15, 'Aryan Raj', 'Priyanka Sen', 25000, '2023-06-02 03:19:26'),
(16, 'Ramu Ray', 'Aryan Raj', 10000, '2023-06-03 00:25:22'),
(17, 'June Malia', 'Aryan Raj', 6000, '2023-06-03 00:29:06'),
(18, 'Tista Aggarwal', 'Arko Sekh', 270000, '2023-06-03 01:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(12344, 'Arko Sekh', 'arko223@gmail.com', 609990),
(12345, 'Aryan Raj', 'Aryan127@gmail.com', 321000),
(12346, 'Nill Kumar', 'nill789@gmail.com', 439900),
(12347, 'Priyanka Sen', 'priyanka12@gmail.com', 375000),
(12348, 'Silpa Bose', 'silpamod@gmail.com', 540000),
(12349, 'Ramu Ray', 'ramuramu@gmail.com', 600000),
(12350, 'Deep Kushal', 'deepa1298@gmail.com', 850000),
(12351, 'June Malia', 'sharmajune99@gmail.com', 790000),
(12352, 'Neha Sharma', 'nehadix88@gmail.com', 900000),
(12353, 'Tista Aggarwal', 'tista34@gmail.com', 630000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112354;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
