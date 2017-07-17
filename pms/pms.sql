-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2016 at 08:08 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `pms_admin`
--

CREATE TABLE IF NOT EXISTS `pms_admin` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pms_admin`
--

INSERT INTO `pms_admin` (`doc_id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `pms_app`
--

CREATE TABLE IF NOT EXISTS `pms_app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(50) NOT NULL,
  `d_id` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `date` varchar(120) NOT NULL,
  `encoder` varchar(50) NOT NULL,
  `datead` datetime NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `pms_app`
--

INSERT INTO `pms_app` (`app_id`, `p_id`, `d_id`, `time`, `date`, `encoder`, `datead`) VALUES
(12, 'P14-1404409178', 'D13-1404409232', '08:00:00', '2-02-1988', 'WW', '2014-07-03 19:36:11'),
(13, 'P14-1404411425', 'D13-1404408965', '07:30:00', '3-02-1954', '85221022', '2014-07-03 19:36:49'),
(14, 'P14-1404409178', 'D13-1404412249', '08:00:00', '2-02-1951', 'Somnath', '2014-07-03 19:35:49'),
(15, 'P14-1404409178', 'D13-1404411334', '09:00:00', '3-01-2012', 'Avjit', '2014-07-03 20:16:56'),
(16, 'P14-1468850946', 'D13-1404411334', '09:30:00', '18-07-2016', '123', '2016-07-18 14:13:01'),
(17, 'P14-1469270449', 'D13-1469270324', '00:00:00', '00-00-YY', '110', '2016-07-23 10:42:25'),
(18, 'P14-1404409178', 'D13-1469270324', '00:00:00', '00-00-YY', 'ssssssss', '2016-07-27 10:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `pms_doctor`
--

CREATE TABLE IF NOT EXISTS `pms_doctor` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mi` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `brgy` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `postal` int(10) NOT NULL,
  `remark` text NOT NULL,
  `datead` datetime NOT NULL,
  PRIMARY KEY (`count_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pms_doctor`
--

INSERT INTO `pms_doctor` (`count_id`, `d_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(23, 'D13-1469270324', 'Ammy', 'SHARMA', '', 28, 'Male', 'Single', '0000-00-00', '', '', '', 0, '', '2016-07-23 10:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `pms_patient`
--

CREATE TABLE IF NOT EXISTS `pms_patient` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `mi` varchar(50) NOT NULL,
  `age` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `brgy` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `prov` varchar(100) NOT NULL,
  `postal` int(10) NOT NULL,
  `remark` text NOT NULL,
  `datead` datetime NOT NULL,
  PRIMARY KEY (`count_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pms_patient`
--

INSERT INTO `pms_patient` (`count_id`, `p_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(9, 'P14-1404411425', 'Aparajita Sarkar', 'SARKAR', '', 59, 'Female', 'Married', '1955-02-02', '2a/1', 'Uttarpara', 'EE', 7122232, 'Best Doctor!', '2014-07-03 20:17:43'),
(8, 'P14-1404409178', 'Swapon', 'SARKAR', 'Kumar', 78, 'Male', 'Married', '0000-00-00', '2A/1,S.N Banerjee Street', 'Uttarpara', '', 712232, 'Good!', '2014-07-03 19:40:12'),
(11, 'P14-1468850946', 'Anurag', 'SUKHIJA', 'Santkumar', 27, 'Male', 'Single', '0000-00-00', 'wardhaman nagar', '', '', 440008, 'helllll', '2016-07-18 14:10:24'),
(13, 'P14-1470829937', 'Ankur', 'SUKHIJA', 'S', 20, 'Male', 'Select', '1995-09-09', '', '', '', 440008, 'Hair Fall', '2016-08-10 11:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `pms_precord`
--

CREATE TABLE IF NOT EXISTS `pms_precord` (
  `count_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `med` varchar(50) NOT NULL,
  `amt` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`count_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pms_precord`
--

INSERT INTO `pms_precord` (`count_id`, `p_id`, `fname`, `lname`, `med`, `amt`, `remarks`, `date`) VALUES
(1, 'P14-1468850946', 'Anurag', 'SUKHIJA', 'SBL', 80, 'helllll', '2016-07-29'),
(2, 'P14-1404411425', 'Aparajita Sarkar', 'SARKAR', 'poqwert', 90, 'Treatment', '2016-07-29'),
(3, 'P14-1404411425', 'Aparajita Sarkar', 'SARKAR', '123asd', 100, 'Best Doctor!', '2016-07-28'),
(4, 'P14-1468850946', 'Anurag', 'SUKHIJA', 'asdfcx', 80, 'helllll', '2016-08-01'),
(5, 'P14-1404409178', 'Swapon', 'SARKAR', 'asdfgh', 93, 'Good!', '2016-05-12'),
(6, 'P14-1468850946', 'Anurag', 'SUKHIJA', 'What', 50, 'helllll', '2016-08-01'),
(7, 'P14-1468850946', 'Anurag', 'SUKHIJA', 'i Dont know', 71, 'helllll', '2016-02-23'),
(8, 'P14-1470829937', 'Ankur', 'SUKHIJA', 'xzcfgh', 20, 'Hair Fall', '2016-08-10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
