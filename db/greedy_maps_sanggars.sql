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
-- Table structure for table `sanggars`
--

DROP TABLE IF EXISTS `sanggars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanggars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `verteks` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanggars`
--

LOCK TABLES `sanggars` WRITE;
/*!40000 ALTER TABLE `sanggars` DISABLE KEYS */;
INSERT INTO `sanggars` VALUES (1,'Sanggar Seni Pringgawati','A','-6.748.195','108.563.093','Jl. Gn. Pangrango No.49, Larangan, Kec. Harjamukti, Kota Cirebon, Jawa Barat 45141','','2020-07-10 13:25:04','2020-07-10 16:59:30','Merupakan sanggar seni yang menyediakan berbagai macam perlengkapan kostum tari.'),(2,'Sanggar Kartoen Bitjara','B','-6.745.570','108.556.008','Jl. Kecapi No.2, RW.1, Kecapi, Kec. Harjamukti, Kota Cirebon, Jawa Barat 45142','','2020-07-10 13:25:45','2020-07-10 16:59:58','Sanggar seni yang bergerak dalam bidang seni Animasi'),(3,'Sanggar Brassco','C','-6.732.509,00','108.576.801','Jlan Karang Dawa no 143 Rt 07 Rw 03','','2020-07-10 13:26:29','2020-07-10 13:26:29','Sanggar seni yang bergerak menangani pembuatan dan pemesanan relief logam dalam bentuk motif apapun sesuai keinginan pelanggan'),(4,'Sanggar Seni Pakungwati','D','-6.726.296','108.571006','Kesepuhan Kec. Lemahwungkuk Kota Cirebon Jawa Barat 45114','','2020-07-10 13:28:06','2020-07-10 13:28:06','Sanggar seni yang bergerak menangani seni tari, serta pembuatan peralatan seni dan souvenir'),(5,'Sanggar Seni Putra Kayuwalang','E','-6.735.781','108.525323','Jl. Kayuwalang, Karyamulya, Kec. Kesambi, Kota Cirebon, Jawa Barat 45131','','2020-07-10 13:52:18','2020-07-10 13:52:18','Sanggar seni yang bergerak di bidang musik tradisional seperti mengiringi pementasan tari tradisional'),(6,'Sanggar SENI awaba','F','-6.722.371','108.566955','Gg. Astanagarib, Pekalipan, Kec. Pekalipan, Kota Cirebon, Jawa Barat 45117','','2020-07-10 13:52:42','2020-07-10 13:52:42','Sanggar seni yang bergerak di bidang Qosidah Rebana'),(7,'Sanggar Watu Gunung','G','-6.724.594','108.559741','Jl. Warna Sari No.9 Kesambi Kec. Kesambi Kota Cirebon Jawa Barat 45134','','2020-07-10 13:53:11','2020-07-10 13:53:11','Sanggar seni yang bergerak di bidang Seni Rupa dan Seni Kriya'),(8,'Sanggar Chiisai','H','-6.725.209','108.561985','Kampung Pulobaru Utara Gang 2, Pulasaren, Kota Cirebon, Jawa Barat','','2020-07-10 13:53:35','2020-07-10 13:53:35','Sanggar seni yang bergerak di Seni Karawitan, Seni Tari Tradisi, Seni Tari Kolaborasi, Musik Kolaborasi, Percussion'),(9,'Sanggar GEMA PAWARCITRA','I','-6.708.446','108.555484','Jl. Olah Raga Sukapura Kec. Kejaksan Kota Cirebon Jawa Barat 45122','','2020-07-10 13:54:02','2020-07-10 17:07:55','Sanggar seni yang bergerak di Seni Orkes Keroncong'),(10,'SanggarWakuclak Mesem Bae','J','-6.703.882','108.562245','Jl. Kapt. Samadikun Gg. Samadikun. Kebon Baru. Kejaksan','','2020-07-10 13:55:23','2020-07-10 17:07:34','Sanggar seni yang bergerak di seni Goyon (Komedi)');
/*!40000 ALTER TABLE `sanggars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-11 21:58:43
