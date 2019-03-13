-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: peliculas
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Current Database: `peliculas`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `peliculas` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `peliculas`;

--
-- Table structure for table `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alquiler` (
  `id_alquiler` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) NOT NULL,
  `estado_devolucion` varchar(45) NOT NULL,
  `dias_alquiler` varchar(45) NOT NULL,
  `fk_pelicula` int(11) NOT NULL,
  `fk_cliente` int(11) NOT NULL,
  PRIMARY KEY (`id_alquiler`),
  KEY `fk_alquiler_peliculas_idx` (`fk_pelicula`),
  KEY `fk_alquiler_clientes_idx` (`fk_cliente`),
  CONSTRAINT `fk_alquiler_clientes` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_clientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_alquiler_peliculas` FOREIGN KEY (`fk_pelicula`) REFERENCES `peliculas` (`idpeliculas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler`
--

LOCK TABLES `alquiler` WRITE;
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
INSERT INTO `alquiler` VALUES (2,'01/01/19','0','7',1,2),(3,'01/01/19','0','8',2,1);
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `numero_documento` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'ricardo enrique','cantillo carrillo','cc','72201581','calle 63 #25 30',' 3004464149','recantilloc@gmail.com','masculino'),(2,'milagros','betancourt sarmiento','cc','1045731250','calle 66 a # 9a 132','3004464149','milagros.betancourt23@hotmail.com','femenino'),(3,'carlos andres','polo sarmiento','cc','45454','cra 12 j # 67-117','3016518357','cps','M');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas` (
  `idpeliculas` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `duracion` varchar(45) NOT NULL,
  `estado_disponibilidad` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`idpeliculas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'rapidos y furiosos','accion','1.20 m','SI','10000'),(2,'busquedad implacable','accion','1.50 m','SI','15000');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'peliculas'
--

--
-- Current Database: `pooadsi`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pooadsi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pooadsi`;

--
-- Table structure for table `aprendices`
--

DROP TABLE IF EXISTS `aprendices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprendices` (
  `id_aprendices` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Consecutivo Automático de la tabla',
  `documento` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(5) NOT NULL,
  `fk_curso` int(11) NOT NULL,
  PRIMARY KEY (`id_aprendices`),
  UNIQUE KEY `documento_UNIQUE` (`documento`),
  KEY `fk_aprendiz_curso_idx` (`fk_curso`),
  CONSTRAINT `fk_aprendiz_curso` FOREIGN KEY (`fk_curso`) REFERENCES `cursos` (`id_cursos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendices`
--

LOCK TABLES `aprendices` WRITE;
/*!40000 ALTER TABLE `aprendices` DISABLE KEYS */;
INSERT INTO `aprendices` VALUES (1,'1005551759','JAMINSON SISEDRIT','CAICEDO ACUÑA',18,'M',1),(2,'1192816824','DARWIN ANDRES','CANTILLO GARCIA',18,'M',1),(3,'1044626936','DANIEL JOSE','CHAVEAU CANTILLO',19,'M',1),(4,'1001995123','LUIS ENRIQUE','DIAZ BARRIOS',20,'M',1),(5,'1004189131','CARLOS ANDRES','DIAZ NAVARRO',18,'M',1),(6,'1002035498','DAVID ALEXANDER','FERRERO RUDAS',18,'M',1),(7,'1001945072','ALVARO ANDRES','FONTALVO IGLESIA',18,'M',1),(8,'1045761267','MANUEL DAVID','GUZMAN DURANGO',18,'M',1),(9,'1143456673','BREINER ANDRES','HERRERA ORTEGA',18,'M',1),(10,'1001873296','JOSE DARIO','LIZCANO SALGUEDO',18,'M',1),(11,'1048222117','JEAN CARLOS','LONDOÑO GUETTE',18,'M',1),(12,'1143144949','ALEX IVAN','MACIAS SOCARRAS',18,'M',1),(13,'1047361825','ELIECER JULIO','MALDONADO PEREZ',18,'M',1),(14,'1048326013','DANIEL STEVEN','MONROY MEDINA',18,'M',1),(15,'1001871766','ANDRES DAVID','PADILLA BARRIOS',18,'M',1),(16,'1046273346','JUAN CARLOS','PARRA GUERRERO',18,'M',1),(17,'1007730301','MELIDA DEL CARMEN','RAMBAL PEREZ',18,'F',1),(18,'1045723150','STEVEN JOHNATAN','RUIZ PEREZ',18,'M',1),(19,'1002094295','MARLIO DE JESUS','SARMIENTO JULIO',18,'M',2),(20,'1004487679','JOSE JUNIOR','VALLEJO QUIROZ',18,'M',1),(21,'1002027490','CRISTIAN ANDRES','VARGAS CIFUENTES',18,'M',1),(22,'1001873286','JUAN FELIPE','WILCHES SARABIA',18,'M',1);
/*!40000 ALTER TABLE `aprendices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) NOT NULL,
  `jornada` varchar(5) NOT NULL COMMENT 'M = Mañana, T=Tarde, N = Noche',
  PRIMARY KEY (`id_cursos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'ADSI 51','T'),(2,'ADSI 5X','M');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id_materias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(45) NOT NULL,
  `intensidad` int(11) NOT NULL,
  PRIMARY KEY (`id_materias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Programación',12),(2,'Inglés',8),(3,'Matemáticas',4),(4,'Salud Ocupacional',2);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_curso`
--

DROP TABLE IF EXISTS `materias_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias_curso` (
  `id_materias_curso` int(11) NOT NULL AUTO_INCREMENT,
  `fk_curso` int(11) NOT NULL,
  `fk_materia` int(11) NOT NULL,
  PRIMARY KEY (`id_materias_curso`),
  KEY `fk_xxxx_idx` (`fk_curso`),
  KEY `fk_yyy_idx` (`fk_materia`),
  CONSTRAINT `fk_xxxx` FOREIGN KEY (`fk_curso`) REFERENCES `cursos` (`id_cursos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_yyy` FOREIGN KEY (`fk_materia`) REFERENCES `materias` (`id_materias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_curso`
--

LOCK TABLES `materias_curso` WRITE;
/*!40000 ALTER TABLE `materias_curso` DISABLE KEYS */;
INSERT INTO `materias_curso` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2);
/*!40000 ALTER TABLE `materias_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pooadsi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 16:23:04
