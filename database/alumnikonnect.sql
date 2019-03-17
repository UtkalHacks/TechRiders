-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2019 at 05:11 AM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumnikonnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
CREATE TABLE IF NOT EXISTS `chats` (
  `chat_id` int(200) NOT NULL AUTO_INCREMENT,
  `sender_id` int(200) NOT NULL,
  `receiver_id` int(200) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `sender_id`, `receiver_id`, `message`, `time`) VALUES
(1, 17, 18, 'hi ', '2018-11-10'),
(2, 18, 17, 'how are you', '2018-11-11'),
(3, 17, 18, 'i am fine', '2018-11-12'),
(4, 17, 18, 'how are you', '2018-11-12'),
(5, 17, 18, 'i am good', '2018-11-13'),
(6, 17, 18, 'i want to know about placement of cet', '2018-11-13'),
(7, 18, 17, 'It has a Placement Ratio Of 98%', '2018-11-13'),
(8, 17, 18, 'And What About Faculty???', '2018-11-14'),
(9, 18, 17, 'Well The Faculty are very good', '2018-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
CREATE TABLE IF NOT EXISTS `college` (
  `college_id` int(50) NOT NULL AUTO_INCREMENT,
  `unique_id` int(50) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `unique_id`, `password`, `college_name`) VALUES
(1, 123456, '*114D85F0883A674CB9ABC7C855CF88E49CBBB0C4', 'Gandhi Institute For Technological Advancement');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
CREATE TABLE IF NOT EXISTS `donations` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(100,3) NOT NULL,
  `paytm_no` bigint(255) NOT NULL,
  `paytm_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`donation_id`, `user_id`, `college_name`, `college_city`, `amount`, `paytm_no`, `paytm_id`, `date`) VALUES
(1, 17, 'GITA', 'Bhubaneswar', 10000.000, 8051062564, '123456789034567qwedfghjkcfghjk2345', '2012-11-18'),
(2, 18, 'Gandhi Institute For Technological Advancement', 'Bhubaneswar', 23000.000, 7894561230, '122qwert34dfgvbn', '2018-11-04'),
(3, 18, 'Gandhi Institute For Technological Advancement', 'Bhubaneswar', 40000.000, 9546123087, '12345wer45df5678', '2018-11-05'),
(4, 20, 'Gandhi Institute For Technological Advancement', 'Bhubaneswar', 67000.000, 9876325410, '78jo4587451hjkl', '2018-11-07'),
(5, 17, 'GITA', 'Bhubaneswar', 10000.000, 784612233, 'asdfggnnnm', '2018-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
CREATE TABLE IF NOT EXISTS `internship` (
  `internship_id` int(20) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `internshiporjob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(20) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastdatetoapply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whocanapply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`internship_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internship`
--

INSERT INTO `internship` (`internship_id`, `companyname`, `internshiporjob`, `salary`, `location`, `period`, `photo`, `lastdatetoapply`, `whocanapply`, `email_id`) VALUES
(1, 'Surkie.com', 'Internship', 2000, 'Noida', '2 months', 'internshipImages/112233.jpeg', '20/11/2018', 'Graphics Designer', 'surkieofficial@gmail.com'),
(2, 'Acconsilio Labs', 'INTERNSHIP', 2500, 'Mumbai', '3 months', 'internshipImages/images.jpeg', '30/11/2018', 'Web Developers', 'acconsiliolabs@gmail.com'),
(3, 'EPSUM LABS', 'INTERNSHIP', 1500, 'Bangalore', '4 months', 'internshipImages/download.jpeg', '01/12/2018', 'Android Developers', 'epsumlabs12@gmail.com'),
(4, 'Zomato', 'INTERNSHIP', 5000, 'Bangalore', '2', 'internshipImages/11223344.jpeg', '25/12/2018', 'Web Designers', 'zomato@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newsfeed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`photo`, `newsfeed`) VALUES
('newsfeed/18740997614.pdf', 'New Time Table');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

DROP TABLE IF EXISTS `placement`;
CREATE TABLE IF NOT EXISTS `placement` (
  `placement_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`placement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`placement_id`, `college_name`, `document`, `year`) VALUES
(1, 'Gandhi Institute For Technological Advancement', 'placement/12588677009.pdf', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(200) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenthcity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenthyear` int(200) NOT NULL,
  `twelve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twelvecity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twelveyear` int(255) NOT NULL,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collegeyear` int(255) NOT NULL,
  `collegecity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentcity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `dob`, `tenth`, `tenthcity`, `tenthyear`, `twelve`, `twelvecity`, `twelveyear`, `college`, `collegeyear`, `collegecity`, `current`, `company`, `currentcity`, `photo`, `documents`) VALUES
(17, 'Shivam Kumar', '05/02/1999', 'St Teresas School', 'Bhagalpur', 2015, 'J.V.M Shyamali,Ranchi', 'Ranchi', 2017, 'GITA', 2021, 'Bhubaneswar', '2', 'GITA', 'BHUBANESWAR', 'images/102363172.jpeg', ''),
(18, 'shubham kumar', '05/12/1998', 'St Jospeph School', 'Bhagalpur', 2014, 'D.A.V', 'Bhagalpur', 2016, 'College Of Engineering And Technology', 2020, 'Bhubaneswar', '2', 'Techno India', 'Kolkata', 'images/1234.jpeg', ''),
(19, 'Abhijeet Kumar', '11/07/1995', 'D.A.V', 'Bhagalpur', 2012, 'D.P.s', 'Delhi', 2014, 'Kalinga Institute Of Industrial Technology', 2018, 'Bhubaneswar', '1', 'Infosys', 'Bangalore', 'images/12345.jpeg', ''),
(20, 'Rishav Gupta', '09/08/1994', 'Mount Assisi School', 'Bhagalpur', 2010, 'Mount Assisi School', 'Bhagalpur', 2012, 'Gandhi Institute For Technological Advancement', 2016, 'Bhubaneswar', '1', 'TCS', 'Hydrebad', 'images/123456.jpeg', ''),
(21, 'Abhishek Ranjan', '12/12/1990', 'Chinmiya Vidyalaya', 'Jamshedpur', 2004, 'L.F.S', 'jamshedpur', 2006, 'Gandhi Institute For Technological Advancement', 2010, 'Bhubaneswar', '1', 'Wipro', 'Bangalore', 'images/1234567.jpeg', ''),
(22, 'Mayank Kashyap', '09/04/1998', 'PITS Modern School', 'Bokaro', 2015, 'PITS Modern School', 'Bokaro', 2017, 'Gandhi Institute For Technological Advancement', 2021, 'Bhubaneswar', '2', 'Gandhi Institute For Technological Advancement', 'Bhubaneswar', 'images/12345678.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_mobile` bigint(255) NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_creationdate` date NOT NULL,
  `user_creationtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_check` int(20) NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobileno` (`user_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_mobile`, `user_password`, `user_email`, `user_creationdate`, `user_creationtime`, `user_status`, `user_check`, `user_type`, `view_contact`) VALUES
(17, 8051062564, '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'Shivamkr1107@gmail.com', '2011-11-18', '05:11:36', 'y', 1, 'user', 'yes'),
(18, 8084469547, '', 'shubhamkumar@gmail.com', '2018-11-13', '10:00 am', 'y', 1, 'user', 'yes'),
(19, 894561230, '', 'hacker123@gmail.com', '2018-11-14', '01:05 am', 'y', 1, 'user', 'yes'),
(20, 9465123078, '', 'rajrah456@gmail.com', '2018-11-14', '10:00 am', 'y', 1, 'user', 'yes'),
(21, 6541230589, '', 'kumar0711@gmail.com', '2018-11-14', '11:00 am', 'y', 1, 'user', 'no'),
(22, 9654781230, '', 'mittal.zx123@gmail.com', '2018-11-14', '09:07 am', 'y', 1, 'user', 'no');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
