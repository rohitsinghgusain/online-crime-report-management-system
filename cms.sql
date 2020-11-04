-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 03:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'FIR', '', '2019-05-03 04:43:43', NULL),
(2, 'MISSING PERSON', '', '2019-05-21 05:28:00', NULL),
(3, 'GENERAL DIARIES', '', '2019-05-21 05:28:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'We are seaching for person and we will inform you as soon as possible.', '2019-06-11 04:58:45'),
(2, 3, 'in process', 'We will inform you soon.We are seaching for person.', '2019-06-11 05:00:33'),
(3, 3, 'closed', 'Your person found by our team please reach the station as soon as possible.', '2019-06-11 05:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fname`, `lname`, `email`, `phone`, `message`, `time`) VALUES
(1, 'Dayal', 'singh', 'dayal12@gmail.com', 2147483647, 'Thank you for this website for applying online Fir.', '2019-06-11 04:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `gd`
--

CREATE TABLE `gd` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caseno` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gd`
--

INSERT INTO `gd` (`id`, `name`, `caseno`, `email`, `message`, `time`) VALUES
(1, 'karan rawat', 9, 'karan@gmail.com', 'i have found this car parking in vishal mega mart  at 12o clock', '2019-06-14 04:41:40');

-- --------------------------------------------------------

--
-- Table structure for table `mp`
--

CREATE TABLE `mp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caseno` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mp`
--

INSERT INTO `mp` (`id`, `name`, `caseno`, `email`, `message`, `time`) VALUES
(1, 'mayank agarwal', 3, 'mayank2@gmail.com', 'i have seen this person near kathgodam railway station ,he was wearing red shirt and black pants.', '2019-06-14 04:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `mwform`
--

CREATE TABLE `mwform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caseno` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mwform`
--

INSERT INTO `mwform` (`id`, `name`, `caseno`, `email`, `message`, `time`) VALUES
(1, 'ABDUL', 2, 'ABDUL@GMAIL.COM', 'i have seen this person near lamachour choraha at morning time.he was wearing black color dress.', '2019-06-14 04:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `mwp`
--

CREATE TABLE `mwp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `cdetails` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mwp`
--

INSERT INTO `mwp` (`id`, `name`, `address`, `crime`, `cdetails`, `image`, `time`) VALUES
(1, 'Dawood Ibrahim Kaskar', 'Dongri, Mumbai Maharastra, India', 'Organised crime, drug trafficking, extortion, targeted killing, terrorism', 'Born- 26 December 1995 (age 63)\r\nNationality- Indian\r\nOccupation- Gangster and drug dealer\r\nSpouse(s)- Mahjabeen Shaikh\r\nChildren- 3\r\nReward Amount- 1,73,99,37,500.00 Rupee\r\nWanted by- India\r\nWanted since- 1980s\r\nDawood Ibrahim Kaskar  is one of the most ', 'mostw1.jpg', '2019-05-28 13:26:15'),
(2, 'Sayeed Salahudeen', 'Badgam, State of Jammu and Kashmir, British Raj ', 'Terrorism', 'Born- 18 February 1946 (age 73)\r\nNationality- Pakistani\r\nSpouse(s)- Nafisa\r\nChildren- 5 sons, 2 daughters\r\nCriminal Charge- Global Terrorist\r\nSayeed Salahudeen heads Hizbul Mujahideen, a militant organisation  based in Kashmir. It is a terror outfit in fa', 'mostw2.jpg', '2019-05-28 13:46:54'),
(3, 'Masood Azhar', 'Bahawalpur, Punjab, Pakistan', 'Terrorism', 'Born- 10 July 1968 (age 50)\r\nNationality- Pakistani\r\nAllegiance- Harkat-ul-Ansar, Harkat-ul-Mujahideen, Jaish-e-Mohammad\r\nMasood Azhar is the founder and leader of the Pakistan based terrorist organisation  Jaish-e-Mohammed, active mainly in the Pakistan-', 'mostw3.jpg', '2019-05-28 13:58:51'),
(4, 'Sajid Mir', 'Sialkot, Punjab Pakistan', 'Terrorism', 'Born- 2 October 1938 (age 78)\r\nNationality- Pakistani\r\nPolitical party- PML-N Markzi Jamiat\r\nOccupation-Politician, Muslim leader\r\nSajid Mir is a Pakistani Politician and Member of Senate of Pakistan, currently serving as Chairperson-Senate Committee on S', 'mostw6.jfif', '2019-05-28 14:10:03'),
(5, 'Hafiz Muhammad Saeed ', 'Sargodha, Punjab, Pakistan', 'Terrorism', 'Born- 5 June 1950 (age 68)\r\nReligion- Islam\r\nNationality- Pakistani\r\nDenomination- Ahl-i-Hadith\r\nOccupation- Islamic Terrorism commander Terrorism\r\nIndia considers Hafiz Muhammad Saeed a most wanted terrorist because of his ties to Lashkar-e-Taiba and his', 'mostw7.jfif', '2019-05-28 14:18:28'),
(6, 'Zaki-ur-Rehman Lakhvi', 'Okara district of Punjab, Pakistan', 'Terrorism', 'Born- 1956 (age 62-63)\r\nNationality- Pakistani\r\nZaki-ur-Rehman-Lakhvi is a Pakistani terrorist, known as the top leader of the militant group Lashkar-e-Taiba and currently serves as Supreme Commander of  operations in Kashmir and as a member of LeT\'s Gene', 'mostw8.jpg', '2019-05-28 14:25:58'),
(7, 'Sudheer Singh', 'Krishna puri village, Aazamgarh Maharashtra', 'Murderer, Drug supplier', 'Born- 10 September 1991 (age 28)\r\nNationality- Indian\r\nReligion- Hindu\r\nFather\'s Name- Shiva Singh \r\n', 'missp1.jfif', '2019-05-29 14:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `ps`
--

CREATE TABLE `ps` (
  `id` int(11) NOT NULL,
  `psname` varchar(255) NOT NULL,
  `psdescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps`
--

INSERT INTO `ps` (`id`, `psname`, `psdescription`, `postingDate`, `updationDate`) VALUES
(3, 'RAMNAGAR', 'Bhawaniganj,nainital', '2019-06-11 02:31:10', '11-06-2019 08:01:10 AM'),
(4, 'HALDWANI', 'lamachour,nainital', '2019-06-11 02:31:31', '11-06-2019 08:01:31 AM'),
(5, 'Kashipur', 'near roadways bus stand,udhamsingh nagar', '2019-06-11 02:32:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'UTTRAKHAND', '', '2019-05-03 04:43:54', '24-05-2019 10:32:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 3, 'LOST VEHICAL', '2019-05-21 05:28:34', NULL),
(2, 3, 'LOST DOCUMENT', '2019-05-21 05:28:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `psname` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `psname`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 3, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'Missing ', '', 'Name:Anit Kumar Singh,\r\nCity:Ramanagar,\r\nAge:25', 'lost-1559059518.png', '2019-06-11 04:06:50', 'in process', '2019-06-11 04:58:45'),
(2, 4, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'Missing', '', 'Name:TAPAN NAG,,Age: 60-65 Years,City:Haldwani', 'l2.jpg', '2019-06-11 04:11:32', NULL, '0000-00-00 00:00:00'),
(3, 6, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'missing', '', 'Name:Shankar Ram\r\nCity : Kashipur,\r\nAge: 70-Above,\r\nEye Color : Normal,\r\nHair Color : White', 'l2.png', '2019-06-11 04:13:51', 'closed', '2019-06-11 05:02:14'),
(4, 5, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'missing', '', 'Name:Shekhar,\r\nCity:Geeta Colony,Haldwani,\r\nAge:30-35 Years,\r\nEye Color:Brown', 'l3.png', '2019-06-11 04:16:39', NULL, '2019-06-11 04:17:33'),
(5, 7, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'missing', '', 'Name:Shivani Singh,\r\nAge: 15-20 Years,\r\nEye Color :Normal,\r\nHair Type:Normal Hair,\r\nHeight. : 4-5 Ft.', 'l4.png', '2019-06-11 04:19:38', NULL, '0000-00-00 00:00:00'),
(6, 9, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'missing', '', 'Name:Girish Mandal,\r\nCity:Shantikunj,Kashipur,\r\nAge: 70-Above,\r\nEye Color :Brown', 'l5.png', '2019-06-11 04:21:58', NULL, '0000-00-00 00:00:00'),
(7, 8, 2, 'Select Subcategory', ' Complaint', 'UTTRAKHAND', 'missing', '', 'Name:Pooja,\r\nCity:Dharampur,Ramnagar,\r\nAge:5-10 Years,\r\nEye Color :Normal,\r\nHair Type :Normal Hair', 'l6.png', '2019-06-11 04:26:54', NULL, '0000-00-00 00:00:00'),
(8, 8, 3, 'LOST VEHICAL', ' Complaint', 'UTTRAKHAND', 'bike missing', '', 'No:Uk12W2415,\r\nBrand:Hero Splender,\r\nColour:Black,\r\nLost from:Lakhanpur,Ramnagar', 'v1.jfif', '2019-06-11 04:33:43', NULL, '0000-00-00 00:00:00'),
(9, 10, 3, 'LOST VEHICAL', ' Complaint', 'UTTRAKHAND', 'car missing', '', 'No:Uk06W1268, \r\nBrand:Renault Duster,\r\n Colour:brown,\r\n Lost from:Bhawaniganj,Kashipur', 'v2.jfif', '2019-06-11 04:36:09', NULL, '2019-06-11 04:36:39'),
(10, 11, 3, 'LOST DOCUMENT', ' Complaint', 'UTTRAKHAND', 'aadhar card lost', '', 'Aadhar No:2356983265896325,\r\nLost From:Near Tanda,Haldwani', 'd1.jpg', '2019-06-11 04:39:17', NULL, '0000-00-00 00:00:00'),
(11, 12, 3, 'LOST VEHICAL', ' Complaint', 'UTTRAKHAND', 'Lost Car', '', 'No:Uk04W1236,\r\n Brand:Maruti Suzuki Alto,\r\n Colour:Red,\r\n Lost:Chilkiya,Kashipur', 'v3.jfif', '2019-06-11 04:42:09', NULL, '2019-06-11 04:43:22'),
(12, 3, 3, 'LOST DOCUMENT', ' Complaint', 'UTTRAKHAND', 'ration card lost', '', 'Lost:Near RKPuram Ramnagar,\r\nCard No:2536598', 'd2.jpg', '2019-06-11 04:45:15', NULL, '0000-00-00 00:00:00'),
(13, 7, 3, 'LOST DOCUMENT', ' Complaint', 'UTTRAKHAND', '12 marksheet lost', '', '12th Marksheet,\r\nSr no:377367,\r\nLost:Near Himmatpur,Kashipur', 'd3.webp', '2019-06-11 04:48:26', NULL, '0000-00-00 00:00:00'),
(14, 9, 3, 'LOST VEHICAL', ' Complaint', 'UTTRAKHAND', 'missing car', '', 'No:Uk13W1258,\r\n Brand:BMW i8,\r\n Colour:Silver,\r\n Lost from:Mukhani Choraha,Haldwani', 'v4.jfif', '2019-06-11 04:51:27', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-03 04:43:20', '03-05-2019 10:14:27 AM', 1),
(2, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-03 04:51:40', '', 1),
(3, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-03 05:16:35', '', 1),
(4, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 02:48:34', '', 1),
(5, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 03:25:43', '04-05-2019 09:08:00 AM', 1),
(6, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 03:38:14', '', 1),
(7, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 03:50:58', '', 1),
(8, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 04:02:38', '', 1),
(9, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-05 04:19:06', '', 1),
(10, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-05 04:27:23', '', 1),
(11, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-05 04:30:27', '', 1),
(12, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-07 04:09:37', '', 1),
(13, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-08 04:57:11', '', 1),
(14, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-17 04:47:29', '', 1),
(15, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 04:51:21', '18-05-2019 11:22:32 AM', 1),
(16, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-20 04:29:12', '', 1),
(17, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 03:54:42', '', 1),
(18, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 15:02:03', '21-05-2019 08:32:05 PM', 1),
(19, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 15:02:15', '21-05-2019 09:30:27 PM', 1),
(20, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 17:23:51', '', 1),
(21, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 18:12:05', '21-05-2019 11:47:55 PM', 1),
(22, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-21 18:18:30', '', 1),
(23, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 04:19:54', '', 1),
(24, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 04:43:57', '22-05-2019 10:14:31 AM', 1),
(25, 0, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 06:30:23', '', 0),
(26, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 06:30:37', '22-05-2019 12:01:44 PM', 1),
(27, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 07:09:29', '22-05-2019 12:43:02 PM', 1),
(28, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-22 16:33:56', '22-05-2019 10:04:13 PM', 1),
(29, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 07:02:48', '23-05-2019 01:00:51 PM', 1),
(30, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 07:31:40', '23-05-2019 01:23:19 PM', 1),
(31, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 07:53:30', '23-05-2019 01:23:50 PM', 1),
(32, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 07:55:26', '23-05-2019 01:27:43 PM', 1),
(33, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 07:57:54', '23-05-2019 01:29:21 PM', 1),
(34, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 08:02:47', '23-05-2019 05:59:47 PM', 1),
(35, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:30:05', '23-05-2019 06:01:43 PM', 1),
(36, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:31:57', '23-05-2019 06:02:47 PM', 1),
(37, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:36:02', '23-05-2019 06:06:48 PM', 1),
(38, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:37:00', '23-05-2019 06:07:38 PM', 1),
(39, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:37:49', '23-05-2019 06:08:42 PM', 1),
(40, 0, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:38:56', '', 0),
(41, 0, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:39:05', '', 0),
(42, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 12:39:13', '23-05-2019 06:09:17 PM', 1),
(43, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 13:00:21', '', 1),
(44, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 13:29:52', '23-05-2019 07:09:34 PM', 1),
(45, 0, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 13:39:44', '', 0),
(46, 2, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 13:39:55', '23-05-2019 07:10:06 PM', 1),
(47, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 13:40:14', '23-05-2019 07:11:46 PM', 1),
(48, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-23 14:24:14', '23-05-2019 07:55:54 PM', 1),
(49, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-26 16:54:48', '26-05-2019 10:25:06 PM', 1),
(50, 3, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:01:51', '11-06-2019 09:37:48 AM', 1),
(51, 4, 'akshita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:08:07', '11-06-2019 09:42:01 AM', 1),
(52, 6, 'mihir@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:12:18', '11-06-2019 09:44:55 AM', 1),
(53, 0, 'akansha@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:15:14', '', 0),
(54, 5, 'akansha@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:15:26', '11-06-2019 09:47:43 AM', 1),
(55, 0, 'himanshu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:17:54', '', 0),
(56, 7, 'himanshu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:18:06', '11-06-2019 09:49:51 AM', 1),
(57, 9, 'ayush@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:20:03', '11-06-2019 09:52:30 AM', 1),
(58, 8, 'gaurav@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:25:39', '11-06-2019 10:04:09 AM', 1),
(59, 10, 'deepak@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:34:20', '11-06-2019 10:07:36 AM', 1),
(60, 11, 'rohitrohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:37:49', '11-06-2019 10:10:36 AM', 1),
(61, 12, 'mohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:40:48', '11-06-2019 10:12:21 AM', 1),
(62, 3, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:42:32', '11-06-2019 10:16:17 AM', 1),
(63, 7, 'himanshu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:46:35', '11-06-2019 10:19:44 AM', 1),
(64, 8, 'gaurav@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:49:54', '11-06-2019 10:19:56 AM', 1),
(65, 9, 'ayush@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-11 04:50:06', '11-06-2019 10:21:40 AM', 1),
(66, 0, 'gaurav@gm,ail.com', 0x3a3a3100000000000000000000000000, '2019-06-12 05:42:41', '', 0),
(67, 8, 'gaurav@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-12 05:42:49', '', 1),
(68, 3, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-13 03:30:50', '13-06-2019 09:01:17 AM', 1),
(69, 11, 'rohitrohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-13 03:31:36', '13-06-2019 09:01:43 AM', 1),
(70, 3, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-14 04:27:47', '14-06-2019 10:01:22 AM', 1),
(71, 3, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-14 05:05:33', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(3, 'rohit', 'rohit@gmail.com', '2d235ace000a3ad85f590e321c89bb99', 8885968450, 'ramnagar', 'UTTRAKHAND', 'india', 244715, '373cd194c77db656666ae4dd3a7bc82a.jpg', '2019-06-11 02:23:50', '2019-06-14 04:29:10', 1),
(4, 'akshita', 'akshita@gmail.com', '366dce23a7badd01fe1b77fde71564be', 9012582356, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:24:16', '0000-00-00 00:00:00', 1),
(5, 'akansha', 'akansha@gmail.com', '9058811f0978f08722bc8e7f53a16bf4', 7869852635, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:26:16', '0000-00-00 00:00:00', 1),
(6, 'mihir', 'mihir@gmail.com', '25603f465e5f1bb27633c288ed479d0f', 8695869758, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:27:12', '0000-00-00 00:00:00', 1),
(7, 'himanshu', 'himanshu@gmail.com', '4122ea4f5490094a33d7cdba65136cf8', 8659865987, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:27:38', '0000-00-00 00:00:00', 1),
(8, 'gaurav', 'gaurav@gmail.com', '29be54a52396750258d886abc5417fda', 9568956897, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:28:10', '0000-00-00 00:00:00', 1),
(9, 'ayush', 'ayush@gmail.com', '66049c07d9e8546699fe0872fd32d8f6', 8569856985, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:28:32', '0000-00-00 00:00:00', 1),
(10, 'deepak', 'deepak@gmail.com', '498b5924adc469aa7b660f457e0fc7e5', 8695685968, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:29:06', '0000-00-00 00:00:00', 1),
(11, 'rohit', 'rohitrohit@gmail.com', '2d235ace000a3ad85f590e321c89bb99', 7568965987, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:30:07', '0000-00-00 00:00:00', 1),
(12, 'mohit', 'mohit@gmail.com', 'd8052f9e09a17e6907629e76bbd261cc', 8695326578, NULL, NULL, NULL, NULL, NULL, '2019-06-11 02:30:33', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gd`
--
ALTER TABLE `gd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp`
--
ALTER TABLE `mp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mwform`
--
ALTER TABLE `mwform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mwp`
--
ALTER TABLE `mwp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ps`
--
ALTER TABLE `ps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gd`
--
ALTER TABLE `gd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp`
--
ALTER TABLE `mp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mwform`
--
ALTER TABLE `mwform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mwp`
--
ALTER TABLE `mwp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ps`
--
ALTER TABLE `ps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
