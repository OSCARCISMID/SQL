CREATE DATABASE  IF NOT EXISTS `cismid_2025` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cismid_2025`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cismid_2025
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `relacion_muestras`
--

DROP TABLE IF EXISTS `relacion_muestras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacion_muestras` (
  `id_relacion` int NOT NULL AUTO_INCREMENT,
  `muestra_resultante_id` int NOT NULL,
  `muestra_origen_id` int NOT NULL,
  `proporcion` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id_relacion`),
  KEY `fk_muestra_resultante_id_idx` (`muestra_resultante_id`),
  KEY `fk_muestra_origen_id_idx` (`muestra_origen_id`),
  CONSTRAINT `fk_muestra_origen_id` FOREIGN KEY (`muestra_origen_id`) REFERENCES `muestra` (`id_muestra`),
  CONSTRAINT `fk_muestra_resultante_id` FOREIGN KEY (`muestra_resultante_id`) REFERENCES `muestra` (`id_muestra`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacion_muestras`
--

LOCK TABLES `relacion_muestras` WRITE;
/*!40000 ALTER TABLE `relacion_muestras` DISABLE KEYS */;
INSERT INTO `relacion_muestras` VALUES (1,6,2,'100%','Mezclar todo'),(2,6,4,'100%','Mezclar todo'),(3,7,3,'100%','Mezclar todo'),(4,7,5,'100%','Mezclar todo');
/*!40000 ALTER TABLE `relacion_muestras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 23:59:24
