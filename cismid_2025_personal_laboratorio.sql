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
-- Table structure for table `personal_laboratorio`
--

DROP TABLE IF EXISTS `personal_laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_laboratorio` (
  `id_Personal_laboratorio` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `apellidos` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `cargo` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_Personal_laboratorio`),
  UNIQUE KEY `id_Personal_laboratorio_UNIQUE` (`id_Personal_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_laboratorio`
--

LOCK TABLES `personal_laboratorio` WRITE;
/*!40000 ALTER TABLE `personal_laboratorio` DISABLE KEYS */;
INSERT INTO `personal_laboratorio` VALUES (1,'Tomas','Guerrero','Tecnico'),(2,'Arturo','Yancan','Tecnico'),(3,'Willson','Verastegui','Tecnico'),(4,'Leonidas','Junco','Tecnico'),(5,'Luis','Mantari','Ayudante'),(6,'Moises','Vega','Mantenimiento'),(7,'Jose','Ruiz','Tecnico'),(8,'Santiago','Echevarria','Administrador'),(9,'Alessandro','Huaman','Tesista'),(10,'Oscar','Granados','Tesista'),(11,'Diana','Calderon','Jefa del Laboratorio');
/*!40000 ALTER TABLE `personal_laboratorio` ENABLE KEYS */;
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
