-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: red
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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` tinyint NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `activity_name__idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (2,'продается'),(3,'продано'),(1,'черновик');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `price` int unsigned DEFAULT NULL,
  `estate_type_id` int DEFAULT NULL,
  `sale_rent_id` tinyint DEFAULT NULL,
  `activity_id` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id_fk` (`user_id`),
  KEY `estate_type_id_fk` (`estate_type_id`),
  KEY `sale_rent_id_fk` (`sale_rent_id`),
  KEY `activity_id_fk` (`activity_id`),
  KEY `advertisement_price__idx` (`price`),
  CONSTRAINT `activity_id_fk` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE SET NULL,
  CONSTRAINT `estate_type_id_fk` FOREIGN KEY (`estate_type_id`) REFERENCES `estate_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sale_rent_id_fk` FOREIGN KEY (`sale_rent_id`) REFERENCES `sale_rent` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,27,6004964,2,2,3,'2020-05-22 02:45:59','2020-06-11 12:34:57'),(2,12,8830158,2,2,1,'2012-07-25 09:00:30','2020-06-11 12:34:57'),(3,7,5135899,2,2,2,'2017-02-17 17:25:54','2020-06-11 12:34:57'),(4,71,8189021,2,2,3,'2011-05-07 09:26:43','2020-06-11 12:34:57'),(5,72,4537408,2,2,2,'2012-12-11 15:49:31','2020-06-11 12:34:57'),(6,69,7119979,1,1,3,'2014-07-03 15:52:51','2020-06-11 11:50:10'),(7,18,10987674,1,1,3,'2010-08-18 18:32:19','2020-06-11 11:50:10'),(8,2,2578431,2,2,2,'2018-09-13 19:13:11','2020-06-11 12:34:57'),(9,94,8929136,2,2,2,'2015-08-27 09:33:09','2020-06-11 12:34:57'),(10,66,5910389,2,2,1,'2019-05-03 08:47:00','2020-06-11 12:34:57'),(11,26,1764534,2,2,2,'2015-09-29 05:37:13','2020-06-11 12:34:57'),(12,67,10091507,2,2,3,'2019-09-24 20:27:31','2020-06-11 12:34:57'),(13,46,4163932,1,1,3,'2019-03-16 05:50:41','2020-06-11 12:34:19'),(14,96,9545140,2,1,3,'2013-06-01 23:59:59','2020-06-11 12:34:57'),(15,76,4233904,2,2,1,'2018-01-04 05:37:52','2020-06-11 12:34:57'),(16,33,1534103,2,1,2,'2020-02-16 18:59:55','2020-06-11 12:34:57'),(17,56,3968801,1,1,1,'2011-10-06 11:35:42','2020-06-11 12:34:19'),(18,57,4241700,2,2,2,'2013-04-08 11:17:25','2020-06-11 12:34:57'),(19,32,8302095,2,2,3,'2013-07-02 12:39:29','2020-06-11 12:34:57'),(20,73,7785375,1,1,3,'2013-08-31 10:06:20','2020-06-11 11:50:10'),(21,39,3020591,2,2,3,'2018-03-08 10:42:05','2020-06-11 12:34:57'),(22,29,10746830,1,2,3,'2018-02-25 23:48:50','2020-06-11 12:34:19'),(23,35,3672380,1,1,2,'2012-01-15 22:01:00','2020-06-11 11:50:10'),(24,6,5121408,2,1,2,'2012-06-21 21:46:06','2020-06-11 12:34:57'),(25,69,3589902,1,1,2,'2014-10-26 13:42:48','2020-06-11 11:50:10'),(26,21,1585289,2,2,1,'2014-07-24 18:40:56','2020-06-11 12:34:57'),(27,28,6156736,2,1,2,'2018-08-27 18:36:53','2020-06-11 12:34:57'),(28,44,5027817,2,1,1,'2019-04-07 11:03:57','2020-06-11 12:34:57'),(29,89,5668876,1,2,2,'2020-02-18 16:32:00','2020-06-11 12:34:19'),(30,51,2260931,1,1,2,'2017-01-26 13:51:58','2020-06-11 12:34:19'),(31,54,3298028,1,1,1,'2014-03-16 16:17:07','2020-06-11 12:34:19'),(32,56,8707348,1,2,3,'2010-08-11 03:14:45','2020-06-11 11:50:10'),(33,72,2642656,2,1,2,'2014-01-04 04:06:40','2020-06-11 12:34:57'),(34,71,6091238,1,2,1,'2015-02-11 21:24:53','2020-06-11 11:50:10'),(35,100,1528223,1,1,1,'2016-12-10 14:08:06','2020-06-11 11:50:10'),(36,93,8367402,2,2,2,'2010-08-06 08:09:57','2020-06-11 12:34:57'),(37,10,6252341,2,1,2,'2013-11-27 03:50:45','2020-06-11 12:34:57'),(38,70,5159499,1,2,2,'2017-03-11 14:23:16','2020-06-11 12:34:19'),(39,2,6040473,1,1,3,'2013-01-13 06:27:35','2020-06-11 11:50:10'),(40,53,3723868,2,1,2,'2016-09-28 14:24:34','2020-06-11 12:34:57'),(41,33,9497924,2,1,2,'2014-10-25 10:47:33','2020-06-11 12:34:57'),(42,42,5318015,2,2,3,'2016-09-08 22:11:23','2020-06-11 12:34:57'),(43,27,7096302,1,2,2,'2015-10-16 17:37:56','2020-06-11 12:34:19'),(44,59,8527469,1,1,2,'2015-08-18 01:05:50','2020-06-11 12:34:19'),(45,20,10348440,1,2,2,'2016-10-08 13:08:25','2020-06-11 12:34:19'),(46,89,5159792,1,2,1,'2011-06-12 19:55:33','2020-06-11 11:50:10'),(47,7,3753641,2,2,2,'2018-08-16 01:50:40','2020-06-11 12:34:57'),(48,8,2288831,1,1,2,'2017-02-22 21:44:35','2020-06-11 12:34:19'),(49,64,9183233,2,2,2,'2015-11-23 19:49:25','2020-06-11 12:34:57'),(50,78,8049672,1,2,2,'2015-02-05 16:01:19','2020-06-11 11:50:10'),(51,5,1698663,2,2,1,'2015-09-06 13:51:14','2020-06-11 12:34:57'),(52,83,3344301,1,2,3,'2018-12-28 09:18:39','2020-06-11 12:34:19'),(53,27,10625516,1,2,2,'2020-01-11 07:15:13','2020-06-11 11:50:10'),(54,94,2094676,2,2,1,'2020-05-12 16:47:52','2020-06-11 12:34:57'),(55,27,7596835,2,1,2,'2015-10-20 03:26:17','2020-06-11 12:34:57'),(56,91,10700148,2,1,1,'2017-01-13 23:25:59','2020-06-11 12:34:57'),(57,34,9710233,2,1,1,'2011-05-24 00:26:55','2020-06-11 12:34:57'),(58,60,5450724,2,2,1,'2011-08-24 21:28:12','2020-06-11 12:34:57'),(59,5,7122922,1,1,3,'2019-02-15 05:54:22','2020-06-11 11:50:10'),(60,43,8262438,1,2,3,'2015-07-27 03:58:46','2020-06-11 11:50:10'),(61,33,8943423,1,1,3,'2013-03-04 02:36:04','2020-06-11 12:34:19'),(62,61,8929804,1,2,1,'2014-06-06 08:17:33','2020-06-11 12:34:19'),(63,44,6818751,2,2,2,'2019-04-18 06:45:19','2020-06-11 12:34:57'),(64,48,6304344,2,2,2,'2011-04-01 00:39:56','2020-06-11 12:34:57'),(65,77,10065468,1,1,2,'2015-06-04 07:37:15','2020-06-11 11:50:10'),(66,7,10414310,2,2,1,'2020-06-07 08:06:16','2020-06-11 12:34:57'),(67,66,10875144,1,2,3,'2015-05-29 04:34:40','2020-06-11 12:34:19'),(68,33,2132794,2,1,3,'2013-08-26 15:49:46','2020-06-11 12:34:57'),(69,66,7038537,2,2,3,'2014-07-05 22:15:04','2020-06-11 12:34:57'),(70,4,7794303,2,2,1,'2017-12-23 02:31:12','2020-06-11 12:34:57'),(71,35,6855908,2,1,3,'2014-08-31 13:13:50','2020-06-11 12:34:57'),(72,25,9896629,1,1,3,'2013-07-21 04:01:26','2020-06-11 11:50:10'),(73,57,7915423,1,2,3,'2019-01-27 08:01:16','2020-06-11 11:50:10'),(74,80,8887228,1,2,3,'2013-01-15 18:02:21','2020-06-11 11:50:10'),(75,83,9689872,2,1,1,'2015-05-31 21:43:03','2020-06-11 12:34:57'),(76,57,10787679,2,1,1,'2019-10-14 00:45:00','2020-06-11 12:34:57'),(77,58,3868778,1,1,3,'2013-09-16 20:58:09','2020-06-11 12:34:19'),(78,67,5980854,1,2,2,'2015-11-26 16:59:37','2020-06-11 12:34:19'),(79,44,7297939,1,2,1,'2020-05-23 18:03:44','2020-06-11 12:34:19'),(80,36,7547131,2,2,1,'2013-05-25 13:05:13','2020-06-11 12:34:57'),(81,80,4841840,2,2,3,'2011-06-23 20:45:17','2020-06-11 12:34:57'),(82,77,10567809,2,2,3,'2016-02-07 13:01:18','2020-06-11 12:34:57'),(83,4,7313525,1,2,1,'2012-03-05 19:07:59','2020-06-11 11:50:10'),(84,1,3864200,2,2,2,'2011-06-26 23:16:29','2020-06-11 12:34:57'),(85,44,6380426,1,1,1,'2017-01-25 08:53:11','2020-06-11 11:50:10'),(86,73,9309532,2,1,1,'2019-12-01 03:35:00','2020-06-11 12:34:57'),(87,62,6406380,2,1,3,'2013-10-30 06:32:55','2020-06-11 12:34:57'),(88,47,3103304,2,2,1,'2014-04-21 00:14:33','2020-06-11 12:34:57'),(89,53,5297382,2,2,1,'2014-03-15 21:03:34','2020-06-11 12:34:57'),(90,99,6176999,1,1,1,'2015-02-23 03:36:51','2020-06-11 11:50:10'),(91,24,3992850,1,2,3,'2019-09-26 11:18:37','2020-06-11 12:34:19'),(92,53,10433253,1,2,2,'2012-06-29 09:51:58','2020-06-11 11:50:10'),(93,63,9187715,2,2,3,'2017-04-30 09:29:26','2020-06-11 12:34:57'),(94,70,3638817,1,2,3,'2014-04-22 23:29:11','2020-06-11 11:50:10'),(95,64,9630941,2,1,3,'2015-12-05 15:41:16','2020-06-11 12:34:57'),(96,27,6238255,1,1,2,'2020-01-14 17:27:07','2020-06-11 11:50:10'),(97,84,1298451,2,1,1,'2017-05-27 03:52:53','2020-06-11 12:34:57'),(98,82,6777492,1,2,1,'2014-09-26 10:20:01','2020-06-11 11:50:10'),(99,57,8992106,1,1,3,'2015-01-11 03:30:06','2020-06-11 11:50:10'),(100,96,3628056,2,2,1,'2011-04-09 00:37:56','2020-06-11 12:34:57'),(101,63,10163962,2,2,3,'2016-06-30 23:07:59','2020-06-11 12:34:57'),(102,96,8935644,1,2,2,'2018-08-26 10:35:03','2020-06-11 11:50:10'),(103,3,3186333,1,2,2,'2011-08-13 20:01:11','2020-06-11 11:50:10'),(104,90,8124734,2,1,3,'2017-05-23 12:45:37','2020-06-11 12:34:57'),(105,94,10064671,2,2,3,'2012-10-13 16:15:58','2020-06-11 12:34:57'),(106,76,4949155,2,1,3,'2019-03-02 13:23:52','2020-06-11 12:34:57'),(107,81,3551764,2,2,1,'2010-09-04 15:08:20','2020-06-11 12:34:57'),(108,55,1911353,2,1,2,'2018-01-31 19:25:41','2020-06-11 12:34:57'),(109,74,7901476,2,2,2,'2016-08-29 13:35:42','2020-06-11 12:34:57'),(110,15,2773321,2,2,2,'2018-06-25 14:07:17','2020-06-11 12:34:57'),(111,23,9162177,1,1,2,'2014-08-23 04:13:45','2020-06-11 11:50:10'),(112,53,6490924,2,1,1,'2014-09-20 04:00:43','2020-06-11 12:34:57'),(113,34,3968087,2,1,2,'2020-05-03 22:58:19','2020-06-11 12:34:57'),(114,57,9367667,1,1,3,'2019-12-14 04:25:01','2020-06-11 12:34:19'),(115,26,3934073,2,2,3,'2015-06-10 17:01:46','2020-06-11 12:34:57'),(116,34,10567364,1,1,3,'2015-01-16 11:05:06','2020-06-11 11:50:10'),(117,2,10034604,2,2,3,'2019-10-11 05:04:27','2020-06-11 12:34:57'),(118,9,7470930,1,2,1,'2012-09-14 21:23:12','2020-06-11 11:50:10'),(119,8,6250836,2,1,3,'2017-06-23 06:39:15','2020-06-11 12:34:57'),(120,80,7841390,1,2,3,'2020-03-03 00:45:12','2020-06-11 11:50:10'),(121,95,9454444,1,1,2,'2013-09-28 16:45:23','2020-06-11 11:50:10'),(122,53,2748051,2,1,1,'2016-10-25 12:48:48','2020-06-11 12:34:57'),(123,42,4376925,2,1,2,'2011-02-13 22:16:49','2020-06-11 12:34:57'),(124,79,2640470,2,1,1,'2014-11-14 09:29:21','2020-06-11 12:34:57'),(125,21,9071576,2,2,3,'2020-01-10 03:02:20','2020-06-11 12:34:57'),(126,22,6436473,1,1,3,'2012-02-02 08:47:58','2020-06-11 11:50:10'),(127,22,3967636,2,1,3,'2010-08-24 09:30:59','2020-06-11 12:34:57'),(128,16,9528761,2,2,1,'2020-03-17 22:21:56','2020-06-11 12:34:57'),(129,81,4740899,2,2,1,'2010-08-14 04:02:56','2020-06-11 12:34:57'),(130,43,4118212,1,2,1,'2017-01-29 10:34:38','2020-06-11 11:50:10'),(131,69,5368363,2,2,1,'2019-01-01 22:09:38','2020-06-11 12:34:57'),(132,55,3487180,1,1,1,'2019-03-21 11:30:44','2020-06-11 11:50:10'),(133,65,10330811,2,1,3,'2011-03-24 10:30:50','2020-06-11 12:34:57'),(134,50,10192516,1,2,1,'2016-07-06 01:30:37','2020-06-11 11:50:10'),(135,68,8970147,2,1,2,'2017-11-28 17:21:40','2020-06-11 12:34:57'),(136,48,3273190,1,2,2,'2015-04-14 19:17:34','2020-06-11 11:50:10'),(137,28,8455510,2,1,1,'2013-08-06 05:58:51','2020-06-11 12:34:57'),(138,68,1457980,2,2,1,'2016-11-13 23:34:17','2020-06-11 12:34:57'),(139,26,10923371,1,2,2,'2018-09-06 22:46:29','2020-06-11 12:34:19'),(140,3,9242915,1,1,2,'2019-03-24 06:05:04','2020-06-11 12:34:19'),(141,23,2444462,2,1,2,'2012-02-21 16:12:39','2020-06-11 12:34:57'),(142,12,3493567,2,1,1,'2017-01-14 02:20:05','2020-06-11 12:34:57'),(143,41,9134450,1,2,2,'2014-12-06 15:48:21','2020-06-11 12:34:19'),(144,34,4191548,1,2,2,'2019-08-16 19:05:21','2020-06-11 11:50:10'),(145,78,2554391,1,2,2,'2011-04-23 07:32:50','2020-06-11 12:34:19'),(146,30,9197312,1,1,2,'2011-08-08 02:34:03','2020-06-11 11:50:10'),(147,16,7323388,2,1,3,'2016-10-31 10:45:10','2020-06-11 12:34:57'),(148,44,8025005,2,2,1,'2016-04-09 09:26:32','2020-06-11 12:34:57'),(149,66,7154860,2,2,2,'2019-03-04 00:21:59','2020-06-11 12:34:57'),(150,48,10699288,2,2,3,'2015-10-08 11:37:07','2020-06-11 12:34:57'),(151,48,1031860,2,2,3,'2018-09-15 05:05:41','2020-06-11 12:34:57'),(152,71,2061437,2,2,2,'2013-02-01 00:22:35','2020-06-11 12:34:57'),(153,88,6211607,1,2,3,'2017-07-21 15:03:15','2020-06-11 12:34:19'),(154,51,3873724,2,2,3,'2012-01-22 05:50:20','2020-06-11 12:34:57'),(155,65,9733798,2,1,1,'2011-05-30 12:22:34','2020-06-11 12:34:57'),(156,32,6047822,1,1,2,'2018-08-09 13:28:29','2020-06-11 12:34:19'),(157,2,10037715,1,2,1,'2010-09-24 02:25:27','2020-06-11 12:34:19'),(158,36,1045109,2,1,3,'2010-11-15 14:13:05','2020-06-11 12:34:57'),(159,68,4112400,1,2,1,'2015-02-09 13:21:10','2020-06-11 11:50:10'),(160,13,6426675,2,1,3,'2014-03-12 06:52:30','2020-06-11 12:34:57'),(161,40,8796176,1,2,3,'2013-03-18 20:52:14','2020-06-11 11:50:10'),(162,84,3700855,2,1,3,'2012-04-22 02:23:51','2020-06-11 12:34:57'),(163,16,1115750,2,1,1,'2015-04-07 16:00:21','2020-06-11 12:34:57'),(164,79,3476183,2,2,2,'2017-11-24 06:25:44','2020-06-11 12:34:57'),(165,12,3033667,1,2,3,'2013-03-16 17:22:54','2020-06-11 11:50:10'),(166,84,3739785,1,2,3,'2016-03-25 20:59:31','2020-06-11 11:50:10'),(167,10,8597926,1,1,3,'2014-09-05 20:19:31','2020-06-11 12:34:19'),(168,66,10770277,1,1,1,'2014-04-30 04:21:20','2020-06-11 11:50:10'),(169,88,7057608,2,2,2,'2012-04-10 22:35:32','2020-06-11 12:34:57'),(170,96,1977208,2,2,3,'2016-07-10 13:51:18','2020-06-11 12:34:57'),(171,19,7713218,2,1,2,'2010-12-12 20:30:33','2020-06-11 12:34:57'),(172,52,1634467,2,1,1,'2014-07-15 18:44:57','2020-06-11 12:34:57'),(173,38,4032681,1,1,3,'2012-08-03 10:53:28','2020-06-11 12:34:19'),(174,1,4260007,2,2,2,'2019-04-10 00:35:15','2020-06-11 12:34:57'),(175,2,8201991,2,1,2,'2017-11-29 07:22:21','2020-06-11 12:34:57'),(176,36,7229937,1,2,1,'2012-03-31 23:26:26','2020-06-11 11:50:10'),(177,85,10543710,1,2,2,'2013-08-24 03:49:33','2020-06-11 12:34:19'),(178,26,10028742,1,1,2,'2019-11-21 07:40:16','2020-06-11 11:50:10'),(179,61,7512580,1,1,1,'2020-04-01 19:09:26','2020-06-11 11:50:10'),(180,61,6476677,2,2,3,'2018-10-06 00:11:08','2020-06-11 12:34:57'),(181,14,8845644,2,1,1,'2012-01-13 20:57:43','2020-06-11 12:34:57'),(182,31,3798190,1,2,1,'2014-04-16 18:27:24','2020-06-11 11:50:10'),(183,85,1454020,2,1,3,'2012-08-28 04:47:24','2020-06-11 12:34:57'),(184,9,4875531,2,2,2,'2013-11-06 07:09:21','2020-06-11 12:34:57'),(185,47,9015596,1,2,1,'2011-04-04 05:45:56','2020-06-11 12:34:19'),(186,75,9451385,1,2,1,'2019-06-22 12:09:10','2020-06-11 11:50:10'),(187,82,9210140,1,1,1,'2016-02-04 01:29:56','2020-06-11 12:34:19'),(188,24,6696547,1,2,3,'2018-05-13 12:03:53','2020-06-11 11:50:10'),(189,11,4852313,2,1,2,'2017-09-25 13:55:56','2020-06-11 12:34:57'),(190,46,3171924,1,2,2,'2013-11-30 01:27:41','2020-06-11 11:50:10'),(191,79,10302683,2,1,2,'2019-07-17 13:07:56','2020-06-11 12:34:57'),(192,89,10997644,1,2,3,'2014-09-19 23:06:01','2020-06-11 12:34:19'),(193,37,3080171,1,1,1,'2016-09-29 16:44:26','2020-06-11 12:34:19'),(194,29,1407923,2,1,3,'2015-02-11 15:13:25','2020-06-11 12:34:57'),(195,26,6799105,2,2,1,'2018-01-08 10:29:41','2020-06-11 12:34:57'),(196,14,8771755,1,2,3,'2010-09-28 18:56:05','2020-06-11 11:50:10'),(197,12,2461463,2,1,2,'2011-08-08 00:17:29','2020-06-11 12:34:57'),(198,2,4992048,2,2,3,'2019-01-10 18:37:38','2020-06-11 12:34:57'),(199,1,6575854,1,2,1,'2017-07-31 06:49:05','2020-06-11 11:50:10'),(200,77,6903127,2,2,1,'2013-07-22 16:08:45','2020-06-11 12:34:57');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_seria`
