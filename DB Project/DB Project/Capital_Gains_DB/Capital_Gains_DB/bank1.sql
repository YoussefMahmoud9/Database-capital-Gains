-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 07:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank1`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acnumber` varchar(16) NOT NULL,
  `custssn` varchar(14) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `balance` decimal(13,2) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acnumber`, `custssn`, `type`, `balance`, `username`, `password`, `bid`, `email`) VALUES
('0166726334417192', '17042655458275', 'Saving', '100000.00', 'ahmed55', '91325382', 1, 'ahmed55@gmail.com'),
('1681242233828462', '12345678123456', 'Saving', '9990000.00', 'eljoe', '18361968', 1, 'joe@gmail.com'),
('3009652375563657', '00406737365240', 'Saving', '9000000.00', 'kh.moh', '92747092', 2, 'kh.moh@gmail.com'),
('4247243956087836', '64378304680857', 'Checking', '500000.00', 'saif12', '77043637', 1, 'saif12@gmail.com'),
('5368736860935344', '92888380703487', 'Checking', '5053000.00', 'reff', '77474366', 2, 'reff@gmail.com'),
('7782043030938772', '01531585348602', 'Checking', '500000.00', 'm.sayed', '01584862', 2, 'm.sayed@gmail.com'),
('8252490888308862', '85625712383524', 'Saving', '150000.00', 'faroo', '85912062', 2, 'faroo@gmail.com'),
('9678912319346307', '11550457037061', 'Saving', '9000000.00', 'khalouda', '86903705', 1, 'khalouda@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bid` int(11) NOT NULL,
  `baddress` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bid`, `baddress`) VALUES
(1, 'Alexandria'),
(2, 'Cairo');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custssn` varchar(14) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custssn`, `fname`, `lname`, `address`, `dob`) VALUES
('00406737365240', 'Khaled', 'Mohamed', 'Gleem', '2012-07-06'),
('01531585348602', 'Mohamed', 'Sayed', 'Giza', '1999-08-09'),
('11550457037061', 'Khaled', 'Adel', 'Mohandseen', '2002-08-07'),
('12345678123456', 'Youssef', 'Mahmoud', 'Loran', '2000-10-28'),
('17042655458275', 'Ahmed', 'Adel', 'Loran', '2000-05-05'),
('64378304680857', 'Saif', 'Swelam', 'Smouha', '2001-06-06'),
('85625712383524', 'Farouk', 'Omar', 'Giza', '1988-08-07'),
('92888380703487', 'Ahmed', 'Refaat', 'Smouha', '1788-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phone_numbers`
--

CREATE TABLE `customer_phone_numbers` (
  `custssn` varchar(14) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_phone_numbers`
--

INSERT INTO `customer_phone_numbers` (`custssn`, `number`) VALUES
('17042655458275', 1426409319),
('17042655458275', 1516501972),
('64378304680857', 1750373709),
('64378304680857', 1608001850),
('92888380703487', 1506347556),
('92888380703487', 1154363495),
('92888380703487', 1395065853),
('01531585348602', 1445536899);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empssn` varchar(14) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `ltname` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `salary` float(7,2) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `supervisorssn` varchar(14) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empssn`, `fname`, `ltname`, `address`, `dob`, `salary`, `speciality`, `supervisorssn`, `bid`) VALUES
('12121212121212', 'Hoda', 'Mahmoud', 'Roushdy', '1995-10-08', 3000.00, 'IT', '12345678123456', 1),
('12341234123412', 'Bahaa', 'Ayman', 'Gleem', '1998-05-04', 2000.00, 'IT', '87654321876543', 2),
('12345678123456', 'Youssef', 'Mahmoud', 'Loran', '2000-10-28', 50000.00, 'Manager', NULL, 1),
('45454545454545', 'Youssef', 'Ahmed', 'Smouha', '1995-10-08', 3000.00, 'Sales', '12345678123456', 1),
('56785678567856', 'Mohamed', 'Saied', 'Smouha', '1995-08-06', 5000.00, 'Sales', '87654321876543', 2),
('87654321876543', 'Yahia', 'Khaled', 'Mahrousa', '2001-06-27', 50000.00, 'Manager', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `custssn` varchar(14) NOT NULL,
  `bid` int(11) NOT NULL,
  `loan_amount` decimal(13,2) DEFAULT NULL,
  `loan_type` varchar(30) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `interest` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`custssn`, `bid`, `loan_amount`, `loan_type`, `startdate`, `enddate`, `interest`) VALUES
('01531585348602', 1, '50000.00', 'Personal Loan', '2023-01-01', '2024-01-01', '10%'),
('01531585348602', 2, '40000.00', 'Student Loan', '2023-01-01', '2025-01-01', '15%'),
('17042655458275', 1, '10000.00', 'Personal Loan', '2023-01-01', '2026-01-01', '12%'),
('64378304680857', 1, '20000.00', 'Student Loan', '2023-06-01', '2024-06-01', '20%'),
('92888380703487', 2, '30000.00', 'Small business Loan', '2023-01-01', '2023-07-01', '16%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`acnumber`),
  ADD KEY `account_bid_fk` (`bid`),
  ADD KEY `account_custssn_fk` (`custssn`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custssn`);

--
-- Indexes for table `customer_phone_numbers`
--
ALTER TABLE `customer_phone_numbers`
  ADD KEY `phone_custssn_fk` (`custssn`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empssn`),
  ADD KEY `emp_bid_fk` (`bid`),
  ADD KEY `supervisor_selfkey` (`supervisorssn`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`custssn`,`bid`),
  ADD KEY `loan_bid_fk` (`bid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_bid_fk` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  ADD CONSTRAINT `account_custssn_fk` FOREIGN KEY (`custssn`) REFERENCES `customer` (`custssn`);

--
-- Constraints for table `customer_phone_numbers`
--
ALTER TABLE `customer_phone_numbers`
  ADD CONSTRAINT `phone_custssn_fk` FOREIGN KEY (`custssn`) REFERENCES `customer` (`custssn`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `emp_bid_fk` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  ADD CONSTRAINT `supervisor_selfkey` FOREIGN KEY (`supervisorssn`) REFERENCES `employee` (`empssn`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_bid_fk` FOREIGN KEY (`bid`) REFERENCES `branch` (`bid`),
  ADD CONSTRAINT `loan_custssn_fk` FOREIGN KEY (`custssn`) REFERENCES `customer` (`custssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
