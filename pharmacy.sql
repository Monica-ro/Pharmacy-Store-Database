-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2022 at 01:36 AM
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
  `ID` int NOT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `PHONE_NUM` int(19) NOT NULL,
  `HOSPITAL_ID` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `ID` int NOT NULL,
  `NAME` varchar(19) NOT NULL,
  `DATE_OF_MANUFACTURE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `DRUGTYPE` varchar(19) NOT NULL,
  `MANUFACTURER_ID` int(19) NOT NULL,
  `MANUFACTURING_COST` int(19) NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `ID` int NOT NULL,
  `NAME` varchar(19) NOT NULL,
  `ADDRESS` varchar(590) NOT NULL,
  `CITY` varchar(19) NOT NULL,
  `STATE` varchar(19) NOT NULL,
  `ZIPCODE` int(19) NOT NULL,
  `PHONE_NUMBER` int(19) NOT NULL,
  `EMAIL` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Presecription`
--

CREATE TABLE `Presecription` (
  `RX_NUMBER` int(19) NOT NULL,
  `CONSUMER_ID` int(19) NOT NULL,
  `DRUG_ID` int(19) NOT NULL,
  `DATE_CREATED` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `QUANTITY` int(19) NOT NULL,
  `NUMBER_OF_REFILLS` int(19) NOT NULL,
  `ADDITIONAL_INFORMATION` varchar(500) NOT NULL,
  `DOCTOR_ID` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PHONE_NUM` (`PHONE_NUM`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD PRIMARY KEY (`RX_NUMBER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
