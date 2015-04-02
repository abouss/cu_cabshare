-- MySQL dump 10.13  Distrib 5.6.17, for osx10.9 (x86_64)
--
-- Host: cs4111.cfb0w4yecpl2.us-west-2.rds.amazonaws.com    Database: cs4111
-- ------------------------------------------------------
-- Server version	5.6.19-log

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airlines` (
  `line_id` int(11) NOT NULL DEFAULT '0',
  `line_name` varchar(50) DEFAULT NULL,
  `line_desc` text,
  PRIMARY KEY (`line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (2001,'Delta','US'),(2002,'Korean Air','Asia'),(2003,'Air Canada','N. America'),(2004,'Air France','Europe'),(2005,'Lufthansa','Europe'),(2006,'Jet Blue','N. America'),(2007,'British Airways','Europe'),(2008,'ANA','Asia'),(2009,'United','US'),(2010,'American Airlines','US'),(2011,'Jet Airways','Asia');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `airport_name` varchar(20) DEFAULT NULL,
  `terminal` varchar(10) DEFAULT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES ('LaGuardia','A',3001),('LaGuardia','B',3002),('LaGuardia','C',3003),('LaGuardia','D',3004),('JFK','1',3005),('JFK','2',3006),('JFK','4',3007),('JFK','5',3008),('JFK','7',3009),('JFK','8',3010),('Newark','A',3011),('Newark','B',3012),('Newark','C',3013);
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus_loc`
--

DROP TABLE IF EXISTS `campus_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus_loc` (
  `c_id` int(11) NOT NULL,
  `school` varchar(100) DEFAULT NULL,
  `dorm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus_loc`
--

LOCK TABLES `campus_loc` WRITE;
/*!40000 ALTER TABLE `campus_loc` DISABLE KEYS */;
INSERT INTO `campus_loc` VALUES (1000,'Columbia','Carman'),(1001,'Columbia','Schapiro'),(1002,'Columbia','Woodbridge'),(1003,'Columbia','Wien'),(1004,'Columbia','EC'),(1005,'Barnard','600'),(1006,'Barnard','616'),(1007,'Barnard','620'),(1008,'Columbia','Watt'),(1009,'Columbia','McBain'),(1010,'Columbia','Wallach'),(1011,'Columbia','Hartley'),(1012,'Barnard','Sulzberger'),(1013,'Barnard','Reid'),(1014,'Barnard','Hewit');
/*!40000 ALTER TABLE `campus_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `a_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `f_datetime` datetime NOT NULL,
  PRIMARY KEY (`a_id`,`line_id`),
  CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `airports` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (3001,2001,'2015-06-02 16:45:00'),(3002,2002,'2015-06-03 16:45:00'),(3003,2003,'2015-06-04 16:45:00'),(3004,2004,'2015-06-05 16:45:00'),(3005,2005,'2015-06-06 16:45:00'),(3006,2006,'2015-06-07 16:45:00'),(3007,2007,'2015-06-08 16:45:00'),(3008,2008,'2015-06-09 16:45:00'),(3009,2009,'2015-06-10 16:45:00'),(3010,2010,'2015-06-11 16:45:00'),(3011,2011,'2015-06-12 16:45:00');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `m_id` int(11) NOT NULL,
  `m_datetime` datetime DEFAULT NULL,
  `m_body` text,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'2015-07-07 09:45:00','this was awesome'),(2,'2015-07-08 09:45:00','really, really bad.'),(3,'2015-07-09 09:45:00','embarassingly smelly'),(4,'2015-07-10 09:45:00','took way too long and driver couldnt find us'),(5,'2015-07-11 09:45:00','was late for my flight'),(6,'2015-07-12 09:45:00','loved the driver and car!'),(7,'2015-07-13 09:45:00','lifechanging in all the wrong ways'),(8,'2015-07-14 09:45:00','so happy I cant even explain it!'),(9,'2015-07-15 09:45:00','this cab ride was absolutely dreadful'),(10,'2015-07-16 09:45:00','It was an average experience.'),(11,'2015-07-17 09:45:00','Whats so great about cabs anyways?');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `price` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `p_datetime` datetime NOT NULL,
  `a_id` int(11) NOT NULL,
  PRIMARY KEY (`t_id`,`c_id`,`price`,`a_id`,`p_datetime`),
  UNIQUE KEY `p_datetime` (`p_datetime`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `taxis` (`t_id`),
  CONSTRAINT `prices_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `campus_loc` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (20,4001,1000,'2015-02-02 09:30:00',3001),(30,4002,1001,'2015-02-03 09:30:00',3002),(40,4003,1002,'2015-02-04 09:30:00',3003),(30,4004,1003,'2015-02-05 09:30:00',3004),(20,4005,1004,'2015-02-06 09:30:00',3005),(50,4006,1005,'2015-02-07 09:30:00',3006),(40,4007,1006,'2015-02-08 09:30:00',3007),(30,4008,1007,'2015-02-09 09:30:00',3008),(20,4005,1008,'2015-02-10 09:30:00',3009),(60,4006,1009,'2015-02-11 09:30:00',3010),(40,4007,1010,'2015-02-12 09:30:00',3011);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `r_id` varchar(10) NOT NULL,
  `t_id` int(11) NOT NULL,
  `r_title` varchar(100) DEFAULT NULL,
  `r_body` text,
  `r_rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`r_id`,`t_id`),
  KEY `t_id` (`t_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `taxis` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('5001',4001,'HORRIBLE','Absolutely stay away at all costs - the guy took to me into an alleyway and mugged me!',1),('5002',4002,'Great car service!','This service is awesome and I will definitely use it again.',8),('5003',4003,'Enormous ripoff.','The guy didnt even run the meter and claimed it was broken.',1),('5004',4004,'Not a happy camper.','The driver was extremely rude.',2),('5005',4005,'Elated with this service!','The driver was really nice',9),('5006',4006,'Like usual','It was average in every way.',5),('5007',4007,'A Great Experience','The car was clean and smelled great. It even showed up early!',8),('5008',4008,'The Great Gatsby of Taxis','No words to describe how wonderful my experience was.',10),('5009',4001,'Life-changing!','I ended up marrying my taxi driver - he was awesome!',10),('5010',4002,'Will never use again','Wasted my time completely',1),('5011',4003,'STAY AWAY','Dont even think about it',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rides` (
  `uni` varchar(6) NOT NULL,
  `c_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_datetime` datetime NOT NULL,
  PRIMARY KEY (`uni`,`c_id`,`a_id`,`line_id`,`t_id`,`p_datetime`),
  UNIQUE KEY `p_datetime` (`p_datetime`),
  KEY `c_id` (`c_id`),
  KEY `t_id` (`t_id`),
  KEY `line_id` (`line_id`),
  CONSTRAINT `rides_ibfk_1` FOREIGN KEY (`uni`) REFERENCES `users` (`uni`),
  CONSTRAINT `rides_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `campus_loc` (`c_id`),
  CONSTRAINT `rides_ibfk_3` FOREIGN KEY (`t_id`) REFERENCES `taxis` (`t_id`),
  CONSTRAINT `rides_ibfk_4` FOREIGN KEY (`p_datetime`) REFERENCES `prices` (`p_datetime`),
  CONSTRAINT `rides_ibfk_5` FOREIGN KEY (`line_id`) REFERENCES `airlines` (`line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
INSERT INTO `rides` VALUES ('ab3750',1000,3001,2001,4001,'2015-02-03 09:30:00'),('ab3750',1001,3002,2002,4002,'2015-02-02 09:30:00'),('lo2258',1002,3003,2003,4003,'2015-02-04 09:30:00'),('lo2258',1003,3004,2004,4004,'2015-02-05 09:30:00'),('aa3266',1004,3005,2005,4005,'2015-02-06 09:30:00'),('lo2258',1006,3007,2007,4007,'2015-02-08 09:30:00'),('lo2258',1007,3008,2008,4008,'2015-02-09 09:30:00'),('pe2185',1010,3011,2011,4003,'2015-02-07 09:30:00');
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxis`
--

DROP TABLE IF EXISTS `taxis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxis` (
  `t_name` varchar(20) DEFAULT NULL,
  `t_id` int(11) NOT NULL,
  `t_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxis`
--

LOCK TABLES `taxis` WRITE;
/*!40000 ALTER TABLE `taxis` DISABLE KEYS */;
INSERT INTO `taxis` VALUES ('Yellow Cab',4001,'Most popular'),('Uber',4002,'New and cool'),('Quick Ride Corp',4003,'Based in Manhattan'),('Future Cab',4004,'Financial district'),('Metroline',4005,'Brooklyn'),('Harlem Car Service',4006,'Harlem'),('Hoyt Limo',4007,'Queens'),('New Bell',4008,'Brooklyn');
/*!40000 ALTER TABLE `taxis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_loc`
--

DROP TABLE IF EXISTS `u_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `u_loc` (
  `c_id` int(11) NOT NULL,
  `uni` varchar(6) NOT NULL,
  PRIMARY KEY (`c_id`,`uni`),
  KEY `uni` (`uni`),
  CONSTRAINT `u_loc_ibfk_1` FOREIGN KEY (`uni`) REFERENCES `users` (`uni`),
  CONSTRAINT `u_loc_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `campus_loc` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_loc`
--

LOCK TABLES `u_loc` WRITE;
/*!40000 ALTER TABLE `u_loc` DISABLE KEYS */;
INSERT INTO `u_loc` VALUES (1005,'aa3266'),(1002,'ab3750'),(1007,'lo2258'),(1011,'pe2185');
/*!40000 ALTER TABLE `u_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_msgs`
--

DROP TABLE IF EXISTS `u_msgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `u_msgs` (
  `uni` varchar(6) NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`uni`,`m_id`),
  KEY `m_id` (`m_id`),
  CONSTRAINT `u_msgs_ibfk_1` FOREIGN KEY (`uni`) REFERENCES `users` (`uni`),
  CONSTRAINT `u_msgs_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `messages` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_msgs`
--

LOCK TABLES `u_msgs` WRITE;
/*!40000 ALTER TABLE `u_msgs` DISABLE KEYS */;
INSERT INTO `u_msgs` VALUES ('ab3750',1),('pe2185',1),('ab3750',2),('pe2185',2),('ab3750',3),('pe2185',3),('ab3750',4),('pe2185',4),('aa3266',5),('ab3750',5),('pe2185',5),('ab3750',6),('pe2185',6),('ab3750',7),('lo2258',7),('pe2185',7),('ab3750',8),('pe2185',8),('ab3750',9),('pe2185',9),('ab3750',10),('pe2185',10),('ab3750',11),('pe2185',11);
/*!40000 ALTER TABLE `u_msgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uni` varchar(8) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('aa3266','Alexa','aa3266@barnard.edu','suite2'),('ab3750','Anfal','ab3750@barnard.edu','compsci'),('eae2125','Elsie','eae2125@barnard.edu','suite5'),('kmm2269','Kathy','lo2258@barnard.edu','suite3'),('lo2258','Linda','mcs2225@barnard.edu','suite4'),('mcs2225','Nina','mcs2225@barnard.edu','korea'),('meb2251','Maria','meb2251@barnard.edu','suite1'),('oah2111','Omar H','oah2111@columbia.edu','cooking'),('ooa2121','Omar','ooa2121@columbia.edu','piano'),('pe2185','Parsa','pe2185@barnard.edu','korea'),('sad2161','Shezza','sad2161@barnard.edu','imsad');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-27  3:51:33
