-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: dz9
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'user1','1user'),(2,'user2','2user'),(3,'user3','3user');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `august`
--

DROP TABLE IF EXISTS `august`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `august` (
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `august`
--

LOCK TABLES `august` WRITE;
/*!40000 ALTER TABLE `august` DISABLE KEYS */;
INSERT INTO `august` VALUES ('2018-08-01'),('2018-08-02'),('2018-08-03'),('2018-08-04'),('2018-08-05'),('2018-08-06'),('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),('2018-08-15'),('2018-08-16'),('2018-08-17'),('2018-08-18'),('2018-08-19'),('2018-08-20'),('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),('2018-08-25'),('2018-08-26'),('2018-08-27'),('2018-08-28'),('2018-08-29'),('2018-08-30'),('2018-08-31');
/*!40000 ALTER TABLE `august` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `august914`
--

DROP TABLE IF EXISTS `august914`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `august914` (
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `august914`
--

LOCK TABLES `august914` WRITE;
/*!40000 ALTER TABLE `august914` DISABLE KEYS */;
INSERT INTO `august914` VALUES ('2018-08-01'),('2018-08-02'),('2018-08-03'),('2018-08-04'),('2018-08-05'),('2018-08-06'),('2018-08-07'),('2018-08-08'),('2018-08-09'),('2018-08-10'),('2018-08-11'),('2018-08-12'),('2018-08-13'),('2018-08-14'),('2018-08-15'),('2018-08-16'),('2018-08-17'),('2018-08-18'),('2018-08-19'),('2018-08-20'),('2018-08-21'),('2018-08-22'),('2018-08-23'),('2018-08-24'),('2018-08-25'),('2018-08-26');
/*!40000 ALTER TABLE `august914` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `august_dz9`
--

DROP TABLE IF EXISTS `august_dz9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `august_dz9` (
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `august_dz9`
--

LOCK TABLES `august_dz9` WRITE;
/*!40000 ALTER TABLE `august_dz9` DISABLE KEYS */;
INSERT INTO `august_dz9` VALUES ('2018-08-01'),('2018-08-04'),('2018-08-16'),('2018-08-17');
/*!40000 ALTER TABLE `august_dz9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs912`
--

DROP TABLE IF EXISTS `catalogs912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs912` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs912`
--

LOCK TABLES `catalogs912` WRITE;
/*!40000 ALTER TABLE `catalogs912` DISABLE KEYS */;
INSERT INTO `catalogs912` VALUES (1,'Процессоры'),(2,'Материанские платы'),(3,'Жесткие диски');
/*!40000 ALTER TABLE `catalogs912` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prods_view`
--

DROP TABLE IF EXISTS `prods_view`;
/*!50001 DROP VIEW IF EXISTS `prods_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prods_view` AS SELECT 
 1 AS `p_id`,
 1 AS `p_name`,
 1 AS `c_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products912`
--

DROP TABLE IF EXISTS `products912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products912` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `catalog_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products912`
--

LOCK TABLES `products912` WRITE;
/*!40000 ALTER TABLE `products912` DISABLE KEYS */;
INSERT INTO `products912` VALUES (1,'Интел',1),(2,'АМД',1),(3,'Эльбрус',1),(4,'MSI',2),(5,'ASUS',2),(6,'Gigabyte',2),(7,NULL,1),(8,'АМД',1);
/*!40000 ALTER TABLE `products912` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `right_check` BEFORE INSERT ON `products912` FOR EACH ROW BEGIN
		IF(ISNULL(NEW.name) AND ISNULL(NEW.catalog_id)) THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NULL in name & catalog_id';
		END IF;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `username`
--

DROP TABLE IF EXISTS `username`;
/*!50001 DROP VIEW IF EXISTS `username`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `username` AS SELECT 
 1 AS `acc_id`,
 1 AS `acc_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users911`
--

DROP TABLE IF EXISTS `users911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users911` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `birthday_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users911`
--

LOCK TABLES `users911` WRITE;
/*!40000 ALTER TABLE `users911` DISABLE KEYS */;
INSERT INTO `users911` VALUES (1,'Геннадий','1990-10-05','2020-05-20 22:41:59','2020-05-20 22:41:59');
/*!40000 ALTER TABLE `users911` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_p_c`
--

DROP TABLE IF EXISTS `view_p_c`;
/*!50001 DROP VIEW IF EXISTS `view_p_c`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_p_c` AS SELECT 
 1 AS `p_id`,
 1 AS `p_name`,
 1 AS `c_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `prods_view`
--

/*!50001 DROP VIEW IF EXISTS `prods_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prods_view` (`p_id`,`p_name`,`c_name`) AS select `products912`.`id` AS `id`,`products912`.`name` AS `name`,`catalogs912`.`name` AS `name` from (`products912` left join `catalogs912` on((`products912`.`catalog_id` = `catalogs912`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `username`
--

/*!50001 DROP VIEW IF EXISTS `username`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `username` (`acc_id`,`acc_name`) AS select `accounts`.`id` AS `id`,`accounts`.`name` AS `name` from `accounts` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_p_c`
--

/*!50001 DROP VIEW IF EXISTS `view_p_c`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_p_c` (`p_id`,`p_name`,`c_name`) AS select `products912`.`id` AS `id`,`products912`.`name` AS `name`,`catalogs912`.`name` AS `name` from (`products912` left join `catalogs912` on((`products912`.`catalog_id` = `catalogs912`.`id`))) */;
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

-- Dump completed on 2020-05-30 13:59:49
