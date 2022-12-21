-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 07:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `s_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `desc_` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`s_no`, `name`, `age`, `gender`, `email`, `phone`, `desc_`, `time`) VALUES
(1, 'Aman Kumar', '21', 'male', 'aman@gmail.com', '9755510402', 'I am a pro coder', '2022-12-16 15:32:04'),
(2, 'kamal', '33', 'male', 'kamal@kgmail', '777', 'fdfasd', '2022-12-16 21:24:19'),
(3, 'kamal', '21', 'male', 'kamal@kgmail', '6265138294', 'fdfasd', '2022-12-21 11:17:54'),
(4, '', '', '', '', '', '', '2022-12-21 11:19:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
