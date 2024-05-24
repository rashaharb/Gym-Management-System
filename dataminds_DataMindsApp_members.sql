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
-- Table structure for table `DataMindsApp_members`
--

DROP TABLE IF EXISTS `DataMindsApp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_members` (
  `memberID` int NOT NULL AUTO_INCREMENT,
  `mName` varchar(255) NOT NULL,
  `mDateOfBirth` date NOT NULL,
  `mEmail` varchar(254) NOT NULL,
  `mPhoneNumber` varchar(15) NOT NULL,
  `membershipType` varchar(50) NOT NULL,
  `membershipStartDate` date NOT NULL,
  `mAddress` varchar(255) DEFAULT NULL,
  `mAge` int NOT NULL,
  `mUsername` varchar(50) NOT NULL,
  `mPassword` varchar(50) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_members`
--

LOCK TABLES `DataMindsApp_members` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_members` DISABLE KEYS */;
INSERT INTO `DataMindsApp_members` VALUES (1,'John Doe','1990-05-15','john@example.com','+1234567890','GOLD','2022-01-01','123 Main St, City',34,'john_doe','password123'),(2,'Alice Smith','1985-09-20','alice@example.com','+9876543210','STUDENT','2022-01-01','456 Elm St, Town',39,'alice_smith','password456'),(3,'Emma Johnson','1993-03-10','emma@example.com','+1122334455','GOLD','2022-01-01','789 Oak St, Village',31,'emma_johnson','password789'),(4,'Michael Brown','1988-07-25','michael@example.com','+9988776655','GOLD','2022-01-01','987 Pine St, County',36,'michael_brown','passwordabc'),(5,'Sophia Wilson','1991-11-18','sophia@example.com','+5544332211','SILVER','2022-01-01','654 Cedar St, District',29,'sophia_wilson','passwordxyz'),(6,'Daniel Martinez','1987-02-08','daniel@example.com','+6677889900','STUDENT','2022-01-01','321 Maple St, State',35,'daniel_martinez','password789'),(7,'Olivia Lee','1994-06-30','olivia@example.com','+1122334455','SILVER','2022-01-01','159 Oak St, Town',28,'olivia_lee','password321'),(8,'Ethan Garcia','1996-04-12','ethan@example.com','+7788990011','STUDENT','2022-01-01','753 Elm St, City',26,'ethan_garcia','password567'),(9,'Ava Rodriguez','1986-08-03','ava@example.com','+9900112233','STUDENT','2022-01-01','852 Pine St, Village',35,'ava_rodriguez','password234'),(10,'Liam Lopez','1990-12-28','liam@example.com','+1122334455','SILVER','2022-01-01','369 Cedar St, County',31,'liam_lopez','password890'),(11,'Sara','2001-05-01','sara@gmail.com','+96133333333','Student Membership','2024-04-21','Beirut, Lebanon',23,'sara03','pass03');
/*!40000 ALTER TABLE `DataMindsApp_members` ENABLE KEYS */;
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
