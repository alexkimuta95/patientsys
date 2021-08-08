-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'juma', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'naliaka', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'njoro', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'caroline', 'mate', 'Female', 'caroline@gmail.com', '0768946252', 'kamau', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'naliaka', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'juma', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'alice', 'njoki', 'Female', 'alice@gmail.com', '8976897689', 'juma', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'gary', 'yegon', 'Male', 'gary@gmail.com', '0770897653', 'juma', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'juma', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'naliaka', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '0183619153', 'nkatha', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '0183619153', 'moha', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('ann', 'ann@gmail.com', '0796677554', 'Hey Admin'),
(' victoria', 'victoria@gmail.com', '0720778865', 'Good Job, Pal'),
('alicia', 'alicia@gmail.com', '0706888879', 'How can I reach you?'),
('alex', 'alex@gmail.com', '0756979967', 'Love your site'),
('lezan', 'lezan@gmail.com', '0779768978', 'Want some coffee?'),
('ariana', 'ariana@gmail.com', '0798989898', 'Good service'),
('kevin', 'kevin@gmail.com', '0779776868', 'Love your service'),
('asega', 'asega@gmail.com', '0787897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '0769869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('kamau', 'kamau123', 'kamau@gmail.com', 'General', 500),
('koech', 'koech123', 'koech@gmail.com', 'Cardiologist', 600),
('naliaka', 'naliaka123', 'naliaka@gmail.com', 'General', 700),
('juma', 'juma123', 'juma@gmail.com', 'Pediatrician', 550),
('nkatha', 'nkatha123', 'nkatha@gmail.com', 'Pediatrician', 800),
('njoro', 'njoro123', 'njoro@gmail.com', 'Cardiologist', 1000),
('mutua', 'mutua123', 'mutua@gmail.com', 'Neurologist', 1500),
('moha', 'moha123', 'moha@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'ian', 'kiio', 'Male', 'ian@gmail.com', '0776543210', 'ian123', 'ian123'),
(2, 'alice', 'njoki', 'Female', 'alice@gmail.com', '0776897689', 'alice123', 'alice123'),
(3, 'shadrack', 'ngetich', 'Male', 'shadrack@gmail.com', '0776898463', 'shadrack123', 'shadrack123'),
(4, 'keith', 'bundi', 'Male', 'keithbundi0@gmail.com', '0738489464', 'keith123', 'keith123'),
(5, 'gary', 'yegon', 'Male', 'gary@gmail.com', '0770897653', 'gary123', 'gary123'),
(6, 'stanley', 'sugut', 'Male', 'stanley@gmail.com', '0759986865', 'stanley123', 'stanley123'),
(7, 'nancy', 'mwai', 'Female', 'nancy@gmail.com', '0728972454', 'nancy123', 'nancy123'),
(8, 'ken', 'keter', 'Male', 'ken@gmail.com', '0709879868', 'ken123', 'ken123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '0783619153', 'william123', 'william123'),
(10, 'peter', 'ndolo', 'Male', 'peter@gmail.com', '0709362815', 'peter123', 'peter123'),
(11, 'susan', 'mengich', 'Female', 'susan@gmail.com', '0768946252', 'susan123', 'susan123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `refer`
--

CREATE TABLE `refer` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `comments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('naliaka', 4, 11, 'keith', 'bundi', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('juma', 2, 8, 'alicia', 'njoki', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('nkatha', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('moha', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
