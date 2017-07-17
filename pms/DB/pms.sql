-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2014 at 08:17 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pms_app`
--

INSERT INTO `pms_app` (`app_id`, `p_id`, `d_id`, `time`, `date`, `encoder`, `datead`) VALUES
(12, 'P14-1404409178', 'D13-1404409232', '08:00:00', '2-02-1988', 'WW', '2014-07-03 19:36:11'),
(13, 'P14-1404411425', 'D13-1404408965', '07:30:00', '3-02-1954', '85221022', '2014-07-03 19:36:49'),
(14, 'P14-1404409178', 'D13-1404412249', '08:00:00', '2-02-1951', 'Somnath', '2014-07-03 19:35:49'),
(15, 'P14-1404409178', 'D13-1404411334', '09:00:00', '3-01-2012', 'Avjit', '2014-07-03 20:16:56');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `pms_doctor`
--

INSERT INTO `pms_doctor` (`count_id`, `d_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(20, 'D13-1404412249', 'Somnath', 'SARKAR', '', 25, 'Male', 'Married', '1951-03-13', '2a/1,S.N', 'uttarpara', 'WELCOME', 712232, 'welcome Here!!', '2014-07-03 20:31:03'),
(22, 'D13-1404411334', 'Avijit', 'MUKERJEE', '', 25, 'Male', 'Single', '1955-08-07', '55/1', 'Boranagar', 'Hello', 712232, 'Well Done!', '2014-07-03 20:16:12');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pms_patient`
--

INSERT INTO `pms_patient` (`count_id`, `p_id`, `fname`, `lname`, `mi`, `age`, `gender`, `status`, `bdate`, `brgy`, `city`, `prov`, `postal`, `remark`, `datead`) VALUES
(9, 'P14-1404411425', 'Aparajita Sarkar', 'SARKAR', '', 59, 'Female', 'Married', '1955-02-02', '2a/1', 'Uttarpara', 'EE', 7122232, 'Best Doctor!', '2014-07-03 20:17:43'),
(8, 'P14-1404409178', 'Swapon', 'SARKAR', 'Kumar', 65, 'Male', 'Married', '1951-02-02', '2A/1,S.N Banerjee Street', 'Uttarpara', '', 712232, 'Good!', '2014-07-03 19:40:12'),
(10, 'P14-1404412128', 'Swapon', 'SARKAR', '', 26, 'Male', 'Single', '1951-02-03', '25/1', 'Kolkata', 'Ohh! My God', 712232, 'Laila Teri Jaan', '2014-07-03 20:29:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
