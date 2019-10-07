-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2019 at 07:10 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amdemoapiphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `amorder`
--

CREATE TABLE `amorder` (
  `Order_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Product_amount` varchar(10) NOT NULL,
  `Order_price` varchar(10) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `User_tel` varchar(10) NOT NULL,
  `User_address` varchar(50) NOT NULL,
  `Order_date` datetime DEFAULT NULL,
  `OderSent_date` datetime DEFAULT NULL,
  `Oder_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amproduct`
--

CREATE TABLE `amproduct` (
  `Product_id` int(11) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Product_type` varchar(50) NOT NULL,
  `Product_price` varchar(10) NOT NULL,
  `Product_cost` int(10) NOT NULL,
  `Product_total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amstore`
--

CREATE TABLE `amstore` (
  `Store_id` int(11) NOT NULL,
  `User_id` varchar(50) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `Product_id` varchar(50) NOT NULL,
  `Product_name` int(50) NOT NULL,
  `Product_status` varchar(50) NOT NULL,
  `AddProductStore` datetime DEFAULT NULL,
  `EditProductStore` datetime DEFAULT NULL,
  `ClearProductStore` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `amuser`
--

CREATE TABLE `amuser` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(50) NOT NULL,
  `U_username` varchar(50) NOT NULL,
  `U_password` varchar(50) NOT NULL,
  `User_tel` int(10) NOT NULL,
  `User_level` varchar(50) NOT NULL,
  `User_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amorder`
--
ALTER TABLE `amorder`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `amproduct`
--
ALTER TABLE `amproduct`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `amstore`
--
ALTER TABLE `amstore`
  ADD PRIMARY KEY (`Store_id`);

--
-- Indexes for table `amuser`
--
ALTER TABLE `amuser`
  ADD PRIMARY KEY (`User_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
