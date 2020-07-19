-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: greedy_maps
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `starting_points`
--

DROP TABLE IF EXISTS `starting_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starting_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `verteks` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starting_points`
--

LOCK TABLES `starting_points` WRITE;
/*!40000 ALTER TABLE `starting_points` DISABLE KEYS */;
INSERT INTO `starting_points` VALUES (1,'Keraton kesepuhan','1','-6.725.680','108.570757','','','','2020-07-18 14:14:29','2020-07-18 14:14:29'),(2,'British American Tobaaco','2','-6.718.882','108.569651','','','','2020-07-18 14:15:01','2020-07-18 14:15:01'),(3,'Keraton Kacirebonan','3','-6.724.967','108.565416','','','','2020-07-18 14:15:17','2020-07-18 14:15:17'),(4,'Taman krucuk','4','-6.699.010','108.553851','','','','2020-07-18 14:15:29','2020-07-18 14:15:29'),(5,'Stikom Poltek','5','-6.712.772','108.531418','','','','2020-07-18 14:15:41','2020-07-18 14:15:41'),(6,'Gor Bima','6','-6.730.360','108.536729','','','','2020-07-18 14:15:51','2020-07-18 14:15:51'),(7,'Terminal Harjamukti','7','-6.740.235','108.552696','','','','2020-07-18 14:16:03','2020-07-18 14:16:03'),(8,'DISBUBUDPAR','8','-6.728.812','108.539.225','','','','2020-07-18 14:16:14','2020-07-18 14:16:14');
/*!40000 ALTER TABLE `starting_points` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 21:50:02
