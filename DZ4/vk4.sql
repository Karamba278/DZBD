-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (11,'accusamus'),(17,'aliquid'),(16,'assumenda'),(25,'consequatur'),(2,'corporis'),(5,'ducimus'),(8,'ea'),(4,'et'),(1,'excepturi'),(13,'maiores'),(14,'natus'),(20,'nemo'),(19,'neque'),(3,'nihil'),(7,'non'),(9,'qui'),(21,'quia'),(15,'repellendus'),(18,'sapiente'),(10,'sint'),(6,'temporibus'),(23,'unde'),(22,'ut'),(12,'vero'),(24,'voluptas');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,23),(1,28),(1,32),(1,40),(1,57),(1,76),(1,84),(1,94),(1,100),(2,73),(2,87),(3,18),(3,65),(4,27),(4,89),(5,10),(5,31),(5,46),(5,69),(5,81),(6,21),(6,47),(6,71),(7,11),(7,78),(7,80),(8,4),(8,17),(8,42),(8,64),(8,72),(8,83),(8,86),(9,30),(10,6),(10,91),(11,26),(11,90),(12,51),(12,60),(12,99),(13,12),(13,68),(13,96),(14,9),(14,54),(15,20),(15,36),(15,43),(15,62),(15,88),(16,2),(16,13),(16,19),(16,37),(16,41),(16,44),(16,50),(16,95),(17,5),(17,15),(17,29),(17,53),(17,55),(17,63),(17,70),(17,77),(17,79),(17,92),(18,67),(19,7),(19,8),(19,56),(20,3),(20,16),(20,25),(20,35),(20,75),(20,97),(21,33),(21,39),(21,48),(21,52),(21,74),(21,93),(21,98),(22,24),(22,66),(23,1),(23,14),(23,38),(23,45),(23,49),(24,22),(24,34),(24,58),(24,59),(24,82),(24,85),(25,61);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (2,13,2,'2003-01-03 19:48:58','1974-04-22 00:57:02'),(2,35,3,'2002-07-12 02:00:38','1979-05-09 13:16:11'),(3,64,2,'1972-06-19 21:26:18','1979-05-27 08:38:39'),(4,56,2,'2001-04-11 14:38:01','1996-06-29 13:51:01'),(5,100,1,'2016-07-24 05:37:28','1987-07-03 09:20:07'),(6,53,3,'1970-03-12 18:01:43','1986-04-19 21:41:39'),(6,74,3,'1997-02-26 23:21:55','2018-04-27 13:51:32'),(6,97,1,'1989-08-24 01:19:40','1985-09-14 06:12:41'),(7,7,2,'1977-04-05 11:45:37','1997-08-07 05:30:06'),(7,48,3,'1972-08-24 11:03:31','2016-07-29 02:43:29'),(9,13,1,'2001-02-28 13:18:56','1994-09-29 16:39:37'),(10,32,3,'2010-06-16 00:45:56','2000-05-24 23:18:17'),(10,35,3,'2009-02-24 08:46:25','1980-08-29 21:34:16'),(10,86,3,'2010-01-01 04:12:36','2009-10-28 09:25:38'),(10,94,1,'1981-11-29 02:16:08','2006-04-30 10:14:28'),(11,63,3,'1984-10-05 22:59:36','1997-11-19 07:22:44'),(13,23,2,'1999-08-26 02:28:08','2000-02-27 17:04:24'),(13,60,2,'1989-06-13 10:18:09','1996-02-13 01:11:53'),(18,6,3,'1971-07-03 04:51:55','1994-10-26 07:04:29'),(21,7,1,'2003-11-14 07:27:41','1998-06-26 13:36:35'),(21,42,2,'1986-05-30 08:41:24','2018-12-17 03:10:11'),(21,89,1,'1990-01-07 23:48:24','1972-03-26 18:17:42'),(22,63,1,'1994-12-05 06:28:39','1989-02-14 18:59:35'),(22,68,2,'1981-12-29 00:14:42','2016-07-10 01:47:48'),(23,6,3,'2008-04-07 00:22:47','1991-04-28 18:17:00'),(24,55,3,'1985-04-02 03:11:56','2001-11-21 09:44:50'),(25,43,2,'1988-01-21 19:43:08','1986-05-24 23:54:02'),(25,99,2,'1990-05-26 04:54:26','1986-02-27 20:35:56'),(26,35,3,'2013-04-24 01:35:09','2016-05-26 13:57:58'),(27,25,1,'2018-09-10 10:05:22','2015-04-05 17:29:53'),(27,41,1,'1973-10-26 09:43:28','1977-03-08 09:21:55'),(27,63,1,'2008-08-23 12:39:58','2009-10-30 17:43:35'),(28,57,2,'1974-03-06 04:05:51','1992-06-17 16:37:57'),(29,61,3,'2011-12-08 14:27:59','2018-03-13 19:35:06'),(30,74,2,'1971-01-23 00:33:04','1999-09-28 17:23:22'),(31,12,3,'2010-11-15 13:07:26','2008-05-05 02:33:09'),(31,15,1,'1975-06-13 02:20:19','1991-12-18 16:44:30'),(31,86,2,'2019-07-04 18:57:25','1994-12-23 18:39:41'),(36,27,1,'1985-07-17 03:21:36','2010-08-14 14:16:47'),(36,99,2,'2006-04-20 02:00:31','2012-05-03 02:37:30'),(37,27,2,'1986-04-27 05:20:23','2013-07-08 08:40:07'),(37,94,1,'1985-03-19 16:03:48','1970-08-31 03:50:20'),(38,50,1,'1997-10-09 22:52:31','2007-01-19 05:27:17'),(41,73,2,'2020-04-15 17:01:10','1997-08-19 18:28:06'),(42,68,3,'1993-05-31 23:01:09','2012-07-13 15:04:56'),(42,91,2,'1996-06-12 11:51:03','1971-03-27 02:02:52'),(43,38,1,'2020-04-10 07:56:42','1994-07-29 23:18:39'),(44,28,2,'1993-05-11 23:56:35','2007-10-29 03:22:35'),(45,47,2,'2004-06-17 15:27:38','2020-02-11 14:44:44'),(45,67,3,'2014-07-29 04:31:45','1982-11-11 13:58:59'),(46,4,3,'2001-10-28 00:26:04','2019-12-10 17:24:26'),(46,22,2,'2011-10-17 08:15:50','1990-01-13 16:21:58'),(47,10,3,'2000-09-26 08:13:00','1984-12-27 07:59:24'),(49,56,2,'2005-01-07 12:26:09','1976-12-24 18:23:04'),(51,52,1,'1971-07-27 04:04:31','1982-05-31 20:42:05'),(52,37,1,'1997-05-10 18:08:02','2012-05-06 15:20:43'),(52,92,3,'1982-01-26 16:15:17','1987-01-17 08:26:29'),(53,89,2,'2005-04-21 23:02:34','1988-11-09 08:29:17'),(53,97,2,'1993-10-15 04:50:17','1977-02-18 00:35:52'),(55,79,3,'1998-01-04 00:48:25','1978-08-30 20:58:30'),(59,77,1,'1980-11-16 02:42:21','2019-09-15 00:26:40'),(60,17,1,'2018-10-06 06:07:21','2016-05-26 13:16:40'),(60,20,3,'2003-07-02 05:03:01','1996-07-11 13:35:29'),(61,26,3,'1990-10-15 02:58:06','1981-01-20 15:17:13'),(62,67,1,'2007-09-29 17:37:13','2016-01-26 18:18:37'),(62,95,3,'2010-11-08 14:46:12','1975-05-28 16:12:56'),(64,3,2,'2007-05-17 17:23:05','2016-12-11 04:22:25'),(64,13,2,'2005-08-07 17:01:49','1973-05-01 06:24:07'),(64,93,2,'1981-07-24 21:08:13','1997-05-13 01:46:47'),(65,21,3,'2002-03-19 17:28:29','1983-11-30 19:29:24'),(65,56,2,'1997-11-02 12:00:40','2000-10-03 17:05:54'),(68,47,1,'2008-06-18 11:48:39','1972-07-06 18:46:46'),(69,5,2,'2016-07-20 17:04:26','1985-06-18 22:20:42'),(70,31,3,'1982-05-18 19:04:33','2004-07-05 01:00:36'),(71,5,2,'2019-09-30 00:08:51','2013-07-14 09:17:26'),(71,47,3,'1993-09-05 19:36:00','2000-04-09 01:33:20'),(72,82,1,'1981-04-13 02:41:28','1993-07-17 03:28:33'),(73,100,2,'2009-02-16 07:53:09','1990-12-11 11:24:06'),(74,1,1,'1977-11-26 05:27:21','1978-02-02 21:10:28'),(74,55,1,'1978-09-02 12:03:22','1988-08-19 18:57:31'),(74,65,2,'1980-04-06 00:49:32','2015-11-19 00:13:38'),(76,38,3,'2003-11-06 19:15:39','2002-08-01 10:27:01'),(81,1,3,'2010-03-30 17:32:55','1976-07-26 03:29:19'),(81,59,3,'1975-03-12 09:38:56','1985-01-29 13:14:50'),(81,83,2,'2000-04-05 10:01:10','1980-09-02 00:17:22'),(82,18,3,'2003-07-13 03:59:32','2014-01-17 05:17:02'),(82,42,3,'1975-11-20 12:52:17','1980-05-30 23:54:45'),(82,95,1,'1985-09-25 02:55:29','2001-05-28 22:25:26'),(83,11,2,'1982-11-16 08:45:12','1991-03-11 06:11:49'),(84,53,1,'1998-06-17 16:55:13','1975-06-05 07:49:42'),(85,56,1,'2009-08-23 04:44:05','2008-10-04 02:39:27'),(86,30,2,'2014-02-23 04:55:36','2009-06-04 21:12:14'),(88,42,3,'1988-02-08 15:27:32','1972-04-18 05:25:10'),(90,65,2,'1991-03-01 22:09:28','1996-11-25 12:29:34'),(92,68,1,'1979-02-11 02:19:45','1988-07-10 15:58:55'),(94,21,3,'2017-04-02 23:32:48','2006-01-20 15:48:47'),(97,47,1,'2002-01-21 11:02:59','2007-02-17 22:28:57'),(98,81,3,'2003-01-02 18:13:15','2013-02-01 06:21:59'),(98,90,1,'2004-01-11 13:43:25','1979-08-10 23:41:44'),(100,41,1,'1996-08-08 13:32:27','1997-04-01 04:01:16');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (2,'Confirmed'),(3,'Rejected'),(1,'Requested');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_count`
--

DROP TABLE IF EXISTS `like_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_count` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `posts_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `likes` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_count`
--

LOCK TABLES `like_count` WRITE;
/*!40000 ALTER TABLE `like_count` DISABLE KEYS */;
INSERT INTO `like_count` VALUES (1,9,68,1),(2,10,22,0),(3,1,10,0),(4,9,85,0),(5,3,96,1),(6,3,23,0),(7,2,68,1),(8,6,2,0),(9,1,97,0),(10,7,5,1),(11,5,38,0),(12,3,63,0),(13,8,2,0),(14,7,39,1),(15,9,27,1),(16,1,97,0),(17,4,68,0),(18,1,99,0),(19,10,38,1),(20,2,49,0),(21,7,33,0),(22,9,73,1),(23,8,60,0),(24,5,86,0),(25,6,39,0),(26,9,68,0),(27,10,54,0),(28,10,43,1),(29,8,45,0),(30,8,88,0),(31,5,22,1),(32,9,26,0),(33,7,2,0),(34,3,31,1),(35,5,78,1),(36,9,13,1),(37,3,61,0),(38,3,42,1),(39,10,53,1),(40,1,17,0),(41,6,5,1),(42,3,88,1),(43,5,26,1),(44,4,57,1),(45,6,2,1),(46,7,74,0),(47,2,79,0),(48,9,78,1),(49,8,61,1),(50,8,83,1),(51,2,46,0),(52,2,87,1),(53,5,42,0),(54,7,64,0),(55,8,23,1),(56,3,30,0),(57,7,29,0),(58,1,93,0),(59,3,50,1);
/*!40000 ALTER TABLE `like_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_sum`
--

DROP TABLE IF EXISTS `like_sum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_sum` (
  `posts_id` int DEFAULT NULL,
  `like_sum` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_sum`
