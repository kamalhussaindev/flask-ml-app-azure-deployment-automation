-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: epca
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Current Database: `epca`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `epca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `epca`;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease` (
  `disease_id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `disease_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`disease_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,27,'Begin','D:Projectenvstaticimg18863_idx5_x51_y1251_class0.png','2022-03-15 05:15:21'),(2,26,'Begin','D:Projectenvstaticimg18863_idx5_x101_y1201_class0.png','2022-03-15 05:44:53'),(3,26,'Begin','D:Projectenvstaticimg18863_idx5_x101_y1251_class0.png','2022-03-15 05:56:35'),(4,26,'Begin','D:Projectenvstaticimg18863_idx5_x101_y1301_class0.png','2022-03-15 06:08:25'),(5,26,'Begin','D:Projectenvstaticimg18863_idx5_x101_y1351_class0.png','2022-03-15 06:17:43'),(6,26,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1151_class0.png','2022-03-15 06:41:39'),(7,27,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1251_class0.png','2022-03-15 13:02:38'),(8,26,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1301_class0.png','2022-03-15 13:28:33'),(9,26,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1351_class0.png ','2022-03-15 14:16:56'),(10,26,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1401_class0.png','2022-03-15 14:46:17'),(11,27,'Begin','D:Projectenvstaticimg18863_idx5_x151_y1451_class0.png','2022-03-15 14:52:51'),(12,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y401_class0.png','2022-04-01 07:54:16'),(13,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1051_class0.png','2022-04-01 07:55:53'),(14,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1201_class0.png','2022-04-01 07:56:13'),(15,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1251_class0.png','2022-04-01 07:56:32'),(16,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1301_class0.png','2022-04-01 07:57:29'),(17,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1351_class0.png','2022-04-01 07:59:10'),(18,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1401_class0.png','2022-04-01 07:59:49'),(19,27,'Begin','D:Projectenvstaticimg18863_idx5_x201_y1451_class0.png','2022-04-01 08:00:27'),(20,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y401_class0.png','2022-04-03 14:29:22'),(21,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y451_class0.png','2022-04-08 06:44:19'),(22,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1051_class0.png','2022-04-08 06:50:08'),(23,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1151_class0.png','2022-04-08 06:52:08'),(24,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1201_class0.png','2022-04-08 06:54:02'),(25,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1251_class0.png','2022-04-11 05:21:05'),(26,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1301_class0.png','2022-04-11 05:21:23'),(27,26,'Begin','D:Projectenvstaticimg18863_idx5_x251_y1351_class0.png','2022-04-11 05:22:13'),(28,26,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y801_class1.png','2022-04-11 05:57:59'),(29,26,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y851_class1.png','2022-04-11 05:59:06'),(30,26,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y901_class1.png','2022-04-11 05:59:32'),(31,26,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y951_class1.png','2022-04-11 05:59:59'),(32,26,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y1501_class1.png','2022-04-11 06:01:31'),(33,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y1551_class1.png','2022-04-11 18:26:04'),(34,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1001_y1601_class1.png','2022-04-11 18:26:13'),(35,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y801_class1.png','2022-04-11 18:26:24'),(36,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y851_class1.png','2022-04-11 18:26:33'),(37,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y901_class1.png','2022-04-11 18:26:45'),(38,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y951_class1.png','2022-04-11 18:26:52'),(39,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1001_class1.png','2022-04-11 18:27:20'),(40,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1051_class1.png','2022-04-11 18:27:31'),(41,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1101_class1.png','2022-04-11 18:27:41'),(42,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1101_class1.png','2022-04-11 18:27:48'),(43,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1151_class1.png','2022-04-11 18:27:56'),(44,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1501_class1.png','2022-04-11 18:28:12'),(45,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1551_class1.png','2022-04-11 18:28:27'),(46,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1601_class1.png','2022-04-11 18:29:23'),(47,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1051_y1651_class1.png','2022-04-11 18:29:32'),(48,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y901_class1.png','2022-04-11 18:29:40'),(49,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y951_class1.png','2022-04-11 18:29:50'),(50,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1001_class1.png','2022-04-11 18:30:03'),(51,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1051_class1.png','2022-04-11 18:30:11'),(52,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1101_class1.png','2022-04-11 18:30:23'),(53,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1151_class1.png','2022-04-11 18:30:31'),(54,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1451_class1.png','2022-04-11 18:30:41'),(55,41,'Maligent','D:Projectenvstaticimg18863_idx5_x1101_y1501_class1.png','2022-04-11 18:30:53'),(56,42,'Begin','static/img/uploads/ehbkwoxvyo.png','2026-09-19 11:43:08'),(57,42,'Begin','static/img/uploads/zekgkgzeis.png','2026-09-19 11:43:48'),(58,42,'Begin','static/img/uploads/qopotvbqpy.png','2026-09-19 11:45:23');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_reports`
--

DROP TABLE IF EXISTS `lab_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `test_value` decimal(65,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_reports`
--

LOCK TABLES `lab_reports` WRITE;
/*!40000 ALTER TABLE `lab_reports` DISABLE KEYS */;
INSERT INTO `lab_reports` VALUES (1,9,26,1.00,'2022-04-01 05:57:04'),(2,9,27,1.00,'2022-04-01 08:01:12');
/*!40000 ALTER TABLE `lab_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_requests`
--

DROP TABLE IF EXISTS `lab_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `patient_id` int NOT NULL,
  `urgency_level` varchar(255) NOT NULL,
  `is_analyzed` tinyint NOT NULL DEFAULT '0',
  `request_date` datetime NOT NULL,
  `analysis_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_requests`
--

LOCK TABLES `lab_requests` WRITE;
/*!40000 ALTER TABLE `lab_requests` DISABLE KEYS */;
INSERT INTO `lab_requests` VALUES (5,9,26,'High',0,'2022-04-01 12:38:00',NULL);
/*!40000 ALTER TABLE `lab_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_tests`
--

DROP TABLE IF EXISTS `lab_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lab_tests` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_tests`
--

LOCK TABLES `lab_tests` WRITE;
/*!40000 ALTER TABLE `lab_tests` DISABLE KEYS */;
INSERT INTO `lab_tests` VALUES (4,'HAEMATOLOGY','HTG'),(5,'URINE ANALYSIS','UA'),(6,'Eczema','ECZ');
/*!40000 ALTER TABLE `lab_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_dob` varchar(255) DEFAULT NULL,
  `p_age` varchar(255) DEFAULT NULL,
  `p_docname` varchar(255) DEFAULT NULL,
  `p_gender` varchar(10) DEFAULT NULL,
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`p_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (26,49,'Asad','03/23/2000','22','Shahrais','Male','2022-03-01 18:22:00'),(28,49,'Komal Javed','06/12/2005','17','Shahrais','Female','2022-03-01 18:24:02'),(29,49,'Arslan','04/17/2001','21','Shahrais','Male','2022-03-01 18:24:43'),(30,52,'Hina ','09/22/1990','32','Ayesha','Female','2022-03-01 18:51:31'),(31,52,'Hamza','05/05/2002','20','Ayesha','Male','2022-03-01 18:52:23'),(32,52,'Ikram','07/16/1995','27','Ayesha','Male','2022-03-01 18:56:51'),(33,49,'Asad','02/08/1999','31','Shahrais','Male','2022-03-15 06:32:06'),(34,49,'Ahmed','03/12/2022','19','Ayesha','Male','2022-04-11 06:50:21'),(35,49,'Ahmed','03/12/2023','19','Ayesha','Male','2022-04-11 06:53:41'),(36,49,'Ahmed','03/12/2023','19','Ayesha','Male','2022-04-11 06:56:09'),(37,49,'Ahmed','03/12/2023','19','Ayesha','Male','2022-04-11 06:56:24'),(38,49,'Ahmed','03/12/2023','19','Ayesha','Male','2022-04-11 06:57:07'),(39,49,'Ahmed','03/12/2023','19','Ayesha','Male','2022-04-11 06:57:56'),(40,49,'Ahmed','03/04/2022','19','Shahrais','Male','2022-04-11 16:31:12'),(41,49,'Javaid','03/25/2000','22','Shahrais','Male','2022-04-11 18:20:36'),(43,59,'James cares','07/12/2000','26','Kamal Hussain','Male','2026-09-19 12:03:18');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests_under`
--

DROP TABLE IF EXISTS `tests_under`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests_under` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `lower_limit` decimal(65,2) NOT NULL,
  `upper_limit` decimal(65,2) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `unit_price` decimal(65,2) NOT NULL,
  `taxes` decimal(65,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests_under`
--

LOCK TABLES `tests_under` WRITE;
/*!40000 ALTER TABLE `tests_under` DISABLE KEYS */;
INSERT INTO `tests_under` VALUES (6,5,'Physical Examination',0.00,0.50,'/cmmm',120.00,0.00),(7,4,'PE',10.00,15.00,'cmm',600.00,0.00),(8,4,'Eczema',45.00,4577.00,'xsx',45.00,12.00),(9,6,'Eczema',45.00,4564.00,'xsx',45.00,45.00);
/*!40000 ALTER TABLE `tests_under` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cnic` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL DEFAULT '',
  `user_type` int NOT NULL DEFAULT '-1',
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (48,'Ihtisham Mughal','71401-2345126-9','dermatologists ','mughal.ihtisham19@gmail.com','Ihtisham','$5$rounds=535000$slAloTfuIDshE887$gssf9kY.6p4el221QI.SsgG7nv9v2k67w0Tx8/CF823','',1,'2022-02-26 16:32:58'),(49,'Shahrais Khan','71403-0352457-3','dermatologists ','abc@gmail.com','shahrais','$5$rounds=535000$fgy/tgim00u7bA12$l17Kxc2QPHHvmw1u4QdLDIrzWdTjr2lrxW2J1jWOxnA','',0,'2022-02-26 18:19:12'),(52,'Ayesha','71403-0352557-2','dermatologists ','Ayesha@gmail.com','Ayesha','$5$rounds=535000$AzkSNl0JixrKbvK3$45sBoUjnKbRSOfGWi6vnd7gocNQ8lMCMBycKmah7A1/','',0,'2022-03-01 18:34:15'),(54,'Riaz Amed','71403-5352557-3','Medical Dermatologist','riaz123@gmail.com','Riaz123','$5$rounds=535000$GJd1T1qunGVad7YM$8meQkij9s4ZKWmVGLG09dc4UBo7oIWH1X.XzipB1GK5','',-1,'2022-04-11 17:55:27'),(55,'Nazia Amjad','71403-0352857-4','Medical Dermatologist','nazia@gmail.com','Nazia','$5$rounds=535000$Q5tXMXkP.MZ/AvpK$FwDdQx4q.TgjV/8IaswNCIbNs9FCzbkJrkAGQL8cgzA','',0,'2022-04-11 17:56:41'),(56,'Wajahat Ali','71403-6352457-3','Medical Dermatologist','wajahar@gmail.com','Wajahat','$5$rounds=535000$z1qWgVyySqKCvQL/$DorO8KbYaHU9UzWSeOJFkB4Gc/QB9unREME2joyhTC5','',-1,'2022-04-11 18:03:51'),(57,'Janbaz Khan','71403-0353557-3','Surgical Dermatalogist','janbaz@gmail.com','Janbaz','$5$rounds=535000$C8LGx0wbFZ/jWTFo$A7th0zVz1WEwhmFuFIN34PYjITrO/WOB8VmyLuQeqqB','',-1,'2022-04-11 18:04:40'),(58,'Ijaz Mughal','71403-0382457-4','Surgical Dermatalogist','ijaz@gmail.com','ijaz123','$5$rounds=535000$6nN3RUNJFmH00Izd$qp7wtBR7wXyXXBEBOOhBfp1rAQq6Xr7eV8FYRLAwiR2','',-1,'2022-04-11 18:05:25'),(59,'Kamal Hussain','71042-6750452-9','Gyno','etopiyaaly611@gmail.com','docktor611','$5$rounds=535000$6.TLSuEvZNRTZWym$WK/DadqImJIpzl/5RnxGbBiTJC3.aUdEkKXAA/pTtWD','',0,'2026-09-17 13:07:51'),(60,'Kamal Hussain','71042-6750452-3','Skin Speclilist ','etopiyaaly612@gmail.com','admin611','$5$rounds=535000$gNXkdrrXcfOU2sB2$NyCAfnVX9mfRcxtgIK46araOSRfvmGE2PKK9/SEurqB','',1,'2026-09-17 14:41:03');
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

-- Dump completed on 2026-09-19 23:10:00
