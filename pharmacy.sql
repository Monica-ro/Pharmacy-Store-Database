-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2022 at 12:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `id` int(19) NOT NULL,
  `firstName` int(19) NOT NULL,
  `lastName` int(19) NOT NULL,
  `phoneNumber` int(19) NOT NULL,
  `hospitalID` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` int(19) NOT NULL,
  `name` varchar(19) NOT NULL,
  `dateOfManufacture` int(19) NOT NULL,
  `expirationDate` int(19) NOT NULL,
  `drugType` varchar(19) NOT NULL,
  `manufacturerID` int(19) NOT NULL,
  `manufacturingCost` int(19) NOT NULL,
  `description` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(19) NOT NULL,
  `name` varchar(19) NOT NULL,
  `address` varchar(590) NOT NULL,
  `city` varchar(19) NOT NULL,
  `state` varchar(19) NOT NULL,
  `zipcCode` int(19) NOT NULL,
  `phoneNumber` int(19) NOT NULL,
  `email` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Presecription`
--

CREATE TABLE `Presecription` (
  `rxNumber` int(19) NOT NULL,
  `consumerID` int(19) NOT NULL,
  `drugID` int(19) NOT NULL,
  `dateCreated` int(19) NOT NULL,
  `expirationDate` int(19) NOT NULL,
  `quantity` int(19) NOT NULL,
  `numberOfRefills` int(19) NOT NULL,
  `additionalInformation` varchar(500) NOT NULL,
  `doctorID` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD PRIMARY KEY (`rxNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
