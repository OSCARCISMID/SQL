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
-- Table structure for table `muestra`
--

DROP TABLE IF EXISTS `muestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muestra` (
  `id_muestra` int NOT NULL AUTO_INCREMENT,
  `codigo_muestra` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_recepcion` int NOT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci,
  `fecha_creacion_muestra` datetime DEFAULT NULL,
  `peso_aproximado` decimal(10,2) DEFAULT NULL,
  `calicata` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `muestra_cliente` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `profundidad` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_muestra`),
  UNIQUE KEY `uk_muestra_lote` (`id_recepcion`,`codigo_muestra`),
  KEY `fk_recepcion_idx` (`id_recepcion`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_recepcion` FOREIGN KEY (`id_recepcion`) REFERENCES `recepcion` (`id_recepcion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muestra`
--

LOCK TABLES `muestra` WRITE;
/*!40000 ALTER TABLE `muestra` DISABLE KEYS */;
INSERT INTO `muestra` VALUES (1,'001',1,'1 bolsa','2025-01-08 00:00:00',10.00,'C-01','M-01','3.00'),(2,'002',1,'1 bolsa','2025-01-08 00:00:00',6.00,'C-02','M-02','3.00'),(3,'003',1,'1 bolsa','2025-01-08 00:00:00',6.00,'C-04','M-03','3.00'),(4,'004',2,'1 bolsa','2025-01-09 00:00:00',15.00,'C-02','M-02','3.00'),(5,'005',2,'1 bolsa','2025-01-09 00:00:00',15.00,'C-04','M-03','3.00'),(6,'006',2,'Mezcla 002-004','2025-01-09 00:00:00',21.00,'C-02','M-02','3.00'),(7,'007',2,'Mezcla 004-005','2025-01-09 00:00:00',21.00,'C-04','M-03','3.00'),(8,'001',3,'1 costal','2025-02-10 00:00:00',60.00,'C-4','M-1','3.20'),(9,'002',3,'1 costal','2025-02-10 00:00:00',50.00,'C-6','M-1','3.00'),(10,'001',4,'1 Bolsa','2025-01-24 00:00:00',3.00,'PILAR','1','7.95-9.45'),(11,'001',5,'1 Shellby','2025-01-24 00:00:00',10.00,'DHLC24-MP-04','SH-03','14.45-15.15'),(12,'002',5,'1 Shellby','2025-01-24 00:00:00',10.00,'DHLC24-MP-04','SH-05+SPT-16','19.00-19.70'),(13,'003',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-02','SPT-18','19.00-19.65'),(14,'004',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-03','SPT-02','6.00-6.45'),(15,'005',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-03','SPT-05','9.30-9.75'),(16,'006',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-03','SPT-12','17.50-17.95'),(17,'007',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-03','SPT-15','20.65-21.10'),(18,'008',5,'1 Bolsa','2025-01-24 00:00:00',1.00,'DHLC24-MP-05A','SH-06','27.70-28.40');
/*!40000 ALTER TABLE `muestra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20 23:59:23
