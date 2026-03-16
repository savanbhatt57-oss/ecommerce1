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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Logitech Mouse',2499.00,'Savan Bhatt','logitech_mouse.jpeg'),(2,'apple',120000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple.jpg'),(3,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(4,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(5,'motorla',19000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Motorola.jpg'),(6,'iphone',100000.00,'Savan Bhatt','/ecommerceapp/static/images/products/iphone.jpeg'),(7,'apple_ipaid',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(8,'ujala',6700.00,'Savan Bhatt','/ecommerceapp/static/images/products/ujala.jpg'),(9,'philips',7000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Philips.jpg'),(10,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(11,'lenvo',9000.00,'Savan Bhatt','/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(12,'apple_ipaid',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(13,'lenvo',9000.00,'Savan Bhatt','/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(14,'drones actions camera',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Drones Action Cameras.jpeg'),(15,'samsung',50000.00,'Savan Bhatt','/ecommerceapp/static/images/products/samsung_galaxy.jpeg'),(16,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(17,'oppo',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/oppo.jpg'),(18,'projector',15000.00,'Savan Bhatt','/ecommerceapp/static/images/products/projector.jpeg'),(19,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(20,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(21,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(22,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(23,'apple_ipaid',70000.00,'Bhatt Savan','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(24,'apple',120000.00,'Bhatt Savan','/ecommerceapp/static/images/products/apple.jpg'),(25,'bose',7000.00,'Bhatt Savan','/ecommerceapp/static/images/products/Bose.jpg'),(26,'philips',7000.00,'Alfiya','/ecommerceapp/static/images/products/Philips.jpg'),(27,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(28,'lenvo',9000.00,'Savan Bhatt','/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(29,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(30,'bose',7000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Bose.jpg'),(31,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(32,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(33,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(34,'apple_ipaid',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(35,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(36,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(37,'projector',15000.00,'Savan Bhatt','/ecommerceapp/static/images/products/projector.jpeg');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 10:09:42
