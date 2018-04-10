-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2017 at 01:48 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Username` varchar(30) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `CID` int(5) NOT NULL,
  `DID` int(5) NOT NULL,
  `DOV` date NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Username`, `Fname`, `Gender`, `CID`, `DID`, `DOV`, `Timestamp`, `Status`) VALUES
('girish03', 'Saumil Waghela', 'male', 1, 1, '2017-10-04', '2017-10-03 08:16:43', 'Cancelled'),
('om0125', 'Girish', 'male', 1, 1, '2017-09-27', '2017-10-03 11:45:41', 'Checked '),
('girish03', 'Pranay', 'male', 1, 1, '2017-11-06', '2017-11-03 05:41:09', 'Cancelled by Patient'),
('girish03', 'Saumil Waghela', 'male', 2, 3, '2017-11-06', '2017-11-05 10:28:40', 'Cancelled by Patient');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `town` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `mid` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`cid`, `name`, `address`, `town`, `city`, `contact`, `mid`) VALUES
(1, 'DentoCare ', '12B, Marol Naka', 'Andheri', 'Mumbai', 8484568564, 0),
(2, 'ConfiDental', '1,Aster Towers', 'Nalasopara', 'Palghar', 8564578456, 0),
(3, 'Smile Studio', '23A, Lotus Heights', 'CSMT', 'Mumbai', 7894127854, 0),
(4, 'Smile Statement', '24, Vini Heights', 'Nerul', 'Navi Mumbai', 9845784987, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `experience` int(11) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`did`, `name`, `gender`, `dob`, `experience`, `specialization`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Bhavesh Acharya', 'male', '1963-03-30', 3, 'Orthodontist', 8446356355, 'B-101, Lotus Residences, Saki Naka, Andheri', 'bhavesh01', 'bh0130', 'mumbai'),
(2, 'Arun Prabhu', 'male', '1975-02-03', 10, 'Orthodontist', 4547845558, '4, Lotus Heights, Marol Naka', 'arun123', 'arun123', 'Mumbai'),
(3, 'Sushil Prasad', 'male', '1982-11-04', 5, 'MD', 7897897897, '101 B, Aster Tower, Nalasopara', 'sushil123', 'sushil123', 'Palghar');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_availability`
--

CREATE TABLE `doctor_availability` (
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_availability`
--

INSERT INTO `doctor_availability` (`cid`, `did`, `day`, `starttime`, `endtime`) VALUES
(1, 1, 'Monday', '14:00:00', '20:00:00'),
(1, 1, 'Tueday', '14:00:00', '20:00:00'),
(1, 1, 'Wednesday', '14:00:00', '20:00:00'),
(1, 2, 'Friday', '14:00:00', '20:00:00'),
(1, 2, 'Monday', '14:00:00', '20:00:00'),
(1, 2, 'Thursday', '14:00:00', '20:00:00'),
(2, 3, 'Monday', '13:00:00', '17:00:00'),
(2, 3, 'Tueday', '13:00:00', '17:00:00'),
(2, 3, 'Wednesday', '13:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mid`, `name`, `gender`, `dob`, `contact`, `address`, `username`, `password`, `region`) VALUES
(1, 'Omkar Pawar', 'male', '1980-06-25', 9145095767, 'A-1, Kurukshetra Heights, Near Petrol Pump, Malad W', 'omkar01', 'om0125', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `manager_clinic`
--

CREATE TABLE `manager_clinic` (
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_clinic`
--

INSERT INTO `manager_clinic` (`cid`, `mid`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `gender`, `dob`, `contact`, `email`, `username`, `password`) VALUES
('Girish Saraf', 'male', '1998-02-03', 8446356355, 'girishsaraf03@gmail.com', 'girish03', 'girish03'),
('Saumil Waghela', 'male', '1997-05-04', 8458457894, 'saumilwaghela@gmail.com', 'saumil04', 'saumil04'),
('KK', 'male', '1997-02-04', 7894578944, 'kk@gmail.com', 'kk04', 'kk04'),
('karan', 'male', '1997-03-02', 7878978979, 'kj@s.edu', 'kj123', 'kj123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_availability`
--
ALTER TABLE `doctor_availability`
  ADD PRIMARY KEY (`cid`,`did`,`day`,`starttime`,`endtime`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
