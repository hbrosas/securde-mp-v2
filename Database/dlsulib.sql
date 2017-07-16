CREATE DATABASE  IF NOT EXISTS `dlsulib` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dlsulib`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dlsulib
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `catalogId` int(11) NOT NULL,
  `DateBorrowed` datetime NOT NULL,
  `dateExpectReturn` datetime NOT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`borrowId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,1,1,'2017-07-06 05:52:16','2017-07-11 05:52:16',-1),(2,2,2,'2017-07-06 05:52:16','2017-07-11 05:52:16',-1);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `catalogid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `catalogType` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tags` varchar(250) NOT NULL,
  PRIMARY KEY (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,'Challengers of the Unknown','Ron Goulart',1977,'	Dell','ABCD.1234.1977','2','4','Gangster'),(2,'A Life in the Streets','Eugene Lim',2017,'Ted Publishing House','EGFD.1451.2017','2 ','4','Blood, Sweat, Tears'),(3,'Buhay ng Gangsta','Smugglaz',2016,'187 Mobstaz','ABGE.2031.2016','1','4','Streets'),(4,'Blithe Spirit','	Noël Coward',1941,'Noel','P112.BPC3.1941','2','4','Spirit'),(5,'The Lord of The Rings','J. R. R. Tolkien',1955,'Allen & Unwin','AZJP.12BP.1955','1','4','Rings, Lord'),(6,'Kingdom Come','Elliot S. Maggin, with Mark Waid, Alex Ross',1998,'Warner Books','POG1.0986.1998','1','4','Kingdom'),(7,'Three Little Bears','Yemear ',2017,'Ming Publishing House','IUP1.1023.2017','1','4','Bears, Ming, Ling, Mong, Long'),(8,'The Adventures of Superman','George Lowther',1979,'Kassel Books ','YTIZ.1B31.1979','1','4','Superman'),(9,'Batman & Robin','Michael Jan Friedman',1997,'Warner Books','QWER.4321.1997','1','4','Batman, Robin, Bat'),(10,'Steel','Dean Wesley Smith',1997,'Tor Books','POI6.1409.1997','1','4','Man of Steel, Steel'),(17,'Secure Internet of Things','	Dr.	Thiemo	Voigt',2017,'SICS Swedish Lab','POZS.1095.2017','3','4','Internet of Things, Internet');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogtype`
--

DROP TABLE IF EXISTS `catalogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogtype` (
  `catalogid` int(11) NOT NULL AUTO_INCREMENT,
  `catalogtype` varchar(45) NOT NULL,
  PRIMARY KEY (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogtype`
--

