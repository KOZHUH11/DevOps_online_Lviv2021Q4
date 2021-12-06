-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: Prison
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `camers`
--

DROP TABLE IF EXISTS `camers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camers` (
  `id_cam` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(30) DEFAULT NULL,
  `Floor` int DEFAULT NULL,
  `Time` int DEFAULT NULL,
  `id_pri` int DEFAULT NULL,
  `id_personal` int DEFAULT NULL,
  PRIMARY KEY (`id_cam`),
  KEY `id_pri` (`id_pri`),
  CONSTRAINT `camers_ibfk_1` FOREIGN KEY (`id_pri`) REFERENCES `prisoner` (`id_pri`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camers`
--

LOCK TABLES `camers` WRITE;
/*!40000 ALTER TABLE `camers` DISABLE KEYS */;
INSERT INTO `camers` VALUES (1,'Однокімнатна',2,12,1,1),(2,'Однокімнатна',2,12,2,2),(3,'Однокімнатна',2,12,3,3),(4,'Однокімнатна',2,12,4,4),(5,'Однокімнатна',2,12,5,5);
/*!40000 ALTER TABLE `camers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crimes` (
  `id_crime` int NOT NULL AUTO_INCREMENT,
  `Degree` varchar(30) DEFAULT NULL,
  `Article` varchar(30) DEFAULT NULL,
  `Termin` int DEFAULT NULL,
  `id_pri` int DEFAULT NULL,
  PRIMARY KEY (`id_crime`),
  KEY `id_pri` (`id_pri`),
  CONSTRAINT `crimes_ibfk_1` FOREIGN KEY (`id_pri`) REFERENCES `prisoner` (`id_pri`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimes`
--

LOCK TABLES `crimes` WRITE;
/*!40000 ALTER TABLE `crimes` DISABLE KEYS */;
INSERT INTO `crimes` VALUES (1,'Особливо тяжкий','ст.15 ККУ',2019,1),(2,'Легкий','ст.28 ККУ',2019,2),(3,'Легкий','ст.18 ККУ',2019,3),(4,'Легкий','ст.18 ККУ',2019,4),(5,'Легкий','ст.28 ККУ',2019,5);
/*!40000 ALTER TABLE `crimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_per` int NOT NULL AUTO_INCREMENT,
  `FLM_per` varchar(30) DEFAULT NULL,
  `Specilality` varchar(30) DEFAULT NULL,
  `Experience` int DEFAULT NULL,
  `id_cam` int DEFAULT NULL,
  PRIMARY KEY (`id_per`),
  KEY `id_cam` (`id_cam`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`id_cam`) REFERENCES `camers` (`id_cam`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Аваков А.А.','Охоронець',15,1),(2,'Зеленський В.В.','Охоронець',5,2),(3,'Тимошенко Ю.В.','Охоронець',3,3),(4,'Медведчук В.Д.','Охоронець',20,4),(5,'Герасимчук Ю.А.','Охоронець',5,5);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisoner`
--

DROP TABLE IF EXISTS `prisoner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prisoner` (
  `id_pri` int NOT NULL,
  `Full_name` varchar(30) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Nationality` varchar(30) DEFAULT NULL,
  `Adress` varchar(30) DEFAULT NULL,
  `Leisure` varchar(10) DEFAULT NULL,
  `Termin` varchar(30) DEFAULT NULL,
  `Amnesty` varchar(10) DEFAULT NULL,
  `Job` int DEFAULT NULL,
  `id_camers` int DEFAULT NULL,
  `id_crimes` int DEFAULT NULL,
  `id_vis` int DEFAULT NULL,
  PRIMARY KEY (`id_pri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner`
--

LOCK TABLES `prisoner` WRITE;
/*!40000 ALTER TABLE `prisoner` DISABLE KEYS */;
INSERT INTO `prisoner` VALUES (1,'Мельник А.О.',25,'Чоловік','Українець','Ленкавського 6/9','12 годин','12 років','НІ',12,1,1,1),(2,'Сиротюк М.М.',40,'Чоловік','Українець','Шевченка 52','16 годин','2 років','ТАК',8,2,2,2),(3,'Шушкин Л.Л.',32,'Жінка','Українка','Липенка 11','16 годин','1 рік','НІ',8,3,3,3),(4,'Стефунька А.А.',33,'Чоловік','Українець','Липенка 11','16 годин','2 рік','НІ',8,4,4,4),(5,'Кітколюбка М.П.',58,'Жінка','Українка','Пузика 15','18 годин','2 рік','НІ',6,5,5,5);
/*!40000 ALTER TABLE `prisoner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id_vis` int NOT NULL AUTO_INCREMENT,
  `FLM_vis` varchar(30) DEFAULT NULL,
  `Time_vis` varchar(30) DEFAULT NULL,
  `id_pri` int DEFAULT NULL,
  PRIMARY KEY (`id_vis`),
  KEY `id_pri` (`id_pri`),
  CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`id_pri`) REFERENCES `prisoner` (`id_pri`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (1,'Чайпопей А.В.','10.5.2019',1),(2,'Пономаренко Р.Р','28.5.2019',2),(3,'Мицька А.Л.','10.6.2019',3),(4,'Брок К.А.','20.6.2019',4),(5,'Бджілка А.В.','25.6.2019',5),(6,'Сепар А.В.','14.5.2019',3);
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-05 16:27:52
