-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hospital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hospital` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hospital`;

--
-- Table structure for table `cuartos`
--

DROP TABLE IF EXISTS `cuartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuartos` (
  `cuarto_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `numero_cuarto` int(11) NOT NULL,
  `inicio_estadia` date NOT NULL,
  `fin_estadia` date DEFAULT NULL,
  PRIMARY KEY (`cuarto_id`),
  KEY `paciente_id` (`paciente_id`),
  CONSTRAINT `cuartos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuartos`
--

LOCK TABLES `cuartos` WRITE;
/*!40000 ALTER TABLE `cuartos` DISABLE KEYS */;
INSERT INTO `cuartos` VALUES (1,1,121,'2017-04-10','2017-04-17'),(2,2,190,'2017-04-11','2017-04-13'),(3,3,108,'2017-04-12','2017-04-17'),(4,4,179,'2017-04-13','2017-04-18'),(5,5,158,'2017-04-14','2017-04-17'),(6,6,183,'2017-04-15','2017-04-16'),(7,7,142,'2017-04-16','2017-04-23'),(8,8,108,'2017-04-17','2017-04-24'),(9,9,100,'2017-04-18','2017-04-23'),(10,10,109,'2017-04-19','2017-04-24'),(11,11,116,'2017-04-20','2017-04-23'),(12,12,182,'2017-04-21','2017-04-24'),(13,13,180,'2017-04-22','2017-04-28'),(14,14,188,'2017-04-23','2017-04-25'),(15,15,173,'2017-04-24','2017-05-01'),(16,16,176,'2017-04-25','2017-04-30'),(17,17,122,'2017-04-26','2017-04-27'),(18,18,155,'2017-04-27','2017-05-07'),(19,19,181,'2017-04-28','2017-04-30'),(20,20,178,'2017-04-29','2017-05-05'),(21,21,139,'2017-04-30','2017-05-07'),(22,22,119,'2017-05-01','2017-05-10'),(23,23,193,'2017-05-02','2017-05-09'),(24,24,153,'2017-05-03','2017-05-04'),(25,25,168,'2017-05-04','2017-05-14'),(26,26,115,'2017-05-05','2017-05-12'),(27,27,140,'2017-05-06','2017-05-09'),(28,28,170,'2017-05-07','2017-05-14'),(29,29,153,'2017-05-08','2017-05-10'),(30,30,177,'2017-05-09','2017-05-14'),(31,31,101,'2017-05-10','2017-05-17'),(32,32,118,'2017-05-11','2017-05-21'),(33,33,120,'2017-05-12','2017-05-19'),(34,34,156,'2017-05-13','2017-05-19'),(35,35,174,'2017-05-14','2017-05-15'),(36,36,156,'2017-05-15','2017-05-19'),(37,37,397,'2017-05-16','2017-05-26'),(38,38,314,'2017-05-17','2017-05-18'),(39,39,385,'2017-05-18','2017-05-24'),(40,40,356,'2017-05-19','2017-05-26'),(41,41,317,'2017-05-20','2017-05-28'),(42,42,305,'2017-05-21','2017-05-29'),(43,43,363,'2017-05-22','2017-05-26'),(44,44,346,'2017-05-23','2017-06-02'),(45,45,396,'2017-05-24','2017-05-31'),(46,46,376,'2017-05-25','2017-06-03'),(47,47,353,'2017-05-26','2017-05-27'),(48,48,342,'2017-05-27','2017-06-06'),(49,49,382,'2017-05-28','2017-05-29'),(50,50,346,'2017-05-29','2017-05-30'),(51,51,349,'2017-05-30','2017-06-02'),(52,52,381,'2017-05-31','2017-06-08'),(53,53,383,'2017-06-01','2017-06-11'),(54,54,339,'2017-06-02','2017-06-07'),(55,55,326,'2017-06-03','2017-06-09'),(56,56,391,'2017-06-04','2017-06-12'),(57,57,377,'2017-06-05','2017-06-13'),(58,58,323,'2017-06-06','2017-06-13');
/*!40000 ALTER TABLE `cuartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes`
--

DROP TABLE IF EXISTS `cuentas_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes` (
  `cuentas_pacientes_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `forma_pago_pac_id` int(11) DEFAULT NULL,
  `fecha_emision` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_pac_id` (`forma_pago_pac_id`),
  CONSTRAINT `cuentas_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `cuentas_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_pac_id`) REFERENCES `formas_pago_pacientes` (`forma_pago_pac_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes`
--

LOCK TABLES `cuentas_pacientes` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes` VALUES (1,1,1,'2017-04-20',NULL),(2,2,2,'2017-04-17',NULL),(3,3,3,'2017-04-20',NULL),(4,4,4,'2017-04-22',NULL),(5,5,5,'2017-04-21',NULL),(6,6,6,'2017-04-18',NULL),(7,7,7,'2017-04-24',NULL),(8,8,8,'2017-04-27',NULL),(9,9,9,'2017-04-28',NULL),(10,10,10,'2017-04-27',NULL),(11,11,11,'2017-04-28',NULL),(12,12,12,'2017-04-28',NULL),(13,13,13,'2017-04-29',NULL),(14,14,14,'2017-04-26',NULL),(15,15,15,'2017-05-05',NULL),(16,16,16,'2017-05-02',NULL),(17,17,17,'2017-05-01',NULL),(18,18,18,'2017-05-12',NULL),(19,19,19,'2017-05-03',NULL),(20,20,20,'2017-05-09',NULL),(21,21,21,'2017-05-08',NULL),(22,22,22,'2017-05-14',NULL),(23,23,23,'2017-05-12',NULL),(24,24,24,'2017-05-05',NULL),(25,25,25,'2017-05-19',NULL),(26,26,26,'2017-05-14',NULL),(27,27,27,'2017-05-12',NULL),(28,28,28,'2017-05-15',NULL),(29,29,29,'2017-05-13',NULL),(30,30,30,'2017-05-18',NULL),(31,31,31,'2017-05-20',NULL),(32,32,32,'2017-05-26',NULL),(33,33,33,'2017-05-22',NULL),(34,34,34,'2017-05-21',NULL),(35,35,35,'2017-05-16',NULL),(36,36,36,'2017-05-20',NULL),(37,37,37,'2017-05-27',NULL),(38,38,38,'2017-05-21',NULL),(39,39,39,'2017-05-26',NULL),(40,40,40,'2017-05-31',NULL),(41,41,41,'2017-05-31',NULL),(42,42,42,'2017-06-01',NULL),(43,43,43,'2017-05-27',NULL),(44,44,44,'2017-06-07',NULL),(45,45,45,'2017-06-04',NULL),(46,46,46,'2017-06-07',NULL),(47,47,47,'2017-05-31',NULL),(48,48,48,'2017-06-07',NULL),(49,49,49,'2017-05-31',NULL),(50,50,50,'2017-06-03',NULL),(51,51,51,'2017-06-03',NULL),(52,52,52,'2017-06-10',NULL),(53,53,53,'2017-06-14',NULL),(54,54,54,'2017-06-09',NULL),(55,55,55,'2017-06-14',NULL),(56,56,56,'2017-06-17',NULL),(57,57,57,'2017-06-16',NULL),(58,58,58,'2017-06-15',NULL),(59,1,1,'2017-04-20',NULL),(60,2,2,'2017-04-17',NULL),(61,3,3,'2017-04-20',NULL),(62,4,4,'2017-04-22',NULL),(63,5,5,'2017-04-21',NULL),(64,6,6,'2017-04-18',NULL),(65,7,7,'2017-04-24',NULL),(66,8,8,'2017-04-27',NULL),(67,9,9,'2017-04-28',NULL),(68,10,10,'2017-04-27',NULL),(69,11,11,'2017-04-28',NULL),(70,12,12,'2017-04-28',NULL),(71,13,13,'2017-04-29',NULL),(72,14,14,'2017-04-26',NULL),(73,15,15,'2017-05-05',NULL),(74,16,16,'2017-05-02',NULL),(75,17,17,'2017-05-01',NULL),(76,18,18,'2017-05-12',NULL),(77,19,19,'2017-05-03',NULL),(78,20,20,'2017-05-09',NULL),(79,21,21,'2017-05-08',NULL),(80,22,22,'2017-05-14',NULL),(81,23,23,'2017-05-12',NULL),(82,24,24,'2017-05-05',NULL),(83,25,25,'2017-05-19',NULL),(84,26,26,'2017-05-14',NULL),(85,27,27,'2017-05-12',NULL),(86,28,28,'2017-05-15',NULL),(87,29,29,'2017-05-13',NULL),(88,30,30,'2017-05-18',NULL),(89,31,31,'2017-05-20',NULL),(90,32,32,'2017-05-26',NULL),(91,33,33,'2017-05-22',NULL),(92,34,34,'2017-05-21',NULL),(93,35,35,'2017-05-16',NULL),(94,36,36,'2017-05-20',NULL),(95,37,37,'2017-05-27',NULL),(96,38,38,'2017-05-21',NULL),(97,39,39,'2017-05-26',NULL),(98,40,40,'2017-05-31',NULL),(99,41,41,'2017-05-31',NULL),(100,42,42,'2017-06-01',NULL),(101,43,43,'2017-05-27',NULL),(102,44,44,'2017-06-07',NULL),(103,45,45,'2017-06-04',NULL),(104,46,46,'2017-06-07',NULL),(105,47,47,'2017-05-31',NULL),(106,48,48,'2017-06-07',NULL),(107,49,49,'2017-05-31',NULL),(108,50,50,'2017-06-03',NULL),(109,51,51,'2017-06-03',NULL),(110,52,52,'2017-06-10',NULL),(111,53,53,'2017-06-14',NULL),(112,54,54,'2017-06-09',NULL),(113,55,55,'2017-06-14',NULL),(114,56,56,'2017-06-17',NULL),(115,57,57,'2017-06-16',NULL),(116,58,58,'2017-06-15',NULL);
/*!40000 ALTER TABLE `cuentas_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas_pacientes_detalles`
--

DROP TABLE IF EXISTS `cuentas_pacientes_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas_pacientes_detalles` (
  `cuentas_pacientes_det_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuentas_pacientes_id` int(11) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT 'Diagnostico',
  `cantidad` double NOT NULL,
  `costo_total` double NOT NULL,
  PRIMARY KEY (`cuentas_pacientes_det_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  CONSTRAINT `cuentas_pacientes_detalles_ibfk_1` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas_pacientes_detalles`
--

LOCK TABLES `cuentas_pacientes_detalles` WRITE;
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` DISABLE KEYS */;
INSERT INTO `cuentas_pacientes_detalles` VALUES (1,1,'Tratamiento',3,151.347),(2,2,'Tratamiento',3,50.299),(3,3,'Tratamiento',2,335.363),(4,4,'Tratamiento',3,336.904),(5,5,'Tratamiento',1,284.73),(6,6,'Tratamiento',1,692.302),(7,7,'Tratamiento',1,191.741),(8,8,'Tratamiento',1,744.675),(9,9,'Tratamiento',1,859.558),(10,10,'Tratamiento',1,507.315),(11,11,'Tratamiento',2,189.576),(12,12,'Tratamiento',3,615.74),(13,13,'Tratamiento',2,251.751),(14,14,'Tratamiento',3,289.314),(15,15,'Tratamiento',2,346.244),(16,16,'Tratamiento',1,321.521),(17,17,'Tratamiento',3,729.192),(18,18,'Tratamiento',2,654.777),(19,19,'Tratamiento',2,141.906),(20,20,'Tratamiento',1,749.107),(21,21,'Tratamiento',1,347.804),(22,22,'Tratamiento',2,824.953),(23,23,'Tratamiento',3,966.042),(24,24,'Tratamiento',1,376.164),(25,25,'Tratamiento',3,376.236),(26,26,'Tratamiento',1,255.123),(27,27,'Tratamiento',3,317.412),(28,28,'Tratamiento',3,766.565),(29,29,'Tratamiento',3,230.187),(30,30,'Tratamiento',2,973.681),(31,31,'Tratamiento',3,556.224),(32,32,'Tratamiento',1,789.826),(33,33,'Tratamiento',3,797.003),(34,34,'Tratamiento',3,896.987),(35,35,'Tratamiento',1,645.401),(36,36,'Tratamiento',3,732.868),(37,37,'Tratamiento',1,707.681),(38,38,'Tratamiento',3,110.331),(39,39,'Tratamiento',3,158.256),(40,40,'Tratamiento',2,81.944),(41,41,'Tratamiento',2,881.69),(42,42,'Tratamiento',2,602.98),(43,43,'Tratamiento',1,268.138),(44,44,'Tratamiento',3,379.874),(45,45,'Tratamiento',1,153.311),(46,46,'Tratamiento',3,863.4),(47,47,'Tratamiento',2,860.995),(48,48,'Tratamiento',3,149.29),(49,49,'Tratamiento',1,267.026),(50,50,'Tratamiento',1,834.54),(51,51,'Tratamiento',3,153.439),(52,52,'Tratamiento',3,236.628),(53,53,'Tratamiento',3,871.864),(54,54,'Tratamiento',3,680.413),(55,55,'Tratamiento',3,343.354),(56,56,'Tratamiento',3,57.805),(57,57,'Tratamiento',3,308.184),(58,58,'Tratamiento',2,453.174),(59,59,'Tratamiento',3,286.21),(60,60,'Tratamiento',2,370.053),(61,61,'Tratamiento',2,468.092),(62,62,'Tratamiento',3,526.929),(63,63,'Tratamiento',1,550.774),(64,64,'Tratamiento',3,152.954),(65,65,'Tratamiento',2,361.733),(66,66,'Tratamiento',2,554.9),(67,67,'Tratamiento',1,285.06),(68,68,'Tratamiento',1,525.974),(69,69,'Tratamiento',3,585.548),(70,70,'Tratamiento',2,50.663),(71,71,'Tratamiento',2,275.709),(72,72,'Tratamiento',3,239.682),(73,73,'Tratamiento',1,563.209),(74,74,'Tratamiento',2,234.213),(75,75,'Tratamiento',1,589.304),(76,76,'Tratamiento',3,248.645),(77,77,'Tratamiento',1,443.071),(78,78,'Tratamiento',3,219.624),(79,79,'Tratamiento',1,584.96),(80,80,'Tratamiento',3,429.701),(81,81,'Tratamiento',3,570.861),(82,82,'Tratamiento',2,46.589),(83,83,'Tratamiento',1,566.074),(84,84,'Tratamiento',2,549.895),(85,85,'Tratamiento',3,88.233),(86,86,'Tratamiento',3,184.519),(87,87,'Tratamiento',3,34.939),(88,88,'Tratamiento',1,140.167),(89,89,'Tratamiento',1,268.348),(90,90,'Tratamiento',3,54.824),(91,91,'Tratamiento',1,343.22),(92,92,'Tratamiento',1,141.859),(93,93,'Tratamiento',1,187.645),(94,94,'Tratamiento',3,176.937),(95,95,'Tratamiento',2,292.454),(96,96,'Tratamiento',1,320.878),(97,97,'Tratamiento',3,354.925),(98,98,'Tratamiento',3,511.089),(99,99,'Tratamiento',2,59.643),(100,100,'Tratamiento',2,583.011),(101,101,'Tratamiento',3,124.52),(102,102,'Tratamiento',2,61.608),(103,103,'Tratamiento',2,452.63),(104,104,'Tratamiento',1,541.12),(105,105,'Tratamiento',3,68.985),(106,106,'Tratamiento',1,79.515),(107,107,'Tratamiento',1,596.734),(108,108,'Tratamiento',1,335.679),(109,109,'Tratamiento',1,71.023),(110,110,'Tratamiento',1,443.391),(111,111,'Tratamiento',2,479.401),(112,112,'Tratamiento',1,132.635),(113,113,'Tratamiento',3,352.489),(114,114,'Tratamiento',1,373.22),(115,115,'Tratamiento',3,597.9),(116,116,'Tratamiento',3,378.332);
/*!40000 ALTER TABLE `cuentas_pacientes_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `direccion_id` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(50) NOT NULL,
  `numero_exterior` int(11) NOT NULL,
  `numero_interior` int(11) DEFAULT NULL,
  `colonia` varchar(50) NOT NULL,
  `codigo_postal` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `otros` varchar(50) NOT NULL,
  PRIMARY KEY (`direccion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Obere Str.57',57,NULL,'No especifica','30071','Berlin','No especifica','Germany','Nada'),(2,'Avda. de la Constitucin 2222',2222,NULL,'No especifica','71760','Mexico D.F.','Mexico D.F.','Mexico','Nada'),(3,'Mataderos 2312',2312,NULL,'No especifica','37179','Mexico D.F.','Mexico D.F.','Mexico','Nada'),(4,'120 Hanover Sq.',120,NULL,'No especifica','60155','London','No especifica','UK','Nada'),(5,'Berguvsvgen 8',8,NULL,'No especifica','26468','Lule','No especifica','Sweden','Nada'),(6,'Forsterstr. 57',57,NULL,'No especifica','29719','Mannheim','No especifica','Germany','Nada'),(7,'24, place Klber',24,NULL,'No especifica','72584','Strasbourg','No especifica','France','Nada'),(8,'C/ Araquel, 67',67,NULL,'No especifica','11697','Madrid','No especifica','Spain','Nada'),(9,'12, rue des Bouchers',12,NULL,'No especifica','10368','Marseille','No especifica','France','Nada'),(10,'23 Tsawassen Blvd.',23,NULL,'No especifica','31994','Tsawassen','BC','Canada','Nada'),(11,'Fauntleroy Circus',100,NULL,'No especifica','12425','London','No especifica','UK','Nada'),(12,'Cerrito 333',333,NULL,'No especifica','41756','Buenos Aires','No especifica','Argentina','Nada'),(13,'Sierras de Granada 9993',9993,NULL,'No especifica','45792','Mexico D.F.','No especifica','Mexico','Nada'),(14,'Hauptstr. 29',29,NULL,'No especifica','23662','Bern','No especifica','Swirzerland','Nada'),(15,'Av. dos Lusadas, 23',23,NULL,'No especifica','84473','Sao Paulo','SP','Brazil','Nada'),(16,'Berkeley Gardens 12 Brewery',12,NULL,'No especifica','61755','London','No especifica','UK','Nada'),(17,'Walserweg 21',21,NULL,'No especifica','20796','Aachen','No especifica','Germany','Nada'),(18,'67, rue des Cinquante Otages',67,NULL,'No especifica','56274','Nantes','No especifica','France','Nada'),(19,'35 King George',35,NULL,'No especifica','13216','London','No especifica','UK','Nada'),(20,'Kirchgasse 6',6,NULL,'No especifica','59319','Graz','No especifica','Austria','Nada'),(21,'Rua Ors, 92',92,NULL,'No especifica','16799','Sao Paulo','SP','Brazil','Nada'),(22,'C/ Moralzarzal, 6',86,NULL,'No especifica','77528','Madrid','No especifica','Spain','Nada'),(23,'184, chausse de Tournai',184,NULL,'No especifica','55769','Lille','No especifica','France','Nada'),(24,'kergatan 24',24,NULL,'No especifica','83154','Brcke','No especifica','Sweden','Nada'),(25,'Berliner Platz 43',43,NULL,'No especifica','21914','Mnchen','No especifica','Germany','Nada'),(26,'54, rue Royale',54,NULL,'No especifica','63117','Nantes','No especifica','France','Nada'),(27,'Via Monte Bianco 34',34,NULL,'No especifica','87116','Torino','No especifica','Italy','Nada'),(28,'Jardim das rosas n.32',32,NULL,'No especifica','87099','Lisboa','No especifica','Portugal','Nada'),(29,'Rambla de Catalua, 23',23,NULL,'No especifica','38184','Barcelona','No especifica','Spain','Nada'),(30,'C/ Romero, 33',33,NULL,'No especifica','18057','Sevilla','No especifica','Spain','Nada'),(31,'Av. Brasil, 442',442,NULL,'No especifica','68328','Campinas','SP','Brazil','Nada'),(32,'2732 Baker Blvd.',2732,NULL,'No especifica','87535','Eugene','OR','USA','Nada'),(33,'5 Ave. Los Palos Grandes',5,NULL,'No especifica','68441','Caracas','DF','Venezuela','Nada'),(34,'Rua do Pao, 67',67,NULL,'No especifica','22071','Rio de Janeiro','RJ','Brazil','Nada'),(35,'Carrera 22 con Ave. Carlos Soublette #8-35',22,8,'No especifica','50156','San Cristobal','Tchira','Venezuela','Nada'),(36,'City Center Plaza 516 Main St.',516,NULL,'No especifica','47913','Elgin','OR','USA','Nada'),(37,'8 Johnstown Road',8,NULL,'No especifica','47847','Cork','Co. Cork','Ireland','Nada'),(38,'Garden House Crowther Way',5,NULL,'No especifica','52697','Cowes','Isle of Wight','UK','Nada'),(39,'Maubelstr. 90',90,NULL,'No especifica','73705','Brandenburg','No especifica','Germany','Nada'),(40,'67, avenue de I\'Europe',67,NULL,'No especifica','42768','Versailles','No especifica','France','Nada'),(41,'1 rue Asace-Lorraine',1,NULL,'No especifica','40620','Toulouse','No especifica','France','Nada'),(42,'1900 Oak St.',1900,NULL,'No especifica','85240','Vancouver','BC','Canada','Nada'),(43,'12 Orchestra Terrace',12,NULL,'No especifica','72299','Walla Walla','WA','USA','Nada'),(44,'Magazinweg 7 ',7,NULL,'No especifica','69129','Frankfurt a.M.','No especifica','Germany','Nada'),(45,'87 Polk St. Suite 5',87,NULL,'No especifica','11981','San Francisco','CA','USA','Nada'),(46,'Carrera 52 con Ave. Bolvar #65-98 Llano Largo',52,NULL,'No especifica','76914','Barquisimeto','Lara','Venezuela','Nada'),(47,'Ave. 5 de Mayo Porlamar',5,NULL,'No especifica','20768','I. de Margarita','Nueva Esparta','Venezuela','Nada'),(48,'89 Chiaroscuro Rd.',89,NULL,'No especifica','29410','Portland','OR','USA','Nada'),(49,'Via Ludovico il Moro 22',22,NULL,'No especifica','82459','Bergamo','No especifica','Italy','Nada'),(50,'Rue Joseph-Bens 532',532,NULL,'No especifica','32742','Bruxelles','No especifica','Belgium','Nada'),(51,'43 rue St. Laurent',43,NULL,'No especifica','18465','Montral','Qubec','Canada','Nada'),(52,'Heerstr. 22',22,NULL,'No especifica','73900','Leipzig','No especifica','Germany','Nada'),(53,'South House 300 Queensbridge',300,NULL,'No especifica','77552','London','No especifica','UK','Nada'),(54,'Ing. Gustavo Moncada 8585 Piso 20-A',8585,20,'No especifica','83428','Buenos Aires','No especifica','Argentina','Nada'),(55,'2743 Bering St.',2743,NULL,'No especifica','79901','Anchorage','AK','USA','Nada'),(56,'Mehrheimerstr. 369',369,NULL,'No especifica','46012','Kln','No especifica','Germany','Nada'),(57,'265, boulevard Charonne',265,NULL,'No especifica','26346','Paris','No especifica','France','Nada'),(58,'Calle Dr. Jorge Cash 321',321,NULL,'No especifica','19460','Mexico D.F.','Mexico D.F','Mexico','Nada'),(59,'Geislweg 14',14,NULL,'No especifica','34435','Salzburg','No especifica','Austria','Nada'),(60,'Estrada da sade n. 58',58,NULL,'No especifica','11380','Lisboa','No especifica','Portugal','Nada'),(61,'Rua da Panificadora, 12',12,NULL,'No especifica','37964','Rio de Janeiro','RJ','Brazil','Nada'),(62,'Alameda dos Canrios, 891',891,NULL,'No especifica','36965','Sao Paulo','SP','Brazil','Nada'),(63,'Taucherstrae 10',10,NULL,'No especifica','86041','Cunewalde','No especifica','Germany','Nada'),(64,'Av. del Libertador 900',900,NULL,'No especifica','71252','Buenos Aires','No especifica','Argentina','Nada'),(65,'2817 Milton Dr.',2817,NULL,'No especifica','85182','Albuquerque','NM','USA','Nada'),(66,'Strada Provinciale 124',124,NULL,'No especifica','47511','Reggio Emilia','No especifica','Italy','Nada'),(67,'Av. Copacabana, 267',267,NULL,'No especifica','34941','Rio de Janeiro','RJ','Brazil','Nada'),(68,'Grenzacherweg 237',237,NULL,'No especifica','83335','Genve','No especifica','Switzerland','Nada'),(69,'Gran Va, 1',1,NULL,'No especifica','61601','Madrid','No especifica','Spain','Nada'),(70,'Erling Skakkes gate 78',78,NULL,'No especifica','68136','Stavern','No especifica','Norway','Nada'),(71,'187 Suffolk Ln.',187,NULL,'No especifica','78271','Boise','ID','USA','Nada'),(72,'90 Wadhurst Rd.',90,NULL,'No especifica','43827','London','No especifica','UK','Nada'),(73,'Vinbltet 34',34,NULL,'No especifica','59536','Kobenhavn','No especifica','Denmark','Nada'),(74,'25, rue Lauriston',25,NULL,'No especifica','43635','Paris','No especifica','France','Nada'),(75,'P.O. Box 555',555,NULL,'No especifica','26230','Lander','WY','USA','Nada'),(76,'Boulevard Tirou, 255',255,NULL,'No especifica','86215','Charleroi','No especifica','Belgium','Nada'),(77,'89 Jefferson Way Suite 2',89,NULL,'No especifica','44919','Portland','OR','USA','Nada'),(78,'55 Grizzly Peak Rd.',55,NULL,'No especifica','39549','Butte','MT','USA','Nada'),(79,'Luisenstr. 48',78,NULL,'No especifica','32205','Mnster','No especifica','Germany','Nada'),(80,'Avda. Azteca 123',123,NULL,'No especifica','78040','Mexico D.F.','Mexico D.F.','Mexico','Nada'),(81,'Av. Ins de Castro, 414',414,NULL,'No especifica','14942','Sao Paulo','SP','Brazil','Nada'),(82,'722 DaVinci Blvd.',722,NULL,'No especifica','13113','Kirkland','WA','USA','Nada'),(83,'Smagsloget 45',45,NULL,'No especifica','88442','rhus','No especifica','Denmark','Nada'),(84,'2, rue du Commerce',2,NULL,'No especifica','46913','Helsinki','No especifica','Nada','Nada'),(85,'59 rue de I\'Abbaye',59,NULL,'No especifica','21955','Warszawa','No especifica','Nada','Nada'),(86,'Adenaueralle 900',900,NULL,'No especifica','86925','Lyon','No especifica','France','Nada'),(87,'Torikatu 38',38,NULL,'No especifica','18047','Reims','No especifica','France','Nada'),(88,'Rua do Mercado, 12',12,NULL,'No especifica','10549','Stuttgart','No especifica','Germany','Nada'),(89,'305 - 14th Ave. S. Suite 3B',305,3,'No especifica','62245','Oulu','No especifica','Finland','Nada'),(90,'Keskuskatu 45',45,NULL,'No especifica','25873','Resende','SP','Brazil','Nada'),(91,'ul. Filtrowa 68',68,NULL,'No especifica','33192','Seattle','WA','USA','Nada');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_empleados`
--

DROP TABLE IF EXISTS `direcciones_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_empleados` (
  `direccion_empleados_id` int(11) NOT NULL AUTO_INCREMENT,
  `empleado_id` int(11) DEFAULT NULL,
  `direccion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`direccion_empleados_id`),
  KEY `direccion_id` (`direccion_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `direcciones_empleados_ibfk_1` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `direcciones_empleados_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`empleados_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_empleados`
--

LOCK TABLES `direcciones_empleados` WRITE;
/*!40000 ALTER TABLE `direcciones_empleados` DISABLE KEYS */;
INSERT INTO `direcciones_empleados` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30);
/*!40000 ALTER TABLE `direcciones_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones_pacientes`
--

DROP TABLE IF EXISTS `direcciones_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones_pacientes` (
  `direccion_paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `direccion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`direccion_paciente_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `direccion_id` (`direccion_id`),
  CONSTRAINT `direcciones_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `direcciones_pacientes_ibfk_2` FOREIGN KEY (`direccion_id`) REFERENCES `direcciones` (`direccion_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones_pacientes`
--

LOCK TABLES `direcciones_pacientes` WRITE;
/*!40000 ALTER TABLE `direcciones_pacientes` DISABLE KEYS */;
INSERT INTO `direcciones_pacientes` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),(56,56,56),(57,57,57),(58,58,58);
/*!40000 ALTER TABLE `direcciones_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleados_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Alejandro','McAlpine','McAlpine','Senior Engineer','1953-09-19',NULL),(2,'Breannda','Billingsley','Billingsley','Staff','1961-10-15',NULL),(3,'Tse','Herber','Herber','Senior Engineer','1962-10-19',NULL),(4,'Anoosh','Peyn','Peyn','Engineer','1961-11-02',NULL),(5,'Gino','Leonhardt','Leonhardt','Senior Engineer','1952-08-06',NULL),(6,'Udi','Jansh','Jansh','Senior Staff','1959-04-07',NULL),(7,'Satosi','Awdeh','Awdeh','Staff','1963-04-14',NULL),(8,'Kwee','Schusler','Schusler','Senior Engineer','1952-11-13',NULL),(9,'Claudi','Stavenow','Stavenow','Senior Staff','1953-01-07',NULL),(10,'Charlene','Brattka','Brattka','Staff','1962-11-26',NULL),(11,'Margareta','Bierman','Bierman','Assistant Engineer','1960-09-06',NULL),(12,'Reuven','Garigliano','Garigliano','Assistant Engineer','1955-08-20',NULL),(13,'Hisao','Lipner','Lipner','Engineer','1958-01-21',NULL),(14,'Hironoby','Sidou','Sidou','Senior Engineer','1952-05-15',NULL),(15,'Shir','McClurg','McClurg','Engineer','1954-02-23',NULL),(16,'Mokhtar','Bernatsky','Bernatsky','Staff','1955-08-28',NULL),(17,'Gao','Dolinsky','Dolinsky','Engineer','1960-03-09',NULL),(18,'Erez','Ritzmann','Ritzmann','Senior Engineer','1952-06-13',NULL),(19,'Mona','Azuma','Azuma','Senior Staff','1964-04-18',NULL),(20,'Danel','Mondadori','Mondadori','Engineer','1959-12-25',NULL),(21,'Kshitij','Gils','Gils','Senior Staff','1961-10-05',NULL),(22,'Premal','Baek','Baek','Staff','1957-12-03',NULL),(23,'Zhongwei','Rosen','Rosen','Senior Staff','1960-12-17',NULL),(24,'Parviz','Lortz','Lortz','Staff','1963-09-09',NULL),(25,'Vishv','Zockler','Zockler','Engineer','1959-07-23',NULL),(26,'Tuval','Kalloufi','Kalloufi','Senior Engineer','1960-05-25',NULL),(27,'Kenroku','Malabarba','Malabarba','Staff','1962-11-07',NULL),(28,'Somnath','Foote','Foote','Engineer','1962-11-19',NULL),(29,'Xinglin','Eugenio','Eugenio','Technique Lead','1959-07-23',NULL),(30,'Jungsoon','Syrzycki','Syrzcki','Engineer','1954-02-25',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago`
--

DROP TABLE IF EXISTS `formas_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago` (
  `forma_pago_id` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`forma_pago_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago`
--

LOCK TABLES `formas_pago` WRITE;
/*!40000 ALTER TABLE `formas_pago` DISABLE KEYS */;
INSERT INTO `formas_pago` VALUES (1,'Efectivo'),(2,'Tarjeta credito'),(3,'Tarjeta debito'),(4,'Seguro'),(5,'Cheque');
/*!40000 ALTER TABLE `formas_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pago_pacientes`
--

DROP TABLE IF EXISTS `formas_pago_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pago_pacientes` (
  `forma_pago_pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `forma_pago_id` int(11) DEFAULT NULL,
  `detalles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`forma_pago_pac_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `forma_pago_id` (`forma_pago_id`),
  CONSTRAINT `formas_pago_pacientes_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `formas_pago_pacientes_ibfk_2` FOREIGN KEY (`forma_pago_id`) REFERENCES `formas_pago` (`forma_pago_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pago_pacientes`
--

LOCK TABLES `formas_pago_pacientes` WRITE;
/*!40000 ALTER TABLE `formas_pago_pacientes` DISABLE KEYS */;
INSERT INTO `formas_pago_pacientes` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(3,3,1,NULL),(4,4,2,NULL),(5,5,3,''),(6,6,4,NULL),(7,7,5,NULL),(8,8,1,NULL),(9,9,2,NULL),(10,10,3,NULL),(11,11,4,NULL),(12,12,5,NULL),(13,13,NULL,NULL),(14,14,NULL,NULL),(15,15,NULL,NULL),(16,16,NULL,NULL),(17,17,1,NULL),(18,18,2,NULL),(19,19,3,NULL),(20,20,4,NULL),(21,21,5,NULL),(22,22,NULL,NULL),(23,23,NULL,NULL),(24,24,NULL,NULL),(25,25,NULL,NULL),(26,26,1,NULL),(27,27,2,NULL),(28,28,3,NULL),(29,29,4,NULL),(30,30,5,NULL),(31,31,NULL,NULL),(32,32,NULL,NULL),(33,33,NULL,NULL),(34,34,NULL,NULL),(35,35,NULL,NULL),(36,36,NULL,NULL),(37,37,1,NULL),(38,38,2,NULL),(39,39,3,NULL),(40,40,4,NULL),(41,41,5,NULL),(42,42,NULL,NULL),(43,43,NULL,NULL),(44,44,NULL,NULL),(45,45,NULL,NULL),(46,46,1,NULL),(47,47,2,NULL),(48,48,3,NULL),(49,49,4,NULL),(50,50,5,NULL),(51,51,NULL,NULL),(52,52,NULL,NULL),(53,53,1,NULL),(54,54,2,NULL),(55,55,3,NULL),(56,56,4,NULL),(57,57,5,NULL),(58,58,NULL,NULL);
/*!40000 ALTER TABLE `formas_pago_pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_pat` varchar(50) NOT NULL,
  `apellido_mat` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `numero_seguro_social` varchar(50) NOT NULL,
  `genero` enum('masculino','femenino') DEFAULT NULL,
  `telefono_casa` varchar(50) DEFAULT NULL,
  `telefono_trabajo` varchar(50) DEFAULT NULL,
  `telefono_movil` varchar(50) DEFAULT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Georgi','Facello','Facello','1960-02-20',93,1.99,'10001','masculino',NULL,NULL,NULL,NULL),(2,'Bezalel','Simmel','Simmel','1952-07-08',88,1.69,'10002','femenino',NULL,NULL,NULL,NULL),(3,'Parto','Bamford','Bamford','1953-09-29',62,1.88,'10003','masculino',NULL,NULL,NULL,NULL),(4,'Chirstian','Koblick','Koblick','1958-09-05',93,1.84,'10004','masculino',NULL,NULL,NULL,NULL),(5,'Kyoichi','Maliniak','Maliniak','1959-10-31',86,1.89,'10005','masculino',NULL,NULL,NULL,NULL),(6,'Anneke','Preusig','Preusig','1953-04-03',86,1.54,'10006','femenino',NULL,NULL,NULL,NULL),(7,'Tzvetan','Zielinski','Zielinski','1962-07-10',56,1.77,'10007','femenino',NULL,NULL,NULL,NULL),(8,'Saniya','Kalloufi','Kalloufi','1963-11-26',78,1.82,'10008','masculino',NULL,NULL,NULL,NULL),(9,'Sumant','Peac','Peac','1956-12-13',85,1.64,'10009','femenino',NULL,NULL,NULL,NULL),(10,'Duangkaew','Piveteau','Piveteau','1958-07-14',92,1.71,'10010','femenino',NULL,NULL,NULL,NULL),(11,'Mary','Sluis','Sluis','1959-01-27',96,1.96,'10011','femenino',NULL,NULL,NULL,NULL),(12,'Patricio','Bridglnad','Bridgland','1960-08-09',63,1.9,'10012','masculino',NULL,NULL,NULL,NULL),(13,'Eberhardt','Terkki','Terkki','1956-11-14',81,1.64,'10013','masculino',NULL,NULL,NULL,NULL),(14,'Berni','Genin','Genin','1962-12-29',67,1.74,'10014','masculino',NULL,NULL,NULL,NULL),(15,'Guoxiang','Nooteboom','Nooteboom','1953-02-08',60,1.55,'10015','masculino',NULL,NULL,NULL,NULL),(16,'Kazuhito','Cappelleti','Cappelleti','1959-08-10',97,1.71,'10016','masculino',NULL,NULL,NULL,NULL),(17,'Cristinel','Bouloucos','Bouloucos','1963-07-22',66,1.91,'10017','femenino',NULL,NULL,NULL,NULL),(18,'Kazuhide','Peha','Peha','1960-07-20',88,1.51,'10018','femenino',NULL,NULL,NULL,NULL),(19,'Lillian','Haddadi','Haddadi','1959-10-01',85,1.61,'10019','masculino',NULL,NULL,NULL,NULL),(20,'Mayuko','Warwick','Warwick','1959-09-13',96,1.78,'10020','masculino',NULL,NULL,NULL,NULL),(21,'Ramzi','Erde','Erde','1959-08-27',91,1.61,'10021','masculino',NULL,NULL,NULL,NULL),(22,'Shahaf','Famili','Famili','1956-02-26',70,1.81,'10022','masculino',NULL,NULL,NULL,NULL),(23,'Bojan','Montemayor','Montemayor','1960-09-19',86,1.8,'10023','femenino',NULL,NULL,NULL,NULL),(24,'Suzette','Pettey','Pettey','1961-09-21',79,1.74,'10024','femenino',NULL,NULL,NULL,NULL),(25,'Prasadram','Heyers','Heyers','1957-08-14',91,1.95,'10025','masculino',NULL,NULL,NULL,NULL),(26,'Yongqiao','Berztiss','Berztiss','1960-07-22',75,1.91,'10026','masculino',NULL,NULL,NULL,NULL),(27,'Divier','Reistad','Reistad','1952-06-29',57,1.6,'10027','femenino',NULL,NULL,NULL,NULL),(28,'Domenick','Tempesti','Tempesti','1963-07-11',62,1.72,'10028','masculino',NULL,NULL,NULL,NULL),(29,'Otmar','Herbst','Herbst','1961-04-24',77,1.6,'10029','masculino',NULL,NULL,NULL,NULL),(30,'Elvis','Demeyer','Demeyer','1958-05-21',93,1.64,'10030','masculino',NULL,NULL,NULL,NULL),(31,'Karsten','Joslin','Joslin','1953-07-28',95,1.52,'10031','masculino',NULL,NULL,NULL,NULL),(32,'Jeong','Reistad','Reistad','1961-02-26',84,1.6,'10032','femenino',NULL,NULL,NULL,NULL),(33,'Arif','Merlo','Merlo','1954-09-13',92,1.77,'10033','masculino',NULL,NULL,NULL,NULL),(34,'Bader','Swan','Swan','1957-04-04',69,1.56,'10034','masculino',NULL,NULL,NULL,NULL),(35,'Alain','Chappelet','Chappelet','1956-06-06',57,1.55,'10035','masculino',NULL,NULL,NULL,NULL),(36,'Adamantios','Portugali','Portugali','1961-09-01',62,1.99,'10036','masculino',NULL,NULL,NULL,NULL),(37,'Pradeep','Makrucki','Makrucki','1954-05-30',60,1.75,'10037','masculino',NULL,NULL,NULL,NULL),(38,'Huan','Lortz','Lortz','1954-10-01',97,1.88,'10038','masculino',NULL,NULL,NULL,NULL),(39,'Alejandro','Brender','Brender','1959-10-01',92,1.78,'10039','masculino',NULL,NULL,NULL,NULL),(40,'Weiyi','Meriste','Meriste','1959-09-13',97,1.84,'10040','femenino',NULL,NULL,NULL,NULL),(41,'Uri','Lenart','Lenart','1959-08-27',80,1.9,'10041','femenino',NULL,NULL,NULL,NULL),(42,'Magy','Stamatiou','Stamatiou','1956-02-26',69,1.91,'10042','femenino',NULL,NULL,NULL,NULL),(43,'Yishay','Tzvieli','Tzvieli','1960-09-19',65,1.95,'10043','masculino',NULL,NULL,NULL,NULL),(44,'Mingsen','Casley','Casley','1961-09-21',90,1.8,'10044','femenino',NULL,NULL,NULL,NULL),(45,'Moss','Shanbhogue','Shanbhogue','1957-08-14',90,1.97,'10045','masculino',NULL,NULL,NULL,NULL),(46,'Lucien','Rosenbaum','Rosenbaum','1960-07-23',85,1.53,'10046','masculino',NULL,NULL,NULL,NULL),(47,'Zvonko','Nyanchama','Nyanchama','1952-06-29',78,1.65,'10047','masculino',NULL,NULL,NULL,NULL),(48,'Florian','Syrotiuk','Syrotiuk','1963-07-11',76,1.58,'10048','masculino',NULL,NULL,NULL,NULL),(49,'Basil','Tramer','Tramer','1961-04-24',99,1.55,'10049','femenino',NULL,NULL,NULL,NULL),(50,'Yinghua','Dredge','Dredge','1959-05-21',78,1.54,'10050','masculino',NULL,NULL,NULL,NULL),(51,'Hidefumi','Caine','Caine','1953-07-28',54,1.84,'10051','masculino',NULL,NULL,NULL,NULL),(52,'Heping','Nitsch','Nitsch','1961-02-26',85,1.59,'10052','masculino',NULL,NULL,NULL,NULL),(53,'Sanjiv','Zschoche','Zschoche','1954-09-13',52,1.53,'10053','femenino',NULL,NULL,NULL,NULL),(54,'Mayumi','Schueller','Schueller','1957-04-04',75,1.72,'10054','masculino',NULL,NULL,NULL,NULL),(55,'Georgy','Dredge','Dredge','1956-06-06',97,1.61,'10055','masculino',NULL,NULL,NULL,NULL),(56,'Brendon','Bernini','Bernini','1961-09-01',91,1.63,'10056','femenino',NULL,NULL,NULL,NULL),(57,'Ebbe','Callaway','Callaway','1954-05-30',91,1.96,'10057','femenino',NULL,NULL,NULL,NULL),(58,'Berhard','McFarlin','McFarlin','1954-10-01',99,1.96,'10058','masculino',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_pacientes`
--

DROP TABLE IF EXISTS `registro_pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_pacientes` (
  `registro_paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_id` int(11) DEFAULT NULL,
  `cuentas_pacientes_id` int(11) DEFAULT NULL,
  `registro_por_empleado_id` int(11) DEFAULT NULL,
  `fecha_admision` date NOT NULL,
  `condicion_medica` varchar(50) NOT NULL,
  `otros` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registro_paciente_id`),
  KEY `cuentas_pacientes_id` (`cuentas_pacientes_id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `registro_por_empleado_id` (`registro_por_empleado_id`),
  CONSTRAINT `registro_pacientes_ibfk_1` FOREIGN KEY (`cuentas_pacientes_id`) REFERENCES `cuentas_pacientes` (`cuentas_pacientes_id`),
  CONSTRAINT `registro_pacientes_ibfk_2` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`paciente_id`) ON UPDATE CASCADE,
  CONSTRAINT `registro_pacientes_ibfk_3` FOREIGN KEY (`registro_por_empleado_id`) REFERENCES `empleados` (`empleados_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_pacientes`
--

LOCK TABLES `registro_pacientes` WRITE;
/*!40000 ALTER TABLE `registro_pacientes` DISABLE KEYS */;
INSERT INTO `registro_pacientes` VALUES (1,1,1,1,'2017-04-08','Abdominal Aortic Aneurysm',NULL),(2,2,2,2,'2017-04-09','Abdominal Cramps (Heat Cramps)',NULL),(3,3,3,3,'2017-04-10','Abdominal Hernia (Hernia Overview)',NULL),(4,4,4,4,'2017-04-12','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(5,5,5,5,'2017-04-12','Bad Breath',NULL),(6,6,6,6,'2017-04-14','Bad Cholesterol Test (Cholesterol Test)',NULL),(7,7,7,7,'2017-04-15','Baker Cyst',NULL),(8,8,8,8,'2017-04-15','Farting (Intestinal Gas)',NULL),(9,9,9,9,'2017-04-16','Fast Heart Beat (Palpitations Overview)',NULL),(10,10,10,10,'2017-04-17','Fatigue',NULL),(11,11,11,11,'2017-04-18','Fatigue From Cancer (Cancer Fatigue)',NULL),(12,12,12,12,'2017-04-19','Lambliasis (Giardia Lamblia)',NULL),(13,13,13,13,'2017-04-20','Lambliosis (Giardia Lamblia)',NULL),(14,14,14,14,'2017-04-22','Landau-Kleffner Syndrome',NULL),(15,15,15,15,'2017-04-22','Lap Band Surgery (Gastric Banding)',NULL),(16,16,16,16,'2017-04-24','Laparoscopic Liver Biopsy (Liver Biopsy)',NULL),(17,17,17,17,'2017-04-24','Omega-3 Fatty Acids',NULL),(18,18,18,18,'2017-04-25','Onchocerciasis',NULL),(19,19,19,19,'2017-04-27','Onychocryptosis (Ingrown Toenail)',NULL),(20,20,20,20,'2017-04-28','Scarlatina',NULL),(21,21,21,21,'2017-04-28','Scars',NULL),(22,22,22,22,'2017-04-30','Schatzki Ring',NULL),(23,23,23,23,'2017-05-01','Scheuermann\'s Kyphosis (Kyphosis)',NULL),(24,24,24,24,'2017-05-01','Schistosoma guineensis (Schistosomiasis)',NULL),(25,25,25,25,'2017-05-02','Schistosoma haematobium (Schistosomiasis)',NULL),(26,26,26,26,'2017-05-04','Schistosoma japonicum (Schistosomiasis)',NULL),(27,27,27,27,'2017-05-04','Tachycardia (Heart, Rhythm Disorders)',NULL),(28,28,28,28,'2017-05-06','Tachycardia, Paroxysmal Atrial',NULL),(29,29,29,29,'2017-05-07','Tachycardia, Paroxysmal Supraventricular',NULL),(30,30,30,30,'2017-05-07','Tailbone Pain (Coccydynia)',NULL),(31,31,31,1,'2017-05-09','Tailor\'s Bunion (Bunions)',NULL),(32,32,32,2,'2017-05-10','Takayasu Arteritis (Takayasu Disease)',NULL),(33,33,33,3,'2017-05-10','Takayasu Disease',NULL),(34,34,34,4,'2017-05-11','Taking Dental Medications',NULL),(35,35,35,5,'2017-05-13','Tarry Stools ( Stool Color Changes)',NULL),(36,36,36,6,'2017-05-14','Abdominal Aortic Aneurysm',NULL),(37,37,37,7,'2017-05-14','Abdominal Cramps (Heat Cramps)',NULL),(38,38,38,8,'2017-05-15','Abdominal Hernia (Hernia Overview)',NULL),(39,39,39,9,'2017-05-16','Bacterial Vaginosis (Causes, Symptoms, Treatment)',NULL),(40,40,40,10,'2017-05-18','Bad Breath',NULL),(41,41,41,11,'2017-05-18','Bad Cholesterol Test (Cholesterol Test)',NULL),(42,42,42,12,'2017-05-20','Baker Cyst',NULL),(43,43,43,13,'2017-05-21','Farting (Intestinal Gas)',NULL),(44,44,44,14,'2017-05-22','Fast Heart Beat (Palpitations Overview)',NULL),(45,45,45,15,'2017-05-23','Fatigue',NULL),(46,46,46,16,'2017-05-23','Fatigue From Cancer (Cancer Fatigue)',NULL),(47,47,47,17,'2017-05-25','Lamblasis (Giardia Lamblia)',NULL),(48,48,48,18,'2017-05-25','Lambliosis (Giardia Lamblia)',NULL),(49,49,49,19,'2017-05-27','Landau-Kleffner Syndrome',NULL),(50,50,50,20,'2017-05-28','Lap Band Surgery (Gastric Banding)_',NULL),(51,51,51,21,'2017-05-29','Laparoscopic Liver Biopsy (Liver Byopsy)',NULL),(52,52,52,22,'2017-05-29','Omega-3 Fatty Acids',NULL),(53,53,53,23,'2017-05-31','Onchocerciasis',NULL),(54,54,54,24,'2017-05-31','Onychocryotosis (Ingrown Toenail)',NULL),(55,55,55,25,'2017-06-01','Scarlatina',NULL),(56,56,56,26,'2017-06-02','Scars',NULL),(57,57,57,27,'2017-06-04','Schatzki Ring',NULL),(58,58,58,28,'2017-06-05','Scheuermann\'s Kyphosis (Khyposis)',NULL);
/*!40000 ALTER TABLE `registro_pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25  0:03:31