LOCK TABLES `catalogtype` WRITE;
/*!40000 ALTER TABLE `catalogtype` DISABLE KEYS */;
INSERT INTO `catalogtype` VALUES (1,'Book'),(2,'Magazine'),(3,'Thesis');
/*!40000 ALTER TABLE `catalogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingroom`
--

DROP TABLE IF EXISTS `meetingroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetingroom` (
  `roomId` int(11) NOT NULL AUTO_INCREMENT,
  `statusId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `startTimeslot` time NOT NULL,
  `endTimeslot` time NOT NULL,
  PRIMARY KEY (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingroom`
--

LOCK TABLES `meetingroom` WRITE;
/*!40000 ALTER TABLE `meetingroom` DISABLE KEYS */;
INSERT INTO `meetingroom` VALUES (253,1,1,'07:00:00','07:30:00'),(254,1,1,'07:30:00','08:00:00'),(255,1,1,'08:00:00','08:30:00'),(256,1,1,'08:30:00','09:30:00'),(257,1,1,'09:30:00','10:00:00'),(258,1,1,'10:00:00','10:30:00'),(259,1,1,'10:30:00','11:00:00'),(260,1,1,'11:00:00','11:30:00'),(261,1,1,'11:30:00','12:00:00'),(262,1,1,'12:00:00','12:30:00'),(263,1,1,'12:30:00','13:00:00'),(264,1,1,'13:00:00','13:30:00'),(265,1,1,'13:30:00','14:00:00'),(266,1,1,'14:00:00','14:30:00'),(267,1,1,'14:30:00','15:00:00'),(268,1,1,'15:00:00','15:30:00'),(269,1,1,'15:30:00','16:00:00'),(270,1,1,'16:00:00','16:30:00'),(271,1,1,'16:30:00','17:00:00'),(272,1,1,'17:00:00','17:30:00'),(273,1,1,'17:30:00','18:00:00'),(274,1,1,'18:00:00','18:30:00'),(275,1,1,'18:30:00','19:00:00'),(276,1,1,'19:00:00','19:30:00'),(277,1,1,'19:30:00','20:00:00'),(278,1,2,'07:00:00','07:30:00'),(279,1,2,'07:30:00','08:00:00'),(280,1,2,'08:00:00','08:30:00'),(281,1,2,'08:30:00','09:00:00'),(282,1,2,'09:00:00','09:30:00'),(283,1,2,'09:30:00','10:00:00'),(284,1,2,'10:00:00','10:30:00'),(285,1,2,'10:30:00','11:00:00'),(286,1,2,'11:00:00','11:30:00'),(287,1,2,'11:30:00','12:00:00'),(288,1,2,'12:00:00','12:30:00'),(289,1,2,'12:30:00','13:00:00'),(290,1,2,'13:00:00','13:30:00'),(291,1,2,'13:30:00','14:00:00'),(292,1,2,'14:00:00','14:30:00'),(293,1,2,'14:30:00','15:00:00'),(294,1,2,'15:00:00','15:30:00'),(295,1,2,'15:30:00','16:00:00'),(296,1,2,'16:00:00','16:30:00'),(297,1,2,'16:30:00','17:00:00'),(298,1,2,'17:00:00','17:30:00'),(299,1,2,'17:30:00','18:00:00'),(300,1,2,'18:00:00','18:30:00'),(301,1,2,'18:30:00','19:00:00'),(302,1,2,'19:00:00','19:30:00'),(303,1,2,'19:30:00','20:00:00'),(304,1,3,'07:00:00','07:30:00'),(305,1,3,'07:30:00','08:00:00'),(306,1,3,'08:00:00','08:30:00'),(307,1,3,'08:30:00','09:30:00'),(308,1,3,'09:30:00','10:00:00'),(309,1,3,'10:00:00','10:30:00'),(310,1,3,'10:30:00','11:00:00'),(311,1,3,'11:00:00','11:30:00'),(312,1,3,'11:30:00','12:00:00'),(313,1,3,'12:00:00','12:30:00'),(314,1,3,'12:30:00','13:00:00'),(315,1,3,'13:00:00','13:30:00'),(316,1,3,'13:30:00','14:00:00'),(317,1,3,'14:00:00','14:30:00'),(318,1,3,'14:30:00','15:00:00'),(319,1,3,'15:00:00','15:30:00'),(320,1,3,'15:30:00','16:00:00'),(321,1,3,'16:30:00','17:00:00'),(322,1,3,'17:00:00','17:30:00'),(323,1,3,'17:30:00','18:00:00'),(324,1,3,'18:00:00','18:30:00'),(325,1,3,'18:30:00','19:00:00'),(326,1,3,'19:00:00','19:30:00'),(327,1,3,'19:30:00','20:00:00'),(328,1,4,'07:00:00','07:30:00'),(329,1,4,'07:30:00','08:00:00'),(330,1,4,'08:00:00','08:30:00'),(331,1,4,'08:30:00','09:00:00'),(332,1,4,'09:00:00','09:30:00'),(333,1,4,'09:30:00','10:00:00'),(334,1,4,'10:00:00','10:30:00'),(335,1,4,'10:30:00','11:00:00'),(336,1,4,'11:00:00','11:30:00'),(337,1,4,'11:30:00','12:00:00'),(338,1,4,'12:00:00','12:30:00'),(339,1,4,'12:30:00','13:00:00'),(340,1,4,'13:00:00','13:30:00'),(341,1,4,'13:30:00','14:00:00'),(342,1,4,'14:00:00','14:30:00'),(343,1,4,'14:30:00','15:00:00'),(344,1,4,'15:00:00','15:30:00'),(345,1,4,'15:30:00','16:00:00'),(346,1,4,'16:00:00','17:00:00'),(347,1,4,'17:00:00','17:30:00'),(348,1,4,'17:30:00','18:00:00'),(349,1,4,'18:00:00','18:30:00'),(350,1,4,'18:30:00','19:00:00'),(351,1,4,'19:00:00','19:30:00'),(352,1,4,'19:30:00','20:00:00'),(353,1,5,'07:00:00','07:30:00'),(354,1,5,'07:30:00','08:00:00'),(355,1,5,'08:00:00','08:30:00'),(356,1,5,'08:30:00','09:00:00'),(357,1,5,'09:00:00','09:30:00'),(358,1,5,'09:30:00','10:00:00'),(359,1,5,'10:00:00','10:30:00'),(360,1,5,'10:30:00','11:00:00'),(361,1,5,'11:00:00','11:30:00'),(362,1,5,'11:30:00','12:00:00'),(363,1,5,'12:00:00','12:30:00'),(364,1,5,'12:30:00','13:00:00'),(365,1,5,'13:00:00','13:30:00'),(366,1,5,'13:30:00','14:00:00'),(367,1,5,'14:00:00','14:30:00'),(368,1,5,'14:30:00','15:00:00'),(369,1,5,'15:00:00','15:30:00'),(370,1,5,'15:30:00','16:00:00'),(371,1,5,'16:00:00','16:30:00'),(372,1,5,'16:30:00','17:00:00'),(373,1,5,'17:00:00','17:30:00'),(374,1,5,'17:30:00','18:00:00'),(375,1,5,'18:00:00','18:30:00'),(376,1,5,'18:30:00','19:00:00'),(377,1,5,'19:00:00','19:30:00'),(378,1,5,'19:30:00','20:00:00');
/*!40000 ALTER TABLE `meetingroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingroomtype`
--

DROP TABLE IF EXISTS `meetingroomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetingroomtype` (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(45) NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingroomtype`
--

LOCK TABLES `meetingroomtype` WRITE;
/*!40000 ALTER TABLE `meetingroomtype` DISABLE KEYS */;
INSERT INTO `meetingroomtype` VALUES (1,'Michaelangelo'),(2,'Donatello'),(3,'Leonardo'),(4,'Raphael'),(5,'Boticelli');
/*!40000 ALTER TABLE `meetingroomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `reserveId` int(11) NOT NULL AUTO_INCREMENT,
  `roomtimeslotId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateReserved` varchar(45) NOT NULL,
  `statusId` int(11) NOT NULL,
  PRIMARY KEY (`reserveId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,'2017-07-06 05:52:16',-1),(2,2,2,'2017-07-10 06:00:16',-1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `reviewId` int(11) NOT NULL AUTO_INCREMENT,
  `catalogId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `dateReviewed` datetime DEFAULT NULL,
  PRIMARY KEY (`reviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'\"Very nice read\"','2017-07-10 10:00:00'),(2,2,2,'\"Wow\"','2017-07-13 09:00:00'),(3,3,3,'\"Nice Book!\"','2017-07-12 12:00:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretquestion`
--

DROP TABLE IF EXISTS `secretquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secretquestion` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretquestion`
--

LOCK TABLES `secretquestion` WRITE;
/*!40000 ALTER TABLE `secretquestion` DISABLE KEYS */;
INSERT INTO `secretquestion` VALUES (1,'What is your mother\'s maiden name?'),(2,'What is the name of your first pet?'),(3,'What is the name of your first love?');
/*!40000 ALTER TABLE `secretquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statustype`
--

DROP TABLE IF EXISTS `statustype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statustype` (
  `statusid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statustype`
--

LOCK TABLES `statustype` WRITE;
/*!40000 ALTER TABLE `statustype` DISABLE KEYS */;
INSERT INTO `statustype` VALUES (-1,'Inactive'),(0,'Pending'),(1,'Active'),(2,'Out'),(3,'Reserved'),(4,'Available');
/*!40000 ALTER TABLE `statustype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`userId`,`firstname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'teddyboi','test123','teddy_lim@gmail.com','Ted','Go','Lim','1','2017-07-14 23:54:14','1',19,5,1996,11342498,1,'Dog'),(3,'hazel_lim','test456','hazel_anne@gmail.com','Hazel','Legaspi','Brosas','1','2017-07-14 23:54:14','1',8,11,1997,11425598,1,'Pig'),(4,'randolph_yu','randy_santiago','randolph_yu@gmail.com','Randolph','Lim','Yu','1','2017-07-14 23:54:19','-1',28,11,1997,11433523,1,'Dinosaur'),(5,'den_silva','denise_123','denise_silva@gmail.com','Denise Anne','Restua','Silva','1','2017-07-14 23:54:14','1',1,4,1997,11421234,2,'Grahams'),(6,'admin_1','admin_123','admin@gmail.com','Admin One','One','Test','4','2017-07-14 23:54:14','1',1,1,1996,12345678,1,'Cat'),(8,'librarym_1','librarym_123','librarym@gmail.com','John','Israel','Caingles','2','2017-07-14 23:54:14','1',2,2,1996,12112456,1,'Pig'),(9,'librarys_1','librarys_123','librarys@gmail.com','Danica','Castro','Sevilla','3','2017-07-14 23:54:14','1',3,3,1996,12345612,1,'Dog');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `roletype` varchar(45) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,'Student'),(2,'Library Manager'),(3,'Library Staff'),(4,'Administrator'),(5,'Employee'),(6,'Guest');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-16 10:04:05
