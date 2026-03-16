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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(2,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(3,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(4,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(5,'ajay kathi n','kathia568@gmail.com','7476893890214055','123'),(6,'ajay kathi n','kathia568@gmail.com','7476893890214055','12345'),(7,'ajay kathi n','kathia568@gmail.com','7476893890214055','12345'),(8,'raj','raj123@gmail.com','9979898195','12345'),(9,'sagar bhatt','sagar12@gmail.com','9979898195','987'),(10,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(11,'AJAY KATHI','savanbhatt57@gmail.com','07567189039','123'),(12,'yug panday','yug13@gmail.com','7567189039','901'),(13,'Bhatt Savan','savanbhatt57@gmail.com','9979595197','901'),(14,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','991'),(15,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','001'),(16,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(17,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(18,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(19,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','@somnath141199'),(20,'xcdfgh','qfgbn@hj.com','qfghnh','qrghnmg'),(21,'Bhatt Savan','savanbhatt57@gmail.com','7567189039','2REDMI2003'),(22,'Alfiya','ak@gmail.com','1234567890','ak@123');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 10:09:39
