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
-- Table structure for table `add_product`
--

DROP TABLE IF EXISTS `add_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_product`
--

LOCK TABLES `add_product` WRITE;
/*!40000 ALTER TABLE `add_product` DISABLE KEYS */;
INSERT INTO `add_product` VALUES (28,'samsung','flexible & good','Mobile',100000,'/ecommerceapp/static/images/products/samsung.jpg'),(30,'lenvo','good','tablets',9000,'/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(32,'apple','very nice','headphones',120000,'/ecommerceapp/static/images/products/apple.jpg'),(33,'google nest','good','gadgets',8000,'/ecommerceapp/static/images/products/Google (Nest).jpeg'),(34,'bajaj','very effective','airfryer',70000,'/ecommerceapp/static/images/products/bajaj.jpeg'),(35,'mouse','very effective','accessories',1200,'/ecommerceapp/static/images/products/logitech_mouse.jpeg'),(36,'poco','flexib','Mobile',8000,'/ecommerceapp/static/images/products/poco.jpg'),(37,'oppo','flexible & efficient','Mobile',70000,'/ecommerceapp/static/images/products/oppo.jpg'),(38,'motorla','good','Mobile',19000,'/ecommerceapp/static/images/products/Motorola.jpg'),(40,'apple','good','laptop',90000,'/ecommerceapp/static/images/products/apple.jpeg'),(41,'dell','good','laptop',35000,'/ecommerceapp/static/images/products/dell.jpeg'),(42,'hp','good','laptop',45000,'/ecommerceapp/static/images/products/hp.jpeg'),(43,'lenvo','flexible','laptop',25000,'/ecommerceapp/static/images/products/lenovo.jpg'),(44,'iphone','good','Mobile',100000,'/ecommerceapp/static/images/products/iphone.jpeg'),(45,'apple_ipaid','good','tablets',70000,'/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(46,'samsung','good','tablets',50000,'/ecommerceapp/static/images/products/samsung_galaxy.jpeg'),(47,'xiamoi','good','tablets',30000,'/ecommerceapp/static/images/products/xiamoi_tablet.jpeg'),(48,'realme','good','tablets',45000,'/ecommerceapp/static/images/products/realme_tablet.jpeg'),(49,'boat','good','headphones',5000,'/ecommerceapp/static/images/products/Boat.jpeg'),(50,'bose','good','headphones',7000,'/ecommerceapp/static/images/products/Bose.jpg'),(52,'samsung','good','headphones',4000,'/ecommerceapp/static/images/products/samsung.png'),(53,'philips','good','airfryer',7000,'/ecommerceapp/static/images/products/Philips.jpg'),(54,'cosori','good','airfryer',10000,'/ecommerceapp/static/images/products/Cosori.jpg'),(55,'croma','flexible & effcient','airfryer',12000,'/ecommerceapp/static/images/products/croma.jpeg'),(56,'ujala','good','airfryer',6700,'/ecommerceapp/static/images/products/ujala.jpg'),(57,'drones actions camera','good','gadgets',8000,'/ecommerceapp/static/images/products/Drones Action Cameras.jpeg'),(58,'projector','good','gadgets',15000,'/ecommerceapp/static/images/products/projector.jpeg'),(59,'printer','good','gadgets',8000,'/ecommerceapp/static/images/products/printer.jpeg'),(60,'wifi-secuirtey','good','gadgets',6500,'/ecommerceapp/static/images/products/wifi-securitey.jpeg'),(61,'fitbit','good','accessories',4500,'/ecommerceapp/static/images/products/Fitbit.jpeg'),(62,'hp','good','accessories',4000,'/ecommerceapp/static/images/products/hp_keyboard.jpeg'),(63,'charger','good','accessories',1200,'/ecommerceapp/static/images/products/usb_charger.jpeg'),(64,'powerbank','good','accessories',7000,'/ecommerceapp/static/images/products/powerbank.jpeg'),(68,'sony','good','headphones',5500,'/ecommerceapp/static/images/products/sony.jpeg');
/*!40000 ALTER TABLE `add_product` ENABLE KEYS */;
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
