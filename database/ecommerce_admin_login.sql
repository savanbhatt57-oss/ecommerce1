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
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (1,'savanbhatt57@gmail.com','4567'),(2,'KATHIAJAY@123GMAIL.COM','123'),(3,'raj123@gmail.com','123'),(4,'raj123@gmail.com','123'),(5,'ajaykathi@123gmail.com','789'),(6,'ajaykathi@123gmail.com','789'),(7,'bhatt@12gmail.com','1234567'),(8,'savanbhatt57@gmail.com','789'),(9,'raj67@gmail.com','123'),(10,'savanbhatt57@gmail.com','900'),(11,'admin@gmail.com','123'),(12,'savanbhatt57@gmail.com','890'),(13,'admin@gmail.com','123'),(14,'admin@gmail.com','123'),(15,'admin@gmail.com','admin123'),(16,'admin@gmail.com','123'),(17,'admin@gmail.com','1234'),(18,'admin@gmail.com','123'),(19,'admin@gmail.com','678'),(20,'admin@gmail.com','789'),(21,'ajaykathi@123gmail.com','90'),(22,'kishan@gmail.com','1234'),(23,'admin@gmail.com','123'),(24,'yug13@gmail.com','9978'),(25,'kathi@gmail.com','678'),(26,'yash@gmail.com','123'),(27,'admin@gmail.com','123'),(28,'admin@gmail.com','123'),(29,'admin@gmail.com','901'),(30,'admin@gmail.com','123'),(31,'admin@gmail.com','890'),(32,'admin@gmail.com','543'),(33,'admin@gmail.com','123'),(34,'admin@gmail.com','123'),(35,'admin@gmail.com','123'),(36,'admin@gmail.com','123'),(37,'admin56@gmail.com','123');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 10:09:41
