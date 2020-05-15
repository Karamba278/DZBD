-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: dz5
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
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (0),(2500),(0),(30),(500),(1);
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users31`
--

DROP TABLE IF EXISTS `users31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users31` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users31`
--

LOCK TABLES `users31` WRITE;
/*!40000 ALTER TABLE `users31` DISABLE KEYS */;
INSERT INTO `users31` VALUES ('2020-05-15 17:31:48','2020-05-15 17:31:48'),('2020-05-15 17:31:48','2020-05-15 17:31:48'),('2020-05-15 17:31:48','2020-05-15 17:31:48');
/*!40000 ALTER TABLE `users31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users32`
--

DROP TABLE IF EXISTS `users32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users32` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users32`
--

LOCK TABLES `users32` WRITE;
/*!40000 ALTER TABLE `users32` DISABLE KEYS */;
INSERT INTO `users32` VALUES ('2017-10-20 08:10:00','2018-12-31 08:10:00'),('2018-05-25 08:10:00','2019-10-20 08:10:00'),('2019-12-11 08:10:00','2020-01-01 08:10:00');
/*!40000 ALTER TABLE `users32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users34`
--

DROP TABLE IF EXISTS `users34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users34` (
  `name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users34`
--

LOCK TABLES `users34` WRITE;
/*!40000 ALTER TABLE `users34` DISABLE KEYS */;
INSERT INTO `users34` VALUES ('Иван','1980-10-10'),('Мария','1981-05-11'),('Татьяна','1982-08-12'),('Антон','1983-01-13'),('Василий','1984-05-14'),('Василиса','1985-10-15');
/*!40000 ALTER TABLE `users34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users35`
--

DROP TABLE IF EXISTS `users35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users35` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users35`
--

LOCK TABLES `users35` WRITE;
/*!40000 ALTER TABLE `users35` DISABLE KEYS */;
INSERT INTO `users35` VALUES (1,'Один'),(2,'Два'),(5,'Пять');
/*!40000 ALTER TABLE `users35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users43`
--

DROP TABLE IF EXISTS `users43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users43` (
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users43`
--

LOCK TABLES `users43` WRITE;
/*!40000 ALTER TABLE `users43` DISABLE KEYS */;
INSERT INTO `users43` VALUES (1),(2),(3),(4),(5),(6);
/*!40000 ALTER TABLE `users43` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15 22:34:00
