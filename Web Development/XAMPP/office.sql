-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 05:28 AM
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
-- Database: `office`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `WORKER_REF_ID` int(11) DEFAULT NULL,
  `BONUS_AMOUNT` int(10) DEFAULT NULL,
  `BONUS_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `WORKER_ID` int(11) NOT NULL,
  `FIRST_NAME` char(25) DEFAULT NULL,
  `LAST_NAME` char(25) DEFAULT NULL,
  `SALARY` int(15) DEFAULT NULL,
  `JOINING_DATE` datetime DEFAULT NULL,
  `DEPARTMENT` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`WORKER_ID`, `FIRST_NAME`, `LAST_NAME`, `SALARY`, `JOINING_DATE`, `DEPARTMENT`) VALUES
(1, 'Manjil', 'Khatri', 100000, '2013-02-20 09:00:00', 'HR'),
(2, 'Shiril', 'Mahatto', 100000, '2013-02-20 10:00:00', '25word xa tw'),
(3, 'Saurav', 'Koirala', 100000, '2013-02-20 11:00:00', 'hR'),
(4, 'John', 'Karki', 100000, '2013-02-20 12:00:00', 'hR'),
(5, 'Black', 'Adam', 100000, '2013-02-20 13:00:00', 'hR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD KEY `WORKER_REF_ID` (`WORKER_REF_ID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`WORKER_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bonus`
--
ALTER TABLE `bonus`
  ADD CONSTRAINT `bonus_ibfk_1` FOREIGN KEY (`WORKER_REF_ID`) REFERENCES `worker` (`WORKER_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
