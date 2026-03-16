CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `electronics_feedback`
--

DROP TABLE IF EXISTS `electronics_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` tinyint NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics_feedback`
--

LOCK TABLES `electronics_feedback` WRITE;
/*!40000 ALTER TABLE `electronics_feedback` DISABLE KEYS */;
INSERT INTO `electronics_feedback` VALUES (1,1,'Demo User','demo@gmail.com',5,'Excellent electronics product',0,'2026-01-29 13:14:57'),(2,1,'Demo User','demo@gmail.com',5,'Excellent electronics product',0,'2026-01-29 13:17:36'),(3,1,'Demo User','demo@gmail.com',5,'Excellent electronics product',0,'2026-01-29 13:18:01'),(4,1,'Demo User','demo@gmail.com',5,'Excellent electronics product',0,'2026-01-29 13:19:12'),(5,2,'raj','raj12@gmail.com',6,'not good electronics product',0,'2026-01-29 13:19:12'),(6,1,'Demo User','demo@gmail.com',5,'Excellent electronics product',0,'2026-01-29 13:21:03'),(7,2,'raj','raj12@gmail.com',6,'not good electronics product',0,'2026-01-29 13:21:03'),(8,2,'raj','raj12@gmail.com',4,'not good electronics product',0,'2026-01-29 13:21:03'),(9,9,'User','user@gmail.com',5,'Excellent electronics product',0,'2026-02-06 19:05:04'),(10,11,'kishan','kishan@gmail.com',1,'not excellent product',0,'2026-02-06 19:08:14'),(11,15,'yug','yug@gmail.com',4,' excellent product',0,'2026-02-06 19:10:59');
/*!40000 ALTER TABLE `electronics_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 10:09:40
