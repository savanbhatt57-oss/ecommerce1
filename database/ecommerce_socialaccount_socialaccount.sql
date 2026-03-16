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
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialaccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` json NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialaccount`
--

LOCK TABLES `socialaccount_socialaccount` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
INSERT INTO `socialaccount_socialaccount` VALUES (1,'google','117586881365874882285','2026-02-18 05:06:26.276059','2026-01-13 07:20:41.735518','{\"aud\": \"913826972732-kif8s7dih51bgpckh1bg7309o6jdmdu8.apps.googleusercontent.com\", \"azp\": \"913826972732-kif8s7dih51bgpckh1bg7309o6jdmdu8.apps.googleusercontent.com\", \"exp\": 1771394784, \"iat\": 1771391184, \"iss\": \"https://accounts.google.com\", \"sub\": \"117586881365874882285\", \"name\": \"Bhatt Savan\", \"email\": \"savanbhatt57@gmail.com\", \"at_hash\": \"4XHui3Cp44A04pDl8_dyRA\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocLsaHAnlNJxMtGUXs-NcPyZ-4J6ifCwXgkpGlazaGulcsgkVeMU=s96-c\", \"given_name\": \"Bhatt\", \"family_name\": \"Savan\", \"email_verified\": true}',1),(2,'google','108861515739768922653','2026-02-05 10:13:11.945790','2026-02-05 10:13:11.945837','{\"aud\": \"913826972732-kif8s7dih51bgpckh1bg7309o6jdmdu8.apps.googleusercontent.com\", \"azp\": \"913826972732-kif8s7dih51bgpckh1bg7309o6jdmdu8.apps.googleusercontent.com\", \"exp\": 1770289990, \"iat\": 1770286390, \"iss\": \"https://accounts.google.com\", \"sub\": \"108861515739768922653\", \"name\": \"SAVAN BHATT\", \"email\": \"bsavan09@gmail.com\", \"at_hash\": \"zeY8llyuuDuwX8yCRMswbw\", \"picture\": \"https://lh3.googleusercontent.com/a/ACg8ocIeOms3YzXSLrwFK7_p_DUOzMosI9rTUOIhsmkMBe-ZkgHGYw=s96-c\", \"given_name\": \"SAVAN\", \"family_name\": \"BHATT\", \"email_verified\": true}',2);
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;
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
