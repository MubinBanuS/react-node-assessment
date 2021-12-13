-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: wfm
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `wfm`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `wfm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `wfm`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `manager` varchar(30) DEFAULT NULL,
  `wfm_manager` varchar(30) DEFAULT NULL,
  `email` text,
  `lockstatus` varchar(30) DEFAULT NULL,
  `experience` decimal(5,0) DEFAULT NULL,
  `profile_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `mgr-key` (`manager`),
  KEY `wmgr-key` (`wfm_manager`),
  KEY `profile-key` (`profile_id`),
  CONSTRAINT `fkk-pfl` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`),
  CONSTRAINT `mgr-key` FOREIGN KEY (`manager`) REFERENCES `users` (`username`),
  CONSTRAINT `profile-key` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`profile_id`),
  CONSTRAINT `wmgr-key` FOREIGN KEY (`wfm_manager`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1000,'Ram Krishna','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',7,5),(1001,'Janardhan','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',4,1),(1002,'Deeraj Keshav','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',5,3),(1003,'Abdul Kadar','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',2,6),(1004,'John Paul','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',7,4),(1005,'Atul Kulkarni','bench','rohit','mithun','writevinodh@gmail.com','not_requested',5,1),(1006,'Ajay Barot','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,2),(1007,'Benny Shaw','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,5),(1008,'Akram Khan','bench','rohit','mithun','writevinodh@gmail.com','not_requested',7,5),(1009,'Bejoy Menon','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,6),(1010,'Ravi Kishore','bench','rohit','naveen','writevinodh@gmail.com','not_requested',3,6),(1011,'Nandha Kumar','bench','rohit','naveen','writevinodh@gmail.com','not_requested',5,6),(1012,'Bennet Johnson','bench','rohit','naveen','writevinodh@gmail.com','not_requested',7,2),(1013,'Priya Sen','bench','rohit','naveen','writevinodh@gmail.com','not_requested',2,1),(1014,'Roshni Agarwal','bench','rohit','naveen','writevinodh@gmail.com','not_requested',5,3),(1015,'Deepti Sinha','bench','rohit','naveen','writevinodh@gmail.com','not_requested',4,1),(1016,'Divya Sharma','bench','rohit','naveen','writevinodh@gmail.com','not_requested',7,5),(1017,'Gangaram','projectbench','karan','lokesh','writevinodh@gmail.com','request_waiting',8,2),(1018,'Shreya','projectbench','karan','lokesh','writevinodh@gmail.com','locked',2,2),(1019,'Ashwini Kulkarni','projectbench','karan','lokesh','writevinodh@gmail.com','request_waiting',2,5),(1020,'Amulya','projectbench','karan','lokesh','writevinodh@gmail.com','not_requested',7,2),(1021,'Vidharth','projectbench','karan','lokesh','writevinodh@gmail.com','not_requested',2,3),(1022,'Karthik Kumar','projectbench','faizal','mithun','writevinodh@gmail.com','request_waiting',4,4),(1023,'Swetha Chopra','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',5,1),(1024,'Akash Krishna','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',7,5),(1025,'Ajay Patel','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',3,5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `manager` varchar(30) DEFAULT NULL,
  `wfm_manager` varchar(30) DEFAULT NULL,
  `email` text,
  `lockstatus` varchar(30) DEFAULT NULL,
  `experience` decimal(5,0) DEFAULT NULL,
  `profile_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1000,'Ram Krishna','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',7,5),(1001,'Janardhan','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',4,1),(1002,'Deeraj Keshav','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',5,3),(1003,'Abdul Kadar','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',2,6),(1004,'John Paul','bench','rohit','lokesh','writevinodh@gmail.com','not_requested',7,4),(1005,'Atul Kulkarni','bench','rohit','mithun','writevinodh@gmail.com','not_requested',5,1),(1006,'Ajay Barot','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,2),(1007,'Benny Shaw','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,5),(1008,'Akram Khan','bench','rohit','mithun','writevinodh@gmail.com','not_requested',7,5),(1009,'Bejoy Menon','bench','rohit','mithun','writevinodh@gmail.com','not_requested',2,6),(1010,'Ravi Kishore','bench','rohit','naveen','writevinodh@gmail.com','not_requested',3,6),(1011,'Nandha Kumar','bench','rohit','naveen','writevinodh@gmail.com','not_requested',5,6),(1012,'Bennet Johnson','bench','rohit','naveen','writevinodh@gmail.com','not_requested',7,2),(1013,'Priya Sen','bench','rohit','naveen','writevinodh@gmail.com','not_requested',2,1),(1014,'Roshni Agarwal','bench','rohit','naveen','writevinodh@gmail.com','not_requested',5,3),(1015,'Deepti Sinha','bench','rohit','naveen','writevinodh@gmail.com','not_requested',4,1),(1016,'Divya Sharma','bench','rohit','naveen','writevinodh@gmail.com','not_requested',7,5),(1017,'Gangaram','projectbench','karan','lokesh','writevinodh@gmail.com','request_waiting',8,2),(1018,'Shreya','projectbench','karan','lokesh','writevinodh@gmail.com','locked',2,2),(1019,'Ashwini Kulkarni','projectbench','karan','lokesh','writevinodh@gmail.com','request_waiting',2,5),(1020,'Amulya','projectbench','karan','lokesh','writevinodh@gmail.com','not_requested',7,2),(1021,'Vidharth','projectbench','karan','lokesh','writevinodh@gmail.com','not_requested',2,3),(1022,'Karthik Kumar','projectbench','faizal','mithun','writevinodh@gmail.com','request_waiting',4,4),(1023,'Swetha Chopra','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',5,1),(1024,'Akash Krishna','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',7,5),(1025,'Ajay Patel','projectbench','faizal','mithun','writevinodh@gmail.com','not_requested',3,5);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Java Developer'),(2,'Backend Developer'),(3,'UI Developer'),(4,'Python Developer'),(5,'Full Stack Java Developer'),(6,'Full Stack Javascript Developer');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillmap`
