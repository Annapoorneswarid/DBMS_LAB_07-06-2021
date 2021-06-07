-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 12:12 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_lab_7/6/21`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientmaster`
--

CREATE TABLE `clientmaster` (
  `client_no` int(11) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientmaster`
--

INSERT INTO `clientmaster` (`client_no`, `cname`, `city`) VALUES
(101, 'senchu', 'kannur'),
(102, 'sobin', 'kannur'),
(103, 'sajan', 'mumbai'),
(104, 'siju', 'gujarath'),
(105, 'george', 'kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `salesmaster`
--

CREATE TABLE `salesmaster` (
  `salesmanno` int(11) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesmaster`
--

INSERT INTO `salesmaster` (`salesmanno`, `sname`, `city`) VALUES
(1, 'biju', 'mumbai'),
(2, 'amith', 'mumbai'),
(3, 'sreelal', 'kannur'),
(4, 'anoop', 'thrissur'),
(5, 'goutham', 'pala');

-- --------------------------------------------------------

--
-- Table structure for table `salesorder`
--

CREATE TABLE `salesorder` (
  `order_no` int(11) NOT NULL,
  `client_no` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesorder`
--

INSERT INTO `salesorder` (`order_no`, `client_no`, `order_date`) VALUES
(0, 101, '2013-06-01'),
(1, 103, '2013-02-01'),
(2, 103, '2013-03-21'),
(3, 102, '2013-03-02'),
(4, 105, '2013-04-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientmaster`
--
ALTER TABLE `clientmaster`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `salesmaster`
--
ALTER TABLE `salesmaster`
  ADD PRIMARY KEY (`salesmanno`);

--
-- Indexes for table `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`order_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
