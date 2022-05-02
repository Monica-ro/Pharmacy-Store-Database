-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2022 at 05:46 AM
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
  `PHONE_NUM` varchar(19) NOT NULL,
  `HOSPITAL_ID` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUM`, `HOSPITAL_ID`) VALUES
(1, 'Wade', 'Avery', '1-116-565-1167', 1),
(2, 'Payton', 'Lynn', '2-286-745-2270', 2),
(3, 'Rocco', 'Allington', '0-225-702-3610', 3),
(4, 'Stephanie', 'Redwood', '3-578-584-7264', 4),
(5, 'Enoch', 'Jarrett', '7-260-740-8421', 5),
(6, 'Charlotte', 'Lambert', '5-755-638-5008', 6),
(7, 'Rosie', 'Ainsworth', '0-400-234-3403', 7),
(8, 'Margot', 'Hobbs', '1-575-751-3080', 8),
(9, 'Moira', 'Ianson', '2-508-877-8106', 9),
(10, 'Janice', 'Shaw', '3-513-244-4220', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Drug`
--

CREATE TABLE `Drug` (
  `ID` int NOT NULL,
  `NAME` varchar(19) NOT NULL,
  `DATE_OF_MANUFACTURE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `DRUGTYPE` varchar(19) NOT NULL,
  `MANUFACTURER_ID` int(19) NOT NULL,
  `MANUFACTURING_COST` int(19) NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Drug`
--

INSERT INTO `Drug` (`ID`, `NAME`, `DATE_OF_MANUFACTURE`, `EXPIRATION_DATE`, `DRUGTYPE`, `MANUFACTURER_ID`, `MANUFACTURING_COST`, `DESCRIPTION`) VALUES
(13, 'Neproxane', '2021-10-04', '2022-11-25', 'OxyContin', 51795, 15, 'Best Relief for pain, fever, anxiety, cold'),
(15, 'Ibuprofen', '2020-10-04', '2023-10-04', 'Zoloft', 59354, 12, 'Best Relief for pain, fever, anxiety, cold'),
(16, 'Mexanone', '2021-10-04', '2022-11-25', 'Cosopt', 51795, 9, 'Best for burn, cold, flu, and allergies'),
(19, 'Micoglcium', '2020-10-04', '2024-10-04', 'Ibalgin', 59355, 8, 'Best for burn, cold, flu, and allergies'),
(21, 'Methoxyl500', '2021-10-04', '2024-10-04', 'Claritin', 64683, 16, 'Best for burn, cold, flu, and allergies');

-- --------------------------------------------------------

--
-- Table structure for table `Hospital`
--

CREATE TABLE `Hospital` (
  `ID` int NOT NULL,
  `NAME` varchar(19) NOT NULL,
  `ADDRESS` varchar(590) NOT NULL,
  `CITY` varchar(19) NOT NULL,
  `STATE` varchar(19) NOT NULL,
  `ZIPCODE` int(19) NOT NULL,
  `PHONE_NUM` int(19) NOT NULL,
  `EMAIL` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Hospital`
--

INSERT INTO `Hospital` (`ID`, `NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIPCODE`, `PHONE_NUM`, `EMAIL`) VALUES
(13, 'Carbon health', '28 N Almaden Ave #10', 'San Jose', 'CA', 95110, 1085161949, 'ucare@health.com'),
(15, 'SCV Medical Center', '761 E Santa Clara St', 'San Jose', 'CA', 95112, 1084161949, 'svc@health.com'),
(21, 'Regional Hospital', '225 N Jackson Ave', 'San Jose', 'CA', 95116, 156541554, 'RMC@med.com'),
(55, 'O\'Connor Hospital', '105 Forest Ave', 'San Jose', 'CA', 95128, 408256716, 'OC@hospital.com'),
(64, 'McKee Hospital', '2360 McKee Rd', 'San Jose', 'CA', 95116, 1664846515, 'MMC@health.com');

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
-- Dumping data for table `Presecription`
--

INSERT INTO `Presecription` (`RX_NUMBER`, `CONSUMER_ID`, `DRUG_ID`, `DATE_CREATED`, `EXPIRATION_DATE`, `QUANTITY`, `NUMBER_OF_REFILLS`, `ADDITIONAL_INFORMATION`, `DOCTOR_ID`) VALUES
(1520, 16, 19, '2021-07-07', '2023-07-07', 10, 4, '', 3),
(1521, 17, 16, '2021-07-07', '2025-07-07', 12, 5, '', 4),
(1522, 19, 15, '2020-07-07', '2025-05-07', 15, 4, '', 1),
(1523, 18, 16, '2021-07-07', '2024-07-07', 16, 8, '', 4),
(1525, 15, 15, '2021-07-07', '2022-07-07', 18, 5, '', 2);

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
-- Indexes for table `Drug`
--
ALTER TABLE `Drug`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Hospital`
--
ALTER TABLE `Hospital`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUM`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD PRIMARY KEY (`RX_NUMBER`),
  ADD KEY `DRUG_ID` (`DRUG_ID`),
  ADD KEY `DOCTOR_ID` (`DOCTOR_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Presecription`
--
ALTER TABLE `Presecription`
  ADD CONSTRAINT `DOCTOR_ID` FOREIGN KEY (`DOCTOR_ID`) REFERENCES `Doctor` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `DRUG_ID` FOREIGN KEY (`DRUG_ID`) REFERENCES `Drug` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
