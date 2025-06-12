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
-- Table structure for table `catalogo_ensayo`
--

DROP TABLE IF EXISTS `catalogo_ensayo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_ensayo` (
  `id_catalogo_ensayo` int NOT NULL AUTO_INCREMENT,
  `codigo_ensayo` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nombre_ensayo` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `norma_ensayo` varchar(145) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `precio_ensayo` decimal(10,2) DEFAULT NULL,
  `descripcion` text COLLATE utf8mb3_unicode_ci,
  `fecha_aprobacion` date DEFAULT NULL,
  `responsable_aprobacion` int DEFAULT NULL,
  PRIMARY KEY (`id_catalogo_ensayo`),
  UNIQUE KEY `codigo_ensayo_UNIQUE` (`codigo_ensayo`),
  KEY `fk_responsable_aprobar_idx` (`responsable_aprobacion`),
  CONSTRAINT `fk_responsable_aprobar` FOREIGN KEY (`responsable_aprobacion`) REFERENCES `personal_laboratorio` (`id_Personal_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_ensayo`
--

LOCK TABLES `catalogo_ensayo` WRITE;
/*!40000 ALTER TABLE `catalogo_ensayo` DISABLE KEYS */;
INSERT INTO `catalogo_ensayo` VALUES (1,'CF-01','Caraterización física','ASTM D2216, ASTM D6913, ASTM D4318, ASTM D2487, ASTM D3282.',170.00,'Contenido de humedad, Granulometría por Tamizado, Límites de Consistencia, Clasificación SUCS y AASHTO.','2023-09-01',11),(2,'CH-01','Contenido de Humedad','ASTM-D2216',50.00,'','2023-09-01',11),(3,'AGS-H','Sedimentación','ASTM-D7928',150.00,'Análisis Granulométrico por Sedimentación (Hidrómetro)','2023-09-01',11),(4,'DMM-S','Densidad máxima y mínima','JIS A 1224',80.00,'Densidad Mínima y Densidad Máxima En Arena','2023-09-01',11),(5,'GS-F','GS Finos','ASTM-D854',50.00,'Gravedad Específica de Sólidos','2023-09-01',11),(6,'GS-G','GS Grueso','ASTM-C127',60.00,'Gravedad Específica de Sólidos Suelos Gruesos','2023-09-01',11),(7,'PV-F','Peso volumétrico','ASTM-D7263',50.00,'Densidad y Peso unitario de suelos (Muestra Inalterada)','2023-09-01',11),(8,'PU-G','Peso unitario','ASTM-C29',100.00,'Densidad Aparente (Peso Unitario) y Vacíos en agregados','2023-09-01',11),(9,'PE','Proctor estandar','ASTM-D698',180.00,'Compactación Proctor Estándar','2023-09-01',11),(10,'PM','Proctor modificado','ASTM-D1557',200.00,'Compactación Proctor Modificado','2023-09-01',11),(11,'CBR','CBR','ASTM-D1883, ASTM-D1557',530.00,'C.B.R. - Incluye compactación proctor','2023-09-01',11),(12,'D-DH-PH','Dispersión Doble Hidrómetro y Pinhole','ASTM-D4221, ASTM-D4647',500.00,'Dispersión Doble Hidrómetro y Pinhole','2023-09-01',11),(13,'CNC','Compresión no confinada','ASTM-D2166',100.00,'Compresión no Confinada','2023-09-01',11),(14,'CD-01','Corte directo','ASTM-D3080',400.00,'Corte Directo Material < Tamiz N° 4 , norma descontinuada','2023-09-01',11),(15,'CD-02','Corte directo a gran escala','ASTM-D3080',13000.00,'Corte directo a gran escala / 60 x 60 x 60 cm, material <2\"','2023-09-01',11),(16,'TXUU-05','Triaxial UU 5cm','ASTM-D2850',650.00,'Compresión Triaxial UU Diámetro 5.0 cm. Suelos Cohesivos.','2023-09-01',11),(17,'TXCU-05','Triaxial CU 5cm','ASTM-D4767',1400.00,'Compresión Triaxial CU','2023-09-01',11),(18,'TXCD-05','Triaxial CD 5cm','ASTM-D7181',2000.00,'Compresión Triaxial CD Diámetro 5.0 cm.','2023-09-01',11),(19,'TXCD-05-L','Triaxial CD 5cm (drenaje libre)','ASTM-D7181',1500.00,'Compresión Triaxial CD (Suelo granular limpio), previa evaluación','2023-09-01',11),(20,'TXUU-10','Triaxial UU 10cm','ASTM-D2850',950.00,'Compresión Triaxial UU Diámetro 4” Suelos Cohesivos.','2023-09-01',11),(21,'TXCU-10','Triaxial CU 10cm','ASTM-D4767',1800.00,'Compresión Triaxial CU - Diámetro 4\" - material <0.75\"','2023-09-01',11),(22,'TXCD-10','Triaxial CD 10cm','ASTM-D7181',2500.00,'Compresión Triaxial CD - Diámetro 4\" - material <0.75\"','2023-09-01',11),(23,'TXCD-10-L','Triaxial CD 10cm (drenaje libre)','ASTM-D7181',1700.00,'Compresión Triaxial CD (drenaje libre) - Diámetro 4\" - material <0.75\"','2023-09-01',11),(24,'TXCU-15','Triaxial CU 15cm','ASTM-D4767',2500.00,'Compresión Triaxial CU - Diámetro 6\" - material <1\"','2023-09-01',11),(25,'TXCD-15','Triaxial CD 15cm','ASTM-D7181',3300.00,'Compresión Triaxial CD - Diámetro 6\" - material <1\"','2023-09-01',11),(26,'TXCD-15-L','Triaxial CD 15cm (drenaje libre)','ASTM-D7181',2200.00,'Compresión Triaxial CD (drenaje libre) - Diámetro 6\" - material <1\"','2023-09-01',11),(27,'CU-6','Consolidación 6.4 kg/cm2','ASTM-D2435',650.00,'Consolidación Unidimensional - Hasta 6.4 kg/cm 2','2023-09-01',11),(28,'CU-12','Consolidación 12.8 kg/cm2','ASTM-D2435',750.00,'Consolidación Unidimensional Hasta 12.8 kg/cm2','2023-09-01',11),(29,'CU-25','Consolidación 25.6 kg/cm2','ASTM-D2435',900.00,'Consolidación Unidimensional Hasta 25.4 kg/cm2','2023-09-01',11),(30,'EU-C','Expanción o colapso','ASTM-D4546',650.00,'Expansión Unidimensional o Colapso','2023-09-01',11),(31,'PPR','Permeabilidad pared rígida','ASTM-D5856',320.00,'Permeabilidad de Carga Constante','2023-09-01',11),(32,'PPF-05','Permeabilidad flexible 5cm','ASTM-D5084',550.00,'Permeabilidad de Carga Constante Pared Flexible Diámetro 5.0 cm','2025-09-01',11),(33,'PPF-10','Permeabilidad flexible 10cm','ASTM-D5084',650.00,'Permeabilidad de Carga Constante - Pared Flexible Diámetro 10.0 cm','2025-09-01',11),(34,'GH','Granulometría Homotética',NULL,1000.00,'Granulometría Homotética. (Material <3/4”)','2025-09-01',11),(35,'E-TSH','Extracción tubo shellby',NULL,100.00,'Extracción y evaluación de muestra del Tubo Shellby para su ensayo','2025-09-01',11),(36,'TM','Tallado de muestras',NULL,100.00,'Tallado de muestras, previa evaluación','2025-09-01',11);
/*!40000 ALTER TABLE `catalogo_ensayo` ENABLE KEYS */;
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
