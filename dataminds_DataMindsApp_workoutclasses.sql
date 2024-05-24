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
-- Table structure for table `DataMindsApp_workoutclasses`
--

DROP TABLE IF EXISTS `DataMindsApp_workoutclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_workoutclasses` (
  `classID` int NOT NULL AUTO_INCREMENT,
  `className` varchar(100) NOT NULL,
  `classDescription` longtext,
  `classDateTime` datetime(6) DEFAULT NULL,
  `classDuration` varchar(50) DEFAULT NULL,
  `classCapacity` int DEFAULT NULL,
  `classLocation` varchar(100) DEFAULT NULL,
  `facility_id` int DEFAULT NULL,
  `employeeS_id` int DEFAULT NULL,
  `employeeT_id` int DEFAULT NULL,
  PRIMARY KEY (`classID`),
  KEY `DataMindsApp_workoutclasses_employeeS_id_8df32961` (`employeeS_id`),
  KEY `DataMindsApp_workoutclasses_employeeT_id_8f6075c3` (`employeeT_id`),
  KEY `DataMindsApp_workoutclasses_facID_id_5a2ab9e3` (`facility_id`),
  CONSTRAINT `DataMindsApp_workout_employeeS_id_8df32961_fk_DataMinds` FOREIGN KEY (`employeeS_id`) REFERENCES `DataMindsApp_staff` (`employee_id`),
  CONSTRAINT `DataMindsApp_workout_employeeT_id_8f6075c3_fk_DataMinds` FOREIGN KEY (`employeeT_id`) REFERENCES `DataMindsApp_trainers` (`employee_id`),
  CONSTRAINT `DataMindsApp_workout_facility_id_20b5842c_fk_DataMinds` FOREIGN KEY (`facility_id`) REFERENCES `DataMindsApp_facilities` (`facID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_workoutclasses`
--

LOCK TABLES `DataMindsApp_workoutclasses` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_workoutclasses` DISABLE KEYS */;
INSERT INTO `DataMindsApp_workoutclasses` VALUES (1,'Morning Yoga','Relaxing yoga session to start your day.','2024-04-21 08:00:00.000000','1 hour',20,'Yoga Studio A',NULL,NULL,4),(2,'HIIT Training','High-intensity interval training for a calorie-blasting workout.','2024-04-22 18:00:00.000000','45 minutes',15,'Gym Floor',NULL,NULL,6),(3,'Zumba Dance Party','Fun and energetic dance class to Latin and international music.','2024-04-23 17:30:00.000000','1 hour',25,'Dance Studio',NULL,NULL,8),(4,'Strength Training','Build muscle and increase strength with this weightlifting session.','2024-04-24 10:00:00.000000','1 hour',20,'Weightlifting Area',NULL,NULL,1);
/*!40000 ALTER TABLE `DataMindsApp_workoutclasses` ENABLE KEYS */;
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