--

DROP TABLE IF EXISTS `building_seria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_seria` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `building_seria_name__idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_seria`
--

LOCK TABLES `building_seria` WRITE;
/*!40000 ALTER TABLE `building_seria` DISABLE KEYS */;
INSERT INTO `building_seria` VALUES (2,'Индивидуальный проект'),(1,'Серийный');
/*!40000 ALTER TABLE `building_seria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_type`
--

DROP TABLE IF EXISTS `building_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material_id` int DEFAULT NULL,
  `building_seria_id` tinyint DEFAULT NULL,
  `floors_number` tinyint DEFAULT NULL,
  `passenger_elevator` tinyint(1) DEFAULT NULL,
  `cargo_elevator` tinyint(1) DEFAULT NULL,
  `year_of_construction` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building_seria_id_fk` (`building_seria_id`),
  KEY `building_type_year__idx` (`year_of_construction`),
  KEY `material_id_fk` (`material_id`),
  CONSTRAINT `building_seria_id_fk` FOREIGN KEY (`building_seria_id`) REFERENCES `building_seria` (`id`) ON DELETE SET NULL,
  CONSTRAINT `material_id_fk` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_type`
--

LOCK TABLES `building_type` WRITE;
/*!40000 ALTER TABLE `building_type` DISABLE KEYS */;
INSERT INTO `building_type` VALUES (1,1,1,18,1,0,1927),(2,3,1,3,0,0,1938),(3,1,1,35,0,1,1992),(4,3,2,32,1,0,1924),(5,3,1,21,1,0,1925),(6,1,2,21,1,1,1933),(7,2,2,25,0,1,1969),(8,1,1,29,1,0,1929),(9,3,1,25,1,1,1920),(10,3,1,33,1,1,1990),(11,2,2,4,1,0,1973),(12,3,2,29,1,0,1973),(13,1,1,4,0,1,1926),(14,2,1,16,0,1,1993),(15,3,2,19,1,1,1965),(16,3,2,34,1,1,1929),(17,2,2,9,0,1,1929),(18,2,1,2,1,1,1938),(19,1,1,23,0,1,1985),(20,2,1,14,0,1,1989),(21,3,1,7,0,1,1974),(22,1,2,3,1,1,1981),(23,1,1,20,1,1,1965),(24,2,1,23,1,0,1961),(25,1,1,24,1,0,1993),(26,3,2,30,0,0,1962),(27,1,2,20,0,0,2009),(28,1,2,23,0,0,1940),(29,1,2,30,0,0,1955),(30,3,2,35,1,1,1935),(31,1,1,35,0,0,1992),(32,3,1,16,0,0,1935),(33,3,2,17,1,1,1980),(34,1,2,20,0,0,1973),(35,3,1,8,0,0,2008),(36,2,1,18,1,1,2000),(37,3,1,18,0,0,1957),(38,1,2,4,1,1,1964),(39,3,2,5,1,0,1933),(40,3,1,7,1,0,1950),(41,1,2,13,0,0,1934),(42,1,1,2,0,0,1999),(43,2,2,1,1,0,1975),(44,1,2,31,0,1,1956),(45,2,2,10,0,1,1938),(46,3,2,23,0,1,2001),(47,2,1,14,0,1,1970),(48,3,2,31,0,1,1930),(49,1,1,5,1,1,2019),(50,3,2,3,0,0,1987),(51,1,2,25,1,1,1957),(52,3,1,19,1,1,2004),(53,3,1,24,0,1,1929),(54,3,2,7,1,1,2013),(55,2,1,23,1,0,1959),(56,2,2,4,1,1,1939),(57,1,1,33,1,1,1996),(58,3,1,3,1,0,1943),(59,1,2,32,0,0,2007),(60,2,1,32,1,1,1989),(61,1,2,21,1,0,2004),(62,2,1,7,1,0,1934),(63,1,2,12,0,1,1937),(64,2,2,17,0,1,1965),(65,3,2,17,1,0,1993),(66,2,1,15,1,0,1949),(67,1,2,29,1,0,1949),(68,1,2,35,1,0,1979),(69,1,2,32,1,0,1927),(70,3,2,4,1,1,1981),(71,3,2,13,0,1,2003),(72,2,2,4,1,1,1953),(73,1,1,27,1,0,1935),(74,2,2,29,0,1,1996),(75,3,1,26,1,1,1958),(76,3,2,9,0,0,1981),(77,2,1,13,0,0,2011),(78,2,2,24,0,1,1992),(79,1,2,13,0,1,2008),(80,1,1,21,1,1,1945),(81,2,1,17,0,0,1981),(82,1,2,17,1,0,1952),(83,1,1,30,1,0,1997),(84,3,1,2,1,1,2008),(85,1,2,16,1,0,1931),(86,3,1,11,0,1,2011),(87,3,1,30,0,0,1943),(88,1,2,19,0,0,1964);
/*!40000 ALTER TABLE `building_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estate_type`
--

DROP TABLE IF EXISTS `estate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estate_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `estate_type_name__idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estate_type`
--

LOCK TABLES `estate_type` WRITE;
/*!40000 ALTER TABLE `estate_type` DISABLE KEYS */;
INSERT INTO `estate_type` VALUES (2,'Дом'),(1,'Квартира');
/*!40000 ALTER TABLE `estate_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_app`
--

DROP TABLE IF EXISTS `flat_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flat_app` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int unsigned DEFAULT NULL,
  `flat_app_type_id` tinyint DEFAULT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `area` decimal(5,2) DEFAULT NULL,
  `living_area` decimal(4,2) DEFAULT NULL,
  `kitchen_area` decimal(4,2) DEFAULT NULL,
  `building_type_id` int DEFAULT NULL,
  `floor_number` tinyint DEFAULT NULL,
  `room_amount` tinyint DEFAULT NULL,
  `balcony` tinyint(1) DEFAULT NULL,
  `repair_condition_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ad_id` (`ad_id`),
  KEY `flat_app_type_id_fk` (`flat_app_type_id`),
  KEY `building_type_id_fk` (`building_type_id`),
  KEY `repair_condition_id_fk` (`repair_condition_id`),
  CONSTRAINT `ad_id_fk` FOREIGN KEY (`ad_id`) REFERENCES `advertisement` (`id`) ON DELETE CASCADE,
  CONSTRAINT `building_type_id_fk` FOREIGN KEY (`building_type_id`) REFERENCES `building_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `flat_app_type_id_fk` FOREIGN KEY (`flat_app_type_id`) REFERENCES `flat_app_type` (`id`) ON DELETE SET NULL,
  CONSTRAINT `repair_condition_id_fk` FOREIGN KEY (`repair_condition_id`) REFERENCES `repair_condition` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_app`
--

LOCK TABLES `flat_app` WRITE;
/*!40000 ALTER TABLE `flat_app` DISABLE KEYS */;
INSERT INTO `flat_app` VALUES (1,48,2,'Maiores a fugit iste autem rerum.',99.06,66.66,19.10,3,16,3,0,3),(2,64,1,'Molestiae ratione quia non.',96.93,76.80,8.93,3,25,1,0,2),(3,31,1,'Quis sequi modi iure atque officia.',82.00,13.42,23.01,1,2,5,0,1),(4,57,1,'Dolore iusto eum odit amet nisi omnis eum.',81.90,55.42,9.00,2,19,3,1,1),(5,94,1,'Vitae odio eaque alias ad occaecati dolores dolor.',97.99,13.26,15.08,2,27,3,0,3),(6,8,2,'Tenetur ipsa dolorem vitae nobis qui quasi.',56.74,34.42,12.32,3,5,5,0,1),(7,179,1,'Magni nulla voluptatem provident maiores.',96.26,72.26,14.00,2,28,2,0,2),(8,191,1,'Veritatis consectetur velit eum praesentium.',98.25,21.60,17.10,2,28,1,1,3),(9,70,2,'Qui sunt aut temporibus.',82.00,33.56,21.51,1,7,2,0,3),(10,3,2,'Optio in unde sunt esse ipsa.',68.74,52.01,6.73,2,25,3,0,2),(11,132,2,'Facilis velit voluptatem hic asperiores non sed consequatur.',52.91,30.89,12.02,3,25,3,0,3),(12,37,2,'Quia reiciendis placeat itaque neque numquam ut quia et.',82.18,39.50,16.33,2,3,4,0,3),(13,5,2,'Dolore eaque deserunt consequatur minus expedita quas.',93.82,72.54,5.92,2,8,2,1,2),(14,51,2,'Sed quo atque non quae voluptatem expedita ab.',89.04,45.38,13.22,1,32,4,1,3),(15,24,2,'Et harum est est explicabo maiores illum tenetur.',58.41,37.97,6.34,3,15,3,0,3),(16,113,2,'Enim non mollitia ut molestiae non distinctio.',87.40,28.12,24.20,2,29,3,1,2),(17,32,1,'Omnis enim ad consequuntur quam sit inventore cum.',96.50,72.90,13.60,1,2,5,0,2),(18,1,1,'Impedit et expedita aut eum reprehenderit.',63.81,30.00,23.81,2,16,4,1,2),(19,46,1,'Quo vero pariatur eum pariatur.',93.60,57.83,13.81,1,11,3,1,1),(20,87,1,'Nisi dolores aspernatur itaque atque soluta.',99.22,21.22,22.94,1,21,2,1,3),(21,62,2,'Animi nesciunt tenetur cupiditate ut cupiditate non rerum.',78.00,30.23,18.73,1,32,4,1,2),(22,79,2,'Et et rerum aperiam ratione numquam deserunt.',111.92,77.92,24.00,1,14,4,0,2),(23,128,2,'Perferendis veniam quasi dolores officiis non.',58.39,18.30,29.62,3,26,4,1,2),(24,141,2,'Architecto dolorem ea est nemo quis nisi magnam.',87.79,60.74,17.05,1,4,2,0,3),(25,56,1,'Ducimus natus et nisi in sed assumenda eos.',73.39,52.77,10.62,1,2,5,0,1),(26,151,2,'Ullam consequatur incidunt at sed.',75.49,30.26,10.85,3,14,3,0,2),(27,187,2,'Asperiores voluptas nulla est cum enim.',68.60,38.12,20.48,2,27,4,0,2),(28,195,1,'Odio temporibus asperiores ullam asperiores incidunt quam.',90.44,63.78,14.78,3,31,4,1,1),(29,68,1,'Voluptate dolores qui libero.',87.29,63.96,13.33,2,2,3,1,2),(30,119,2,'Libero voluptatibus itaque vel ut provident.',79.86,49.85,20.01,1,11,5,1,2),(31,106,1,'Repellat sit ex repellendus veniam ad occaecati amet cumque.',76.05,58.12,7.93,3,33,2,0,1),(32,41,1,'Aliquam et repudiandae cupiditate quia quidem et.',74.78,32.81,6.80,3,27,1,1,1),(33,4,2,'Dicta alias minima unde ullam ab vel.',65.39,31.84,23.55,1,8,3,0,2),(34,169,2,'Eum et nulla cumque est in et.',43.67,24.65,5.41,3,4,5,0,1),(35,20,2,'Officia fugit quis numquam laborum odio.',104.12,79.12,15.00,2,11,5,1,3),(36,159,1,'Iure fugit quia voluptatem harum adipisci id cupiditate.',100.44,67.97,22.47,1,3,4,0,1),(37,45,2,'Quos ratione laborum dolorem voluptatibus qui et fugiat similique.',82.60,56.57,6.95,2,10,3,0,1),(38,156,2,'Dolorem aut officiis eos dolor.',86.31,60.15,16.16,3,12,1,1,1),(39,116,1,'Quo accusantium enim ad optio repellendus.',94.19,30.98,26.10,1,25,2,1,1),(40,85,2,'Mollitia deserunt repellendus maxime recusandae soluta nihil.',77.00,33.90,11.08,1,18,3,0,1),(41,105,2,'Velit totam facilis laborum illo.',53.12,35.12,8.00,3,33,1,1,3),(42,153,1,'Eum voluptatum repellendus in et.',51.48,19.00,8.39,3,24,5,0,2),(43,84,1,'Quia corrupti est autem vel molestiae necessitatibus ea.',79.68,41.40,28.28,3,33,3,1,3),(44,142,1,'A voluptas aspernatur ipsam vel in.',87.94,56.52,21.42,2,13,1,0,3),(45,124,1,'Dicta dolore ipsum ut eum culpa tempora at.',81.64,42.25,15.50,3,29,3,1,3),(46,40,1,'Voluptatem consectetur dolorem adipisci dignissimos et qui.',110.46,72.09,28.37,2,24,4,0,2),(47,96,1,'Totam accusantium qui et occaecati eum vero dicta.',87.73,54.60,11.17,3,29,5,1,2),(48,49,2,'Dolores et qui natus est reprehenderit eligendi.',77.48,37.98,29.50,2,29,3,0,3),(49,180,1,'Autem illo voluptatem accusantium itaque eum sint.',102.88,68.20,24.68,2,6,1,0,1),(50,144,1,'Magnam maxime iusto facilis facilis dolores.',113.10,76.69,26.41,3,30,1,0,3),(51,126,1,'Accusantium aut tempora et id enim incidunt itaque.',71.93,35.13,26.80,3,28,1,1,1),(52,176,2,'Officia et sed repellendus.',88.80,30.14,12.55,3,34,5,0,2),(53,101,1,'Voluptas totam cupiditate asperiores natus impedit corporis.',100.43,78.89,11.54,3,5,5,1,1),(54,39,2,'Expedita dolores maxime nam earum.',82.90,34.00,9.00,3,17,2,0,2),(55,145,1,'Consequatur maxime esse eos repudiandae.',61.00,28.20,8.20,1,4,4,0,3),(56,181,1,'Et totam ipsum molestiae animi.',88.44,17.97,26.05,1,10,2,0,3),(57,148,1,'Vel repudiandae velit est laboriosam molestiae et eaque.',85.00,60.16,6.76,1,18,2,1,3),(58,160,1,'Nesciunt saepe modi voluptatem animi.',90.27,51.17,29.10,3,33,1,0,2),(59,81,1,'Ut est doloremque perferendis et aliquam consequatur.',89.81,64.83,14.98,1,11,4,1,2),(60,193,1,'Vel et alias repellendus numquam explicabo eum.',75.30,43.81,12.07,2,22,4,1,2),(61,129,2,'Cum voluptate quaerat facilis facilis sit ipsum.',47.57,24.94,12.63,3,26,4,0,3),(62,34,2,'Sed suscipit corrupti aut consequatur possimus.',83.71,66.81,6.90,1,14,2,1,3),(63,199,1,'Unde quod cum dolorem dolor sunt autem.',92.06,62.45,19.61,3,3,1,1,3),(64,109,1,'Dolor ad blanditiis doloribus voluptatem.',91.24,35.60,6.57,1,24,2,0,2),(65,43,2,'Aut harum quas repudiandae sit laudantium ea in.',87.71,59.04,5.81,1,27,5,0,2),(66,120,2,'Provident eius non optio eos facere assumenda optio.',106.26,79.00,17.26,1,19,3,0,3),(67,89,1,'Ea ipsum iure vel accusamus non vel similique vel.',84.53,68.62,5.91,2,25,5,0,2),(68,198,2,'Odio dolor beatae delectus assumenda sint eos.',92.84,62.89,16.25,3,7,4,0,2),(69,146,2,'Temporibus itaque earum error.',86.13,45.00,20.01,2,35,4,1,1),(70,170,1,'Quibusdam laborum voluptatem in voluptatem quod repellendus id.',87.38,50.21,27.17,1,10,3,1,1),(71,12,1,'Quia veritatis corrupti recusandae harum perferendis.',46.34,29.00,7.34,1,18,1,1,3),(72,35,1,'Fugiat earum neque magnam nemo sequi dignissimos sint.',74.74,37.02,27.72,2,8,3,0,1),(73,67,1,'Temporibus quidem mollitia aut et recusandae et eos.',78.58,40.58,28.00,3,18,5,0,1),(74,102,2,'Id culpa facilis harum.',81.97,28.55,23.78,3,18,4,1,3),(75,185,1,'Possimus assumenda dolores unde.',81.37,48.10,23.27,3,5,3,1,1),(76,75,2,'Voluptas unde qui quis perspiciatis.',91.34,64.00,17.34,1,27,4,0,2),(77,73,2,'Voluptas nesciunt quas voluptatem excepturi.',100.38,67.18,23.20,3,22,3,1,2),(78,52,1,'In corrupti dicta sequi ea.',97.00,43.24,20.07,1,30,1,1,3),(79,192,2,'Ut maxime rerum non facere aut voluptas nam deserunt.',82.82,37.91,16.17,1,10,3,0,1),(80,115,2,'Rerum ea sint consectetur quo quos sed deserunt.',97.00,63.70,7.58,3,7,3,0,2),(81,186,2,'Eum totam id autem provident aut velit numquam et.',112.16,74.72,27.44,1,35,4,1,1),(82,2,1,'Aut consequuntur et id animi.',98.00,40.76,11.60,2,28,5,0,1),(83,36,1,'Aut ducimus in veritatis rem deleniti veritatis consequatur.',46.43,24.92,11.51,3,9,5,1,3),(84,161,2,'Corporis ut tenetur quam.',82.80,32.30,5.83,3,31,4,0,1),(85,111,1,'Rem dolore earum magnam id.',52.43,23.43,19.00,2,29,1,0,3),(86,138,2,'Hic ut dolorem dolor qui.',95.39,55.39,30.00,2,9,2,0,3),(87,121,2,'Aut facere ea dolorum tempora qui animi ipsam similique.',78.78,42.34,9.65,3,11,5,1,2),(88,29,2,'Aperiam maiores voluptates deleniti aut laborum dignissimos minima.',92.77,30.52,17.00,1,4,4,1,2);
/*!40000 ALTER TABLE `flat_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_app_type`
--

DROP TABLE IF EXISTS `flat_app_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flat_app_type` (
  `id` tinyint NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `flat_app_type_name__idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_app_type`
--

LOCK TABLES `flat_app_type` WRITE;
/*!40000 ALTER TABLE `flat_app_type` DISABLE KEYS */;
INSERT INTO `flat_app_type` VALUES (2,'Аппартаменты'),(1,'Квартира');
/*!40000 ALTER TABLE `flat_app_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `house` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_id` int unsigned DEFAULT NULL,
  `land_plot_parameters_id` int DEFAULT NULL,
  `electricity` tinyint(1) DEFAULT NULL,
  `gas` tinyint(1) DEFAULT NULL,
  `sewerage` tinyint(1) DEFAULT NULL,
  `water_supply` tinyint(1) DEFAULT NULL,
  `area` decimal(5,2) DEFAULT NULL,
  `living_area` decimal(5,2) DEFAULT NULL,
  `kitchen_area` decimal(4,2) DEFAULT NULL,
  `material` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `floors_number` tinyint DEFAULT NULL,
  `year_of_construction` int DEFAULT NULL,
  `room_amount` tinyint DEFAULT NULL,
  `balcony` tinyint(1) DEFAULT NULL,
  `repair_condition` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_id_fkh` (`ad_id`),
  KEY `land_plot_parameters_id_fk` (`land_plot_parameters_id`),
  CONSTRAINT `ad_id_fkh` FOREIGN KEY (`ad_id`) REFERENCES `advertisement` (`id`) ON DELETE CASCADE,
  CONSTRAINT `land_plot_parameters_id_fk` FOREIGN KEY (`land_plot_parameters_id`) REFERENCES `land_plot_parameters` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (1,'Laudantium aut et natus sapiente.',2,1,0,0,1,1,222.33,132.40,7.00,'nemo',1,1936,6,1,'Consectetur iste praesentium vel.'),(2,'Libero voluptatem quae accusamus.',108,2,0,0,0,1,173.74,55.35,21.86,'voluptas',2,2017,3,0,'Quas recusandae est laudantium sed.'),(3,'Tempora aut blanditiis eum aut.',15,3,1,0,1,1,284.90,152.45,9.00,'ea',1,1959,10,0,'Dolore quam nihil aut.'),(4,'Culpa vero labore dolores repudiandae.',162,4,1,0,0,1,198.79,161.52,7.27,'voluptatem',1,1921,4,1,'Veniam qui doloribus nisi id vitae.'),(5,'Dolores ab sunt pariatur laudantium quidem laboriosam.',60,5,0,1,1,0,207.27,171.57,5.70,'rerum',2,2010,7,1,'Illo ex consequatur similique quis.'),(6,'Quia quos temporibus voluptatem sapiente voluptas.',44,6,0,0,0,1,244.40,185.30,29.10,'aperiam',1,1968,2,1,'Quo blanditiis eius asperiores eaque.'),(7,'Eveniet est architecto impedit sunt voluptatum at eveniet.',4,7,0,0,0,0,184.17,147.26,6.91,'consequuntur',2,1989,2,0,'Provident nisi recusandae consequatur.'),(8,'Repudiandae porro id soluta et et assumenda modi.',54,8,1,0,1,1,167.27,109.00,28.27,'fugiat',1,1923,5,0,'Numquam itaque sint minima dolores repellat ea autem.'),(9,'Et hic aut iste.',149,9,1,0,0,0,259.01,165.90,22.70,'rerum',2,1929,8,1,'Illum delectus qui quia porro aut.'),(10,'Rerum et et mollitia quidem ratione maxime.',98,10,1,0,0,1,203.18,163.68,9.50,'maiores',1,1954,2,0,'Saepe consectetur quo ducimus necessitatibus sit.'),(11,'Doloremque necessitatibus molestiae perspiciatis sit quidem.',127,11,0,1,1,1,269.47,195.40,8.93,'minus',1,1966,5,0,'Omnis itaque molestiae corrupti quae delectus ut.'),(12,'Odio quos velit id tempore tempora.',34,12,1,0,1,0,101.20,52.10,8.84,'id',1,1948,3,1,'Iusto deleniti ab amet.'),(13,'Ullam pariatur voluptatem excepturi aspernatur ab.',39,13,0,0,0,0,248.68,190.25,28.43,'aperiam',1,1923,10,1,'Accusantium qui quasi dolor.'),(14,'Sunt quidem et dolores rem beatae.',14,14,0,1,1,1,238.71,199.80,8.91,'odio',1,1951,7,1,'Ad consequatur voluptate necessitatibus excepturi officiis.'),(15,'Aspernatur libero voluptas et totam.',196,15,0,1,1,1,154.54,58.90,29.57,'aspernatur',1,1964,3,0,'Dolores ut vel labore.'),(16,'Quasi maiores nesciunt officia reprehenderit voluptatum.',113,16,0,0,0,1,155.90,106.64,19.26,'voluptatem',2,1951,9,1,'Corrupti harum ipsa tempora optio molestias magni.'),(17,'Reiciendis optio quia veritatis nobis occaecati repellendus neque est.',53,17,1,1,1,0,154.71,108.43,16.28,'eaque',2,1943,7,0,'Doloremque exercitationem nihil quis voluptas neque qui officia voluptates.'),(18,'Dolorem sed aut sequi ea.',58,18,0,0,0,1,207.45,168.35,9.10,'qui',2,1943,7,1,'Sed neque ut quam et molestiae eaque accusamus ea.'),(19,'Id id enim eum.',37,19,0,0,1,1,268.27,57.80,22.67,'aperiam',1,1966,10,1,'Repellendus exercitationem ut rerum consectetur quae libero corporis.'),(20,'Et explicabo est voluptatem qui qui.',192,20,1,1,0,1,144.94,91.22,23.72,'eum',1,1981,5,0,'Voluptates aut dolorem eligendi illo saepe.'),(21,'Rerum rerum voluptatem dolor qui.',184,21,1,1,0,1,119.63,84.10,5.53,'rerum',2,1988,1,0,'Et est est sequi aspernatur illo in sit.'),(22,'Et ea consequatur laborum vel fugit.',129,22,1,1,0,1,178.99,59.90,8.72,'deleniti',1,1979,2,1,'Nihil iusto quos repudiandae labore nulla omnis.'),(23,'Odit laborum totam repellat ad ut.',10,23,0,1,1,0,82.95,40.54,12.41,'eaque',2,2012,5,1,'Expedita provident nihil asperiores minus.'),(24,'Delectus rerum provident libero.',155,24,0,1,1,0,130.00,35.73,18.30,'rerum',1,2003,2,1,'Vel itaque ratione accusamus et est neque natus.'),(25,'Nam qui consectetur illum quis ipsam aut.',117,25,1,0,0,1,199.95,85.39,17.05,'unde',2,1959,5,0,'Ipsa facilis labore sed alias nostrum corrupti.'),(26,'Quo ut iste eos dolores et vel.',100,26,0,1,0,0,254.59,121.40,24.88,'minus',2,1966,2,0,'Et corporis sapiente soluta hic esse nihil.'),(27,'Laboriosam dolorum et sint aliquid est.',73,27,0,0,0,0,172.58,113.60,28.98,'libero',2,1932,1,1,'Ab non enim incidunt ut accusamus.'),(28,'At vel sapiente est voluptatem nisi excepturi.',198,28,1,0,0,1,230.65,193.85,6.80,'ullam',2,1945,9,0,'Aut voluptatem veritatis nulla inventore eveniet.'),(29,'Et quod est minima impedit sit et ullam.',80,29,0,0,0,0,230.20,191.00,9.20,'nemo',2,2010,1,0,'Autem itaque rerum quia sequi beatae.'),(30,'Ea voluptatum voluptatem illum cupiditate soluta.',6,30,0,0,0,1,264.96,107.50,26.59,'dolorem',1,1995,10,0,'Sunt et rerum voluptates delectus voluptate fugit et.'),(31,'Qui molestiae fugit est nisi totam ipsa.',158,31,0,0,1,0,298.56,130.52,26.83,'placeat',1,1923,3,0,'Asperiores dolores tempora sint perspiciatis expedita vero.'),(32,'Nisi provident accusantium quasi.',186,32,1,1,1,0,216.41,175.10,11.31,'provident',2,2014,10,0,'Excepturi aut libero modi neque consequuntur.'),(33,'Deserunt omnis vel debitis.',59,33,0,0,0,1,286.00,59.31,11.95,'ipsum',1,1979,4,0,'Eos modi quo et eius est ab eos.'),(34,'Iure dignissimos consectetur deserunt rerum.',46,34,1,0,0,0,211.01,152.45,28.56,'consequatur',1,1936,9,0,'Doloribus sint sit qui maiores voluptatum.'),(35,'Dignissimos cum doloremque eius quisquam qui quia magni.',92,35,1,0,1,0,274.15,71.00,26.70,'modi',2,1920,9,0,'Repellat officia ipsam in aspernatur.'),(36,'Eos molestiae eveniet quia dignissimos ut.',153,36,1,1,0,0,267.16,193.86,13.72,'repellendus',1,1975,3,0,'Maiores voluptas nesciunt odit unde eius.'),(37,'Et eos aspernatur qui ut laudantium quaerat.',135,37,1,0,1,0,183.75,148.17,5.58,'numquam',2,1995,7,1,'Amet quo doloribus sapiente suscipit blanditiis minima repudiandae.'),(38,'Nobis voluptate soluta harum maiores est sint quia.',41,38,1,1,0,0,182.87,83.04,13.41,'accusamus',1,1931,3,1,'Inventore aliquam sed explicabo aut aut et.'),(39,'Incidunt necessitatibus vel magnam et quis dicta.',121,39,0,0,0,0,252.00,197.00,25.00,'corporis',2,1949,3,0,'Vitae quo esse aut.'),(40,'Vero et veniam eum odit illo soluta.',187,40,0,1,0,0,230.35,182.41,9.06,'vel',1,1932,1,0,'Quis non laborum et expedita repudiandae voluptatibus et.'),(41,'Ipsam quas quae quos id animi odit et.',71,41,1,0,1,0,234.42,195.29,9.13,'non',1,1996,8,0,'Dolor occaecati voluptas sapiente ut quae libero sint hic.'),(42,'Tenetur unde quas exercitationem.',163,42,0,1,1,0,204.09,163.22,10.87,'qui',2,1963,3,1,'Rerum sit ea enim dignissimos molestiae velit aliquid officiis.'),(43,'Voluptatem error vel delectus perferendis ut iusto.',19,43,0,1,1,0,139.84,45.00,14.41,'dignissimos',1,2010,2,1,'Corporis a atque autem alias quam.'),(44,'Qui qui ut vero ducimus qui et nemo.',43,44,1,0,0,1,263.77,109.60,21.46,'deleniti',1,1938,5,1,'Nihil eos magni repudiandae asperiores illo ipsam et minus.'),(45,'Autem dolor hic beatae ipsum quod culpa occaecati sed.',88,45,1,0,1,0,217.32,25.57,6.70,'accusantium',2,1943,6,1,'Placeat et omnis eum et natus ut ea eveniet.'),(46,'Blanditiis a modi quae ut.',106,46,1,0,0,1,168.76,115.91,22.85,'fugiat',1,1979,8,1,'Esse accusamus ab animi et aut consequatur amet.'),(47,'Ratione dolorum sapiente aspernatur sit placeat consequatur.',84,47,0,1,0,1,248.00,147.98,9.20,'repudiandae',2,1949,6,0,'Aut aut sint ea sunt.'),(48,'Laboriosam deserunt iste a accusantium maiores officiis error suscipit.',63,48,0,0,1,0,197.08,156.18,10.90,'consequatur',2,1986,6,1,'Dolores distinctio eum quo recusandae qui nihil.'),(49,'Iure quo et voluptates exercitationem sapiente aspernatur.',195,49,0,1,0,1,117.00,35.32,24.84,'illum',2,1966,9,1,'Eaque nisi dolores delectus aspernatur qui.'),(50,'Quaerat illo eius quasi amet quo dolor.',16,50,0,0,1,0,238.53,196.53,12.00,'quis',2,1952,10,1,'Odit natus dolore sed consequatur qui ut eligendi minus.'),(51,'Dignissimos et molestias voluptatum distinctio.',168,51,0,1,0,0,140.84,55.16,5.27,'iusto',1,1943,10,0,'Ut veniam mollitia voluptas qui natus accusantium.'),(52,'Voluptates optio doloribus aut ut aspernatur quasi.',77,52,1,0,1,0,169.91,73.89,27.29,'qui',2,1940,5,1,'Earum sapiente ut maiores exercitationem ut perferendis.'),(53,'Qui voluptates et magni ea.',85,53,1,1,0,1,137.78,47.80,29.45,'autem',1,1953,7,1,'Incidunt est corrupti voluptate qui velit.'),(54,'Quam nostrum dignissimos nobis voluptatibus illum.',66,54,1,1,0,0,160.00,105.35,9.32,'molestiae',2,1923,10,1,'Quos harum veniam ut beatae qui repellendus vel cupiditate.'),(55,'Sapiente corrupti molestiae atque consectetur dolores magni adipisci.',200,55,1,0,0,1,132.02,54.42,7.08,'aut',2,1935,8,0,'In sint aut itaque dolor accusamus sint est.'),(56,'Et qui aut similique totam dolore harum.',161,56,1,0,0,1,275.20,137.26,8.00,'ut',1,1990,5,0,'Ut dolorem et aut labore quo dicta autem facere.'),(57,'Ut ducimus facilis ex.',81,57,1,0,0,1,287.87,158.91,23.91,'molestiae',1,1925,3,1,'Et harum ipsam officia aut.'),(58,'Molestias perferendis quam quas sit possimus cupiditate.',21,58,1,0,1,1,279.57,195.20,6.52,'eligendi',2,1933,8,0,'Iure veniam itaque explicabo accusamus recusandae.'),(59,'Quae autem adipisci possimus.',51,59,0,1,0,0,83.64,43.01,10.33,'voluptas',1,1973,10,1,'Odit quidem ut quidem.'),(60,'Animi doloremque consequatur ut voluptatem natus officia similique error.',132,60,1,1,1,1,265.50,30.80,14.00,'ea',1,1946,9,0,'Unde aut tempora excepturi minima voluptas expedita voluptas.'),(61,'Consequatur a optio illum soluta quos saepe.',125,61,0,0,1,1,274.60,66.00,7.62,'est',2,1991,4,0,'In est culpa saepe quod.'),(62,'Qui rerum dolores necessitatibus.',49,62,1,1,1,0,175.87,88.24,14.85,'quia',1,1996,9,1,'Distinctio asperiores quo et perspiciatis illo dolor neque.'),(63,'Dolores autem et nostrum nulla optio tenetur quis assumenda.',94,63,0,0,0,1,84.24,37.50,16.74,'blanditiis',1,1989,5,1,'Nemo et et harum sit.'),(64,'Et deleniti animi commodi praesentium quis.',97,64,0,0,0,1,288.22,182.23,23.50,'ut',1,1937,6,0,'Pariatur qui et hic reprehenderit autem nesciunt laboriosam neque.'),(65,'Ex quo in esse nobis eum suscipit.',45,65,1,1,1,1,220.72,167.43,23.29,'ut',2,1997,3,0,'Nostrum maxime ut et molestias.'),(66,'Sint dicta quis sunt vel atque.',95,66,0,0,1,0,264.94,175.01,18.46,'modi',2,1956,3,0,'Architecto dolorum molestiae et quidem exercitationem incidunt et.'),(67,'Aut omnis debitis est similique.',83,67,1,1,0,0,92.79,35.68,27.11,'debitis',2,1967,9,1,'Similique aliquid ea et tempora dolor aut.'),(68,'Odit rerum vel nihil itaque atque.',11,68,1,1,0,1,289.20,192.19,19.80,'nemo',2,1951,8,0,'Aut qui pariatur et.'),(69,'Beatae reiciendis saepe aperiam voluptas odio.',52,69,1,1,0,1,168.00,91.84,14.65,'esse',1,1934,3,1,'Eos nihil ea quos veniam voluptatem nihil iure.'),(70,'Similique sed ab et ea in.',91,70,1,1,0,1,263.78,188.10,21.14,'corporis',2,1996,3,1,'Rerum necessitatibus modi enim deserunt excepturi iure.'),(71,'Possimus consequatur odio nostrum.',99,71,1,0,1,0,226.23,166.23,30.00,'possimus',2,1958,9,0,'Incidunt qui cumque et nihil.'),(72,'Nulla nobis qui necessitatibus qui iste rem.',160,72,1,0,0,0,240.35,185.62,24.73,'non',1,1984,8,0,'Numquam et ut sit repudiandae.'),(73,'Aut placeat iusto facere rerum et recusandae.',75,73,0,1,1,0,164.00,65.27,11.37,'rerum',1,1928,8,1,'Sit distinctio est odio aut tempore.'),(74,'Voluptatem nihil ut eum eos nemo cupiditate deserunt non.',150,74,1,1,0,1,181.23,132.51,18.72,'est',2,1966,7,0,'Est quasi consequatur neque deserunt magnam consequuntur libero aut.'),(75,'Molestiae tempora fuga esse placeat fuga.',151,75,0,1,1,0,173.89,21.76,23.18,'officiis',1,1928,6,0,'Ad aperiam cum quam doloremque rerum.'),(76,'Et et molestiae rerum non atque nulla ipsa dolore.',47,76,1,1,0,1,84.40,30.40,24.00,'velit',2,1923,7,1,'Dolores distinctio est fugit qui qui.'),(77,'Accusantium eius nihil cumque a ratione corporis.',176,77,0,1,1,1,193.46,155.71,6.55,'eligendi',2,2009,1,1,'Sunt natus vero facilis dolorum laboriosam molestiae.'),(78,'Placeat dolores tempore possimus fugit et placeat libero.',118,78,0,1,0,0,204.76,39.29,29.60,'maxime',2,1956,5,1,'Enim unde alias et cupiditate ut hic excepturi amet.'),(79,'Quos et illum aut.',22,79,1,1,0,0,197.30,144.10,15.26,'fuga',2,1936,2,0,'Aliquam veritatis illo quo.'),(80,'Amet dignissimos eos in eaque ipsum.',174,80,0,1,1,1,204.71,143.00,28.92,'aut',2,1991,1,1,'Dolore ut quidem vitae ratione.'),(81,'Aut quos nihil sapiente corporis.',167,81,1,0,1,1,157.00,116.00,11.00,'officia',2,1928,3,1,'Dolor earum sequi cum at.'),(82,'Cupiditate corporis id soluta a assumenda nulla ut.',13,82,0,0,0,0,138.38,94.84,13.54,'repudiandae',2,1950,2,1,'Consectetur consequatur non ut ut modi culpa.'),(83,'Cupiditate qui asperiores nemo voluptatem error odit provident.',89,83,1,1,0,0,85.35,27.35,28.00,'tempore',2,1943,1,0,'Enim accusantium est modi.'),(84,'Voluptatem asperiores repudiandae ab quam quisquam rerum.',107,84,1,1,0,1,205.59,162.43,13.16,'reiciendis',2,1946,2,1,'Sequi asperiores modi est.'),(85,'Repellendus voluptatum nisi eum eum aliquid est quaerat.',170,85,0,1,1,0,181.56,135.50,16.06,'odio',2,1982,2,0,'Corporis necessitatibus vel et similique exercitationem laboriosam.'),(86,'Omnis ipsum commodi dolor deserunt.',74,86,0,1,1,0,221.20,167.40,23.80,'voluptates',2,1954,4,0,'Ut pariatur ipsa incidunt eum.'),(87,'Iusto nisi fugiat quidem.',189,87,0,1,1,0,191.00,79.05,22.40,'maiores',2,2002,4,0,'Voluptatibus itaque quia eveniet voluptatem perferendis minus.'),(88,'Ut quam beatae quaerat sint et.',139,88,1,0,0,1,202.38,154.42,17.96,'in',2,1928,4,1,'Aut accusamus vel quo sit amet eveniet.'),(89,'Eius sed quia dolor sed.',133,89,0,1,0,0,254.33,197.00,27.33,'iste',1,2016,3,0,'Quo voluptates voluptatum accusantium amet id modi iusto.'),(90,'Rerum voluptate sit ut dolorum.',194,90,0,0,0,1,210.35,160.49,19.86,'tenetur',1,1978,5,1,'Corporis voluptas qui ad earum sunt.'),(91,'Voluptas ex nesciunt est aut quae.',105,91,1,0,0,1,191.61,132.48,29.13,'nobis',2,1922,9,0,'Tempora dolor sint voluptate ullam ex.'),(92,'Nisi et alias qui.',62,92,0,0,1,1,155.15,59.49,20.36,'quos',1,1957,8,0,'Cupiditate molestiae vero eveniet accusantium voluptatibus nihil.'),(93,'Molestiae eum doloribus impedit maiores fuga ratione.',179,93,1,1,0,1,286.26,190.56,12.62,'rem',2,2000,1,0,'Consequatur voluptates hic inventore.'),(94,'Harum deleniti aut placeat ab neque voluptatem tempora.',130,94,0,0,1,0,101.00,49.00,5.41,'consequatur',1,2009,4,1,'Nemo est sapiente nam repudiandae.'),(95,'Vel repudiandae vel voluptas beatae.',68,95,0,0,1,1,104.46,47.00,27.46,'magnam',1,1927,6,0,'Sit perferendis sapiente illo iste.'),(96,'Placeat architecto voluptatum libero rerum culpa veniam.',33,96,0,1,0,1,215.99,88.03,26.85,'commodi',1,1988,3,0,'Eum aliquid vero dolorem odit ipsum dolorem non.'),(97,'Ducimus mollitia laboriosam qui aut architecto eum.',55,97,0,1,0,1,235.00,152.30,26.96,'non',1,1940,1,1,'Doloribus ad ad veniam omnis dolore et eum eos.'),(98,'Numquam minus cum voluptas ut incidunt.',147,98,1,0,0,1,181.60,142.00,9.60,'at',1,2014,5,0,'Molestiae eum eius voluptatibus ea.'),(99,'Facilis et qui laboriosam odio vel veniam eum.',141,99,1,1,0,0,296.18,117.54,28.60,'quia',2,1931,3,0,'Sapiente quibusdam culpa tempora voluptatem voluptatibus atque.'),(100,'Voluptas officia nisi recusandae et exercitationem voluptas voluptatibus quasi.',1,100,0,1,1,0,187.16,145.57,11.59,'aut',1,1995,3,0,'Voluptatem neque minima molestiae exercitationem.'),(101,'Aperiam nihil recusandae accusamus voluptatem voluptatem consequatur.',188,101,0,1,1,0,239.48,181.38,28.10,'ut',1,1964,4,1,'Voluptas distinctio nam dolorum esse dolor earum.'),(102,'Aliquid similique unde non officia ducimus quia ut.',110,102,1,1,1,0,193.33,37.48,28.44,'consequatur',2,2012,9,1,'Magni est ea beatae tempora officia iusto earum.'),(103,'Eum velit accusamus aut.',138,103,0,0,0,0,242.09,144.30,26.00,'officiis',1,1951,3,0,'Laudantium consequuntur delectus voluptas vitae enim.'),(104,'Suscipit optio molestiae officiis sapiente qui est et.',93,104,0,1,0,1,222.53,169.62,22.91,'possimus',1,1997,4,0,'Vitae quos vero quas et voluptates eum omnis neque.'),(105,'Doloremque voluptatum laboriosam quia excepturi voluptate ut.',28,105,1,1,0,1,241.09,87.51,10.98,'sed',2,2015,8,1,'Quas omnis repudiandae eius porro.'),(106,'Doloribus eum dignissimos dolorem perferendis nisi omnis quis.',164,106,0,1,1,1,265.00,155.91,26.34,'tempora',2,1962,1,1,'Voluptate odio voluptates amet porro veniam blanditiis enim.'),(107,'Aut sunt vero perferendis consequuntur.',126,107,0,1,1,0,168.03,131.92,6.11,'cum',1,1947,5,1,'Dolores ullam tempore quas accusamus quo debitis ipsum.'),(108,'Ad natus veniam est ad.',175,108,1,1,1,0,238.58,194.58,14.00,'et',2,1930,7,0,'Dignissimos culpa debitis omnis voluptatum eaque ea.'),(109,'Eius nihil consequatur eligendi dolor quasi.',82,109,0,0,1,0,251.06,194.96,26.10,'doloremque',1,1990,8,0,'Et animi iusto architecto rem.'),(110,'Ut neque possimus dignissimos soluta accusamus.',185,110,0,0,0,0,263.12,150.44,26.24,'eum',2,1939,9,1,'Animi iste aut laudantium.'),(111,'Optio praesentium eligendi quidem iusto minus eos ut.',57,111,0,1,0,1,253.00,93.58,28.28,'aperiam',2,2008,7,1,'Sit suscipit omnis eum.'),(112,'Earum ea voluptatibus rerum sed sunt nisi id numquam.',5,112,1,0,0,1,200.27,30.95,25.42,'voluptatem',2,2003,1,1,'Non reiciendis quo eum voluptatem facilis dolores.');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_plot_parameters`
--

DROP TABLE IF EXISTS `land_plot_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_plot_parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `IJS_SNT` tinyint(1) DEFAULT NULL,
  `land_area` decimal(6,2) DEFAULT NULL,
  `well` tinyint(1) DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `distance_from_MKAD` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_plot_parameters`
--

LOCK TABLES `land_plot_parameters` WRITE;
/*!40000 ALTER TABLE `land_plot_parameters` DISABLE KEYS */;
INSERT INTO `land_plot_parameters` VALUES (1,'Et alias laudantium ullam qui ad ipsam.',1,9057.00,1,'Porro suscipit dolorum non dolorem beatae consequuntur.',173),(2,'Quos odio ipsum voluptatibus autem blanditiis non.',1,1314.14,0,'At placeat sed architecto.',42),(3,'Veritatis autem qui vel perferendis vitae aut.',1,4329.72,1,'Reprehenderit sit ut sint in.',129),(4,'Nisi omnis aut nisi corporis et facilis aspernatur.',0,9887.60,1,'Possimus qui magnam non eius deleniti.',113),(5,'Voluptate vero sunt ut rerum voluptatem nesciunt.',1,7316.30,0,'Voluptatem quas pariatur et vero qui earum voluptate dolores.',169),(6,'Iure doloremque magni tempora quia.',1,3716.51,0,'Maxime cum atque ad quibusdam.',102),(7,'Temporibus modi quia quos quae et ullam.',1,6417.90,0,'Incidunt sunt tempore vitae sunt doloremque quidem.',84),(8,'Exercitationem labore repellendus provident et.',0,127.47,1,'Sint vel qui voluptatem iusto at qui rerum quaerat.',180),(9,'Quidem assumenda aliquam ullam mollitia et qui placeat in.',1,4713.87,0,'Sunt cupiditate amet ut error.',107),(10,'Quia totam officiis nam odio aut.',1,4971.00,0,'Quaerat nemo molestiae consectetur harum quidem.',7),(11,'Porro molestias optio modi quis.',0,5323.67,0,'Velit dolor tenetur repellendus.',177),(12,'Ea rerum eaque voluptatem asperiores.',0,3275.62,1,'Aliquid laudantium facilis enim quo dignissimos possimus.',11),(13,'Voluptas nemo neque sint.',0,7549.15,0,'Inventore porro nulla facilis et delectus quasi.',144),(14,'Nihil laboriosam unde libero earum occaecati blanditiis veniam et.',0,6419.51,1,'Est hic voluptatem alias iste.',122),(15,'At et at et libero.',1,4515.09,1,'Suscipit cumque unde et dignissimos.',137),(16,'Nihil quisquam neque et ratione et ducimus esse.',1,5665.10,1,'Sapiente quasi itaque in voluptate.',170),(17,'Vitae impedit odit tempore sed expedita dignissimos velit.',0,3914.23,1,'Perspiciatis dolorem dolores deleniti.',103),(18,'Quibusdam qui illo maxime et vel provident maxime exercitationem.',0,9411.00,0,'Recusandae quo harum voluptatem quam expedita enim.',152),(19,'Error ipsam voluptatem quia saepe vitae et aut.',0,7979.20,0,'Iste omnis est esse qui ut.',37),(20,'Quas quibusdam officiis repellendus et enim est voluptas.',0,894.15,0,'Voluptatem qui reprehenderit deleniti fuga.',102),(21,'Beatae officiis optio deleniti at ratione dolorem odit.',1,4350.52,0,'Hic delectus natus laudantium asperiores aut.',36),(22,'Necessitatibus possimus fugiat vel laborum iste id cumque.',1,1203.16,1,'Necessitatibus omnis provident aut veritatis doloribus.',43),(23,'Laudantium repellendus neque esse qui aut voluptatem.',1,9060.99,0,'Aut inventore nulla ad officiis.',49),(24,'Occaecati et mollitia quia qui magni.',0,4973.93,0,'Accusamus tempora est deleniti nostrum consequatur molestias vel.',49),(25,'Voluptatem eos delectus nisi magni sit tenetur voluptatem.',1,5561.30,1,'Magni non tempore doloribus est quidem at est.',158),(26,'Qui facere qui non nesciunt quia necessitatibus fugiat.',0,9458.51,1,'Doloribus ut eos aspernatur et beatae id.',150),(27,'Voluptatibus laboriosam quaerat vel repudiandae.',1,8086.34,0,'Autem odio maxime recusandae est exercitationem.',14),(28,'Atque voluptatem nulla aut at neque.',1,2590.00,0,'Aut veritatis ab minima dolore earum voluptatem.',120),(29,'Impedit at sit debitis est.',0,7667.57,1,'Praesentium suscipit aut odit amet assumenda.',54),(30,'Sit suscipit nihil autem placeat saepe ut repellat.',1,3072.30,1,'Ducimus earum dolor cum modi recusandae id.',186),(31,'Et et libero quaerat non non.',1,1529.32,1,'Fugiat commodi minus porro voluptatem.',63),(32,'Qui velit vero distinctio sint labore quae eum.',1,6680.70,0,'Porro neque distinctio ut illum id.',122),(33,'At in et fugiat quibusdam.',1,3465.35,1,'Officia unde qui nam enim vel aut.',55),(34,'Laboriosam saepe et ea nostrum.',1,8579.75,1,'Consequatur eum dolore sapiente ut assumenda.',188),(35,'Sint qui commodi sapiente facere exercitationem ut.',0,244.46,0,'Dignissimos expedita consequuntur quo repudiandae voluptatem ab.',63),(36,'Soluta et est culpa repellendus.',1,192.09,0,'Veritatis et quo sit molestias excepturi ratione hic.',60),(37,'Dolorum molestiae numquam quia non.',1,6035.76,1,'Expedita dignissimos eum sit accusantium voluptatem quaerat.',1),(38,'Et aperiam repellendus eos quia eaque necessitatibus.',0,5061.86,1,'Mollitia nisi eum fugiat error tenetur.',85),(39,'Inventore aliquam unde totam quia repellendus.',0,4100.90,1,'Officia ut non dolores deserunt necessitatibus.',116),(40,'Dolore consequuntur autem quam.',0,3325.00,0,'Molestiae ullam pariatur laboriosam illum id nostrum assumenda.',84),(41,'Nihil non eligendi facere voluptas rerum.',0,391.89,0,'Laudantium harum voluptas porro praesentium omnis fuga molestiae.',11),(42,'Excepturi placeat sit voluptate consectetur inventore.',0,1012.01,1,'Perferendis architecto est qui et a omnis.',129),(43,'Neque beatae totam vel voluptatem sunt dignissimos dignissimos.',1,6901.53,0,'Aut dolorum consequatur ut magnam cum.',178),(44,'Velit rerum perferendis ut et.',0,2745.92,1,'Fuga et debitis laboriosam sint illum.',35),(45,'Qui officiis est exercitationem et.',0,5370.34,1,'Reiciendis sint aut est nisi animi quia.',11),(46,'Est ut sunt sed vero eos.',1,9668.50,0,'Recusandae eum consequatur facere sit aut optio in natus.',100),(47,'Totam iste molestias hic ut optio et aspernatur corporis.',1,3274.50,1,'Earum et sint dolorum eaque optio et.',92),(48,'Aspernatur qui nesciunt sit dolore quidem velit nemo nostrum.',0,763.70,0,'Eum occaecati nihil voluptatem dolores velit quia.',158),(49,'Et nobis adipisci veritatis similique impedit ad officiis dolor.',1,3938.98,1,'Beatae aut vel dignissimos nulla et.',171),(50,'Qui et cupiditate et ut cupiditate magni id et.',1,2934.25,1,'Qui nesciunt impedit rem nam temporibus assumenda quas.',70),(51,'Eum ullam non soluta.',1,706.89,1,'Rerum nesciunt quam numquam voluptatibus qui.',11),(52,'Adipisci dignissimos qui corporis deserunt.',1,9752.94,1,'Dolor qui pariatur nulla in aut.',88),(53,'Iusto dolor dicta ea totam.',1,5708.00,0,'Ea dolorem dolor debitis deleniti consequatur ipsa.',134),(54,'Corrupti iste non et aliquid quia.',1,7111.28,1,'Animi ex eos non molestiae.',189),(55,'Hic ipsa et nulla laboriosam in corrupti cum.',1,9940.14,0,'Quisquam aut magni esse necessitatibus qui.',69),(56,'Quia rerum eos ut explicabo.',0,4993.50,0,'Dolores enim consequatur officiis culpa.',114),(57,'Nostrum adipisci porro a.',1,5289.47,1,'Sapiente ut harum repellendus aut est est.',50),(58,'Sed illum nihil atque commodi ducimus ut.',0,8475.73,1,'Odit voluptas distinctio veniam.',54),(59,'Quo est consequatur officiis deleniti eos in.',1,7190.25,0,'Hic nam ea sunt sit non.',91),(60,'Hic molestiae quo repellat debitis consequatur.',1,9622.00,0,'Aut aut iusto autem ab sed est dolorem.',15),(61,'Ea voluptas eum id commodi.',1,9674.79,0,'Qui quibusdam sit at omnis sit temporibus aliquam.',52),(62,'Reiciendis nulla fuga at qui magnam voluptas necessitatibus.',1,7498.46,1,'Nesciunt neque est nihil rerum est soluta.',83),(63,'Mollitia architecto et reiciendis id.',0,5587.22,1,'Maxime optio nulla dolorem neque voluptatem quas.',28),(64,'Incidunt officiis qui molestiae aut.',0,2410.91,1,'Accusamus et error et unde asperiores ut.',82),(65,'Ullam enim ut qui fuga rerum omnis delectus natus.',1,7273.00,0,'Commodi et expedita numquam dolorum.',67),(66,'Incidunt ipsa tempore distinctio dolor quis et non.',1,7223.66,0,'Aut mollitia eveniet repudiandae fugit soluta perspiciatis.',96),(67,'Quo ullam expedita distinctio odio voluptatibus voluptas quia expedita.',1,8766.75,1,'Quibusdam mollitia sunt dolor.',191),(68,'Dolorem optio ab necessitatibus adipisci.',0,1809.79,0,'Harum praesentium expedita fugiat iusto.',141),(69,'Nihil et doloremque enim.',1,2951.00,0,'Eligendi enim iusto est cumque alias provident similique.',16),(70,'Odio possimus sequi quod.',1,4736.64,1,'Atque expedita modi assumenda deleniti officia at maxime.',77),(71,'Et quo occaecati quod quo.',1,945.11,0,'Aspernatur est saepe laudantium reprehenderit autem.',133),(72,'Voluptatem a temporibus ab eveniet eligendi.',1,9457.36,1,'Ut at mollitia mollitia ea rerum provident autem.',29),(73,'Molestiae vitae saepe alias veritatis.',1,9261.00,0,'Rem odio voluptas voluptas mollitia iusto officiis.',82),(74,'Dicta quo ipsum molestiae in unde sint maiores totam.',0,9442.81,0,'Sequi aut aperiam dolor non id.',37),(75,'Ut et et qui perferendis dolores.',1,6724.27,1,'Consectetur voluptates eum laboriosam omnis quasi.',44),(76,'Aut minus inventore temporibus ad ut error nihil voluptatem.',1,4571.02,0,'Sit harum quia eos at.',128),(77,'Ut et et laboriosam voluptatem facere.',1,8182.12,1,'Eligendi occaecati consequatur voluptas quaerat perferendis quae sit.',72),(78,'Optio dolores ratione ratione excepturi.',1,9286.01,1,'Ex et asperiores ipsam veritatis quas.',151),(79,'Perferendis debitis dolores asperiores voluptatibus pariatur consequatur nesciunt.',0,1412.34,0,'Quos rerum et est dolorum.',135),(80,'Neque consequatur omnis pariatur a sunt rerum aut.',0,8837.69,0,'Repellendus illo molestias id temporibus.',90),(81,'Quaerat voluptas molestias velit mollitia quod et.',1,147.20,0,'Accusantium dolorem voluptate odio.',64),(82,'Ullam animi illo dolor quas sed.',1,2926.91,0,'Non minima ut dolor amet ipsa quia sed.',52),(83,'Est voluptas veritatis fugiat dicta doloribus libero quasi hic.',0,1139.31,1,'Excepturi et fugiat facere eligendi praesentium corporis enim.',146),(84,'Hic beatae placeat aut neque esse ea praesentium dolore.',1,5759.21,0,'Neque enim deserunt non id nesciunt sed.',174),(85,'Qui nostrum id magni numquam fugiat non.',0,8861.36,0,'Autem est omnis quod voluptate.',180),(86,'Rem ut facere facere et alias sit repellat.',1,9481.36,0,'Aut et fugit nihil cum.',116),(87,'Et accusamus nulla iusto corporis labore.',0,8901.13,1,'Voluptas ipsum magnam harum quae.',117),(88,'Dicta architecto temporibus aut nam.',0,910.12,0,'Et expedita eos necessitatibus doloribus.',155),(89,'Explicabo ad veniam ab facilis.',1,279.33,0,'Rerum et dolor recusandae cupiditate.',169),(90,'Ut ut provident omnis assumenda occaecati ab deserunt.',0,798.28,0,'Officia pariatur quasi ut eum et quo fugiat.',21),(91,'Voluptatem recusandae iusto rem rerum.',1,412.54,0,'Error dolorum rem repellendus aut enim consequatur atque.',122),(92,'Qui optio in rerum voluptatem dolore.',1,4874.79,0,'Officiis officiis dolor doloremque cupiditate saepe.',144),(93,'Perferendis illo quis perferendis.',0,9351.38,0,'Provident voluptas voluptas magni et illum dolores occaecati.',88),(94,'Aliquid cumque quis aliquid et sint possimus magnam ut.',1,5231.51,1,'Mollitia magnam qui tempore minus.',63),(95,'Sint odit veniam quia incidunt et.',0,7839.82,0,'Unde eum beatae labore numquam nihil.',33),(96,'Doloribus porro doloremque quidem consequatur enim.',1,7689.15,0,'Quia consectetur quod sint officia corrupti sed.',145),(97,'Ut consequatur est ab fuga ea expedita voluptatem.',0,4204.89,1,'Fugit nihil culpa id ad non sed.',62),(98,'Eos officia soluta deleniti nesciunt aspernatur.',1,2662.50,1,'Eum illo delectus quo reprehenderit quia velit.',190),(99,'Consequatur aliquid exercitationem molestiae accusantium numquam tempore.',0,7063.69,0,'Aliquam aliquam laudantium eos delectus eaque odit.',44),(100,'Non magni ea aut sit eius odio.',1,5008.09,1,'Assumenda nemo vel temporibus expedita aut sunt.',129),(101,'Dolores et quo voluptatibus asperiores occaecati nihil.',1,1789.35,0,'Id id autem sint.',24),(102,'Quo autem consectetur libero velit nam atque cum.',0,709.85,0,'Ex minus quasi mollitia nam.',26),(103,'Doloremque velit et explicabo molestiae labore.',0,3558.88,1,'Ratione distinctio in sunt natus vel dolores omnis consequatur.',194),(104,'Expedita pariatur dolorem non qui quidem quidem ut.',0,2344.46,0,'Odit aliquam officiis aperiam saepe sed omnis reiciendis.',169),(105,'Recusandae tempora enim ratione eum deleniti.',1,2973.87,0,'Magnam ex quam maxime ut illum et.',100),(106,'Error et consequatur fuga molestias quia quidem.',1,2878.70,1,'Aut et esse sed omnis.',24),(107,'Et doloribus optio totam adipisci aspernatur illo nihil.',1,7816.22,1,'Assumenda minus modi vel optio quia.',46),(108,'Voluptatem est laboriosam praesentium minus.',1,6411.63,0,'Nihil dolor a nihil neque vero.',39),(109,'Neque qui quia quis quo.',0,2937.29,1,'Sunt quo error ut facilis.',46),(110,'Voluptatibus quia impedit consequatur corrupti vel.',1,9809.95,0,'Voluptas deserunt ut autem laudantium vitae qui.',86),(111,'Voluptates labore et tempore dolorem.',0,9236.43,1,'Quod occaecati beatae possimus expedita incidunt id distinctio.',105),(112,'Quia saepe voluptatibus molestias eveniet provident incidunt.',1,3491.30,1,'Doloremque laboriosam occaecati voluptas quo nihil alias accusamus eligendi.',29);
/*!40000 ALTER TABLE `land_plot_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `created_at` datetime NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `str_id` int NOT NULL,
  `name_value` varchar(255) NOT NULL
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES ('2020-06-11 17:04:37','sale_rent',3,'Посуточная аренда');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `material_name__idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Кирпич'),(2,'Монолит'),(3,'Панель');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int unsigned DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `media_type_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ad_id_fkm` (`ad_id`),
  KEY `media_type_id_fk` (`media_type_id`),
  CONSTRAINT `ad_id_fkm` FOREIGN KEY (`ad_id`) REFERENCES `advertisement` (`id`) ON DELETE CASCADE,
  CONSTRAINT `media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,77,'https://dropbox.net/redDB/77.mpeg',17066,2,'2018-07-06 14:47:39','2020-06-11 11:58:11'),(2,78,'https://dropbox.net/redDB/78.mp4',61404,2,'2017-01-14 02:04:42','2020-06-11 12:11:27'),(3,60,'https://dropbox.net/redDB/60.mp4',97449,2,'2011-09-13 17:53:29','2020-06-11 11:58:11'),(4,173,'https://dropbox.net/redDB/173.mp4',95084,2,'2015-03-20 12:28:27','2020-06-11 12:11:27'),(5,188,'https://dropbox.net/redDB/188.mpeg',68734,2,'2019-06-01 23:22:45','2020-06-11 11:58:11'),(6,166,'https://dropbox.net/redDB/166.avi',43716,2,'2015-02-08 22:58:44','2020-06-11 11:58:11'),(7,136,'https://dropbox.net/redDB/136.mpeg',44022,2,'2014-07-07 04:09:54','2020-06-11 12:11:27'),(8,87,'https://dropbox.net/redDB/87.mp4',12411,2,'2018-12-14 07:09:08','2020-06-11 11:58:11'),(9,138,'https://dropbox.net/redDB/138.mp4',62375,2,'2017-06-06 11:42:16','2020-06-11 11:58:11'),(10,14,'https://dropbox.net/redDB/14.mp4',25369,2,'2020-03-01 23:14:51','2020-06-11 12:11:27'),(11,137,'https://dropbox.net/redDB/137.avi',13733,2,'2017-12-14 09:08:10','2020-06-11 12:11:27'),(12,141,'https://dropbox.net/redDB/141.mpeg',70392,2,'2010-09-08 04:12:39','2020-06-11 11:58:11'),(13,3,'https://dropbox.net/redDB/3.jpeg',94301,1,'2020-05-11 01:42:17','2020-06-11 12:11:00'),(14,77,'https://dropbox.net/redDB/77.png',80855,2,'2013-02-11 16:11:46','2020-06-11 12:11:27'),(15,86,'https://dropbox.net/redDB/86.mpeg',37175,2,'2015-11-16 19:06:41','2020-06-11 11:58:11'),(16,120,'https://dropbox.net/redDB/120.jpeg',89185,1,'2018-10-08 05:50:32','2020-06-11 12:11:00'),(17,165,'https://dropbox.net/redDB/165.jpeg',53305,1,'2018-12-31 05:17:16','2020-06-11 11:58:11'),(18,169,'https://dropbox.net/redDB/169.jpeg',68385,1,'2019-11-30 18:06:34','2020-06-11 12:11:00'),(19,157,'https://dropbox.net/redDB/157.avi',87408,2,'2010-10-17 19:43:40','2020-06-11 11:58:11'),(20,107,'https://dropbox.net/redDB/107.avi',64092,2,'2014-05-04 21:38:03','2020-06-11 11:58:11'),(21,58,'https://dropbox.net/redDB/58.mpeg',38563,2,'2013-05-22 18:23:53','2020-06-11 12:11:27'),(22,85,'https://dropbox.net/redDB/85.jpeg',12829,1,'2016-11-08 05:23:12','2020-06-11 11:58:11'),(23,13,'https://dropbox.net/redDB/13.mpeg',75271,2,'2013-02-11 19:08:14','2020-06-11 12:11:27'),(24,173,'https://dropbox.net/redDB/173.png',48391,2,'2013-01-31 22:50:41','2020-06-11 12:11:27'),(25,152,'https://dropbox.net/redDB/152.avi',54235,2,'2013-12-13 02:18:33','2020-06-11 12:11:27'),(26,172,'https://dropbox.net/redDB/172.mpeg',74844,2,'2018-01-19 01:14:02','2020-06-11 11:58:11'),(27,24,'https://dropbox.net/redDB/24.png',92749,2,'2019-05-06 19:51:22','2020-06-11 12:11:27'),(28,128,'https://dropbox.net/redDB/128.mpeg',40464,2,'2017-05-13 18:48:58','2020-06-11 11:58:11'),(29,109,'https://dropbox.net/redDB/109.avi',28870,2,'2020-05-27 05:07:15','2020-06-11 11:58:11'),(30,102,'https://dropbox.net/redDB/102.mp4',26256,2,'2019-01-16 19:01:50','2020-06-11 12:11:27'),(31,21,'https://dropbox.net/redDB/21.mpeg',87625,2,'2015-10-20 06:55:27','2020-06-11 12:11:27'),(32,158,'https://dropbox.net/redDB/158.mp4',27781,2,'2013-05-18 12:59:45','2020-06-11 11:58:11'),(33,18,'https://dropbox.net/redDB/18.jpeg',55469,1,'2020-01-06 06:20:08','2020-06-11 11:58:11'),(34,8,'https://dropbox.net/redDB/8.avi',93732,2,'2011-11-29 19:52:03','2020-06-11 12:11:27'),(35,67,'https://dropbox.net/redDB/67.mpeg',69328,2,'2012-10-11 12:31:43','2020-06-11 12:11:27'),(36,119,'https://dropbox.net/redDB/119.avi',56950,2,'2018-06-17 20:56:03','2020-06-11 11:58:11'),(37,186,'https://dropbox.net/redDB/186.mp4',27114,2,'2010-10-13 08:14:35','2020-06-11 12:11:27'),(38,117,'https://dropbox.net/redDB/117.mp4',95617,2,'2016-12-08 13:16:19','2020-06-11 12:11:27'),(39,176,'https://dropbox.net/redDB/176.avi',70802,2,'2013-02-14 04:55:45','2020-06-11 12:11:27'),(40,148,'https://dropbox.net/redDB/148.avi',87070,2,'2016-05-04 09:56:58','2020-06-11 12:11:27'),(41,74,'https://dropbox.net/redDB/74.mpeg',62474,2,'2012-03-08 21:20:20','2020-06-11 12:11:27'),(42,14,'https://dropbox.net/redDB/14.avi',93829,2,'2012-01-03 21:30:02','2020-06-11 12:11:27'),(43,32,'https://dropbox.net/redDB/32.avi',44974,2,'2017-05-01 05:38:38','2020-06-11 12:11:27'),(44,123,'https://dropbox.net/redDB/123.avi',88104,2,'2014-07-29 08:24:22','2020-06-11 12:11:27'),(45,146,'https://dropbox.net/redDB/146.png',42502,2,'2018-06-01 16:06:47','2020-06-11 12:11:27'),(46,135,'https://dropbox.net/redDB/135.mpeg',28876,2,'2013-08-19 04:19:59','2020-06-11 12:11:27'),(47,45,'https://dropbox.net/redDB/45.mpeg',33601,2,'2011-12-07 05:21:55','2020-06-11 12:11:27'),(48,150,'https://dropbox.net/redDB/150.avi',13125,2,'2019-07-31 11:03:14','2020-06-11 12:11:27'),(49,19,'https://dropbox.net/redDB/19.avi',83065,2,'2012-07-27 10:34:38','2020-06-11 12:11:27'),(50,37,'https://dropbox.net/redDB/37.mpeg',47932,2,'2019-08-05 07:04:32','2020-06-11 11:58:11'),(51,72,'https://dropbox.net/redDB/72.mp4',62049,2,'2016-01-03 03:29:24','2020-06-11 12:11:27'),(52,8,'https://dropbox.net/redDB/8.png',31395,2,'2014-05-09 13:36:13','2020-06-11 11:58:11'),(53,159,'https://dropbox.net/redDB/159.avi',84204,2,'2020-02-23 11:59:46','2020-06-11 12:11:27'),(54,56,'https://dropbox.net/redDB/56.png',62095,2,'2010-09-17 12:58:59','2020-06-11 12:11:27'),(55,12,'https://dropbox.net/redDB/12.avi',87944,2,'2010-11-19 06:53:10','2020-06-11 12:11:27'),(56,61,'https://dropbox.net/redDB/61.mp4',39550,2,'2016-05-27 17:49:09','2020-06-11 12:11:27'),(57,122,'https://dropbox.net/redDB/122.png',26328,2,'2011-11-03 23:04:55','2020-06-11 12:11:27'),(58,183,'https://dropbox.net/redDB/183.png',72108,2,'2015-12-21 17:22:55','2020-06-11 12:11:27'),(59,15,'https://dropbox.net/redDB/15.mp4',37082,2,'2012-06-21 08:29:12','2020-06-11 12:11:27'),(60,94,'https://dropbox.net/redDB/94.avi',19257,2,'2019-09-25 22:07:59','2020-06-11 11:58:11'),(61,129,'https://dropbox.net/redDB/129.png',35150,2,'2011-12-20 08:41:01','2020-06-11 12:11:27'),(62,126,'https://dropbox.net/redDB/126.avi',36759,2,'2019-04-26 16:09:34','2020-06-11 12:11:27'),(63,122,'https://dropbox.net/redDB/122.mp4',73069,2,'2013-03-07 19:39:51','2020-06-11 12:11:27'),(64,36,'https://dropbox.net/redDB/36.mpeg',96029,2,'2019-10-14 11:25:44','2020-06-11 12:11:27'),(65,33,'https://dropbox.net/redDB/33.avi',26813,2,'2017-09-12 12:16:37','2020-06-11 12:11:27'),(66,24,'https://dropbox.net/redDB/24.png',80062,2,'2018-04-20 14:26:30','2020-06-11 12:11:27'),(67,29,'https://dropbox.net/redDB/29.jpeg',15884,1,'2011-12-09 07:46:55','2020-06-11 11:58:11'),(68,162,'https://dropbox.net/redDB/162.mp4',21834,2,'2012-10-26 10:53:02','2020-06-11 11:58:11'),(69,156,'https://dropbox.net/redDB/156.mpeg',13396,2,'2015-10-15 20:30:53','2020-06-11 11:58:11'),(70,122,'https://dropbox.net/redDB/122.mpeg',92934,2,'2020-02-22 09:08:48','2020-06-11 12:11:27'),(71,20,'https://dropbox.net/redDB/20.avi',46794,2,'2010-09-25 17:21:22','2020-06-11 11:58:11'),(72,53,'https://dropbox.net/redDB/53.png',39793,2,'2014-05-10 20:23:54','2020-06-11 12:11:27'),(73,55,'https://dropbox.net/redDB/55.mpeg',24864,2,'2019-08-20 23:54:10','2020-06-11 12:11:27'),(74,95,'https://dropbox.net/redDB/95.mp4',96519,2,'2018-02-20 06:37:58','2020-06-11 11:58:11'),(75,140,'https://dropbox.net/redDB/140.avi',54067,2,'2020-02-15 00:54:21','2020-06-11 12:11:27'),(76,30,'https://dropbox.net/redDB/30.mpeg',62602,2,'2014-10-25 17:40:12','2020-06-11 11:58:11'),(77,17,'https://dropbox.net/redDB/17.jpeg',63597,1,'2015-12-07 18:25:30','2020-06-11 12:11:00'),(78,42,'https://dropbox.net/redDB/42.png',78384,2,'2017-01-16 07:53:10','2020-06-11 11:58:11'),(79,30,'https://dropbox.net/redDB/30.avi',80760,2,'2012-04-20 05:05:50','2020-06-11 11:58:11'),(80,78,'https://dropbox.net/redDB/78.jpeg',66651,1,'2019-11-20 23:33:25','2020-06-11 11:58:11'),(81,151,'https://dropbox.net/redDB/151.mpeg',66211,2,'2013-12-28 07:29:43','2020-06-11 12:11:27'),(82,166,'https://dropbox.net/redDB/166.mp4',49024,2,'2016-03-21 11:31:26','2020-06-11 12:11:27'),(83,133,'https://dropbox.net/redDB/133.avi',84244,2,'2010-08-12 05:29:46','2020-06-11 11:58:11'),(84,166,'https://dropbox.net/redDB/166.png',49301,2,'2013-01-01 14:04:12','2020-06-11 12:11:27'),(85,144,'https://dropbox.net/redDB/144.mpeg',25295,2,'2012-11-08 05:56:07','2020-06-11 12:11:27'),(86,56,'https://dropbox.net/redDB/56.mp4',83492,2,'2012-06-06 19:13:05','2020-06-11 12:11:27'),(87,69,'https://dropbox.net/redDB/69.mp4',40077,2,'2014-04-08 04:30:15','2020-06-11 11:58:11'),(88,104,'https://dropbox.net/redDB/104.jpeg',95388,1,'2010-10-22 06:14:45','2020-06-11 12:11:00'),(89,143,'https://dropbox.net/redDB/143.avi',37819,2,'2013-11-03 22:36:34','2020-06-11 12:11:27'),(90,194,'https://dropbox.net/redDB/194.mpeg',63403,2,'2017-01-28 07:38:59','2020-06-11 12:11:27'),(91,187,'https://dropbox.net/redDB/187.jpeg',82628,1,'2020-04-13 14:11:48','2020-06-11 11:58:11'),(92,150,'https://dropbox.net/redDB/150.jpeg',76525,1,'2010-12-18 16:38:17','2020-06-11 12:11:00'),(93,177,'https://dropbox.net/redDB/177.png',26406,2,'2016-06-08 22:02:01','2020-06-11 12:11:27'),(94,142,'https://dropbox.net/redDB/142.jpeg',45580,1,'2015-12-07 23:59:23','2020-06-11 12:11:00'),(95,68,'https://dropbox.net/redDB/68.mpeg',11980,2,'2017-08-09 08:16:06','2020-06-11 12:11:27'),(96,69,'https://dropbox.net/redDB/69.avi',34631,2,'2015-12-16 19:00:37','2020-06-11 12:11:27'),(97,121,'https://dropbox.net/redDB/121.avi',17870,2,'2012-09-04 10:12:30','2020-06-11 11:58:11'),(98,197,'https://dropbox.net/redDB/197.avi',75177,2,'2016-11-12 02:24:23','2020-06-11 12:11:27'),(99,162,'https://dropbox.net/redDB/162.mpeg',86748,2,'2012-08-30 22:07:40','2020-06-11 12:11:27'),(100,141,'https://dropbox.net/redDB/141.jpeg',63173,1,'2014-02-03 01:47:02','2020-06-11 12:11:00');
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
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'photo'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameters` (
  `ad_id` int unsigned NOT NULL AUTO_INCREMENT,
  `cadastral_number` int DEFAULT NULL,
  `geolocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owners_number` int DEFAULT NULL,
  `last_owner_duration` int DEFAULT NULL,
  `registered_persons_number` int DEFAULT NULL,
  PRIMARY KEY (`ad_id`),
  KEY `parameters_cadastral_number__idx` (`cadastral_number`),
  KEY `parameters_geolocation__idx` (`geolocation`),
  CONSTRAINT `ad_id_fkp` FOREIGN KEY (`ad_id`) REFERENCES `advertisement` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameters`
--

LOCK TABLES `parameters` WRITE;
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
INSERT INTO `parameters` VALUES (1,12306,'{\"langitude\":\"84.43830831389717, \"longitude\":\"72.00125909596798\"}',4,24,6),(2,19101,'{\"langitude\":\"6.691373611512942, \"longitude\":\"17.453093843025243\"}',3,6,10),(3,13270,'{\"langitude\":\"67.19135145395188, \"longitude\":\"83.59747881404822\"}',2,17,8),(4,12503,'{\"langitude\":\"16.413342781749872, \"longitude\":\"31.274280539969247\"}',5,7,6),(5,14960,'{\"langitude\":\"7.131377427961097, \"longitude\":\"41.83404859326226\"}',3,25,4),(6,16491,'{\"langitude\":\"87.77611375579248, \"longitude\":\"13.378426072540158\"}',5,19,9),(7,14540,'{\"langitude\":\"3.5637921686878355, \"longitude\":\"77.6836856991832\"}',1,7,5),(8,14758,'{\"langitude\":\"77.727055063217, \"longitude\":\"55.58422129189988\"}',2,15,11),(9,11443,'{\"langitude\":\"44.73994434321294, \"longitude\":\"56.947060913729544\"}',4,14,14),(10,27472,'{\"langitude\":\"50.51547461237337, \"longitude\":\"81.73619339404273\"}',5,23,3),(11,10949,'{\"langitude\":\"57.13454620645805, \"longitude\":\"40.46415392352655\"}',3,10,1),(12,17010,'{\"langitude\":\"30.9171340716231, \"longitude\":\"33.19321166090035\"}',2,25,9),(13,26210,'{\"langitude\":\"73.21465916299695, \"longitude\":\"66.4936639056482\"}',2,12,11),(14,23477,'{\"langitude\":\"12.824345112614655, \"longitude\":\"64.64073691949316\"}',2,24,1),(15,24682,'{\"langitude\":\"84.73065233298638, \"longitude\":\"29.731053979816895\"}',5,4,7),(16,10731,'{\"langitude\":\"94.46331597348984, \"longitude\":\"83.12342100136301\"}',4,24,7),(17,23555,'{\"langitude\":\"32.22716015971001, \"longitude\":\"11.765540867825543\"}',2,14,5),(18,24246,'{\"langitude\":\"62.14622693336217, \"longitude\":\"75.43451513669875\"}',5,5,9),(19,21381,'{\"langitude\":\"90.73389795677168, \"longitude\":\"27.365947447126683\"}',2,1,9),(20,15958,'{\"langitude\":\"64.62804643868286, \"longitude\":\"41.042392925398794\"}',3,15,2),(21,17673,'{\"langitude\":\"11.327828384309848, \"longitude\":\"33.51196621871736\"}',1,16,15),(22,20853,'{\"langitude\":\"33.57634901402179, \"longitude\":\"67.3458494873213\"}',4,24,9),(23,21642,'{\"langitude\":\"36.00020346790571, \"longitude\":\"77.96347195092912\"}',5,14,13),(24,16918,'{\"langitude\":\"81.81675242429297, \"longitude\":\"75.19334934204197\"}',2,2,3),(25,27993,'{\"langitude\":\"30.51649251069547, \"longitude\":\"27.002417600715923\"}',3,20,1),(26,11838,'{\"langitude\":\"43.4626135448577, \"longitude\":\"36.305817995505244\"}',2,4,11),(27,21354,'{\"langitude\":\"51.141252416317585, \"longitude\":\"46.788811168436716\"}',1,21,8),(28,18465,'{\"langitude\":\"80.52030166659532, \"longitude\":\"62.23507790103097\"}',2,4,8),(29,25017,'{\"langitude\":\"69.61448757873335, \"longitude\":\"61.36720726393834\"}',5,17,8),(30,16937,'{\"langitude\":\"97.99257665685617, \"longitude\":\"5.861264565830365\"}',5,12,12),(31,11120,'{\"langitude\":\"35.32859593194779, \"longitude\":\"59.059189035612334\"}',1,2,10),(32,27867,'{\"langitude\":\"89.3101604555828, \"longitude\":\"69.37323824444157\"}',4,1,15),(33,11567,'{\"langitude\":\"78.93571292882386, \"longitude\":\"86.55885298415912\"}',1,9,11),(34,15701,'{\"langitude\":\"95.9871292076885, \"longitude\":\"20.25909015932967\"}',3,18,9),(35,28471,'{\"langitude\":\"13.334066246947335, \"longitude\":\"5.893063830112166\"}',4,1,7),(36,10974,'{\"langitude\":\"89.46312348308332, \"longitude\":\"29.63642899844463\"}',3,6,12),(37,14234,'{\"langitude\":\"79.79277761633766, \"longitude\":\"10.054604159718943\"}',1,17,15),(38,22371,'{\"langitude\":\"10.89469102294621, \"longitude\":\"24.30964570893873\"}',2,4,12),(39,28222,'{\"langitude\":\"88.86415854921952, \"longitude\":\"71.3918586926459\"}',5,3,15),(40,24227,'{\"langitude\":\"90.36682088893542, \"longitude\":\"37.65853144010392\"}',5,16,4),(41,11688,'{\"langitude\":\"17.19219760707784, \"longitude\":\"72.98539678844195\"}',3,23,14),(42,17577,'{\"langitude\":\"13.350394194340701, \"longitude\":\"47.795783679742165\"}',4,11,3),(43,24510,'{\"langitude\":\"98.92773888905322, \"longitude\":\"51.25134647940411\"}',5,24,12),(44,16073,'{\"langitude\":\"59.473518803225375, \"longitude\":\"43.61355765127908\"}',4,14,11),(45,17499,'{\"langitude\":\"39.64723492008376, \"longitude\":\"67.39550471994608\"}',1,2,3),(46,16455,'{\"langitude\":\"18.03582191284357, \"longitude\":\"87.99259847774412\"}',4,13,4),(47,11364,'{\"langitude\":\"85.85552972355441, \"longitude\":\"65.29985625790418\"}',2,8,4),(48,22385,'{\"langitude\":\"68.9326951922222, \"longitude\":\"48.76391026076294\"}',2,18,13),(49,25557,'{\"langitude\":\"37.02146880051258, \"longitude\":\"38.81561629363859\"}',3,5,14),(50,14311,'{\"langitude\":\"83.01367814001969, \"longitude\":\"98.62154489254723\"}',4,22,5),(51,23021,'{\"langitude\":\"44.06669311604154, \"longitude\":\"24.468833975930544\"}',1,24,6),(52,19426,'{\"langitude\":\"90.14409360489259, \"longitude\":\"77.31396917003576\"}',5,12,2),(53,16094,'{\"langitude\":\"16.137568108865587, \"longitude\":\"48.745936107585145\"}',4,7,7),(54,13919,'{\"langitude\":\"95.31697928469347, \"longitude\":\"30.347091174076397\"}',2,25,3),(55,20511,'{\"langitude\":\"65.78452108966609, \"longitude\":\"37.88133499946569\"}',5,10,6),(56,29316,'{\"langitude\":\"92.05311480169475, \"longitude\":\"46.621572083441144\"}',4,15,11),(57,23446,'{\"langitude\":\"56.94851908548597, \"longitude\":\"44.87788225047093\"}',4,1,8),(58,14626,'{\"langitude\":\"53.543857069261236, \"longitude\":\"33.08564166825791\"}',1,4,13),(59,22735,'{\"langitude\":\"4.796640206870288, \"longitude\":\"24.726279102942236\"}',1,17,3),(60,10611,'{\"langitude\":\"9.24147796746481, \"longitude\":\"72.02855560186184\"}',3,3,2),(61,18977,'{\"langitude\":\"32.4183471802793, \"longitude\":\"46.00607216917544\"}',4,8,15),(62,25847,'{\"langitude\":\"32.77532237840381, \"longitude\":\"25.858398457857216\"}',1,4,13),(63,23021,'{\"langitude\":\"30.966028227439175, \"longitude\":\"77.25494883698872\"}',4,14,5),(64,16989,'{\"langitude\":\"93.37666257599058, \"longitude\":\"35.11846944235123\"}',1,12,7),(65,11307,'{\"langitude\":\"95.4623625571489, \"longitude\":\"71.95640753205531\"}',5,11,9),(66,24505,'{\"langitude\":\"73.39495306219436, \"longitude\":\"51.105545788170346\"}',3,7,8),(67,18985,'{\"langitude\":\"35.342872827633165, \"longitude\":\"23.397729847019285\"}',1,5,10),(68,22508,'{\"langitude\":\"10.960033825561435, \"longitude\":\"84.60698266011381\"}',4,4,13),(69,23766,'{\"langitude\":\"90.15481489724928, \"longitude\":\"96.95312957926944\"}',4,9,13),(70,12751,'{\"langitude\":\"14.3012062779639, \"longitude\":\"80.64664572537565\"}',3,24,3),(71,26077,'{\"langitude\":\"60.32961286635102, \"longitude\":\"59.70813022899267\"}',2,5,12),(72,11987,'{\"langitude\":\"17.5518156192748, \"longitude\":\"8.634690482760492\"}',4,17,6),(73,22821,'{\"langitude\":\"90.51800862934255, \"longitude\":\"26.685974771795774\"}',2,22,5),(74,25330,'{\"langitude\":\"61.87585104431571, \"longitude\":\"29.321333979555718\"}',5,22,8),(75,15681,'{\"langitude\":\"60.97911983819596, \"longitude\":\"16.93160032567717\"}',4,7,3),(76,20670,'{\"langitude\":\"1.7206451871624637, \"longitude\":\"57.8084280321453\"}',5,5,2),(77,28062,'{\"langitude\":\"83.88020767260362, \"longitude\":\"45.975757339946696\"}',5,12,6),(78,18737,'{\"langitude\":\"78.23816675528712, \"longitude\":\"53.26356482996006\"}',1,22,6),(79,28107,'{\"langitude\":\"31.603326957303402, \"longitude\":\"98.22594337000133\"}',3,17,13),(80,29749,'{\"langitude\":\"96.31973905146097, \"longitude\":\"86.92086822066537\"}',2,18,1),(81,27109,'{\"langitude\":\"45.645127022308415, \"longitude\":\"67.46303352291046\"}',2,10,3),(82,24375,'{\"langitude\":\"0.3797896209916003, \"longitude\":\"99.50985060959108\"}',1,12,10),(83,25836,'{\"langitude\":\"96.40988725834517, \"longitude\":\"83.519887536317\"}',1,9,11),(84,21542,'{\"langitude\":\"28.369778979914056, \"longitude\":\"91.28923536398376\"}',2,9,5),(85,20147,'{\"langitude\":\"71.33684295354117, \"longitude\":\"82.81651174911904\"}',3,22,7),(86,14413,'{\"langitude\":\"0.07203295833620518, \"longitude\":\"51.91063261768839\"}',2,20,3),(87,11067,'{\"langitude\":\"59.33706728679786, \"longitude\":\"40.95344165428862\"}',2,18,6),(88,15288,'{\"langitude\":\"26.756009484414022, \"longitude\":\"10.919725532568735\"}',4,22,6),(89,28867,'{\"langitude\":\"74.33060228296611, \"longitude\":\"38.893837890488875\"}',2,20,5),(90,10279,'{\"langitude\":\"71.47738567691053, \"longitude\":\"40.70541778645052\"}',4,22,10),(91,20073,'{\"langitude\":\"89.09493497488549, \"longitude\":\"23.358424588440382\"}',2,12,12),(92,26505,'{\"langitude\":\"49.50732109090995, \"longitude\":\"77.46133476259311\"}',1,8,12),(93,15836,'{\"langitude\":\"38.7847136136002, \"longitude\":\"61.53956685358618\"}',4,18,11),(94,26410,'{\"langitude\":\"91.3436965004948, \"longitude\":\"72.09978501507992\"}',3,9,3),(95,23622,'{\"langitude\":\"86.46783864727973, \"longitude\":\"16.039841264523417\"}',5,10,10),(96,19508,'{\"langitude\":\"20.795693454142373, \"longitude\":\"55.85894655050612\"}',1,6,9),(97,13302,'{\"langitude\":\"16.907655463467965, \"longitude\":\"16.96144073918596\"}',5,21,10),(98,16683,'{\"langitude\":\"34.084240378890414, \"longitude\":\"19.536882750258673\"}',3,11,6),(99,11829,'{\"langitude\":\"95.43169568798663, \"longitude\":\"18.547833262521618\"}',1,17,13),(100,27255,'{\"langitude\":\"6.444082322012709, \"longitude\":\"76.5769148958632\"}',3,2,1),(101,19566,'{\"langitude\":\"63.552330586642334, \"longitude\":\"88.0309113189866\"}',2,8,14),(102,26341,'{\"langitude\":\"49.49756790837046, \"longitude\":\"83.39510865825704\"}',1,10,7),(103,12365,'{\"langitude\":\"68.4828426395383, \"longitude\":\"92.22889029628493\"}',4,8,15),(104,29620,'{\"langitude\":\"55.695926636174256, \"longitude\":\"1.7929653653809479\"}',1,1,14),(105,18130,'{\"langitude\":\"41.87704999174648, \"longitude\":\"4.006356935954054\"}',4,24,9),(106,23473,'{\"langitude\":\"94.40063777789533, \"longitude\":\"59.984121154978986\"}',2,6,4),(107,15819,'{\"langitude\":\"16.71869551457343, \"longitude\":\"3.641117181294707\"}',2,21,4),(108,16204,'{\"langitude\":\"68.04950243611773, \"longitude\":\"29.32416371006906\"}',5,16,5),(109,24156,'{\"langitude\":\"42.472314315356606, \"longitude\":\"24.389083519940343\"}',3,17,7),(110,11555,'{\"langitude\":\"94.52847772699639, \"longitude\":\"99.47514114852542\"}',1,6,3),(111,16509,'{\"langitude\":\"13.79027563500244, \"longitude\":\"70.52595780280042\"}',4,20,15),(112,16882,'{\"langitude\":\"11.258965182359299, \"longitude\":\"44.71695557675972\"}',4,4,7),(113,18439,'{\"langitude\":\"89.8078854100852, \"longitude\":\"14.888563393511403\"}',1,4,2),(114,14224,'{\"langitude\":\"5.019163810665872, \"longitude\":\"80.43013194615965\"}',5,13,1),(115,25283,'{\"langitude\":\"87.09317137216513, \"longitude\":\"94.17546409571122\"}',2,7,15),(116,26723,'{\"langitude\":\"9.597809435425148, \"longitude\":\"65.46265796335662\"}',2,10,11),(117,28299,'{\"langitude\":\"98.51986458387213, \"longitude\":\"96.21135210265531\"}',3,16,1),(118,25895,'{\"langitude\":\"85.49716983502466, \"longitude\":\"38.85179594052192\"}',1,16,8),(119,27077,'{\"langitude\":\"37.76747327090006, \"longitude\":\"72.28198160629904\"}',2,9,14),(120,19224,'{\"langitude\":\"48.10749129215953, \"longitude\":\"23.69151471526503\"}',3,23,13),(121,29755,'{\"langitude\":\"74.13510277321106, \"longitude\":\"99.6009727936247\"}',1,3,8),(122,28601,'{\"langitude\":\"75.59955872185488, \"longitude\":\"79.19487830176473\"}',4,12,4),(123,25610,'{\"langitude\":\"69.17571841662351, \"longitude\":\"8.293960251187869\"}',2,20,6),(124,28116,'{\"langitude\":\"33.942649079433316, \"longitude\":\"44.83136771696747\"}',3,7,9),(125,18191,'{\"langitude\":\"22.328894419901907, \"longitude\":\"77.15037202197162\"}',2,21,13),(126,14507,'{\"langitude\":\"18.765179923516868, \"longitude\":\"62.37478662503398\"}',3,18,9),(127,20317,'{\"langitude\":\"55.57839642798379, \"longitude\":\"90.7676253381815\"}',1,1,3),(128,18678,'{\"langitude\":\"87.10294048032065, \"longitude\":\"63.21182946042329\"}',1,19,2),(129,17022,'{\"langitude\":\"54.75032893451892, \"longitude\":\"84.1161593646893\"}',5,6,7),(130,14428,'{\"langitude\":\"56.32981309325417, \"longitude\":\"29.30059044556747\"}',5,14,6),(131,10197,'{\"langitude\":\"77.51351602143936, \"longitude\":\"99.66581184385885\"}',4,12,3),(132,23138,'{\"langitude\":\"65.78851422834072, \"longitude\":\"29.945138683491518\"}',2,16,4),(133,19555,'{\"langitude\":\"52.360153805799925, \"longitude\":\"71.96535605188959\"}',3,12,3),(134,10429,'{\"langitude\":\"2.7463219154126217, \"longitude\":\"97.83554449475886\"}',4,4,5),(135,24975,'{\"langitude\":\"80.93875980092096, \"longitude\":\"11.18716859369275\"}',1,14,8),(136,29951,'{\"langitude\":\"13.119566639065338, \"longitude\":\"32.03633048761294\"}',2,22,9),(137,27941,'{\"langitude\":\"20.822955594233193, \"longitude\":\"8.00578958169165\"}',5,3,13),(138,27974,'{\"langitude\":\"77.56008419912315, \"longitude\":\"63.78305532390536\"}',2,17,13),(139,22027,'{\"langitude\":\"86.23502709552181, \"longitude\":\"39.82597257925754\"}',1,3,13),(140,10441,'{\"langitude\":\"40.424784683086706, \"longitude\":\"82.64600875102543\"}',3,3,1),(141,24080,'{\"langitude\":\"91.95569277923154, \"longitude\":\"11.840440716445856\"}',1,15,6),(142,13603,'{\"langitude\":\"83.33512831789919, \"longitude\":\"81.15432251352289\"}',5,6,9),(143,27647,'{\"langitude\":\"55.76623068728133, \"longitude\":\"35.368188969202514\"}',2,1,5),(144,16764,'{\"langitude\":\"9.542255857533084, \"longitude\":\"41.60671545342237\"}',1,10,13),(145,11577,'{\"langitude\":\"79.40681276787707, \"longitude\":\"72.21392055248276\"}',4,7,13),(146,10377,'{\"langitude\":\"22.849167532147064, \"longitude\":\"97.60407907665156\"}',5,1,11),(147,29096,'{\"langitude\":\"19.472895860181094, \"longitude\":\"4.552245144315292\"}',1,12,10),(148,27646,'{\"langitude\":\"64.34254121439768, \"longitude\":\"8.055973712407027\"}',2,13,9),(149,29890,'{\"langitude\":\"47.2522479922066, \"longitude\":\"12.093321897176395\"}',1,18,15),(150,14727,'{\"langitude\":\"18.709868582626683, \"longitude\":\"57.26938029496873\"}',2,5,2),(151,22338,'{\"langitude\":\"30.21729880032809, \"longitude\":\"79.27835619009879\"}',5,8,7),(152,23961,'{\"langitude\":\"5.739887622874126, \"longitude\":\"90.86437261743879\"}',3,10,1),(153,12828,'{\"langitude\":\"37.102203291936036, \"longitude\":\"12.917901680728331\"}',2,21,4),(154,29175,'{\"langitude\":\"53.28290160119804, \"longitude\":\"27.6608060371697\"}',1,24,10),(155,22616,'{\"langitude\":\"78.45532845561888, \"longitude\":\"9.29422723994984\"}',3,4,3),(156,25098,'{\"langitude\":\"11.105153906257035, \"longitude\":\"27.643090884800152\"}',1,24,2),(157,18710,'{\"langitude\":\"4.899995778594162, \"longitude\":\"41.57070931193485\"}',5,16,10),(158,16932,'{\"langitude\":\"93.15356229725626, \"longitude\":\"41.05568662384123\"}',4,17,7),(159,26985,'{\"langitude\":\"25.817749300801896, \"longitude\":\"5.921689705850267\"}',1,14,7),(160,28516,'{\"langitude\":\"52.155203700210166, \"longitude\":\"43.01095245686448\"}',3,13,15),(161,25926,'{\"langitude\":\"58.58915425705644, \"longitude\":\"63.91291698805328\"}',5,6,10),(162,20304,'{\"langitude\":\"43.79712524246157, \"longitude\":\"27.24687832151249\"}',4,11,15),(163,14192,'{\"langitude\":\"4.843018953542242, \"longitude\":\"42.47446287653824\"}',5,16,15),(164,22859,'{\"langitude\":\"97.843260595429, \"longitude\":\"61.79291742089477\"}',3,22,12),(165,11413,'{\"langitude\":\"15.434808391551307, \"longitude\":\"91.79529276843675\"}',3,22,11),(166,10838,'{\"langitude\":\"12.672041740894358, \"longitude\":\"87.97433347252601\"}',5,10,5),(167,22982,'{\"langitude\":\"1.855545213311487, \"longitude\":\"45.3547287223439\"}',3,21,7),(168,15275,'{\"langitude\":\"21.20701104514954, \"longitude\":\"69.97087213208049\"}',2,10,5),(169,22965,'{\"langitude\":\"86.23333059831833, \"longitude\":\"21.254039668714665\"}',4,7,13),(170,17451,'{\"langitude\":\"47.57020962198285, \"longitude\":\"74.08893217713472\"}',3,14,13),(171,17957,'{\"langitude\":\"27.7340350930896, \"longitude\":\"16.40338200740831\"}',3,11,10),(172,23082,'{\"langitude\":\"98.81480783113726, \"longitude\":\"44.86389620682588\"}',1,13,5),(173,27332,'{\"langitude\":\"27.875060614082088, \"longitude\":\"4.783617523297312\"}',3,19,15),(174,13123,'{\"langitude\":\"40.29290884760479, \"longitude\":\"87.11369474149653\"}',3,9,8),(175,22236,'{\"langitude\":\"14.689750238032778, \"longitude\":\"12.107670039038798\"}',1,17,1),(176,26048,'{\"langitude\":\"16.469102554460154, \"longitude\":\"46.022505728548865\"}',1,16,6),(177,17051,'{\"langitude\":\"80.70522405272837, \"longitude\":\"65.45860615135972\"}',1,18,15),(178,11253,'{\"langitude\":\"85.17736167197802, \"longitude\":\"29.510992979175406\"}',2,4,10),(179,10642,'{\"langitude\":\"92.02288295330749, \"longitude\":\"71.5814389023757\"}',2,10,6),(180,26155,'{\"langitude\":\"81.83854872532054, \"longitude\":\"94.4484299928401\"}',2,14,2),(181,29105,'{\"langitude\":\"26.72650686160336, \"longitude\":\"50.28724740286101\"}',1,13,1),(182,11251,'{\"langitude\":\"71.25671950285948, \"longitude\":\"5.421858379078897\"}',3,2,6),(183,29328,'{\"langitude\":\"13.33913646018052, \"longitude\":\"50.43011023703041\"}',1,8,6),(184,15973,'{\"langitude\":\"12.13314487797501, \"longitude\":\"9.375396752148305\"}',5,4,9),(185,12697,'{\"langitude\":\"10.477552200180993, \"longitude\":\"24.261573817824548\"}',5,22,4),(186,20077,'{\"langitude\":\"89.87521556194426, \"longitude\":\"76.59135942961215\"}',4,6,15),(187,12571,'{\"langitude\":\"13.331153535592513, \"longitude\":\"36.881692462490584\"}',3,4,12),(188,25185,'{\"langitude\":\"44.41500477903988, \"longitude\":\"11.429949581092176\"}',3,25,12),(189,18777,'{\"langitude\":\"23.904736641705725, \"longitude\":\"85.23383753861658\"}',3,13,6),(190,24645,'{\"langitude\":\"54.45498084133023, \"longitude\":\"16.57339466416593\"}',4,2,6),(191,24021,'{\"langitude\":\"19.50203387020345, \"longitude\":\"47.78998843188397\"}',2,6,7),(192,15415,'{\"langitude\":\"80.44384362217397, \"longitude\":\"58.84925588858244\"}',2,15,8),(193,13677,'{\"langitude\":\"52.91475164975482, \"longitude\":\"88.02599365639128\"}',5,1,1),(194,28943,'{\"langitude\":\"81.3857164060564, \"longitude\":\"42.85060413447265\"}',2,22,15),(195,27208,'{\"langitude\":\"70.09587452755856, \"longitude\":\"21.927563307739387\"}',3,9,10),(196,10204,'{\"langitude\":\"99.35019602938573, \"longitude\":\"30.968293297075007\"}',2,12,4),(197,21656,'{\"langitude\":\"56.790881470582335, \"longitude\":\"91.04953053505116\"}',3,6,1),(198,21204,'{\"langitude\":\"84.8750113368733, \"longitude\":\"51.226468152577496\"}',4,22,13),(199,12981,'{\"langitude\":\"1.5073098256320785, \"longitude\":\"53.85714774379241\"}',4,23,13),(200,11431,'{\"langitude\":\"64.76381231543031, \"longitude\":\"62.24762141913885\"}',2,2,7);
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_condition`
--

DROP TABLE IF EXISTS `repair_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_condition` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `repair_condition_name__idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_condition`
--

LOCK TABLES `repair_condition` WRITE;
/*!40000 ALTER TABLE `repair_condition` DISABLE KEYS */;
INSERT INTO `repair_condition` VALUES (3,'Дизайнерский ремонт'),(2,'Евроремонт'),(1,'Требует ремонта');
/*!40000 ALTER TABLE `repair_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_area`
--

DROP TABLE IF EXISTS `room_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_area` (
  `flat_app_id` int unsigned NOT NULL,
  `room1` decimal(4,2) DEFAULT NULL,
  `room2` decimal(4,2) DEFAULT NULL,
  `room3` decimal(4,2) DEFAULT NULL,
  `room4` decimal(4,2) DEFAULT NULL,
  `room5` decimal(4,2) DEFAULT NULL,
  UNIQUE KEY `flat_app_id` (`flat_app_id`),
  CONSTRAINT `flat_app_id_fkr` FOREIGN KEY (`flat_app_id`) REFERENCES `flat_app` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_area`
--

LOCK TABLES `room_area` WRITE;
/*!40000 ALTER TABLE `room_area` DISABLE KEYS */;
INSERT INTO `room_area` VALUES (1,25.48,20.59,25.73,8.00,9.89),(2,8.06,10.55,10.96,15.54,19.18),(3,7.57,8.32,13.37,25.09,9.94),(4,13.39,26.64,7.09,18.98,27.76),(5,6.50,26.20,16.00,15.69,20.94),(6,29.00,8.85,25.00,23.74,7.56),(7,13.15,13.81,14.37,13.23,25.98),(8,24.30,27.26,26.90,28.06,26.60),(9,10.00,8.53,25.19,17.71,9.30),(10,22.85,16.42,23.00,28.89,7.66),(11,19.90,22.08,24.79,19.67,16.45),(12,11.04,29.32,8.85,8.38,18.71),(13,29.67,10.44,9.17,11.88,23.90),(14,7.03,14.00,24.00,29.00,7.74),(15,12.53,22.92,17.25,8.42,14.68),(16,15.82,16.97,14.47,19.33,21.02),(17,10.25,11.76,8.09,10.00,12.12),(18,17.14,7.53,14.50,28.26,8.43),(19,12.00,22.67,14.80,10.88,23.27),(20,14.47,14.93,13.15,20.87,15.30),(21,21.75,28.35,21.93,8.68,23.12),(22,6.80,26.39,9.67,27.00,23.26),(23,10.70,18.39,18.32,7.76,15.26),(24,7.60,14.13,18.94,25.42,20.93),(25,15.50,23.71,23.70,15.20,8.00),(26,6.09,14.79,7.92,12.89,9.87),(27,13.60,27.99,28.41,22.40,20.50),(28,19.70,14.30,17.50,26.40,29.90),(29,9.07,18.39,14.00,25.92,11.14),(30,22.00,23.60,6.70,27.07,10.70),(31,17.33,18.32,14.00,28.12,17.50),(32,15.24,17.88,6.93,22.03,19.47),(33,22.03,18.37,10.13,18.48,12.05),(34,16.56,21.10,25.69,15.16,27.54),(35,26.00,18.49,8.21,24.30,24.50),(36,24.79,27.00,13.09,8.00,18.18),(37,11.45,27.37,7.57,18.77,23.14),(38,14.89,8.00,24.42,22.50,12.80),(39,15.44,28.07,26.35,16.13,25.00),(40,27.07,8.16,21.10,15.20,22.22),(41,27.08,15.15,19.81,13.80,24.82),(42,25.06,25.39,20.80,10.95,26.10),(43,22.44,10.66,20.57,28.00,9.09),(44,6.18,10.41,29.10,20.48,22.49),(45,18.00,26.60,6.04,18.17,18.13),(46,21.00,20.50,11.00,6.50,15.66),(47,19.14,27.26,21.18,23.78,17.29),(48,22.30,14.29,20.91,22.00,10.00),(49,6.40,26.03,23.71,11.63,26.74),(50,22.71,25.67,16.93,20.86,10.00),(51,23.87,19.90,19.93,16.00,21.23),(52,19.80,7.85,29.80,18.48,6.30),(53,29.15,10.63,25.00,19.13,10.49),(54,7.71,19.29,6.75,28.43,15.16),(55,10.91,21.09,8.38,16.73,9.98),(56,16.93,25.18,29.05,11.75,12.26),(57,15.06,6.28,22.50,11.33,29.00),(58,11.69,24.81,25.90,14.04,17.47),(59,23.00,13.44,22.04,26.67,9.00),(60,19.50,25.96,18.00,26.40,7.78),(61,7.33,19.48,24.00,27.59,10.50),(62,19.93,9.44,29.82,29.34,11.46),(63,26.44,20.98,9.67,11.70,13.21),(64,6.84,10.94,28.28,14.53,22.67),(65,13.00,13.23,21.20,6.14,29.01),(66,10.53,14.10,15.40,6.29,12.72),(67,23.90,11.19,18.85,25.17,10.47),(68,15.41,25.21,28.10,17.50,27.90),(69,22.25,27.86,16.53,10.07,24.75),(70,23.57,24.60,8.74,11.30,14.24),(71,11.94,14.60,17.15,23.17,17.72),(72,14.71,6.68,28.82,25.82,7.75),(73,22.00,18.00,22.11,12.00,6.77),(74,20.48,29.96,17.00,16.38,19.21),(75,26.90,13.10,21.57,23.00,16.86),(76,29.36,18.75,19.31,10.80,28.44),(77,23.32,12.20,6.07,19.04,29.60),(78,16.33,16.59,17.07,9.80,25.94),(79,16.61,10.57,24.50,11.49,23.62),(80,19.50,29.73,9.00,16.12,20.54),(81,17.33,19.00,6.59,25.18,29.50),(82,9.30,28.31,13.00,23.30,23.82),(83,6.80,25.04,12.00,20.12,16.20),(84,12.52,7.81,28.32,18.20,29.08),(85,13.40,19.72,9.19,15.75,7.87),(86,29.42,19.80,16.00,22.00,23.13),(87,23.21,21.73,13.73,21.11,7.91),(88,16.11,10.36,21.45,22.40,25.96);
/*!40000 ALTER TABLE `room_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_rent`
--

DROP TABLE IF EXISTS `sale_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_rent` (
  `id` tinyint NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `sale_rent_name__idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_rent`
--

LOCK TABLES `sale_rent` WRITE;
/*!40000 ALTER TABLE `sale_rent` DISABLE KEYS */;
INSERT INTO `sale_rent` VALUES (1,'аренда'),(3,'Посуточная аренда'),(2,'продажа');
/*!40000 ALTER TABLE `sale_rent` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sale_rent_log` AFTER INSERT ON `sale_rent` FOR EACH ROW BEGIN
			INSERT INTO logs (created_at, table_name, str_id, name_value)
				VALUES (NOW(), 'sale_rent', NEW.id, NEW.name);
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `birthday` date DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `agency` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_agency__idx` (`agency`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hilma','Schumm','1998-06-08','dickens.kyle@example.net','1-126-792-9567x21532',0,'2019-02-27 21:48:16','2020-04-01 16:14:52'),(2,'Annabelle','Wiza','2005-04-01','gislason.trinity@example.net','02405562261',1,'2015-12-30 09:18:47','2020-05-26 12:45:58'),(3,'Kareem','Turcotte','1993-11-23','odare@example.com','+05(4)4771106746',0,'2013-04-27 05:17:33','2019-11-05 17:04:35'),(4,'Shany','Kirlin','1983-11-22','jaeden47@example.org','(029)161-6581x0665',1,'2011-05-11 08:51:32','2019-07-27 01:46:07'),(5,'Athena','Stroman','1978-07-09','florine92@example.org','360.593.3376x491',0,'2019-05-29 03:26:22','2020-01-13 04:45:49'),(6,'Jess','Mraz','2001-05-16','lkeeling@example.com','989.966.7843x39195',1,'2011-04-28 18:37:26','2019-07-09 02:15:44'),(7,'Christopher','Schulist','2010-07-14','immanuel.bosco@example.org','(502)741-3844',0,'2012-10-04 19:23:14','2019-10-04 21:54:07'),(8,'Raymundo','Skiles','1987-07-08','gina43@example.com','913.913.9587x2787',0,'2019-01-06 09:05:33','2020-03-09 02:44:37'),(9,'Domenico','Schroeder','2018-07-08','dickens.river@example.com','(889)953-8527',1,'2015-09-09 04:24:32','2019-08-28 23:21:55'),(10,'Mylene','Rosenbaum','2012-12-02','hermann.ubaldo@example.com','576.078.4559',0,'2014-02-06 07:12:39','2020-06-03 06:44:58'),(11,'Liza','Farrell','1998-04-04','bobbie95@example.net','(415)992-0099x208',0,'2012-07-05 06:24:42','2019-07-04 16:39:20'),(12,'Rowena','Kshlerin','1988-02-29','conn.allie@example.com','129-843-1911x32271',1,'2012-06-19 03:48:45','2019-08-12 22:26:05'),(13,'Dennis','Dickens','2019-04-08','ebba.hills@example.net','963-705-5156x99971',0,'2015-05-24 22:45:12','2019-08-20 19:26:17'),(14,'Alanna','Runte','1974-07-04','qshields@example.net','(740)046-3716',0,'2012-10-08 05:53:56','2020-04-19 15:18:16'),(15,'Danyka','West','1986-11-19','josianne59@example.org','01084085248',1,'2016-10-27 10:28:57','2020-04-15 17:24:48'),(16,'Eusebio','Marquardt','1994-04-27','dominic43@example.com','(101)968-9391x031',0,'2010-12-20 19:23:38','2020-01-17 21:17:51'),(17,'Destini','Beier','1988-03-25','christophe13@example.com','1-091-712-1729',1,'2010-06-16 12:57:49','2020-02-08 01:16:03'),(18,'Eldora','Kshlerin','1993-01-23','effertz.shanny@example.org','1-365-370-7170x107',1,'2016-06-06 21:58:48','2020-03-23 22:05:58'),(19,'Zaria','Kozey','1985-07-22','labshire@example.org','(354)768-3734x032',0,'2010-07-28 12:14:52','2020-05-20 20:11:46'),(20,'Mervin','Hills','2008-12-16','schultz.ivy@example.org','+61(8)7239397083',0,'2018-04-07 09:28:22','2019-06-11 17:58:17'),(21,'Vinnie','Terry','2015-06-09','romaine53@example.org','1-087-800-7684x35571',1,'2014-09-18 08:11:06','2020-02-29 00:28:41'),(22,'Anthony','O\'Connell','2019-12-24','tfisher@example.com','+68(3)9307180390',0,'2019-04-01 05:36:50','2019-08-24 00:40:36'),(23,'Josh','Willms','2000-02-16','harris.earnestine@example.net','539.193.9156x42112',0,'2018-04-07 14:26:28','2019-11-16 15:50:46'),(24,'Don','Bogan','2008-05-22','schaden.derrick@example.org','631-858-0206',1,'2015-11-14 03:31:52','2019-08-04 23:23:12'),(25,'Eveline','Jakubowski','1995-04-22','bashirian.laisha@example.net','1-608-018-6246x22759',1,'2019-06-03 15:10:59','2020-01-05 08:05:18'),(26,'Kacey','Carter','1984-07-15','neil.sawayn@example.net','(521)248-3498',1,'2014-02-04 14:03:49','2020-01-03 22:54:20'),(27,'Melany','Thiel','2007-06-28','rmonahan@example.net','(293)597-7114',1,'2018-10-29 23:16:45','2019-12-14 07:47:26'),(28,'Ara','Stanton','1998-04-04','simonis.myrtis@example.com','(388)042-7838',0,'2012-03-17 18:05:44','2019-06-18 15:14:11'),(29,'Daryl','Walker','2018-01-19','mwilkinson@example.net','962.570.8352x331',0,'2016-10-04 05:42:59','2019-10-08 22:15:20'),(30,'Monica','Oberbrunner','1975-11-10','joannie.stanton@example.net','(285)853-8953',1,'2011-01-01 13:10:37','2019-12-22 21:18:14'),(31,'Velma','Gerhold','2018-10-30','moore.stefan@example.com','(077)196-5006x5654',0,'2019-04-10 01:31:26','2020-04-24 15:48:59'),(32,'Lew','Kuvalis','2017-07-26','lynch.elliott@example.com','1-083-730-9138',0,'2018-08-14 20:45:00','2019-10-05 17:40:48'),(33,'Daisha','Corwin','1998-04-20','marco.lubowitz@example.org','(180)491-0074x7026',1,'2013-11-19 19:44:41','2020-01-10 13:38:29'),(34,'Russel','Reichert','1970-01-25','ufunk@example.net','479.172.0617',0,'2011-07-03 05:17:24','2020-02-18 00:33:07'),(35,'Caleb','Lang','1974-01-02','darlene33@example.com','356.309.2651',0,'2020-02-27 11:55:46','2020-06-10 21:08:37'),(36,'Shana','Hessel','2004-01-20','vergie90@example.net','(391)619-7029',0,'2017-06-08 00:10:31','2019-11-05 08:21:17'),(37,'Alf','Nikolaus','1986-08-19','fisher.daryl@example.net','04159703746',1,'2017-04-25 00:50:28','2019-06-26 23:05:55'),(38,'Nash','Considine','2019-04-26','nstamm@example.org','1-900-306-0851',1,'2015-09-19 17:30:25','2019-08-10 23:21:53'),(39,'Karli','Windler','1977-12-11','zhamill@example.org','+49(0)5448189260',1,'2019-08-20 16:12:02','2019-09-12 01:40:56'),(40,'Andre','Dietrich','2017-12-23','elinore.legros@example.com','623-210-0428',0,'2015-02-27 10:23:20','2019-09-03 08:22:31'),(41,'Otto','Stiedemann','1988-11-30','lkunde@example.org','+42(1)4972427666',0,'2013-11-02 23:13:44','2020-03-29 18:48:44'),(42,'Meghan','Ziemann','2016-06-11','ansley40@example.org','403-952-1366',0,'2015-07-06 10:57:53','2020-06-09 15:40:58'),(43,'Kariane','Gorczany','1989-06-05','bernhard.silas@example.net','103.790.2341x77752',1,'2016-01-10 21:10:00','2019-08-27 02:26:43'),(44,'Murphy','Wilderman','2009-08-23','jaren82@example.net','(150)390-8124x4199',1,'2018-10-01 08:59:23','2020-02-19 06:39:56'),(45,'Jude','Marvin','1976-08-29','cloyd.roob@example.org','(915)407-3996',1,'2019-04-04 07:42:28','2020-04-30 03:43:31'),(46,'Agustina','Glover','1994-12-09','bkerluke@example.net','679.327.8277x56124',1,'2015-09-24 14:55:36','2019-12-18 16:26:12'),(47,'Griffin','Lang','2009-07-14','kacie15@example.org','972.556.5205x5589',1,'2011-03-29 07:01:05','2020-04-29 02:24:12'),(48,'Dariana','Cummings','2017-04-21','hyatt.lavon@example.net','+12(0)4163139648',1,'2020-06-03 16:26:24','2020-06-10 21:08:37'),(49,'Frances','Heaney','2005-04-09','ignatius.reichert@example.net','425.805.2740x2609',0,'2017-09-19 10:43:56','2019-08-04 10:08:58'),(50,'Emanuel','Green','1995-01-04','o\'connell.marilyne@example.com','(285)368-7789x2031',1,'2012-04-29 10:47:56','2019-08-08 17:21:45'),(51,'Lauren','Schinner','2013-02-24','peyton.legros@example.org','+98(3)0808657090',1,'2016-11-27 22:00:49','2019-11-03 12:45:13'),(52,'Sasha','Treutel','1996-10-18','arlene45@example.org','414.523.7668x23935',0,'2014-11-06 02:37:45','2020-01-11 03:40:33'),(53,'Delmer','Monahan','1970-11-29','joyce99@example.com','04161014963',1,'2013-05-22 19:45:46','2020-03-10 08:58:55'),(54,'Ofelia','Quigley','1976-01-01','rodriguez.sadie@example.net','(460)987-3940x41590',1,'2015-11-20 19:31:11','2019-11-10 20:44:15'),(55,'Herman','Corkery','1975-03-24','kyle85@example.net','1-016-549-5524',1,'2011-03-18 15:22:09','2019-12-31 02:22:19'),(56,'Jack','Schmitt','2002-11-11','lnolan@example.com','1-689-571-0776x952',1,'2012-04-07 14:21:36','2020-03-07 04:46:41'),(57,'Justus','Gleason','1973-05-24','telly.zieme@example.org','1-804-467-7713x835',1,'2011-08-19 03:03:06','2019-06-28 19:38:09'),(58,'Harrison','Nader','1992-11-01','kassandra.balistreri@example.com','046.690.9254x1792',1,'2011-03-18 00:49:37','2020-05-22 03:28:00'),(59,'Timothy','Flatley','1998-03-30','savanna.lynch@example.org','217.949.0892x562',1,'2017-01-16 19:35:26','2019-09-05 12:17:51'),(60,'Amira','Jones','2013-03-12','asa49@example.org','1-966-804-0664',0,'2016-07-26 15:19:14','2020-01-11 15:29:42'),(61,'Jarvis','Bashirian','2004-03-02','zhalvorson@example.org','+37(5)1947752408',1,'2011-04-03 17:24:49','2020-04-22 10:19:14'),(62,'Raven','Fritsch','2014-10-04','murray.magali@example.com','(165)115-5506x8465',1,'2012-04-10 18:10:13','2019-12-11 11:29:53'),(63,'Blaze','Renner','1996-09-02','ervin.barrows@example.com','03484411096',0,'2014-07-22 00:53:54','2020-04-29 16:54:22'),(64,'Franco','Blick','1995-09-15','daryl.gulgowski@example.com','144.025.3220x90859',1,'2011-03-04 22:37:18','2019-11-19 05:54:11'),(65,'Ivory','Willms','2012-06-07','ko\'connell@example.net','265-342-3489',0,'2014-09-29 00:17:13','2020-03-26 01:01:15'),(66,'Darien','Macejkovic','1975-02-12','laisha.dooley@example.net','422.094.0052x11865',0,'2014-04-18 23:18:33','2019-08-14 17:33:04'),(67,'Lulu','Thiel','1970-06-25','ernestine00@example.com','1-099-184-6963',0,'2015-06-28 15:24:13','2020-05-19 22:31:23'),(68,'Casimer','Pfeffer','1999-06-05','vmarvin@example.com','1-263-283-6850',1,'2018-09-09 03:58:49','2020-03-20 08:51:14'),(69,'Ali','Dach','1975-02-21','xmills@example.net','700.856.8596x170',1,'2013-08-25 15:12:54','2020-05-06 22:53:04'),(70,'Harrison','Tremblay','2005-01-18','vyost@example.net','1-098-053-2977',0,'2012-02-26 00:30:18','2020-05-25 10:59:37'),(71,'Osbaldo','Turner','2016-05-08','nwilliamson@example.com','(399)608-0311',0,'2015-12-24 09:55:13','2020-05-03 14:42:04'),(72,'Barbara','Maggio','1986-01-18','jan.luettgen@example.org','+64(9)2490464097',0,'2016-07-04 15:09:46','2019-11-04 17:46:41'),(73,'Adriana','Reinger','2013-06-05','chester.thiel@example.org','815.050.7205x68725',1,'2010-11-25 11:31:25','2019-07-07 21:05:43'),(74,'Dameon','Pfannerstill','1982-07-08','randy.ratke@example.org','(302)280-5276',1,'2019-01-13 00:53:44','2019-07-18 12:32:53'),(75,'Kip','Gaylord','1983-08-09','purdy.maribel@example.org','105-542-3753',1,'2012-10-19 06:11:55','2020-02-09 22:33:36'),(76,'Priscilla','Schimmel','1974-04-17','roselyn.swaniawski@example.org','663.475.9410x8504',0,'2010-07-25 15:20:36','2019-09-18 21:34:43'),(77,'Alba','Lang','1996-10-31','swillms@example.com','964.597.1505x46054',0,'2016-07-31 05:22:58','2019-10-30 18:48:17'),(78,'Jamal','Runolfsdottir','1978-04-11','klocko.mandy@example.org','(582)380-1774',0,'2017-01-08 15:12:53','2019-07-23 00:34:10'),(79,'Green','Goodwin','1974-07-17','nondricka@example.net','(930)193-1713',0,'2017-11-06 17:14:09','2020-04-02 10:22:21'),(80,'Brice','Langworth','2019-05-23','nleannon@example.com','983.436.2756',1,'2011-03-19 13:43:08','2020-03-10 02:47:12'),(81,'Eliza','McDermott','2018-07-01','kevin25@example.org','(460)973-8838x245',0,'2017-04-30 08:50:47','2020-03-04 11:36:43'),(82,'Odell','Satterfield','2017-07-26','felipe.harvey@example.com','985.858.8184',0,'2019-03-11 05:23:56','2020-03-06 23:01:09'),(83,'Adelia','Dach','1984-12-11','pacocha.damon@example.com','(478)634-0116x18524',1,'2015-01-10 23:56:49','2020-04-26 11:08:13'),(84,'Wallace','Raynor','1993-10-28','koepp.orin@example.net','1-895-225-7572',0,'2018-05-22 17:55:05','2019-12-01 16:04:43'),(85,'Lera','Hettinger','1972-11-18','jweber@example.com','1-336-456-8518x0474',0,'2018-07-19 08:13:40','2019-08-25 09:46:24'),(86,'Keith','O\'Reilly','1990-06-26','cyrus.satterfield@example.org','07630163553',0,'2020-03-26 08:23:27','2020-06-10 21:08:37'),(87,'Parker','Marks','2012-07-21','hjacobs@example.com','534.546.5139x935',0,'2016-05-09 04:18:32','2020-02-13 11:23:15'),(88,'Kyra','Kulas','1999-08-04','buckridge.zoila@example.org','05897303780',1,'2012-01-11 03:04:26','2020-01-05 12:49:06'),(89,'Alf','Cassin','2014-02-04','lexus10@example.net','09827061345',0,'2011-03-11 22:44:22','2020-03-10 22:59:50'),(90,'Herbert','Wisozk','2007-06-21','wschmeler@example.net','(883)033-9687x39244',0,'2018-08-19 17:47:32','2020-03-03 04:51:58'),(91,'Maymie','Larson','2000-12-21','elangosh@example.org','613-352-6193',1,'2014-11-22 21:06:12','2019-06-14 04:33:38'),(92,'Terrence','Koelpin','1982-09-18','marco.klein@example.net','(334)951-1419x7382',1,'2016-05-14 02:18:36','2019-09-24 15:00:07'),(93,'Samson','Leffler','2017-08-19','petra39@example.com','1-893-312-0258x5030',0,'2017-08-12 19:30:08','2019-06-29 12:34:58'),(94,'Filiberto','Hauck','2018-01-03','trempel@example.com','+08(0)5874373591',0,'2012-01-15 17:06:39','2019-07-26 22:08:09'),(95,'Zita','Schmitt','1999-05-17','olson.saul@example.org','136.753.8501',0,'2011-08-12 04:51:46','2019-12-17 22:14:27'),(96,'Domenica','Mann','2017-02-14','daugherty.leilani@example.com','1-186-753-9598x576',0,'2015-04-12 11:11:55','2020-04-14 06:05:10'),(97,'Juanita','Glover','2018-03-07','ronny.krajcik@example.com','815-547-2884',1,'2019-01-26 00:34:17','2019-09-14 20:20:36'),(98,'Derek','Green','1983-08-07','sawayn.annabel@example.net','010-972-7331x2986',0,'2016-02-16 11:03:33','2020-01-09 08:03:00'),(99,'Joshua','Greenholt','1978-06-24','jcollins@example.org','1-507-608-1719x44498',1,'2014-12-09 15:08:44','2019-11-11 01:08:04'),(100,'Moises','Tremblay','1980-01-09','dax35@example.net','(608)737-9491',1,'2016-08-06 15:27:15','2019-11-15 04:28:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_ad`
--

DROP TABLE IF EXISTS `view_ad`;
/*!50001 DROP VIEW IF EXISTS `view_ad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_ad` AS SELECT 
 1 AS `ad_id`,
 1 AS `cad_n`,
 1 AS `geo_l`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_house`
--

DROP TABLE IF EXISTS `view_house`;
/*!50001 DROP VIEW IF EXISTS `view_house`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_house` AS SELECT 
 1 AS `h_id`,
 1 AS `h_name`,
 1 AS `l_d`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_ad`
--

/*!50001 DROP VIEW IF EXISTS `view_ad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_ad` (`ad_id`,`cad_n`,`geo_l`) AS select `advertisement`.`id` AS `id`,`parameters`.`cadastral_number` AS `cadastral_number`,`parameters`.`geolocation` AS `geolocation` from (`advertisement` left join `parameters` on((`parameters`.`ad_id` = `advertisement`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_house`
--

/*!50001 DROP VIEW IF EXISTS `view_house`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_house` (`h_id`,`h_name`,`l_d`) AS select `house`.`id` AS `id`,`house`.`name` AS `name`,`land_plot_parameters`.`distance_from_MKAD` AS `distance_from_MKAD` from (`house` left join `land_plot_parameters` on((`land_plot_parameters`.`id` = `house`.`land_plot_parameters_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-11 17:26:49
