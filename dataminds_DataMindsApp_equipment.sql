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
-- Table structure for table `DataMindsApp_equipment`
--

DROP TABLE IF EXISTS `DataMindsApp_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_equipment` (
  `eqID` int NOT NULL AUTO_INCREMENT,
  `eqName` varchar(100) NOT NULL,
  `eqType` varchar(100) NOT NULL,
  `eqRestriction` varchar(255) DEFAULT NULL,
  `eqAvailability` varchar(50) NOT NULL,
  `rqQuantity` int NOT NULL,
  PRIMARY KEY (`eqID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_equipment`
--

LOCK TABLES `DataMindsApp_equipment` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_equipment` DISABLE KEYS */;
INSERT INTO `DataMindsApp_equipment` VALUES (1,'Treadmill','Cardio','Maximum usage time: 30 minutes per person','AVAILABLE',10),(2,'Dumbbells','Strength','Use appropriate weights according to your strength level','AVAILABLE',20),(3,'Yoga Mats','Yoga','Clean after use and store properly','AVAILABLE',30),(4,'Resistance Bands','Strength','Avoid overstretching; replace if worn out','AVAILABLE',15),(5,'Jump Ropes','Cardio','For indoor use only','AVAILABLE',15);
/*!40000 ALTER TABLE `DataMindsApp_equipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 21:32:55
