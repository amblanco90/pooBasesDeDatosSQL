-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.99.100    Database: adsi
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aprendices`
--

DROP TABLE IF EXISTS `aprendices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aprendices` (
  `id_aprendices` int(11) NOT NULL AUTO_INCREMENT,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `fk_curso` int(11) DEFAULT NULL,
  `jornada` varchar(5) DEFAULT 'M' COMMENT 'Sólo toma Valores M= Mañana y T=Tarde',
  PRIMARY KEY (`id_aprendices`),
  KEY `fk_aprendices_cursos_idx` (`fk_curso`),
  CONSTRAINT `fk_aprendices_cursos` FOREIGN KEY (`fk_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Esta tabla almacena la información de los aprendices.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendices`
--

LOCK TABLES `aprendices` WRITE;
/*!40000 ALTER TABLE `aprendices` DISABLE KEYS */;
INSERT INTO `aprendices` VALUES (1,'CABALLERO','MONTENEGRO','JUAN MANUEL','1079940222',1,'M'),(2,'CARO','VANEGAS','OSMAN ALFONSO','1045738818',2,'M'),(3,'DOVALE','ARRIETA','JESUS ENRIQUE','1002500235',3,'M'),(4,'GALOFRE','ALVAREZ','RODOLFO ANTONIO','1050973574',4,'M'),(5,'GUTIERREZ','CASTRO','EDINSON MANUEL','1234094757',5,'M'),(6,'GUTIERREZ','FRUTO','ROBERTO MIGUEL','1047361068',3,'M'),(7,'MACHADO','GUZMAN','GILBERT ELIAS','1002130170',3,'M'),(8,'MACKENZIE','GUTIERREZ','MIGUEL ANGEL','1143453009',1,'M'),(9,'MARTINEZ','ARIZA','HEYDER LUIS','1044332475',4,'M'),(10,'MONROY','MEDINA','DIEGO ALFREDO','1002234301',4,'M'),(11,'MUÑOZ','PIZARRO','SAMIRA MARGARITA','1047362240',4,'M'),(12,'PASOS','RUIZ','TALHIA','1042460474',4,'M'),(13,'PATIÑO','SUAREZ','CRISTIAN MANUEL','1081835378',4,'M'),(14,'PEREZ','ESQUEA','KATERIN JOHANA','1081765262',4,'M'),(15,'POLO','CASTILLO','JESUS ALBERTO','1001938580',4,'M'),(16,'RODRIGUEZ','FIGUEROA','JORDY ANDRES','1234888222',4,'M'),(17,'RODRIGUEZ','LERMA','JOSE GREGORIO','1002420753',4,'M'),(18,'ROJANO','PACHECO','ALEXANDER','1043150470',4,'M'),(19,'SALGADO','CONTRERAS','NILSON JOSE','1001821306',4,'M'),(20,'SANTANA','RIOS','ERBIN ANTONIO','1234093264',4,'M'),(21,'SUAREZ','SALAS','HUMBERTO LUIS','1140882798',5,'M'),(22,'TORRES','ARCHBOLD','ANGEL JUNIOR','1042464794',2,'M'),(23,'TORRES','BULA','JHON MIGUEL','1010148563',3,'M'),(24,'VIZCAINO','DIAZ','BRIAN SNEYDER','1042457257',3,'M'),(25,'CANTIILLO','CARRILLO','RICARDO ENRIQUE','72201581',3,'M');
/*!40000 ALTER TABLE `aprendices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `IND_UNQ` (`nombre_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'ADSI 47'),(2,'ADSI 48'),(3,'ADSI 49'),(4,'ADSI 50'),(5,'ADSI 51'),(6,'ADSI 52');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profesor` (
  `doc_prof` varchar(11) NOT NULL,
  `nom_prof` varchar(30) NOT NULL,
  `ape_prof` varchar(30) NOT NULL,
  `cate_prof` int(11) NOT NULL,
  `sal_prof` int(11) NOT NULL,
  PRIMARY KEY (`doc_prof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Esta tabla fue creada por Melida';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES ('1098765789','Alejandra','Torres',4,1100000),('13826789','Maritza','Angarita',1,550000),('63502720','Martha','Rojas',2,690000),('91216904','Carlos','Pérez',3,950000);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-20 15:11:32
