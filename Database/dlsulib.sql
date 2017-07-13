-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dlsulibdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
INSERT INTO `borrow` VALUES (3,1,1,'2017-07-06 05:52:16','2017-07-13 05:52:16',4),(4,2,2,'2017-07-06 05:52:16','2017-07-13 05:52:16',4);
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
INSERT INTO `catalog` VALUES (1,'Challengers of the Unknown','Ron Goulart',1977,'	Dell','United States','Magazine','4','Gangster'),(2,'A Life in the Streets','Eugene Lim',2017,'Ted Publishing House','Quezon City','Magazine ','4','Blood, Sweat, Tears'),(3,'Buhay ng Gangsta','Smugglaz',2016,'187 Mobstaz','Muntinlupa City','Book','4','Streets'),(4,'Blithe Spirit','	Noël Coward',1941,'Noel','Sweden','Magazine','4','Spirit'),(5,'The Lord of The Rings','J. R. R. Tolkien',1955,'Allen & Unwin','New Zeland','Book','4','Rings, Lord'),(6,'Kingdom Come','Elliot S. Maggin, with Mark Waid, Alex Ross',1998,'Warner Books','New York','Book','4','Kingdom'),(7,'Three Little Bears','Yemear ',2017,'Ming Publishing House','Laguna ','Book','4','Bears, Ming, Ling, Mong, Long'),(8,'The Adventures of Superman','George Lowther',1979,'Kassel Books ','North America','Book','4','Superman'),(9,'Batman & Robin','Michael Jan Friedman',1997,'Warner Books','United States','Book','4','Batman, Robin, Bat'),(10,'Steel','Dean Wesley Smith',1997,'Tor Books','Sweden','Book','4','Man of Steel, Steel'),(17,'Secure Internet of Things','	Dr.	Thiemo	Voigt',2017,'SICS Swedish Lab','Stockholm','Thesis','4','Internet of Things, Internet');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,'2017-07-06 05:52:16',1);
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
  `review` varchar(200) NOT NULL,
  `dateReviewed` datetime DEFAULT NULL,
  PRIMARY KEY (`reviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'\"Very nice read\"',NULL),(2,2,2,'\"Wow\"',NULL);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtimeslot`
--

DROP TABLE IF EXISTS `roomtimeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomtimeslot` (
  `timeslotId` int(11) NOT NULL AUTO_INCREMENT,
  `statusId` varchar(45) NOT NULL,
  `startTimeslot` varchar(45) NOT NULL,
  `endTimeslot` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  PRIMARY KEY (`timeslotId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtimeslot`
--

LOCK TABLES `roomtimeslot` WRITE;
/*!40000 ALTER TABLE `roomtimeslot` DISABLE KEYS */;
INSERT INTO `roomtimeslot` VALUES (1,'3','7:00','10:00','Leonardo'),(2,'3','10:00','12:00','MichaelAngelo');
/*!40000 ALTER TABLE `roomtimeslot` ENABLE KEYS */;
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
INSERT INTO `statustype` VALUES (-1,'Inactive'),(0,'Pending'),(1,'Active'),(2,'Reserved'),(3,'Available');
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
  `lastloggedin` int(11) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `birthdate` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `idNumber` int(25) NOT NULL,
  `SQID` int(11) NOT NULL,
  `SQAnser` varchar(250) NOT NULL,
  PRIMARY KEY (`userId`,`firstname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'teddyboi','test123','teddy_lim@gmail.com','Ted','Go','Lim','student',NULL,'1',19,5,1996,11342498,1,'Dog'),(3,'hazel_anne','test456','hazel_anne@gmail.com','Hazel','Legaspi','Brosas','studen',NULL,'1',8,11,1997,11425598,1,'Pig'),(4,'randolph_yu','randy_santiago','randolph_yu@gmail.com','Randolph','Lim','Yu','student',NULL,'-1',28,11,1997,11433523,1,'Dinosaur');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-14  2:17:37
