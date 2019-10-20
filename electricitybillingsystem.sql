-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 09:35 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `electricitybillingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` int(6) NOT NULL AUTO_INCREMENT,
  `adminusername` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `joinningdate` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `adminusername` (`adminusername`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `adminusername`, `password`, `joinningdate`, `salary`) VALUES
(1, 'eeeps', 'sRuXE9jyCA6WItHGMYlRaQ==', '2016-07-17', '2345');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bid` int(6) NOT NULL AUTO_INCREMENT,
  `cdid` int(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `previousreadings` int(6) NOT NULL DEFAULT '0',
  `currentreadings` int(6) NOT NULL,
  `units` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `payableamount` varchar(100) NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `cdid` (`cdid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bid`, `cdid`, `status`, `previousreadings`, `currentreadings`, `units`, `date`, `payableamount`) VALUES
(1, 1, 0, 0, 120, 120, '17/07/2016', '1200'),
(2, 1, 0, 120, 250, 0, '17/07/2016', ''),
(3, 1, 0, 250, 300, 50, '2016-07-19', '500'),
(4, 1, 0, 300, 350, 50, '2016-07-19', '500'),
(5, 3, 0, 0, 100, 0, '20/07/2016', ''),
(6, 3, 0, 100, 300, 200, '2016-07-20', '2000'),
(7, 3, 0, 300, 400, 100, '2016-07-20', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

CREATE TABLE IF NOT EXISTS `customerdata` (
  `cdid` int(6) NOT NULL AUTO_INCREMENT,
  `customername` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `joinningdate` varchar(100) NOT NULL,
  PRIMARY KEY (`cdid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`cdid`, `customername`, `address`, `phone`, `joinningdate`) VALUES
(1, 'deepa', 'old-baneshwor', '9841682836', '2016-07-17'),
(2, 'nabin', 'dallu', '9849003451', '17/07/2016'),
(3, 'bikram', 'maitidevi', '9849288948', '2016-07-20'),
(4, 'abc', 'ggh', '7678', '2016-07-20'),
(5, 'rami', 'bhaktapur', '982773273', '2016-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(6) NOT NULL AUTO_INCREMENT,
  `eusername` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `joinningdate` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `eusername`, `password`, `firstname`, `lastname`, `joinningdate`, `salary`) VALUES
(1, 'rami', 'r', 'rammi', 'das', '2016-07-17', '882993');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(6) NOT NULL,
  `bid` int(6) NOT NULL,
  `paidamount` varchar(100) NOT NULL,
  `dateoftransaction` varchar(100) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `eid` (`eid`),
  KEY `bid` (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`cdid`) REFERENCES `customerdata` (`cdid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `bill` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
