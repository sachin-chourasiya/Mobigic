-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 09:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ragistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`) VALUES
(1, 'C:\\fakepath\\Screenshot (3).png'),
(2, 'C:\\fakepath\\Screenshot (3).png'),
(3, 'C:\\fakepath\\Screenshot (1).png'),
(4, 'C:\\fakepath\\Screenshot (6).png'),
(5, 'C:\\fakepath\\Screenshot (8).png'),
(6, 'C:\\fakepath\\Screenshot (8).png'),
(7, 'C:\\fakepath\\Screenshot (1).png'),
(9, 'C:\\fakepath\\Screenshot (5).png'),
(10, 'C:\\fakepath\\Screenshot (5).png'),
(11, 'C:\\fakepath\\Screenshot (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `ragis`
--

CREATE TABLE `ragis` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ragis`
--

INSERT INTO `ragis` (`id`, `username`, `password`) VALUES
(1, 'sachin', '1234'),
(2, 'sachinchourasiya.c.1', '1234'),
(4, 'shivamshivsharma.112', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ragis`
--
ALTER TABLE `ragis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ragis`
--
ALTER TABLE `ragis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
