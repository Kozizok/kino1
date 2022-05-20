-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie` varchar(45) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `descrypion` varchar(45) DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm4108yaixndbxqhhr2n40mg2y` (`session_id`),
  CONSTRAINT `FKm4108yaixndbxqhhr2n40mg2y` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Zielona Mila',NULL,NULL,NULL),(2,'12Monkies',NULL,NULL,NULL),(3,'Lord of the Rings',NULL,NULL,NULL),(4,'Duna',NULL,NULL,NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clientName` varchar(45) DEFAULT NULL,
  `seats_id` int NOT NULL,
  `session_id` int NOT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`seats_id`,`session_id`),
  KEY `fk_reservation_seats1_idx` (`seats_id`),
  KEY `fk_reservation_session1_idx` (`session_id`),
  CONSTRAINT `fk_reservation_seats1` FOREIGN KEY (`seats_id`) REFERENCES `seats` (`id`),
  CONSTRAINT `fk_reservation_session1` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (2,'xxxx',2,1,NULL),(3,'yyyy',3,1,NULL),(6,'vvvv',4,1,NULL),(7,'ffff',5,1,NULL);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seatRow` int DEFAULT NULL,
  `seatColumn` int DEFAULT NULL,
  `avaible` varchar(3) DEFAULT NULL,
  `seat_column` int DEFAULT NULL,
  `seats_row` int DEFAULT NULL,
  `seat_row` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,1,'yes',NULL,NULL,NULL),(2,1,2,'no',NULL,NULL,NULL),(3,1,2,'no',NULL,NULL,NULL),(4,1,3,'no',NULL,NULL,NULL),(5,1,4,'no',NULL,NULL,NULL),(6,1,5,'no',NULL,NULL,NULL),(7,1,6,'no',NULL,NULL,NULL),(8,1,7,'no',NULL,NULL,NULL),(9,1,8,'no',NULL,NULL,NULL),(10,1,9,'no',NULL,NULL,NULL),(11,1,10,'no',NULL,NULL,NULL),(12,1,11,'yes',NULL,NULL,NULL),(13,1,12,'no',NULL,NULL,NULL),(14,1,13,'no',NULL,NULL,NULL),(15,1,14,'no',NULL,NULL,NULL),(16,1,15,'no',NULL,NULL,NULL),(17,1,16,'no',NULL,NULL,NULL),(18,1,17,'no',NULL,NULL,NULL),(19,1,18,'no',NULL,NULL,NULL),(20,1,19,'no',NULL,NULL,NULL),(21,1,20,'no',NULL,NULL,NULL),(22,2,1,'no',NULL,NULL,NULL),(23,2,2,'no',NULL,NULL,NULL),(24,2,3,'no',NULL,NULL,NULL),(25,2,4,'no',NULL,NULL,NULL),(26,2,5,'no',NULL,NULL,NULL),(27,2,6,'no',NULL,NULL,NULL),(28,2,7,'no',NULL,NULL,NULL),(29,2,8,'no',NULL,NULL,NULL),(30,2,9,'no',NULL,NULL,NULL),(31,2,10,'no',NULL,NULL,NULL),(32,2,11,'no',NULL,NULL,NULL),(33,2,12,'no',NULL,NULL,NULL),(34,2,13,'no',NULL,NULL,NULL),(35,2,14,'no',NULL,NULL,NULL),(36,2,15,'no',NULL,NULL,NULL),(37,2,16,'no',NULL,NULL,NULL),(38,2,17,'no',NULL,NULL,NULL),(39,2,18,'no',NULL,NULL,NULL),(40,2,19,'no',NULL,NULL,NULL),(41,2,20,'no',NULL,NULL,NULL),(42,3,1,'no',NULL,NULL,NULL),(43,3,2,'no',NULL,NULL,NULL),(44,3,3,'no',NULL,NULL,NULL),(45,3,4,'no',NULL,NULL,NULL),(46,3,5,'no',NULL,NULL,NULL),(47,3,6,'no',NULL,NULL,NULL),(48,3,7,'no',NULL,NULL,NULL),(49,3,8,'no',NULL,NULL,NULL),(50,3,9,'no',NULL,NULL,NULL),(51,3,10,'no',NULL,NULL,NULL),(52,3,11,'no',NULL,NULL,NULL),(53,3,12,'no',NULL,NULL,NULL),(54,3,13,'no',NULL,NULL,NULL),(55,3,14,'no',NULL,NULL,NULL),(56,3,15,'no',NULL,NULL,NULL),(57,3,16,'no',NULL,NULL,NULL),(58,3,17,'no',NULL,NULL,NULL),(59,3,18,'no',NULL,NULL,NULL),(60,3,19,'no',NULL,NULL,NULL),(61,3,20,'no',NULL,NULL,NULL),(62,4,1,'no',NULL,NULL,NULL),(63,4,2,'no',NULL,NULL,NULL),(64,4,3,'no',NULL,NULL,NULL),(65,4,4,'no',NULL,NULL,NULL),(66,4,5,'no',NULL,NULL,NULL),(67,4,6,'no',NULL,NULL,NULL),(68,4,7,'no',NULL,NULL,NULL),(69,4,8,'no',NULL,NULL,NULL),(70,4,9,'no',NULL,NULL,NULL),(71,4,10,'no',NULL,NULL,NULL),(72,4,11,'no',NULL,NULL,NULL),(73,4,12,'no',NULL,NULL,NULL),(74,4,13,'no',NULL,NULL,NULL),(75,4,14,'no',NULL,NULL,NULL),(76,4,15,'no',NULL,NULL,NULL),(77,4,16,'no',NULL,NULL,NULL),(78,4,17,'no',NULL,NULL,NULL),(79,4,18,'no',NULL,NULL,NULL),(80,4,19,'no',NULL,NULL,NULL),(81,4,20,'no',NULL,NULL,NULL);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movies_id` int NOT NULL,
  `session_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`movies_id`),
  KEY `fk_session_movies_idx` (`movies_id`),
  CONSTRAINT `fk_session_movies` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,1,'2022-05-13 19:00:00'),(2,4,'2022-05-30 19:00:00'),(3,3,'2022-05-28 20:00:00');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'Jan Testowy'),(2,NULL,'Anna Testowa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 12:01:11
