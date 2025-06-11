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
-- Table structure for table `recepcion`
--

DROP TABLE IF EXISTS `recepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepcion` (
  `id_recepcion` int NOT NULL AUTO_INCREMENT,
  `codigo_recepcion` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `fecha_recepcion` datetime DEFAULT NULL,
  `id_cliente` int NOT NULL,
  `proyecto` varchar(250) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8mb3_unicode_ci,
  `personal_recepcion` int DEFAULT NULL,
  `responsable_envio` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_responsable_envio` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telefono_responsable_envio` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `codigo_solicitud` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ubicacion_proyecto` varchar(245) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fecha_codigo_solicitud` datetime DEFAULT NULL,
  `solicitante_codigo_solicitud` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fecha_pobable_entrega_informe` date DEFAULT NULL,
  PRIMARY KEY (`id_recepcion`),
  UNIQUE KEY `codigo_recepcion_UNIQUE` (`codigo_recepcion`),
  KEY `fk_personal_recepcion_idx` (`personal_recepcion`),
  KEY `fk_cliente_idx` (`id_cliente`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_personal_recepcion` FOREIGN KEY (`personal_recepcion`) REFERENCES `personal_laboratorio` (`id_Personal_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcion`
--

LOCK TABLES `recepcion` WRITE;
/*!40000 ALTER TABLE `recepcion` DISABLE KEYS */;
INSERT INTO `recepcion` VALUES (1,'R25-001','2025-01-08 09:51:00',1,'“MEJORAMIENTO Y AMPLIACION DEL SERVICIO EDUCATIVO DE LA IE N°86007 JOSE ANTONIO ENCINAS DEL CENTRO POBLADO DE MACASHCA DEL DISTRITO DE HUARAZ- PROVINCIA DE HUARAZ- DEPARTAMENTO DE ANCASH, CUI N°2561535”','3 muestras, 2 de ellas faltan material para ensayos triaxiales',10,'MOISES JESUS CORAL','moisesmathlab@gmail.com','935848440','LG25-001','C. P. DE MACASHCA DEL DISTRITO DE HUARAZ- PROVINCIA DE HUARAZ- DEPARTAMENTO DE ANCASH','2025-01-09 14:00:00','MIGUEL ANGEL GOÑI BRITO','2025-01-24'),(2,'R25-002','2025-01-09 10:30:00',1,'“MEJORAMIENTO Y AMPLIACION DEL SERVICIO EDUCATIVO DE LA IE N°86007 JOSE ANTONIO ENCINAS DEL CENTRO POBLADO DE MACASHCA DEL DISTRITO DE HUARAZ- PROVINCIA DE HUARAZ- DEPARTAMENTO DE ANCASH, CUI N°2561535”','2 muestras, completaron las 2 muestras faltantes ',10,'MOISES JESUS CORAL','moisesmathlab@gmail.com','935848440','LG25-001','C. P. DE MACASHCA DEL DISTRITO DE HUARAZ- PROVINCIA DE HUARAZ- DEPARTAMENTO DE ANCASH','2025-01-09 14:00:00','MIGUEL ANGEL GOÑI BRITO','2025-01-24'),(3,'R25-007','2025-02-04 16:00:00',2,'Creación de los servicios operativos y misionales, institucionales en el local comunal multiusos en el barrio las brizas del Rio Mosna del centro poblado Santa Cruz de Mosna','2 Muestras, peso al limite',8,'Carlos',NULL,NULL,'LG25-007','San Marcos- Huari - Ancash','2025-02-03 10:00:00','Consorcio sebastian ingenieros','2025-02-13'),(4,'R25-005','2025-01-24 11:15:00',3,'Mejoramiento del Servicio de Movilidad Urbana en el Cruce de las Avenidas Atahualpa y Vía de Evitamiento Sur a través del paso a desnivel en la ciudad de Cajamarca - CUI N° 2600733','1 Muestra, seca',8,'Angel Olivera','aolivera@ingeoes.pe','994512253','LG25-002','Cajamarca','2025-01-24 14:00:00','INGEOES OHL SAC','2025-01-31'),(5,'R25-004','2025-01-11 15:38:00',4,'Ingeniería de factibilidad de la explotación y transporte de relaves de Mesapata a la planta concentradora - UM Uchucchacua','2 Shellby y 1 bolsa',9,'Juan Castillo',NULL,'994294587','LG25-003','OYÓN, OYÓN, LIMA ','2025-01-24 09:00:00','LARA CONSULTING & ENGINEERING S.A.C.','2025-02-11');
/*!40000 ALTER TABLE `recepcion` ENABLE KEYS */;
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
