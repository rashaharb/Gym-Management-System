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
-- Table structure for table `DataMindsApp_personalrecords`
--

DROP TABLE IF EXISTS `DataMindsApp_personalrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_personalrecords` (
  `member_id` int NOT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `calories` int DEFAULT NULL,
  `steps` int DEFAULT NULL,
  `goals` varchar(255) DEFAULT NULL,
  `badges` varchar(255) DEFAULT NULL,
  `loyaltyPoints` int DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  CONSTRAINT `DataMindsApp_persona_member_id_7e792148_fk_DataMinds` FOREIGN KEY (`member_id`) REFERENCES `DataMindsApp_members` (`memberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_personalrecords`
--

LOCK TABLES `DataMindsApp_personalrecords` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_personalrecords` DISABLE KEYS */;
INSERT INTO `DataMindsApp_personalrecords` VALUES (1,175.50,175.00,'MALE',2000,8000,'Lose 10 pounds in 2 months','Achieved 10000 steps daily for a week',50),(2,150.00,160.00,'FEMALE',1800,7000,'Run a 5k marathon','Achieved 30 consecutive days of yoga',30),(3,180.00,180.00,'FEMALE',2200,9000,'Gain muscle mass','Completed 100 pushups challenge',70),(4,140.00,155.00,'MALE',1600,6000,'Improve flexibility','Participated in 10 workout classes this month',40),(5,160.00,170.00,'FEMALE',1900,7500,'Maintain current weight and fitness level','Reached 5000 calories burned in a week',60);
/*!40000 ALTER TABLE `DataMindsApp_personalrecords` ENABLE KEYS */;
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
