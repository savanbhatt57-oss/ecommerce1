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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 10:09:40
