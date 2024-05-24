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
-- Table structure for table `DataMindsApp_payments`
--

DROP TABLE IF EXISTS `DataMindsApp_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DataMindsApp_payments` (
  `payID` int NOT NULL AUTO_INCREMENT,
  `payAmount` decimal(10,2) NOT NULL,
  `payDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payMethod` varchar(50) NOT NULL,
  `promoCode` varchar(50) DEFAULT NULL,
  `member_id` int NOT NULL,
  PRIMARY KEY (`payID`),
  KEY `DataMindsApp_payments_memberID_id_677248f2` (`member_id`),
  CONSTRAINT `DataMindsApp_payment_member_id_f45ffa3d_fk_DataMinds` FOREIGN KEY (`member_id`) REFERENCES `DataMindsApp_members` (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataMindsApp_payments`
--

LOCK TABLES `DataMindsApp_payments` WRITE;
/*!40000 ALTER TABLE `DataMindsApp_payments` DISABLE KEYS */;
INSERT INTO `DataMindsApp_payments` VALUES (1,50.00,'2024-04-21 12:37:24','Credit Card','SPRING2024',1),(2,30.00,'2024-04-21 12:37:24','PayPal',NULL,2),(3,20.00,'2024-04-21 12:37:24','Credit Card',NULL,3),(4,40.00,'2024-04-21 12:37:24','Cash',NULL,4),(5,25.00,'2024-04-21 12:37:24','Credit Card','NEW25OFF',5);
/*!40000 ALTER TABLE `DataMindsApp_payments` ENABLE KEYS */;
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
