-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: fsd
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `accessory`
--

DROP TABLE IF EXISTS `accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessory` (
  `ACCESSORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCESSORY_NAME` varchar(45) DEFAULT NULL,
  `MODEL_ID` int(11) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`ACCESSORY_ID`),
  KEY `FK_ACCESSORY_MODEL` (`MODEL_ID`),
  CONSTRAINT `FK_ACCESSORY_MODEL` FOREIGN KEY (`MODEL_ID`) REFERENCES `model` (`MODEL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessory`
--

LOCK TABLES `accessory` WRITE;
/*!40000 ALTER TABLE `accessory` DISABLE KEYS */;
INSERT INTO `accessory` VALUES (1,'accessory1',2,1000.00,'Y'),(2,'accessory2',3,2000.00,'Y'),(4,'accessory2',4,3000.00,'Y');
/*!40000 ALTER TABLE `accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `USER_ID` int(11) NOT NULL,
  `USER_PASSWORD` varchar(45) DEFAULT NULL,
  `USER_NAME` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `COLOR_ID` int(11) NOT NULL,
  `COLOR_NAME` varchar(45) DEFAULT NULL,
  `MODEL_ID` int(11) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT 'Y',
  `COLORS_QUAN_AVAILABLE` int(11) DEFAULT NULL,
  KEY `FK_COLOR_MODEL` (`MODEL_ID`),
  CONSTRAINT `FK_COLOR_MODEL` FOREIGN KEY (`MODEL_ID`) REFERENCES `model` (`MODEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (10,'Black',2,100.00,'Y',NULL),(20,'White',3,200.00,'Y',NULL),(25,'Red',4,200.00,'Y',NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `ORDER_ID` int(11) NOT NULL,
  `ORDERED_SERIES_NAME` varchar(45) DEFAULT NULL,
  `ORDERED_MODEL_NAME` varchar(45) DEFAULT NULL,
  `ORDERED_ACCESSORIES` varchar(45) DEFAULT NULL,
  `ORDERED_COLORS` varchar(45) DEFAULT NULL,
  `ORDERED_COLORS_QUAN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `MODEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODEL_NAME` varchar(45) DEFAULT NULL,
  `SERIES_ID` int(11) NOT NULL,
  `PRICE` decimal(10,2) DEFAULT NULL,
  `IS_ACTIVE` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`MODEL_ID`),
  KEY `FK_MODEL_SERIES` (`SERIES_ID`),
  CONSTRAINT `FK_MODEL_SERIES` FOREIGN KEY (`SERIES_ID`) REFERENCES `series` (`SERIES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (2,'model1',1,500.00,'Y'),(3,'model2',2,800.00,'Y'),(4,'model3',5,1200.00,'Y');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `SERIES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERIES_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SERIES_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'series1'),(2,'series2'),(5,'series3');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-01 11:42:35
