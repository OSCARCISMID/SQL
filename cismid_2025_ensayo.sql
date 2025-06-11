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
-- Table structure for table `ensayo`
--

DROP TABLE IF EXISTS `ensayo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ensayo` (
  `id_ensayo` int NOT NULL AUTO_INCREMENT,
  `id_muestra` int NOT NULL,
  `id_catalogo_ensayo` int NOT NULL,
  `fecha_programada` datetime DEFAULT NULL,
  `fecha_realizacion` datetime DEFAULT NULL,
  `personal_responsable` int DEFAULT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id_ensayo`),
  KEY `fk_id_muestra_idx` (`id_muestra`),
  KEY `fk_id_catalogo_ensayo_idx` (`id_catalogo_ensayo`),
  KEY `fk_personal_responsable_idx` (`personal_responsable`),
  CONSTRAINT `fk_id_catalogo_ensayo` FOREIGN KEY (`id_catalogo_ensayo`) REFERENCES `catalogo_ensayo` (`id_catalogo_ensayo`),
  CONSTRAINT `fk_id_muestra` FOREIGN KEY (`id_muestra`) REFERENCES `muestra` (`id_muestra`),
  CONSTRAINT `fk_personal_responsable` FOREIGN KEY (`personal_responsable`) REFERENCES `personal_laboratorio` (`id_Personal_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ensayo`
--

LOCK TABLES `ensayo` WRITE;
/*!40000 ALTER TABLE `ensayo` DISABLE KEYS */;
INSERT INTO `ensayo` VALUES (1,1,2,'2025-01-13 00:00:00',NULL,1,'Realizar tamizado compuesto, y limites de consistencia luego del triaxial, para que alcance muestra'),(2,1,3,'2025-01-14 00:00:00',NULL,2,'Cuidar que alcance muestra para otros ensayos'),(3,6,2,'2025-01-13 00:00:00',NULL,2,'Mezclar las 2 muestras antes de hace el ensayo.'),(4,6,3,'2025-01-14 00:00:00',NULL,2,'Mezclar las 2 muestras antes de hace el ensayo.'),(5,7,2,'2025-01-13 00:00:00',NULL,3,'Mezclar las 2 muestras antes de hace el ensayo.'),(6,7,3,'2025-01-14 00:00:00',NULL,2,'Mezclar las 2 muestras antes de hace el ensayo.'),(7,8,1,'2025-02-11 00:00:00',NULL,2,'Preparar para triaxial'),(8,8,6,'2025-02-11 00:00:00',NULL,2,NULL),(9,8,11,'2025-02-11 00:00:00',NULL,2,NULL),(10,8,22,'2025-02-17 00:00:00',NULL,2,'reconstituir al 95% MDC y OCH'),(11,9,1,'2025-02-11 00:00:00',NULL,3,'Clasificación luego del triaxial'),(12,9,6,'2025-02-11 00:00:00',NULL,3,'Luego del triaxial'),(13,9,22,'2025-02-18 00:00:00',NULL,2,'reconstituir al 95% MDC y OCH del proctor de 001 Dejar material para la clasificación'),(14,10,1,'2025-01-25 00:00:00',NULL,3,NULL),(15,10,17,'2025-01-25 00:00:00',NULL,4,'Densidad seca 1.453 g/cm3, humedad 15%'),(16,11,1,NULL,NULL,3,NULL),(17,11,17,NULL,NULL,4,'Densidad humeda 1.8 g/cm3, humedad SUCS, 100-200-400 kPa'),(18,12,1,NULL,NULL,2,'Considerar el SPT-16 en caso falte cantidad de muestra, caso contrario usar solo SH-05.'),(19,12,17,NULL,NULL,4,'Considerar el SPT-16 en caso falte cantidad de muestra, caso contrario usar solo SH-05.'),(20,13,3,NULL,NULL,1,NULL),(21,14,3,NULL,NULL,1,NULL),(22,15,3,NULL,NULL,1,NULL),(23,16,3,NULL,NULL,1,NULL),(24,17,3,NULL,NULL,1,NULL),(25,18,3,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `ensayo` ENABLE KEYS */;
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
