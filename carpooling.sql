-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 08:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpooling`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindetails`
--

CREATE TABLE `admindetails` (
  `id` varchar(25) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pw` varchar(40) NOT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `Answer` varchar(50) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Address1` varchar(50) NOT NULL,
  `Address2` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindetails`
--

INSERT INTO `admindetails` (`id`, `uname`, `pw`, `Question`, `Answer`, `Name`, `Mobile`, `Email`, `DOB`, `Address1`, `Address2`, `City`, `State`, `Country`) VALUES
('1', 'admin', 'b0aa651c991deca550252ed6cbba99ba', 'What is your favorite color?', 'red', 'Harsh Pawani', '8169220487', 'harshpawani66@gmail.com', '2000-07-04', 'panvel,', 'karnjade', 'Panvel', 'Maharashatra', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `carreport`
--

CREATE TABLE `carreport` (
  `SrNo` int(11) NOT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Number` int(50) DEFAULT NULL,
  `CarFrom` varchar(50) DEFAULT NULL,
  `CarTo` varchar(50) DEFAULT NULL,
  `DateFrom` date DEFAULT NULL,
  `DateTo` date DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Seats` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `pickup` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carreport`
--

INSERT INTO `carreport` (`SrNo`, `Owner`, `Company`, `Name`, `Number`, `CarFrom`, `CarTo`, `DateFrom`, `DateTo`, `city`, `type`, `Seats`, `Price`, `pickup`) VALUES
(1, 'harsh', 'TATA', 'Nano', 1345678999, 'Panvel', 'Vashi', '2020-09-10', '2020-09-30', 'Panvel', 'SUV', 4, 50, ''),
(3, 'harsh', 'Renault', 'Duster', 123456789, 'Panvel', 'Vashi', '2020-09-10', '2020-09-30', 'PANVEL', 'SUV', 4, 100, 'as per you'),
(5, 'harsh', 'Toyota', 'Corola', 1234658722, 'Panvel', 'Vashi', '2020-09-18', '2020-09-30', 'PANVEL', 'Sedan', 4, 100, 'karenjade, panvel ');

-- --------------------------------------------------------

--
-- Table structure for table `carsharereport`
--

CREATE TABLE `carsharereport` (
  `ID` int(11) NOT NULL,
  `CarName` varchar(50) NOT NULL,
  `SharingStart` date NOT NULL,
  `SharingEnd` date NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carsharereport`
--

INSERT INTO `carsharereport` (`ID`, `CarName`, `SharingStart`, `SharingEnd`, `Name`, `Mobile`, `Email`) VALUES
(1, 'Nano', '2020-08-01', '2020-09-01', 'Harsh Pawani', '8169220430', 'harsh@gmail.com'),
(25, 'Nano', '2020-09-10', '2020-09-30', 'Harsh Pawani', '8169220456', 'harshpawani66@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `edetails`
--

CREATE TABLE `edetails` (
  `EmpID` varchar(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Password2` varchar(50) NOT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `Answer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edetails`
--

INSERT INTO `edetails` (`EmpID`, `FirstName`, `LastName`, `Email`, `ContactNumber`, `Username`, `Password`, `Password2`, `Question`, `Answer`) VALUES
('101', 'Harsh', 'pawani', 'harshpawani66@gmail.com', '1214151243', 'harsh', 'b0aa651c991deca550252ed6cbba99ba', 'b0aa651c991deca550252ed6cbba99ba', 'What is your favorite color?', 'red'),
('102', 'John', 'Martin', 'johnm@gmail.com', '8169220426', 'johnm', 'c5fd3df817a6805f7288fcf5e96a4baf', 'c5fd3df817a6805f7288fcf5e96a4baf', 'What is your favorite color?', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `eid` varchar(10) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `Report` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`eid`, `email`, `Report`) VALUES
('101', 'harsh@gmail.com', 'hello i will shre the ride today.\r\nLooking forward to it'),
('102', 'harsh66@gmail.com', 'hi i will be sharing the ride and pay on reaching . \r\nthank you');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Sno` int(11) DEFAULT NULL,
  `Question` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`Sno`, `Question`) VALUES
(1, '--Select Question--'),
(2, 'What is your favorite color?'),
(3, 'What is your favorite car?'),
(4, 'What is name of your best friend?');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `EID` varchar(10) NOT NULL,
  `EName` varchar(20) DEFAULT NULL,
  `Department` varchar(15) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Contact` varchar(12) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `RouteFrom` varchar(30) DEFAULT NULL,
  `RouteTo` varchar(15) DEFAULT NULL,
  `Timings` varchar(15) DEFAULT NULL,
  `Driver ID` varchar(20) DEFAULT NULL,
  `Person` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`EID`, `EName`, `Department`, `Email`, `Contact`, `Address`, `RouteFrom`, `RouteTo`, `Timings`, `Driver ID`, `Person`) VALUES
('102', 'Rishi', 'HR', 'rishi@gmail.com', '5687982134', 'Panvel', 'Panvel', 'Mumbai', '11:00', '1', '1'),
('103', 'john', 'HR', 'john@gmail.com', '8794651245', '15165131.,ajasbkabd,knacjsdv sv', 'Panvel', 'Mumbai', '2:00 pm', '105', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindetails`
--
ALTER TABLE `admindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carreport`
--
ALTER TABLE `carreport`
  ADD PRIMARY KEY (`SrNo`);

--
-- Indexes for table `carsharereport`
--
ALTER TABLE `carsharereport`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `edetails`
--
ALTER TABLE `edetails`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`EID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carreport`
--
ALTER TABLE `carreport`
  MODIFY `SrNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carsharereport`
--
ALTER TABLE `carsharereport`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
