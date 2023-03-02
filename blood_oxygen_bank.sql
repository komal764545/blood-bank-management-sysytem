-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2022 at 10:37 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood_oxygen_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation_table`
--

CREATE TABLE IF NOT EXISTS `donation_table` (
  `Aadhar_number` bigint(12) NOT NULL,
  `Donationtype` text NOT NULL,
  `Donation_date` date NOT NULL,
  PRIMARY KEY (`Aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_table`
--

INSERT INTO `donation_table` (`Aadhar_number`, `Donationtype`, `Donation_date`) VALUES
(256633225588, 'Blood ', '2022-12-19'),
(852196312334, 'Blood ', '2022-12-16'),
(852963147895, 'Blood ', '2022-12-19'),
(887789899082, 'Blood ', '2022-12-19'),
(963285147852, 'Blood ', '2022-12-19'),
(998866557712, 'Blood ', '2022-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `oxygen`
--

CREATE TABLE IF NOT EXISTS `oxygen` (
  `Aadhar_number` bigint(12) NOT NULL,
  `buy_date` date NOT NULL,
  PRIMARY KEY (`Aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oxygen`
--

INSERT INTO `oxygen` (`Aadhar_number`, `buy_date`) VALUES
(256633225588, '2022-12-19'),
(852963147456, '2022-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `registration_table`
--

CREATE TABLE IF NOT EXISTS `registration_table` (
  `ID` varchar(8) NOT NULL,
  `NAME` text NOT NULL,
  `FATHER_HUSBAND_NAME` text NOT NULL,
  `PHONE_NUMBER` bigint(10) NOT NULL,
  `AADHAR_NUMBER` bigint(12) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `LAST_DONATION_DATE` date NOT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `GENDER` text NOT NULL,
  `BLOOD_GROUP` varchar(3) NOT NULL,
  PRIMARY KEY (`AADHAR_NUMBER`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_table`
--

INSERT INTO `registration_table` (`ID`, `NAME`, `FATHER_HUSBAND_NAME`, `PHONE_NUMBER`, `AADHAR_NUMBER`, `DATE_OF_BIRTH`, `PASSWORD`, `LAST_DONATION_DATE`, `ADDRESS`, `GENDER`, `BLOOD_GROUP`) VALUES
('OlqN7?kH', 'kaushalendra', 'kush', 7275806233, 256633225588, '1999-01-01', '123', '1947-08-15', 'india', 'MALE', 'A+'),
('Ul$L8tXx', 'Ankit', 'ankit', 8956237412, 852196312334, '1995-12-14', '123', '2022-11-08', 'India', 'MALE', 'B+'),
('@u6o8Pv2', 'anand', 'anand kumar', 7868556234, 852963147456, '2002-12-02', '123', '1947-08-15', 'India', 'MALE', 'B+'),
('KVnu*6m0', 'Pooja kumari', 'Raj Kumar', 7076568285, 852963147895, '2002-12-24', '125', '2022-12-19', 'india', 'FEMALE', 'A+'),
('@&bntJ#X', 'Ritu Thakur', 'Thakur Pratap Singh', 7898976554, 852978963322, '1998-12-02', '123', '2022-12-08', 'Saket Nagar, Yashoda Nagar, Kanpur.', 'FEMALE', 'AB+'),
('h#vCm1XN', 'DEVESH GUPTA', 'MANISH GUPTA', 9336654529, 887756658867, '1998-12-04', '123', '1947-08-15', '123India', 'MALE', 'B+'),
('J0ebM#qN', 'RAM', 'RAJARAM', 7500308194, 887789899082, '2000-01-11', '123', '1947-08-15', 'Saket Nagar, Kanpur, India. ', 'MALE', 'O+'),
('zQIgDUMx', 'sarita Thapa', 'Dil Bhadur Thapa', 9336986470, 938986470391, '1998-07-17', 'Sarita@123', '2022-10-10', 'in', 'FEMALE', 'A-'),
('i9&uA*3m', 'Kavisha Gupta', 'Manish Gupta', 7398091733, 952055967845, '2004-01-14', 'kavisha@1234', '2018-10-02', 'Indra nagar Kalyanpur kanpur.', 'FEMALE', 'B+'),
('7@BLu0BC', 'Ram Rahim ', 'RAM', 8526563274, 963285147852, '1998-12-09', 'Ram@123', '2022-12-11', 'Prayaagraaj, Uttar Pradesh, Kanpur.', 'MALE', 'B+'),
('5$q2RE7A', 'Komal', 'Anil ', 9955662211, 987645321234, '2000-08-02', 'Komal@123', '2022-07-10', '905 EWS Single story Barra-2 Kanpur 208027', 'FEMALE', 'O+'),
('2@4zfe#6', 'DEV', 'MANI', 7856325496, 993692957856, '1998-11-02', '123', '2022-12-01', 'India', 'MALE', 'O-'),
('721s8X*S', 'kushi', 'anil', 8855263141, 998866557712, '2000-12-18', '123', '2022-12-19', 'India', 'FEMALE', 'AB-'),
('8@y5OZy5', 'Raj Kumar Singh', 'Late Ram Prashad Singh', 9936626029, 998866785582, '2000-12-01', '123', '1947-08-15', 'India', 'MALE', 'AB+');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
