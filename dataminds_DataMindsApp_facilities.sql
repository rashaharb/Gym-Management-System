-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: dataminds
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `DataMindsApp_facilities`
--

DROP TABLE IF EXISTS `DataMindsApp_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_facilities` (
  `facID` int NOT NULL AUTO_INCREMENT,
  `facName` varchar(100) NOT NULL,
  `facCapacity` int DEFAULT NULL,
  `facCost` decimal(10,2) DEFAULT NULL,
  `facAvailability` varchar(50) NOT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`facID`),
  KEY `DataMindsApp_facilities_employee_id_4b58119b` (`employee_id`),
  CONSTRAINT `DataMindsApp_facilit_employee_id_4b58119b_fk_DataMinds` FOREIGN KEY (`employee_id`) REFERENCES `DataMindsApp_staff` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_facilities`
--

LOCK TABLES `DataMindsApp_facilities` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_facilities` DISABLE KEYS */;
INSERT INTO `DataMindsApp_facilities` VALUES (1,'Swimming Pool',50,10.00,'AVAILABLE',2),(2,'Sauna',10,5.00,'AVAILABLE',3),(3,'Basketball Court',20,8.00,'AVAILABLE',5),(4,'Indoor Track',30,5.00,'AVAILABLE',7);
/*!40000 ALTER TABLE `DataMindsApp_facilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 21:32:56
