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
-- Table structure for table `DataMindsApp_reservations`
--

DROP TABLE IF EXISTS `DataMindsApp_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_reservations` (
  `resID` int NOT NULL AUTO_INCREMENT,
  `resStartDateTime` datetime(6) NOT NULL,
  `resEndDateTime` datetime(6) NOT NULL,
  `resDuration` varchar(50) NOT NULL,
  `resType` varchar(50) NOT NULL,
  `numberOfPeople` int NOT NULL,
  `facility_id` int DEFAULT NULL,
  `member_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `wclass_id` int DEFAULT NULL,
  PRIMARY KEY (`resID`),
  KEY `DataMindsApp_reservations_classID_id_8ec8c9f9` (`wclass_id`),
  KEY `DataMindsApp_reservations_facID_id_656c56cf` (`facility_id`),
  KEY `DataMindsApp_reservations_memberID_id_66544df4` (`member_id`),
  KEY `DataMindsApp_reservations_payID_id_32391948` (`payment_id`),
  CONSTRAINT `DataMindsApp_reserva_facility_id_853a828b_fk_DataMinds` FOREIGN KEY (`facility_id`) REFERENCES `DataMindsApp_facilities` (`facID`),
  CONSTRAINT `DataMindsApp_reserva_member_id_1e2b3dca_fk_DataMinds` FOREIGN KEY (`member_id`) REFERENCES `DataMindsApp_members` (`memberID`),
  CONSTRAINT `DataMindsApp_reserva_payment_id_4007ebdb_fk_DataMinds` FOREIGN KEY (`payment_id`) REFERENCES `DataMindsApp_payments` (`payID`),
  CONSTRAINT `DataMindsApp_reserva_wclass_id_fcec8966_fk_DataMinds` FOREIGN KEY (`wclass_id`) REFERENCES `DataMindsApp_workoutclasses` (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_reservations`
--

LOCK TABLES `DataMindsApp_reservations` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_reservations` DISABLE KEYS */;
INSERT INTO `DataMindsApp_reservations` VALUES (1,'2024-04-21 08:00:00.000000','2024-04-21 09:00:00.000000','1 hour','INDIVIDUAL',1,NULL,1,1,4),(2,'2024-04-22 18:00:00.000000','2024-04-22 18:45:00.000000','45 minutes','CLASS',3,NULL,2,2,3),(3,'2024-04-23 17:30:00.000000','2024-04-23 18:30:00.000000','1 hour','GROUP',50,3,3,3,NULL),(4,'2024-04-24 10:00:00.000000','2024-04-24 11:00:00.000000','1 hour','CLASS',20,NULL,4,4,1),(5,'2024-04-25 09:30:00.000000','2024-04-25 10:15:00.000000','45 minutes','CLASS',3,NULL,5,5,2);
/*!40000 ALTER TABLE `DataMindsApp_reservations` ENABLE KEYS */;
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
