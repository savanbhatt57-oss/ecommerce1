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
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailaddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`),
  KEY `account_emailaddress_email_03be32b2` (`email`),
  CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailaddress`
--

LOCK TABLES `account_emailaddress` WRITE;
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
INSERT INTO `account_emailaddress` VALUES (1,'savanbhatt57@gmail.com',1,1,1),(2,'bsavan09@gmail.com',1,1,2);
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailconfirmation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`),
  CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailconfirmation`
--

LOCK TABLES `account_emailconfirmation` WRITE;
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_product`
--

LOCK TABLES `add_product` WRITE;
/*!40000 ALTER TABLE `add_product` DISABLE KEYS */;
INSERT INTO `add_product` VALUES (24,'MOTRLA','gd & efficency','samusung',90000,'/ecommerceapp/static/images/products/Motorola.jpg'),(28,'samsung','flexible & good','Mobile',100000,'/ecommerceapp/static/images/products/samsung.jpg'),(30,'lenvo','good','tablets',9000,'/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(32,'apple','very nice','headphones',120000,'/ecommerceapp/static/images/products/apple.jpg'),(33,'google nest','good','gadgets',8000,'/ecommerceapp/static/images/products/Google (Nest).jpeg'),(34,'bajaj','very effective','airfryer',70000,'/ecommerceapp/static/images/products/bajaj.jpeg'),(35,'mouse','very effective','accessories',1200,'/ecommerceapp/static/images/products/logitech_mouse.jpeg'),(36,'poco','flexib','Mobile',8000,'/ecommerceapp/static/images/products/poco.jpg'),(37,'oppo','flexible & efficient','Mobile',70000,'/ecommerceapp/static/images/products/oppo.jpg'),(38,'motorla','good','Mobile',19000,'/ecommerceapp/static/images/products/Motorola.jpg'),(39,'acer','good','laptop',20000,'/ecommerceapp/static/images/products/acer.jpeg'),(40,'apple','good','laptop',90000,'/ecommerceapp/static/images/products/apple.jpeg'),(41,'dell','good','laptop',35000,'/ecommerceapp/static/images/products/dell.jpeg'),(42,'hp','good','laptop',45000,'/ecommerceapp/static/images/products/hp.jpeg'),(43,'lenvo','flexible','laptop',25000,'/ecommerceapp/static/images/products/lenovo.jpg'),(44,'iphone','good','Mobile',100000,'/ecommerceapp/static/images/products/iphone.jpeg'),(45,'apple_ipaid','good','tablets',70000,'/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(46,'samsung','good','tablets',50000,'/ecommerceapp/static/images/products/samsung_galaxy.jpeg'),(47,'xiamoi','good','tablets',30000,'/ecommerceapp/static/images/products/xiamoi_tablet.jpeg'),(48,'realme','good','tablets',45000,'/ecommerceapp/static/images/products/realme_tablet.jpeg'),(49,'boat','good','headphones',5000,'/ecommerceapp/static/images/products/Boat.jpeg'),(50,'bose','good','headphones',7000,'/ecommerceapp/static/images/products/Bose.jpg'),(51,'sony','good','headphones',5800,'/ecommerceapp/static/images/products/sony.jpeg'),(52,'samsung','good','headphones',4000,'/ecommerceapp/static/images/products/samsung.png'),(53,'philips','good','airfryer',7000,'/ecommerceapp/static/images/products/Philips.jpg'),(54,'cosori','good','airfryer',10000,'/ecommerceapp/static/images/products/Cosori.jpg'),(55,'croma','flexible & effcient','airfryer',12000,'/ecommerceapp/static/images/products/croma.jpeg'),(56,'ujala','good','airfryer',6700,'/ecommerceapp/static/images/products/ujala.jpg'),(57,'drones actions camera','good','gadgets',8000,'/ecommerceapp/static/images/products/Drones Action Cameras.jpeg'),(58,'projector','good','gadgets',15000,'/ecommerceapp/static/images/products/projector.jpeg'),(59,'printer','good','gadgets',8000,'/ecommerceapp/static/images/products/printer.jpeg'),(60,'wifi-secuirtey','good','gadgets',6500,'/ecommerceapp/static/images/products/wifi-securitey.jpeg'),(61,'fitbit','good','accessories',4500,'/ecommerceapp/static/images/products/Fitbit.jpeg'),(62,'hp','good','accessories',4000,'/ecommerceapp/static/images/products/hp_keyboard.jpeg'),(63,'charger','good','accessories',1200,'/ecommerceapp/static/images/products/usb_charger.jpeg'),(64,'powerbank','good','accessories',7000,'/ecommerceapp/static/images/products/powerbank.jpeg');
/*!40000 ALTER TABLE `add_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(2,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(3,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(4,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(5,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(6,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(7,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(8,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(9,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(10,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001),(11,'Savan Bhatt','Junagadh.','Junagadh','Gujarat / ગુજરાત',362001);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add email address',7,'add_emailaddress'),(26,'Can change email address',7,'change_emailaddress'),(27,'Can delete email address',7,'delete_emailaddress'),(28,'Can view email address',7,'view_emailaddress'),(29,'Can add email confirmation',8,'add_emailconfirmation'),(30,'Can change email confirmation',8,'change_emailconfirmation'),(31,'Can delete email confirmation',8,'delete_emailconfirmation'),(32,'Can view email confirmation',8,'view_emailconfirmation'),(33,'Can add social account',9,'add_socialaccount'),(34,'Can change social account',9,'change_socialaccount'),(35,'Can delete social account',9,'delete_socialaccount'),(36,'Can view social account',9,'view_socialaccount'),(37,'Can add social application',10,'add_socialapp'),(38,'Can change social application',10,'change_socialapp'),(39,'Can delete social application',10,'delete_socialapp'),(40,'Can view social application',10,'view_socialapp'),(41,'Can add social application token',11,'add_socialtoken'),(42,'Can change social application token',11,'change_socialtoken'),(43,'Can delete social application token',11,'delete_socialtoken'),(44,'Can view social application token',11,'view_socialtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'!qwdTZOyCpnGNcCvjd1cjMRCCv99qjOnM4JGiVFRS','2026-02-18 05:06:26.330147',0,'bhatt','Bhatt','Savan','savanbhatt57@gmail.com',0,1,'2026-01-13 07:20:41.679231'),(2,'!YkhC9nVsYuHHxMtiD5wH7b8ZL5TaMDPbIAcUCkyO','2026-02-05 10:13:12.006231',0,'savan','SAVAN','BHATT','bsavan09@gmail.com',0,1,'2026-02-05 10:13:11.872746');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `useremail` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Savan','Bhatt','savanbhatt57@gmail.com','product is not enought','2026-01-19 09:18:01'),(2,'raj','kacha','raj12@gmail.com','quality  is matter','2026-01-19 09:18:42'),(3,'Bhatt','Savan','savanbhatt57@gmail.com','product is done\r\n','2026-02-21 04:55:41'),(4,'Bhatt','Savan','savanbhatt57@gmail.com','very nice that','2026-02-21 05:13:46');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'account','emailaddress'),(8,'account','emailconfirmation'),(1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(9,'socialaccount','socialaccount'),(10,'socialaccount','socialapp'),(11,'socialaccount','socialtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-01-13 06:56:34.471223'),(2,'auth','0001_initial','2026-01-13 06:56:35.726838'),(3,'account','0001_initial','2026-01-13 06:56:36.068952'),(4,'account','0002_email_max_length','2026-01-13 06:56:36.161109'),(5,'account','0003_alter_emailaddress_create_unique_verified_email','2026-01-13 06:56:36.233738'),(6,'account','0004_alter_emailaddress_drop_unique_email','2026-01-13 06:56:36.348943'),(7,'account','0005_emailaddress_idx_upper_email','2026-01-13 06:56:36.417949'),(8,'account','0006_emailaddress_lower','2026-01-13 06:56:36.444440'),(9,'account','0007_emailaddress_idx_email','2026-01-13 06:56:36.541763'),(10,'account','0008_emailaddress_unique_primary_email_fixup','2026-01-13 06:56:36.559283'),(11,'account','0009_emailaddress_unique_primary_email','2026-01-13 06:56:36.574030'),(12,'admin','0001_initial','2026-01-13 06:56:36.874880'),(13,'admin','0002_logentry_remove_auto_add','2026-01-13 06:56:36.892304'),(14,'admin','0003_logentry_add_action_flag_choices','2026-01-13 06:56:36.911884'),(15,'contenttypes','0002_remove_content_type_name','2026-01-13 06:56:37.126066'),(16,'auth','0002_alter_permission_name_max_length','2026-01-13 06:56:37.265541'),(17,'auth','0003_alter_user_email_max_length','2026-01-13 06:56:37.332152'),(18,'auth','0004_alter_user_username_opts','2026-01-13 06:56:37.354565'),(19,'auth','0005_alter_user_last_login_null','2026-01-13 06:56:37.475457'),(20,'auth','0006_require_contenttypes_0002','2026-01-13 06:56:37.481305'),(21,'auth','0007_alter_validators_add_error_messages','2026-01-13 06:56:37.499883'),(22,'auth','0008_alter_user_username_max_length','2026-01-13 06:56:37.646222'),(23,'auth','0009_alter_user_last_name_max_length','2026-01-13 06:56:37.795722'),(24,'auth','0010_alter_group_name_max_length','2026-01-13 06:56:37.844831'),(25,'auth','0011_update_proxy_permissions','2026-01-13 06:56:37.862028'),(26,'auth','0012_alter_user_first_name_max_length','2026-01-13 06:56:38.000360'),(27,'sessions','0001_initial','2026-01-13 06:56:38.079280'),(28,'socialaccount','0001_initial','2026-01-13 06:56:38.671960'),(29,'socialaccount','0002_token_max_lengths','2026-01-13 06:56:38.775407'),(30,'socialaccount','0003_extra_data_default_dict','2026-01-13 06:56:38.795662'),(31,'socialaccount','0004_app_provider_id_settings','2026-01-13 06:56:39.152779'),(32,'socialaccount','0005_socialtoken_nullable_app','2026-01-13 06:56:39.414677'),(33,'socialaccount','0006_alter_socialaccount_extra_data','2026-01-13 06:56:39.535010');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('n9fjqyz4vzaj4r4ywb3wvzfpzcwb5niy','eyJ1c2VyIjoiU2F2YW4gQmhhdHQiLCJjYXJ0Ijp7IjM3IjoxfX0:1vv7B8:b_ezE5NOrXGaa4axqwmTDf9DGPQxwJ-BpNn9U509p4A','2026-03-11 05:11:18.011972'),('yg9dnq7uzolmpwiwout8srgjz5s7154p','eyJ1c2VyIjoiU2F2YW4gQmhhdHQifQ:1vtHxz:5YDv-mvhi8WXfQdvJZ2-sOa5YjEbmgn9clvwX-DcirM','2026-03-06 04:18:11.506589');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `electronics_products`
--

DROP TABLE IF EXISTS `electronics_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electronics_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electronics_products`
--

LOCK TABLES `electronics_products` WRITE;
/*!40000 ALTER TABLE `electronics_products` DISABLE KEYS */;
INSERT INTO `electronics_products` VALUES (1,'Mouse','Electronics',499.00,20,'mouse.jpg'),(2,'Keyboard','Electronics',899.00,15,'keyboard.jpg'),(3,'Mouse','Electronics',499.00,20,'mouse.jpg'),(4,'Keyboard','Electronics',899.00,15,'keyboard.jpg'),(5,'Mouse','Electronics',499.00,20,'mouse.jpg'),(6,'Keyboard','Electronics',899.00,15,'keyboard.jpg');
/*!40000 ALTER TABLE `electronics_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `rating` int NOT NULL,
  `comments` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Savan Bhatt',4,'good','2026-01-15'),(2,'raj kachhhhh',5,'hiii','2026-01-30'),(3,'yug',4,'hii','2026-01-31'),(4,'Bhatt Savan',3,'not good','2026-02-21'),(5,'Bhatt Savan',4,'very good overall website','2026-02-28'),(6,'kacha raj',5,'very good overall','2026-02-21');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Logitech Mouse',2499.00,'Savan Bhatt','logitech_mouse.jpeg'),(2,'apple',120000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple.jpg'),(3,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(4,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(5,'motorla',19000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Motorola.jpg'),(6,'iphone',100000.00,'Savan Bhatt','/ecommerceapp/static/images/products/iphone.jpeg'),(7,'apple_ipaid',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(8,'ujala',6700.00,'Savan Bhatt','/ecommerceapp/static/images/products/ujala.jpg'),(9,'philips',7000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Philips.jpg'),(10,'boat',5000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Boat.jpeg'),(11,'lenvo',9000.00,'Savan Bhatt','/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(12,'apple_ipaid',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/apple_ipaid.jpeg'),(13,'lenvo',9000.00,'Savan Bhatt','/ecommerceapp/static/images/products/lenvo_tablet.jpeg'),(14,'drones actions camera',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/Drones Action Cameras.jpeg'),(15,'samsung',50000.00,'Savan Bhatt','/ecommerceapp/static/images/products/samsung_galaxy.jpeg'),(16,'poco',8000.00,'Savan Bhatt','/ecommerceapp/static/images/products/poco.jpg'),(17,'oppo',70000.00,'Savan Bhatt','/ecommerceapp/static/images/products/oppo.jpg');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (20,'tablets','/ecommerceapp/static/images/category/realme_tablet.jpeg'),(21,'headphones','/ecommerceapp/static/images/category/samsung.png'),(25,'Mobile','/ecommerceapp/static/images/category/poco.jpg'),(26,'gadgets','/ecommerceapp/static/images/category/gadgets.jpeg'),(27,'airfryer','/ecommerceapp/static/images/category/ujala.jpg'),(28,'accessories','/ecommerceapp/static/images/category/accessories.jpeg'),(29,'laptop','/ecommerceapp/static/images/category/acer.jpeg');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(2,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(3,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(4,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(5,'ajay kathi n','kathia568@gmail.com','7476893890214055','123'),(6,'ajay kathi n','kathia568@gmail.com','7476893890214055','12345'),(7,'ajay kathi n','kathia568@gmail.com','7476893890214055','12345'),(8,'raj','raj123@gmail.com','9979898195','12345'),(9,'sagar bhatt','sagar12@gmail.com','9979898195','987'),(10,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(11,'AJAY KATHI','savanbhatt57@gmail.com','07567189039','123'),(12,'yug panday','yug13@gmail.com','7567189039','901'),(13,'Bhatt Savan','savanbhatt57@gmail.com','9979595197','901'),(14,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','991'),(15,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','001'),(16,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(17,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(18,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','123'),(19,'Savan Bhatt','savanbhatt57@gmail.com','07567189039','@somnath141199');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialapp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` json NOT NULL DEFAULT (_utf8mb4'{}'),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp`
--

LOCK TABLES `socialaccount_socialapp` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialtoken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int NOT NULL,
  `app_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`),
  CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialtoken`
--

LOCK TABLES `socialaccount_socialtoken` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `status` enum('active','blocked') DEFAULT 'active',
  `orders` int DEFAULT '0',
  `spent` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amit Patel','amit@gmail.com','user','active',5,1299.50,'2026-01-29 13:46:48'),(2,'raj kacha','rajkacah12@gmail.com','admin','active',7,120000.50,'2026-02-05 11:11:41'),(5,'Amit Patel','amit2@gmail.com','user','blocked',5,1299.50,'2026-01-29 13:50:57'),(8,'ajay patel','ajay23@gmail.com','admin','blocked',2,99.50,'2026-01-29 13:50:57'),(90,'hardik patel','hardik2@gmail.com','admin','blocked',89,99299.50,'2026-01-29 13:50:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25 10:42:58
