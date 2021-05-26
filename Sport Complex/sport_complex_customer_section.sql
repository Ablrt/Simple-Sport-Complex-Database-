-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sport_complex
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_section`
--

DROP TABLE IF EXISTS `customer_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_section` (
  `customer_ID` int NOT NULL,
  `sec_ID` int NOT NULL,
  `club_name` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_ID`,`sec_ID`,`club_name`),
  KEY `fk_customer_has_section_section1_idx` (`sec_ID`,`club_name`),
  KEY `fk_customer_has_section_customer1_idx` (`customer_ID`),
  CONSTRAINT `fk_customer_has_section_customer1` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`),
  CONSTRAINT `fk_customer_has_section_section1` FOREIGN KEY (`sec_ID`, `club_name`) REFERENCES `section` (`sec_ID`, `club_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_section`
--

LOCK TABLES `customer_section` WRITE;
/*!40000 ALTER TABLE `customer_section` DISABLE KEYS */;
INSERT INTO `customer_section` VALUES (1,1,'box'),(1,1,'swimming'),(2,1,'dancing'),(3,1,'swimming'),(3,1,'yoga'),(4,2,'dancing'),(5,2,'swimming'),(6,1,'tennis'),(8,1,'swimming'),(9,2,'box');
/*!40000 ALTER TABLE `customer_section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 22:04:52