--

LOCK TABLES `like_sum` WRITE;
/*!40000 ALTER TABLE `like_sum` DISABLE KEYS */;
INSERT INTO `like_sum` VALUES (9,5),(10,3),(1,0),(3,5),(2,2),(6,2),(7,2),(5,3),(8,3),(4,1);
/*!40000 ALTER TABLE `like_sum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `metadata` json DEFAULT NULL,
  `media_type_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,97,'https://dropbox.net/vk/illum.jpeg',936078,'{\"owner\": \"Mckenzie  Reynolds\"}',1,'1999-07-02 20:23:08','2020-05-11 17:16:55'),(2,68,'https://dropbox.net/vk/et.avi',1746,'{\"owner\": \"Jena  Champlin\"}',3,'1990-12-26 00:06:51','2020-05-11 17:16:55'),(3,17,'https://dropbox.net/vk/repellat.avi',60444,'{\"owner\": \"Ara  Rutherford\"}',3,'1991-10-13 02:54:16','2020-05-11 17:16:55'),(4,100,'https://dropbox.net/vk/ut.png',1678,'{\"owner\": \"Wilfrid  Bernhard\"}',1,'1970-06-07 22:24:15','2020-05-11 17:16:55'),(5,47,'https://dropbox.net/vk/incidunt.jpeg',626641,'{\"owner\": \"Jamison  Ernser\"}',3,'1972-12-02 10:39:28','2020-05-11 17:16:55'),(6,94,'https://dropbox.net/vk/nulla.avi',1153,'{\"owner\": \"Aurelia  Hermiston\"}',1,'2016-08-06 22:57:44','2020-05-11 17:16:55'),(7,52,'https://dropbox.net/vk/sunt.mpeg',2807,'{\"owner\": \"Augustine  Waters\"}',2,'1997-01-05 00:44:24','2020-05-11 17:16:55'),(8,40,'https://dropbox.net/vk/dolorem.jpeg',1734,'{\"owner\": \"Gardner  Howell\"}',1,'2000-09-02 00:35:33','2020-05-11 17:16:55'),(9,94,'https://dropbox.net/vk/dolorem.mp4',2593,'{\"owner\": \"Aurelia  Hermiston\"}',2,'2002-10-01 16:14:21','2020-05-11 17:16:55'),(10,9,'https://dropbox.net/vk/ut.mpeg',2251129,'{\"owner\": \"Joesph  Muller\"}',1,'2003-09-16 18:07:14','2020-05-11 17:16:55'),(11,26,'https://dropbox.net/vk/optio.mp4',75994,'{\"owner\": \"Gunnar  Mante\"}',1,'1976-05-22 03:08:50','2020-05-11 17:16:55'),(12,16,'https://dropbox.net/vk/et.jpeg',4474,'{\"owner\": \"Anais  Hamill\"}',2,'1997-03-03 22:52:19','2020-05-11 17:16:55'),(13,69,'https://dropbox.net/vk/est.jpeg',1209,'{\"owner\": \"Stacy  Orn\"}',1,'1993-01-26 08:21:27','2020-05-11 17:16:55'),(14,61,'https://dropbox.net/vk/iste.mpeg',14718651,'{\"owner\": \"Mable  McCullough\"}',1,'1989-01-02 22:13:49','2020-05-11 17:16:55'),(15,40,'https://dropbox.net/vk/et.png',1846,'{\"owner\": \"Gardner  Howell\"}',3,'1972-06-16 00:03:51','2020-05-11 17:16:55'),(16,98,'https://dropbox.net/vk/itaque.mp4',1604,'{\"owner\": \"Danyka  Oberbrunner\"}',3,'1993-04-05 21:55:53','2020-05-11 17:16:55'),(17,8,'https://dropbox.net/vk/aperiam.mp4',75328276,'{\"owner\": \"Jettie  Beatty\"}',2,'1981-05-26 01:32:05','2020-05-11 17:16:55'),(18,63,'https://dropbox.net/vk/quasi.mpeg',88709375,'{\"owner\": \"Lucio  Borer\"}',1,'2001-05-15 00:16:18','2020-05-11 17:16:55'),(19,21,'https://dropbox.net/vk/consequatur.avi',29978419,'{\"owner\": \"Kennedy  Koss\"}',2,'2009-01-28 07:26:35','2020-05-11 17:16:55'),(20,27,'https://dropbox.net/vk/eligendi.jpeg',2228587,'{\"owner\": \"Randall  Bruen\"}',1,'2003-12-30 15:02:00','2020-05-11 17:16:55'),(21,17,'https://dropbox.net/vk/veniam.mpeg',79285,'{\"owner\": \"Ara  Rutherford\"}',3,'1989-12-31 09:16:58','2020-05-11 17:16:55'),(22,77,'https://dropbox.net/vk/culpa.jpeg',1481,'{\"owner\": \"Elisha  Baumbach\"}',1,'1974-05-11 09:57:22','2020-05-11 17:16:55'),(23,99,'https://dropbox.net/vk/repellendus.jpeg',1595,'{\"owner\": \"Kavon  Walker\"}',1,'1973-03-15 17:21:24','2020-05-11 17:16:55'),(24,85,'https://dropbox.net/vk/qui.mpeg',1530,'{\"owner\": \"Cale  Effertz\"}',3,'1980-04-16 12:35:47','2020-05-11 17:16:55'),(25,21,'https://dropbox.net/vk/non.avi',1868,'{\"owner\": \"Kennedy  Koss\"}',3,'1997-04-07 08:58:52','2020-05-11 17:16:55'),(26,36,'https://dropbox.net/vk/quam.mp4',76034,'{\"owner\": \"Itzel  Bahringer\"}',1,'1992-08-09 17:08:24','2020-05-11 17:16:55'),(27,84,'https://dropbox.net/vk/nobis.jpeg',1751,'{\"owner\": \"Reuben  Sawayn\"}',1,'1999-10-17 09:59:01','2020-05-11 17:16:55'),(28,68,'https://dropbox.net/vk/voluptatem.mp4',1152,'{\"owner\": \"Jena  Champlin\"}',1,'1986-04-12 07:22:04','2020-05-11 17:16:55'),(29,38,'https://dropbox.net/vk/sed.avi',232203,'{\"owner\": \"Henriette  Schroeder\"}',2,'1971-10-15 18:22:35','2020-05-11 17:16:55'),(30,94,'https://dropbox.net/vk/alias.avi',9060,'{\"owner\": \"Aurelia  Hermiston\"}',3,'2013-05-22 03:53:32','2020-05-11 17:16:55'),(31,38,'https://dropbox.net/vk/labore.jpeg',851193501,'{\"owner\": \"Henriette  Schroeder\"}',1,'1971-08-11 04:26:02','2020-05-11 17:16:55'),(32,80,'https://dropbox.net/vk/ullam.jpeg',1506,'{\"owner\": \"Jess  Crist\"}',3,'1972-11-09 14:43:25','2020-05-11 17:16:55'),(33,65,'https://dropbox.net/vk/voluptate.mp4',9188963,'{\"owner\": \"Leonie  Barton\"}',1,'1972-02-15 19:51:13','2020-05-11 17:16:55'),(34,20,'https://dropbox.net/vk/voluptate.mpeg',1087586,'{\"owner\": \"Carey  Sauer\"}',1,'2017-11-06 10:20:24','2020-05-11 17:16:55'),(35,86,'https://dropbox.net/vk/in.png',127842607,'{\"owner\": \"Raphael  Kemmer\"}',3,'2000-09-07 21:01:48','2020-05-11 17:16:55'),(36,54,'https://dropbox.net/vk/deserunt.avi',5916,'{\"owner\": \"Martine  Heathcote\"}',3,'2019-09-01 05:59:32','2020-05-11 17:16:55'),(37,37,'https://dropbox.net/vk/doloribus.png',77098,'{\"owner\": \"Sylvester  Emmerich\"}',2,'2002-07-02 16:55:03','2020-05-11 17:16:55'),(38,23,'https://dropbox.net/vk/corporis.avi',1073,'{\"owner\": \"Coralie  Cummings\"}',1,'1993-12-07 15:31:08','2020-05-11 17:16:55'),(39,100,'https://dropbox.net/vk/suscipit.avi',1849,'{\"owner\": \"Wilfrid  Bernhard\"}',3,'2013-12-17 23:03:24','2020-05-11 17:16:55'),(40,95,'https://dropbox.net/vk/quae.avi',1027,'{\"owner\": \"Ellis  Gutmann\"}',3,'2003-01-15 14:46:19','2020-05-11 17:16:55'),(41,93,'https://dropbox.net/vk/est.jpeg',8749718,'{\"owner\": \"Flo  Hirthe\"}',3,'1992-05-26 12:14:11','2020-05-11 17:16:55'),(42,11,'https://dropbox.net/vk/necessitatibus.mp4',427621,'{\"owner\": \"Jairo  Terry\"}',2,'1998-07-17 06:30:34','2020-05-11 17:16:55'),(43,61,'https://dropbox.net/vk/facilis.mpeg',841826,'{\"owner\": \"Mable  McCullough\"}',1,'2012-11-17 12:43:17','2020-05-11 17:16:55'),(44,50,'https://dropbox.net/vk/illum.png',9137,'{\"owner\": \"Clarabelle  Swift\"}',1,'2003-06-25 14:28:37','2020-05-11 17:16:55'),(45,9,'https://dropbox.net/vk/illum.mpeg',1587,'{\"owner\": \"Joesph  Muller\"}',2,'2016-09-08 17:46:27','2020-05-11 17:16:55'),(46,19,'https://dropbox.net/vk/explicabo.mp4',1856,'{\"owner\": \"Joshua  Langworth\"}',2,'1984-03-26 06:03:29','2020-05-11 17:16:55'),(47,68,'https://dropbox.net/vk/consequatur.jpeg',256917858,'{\"owner\": \"Jena  Champlin\"}',1,'1977-11-11 04:14:37','2020-05-11 17:16:55'),(48,16,'https://dropbox.net/vk/debitis.mp4',585026232,'{\"owner\": \"Anais  Hamill\"}',1,'2016-10-18 07:10:42','2020-05-11 17:16:55'),(49,89,'https://dropbox.net/vk/architecto.mpeg',1518,'{\"owner\": \"Joy  Sawayn\"}',1,'2011-07-15 08:09:24','2020-05-11 17:16:55'),(50,51,'https://dropbox.net/vk/voluptas.mp4',65675713,'{\"owner\": \"Hershel  Simonis\"}',2,'1997-12-18 16:48:57','2020-05-11 17:16:55'),(51,60,'https://dropbox.net/vk/et.avi',1022,'{\"owner\": \"Harrison  Fahey\"}',3,'1974-06-02 03:51:28','2020-05-11 17:16:55'),(52,85,'https://dropbox.net/vk/dolor.mp4',423446,'{\"owner\": \"Cale  Effertz\"}',1,'1970-11-12 21:34:30','2020-05-11 17:16:55'),(53,61,'https://dropbox.net/vk/ut.jpeg',1556,'{\"owner\": \"Mable  McCullough\"}',3,'1980-12-29 21:00:28','2020-05-11 17:16:55'),(54,100,'https://dropbox.net/vk/nostrum.png',297823735,'{\"owner\": \"Wilfrid  Bernhard\"}',1,'1978-04-14 21:18:25','2020-05-11 17:16:55'),(55,48,'https://dropbox.net/vk/est.png',87423787,'{\"owner\": \"Hayley  Volkman\"}',1,'2008-06-03 03:06:55','2020-05-11 17:16:55'),(56,96,'https://dropbox.net/vk/quam.png',9780282,'{\"owner\": \"Belle  Waelchi\"}',1,'1990-05-14 16:20:53','2020-05-11 17:16:55'),(57,97,'https://dropbox.net/vk/rerum.mp4',1717,'{\"owner\": \"Mckenzie  Reynolds\"}',2,'1980-06-09 10:15:05','2020-05-11 17:16:55'),(58,68,'https://dropbox.net/vk/aut.mp4',1916,'{\"owner\": \"Jena  Champlin\"}',2,'2018-02-23 04:47:27','2020-05-11 17:16:55'),(59,16,'https://dropbox.net/vk/aut.jpeg',6717620,'{\"owner\": \"Anais  Hamill\"}',3,'2018-12-18 22:24:45','2020-05-11 17:16:55'),(60,83,'https://dropbox.net/vk/rerum.jpeg',86358079,'{\"owner\": \"Mekhi  Eichmann\"}',3,'2015-05-31 12:51:16','2020-05-11 17:16:55'),(61,25,'https://dropbox.net/vk/labore.mp4',32349,'{\"owner\": \"Larue  Bosco\"}',2,'1989-04-07 20:52:32','2020-05-11 17:16:55'),(62,19,'https://dropbox.net/vk/nihil.jpeg',25066653,'{\"owner\": \"Joshua  Langworth\"}',3,'1995-12-30 06:24:30','2020-05-11 17:16:55'),(63,42,'https://dropbox.net/vk/mollitia.mp4',4912,'{\"owner\": \"Leann  Satterfield\"}',2,'1974-11-19 18:03:30','2020-05-11 17:16:55'),(64,17,'https://dropbox.net/vk/aperiam.jpeg',3892334,'{\"owner\": \"Ara  Rutherford\"}',3,'1975-10-30 02:56:19','2020-05-11 17:16:55'),(65,49,'https://dropbox.net/vk/dolor.png',828285260,'{\"owner\": \"Nadia  Paucek\"}',2,'2009-06-05 01:58:30','2020-05-11 17:16:55'),(66,73,'https://dropbox.net/vk/dolores.mpeg',74182266,'{\"owner\": \"Jettie  Graham\"}',1,'1988-06-07 11:07:43','2020-05-11 17:16:55'),(67,46,'https://dropbox.net/vk/tempora.mp4',1429,'{\"owner\": \"Angel  Schoen\"}',2,'1987-08-15 23:27:50','2020-05-11 17:16:55'),(68,10,'https://dropbox.net/vk/voluptatum.avi',2646448,'{\"owner\": \"Marilie  Jacobi\"}',3,'1989-10-15 22:38:55','2020-05-11 17:16:55'),(69,69,'https://dropbox.net/vk/sed.mp4',786526,'{\"owner\": \"Stacy  Orn\"}',1,'1990-11-21 21:24:24','2020-05-11 17:16:55'),(70,9,'https://dropbox.net/vk/odit.jpeg',8289099,'{\"owner\": \"Joesph  Muller\"}',3,'1992-05-27 11:02:44','2020-05-11 17:16:55'),(71,42,'https://dropbox.net/vk/facere.mp4',33359509,'{\"owner\": \"Leann  Satterfield\"}',3,'1986-09-26 15:39:13','2020-05-11 17:16:55'),(72,25,'https://dropbox.net/vk/est.mp4',1397,'{\"owner\": \"Larue  Bosco\"}',2,'2006-09-20 10:50:01','2020-05-11 17:16:55'),(73,81,'https://dropbox.net/vk/eius.png',993874,'{\"owner\": \"Rebekah  Sporer\"}',1,'1974-01-10 11:36:22','2020-05-11 17:16:55'),(74,9,'https://dropbox.net/vk/qui.jpeg',1701,'{\"owner\": \"Joesph  Muller\"}',1,'1976-04-05 10:36:04','2020-05-11 17:16:55'),(75,42,'https://dropbox.net/vk/aliquid.mpeg',1312,'{\"owner\": \"Leann  Satterfield\"}',2,'2009-02-06 15:23:56','2020-05-11 17:16:55'),(76,15,'https://dropbox.net/vk/et.avi',5882595,'{\"owner\": \"Alycia  Volkman\"}',3,'1978-03-05 11:07:14','2020-05-11 17:16:55'),(77,1,'https://dropbox.net/vk/dicta.mp4',1457,'{\"owner\": \"Golden  O\'Kon\"}',3,'2004-11-17 14:59:31','2020-05-11 17:16:55'),(78,76,'https://dropbox.net/vk/necessitatibus.png',1349,'{\"owner\": \"Raheem  Kutch\"}',1,'1996-08-13 22:03:36','2020-05-11 17:16:55'),(79,39,'https://dropbox.net/vk/nihil.png',362424266,'{\"owner\": \"Milford  Schowalter\"}',3,'1992-03-07 19:33:11','2020-05-11 17:16:55'),(80,53,'https://dropbox.net/vk/autem.png',386481694,'{\"owner\": \"Kip  Lebsack\"}',2,'1973-01-17 00:04:58','2020-05-11 17:16:55'),(81,53,'https://dropbox.net/vk/qui.mpeg',1374,'{\"owner\": \"Kip  Lebsack\"}',3,'1971-09-30 08:25:02','2020-05-11 17:16:55'),(82,24,'https://dropbox.net/vk/ut.mp4',1823,'{\"owner\": \"Mozell  Kiehn\"}',2,'1973-11-29 23:37:42','2020-05-11 17:16:55'),(83,78,'https://dropbox.net/vk/laborum.avi',1994,'{\"owner\": \"Nicola  Crist\"}',1,'1998-10-09 11:38:55','2020-05-11 17:16:55'),(84,66,'https://dropbox.net/vk/perspiciatis.avi',920780,'{\"owner\": \"Sylvia  Hodkiewicz\"}',1,'2007-10-27 22:49:48','2020-05-11 17:16:55'),(85,36,'https://dropbox.net/vk/quod.png',1502,'{\"owner\": \"Itzel  Bahringer\"}',2,'2002-11-11 06:23:31','2020-05-11 17:16:55'),(86,97,'https://dropbox.net/vk/reprehenderit.jpeg',1486483,'{\"owner\": \"Mckenzie  Reynolds\"}',2,'2008-03-18 04:41:19','2020-05-11 17:16:55'),(87,11,'https://dropbox.net/vk/exercitationem.mp4',369514,'{\"owner\": \"Jairo  Terry\"}',3,'1971-03-22 11:51:37','2020-05-11 17:16:55'),(88,30,'https://dropbox.net/vk/dicta.avi',1527,'{\"owner\": \"Kaylah  Ankunding\"}',3,'1970-03-19 18:39:26','2020-05-11 17:16:55'),(89,58,'https://dropbox.net/vk/qui.png',8731,'{\"owner\": \"Twila  Crooks\"}',1,'2000-08-21 13:46:46','2020-05-11 17:16:55'),(90,35,'https://dropbox.net/vk/omnis.mpeg',1130,'{\"owner\": \"Vesta  Parisian\"}',2,'2010-06-08 04:39:52','2020-05-11 17:16:55'),(91,43,'https://dropbox.net/vk/et.jpeg',39824,'{\"owner\": \"Selina  Powlowski\"}',3,'2014-05-10 11:49:16','2020-05-11 17:16:55'),(92,91,'https://dropbox.net/vk/vero.png',1070,'{\"owner\": \"Kolby  Dooley\"}',3,'2004-12-09 00:41:53','2020-05-11 17:16:55'),(93,45,'https://dropbox.net/vk/voluptatem.png',1961,'{\"owner\": \"Maymie  Parisian\"}',2,'2019-07-22 22:12:10','2020-05-11 17:16:55'),(94,32,'https://dropbox.net/vk/eos.mpeg',661147010,'{\"owner\": \"Lawson  Feeney\"}',1,'2010-06-17 18:06:37','2020-05-11 17:16:55'),(95,1,'https://dropbox.net/vk/maxime.avi',1596,'{\"owner\": \"Golden  O\'Kon\"}',3,'2016-01-16 05:51:51','2020-05-11 17:16:55'),(96,30,'https://dropbox.net/vk/voluptatum.png',33514091,'{\"owner\": \"Kaylah  Ankunding\"}',3,'1980-12-21 12:52:53','2020-05-11 17:16:55'),(97,45,'https://dropbox.net/vk/consequatur.mpeg',860848,'{\"owner\": \"Maymie  Parisian\"}',2,'1974-11-02 08:32:21','2020-05-11 17:16:55'),(98,87,'https://dropbox.net/vk/quas.mpeg',1097,'{\"owner\": \"Daisha  Medhurst\"}',3,'1996-09-07 06:39:30','2020-05-11 17:16:55'),(99,36,'https://dropbox.net/vk/eius.jpeg',265829,'{\"owner\": \"Itzel  Bahringer\"}',3,'1984-03-30 16:01:21','2020-05-11 17:16:55'),(100,91,'https://dropbox.net/vk/dicta.avi',1699,'{\"owner\": \"Kolby  Dooley\"}',3,'2006-01-02 17:39:53','2020-05-11 17:16:55');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (3,'audio'),(1,'photo'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,83,26,'Repellendus id dicta et iusto quam quasi. Ut placeat autem voluptatem quia est. Tenetur quibusdam dolorem blanditiis dolorum natus rerum.',0,1,'1983-10-04 02:06:01'),(2,80,23,'Doloribus ducimus et dignissimos repudiandae est. Molestiae et aliquam occaecati et commodi. Consequatur totam distinctio et voluptatem dolor aspernatur et.',1,0,'1995-05-06 02:43:06'),(3,72,92,'Aperiam vel veritatis dolor in rerum quia. Autem consequuntur delectus sit sit laboriosam consequatur. Vero et est iste quae neque.',1,1,'1983-06-13 17:42:31'),(4,42,33,'Veniam vero perspiciatis qui eos. Laborum magni aliquam sunt sunt et et tempora.',1,1,'1979-06-30 06:09:01'),(5,40,2,'Consequuntur ut quaerat recusandae eum nihil ullam. Alias ut alias quibusdam ipsa quos quaerat iure dolor. Facilis totam autem rerum quo consequatur. Eaque quaerat enim neque qui illum dolorem quaerat.',0,1,'1975-09-13 22:46:00'),(6,87,30,'Aut doloremque unde aperiam nostrum velit molestiae consequuntur. Sequi rerum esse qui nihil qui at. Dolore exercitationem omnis voluptatem.',1,1,'1992-02-06 11:59:43'),(7,88,50,'Numquam autem consequuntur quos atque voluptatem voluptatem. Asperiores rem quisquam aliquid officiis blanditiis. Voluptas tenetur ipsam est nemo tempore. Laboriosam quaerat totam occaecati voluptas omnis est eveniet quidem.',1,1,'1996-03-28 11:42:36'),(8,87,81,'Accusamus qui dolorem autem. Dolorem amet qui hic totam. Sed aut ab voluptas quia beatae et quod. Quisquam itaque vel ullam eos quia.',0,0,'2006-06-09 00:34:38'),(9,47,89,'Rem maiores nihil consequatur dolorum ut tempore saepe. Omnis est quia quaerat ex id. Pariatur quidem et ut pariatur nihil. Praesentium ex at nostrum beatae exercitationem corporis.',0,1,'1984-01-31 08:26:31'),(10,4,55,'Repellat praesentium natus accusantium sint quasi cumque incidunt. Consequatur aperiam sunt sunt necessitatibus quia velit voluptatem eum. Enim id aut expedita quis. Vero consectetur non aliquam voluptas numquam. Quis dolorem aliquid eaque aut.',1,1,'1980-01-09 00:48:28'),(11,59,32,'Officia optio eos sit repudiandae ipsa. Harum omnis hic odit voluptatem. Id est error aspernatur aut necessitatibus qui. Reiciendis consequuntur perferendis optio adipisci numquam.',0,1,'2017-05-17 04:49:26'),(12,81,8,'Explicabo quasi sit atque aliquid accusantium magni veniam. Sint laborum voluptatem ab placeat aspernatur dolores. Quas odit totam impedit.',0,1,'1994-12-13 05:15:03'),(13,96,54,'Aut expedita aliquam eius eos quis ea qui inventore. Consequatur similique adipisci aut consequatur voluptatibus. Molestiae cupiditate earum consequatur harum eum.',1,0,'1995-05-02 02:08:13'),(14,85,62,'Vero numquam distinctio dolor incidunt fugiat in. Pariatur alias aut animi et labore ea voluptatem. Vel et quaerat inventore aspernatur.',0,1,'2013-04-15 11:56:17'),(15,54,81,'Laboriosam voluptatem sunt ad deserunt molestias quo. Beatae aut quas iure ducimus et exercitationem. Optio sit beatae numquam velit sit. Quibusdam unde commodi ab quos sed officiis eos.',0,1,'1977-01-20 18:06:21'),(16,46,85,'Placeat omnis doloribus est. Dolorum aut repellat ut perferendis consequuntur id quas aperiam. Deleniti aut ut quis.',0,1,'1993-09-15 19:54:16'),(17,85,72,'Adipisci aut ea nihil inventore. Sunt qui at aspernatur ea maiores.',0,1,'2001-01-12 22:23:03'),(18,2,96,'Consequatur omnis eum fugiat voluptatem. Exercitationem facilis esse qui sit. Aut dolore sed ullam qui. Ut voluptatem velit veritatis tenetur perspiciatis numquam dolor. Libero perspiciatis est nemo pariatur.',1,0,'2014-06-28 17:27:07'),(19,73,74,'Ad aspernatur commodi autem. A fugit similique repellat ullam. Accusantium ut quasi consequatur saepe.',0,1,'2002-02-25 19:16:25'),(20,53,41,'Vero pariatur voluptatem vero quaerat expedita est. Similique quasi ipsa explicabo. Aut eaque quis qui ipsam. Et totam vel ea et vel officia dolores cumque.',1,0,'1971-11-21 09:21:34'),(21,45,4,'Possimus totam quia pariatur eum voluptatum in. Molestiae est officia iure est commodi quisquam sit. Et qui iure quia animi aspernatur fugiat magnam ad. Vitae culpa error molestiae ut. Voluptatem dicta et consequatur ipsam error delectus atque.',0,1,'1982-05-25 19:27:39'),(22,82,96,'Sunt molestiae ut voluptas quia nisi. Sed corrupti sed soluta maxime explicabo sunt. Quos maiores error laboriosam suscipit quia. Atque consequatur accusantium necessitatibus odit exercitationem.',1,1,'1983-03-14 10:54:33'),(23,37,95,'Consequuntur quis quia corrupti cum facilis quas fuga. Quaerat repellendus dignissimos ut. Iste quia consequatur ut.',0,1,'1992-07-07 06:58:35'),(24,66,42,'Rerum voluptatem nihil hic ut amet eum expedita. Qui impedit veritatis nemo voluptates dolores praesentium vitae beatae. Quos adipisci dolore officiis eum ut. Et ipsum eum consequatur quidem blanditiis rerum.',1,0,'1988-04-30 15:57:32'),(25,10,26,'Molestiae aliquid blanditiis officia. Et dolor sed et. Autem corporis laborum repudiandae voluptatem.',0,1,'1995-03-06 09:52:31'),(26,100,21,'Iure quis porro voluptatem perspiciatis adipisci. Reprehenderit ut in est vel vel nihil in quia. Suscipit aperiam quaerat recusandae ab suscipit. Ea impedit sint reiciendis doloremque nulla eligendi.',0,1,'1974-12-30 04:59:23'),(27,3,51,'Aut repellendus delectus aliquam sit architecto dolor est. Eos ex consectetur vero omnis ut molestiae. Aperiam animi nemo rerum at facilis consectetur.',0,1,'2005-12-17 17:02:59'),(28,47,82,'Omnis quidem dolore architecto ullam incidunt enim tenetur. Rerum alias sed voluptas quam non. Qui deserunt atque nulla omnis odit dolorem.',1,0,'2003-09-16 12:41:26'),(29,69,96,'Ut soluta perspiciatis quia nostrum et. Repellendus hic excepturi nesciunt vel. Cumque eligendi nisi magni et quo ex.',1,1,'2011-08-06 12:03:44'),(30,75,84,'Earum iure ipsam architecto cum recusandae tempora. Quae fugiat magni illo facere itaque amet consequuntur voluptas. In aut asperiores nihil consequatur labore id sed.',1,0,'1996-07-16 15:04:14');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int unsigned NOT NULL,
  `likes_summ` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'any text you want to put here',91,0,13),(2,'any text you want to put here',90,2,11),(3,'any text you want to put here',86,5,95),(4,'any text you want to put here',17,1,98),(5,'any text you want to put here',40,3,5),(6,'any text you want to put here',7,2,16),(7,'any text you want to put here',60,2,52),(8,'any text you want to put here',78,3,32),(9,'any text you want to put here',27,5,40),(10,'any text you want to put here',19,3,74);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(130) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(130) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,48,'m','2003-12-06','South Cadenburgh','Puerto Rico','2020-05-11 15:52:57'),(2,31,'w','1988-06-26','Port Jacky','Heard Island and McDonald Islands','2020-05-11 15:52:57'),(3,13,'w','2012-08-13','South Kurt','Solomon Islands','2020-05-11 15:52:57'),(4,69,'m','1976-12-15','North Dewitt','Saint Lucia','2020-05-11 15:52:57'),(5,5,'m','2010-10-13','North Anabellefort','Mozambique','2020-05-11 15:52:57'),(6,20,'w','1977-08-14','Jimmiefort','Spain','2020-05-11 15:52:57'),(7,84,'w','1987-12-08','Port Shannonmouth','Malta','2020-05-11 15:52:57'),(8,57,'m','2000-11-02','South Barryshire','Peru','2020-05-11 15:52:57'),(9,35,'m','2002-03-13','South Jacklyn','Venezuela','2020-05-11 15:52:57'),(10,4,'w','2002-02-21','Emmettville','Czech Republic','2020-05-11 15:52:57'),(11,14,'m','1970-06-04','Litzymouth','Hong Kong','2020-05-11 15:52:57'),(12,57,'w','1994-04-10','Trevorburgh','Chad','2020-05-11 15:52:57'),(13,43,'m','2019-08-01','East Gracie','San Marino','2020-05-11 15:52:57'),(14,44,'m','1992-07-01','Bradenburgh','Malta','2020-05-11 15:52:57'),(15,89,'m','1986-02-18','Conorbury','Equatorial Guinea','2020-05-11 15:52:57'),(16,14,'m','2015-12-06','Lake Virginia','Guatemala','2020-05-11 15:52:57'),(17,2,'w','2013-06-15','Feestside','Mongolia','2020-05-11 15:52:57'),(18,70,'m','1982-12-17','Westleyberg','British Indian Ocean Territory (Chagos Archipelago)','2020-05-11 15:52:57'),(19,40,'m','1980-01-15','New Rocky','Taiwan','2020-05-11 15:52:57'),(20,90,'w','1998-08-01','North Justynland','Greece','2020-05-11 15:52:57'),(21,31,'w','1974-09-19','Lake Gabriellafort','Saint Pierre and Miquelon','2020-05-11 15:52:57'),(22,82,'w','1975-02-13','South Leonor','San Marino','2020-05-11 15:52:57'),(23,19,'m','1991-12-10','North Blairstad','Jersey','2020-05-11 15:52:57'),(24,48,'w','2011-04-21','East D\'angelo','Uruguay','2020-05-11 15:52:57'),(25,84,'m','2012-10-10','Roobstad','Antarctica (the territory South of 60 deg S)','2020-05-11 15:52:57'),(26,73,'w','1991-04-14','South Isobel','Sri Lanka','2020-05-11 15:52:57'),(27,12,'m','1973-04-21','Joaquinchester','Barbados','2020-05-11 15:52:57'),(28,41,'m','2015-11-07','South Misaelchester','Sri Lanka','2020-05-11 15:52:57'),(29,68,'w','2007-06-14','Lake Deloresland','Mexico','2020-05-11 15:52:57'),(30,16,'m','2018-11-28','Naderhaven','Pitcairn Islands','2020-05-11 15:52:57'),(31,77,'m','2012-05-07','West Maryse','Denmark','2020-05-11 15:52:57'),(32,36,'m','1985-03-18','Sporershire','Guadeloupe','2020-05-11 15:52:57'),(33,49,'m','1978-08-21','South Nashberg','United Arab Emirates','2020-05-11 15:52:57'),(34,34,'m','2015-02-23','North Roxanneside','Ireland','2020-05-11 15:52:57'),(35,26,'w','1990-02-18','Isacstad','South Georgia and the South Sandwich Islands','2020-05-11 15:52:57'),(36,24,'m','1990-11-26','Madelinetown','Tonga','2020-05-11 15:52:57'),(37,45,'w','1976-11-30','New Selina','Oman','2020-05-11 15:52:57'),(38,49,'m','1993-08-11','North Kodyhaven','Maldives','2020-05-11 15:52:57'),(39,11,'w','2018-04-27','South Alexane','Slovakia (Slovak Republic)','2020-05-11 15:52:57'),(40,6,'m','2017-04-29','Port Kenhaven','Moldova','2020-05-11 15:52:57'),(41,99,'w','1984-02-03','Port Monteton','Montserrat','2020-05-11 15:52:57'),(42,77,'w','1987-05-24','Kirlinport','Puerto Rico','2020-05-11 15:52:57'),(43,88,'w','2016-08-31','Osinskifort','South Georgia and the South Sandwich Islands','2020-05-11 15:52:57'),(44,7,'m','2017-08-22','Zacharyhaven','Spain','2020-05-11 15:52:57'),(45,70,'w','1970-07-15','West Kyleville','Slovakia (Slovak Republic)','2020-05-11 15:52:57'),(46,28,'m','1994-03-11','Billstad','Saint Pierre and Miquelon','2020-05-11 15:52:57'),(47,32,'m','2008-07-01','Schulistchester','Korea','2020-05-11 15:52:57'),(48,74,'m','1980-02-19','Port Evangelinebury','Uruguay','2020-05-11 15:52:57'),(49,76,'m','2002-07-24','South Beatriceville','Oman','2020-05-11 15:52:57'),(50,55,'w','1985-08-29','West Gregory','Uganda','2020-05-11 15:52:57'),(51,47,'m','1970-11-05','Stephontown','Ireland','2020-05-11 15:52:57'),(52,70,'w','1998-01-23','Bayleefurt','Isle of Man','2020-05-11 15:52:57'),(53,7,'w','2010-02-03','Mantechester','United Arab Emirates','2020-05-11 15:52:57'),(54,24,'m','1972-06-28','Rebekahbury','Antigua and Barbuda','2020-05-11 15:52:57'),(55,99,'m','1970-02-28','North Gracielaland','Christmas Island','2020-05-11 15:52:57'),(56,24,'w','1998-07-05','Jerdefurt','South Georgia and the South Sandwich Islands','2020-05-11 15:52:57'),(57,20,'m','2014-01-11','Schillerview','Palestinian Territory','2020-05-11 15:52:57'),(58,27,'m','2015-07-21','Ornside','Sweden','2020-05-11 15:52:57'),(59,77,'w','2008-01-14','Hauckview','Cote d\'Ivoire','2020-05-11 15:52:57'),(60,3,'w','2004-07-06','Ziemeland','Nicaragua','2020-05-11 15:52:57'),(61,82,'m','1984-12-17','Georgiannabury','United States Minor Outlying Islands','2020-05-11 15:52:57'),(62,3,'w','1975-03-11','North Hazelborough','Pakistan','2020-05-11 15:52:57'),(63,68,'m','1985-10-02','East Pete','Costa Rica','2020-05-11 15:52:57'),(64,28,'w','1986-02-01','Bednarchester','Heard Island and McDonald Islands','2020-05-11 15:52:57'),(65,38,'m','2019-06-27','Schuppeside','Austria','2020-05-11 15:52:57'),(66,5,'m','1978-11-08','North Daphne','Singapore','2020-05-11 15:52:57'),(67,11,'m','1991-06-01','Konopelskihaven','El Salvador','2020-05-11 15:52:57'),(68,41,'w','2016-07-22','Port Marion','Denmark','2020-05-11 15:52:57'),(69,69,'w','1974-03-12','Leohaven','Moldova','2020-05-11 15:52:57'),(70,20,'m','1980-01-27','Welchborough','Albania','2020-05-11 15:52:57'),(71,96,'w','1982-07-15','Port Willaborough','Isle of Man','2020-05-11 15:52:57'),(72,16,'w','1998-05-27','Stromantown','Niue','2020-05-11 15:52:57'),(73,93,'m','2011-06-27','Port Madisyn','Uruguay','2020-05-11 15:52:57'),(74,18,'m','1978-04-24','Gibsonborough','Iraq','2020-05-11 15:52:57'),(75,9,'w','1971-10-30','Blickville','China','2020-05-11 15:52:57'),(76,89,'m','1995-01-01','South Benton','Papua New Guinea','2020-05-11 15:52:57'),(77,19,'w','2019-11-02','Ankundingtown','Solomon Islands','2020-05-11 15:52:57'),(78,25,'w','2001-01-16','Lake Jayneville','Suriname','2020-05-11 15:52:57'),(79,71,'w','2014-10-02','Braunville','Kenya','2020-05-11 15:52:57'),(80,78,'w','1993-03-09','East Mitchelfort','Venezuela','2020-05-11 15:52:57'),(81,77,'m','1994-12-20','Zemlakside','Montserrat','2020-05-11 15:52:57'),(82,52,'m','1992-07-11','Ritchiefort','Czech Republic','2020-05-11 15:52:57'),(83,27,'m','1982-10-27','North Annetteside','Wallis and Futuna','2020-05-11 15:52:57'),(84,80,'m','1974-01-07','O\'Reillyville','Greenland','2020-05-11 15:52:57'),(85,18,'w','2009-07-01','Dantemouth','Saint Vincent and the Grenadines','2020-05-11 15:52:57'),(86,47,'w','2004-01-14','West Tatum','Liechtenstein','2020-05-11 15:52:57'),(87,84,'w','1995-08-24','New Hector','Seychelles','2020-05-11 15:52:57'),(88,76,'m','1971-07-24','Darefort','Guatemala','2020-05-11 15:52:57'),(89,29,'w','2017-01-22','Stehrchester','Brunei Darussalam','2020-05-11 15:52:57'),(90,15,'m','1988-11-03','Lake Clifton','Macedonia','2020-05-11 15:52:57'),(91,89,'m','2009-06-14','Port Sofiaport','Niger','2020-05-11 15:52:57'),(92,100,'m','1974-08-03','Port Calista','Panama','2020-05-11 15:52:57'),(93,33,'w','1981-11-23','New Lonzo','Congo','2020-05-11 15:52:57'),(94,64,'m','1977-04-09','Bartonport','Cape Verde','2020-05-11 15:52:57'),(95,21,'m','1987-05-10','Lake Wilton','Saint Vincent and the Grenadines','2020-05-11 15:52:57'),(96,10,'m','2006-12-11','Alyceton','Eritrea','2020-05-11 15:52:57'),(97,88,'w','2016-01-01','Magdalenaberg','Lebanon','2020-05-11 15:52:57'),(98,11,'m','1986-12-26','Giuseppeview','Belgium','2020-05-11 15:52:57'),(99,91,'w','1981-07-01','New Estefaniahaven','Honduras','2020-05-11 15:52:57'),(100,18,'w','1983-08-13','Muellerbury','Turkmenistan','2020-05-11 15:52:57');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statuses`
--

DROP TABLE IF EXISTS `user_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statuses`
--

LOCK TABLES `user_statuses` WRITE;
/*!40000 ALTER TABLE `user_statuses` DISABLE KEYS */;
INSERT INTO `user_statuses` VALUES (1,'active'),(2,'blocked'),(3,'deleted');
/*!40000 ALTER TABLE `user_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Golden','O\'Kon','ewald.ledner@example.com','021.072.2405x992',3,'1995-11-06 18:01:07','2020-05-11 14:28:54'),(2,'Josefina','Heller','kianna77@example.net','(392)924-7388x69988',3,'2006-11-22 01:47:46','2020-05-11 14:28:54'),(3,'Francesca','Harvey','sherwood66@example.org','(020)228-3891x7049',2,'2013-06-14 03:27:05','2020-05-11 14:28:54'),(4,'Brannon','Prohaska','hoeger.pansy@example.net','(549)203-1332',3,'2009-01-22 05:56:30','2020-05-11 14:28:54'),(5,'Ethel','Hermann','jlangworth@example.com','+76(1)8542530585',2,'2016-04-20 15:06:15','2020-05-11 14:28:54'),(6,'Crystel','Balistreri','lauryn33@example.com','1-531-165-0636',3,'1983-05-10 14:21:04','2020-05-11 14:28:54'),(7,'Dereck','Miller','nikolaus.abigayle@example.org','343.631.3929',1,'2011-05-14 18:31:56','2020-05-11 11:02:02'),(8,'Jettie','Beatty','mercedes.jenkins@example.com','+65(8)0476425272',3,'2004-04-09 15:13:23','2020-05-11 14:28:54'),(9,'Joesph','Muller','uhagenes@example.com','073-794-7901x80476',2,'2019-07-07 17:45:52','2020-05-11 14:28:54'),(10,'Marilie','Jacobi','oheaney@example.com','288-232-2255x195',2,'1992-11-07 03:29:25','2020-05-11 14:28:54'),(11,'Jairo','Terry','gabriel43@example.com','01211353610',3,'2016-09-20 21:21:37','2020-05-11 14:28:54'),(12,'Rogelio','Tillman','wilmer.klocko@example.org','1-931-372-6343',1,'1978-05-04 20:51:34','2017-05-19 09:38:02'),(13,'Kianna','Simonis','mable.bernhard@example.com','249-832-7060x8964',2,'2002-05-05 00:54:09','2020-05-11 14:28:54'),(14,'Carroll','Metz','everette.leffler@example.com','+45(5)4070496711',1,'2006-01-14 20:52:30','2017-03-28 17:18:38'),(15,'Alycia','Volkman','lbogisich@example.com','+82(7)9707938274',3,'1993-11-12 23:38:21','2020-05-11 14:28:54'),(16,'Anais','Hamill','owalter@example.net','(674)414-9418',1,'2014-11-08 04:59:38','2020-05-11 11:02:02'),(17,'Ara','Rutherford','juvenal18@example.com','971.185.4769x474',3,'2015-04-06 16:54:30','2020-05-11 14:28:54'),(18,'Bryana','Mitchell','lehner.timmothy@example.net','019.571.4009x294',2,'1972-11-24 19:50:17','2020-05-11 14:28:54'),(19,'Joshua','Langworth','wyman.ebert@example.com','(387)494-6061x9056',2,'2003-04-03 18:39:07','2020-05-11 14:28:54'),(20,'Carey','Sauer','rdibbert@example.org','08390170665',1,'1980-06-12 08:36:33','2020-05-11 11:02:02'),(21,'Kennedy','Koss','leuschke.alfred@example.com','441-205-1570x86059',2,'1974-11-04 22:57:21','2020-05-11 14:28:54'),(22,'Zion','Hackett','zspencer@example.net','567.652.1861',3,'1970-02-08 12:34:46','2020-05-11 14:28:54'),(23,'Coralie','Cummings','mossie59@example.net','(809)999-7003x17654',2,'1987-02-20 01:25:01','2020-05-11 14:28:54'),(24,'Mozell','Kiehn','jillian.weissnat@example.com','(839)609-2944x09913',1,'2012-07-05 12:34:05','2018-01-07 02:11:01'),(25,'Larue','Bosco','manuel.zemlak@example.net','220-376-8732',3,'2019-07-29 08:39:55','2020-05-11 14:28:54'),(26,'Gunnar','Mante','asha60@example.org','510-869-3968',2,'2018-09-14 09:24:21','2020-05-11 14:28:54'),(27,'Randall','Bruen','ernest77@example.com','381.429.5639x88656',1,'2016-11-30 05:04:04','2020-05-11 11:02:02'),(28,'Isabella','Lynch','lupton@example.org','339-916-0793',2,'2018-05-04 14:24:47','2020-05-11 14:28:54'),(29,'Cali','Kuhn','bins.dexter@example.org','01442102195',1,'2004-02-29 20:02:55','2007-09-28 11:13:52'),(30,'Kaylah','Ankunding','kuvalis.otto@example.net','1-152-083-5275x118',3,'1974-07-23 21:11:07','2020-05-11 14:28:54'),(31,'Lindsay','Powlowski','fabiola57@example.org','688.650.1471x71951',1,'1993-10-18 05:39:01','2020-05-11 11:02:02'),(32,'Lawson','Feeney','heller.emily@example.net','818-281-2726',1,'2001-06-06 22:03:01','2002-10-27 17:28:07'),(33,'Gaston','Okuneva','renner.liliana@example.com','882-044-9378',2,'1981-08-21 05:30:46','2020-05-11 14:28:54'),(34,'Roselyn','McKenzie','abigail.wisozk@example.org','1-757-111-7960',3,'1997-10-29 11:07:46','2020-05-11 14:28:54'),(35,'Vesta','Parisian','kreiger.tito@example.org','314-197-9279',3,'2006-08-10 17:15:43','2020-05-11 14:28:54'),(36,'Itzel','Bahringer','terry.vicky@example.org','1-762-608-4474x03592',3,'2015-10-30 22:06:52','2020-05-11 14:28:54'),(37,'Sylvester','Emmerich','pacocha.shawn@example.org','+94(3)9331986709',3,'1999-07-13 05:23:08','2020-05-11 14:28:54'),(38,'Henriette','Schroeder','beier.alexandrea@example.net','444-597-4182x812',1,'2007-02-11 11:49:01','2020-05-11 11:02:02'),(39,'Milford','Schowalter','christy.heller@example.net','1-800-729-2426',3,'1980-08-01 19:17:25','2020-05-11 14:28:54'),(40,'Gardner','Howell','esta.herzog@example.org','07223917108',3,'2009-04-30 17:38:58','2020-05-11 14:28:54'),(41,'Rosendo','Swaniawski','ctoy@example.net','1-568-098-0897x45357',2,'2016-05-09 10:35:11','2020-05-11 14:28:54'),(42,'Leann','Satterfield','paolo.marquardt@example.com','(506)247-0366',3,'1989-07-18 00:11:21','2020-05-11 14:28:54'),(43,'Selina','Powlowski','voberbrunner@example.net','926.230.8739x1130',3,'1975-04-27 13:40:43','2020-05-11 14:28:54'),(44,'Buster','Murazik','reta.gerhold@example.com','377.812.1693x92996',3,'1982-12-21 03:15:54','2020-05-11 14:28:54'),(45,'Maymie','Parisian','greenfelder.noemie@example.org','259.212.4131',1,'1987-01-29 00:52:09','1991-10-03 12:43:37'),(46,'Angel','Schoen','beer.vivien@example.net','1-492-969-9009x3195',1,'1972-08-25 12:44:31','2020-05-11 11:02:02'),(47,'Jamison','Ernser','stroman.krista@example.org','295-278-1176x2177',1,'1973-07-13 01:08:55','2010-03-04 04:20:57'),(48,'Hayley','Volkman','celine02@example.com','1-926-142-6711',3,'1983-01-15 00:22:15','2020-05-11 14:28:54'),(49,'Nadia','Paucek','demario52@example.org','(720)537-2293x076',1,'2008-03-19 04:31:48','2020-05-11 11:02:02'),(50,'Clarabelle','Swift','flatley.adrien@example.org','(880)766-9618x477',2,'1984-01-03 23:03:06','2020-05-11 14:28:54'),(51,'Hershel','Simonis','hagenes.ford@example.com','1-139-328-8247x12847',3,'2017-05-29 20:29:24','2020-05-11 14:28:54'),(52,'Augustine','Waters','cormier.jerad@example.net','(993)089-3644',2,'1970-02-17 02:07:05','2020-05-11 14:28:54'),(53,'Kip','Lebsack','orlando.hoppe@example.com','1-903-012-0170x3199',2,'1996-01-21 09:03:13','2020-05-11 14:28:54'),(54,'Martine','Heathcote','yost.jose@example.org','(709)281-1781',2,'1981-03-21 12:43:15','2020-05-11 14:28:54'),(55,'Michele','Hand','bryon.deckow@example.net','075-194-3573x695',1,'1999-09-30 19:36:08','2003-02-23 20:02:46'),(56,'Gerardo','Blanda','veum.clifton@example.com','068-260-6398x60719',1,'2014-02-12 11:03:02','2020-05-11 11:02:02'),(57,'Kian','Harris','morissette.jessy@example.net','04415982755',1,'1984-04-12 20:02:45','2000-06-14 22:52:12'),(58,'Twila','Crooks','savanna98@example.net','330.906.5542x97245',2,'2014-05-18 14:20:38','2020-05-11 14:28:54'),(59,'Benjamin','Torp','ernie.ledner@example.com','1-413-005-5107',1,'1977-10-31 20:09:23','1988-04-23 17:30:29'),(60,'Harrison','Fahey','crooks.emory@example.com','1-484-703-3860',1,'1972-05-29 06:34:37','2017-07-21 21:32:39'),(61,'Mable','McCullough','rocio.hudson@example.net','1-127-331-5119x159',1,'2011-08-26 22:02:42','2020-05-11 11:02:02'),(62,'Kameron','Hayes','pbode@example.org','1-153-689-2470x89479',2,'1982-06-26 16:18:04','2020-05-11 14:28:54'),(63,'Lucio','Borer','elarson@example.org','257.054.8792',3,'1975-01-30 10:13:59','2020-05-11 14:28:54'),(64,'Jakob','Emmerich','bartell.lilian@example.net','(058)195-5328',3,'2007-09-09 13:23:06','2020-05-11 14:28:54'),(65,'Leonie','Barton','rortiz@example.com','(702)239-1396x89666',2,'2019-09-03 04:24:38','2020-05-11 14:28:54'),(66,'Sylvia','Hodkiewicz','bahringer.vince@example.org','844.228.8623x63363',1,'2005-01-20 14:03:31','2020-05-11 11:02:02'),(67,'Baylee','Boyer','uyundt@example.net','646-773-0114x248',2,'2015-12-14 09:45:10','2020-05-11 14:28:54'),(68,'Jena','Champlin','aufderhar.holden@example.org','1-835-584-8468',3,'2010-02-02 00:45:19','2020-05-11 14:28:54'),(69,'Stacy','Orn','maida79@example.net','05570663015',1,'1994-03-16 04:01:30','1998-07-24 21:05:11'),(70,'Serena','Batz','reinhold42@example.net','1-291-102-3101x27176',1,'2010-04-23 14:33:32','2020-05-11 11:02:02'),(71,'Alek','O\'Reilly','arlene.grimes@example.net','(943)481-7904x76622',3,'1970-05-22 22:00:55','2020-05-11 14:28:54'),(72,'Ewald','Parisian','raul93@example.org','1-394-876-7168x0287',1,'1986-03-01 01:17:24','1987-08-10 16:43:48'),(73,'Jettie','Graham','streich.shanny@example.org','(106)939-8889x96384',2,'1983-11-23 10:33:54','2020-05-11 14:28:54'),(74,'Flo','Robel','vincent.swift@example.net','(264)831-1640x95915',1,'1975-04-05 07:44:24','2017-06-08 23:10:07'),(75,'Lennie','Schoen','deckow.tyrique@example.org','1-286-491-9045',3,'2003-02-06 08:15:43','2020-05-11 14:28:54'),(76,'Raheem','Kutch','schumm.milford@example.com','(958)429-9560x2251',3,'1975-04-16 17:06:59','2020-05-11 14:28:54'),(77,'Elisha','Baumbach','irwin.kuhlman@example.org','587.364.3492x4450',1,'1990-12-06 13:06:16','2020-05-11 11:02:02'),(78,'Nicola','Crist','lynch.jalen@example.com','198.970.4661x0727',3,'1971-10-03 03:55:14','2020-05-11 14:28:54'),(79,'Brock','Jerde','darlene28@example.com','+71(1)8858310376',1,'2017-06-05 20:16:50','2020-05-11 11:02:02'),(80,'Jess','Crist','towne.arnoldo@example.com','1-415-011-3308x741',3,'2014-04-09 20:57:03','2020-05-11 14:28:54'),(81,'Rebekah','Sporer','neha98@example.com','970.093.5793x177',1,'2000-06-22 09:45:30','2020-05-11 11:02:02'),(82,'Meaghan','Cassin','ryan.karson@example.net','307-094-2775x5600',2,'1985-01-29 20:44:54','2020-05-11 14:28:54'),(83,'Mekhi','Eichmann','pbosco@example.org','1-457-760-6941x680',1,'1981-07-07 01:05:18','2020-05-11 11:02:02'),(84,'Reuben','Sawayn','birdie49@example.org','(064)274-3959x659',2,'2003-06-26 23:30:23','2020-05-11 14:28:54'),(85,'Cale','Effertz','emurazik@example.com','(223)768-0197',1,'2001-04-17 17:59:51','2013-12-26 12:11:03'),(86,'Raphael','Kemmer','lessie.gulgowski@example.net','1-116-498-2638',1,'1991-04-16 03:15:09','2020-05-11 11:02:02'),(87,'Daisha','Medhurst','co\'keefe@example.org','02330424776',3,'1995-08-21 15:05:07','2020-05-11 14:28:54'),(88,'Daryl','Gottlieb','terence83@example.org','008.005.5138x1877',2,'1996-02-26 06:30:58','2020-05-11 14:28:54'),(89,'Joy','Sawayn','jewel46@example.com','1-166-502-6913',3,'2011-10-20 17:40:31','2020-05-11 14:28:54'),(90,'Ford','Daugherty','xbeier@example.com','1-358-967-5267x549',3,'1982-10-12 17:17:32','2020-05-11 14:28:54'),(91,'Kolby','Dooley','mitchel.kutch@example.org','(627)962-9575x792',1,'1995-01-18 02:22:53','2020-05-11 11:02:02'),(92,'Lorna','Mann','nico81@example.net','(216)154-8480x978',2,'2013-04-05 23:42:48','2020-05-11 14:28:54'),(93,'Flo','Hirthe','ifadel@example.net','(498)489-4953',2,'1979-05-26 08:18:54','2020-05-11 14:28:54'),(94,'Aurelia','Hermiston','pkiehn@example.net','312-028-9800x8834',3,'1989-10-10 00:44:57','2020-05-11 14:28:54'),(95,'Ellis','Gutmann','beahan.tyson@example.org','178.758.0776x930',2,'1980-05-05 06:45:32','2020-05-11 14:28:54'),(96,'Belle','Waelchi','raquel33@example.com','1-980-662-2212x9355',2,'2003-08-17 08:28:25','2020-05-11 14:28:54'),(97,'Mckenzie','Reynolds','caleb23@example.net','1-384-612-1946',2,'1972-03-26 15:05:14','2020-05-11 14:28:54'),(98,'Danyka','Oberbrunner','koelpin.lauriane@example.net','054-341-0768',1,'1989-04-03 13:45:37','2020-05-11 11:02:02'),(99,'Kavon','Walker','gleason.leila@example.org','1-653-617-6083',1,'2004-05-31 14:34:46','2020-05-11 11:02:02'),(100,'Wilfrid','Bernhard','danial.zulauf@example.com','339-777-9733',1,'1983-02-26 09:08:05','2002-12-31 03:08:06');
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

-- Dump completed on 2020-05-11 23:04:38
