-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2017 at 12:53 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dlsulib`
--
CREATE DATABASE IF NOT EXISTS `dlsulib` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dlsulib`;

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `catalogId` int(11) NOT NULL,
  `DateBorrowed` datetime NOT NULL,
  `dateExpectReturn` datetime NOT NULL,
  `statusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowId`, `userId`, `catalogId`, `DateBorrowed`, `dateExpectReturn`, `statusId`) VALUES
(1, 1, 1, '2017-07-06 05:52:16', '2017-07-11 05:52:16', -1),
(2, 2, 2, '2017-07-06 05:52:16', '2017-07-11 05:52:16', -1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `catalogid` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `catalogType` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tags` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`catalogid`, `title`, `author`, `year`, `publisher`, `location`, `catalogType`, `status`, `tags`) VALUES
(1, 'Challengers of the Unknown', 'Ron Goulart', 1977, '	Dell', 'ABCD.1234.1977', '2', '4', 'Gangster'),
(2, 'A Life in the Streets', 'Eugene Lim', 2017, 'Ted Publishing House', 'EGFD.1451.2017', '2 ', '4', 'Blood, Sweat, Tears'),
(3, 'Buhay ng Gangsta', 'Smugglaz', 2016, '187 Mobstaz', 'ABGE.2031.2016', '1', '4', 'Streets'),
(4, 'Blithe Spirit', '	Noël Coward', 1941, 'Noel', 'P112.BPC3.1941', '2', '3', 'Spirit'),
(5, 'The Lord of The Rings', 'J. R. R. Tolkien', 1955, 'Allen & Unwin', 'AZJP.12BP.1955', '1', '4', 'Rings, Lord'),
(6, 'Kingdom Come', 'Elliot S. Maggin, with Mark Waid, Alex Ross', 1998, 'Warner Books', 'POG1.0986.1998', '1', '4', 'Kingdom'),
(7, 'Three Little Bears', 'Yemear ', 2017, 'Ming Publishing House', 'IUP1.1023.2017', '1', '4', 'Bears, Ming, Ling, Mong, Long'),
(8, 'The Adventures of Superman', 'George Lowther', 1979, 'Kassel Books ', 'YTIZ.1B31.1979', '1', '2', 'Superman'),
(9, 'Batman & Robin', 'Michael Jan Friedman', 1997, 'Warner Books', 'QWER.4321.1997', '1', '4', 'Batman, Robin, Bat'),
(10, 'Steel', 'Dean Wesley Smith', 1997, 'Tor Books', 'POI6.1409.1997', '1', '4', 'Man of Steel, Steel'),
(17, 'Secure Internet of Things', '	Dr.	Thiemo	Voigt', 2017, 'SICS Swedish Lab', 'POZS.1095.2017', '3', '4', 'Internet of Things, Internet');

-- --------------------------------------------------------

--
-- Table structure for table `catalogtype`
--

CREATE TABLE `catalogtype` (
  `catalogid` int(11) NOT NULL,
  `catalogtype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogtype`
--

INSERT INTO `catalogtype` (`catalogid`, `catalogtype`) VALUES
(1, 'Book'),
(2, 'Magazine'),
(3, 'Thesis');

-- --------------------------------------------------------

--
-- Table structure for table `meetingroom`
--

CREATE TABLE `meetingroom` (
  `roomId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `startTimeslot` time NOT NULL,
  `endTimeslot` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetingroom`
--

INSERT INTO `meetingroom` (`roomId`, `statusId`, `roomTypeId`, `startTimeslot`, `endTimeslot`) VALUES
(253, 1, 1, '07:00:00', '07:30:00'),
(254, 1, 1, '07:30:00', '08:00:00'),
(255, 1, 1, '08:00:00', '08:30:00'),
(256, 1, 1, '08:30:00', '09:00:00'),
(257, 1, 1, '09:00:00', '09:30:00'),
(258, 1, 1, '09:30:00', '10:00:00'),
(259, 1, 1, '10:00:00', '10:30:00'),
(260, 1, 1, '10:30:00', '11:00:00'),
(261, 1, 1, '11:00:00', '11:30:00'),
(262, 1, 1, '11:30:00', '12:00:00'),
(263, 1, 1, '12:00:00', '12:30:00'),
(264, 1, 1, '12:30:00', '13:00:00'),
(265, 1, 1, '13:00:00', '13:30:00'),
(266, 1, 1, '13:30:00', '14:00:00'),
(267, 1, 1, '14:00:00', '14:30:00'),
(268, 1, 1, '14:30:00', '15:00:00'),
(269, 1, 1, '15:00:00', '15:30:00'),
(270, 1, 1, '15:30:00', '16:00:00'),
(271, 1, 1, '16:00:00', '16:30:00'),
(272, 1, 1, '16:30:00', '17:00:00'),
(273, 1, 1, '17:00:00', '17:30:00'),
(274, 1, 1, '17:30:00', '18:00:00'),
(275, 1, 1, '18:00:00', '18:30:00'),
(276, 1, 1, '18:30:00', '19:00:00'),
(277, 1, 1, '19:00:00', '19:30:00'),
(278, 1, 1, '19:30:00', '20:00:00'),
(279, 1, 2, '07:00:00', '07:30:00'),
(280, 1, 2, '07:30:00', '08:00:00'),
(281, 1, 2, '08:00:00', '08:30:00'),
(282, 1, 2, '08:30:00', '09:00:00'),
(283, 1, 2, '09:00:00', '09:30:00'),
(284, 1, 2, '09:30:00', '10:00:00'),
(285, 1, 2, '10:00:00', '10:30:00'),
(286, 1, 2, '10:30:00', '11:00:00'),
(287, 1, 2, '11:00:00', '11:30:00'),
(288, 1, 2, '11:30:00', '12:00:00'),
(289, 1, 2, '12:00:00', '12:30:00'),
(290, 1, 2, '12:30:00', '13:00:00'),
(291, 1, 2, '13:00:00', '13:30:00'),
(292, 1, 2, '13:30:00', '14:00:00'),
(293, 1, 2, '14:00:00', '14:30:00'),
(294, 1, 2, '14:30:00', '15:00:00'),
(295, 1, 2, '15:00:00', '15:30:00'),
(296, 1, 2, '15:30:00', '16:00:00'),
(297, 1, 2, '16:00:00', '16:30:00'),
(298, 1, 2, '16:30:00', '17:00:00'),
(299, 1, 2, '17:00:00', '17:30:00'),
(300, 1, 2, '17:30:00', '18:00:00'),
(301, 1, 2, '18:00:00', '18:30:00'),
(302, 1, 2, '18:30:00', '19:00:00'),
(303, 1, 2, '19:00:00', '19:30:00'),
(304, 1, 2, '19:30:00', '20:00:00'),
(305, 1, 3, '07:00:00', '07:30:00'),
(306, 1, 3, '07:30:00', '08:00:00'),
(307, 1, 3, '08:00:00', '08:30:00'),
(308, 1, 3, '08:30:00', '09:00:00'),
(309, 1, 3, '09:00:00', '09:30:00'),
(310, 1, 3, '09:30:00', '10:00:00'),
(311, 1, 3, '10:00:00', '10:30:00'),
(312, 1, 3, '10:30:00', '11:00:00'),
(313, 1, 3, '11:00:00', '11:30:00'),
(314, 1, 3, '11:30:00', '12:00:00'),
(315, 1, 3, '12:00:00', '12:30:00'),
(316, 1, 3, '12:30:00', '13:00:00'),
(317, 1, 3, '13:00:00', '13:30:00'),
(318, 1, 3, '13:30:00', '14:00:00'),
(319, 1, 3, '14:00:00', '14:30:00'),
(320, 1, 3, '14:30:00', '15:00:00'),
(321, 1, 3, '15:00:00', '15:30:00'),
(322, 1, 3, '15:30:00', '16:00:00'),
(323, 1, 3, '16:00:00', '16:30:00'),
(324, 1, 3, '16:30:00', '17:00:00'),
(325, 1, 3, '17:00:00', '17:30:00'),
(326, 1, 3, '17:30:00', '18:00:00'),
(327, 1, 3, '18:00:00', '18:30:00'),
(328, 1, 3, '18:30:00', '19:00:00'),
(329, 1, 3, '19:00:00', '19:30:00'),
(330, 1, 3, '19:30:00', '20:00:00'),
(331, 1, 4, '07:00:00', '07:30:00'),
(332, 1, 4, '07:30:00', '08:00:00'),
(333, 1, 4, '08:00:00', '08:30:00'),
(334, 1, 4, '08:30:00', '09:00:00'),
(335, 1, 4, '09:00:00', '09:30:00'),
(336, 1, 4, '09:30:00', '10:00:00'),
(337, 1, 4, '10:00:00', '10:30:00'),
(338, 1, 4, '10:30:00', '11:00:00'),
(339, 1, 4, '11:00:00', '11:30:00'),
(340, 1, 4, '11:30:00', '12:00:00'),
(341, 1, 4, '12:00:00', '12:30:00'),
(342, 1, 4, '12:30:00', '13:00:00'),
(343, 1, 4, '13:00:00', '13:30:00'),
(344, 1, 4, '13:30:00', '14:00:00'),
(345, 1, 4, '14:00:00', '14:30:00'),
(346, 1, 4, '14:30:00', '15:00:00'),
(347, 1, 4, '15:00:00', '15:30:00'),
(348, 1, 4, '15:30:00', '16:00:00'),
(349, 1, 4, '16:00:00', '16:30:00'),
(350, 1, 4, '16:30:00', '17:00:00'),
(351, 1, 4, '17:00:00', '17:30:00'),
(352, 1, 4, '17:30:00', '18:00:00'),
(353, 1, 4, '18:00:00', '18:30:00'),
(354, 1, 4, '18:30:00', '19:00:00'),
(355, 1, 4, '19:00:00', '19:30:00'),
(356, 1, 4, '19:30:00', '20:00:00'),
(357, 1, 5, '07:00:00', '07:30:00'),
(358, 1, 5, '07:30:00', '08:00:00'),
(359, 1, 5, '08:00:00', '08:30:00'),
(360, 1, 5, '08:30:00', '09:00:00'),
(361, 1, 5, '09:00:00', '09:30:00'),
(362, 1, 5, '09:30:00', '10:00:00'),
(363, 1, 5, '10:00:00', '10:30:00'),
(364, 1, 5, '10:30:00', '11:00:00'),
(365, 1, 5, '11:00:00', '11:30:00'),
(366, 1, 5, '11:30:00', '12:00:00'),
(367, 1, 5, '12:00:00', '12:30:00'),
(368, 1, 5, '12:30:00', '13:00:00'),
(369, 1, 5, '13:00:00', '13:30:00'),
(370, 1, 5, '13:30:00', '14:00:00'),
(371, 1, 5, '14:00:00', '14:30:00'),
(372, 1, 5, '14:30:00', '15:00:00'),
(373, 1, 5, '15:00:00', '15:30:00'),
(374, 1, 5, '15:30:00', '16:00:00'),
(375, 1, 5, '16:00:00', '16:30:00'),
(376, 1, 5, '16:30:00', '17:00:00'),
(377, 1, 5, '17:00:00', '17:30:00'),
(378, 1, 5, '17:30:00', '18:00:00'),
(379, 1, 5, '18:00:00', '18:30:00'),
(380, 1, 5, '18:30:00', '19:00:00'),
(381, 1, 5, '19:00:00', '19:30:00'),
(382, 1, 5, '19:30:00', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meetingroomtype`
--

CREATE TABLE `meetingroomtype` (
  `roomid` int(11) NOT NULL,
  `roomtype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meetingroomtype`
--

INSERT INTO `meetingroomtype` (`roomid`, `roomtype`) VALUES
(1, 'Michaelangelo'),
(2, 'Donatello'),
(3, 'Leonardo'),
(4, 'Raphael'),
(5, 'Boticelli');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reserveId` int(11) NOT NULL,
  `roomtimeslotId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateReserved` varchar(45) NOT NULL,
  `statusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserveId`, `roomtimeslotId`, `userId`, `dateReserved`, `statusId`) VALUES
(1, 1, 1, '2017-07-06 05:52:16', -1),
(2, 2, 2, '2017-07-10 06:00:16', -1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewId` int(11) NOT NULL,
  `catalogId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `dateReviewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewId`, `catalogId`, `userId`, `review`, `dateReviewed`) VALUES
(1, 1, 1, '\"Very nice read\"', '2017-07-10 10:00:00'),
(2, 2, 2, '\"Wow\"', '2017-07-13 09:00:00'),
(3, 3, 3, '\"Nice Book!\"', '2017-07-12 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `secretquestion`
--

CREATE TABLE `secretquestion` (
  `questionid` int(11) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `secretquestion`
--

INSERT INTO `secretquestion` (`questionid`, `question`) VALUES
(1, 'What is your mother\'s maiden name?'),
(2, 'What is the name of your first pet?'),
(3, 'What is the name of your first love?');

-- --------------------------------------------------------

--
-- Table structure for table `statustype`
--

CREATE TABLE `statustype` (
  `statusid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statustype`
--

INSERT INTO `statustype` (`statusid`, `name`) VALUES
(-1, 'Inactive'),
(0, 'Pending'),
(1, 'Active'),
(2, 'Out'),
(3, 'Reserved'),
(4, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `lastloggedin` datetime DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `birthdate` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `idNumber` int(25) NOT NULL,
  `SQID` int(11) NOT NULL,
  `SQAnswer` varchar(250) NOT NULL,
  `salt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `email`, `firstname`, `middlename`, `lastname`, `role`, `lastloggedin`, `status`, `birthdate`, `birthmonth`, `birthyear`, `idNumber`, `SQID`, `SQAnswer`, `salt`) VALUES
(2, 'teddyboi', 'test123', 'teddy_lim@gmail.com', 'Ted', 'Go', 'Lim', '1', '2017-07-14 23:54:14', '1', 19, 5, 1996, 11342498, 1, 'Dog', NULL),
(3, 'hazel_lim', 'test456', 'hazel_anne@gmail.com', 'Hazel', 'Legaspi', 'Brosas', '1', '2017-07-14 23:54:14', '1', 8, 11, 1997, 11425598, 1, 'Pig', NULL),
(4, 'randolph_yu', 'randy_santiago', 'randolph_yu@gmail.com', 'Randolph', 'Lim', 'Yu', '1', '2017-07-14 23:54:19', '-1', 28, 11, 1997, 11433523, 1, 'Dinosaur', NULL),
(5, 'den_silva', 'denise_123', 'denise_silva@gmail.com', 'Denise Anne', 'Restua', 'Silva', '1', '2017-07-14 23:54:14', '1', 1, 4, 1997, 11421234, 2, 'Grahams', NULL),
(6, 'admin_1', 'admin_123', 'admin@gmail.com', 'Admin One', 'One', 'Test', '4', '2017-07-14 23:54:14', '1', 1, 1, 1996, 12345678, 1, 'Cat', NULL),
(8, 'librarym_1', 'librarym_123', 'librarym@gmail.com', 'John', 'Israel', 'Caingles', '2', '2017-07-14 23:54:14', '1', 2, 2, 1996, 12112456, 1, 'Pig', NULL),
(9, 'librarys_1', 'librarys_123', 'librarys@gmail.com', 'Danica', 'Castro', 'Sevilla', '3', '2017-07-14 23:54:14', '1', 3, 3, 1996, 12345612, 1, 'Dog', NULL),
(10, 'hazelanne', '[C@2d349e12', 'hazel_brosas@gmail.com', 'Hazel', 'Legaspi', 'Brosas', '1', '2017-08-10 20:00:40', '-1', 8, 11, 1997, 11425598, 1, 'Oyteza', '[C@c3273f9'),
(11, 'hazelbrosas', '[C@6c999f2', 'hazelanne@gmail.com', 'Hazel', 'Lee', 'Bee', '1', '2017-08-10 20:05:24', '-1', 8, 11, 1997, 11425598, 2, 'Blacky', '[C@7f24c04');

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `roleid` int(11) NOT NULL,
  `roletype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`roleid`, `roletype`) VALUES
(1, 'Student'),
(2, 'Library Manager'),
(3, 'Library Staff'),
(4, 'Administrator'),
(5, 'Employee'),
(6, 'Guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`catalogid`);

--
-- Indexes for table `catalogtype`
--
ALTER TABLE `catalogtype`
  ADD PRIMARY KEY (`catalogid`);

--
-- Indexes for table `meetingroom`
--
ALTER TABLE `meetingroom`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `meetingroomtype`
--
ALTER TABLE `meetingroomtype`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserveId`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewId`);

--
-- Indexes for table `secretquestion`
--
ALTER TABLE `secretquestion`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `statustype`
--
ALTER TABLE `statustype`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`,`firstname`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`roleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `catalogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `catalogtype`
--
ALTER TABLE `catalogtype`
  MODIFY `catalogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `meetingroom`
--
ALTER TABLE `meetingroom`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;
--
-- AUTO_INCREMENT for table `meetingroomtype`
--
ALTER TABLE `meetingroomtype`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserveId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `secretquestion`
--
ALTER TABLE `secretquestion`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
