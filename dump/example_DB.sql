CREATE DATABASE  IF NOT EXISTS `weather_and_suggestion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `weather_and_suggestion`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: weather_and_suggestion
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_10_21_140115_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weather_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Rainpants',109.60,'5Yq','heavy-snow'),(102,'Fullcap',181.56,'5wz','light-rain'),(103,'Umbrela',195.24,'Ivz','heavy-snow'),(104,'Hat',143.33,'cKW','light-snow'),(105,'Hat',176.75,'SjB','fog'),(106,'Shorts',24.19,'EeL','sleet'),(107,'Hat',173.10,'9Ls','fog'),(108,'Fullcap',147.34,'52F','sleet'),(109,'Hat',173.85,'T7a','heavy-snow'),(110,'Rainpants',53.13,'neA','sleet'),(111,'Jacket',73.15,'K8R','heavy-rain'),(112,'Shorts',103.68,'UKv','light-snow'),(113,'Fullcap',1.35,'dFJ','isolated-clouds'),(114,'Rainpants',113.42,'H8K','moderate-rain'),(115,'Fullcap',23.79,'nO8','clear'),(116,'Fullcap',143.57,'668','sleet'),(117,'Rainpants',181.34,'OFi','fog'),(118,'Umbrela',172.88,'FBh','moderate-rain'),(119,'Hat',74.77,'RuS','heavy-snow'),(120,'Shorts',23.44,'q8Z','light-snow'),(121,'Fullcap',18.39,'MIG','fog'),(122,'Fullcap',156.86,'dUV','light-rain'),(123,'Fullcap',138.21,'grf','scattered-clouds'),(124,'Fullcap',50.91,'B2M','overcast'),(125,'Umbrela',26.36,'pnT','moderate-snow'),(126,'Jacket',50.85,'KrV','sleet'),(127,'Shorts',138.29,'Eh4','light-snow'),(128,'Fullcap',26.34,'kX5','heavy-rain'),(129,'Fullcap',148.91,'9k5','light-snow'),(130,'Jacket',115.51,'N79','isolated-clouds'),(131,'Jacket',22.00,'vyM','moderate-rain'),(132,'Hat',57.99,'MHE','fog'),(133,'Jacket',169.66,'kOW','moderate-rain'),(134,'Shorts',135.93,'B9d','overcast'),(135,'Umbrela',22.06,'nyV','overcast'),(136,'Umbrela',188.37,'Xsf','moderate-rain'),(137,'Hat',9.01,'SQl','clear'),(138,'Rainpants',190.24,'Jwc','sleet'),(139,'Shorts',106.10,'4hh','light-rain'),(140,'Umbrela',14.22,'M7d','fog'),(141,'Rainpants',13.41,'h9x','light-snow'),(142,'Umbrela',195.95,'frK','sleet'),(143,'Shorts',157.28,'LWV','light-rain'),(144,'Hat',155.43,'0Vy','isolated-clouds'),(145,'Fullcap',135.26,'8P6','clear'),(146,'Rainpants',37.30,'ov1','moderate-snow'),(147,'Rainpants',47.54,'UDx','moderate-snow'),(148,'Jacket',42.91,'8ag','sleet'),(149,'Fullcap',14.24,'R5q','light-rain'),(150,'Umbrela',195.00,'P8U','fog'),(151,'Umbrela',22.86,'k1c','scattered-clouds'),(152,'Shorts',34.11,'mIi','overcast'),(153,'Fullcap',66.68,'Wxw','fog'),(154,'Rainpants',132.46,'iUz','fog'),(155,'Jacket',179.92,'7Ph','overcast'),(156,'Umbrela',7.50,'uWP','sleet'),(157,'Rainpants',17.16,'Y3t','light-snow'),(158,'Umbrela',116.87,'u4N','light-rain'),(159,'Fullcap',71.37,'zlP','clear'),(160,'Jacket',2.17,'38q','light-snow'),(161,'Fullcap',39.36,'IKH','moderate-rain'),(162,'Jacket',58.84,'mdm','overcast'),(163,'Rainpants',81.12,'mCP','sleet'),(164,'Rainpants',70.17,'OK7','moderate-snow'),(165,'Shorts',7.65,'Dr4','light-snow'),(166,'Fullcap',145.58,'Wd7','light-rain'),(167,'Umbrela',122.47,'hxw','moderate-snow'),(168,'Rainpants',185.99,'Q8D','fog'),(169,'Fullcap',190.04,'AxU','overcast'),(170,'Hat',151.46,'YlL','scattered-clouds'),(171,'Shorts',134.59,'Ftv','heavy-rain'),(172,'Shorts',38.70,'ECd','sleet'),(173,'Rainpants',189.53,'d0F','sleet'),(174,'Fullcap',194.87,'6GD','scattered-clouds'),(175,'Umbrela',35.35,'aHB','overcast'),(176,'Shorts',63.53,'YNI','heavy-snow'),(177,'Shorts',35.97,'pb8','moderate-rain'),(178,'Hat',39.09,'K2S','moderate-snow'),(179,'Rainpants',81.70,'1yU','overcast'),(180,'Rainpants',145.34,'35G','isolated-clouds'),(181,'Umbrela',184.42,'99h','moderate-snow'),(182,'Umbrela',175.44,'rlp','light-snow'),(183,'Rainpants',144.34,'BN5','isolated-clouds'),(184,'Jacket',195.66,'ZvT','light-snow'),(185,'Jacket',130.21,'KOu','isolated-clouds'),(186,'Umbrela',109.61,'qLz','isolated-clouds'),(187,'Shorts',35.69,'dM0','scattered-clouds'),(188,'Shorts',80.97,'7R7','moderate-rain'),(189,'Fullcap',33.24,'zpa','heavy-rain'),(190,'Jacket',129.37,'uGI','clear'),(191,'Fullcap',105.51,'6MB','isolated-clouds'),(192,'Fullcap',130.30,'VvU','overcast'),(193,'Shorts',57.43,'LKo','overcast'),(194,'Rainpants',41.54,'frr','light-rain'),(195,'Umbrela',101.62,'imu','moderate-rain'),(196,'Jacket',117.88,'VLd','overcast'),(197,'Shorts',25.34,'tmI','heavy-snow'),(198,'Hat',119.34,'LEG','scattered-clouds'),(199,'Fullcap',36.30,'730','moderate-snow'),(200,'Fullcap',190.06,'rjU','clear');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'weather_and_suggestion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 19:57:18
