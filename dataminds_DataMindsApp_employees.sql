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
-- Table structure for table `DataMindsApp_employees`
--

DROP TABLE IF EXISTS `DataMindsApp_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_employees` (
  `eID` int NOT NULL AUTO_INCREMENT,
  `eName` varchar(255) NOT NULL,
  `eEmail` varchar(254) NOT NULL,
  `ePhoneNumber` varchar(15) NOT NULL,
  `eAddress` varchar(255) NOT NULL,
  `eAge` int NOT NULL,
  `eUsername` varchar(50) NOT NULL,
  `ePassword` varchar(50) NOT NULL,
  `etype` varchar(50) NOT NULL,
  PRIMARY KEY (`eID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_employees`
--

LOCK TABLES `DataMindsApp_employees` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_employees` DISABLE KEYS */;
INSERT INTO `DataMindsApp_employees` VALUES (1,'John Doe','john.doe@example.com','123-456-7890','123 Main St, City, Country',30,'john_doe','password123','TRAINER'),(2,'Jane Smith','jane.smith@example.com','987-654-3210','456 Elm St, City, Country',25,'jane_smith','smithpass','STAFF'),(3,'Michael Johnson','michael.johnson@example.com','555-555-5555','789 Oak St, City, Country',35,'michael_j','pass123','STAFF'),(4,'Emily Brown','emily.brown@example.com','444-444-4444','101 Pine St, City, Country',28,'em_brown','brownie','TRAINER'),(5,'Sarah Lee','sarah.lee@example.com','222-222-2222','321 Maple St, City, Country',32,'sarah_lee','sarahpass','STAFF'),(6,'David Wilson','david.wilson@example.com','333-333-3333','555 Cedar St, City, Country',27,'david_w','wilson123','TRAINER'),(7,'Jessica Garcia','jessica.garcia@example.com','666-666-6666','777 Birch St, City, Country',29,'jess_g','jesspass','STAFF'),(8,'Ryan Martinez','ryan.martinez@example.com','777-777-7777','999 Spruce St, City, Country',31,'ryan_m','martinez123','TRAINER'),(9,'Emma Taylor','emma.taylor@example.com','888-888-8888','111 Pine St, City, Country',26,'emma_t','taylorpass','STAFF'),(10,'Daniel Anderson','daniel.anderson@example.com','999-999-9999','222 Oak St, City, Country',33,'dan_anderson','danielpass','TRAINER');
/*!40000 ALTER TABLE `DataMindsApp_employees` ENABLE KEYS */;
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