--

DROP TABLE IF EXISTS `skillmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skillmap` (
  `employee_id` int DEFAULT NULL,
  `skillid` decimal(5,0) DEFAULT NULL,
  KEY `skill-empid` (`skillid`),
  KEY `skill-emp_skill` (`employee_id`),
  CONSTRAINT `skill-emp_skill` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `skill-empid` FOREIGN KEY (`skillid`) REFERENCES `skills` (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillmap`
--

LOCK TABLES `skillmap` WRITE;
/*!40000 ALTER TABLE `skillmap` DISABLE KEYS */;
INSERT INTO `skillmap` VALUES (1025,2),(1025,3),(1025,5),(1024,1),(1024,2),(1024,3),(1023,1),(1023,7),(1022,7),(1022,4),(1021,7),(1021,3),(1021,1),(1020,2),(1020,5),(1020,6),(1020,4),(1019,2),(1019,3),(1019,6),(1018,6),(1018,5),(1018,1),(1017,1),(1017,5),(1017,6),(1016,6),(1016,5),(1016,3),(1016,2),(1015,2),(1015,5),(1014,7),(1014,5),(1014,6),(1013,1),(1013,5),(1012,5),(1012,6),(1011,2),(1011,7),(1011,8),(1010,1),(1010,7),(1010,8),(1009,8),(1009,7),(1008,2),(1008,3),(1004,4),(1004,5),(1004,6),(1005,1),(1005,5),(1006,5),(1006,6),(1007,2),(1007,3),(1007,7),(1003,2),(1003,3),(1003,8),(1002,1),(1002,7),(1001,1),(1001,5),(1001,6),(1000,1),(1000,2),(1000,3);
/*!40000 ALTER TABLE `skillmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skillid` decimal(5,0) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Core Java'),(2,'Spring Boot'),(3,'Angular'),(4,'Python'),(5,'SQL'),(6,'PLSQL'),(7,'REACT JS'),(8,'NODE JS');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softlock`
--

DROP TABLE IF EXISTS `softlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `softlock` (
  `employee_id` int DEFAULT NULL,
  `manager` varchar(30) DEFAULT NULL,
  `reqdate` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `lastupdated` date DEFAULT NULL,
  `lockid` int NOT NULL AUTO_INCREMENT,
  `requestmessage` text,
  `wfmremark` text,
  `managerstatus` varchar(30) DEFAULT 'awaiting_approval',
  `mgrstatuscomment` text,
  `mgrlastupdate` date DEFAULT NULL,
  PRIMARY KEY (`lockid`),
  KEY `sl-mgr-key` (`manager`),
  CONSTRAINT `sl-mgr-key` FOREIGN KEY (`manager`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softlock`
--

LOCK TABLES `softlock` WRITE;
/*!40000 ALTER TABLE `softlock` DISABLE KEYS */;
INSERT INTO `softlock` VALUES (1017,'rohit','2020-05-27','approved','2020-05-27',1013,'I Want This Resource',NULL,'rejected','I Have found someone better','2020-05-27'),(1018,'rohit','2020-05-27','approved','2020-05-27',1014,'Please I need this resource',NULL,'accepted',NULL,'2020-05-27'),(1017,'rohit','2020-05-28','approved','2020-05-28',1015,'Please Please Give me this resource',NULL,'awaiting_confirmation',NULL,NULL),(1019,'rohit','2021-12-06','waiting','2021-12-06',1016,'Need this employee',NULL,NULL,NULL,NULL),(1022,'rohit','2021-12-06','waiting','2021-12-06',1017,'I need this employee',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `softlock` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lock_trigger` AFTER INSERT ON `softlock` FOR EACH ROW begin
update employee set lockstatus='request_waiting' where employee_id=NEW.employee_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `lock_update_trigger` AFTER UPDATE ON `softlock` FOR EACH ROW begin    if NEW.status='declined' or NEW.managerstatus='rejected' then     update employee set lockstatus='not_requested' where employee_id=NEW.employee_id; elseif NEW.status='approved' and NEW.managerstatus='awaiting_approval' then    update employee set lockstatus='awaiting_confirmation' where employee_id=NEW.employee_id; elseif NEW.managerstatus='accepted' then     update employee set lockstatus='locked' where employee_id=NEW.employee_id; end if;end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL,
  `email` text,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bhargav','pass@123','Bhargav Sharma','adm','vinodhkc.leo@gmail.com'),('faizal','pass@123','Faizal Ahmed','manager','vinodhkc.leo@gmail.com'),('karan','pass@123','Karan Lal','manager','vinodhkc.leo@gmail.com'),('lokesh','pass@123','Lokesh sinha','wfm-member','vinodhkc.leo@gmail.com'),('mithun','pass@123','Mithun Chawla','wfm-member','vinodhkc.leo@gmail.com'),('naveen','pass@123','Naveen Kumar','wfm-member','vinodhkc.leo@gmail.com'),('rohit','pass@123','Rohit Sharma','manager','vinodhkc.leo@gmail.com');
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

-- Dump completed on 2021-12-07 10:49:27
