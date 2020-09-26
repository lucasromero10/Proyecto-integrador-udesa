CREATE DATABASE  IF NOT EXISTS `tpintegrador` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tpintegrador`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: tpintegrador
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL,
  `comentario` varchar(45) NOT NULL,
  `fecha de comentario` varchar(45) NOT NULL,
  `idpost` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomentarios`),
  KEY `idpost_idx` (`idpost`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `idpost` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idposts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'que facha estas','2018-07-1',1,1),(2,'fachero','2018-07-2',1,1),(3,'fachero que sos','2018-07-3',1,1),(4,'que facha sos','2018-07-4',1,1),(5,'que facha tenes','2018-07-5',2,1),(6,'que facha posees','2018-07-6',2,1),(7,'que facha manejas','2018-07-7',2,1),(8,'que facha llevas','2018-07-8',2,1),(9,'que facha armas','2018-07-9',3,1),(10,'que facha adquiriste','2018-07-10',3,1),(11,'que facha estasiiiii','2018-07-1',1,1),(12,'facheroxxxx','2018-07-2',3,1),(13,'fachero que sosxxxx','2018-07-3',3,1),(14,'que facha sosiiiii','2018-07-4',4,1),(15,'que facha tenesiiiii','2018-07-5',4,1),(16,'que facha poseesiiiii','2018-07-6',4,1),(17,'que facha manejasiiiiiii','2018-07-7',5,1),(18,'que facha llevasiiii','2018-07-8',5,1),(19,'que facha armasiiiii','2018-07-9',5,1),(20,'que facha adquiristeiiiiii','2018-07-10',5,1),(21,'que facha estaseeee','2018-07-1',6,1),(22,'facheroeeee','2018-07-2',6,1),(23,'fachero que soseeeee','2018-07-3',6,1),(24,'que facha soeeees','2018-07-4',6,1),(25,'que facha teneseeee','2018-07-5',7,1),(26,'que facha poseeseeee','2018-07-6',7,1),(27,'que facha manejaseeeee','2018-07-7',7,1),(28,'que facha llevaseeee','2018-07-8',7,1),(29,'que facha armaseeeee','2018-07-9',8,1),(30,'que facha adquiristeeeeee','2018-07-10',8,1),(31,'que facha estasoooooo','2018-07-1',8,1),(32,'facheroooooo','2018-07-2',8,1),(33,'fachero que sosoooo','2018-07-3',9,1),(34,'que facha sosoooo','2018-07-4',9,1),(35,'que facha tenesoooo','2018-07-5',9,1),(36,'que facha poseesoooo','2018-07-6',9,1),(37,'que facha manejasoooo','2018-07-7',10,1),(38,'que facha llevasooooo','2018-07-8',10,1),(39,'que facha armasooooo','2018-07-9',10,1),(40,'que facha adquiristeoooo','2018-07-10',10,1),(41,'que facha estasaaaa','2018-07-1',1,2),(42,'facheroaaaaa','2018-07-2',1,2),(43,'fachero que sosaaaaa','2018-07-3',1,2),(44,'que facha sosaaaa','2018-07-4',1,2),(45,'que facha tenesaaaa','2018-07-5',2,2),(46,'que facha poseesaaaa','2018-07-6',2,2),(47,'que facha manejasaaaa','2018-07-7',2,2),(48,'que facha llevasaaaa','2018-07-8',2,2),(49,'que facha armasaaaa','2018-07-9',3,2),(50,'que facha adquiristeaaaa','2018-07-10',3,2),(51,'que facha estasaaaa','2018-07-1',3,2),(52,'facheroaaaa','2018-07-2',3,2),(53,'fachero que sosaaaaa','2018-07-3',4,2),(54,'que facha sosaaaaa','2018-07-4',4,2),(55,'que facha tenesaaaaa','2018-07-5',4,2),(56,'que facha poseesaaaa','2018-07-6',4,2),(57,'que facha manejasaaaaa','2018-07-7',5,2),(58,'que facha llevasaaaaa','2018-07-8',5,2),(59,'que facha armasaaaa','2018-07-9',5,2),(60,'que facha adquiristeaaaa','2018-07-10',5,2),(61,'que facha estasaaaaa','2018-07-1',6,2),(62,'facheroaaaaa','2018-07-2',6,2),(63,'fachero que soseaaaaa','2018-07-3',6,2),(64,'que facha soaaaaa','2018-07-4',6,2),(65,'que facha teneaaaa','2018-07-5',7,2),(66,'que facha poseeaaaa','2018-07-6',7,2),(67,'que facha manejasaaaa','2018-07-7',7,2),(68,'que facha llevasaaaa','2018-07-8',7,2),(69,'que facha armasaaaaa','2018-07-9',8,2),(70,'que facha adquiriaaaa','2018-07-10',8,2),(71,'que facha estasaaaa','2018-07-1',8,2),(72,'facheraaaa','2018-07-2',8,2),(73,'fachero que soaaaaa','2018-07-3',9,2),(74,'que facha sosaaaa','2018-07-4',9,2),(75,'que facha tenesaaaaa','2018-07-5',9,2),(76,'que facha poseeaaaa','2018-07-6',9,2),(77,'que facha manejasaaaa','2018-07-7',10,2),(78,'que facha llevasaaaa','2018-07-8',10,2),(79,'que facha armasaaaa','2018-07-9',10,2),(80,'que facha adquiristaaaaa','2018-07-10',10,2),(81,'que facha estasaaaa','2018-07-1',1,3),(82,'facheroaaaaa','2018-07-2',1,3),(83,'fachero que sosaaaaa','2018-07-3',1,3),(84,'que facha sosaaaa','2018-07-4',1,3),(85,'que facha tenesaaaa','2018-07-5',2,3),(86,'que facha poseesaaaa','2018-07-6',2,3),(87,'que facha manejasaaaa','2018-07-7',2,3),(88,'que facha llevasaaaa','2018-07-8',2,3),(89,'que facha armasaaaa','2018-07-9',3,3),(90,'que facha adquiristeaaaa','2018-07-10',3,3),(91,'que facha estasaaaa','2018-07-1',3,3),(92,'facheroaaaa','2018-07-2',3,2),(93,'fachero que sosaaaaa','2018-07-3',4,3),(94,'que facha sosaaaaa','2018-07-4',4,3),(95,'que facha tenesaaaaa','2018-07-5',4,3),(96,'que facha poseesaaaa','2018-07-6',4,3),(97,'que facha manejasaaaaa','2018-07-7',5,3),(98,'que facha llevasaaaaa','2018-07-8',5,3),(99,'que facha armasaaaa','2018-07-9',5,3),(100,'que facha adquiristeaaaa','2018-07-10',5,3),(101,'que facha estasaaaaa','2018-07-1',6,3),(102,'facheroaaaaa','2018-07-2',6,3),(103,'fachero que soseaaaaa','2018-07-3',6,3),(104,'que facha soaaaaa','2018-07-4',6,3),(105,'que facha teneaaaa','2018-07-5',7,3),(106,'que facha poseeaaaa','2018-07-6',7,3),(107,'que facha manejasaaaa','2018-07-7',7,3),(108,'que facha llevasaaaa','2018-07-8',7,3),(109,'que facha armasaaaaa','2018-07-9',8,3),(110,'que facha adquiriaaaa','2018-07-10',8,3),(111,'que facha estasaaaa','2018-07-1',8,3),(112,'facheraaaa','2018-07-2',8,2),(113,'fachero que soaaaaa','2018-07-3',9,3),(114,'que facha sosaaaa','2018-07-4',9,3),(115,'que facha tenesaaaaa','2018-07-5',9,3),(116,'que facha poseeaaaa','2018-07-6',9,3),(117,'que facha manejasaaaa','2018-07-7',10,3),(118,'que facha llevasaaaa','2018-07-8',10,3),(119,'que facha armasaaaa','2018-07-9',10,3),(120,'que facha adquiristaaaaa','2018-07-10',10,3),(121,'uno que jode poco','2018-07-1',1,4),(122,'uno que sale poco','2018-07-2',1,4),(123,'uno con poca facha','2018-07-3',1,4),(124,'uno que juega poco','2018-07-4',1,4),(125,'nanana estas ido amigo','2018-07-5',2,4),(126,'uno que baila poco','2018-07-6',2,4),(127,'se requiere licensia para manejar esa facha','2018-07-7',2,4),(128,'jajaj es por ahi rey!','2018-07-8',2,4),(129,'animal','2018-07-9',3,4),(130,'rey de reyes!','2018-07-10',3,4),(131,'que facha estasaaaa','2018-07-1',3,4),(132,'facheroaaaa','2018-07-2',3,4),(133,'fachero que sosaaaaa','2018-07-3',4,4),(134,'que facha sosaaaaa','2018-07-4',4,4),(135,'que facha tenesaaaaa','2018-07-5',4,4),(136,'que facha poseesaaaa','2018-07-6',4,4),(137,'que facha manejasaaaaa','2018-07-7',5,4),(138,'que facha llevasaaaaa','2018-07-8',5,4),(139,'que facha armasaaaa','2018-07-9',5,4),(140,'que facha adquiristeaaaa','2018-07-10',5,4),(141,'que facha estasaaaaa','2018-07-1',6,4),(142,'facheroaaaaa','2018-07-2',6,4),(143,'fachero que soseaaaaa','2018-07-3',6,4),(144,'que facha soaaaaa','2018-07-4',6,4),(145,'que facha teneaaaa','2018-07-5',7,4),(146,'que facha poseeaaaa','2018-07-6',7,4),(147,'que facha manejasaaaa','2018-07-7',7,4),(148,'que facha llevasaaaa','2018-07-8',7,4),(149,'que facha armasaaaaa','2018-07-9',8,4),(150,'que facha adquiriaaaa','2018-07-10',8,4),(151,'que facha estasaaaa','2018-07-1',8,4),(152,'facheraaaa','2018-07-2',8,4),(153,'fachero que soaaaaa','2018-07-3',9,4),(154,'que facha sosaaaa','2018-07-4',9,4),(155,'que facha tenesaaaaa','2018-07-5',9,4),(156,'que facha poseeaaaa','2018-07-6',9,4),(157,'que facha manejasaaaa','2018-07-7',10,4),(158,'que facha llevasaaaa','2018-07-8',10,4),(159,'que facha armasaaaa','2018-07-9',10,4),(160,'que facha adquiristaaaaa','2018-07-10',10,4),(161,'que facha estasaaaa','2018-07-1',1,5),(162,'facheroaaaaa','2018-07-2',1,5),(163,'fachero que sosaaaaa','2018-07-3',1,5),(164,'que facha sosaaaa','2018-07-4',1,5),(165,'que facha tenesaaaa','2018-07-5',2,5),(166,'que facha poseesaaaa','2018-07-6',2,5),(167,'que facha manejasaaaa','2018-07-7',2,5),(168,'que facha llevasaaaa','2018-07-8',2,5),(169,'que facha armasaaaa','2018-07-9',3,5),(170,'que facha adquiristeaaaa','2018-07-10',3,5),(171,'que facha estasaaaa','2018-07-1',3,5),(172,'facheroaaaa','2018-07-2',3,5),(173,'fachero que sosaaaaa','2018-07-3',4,5),(174,'que facha sosaaaaa','2018-07-4',4,5),(175,'que facha tenesaaaaa','2018-07-5',4,5),(176,'que facha poseesaaaa','2018-07-6',4,5),(177,'que facha manejasaaaaa','2018-07-7',5,5),(178,'que facha llevasaaaaa','2018-07-8',5,5),(179,'que facha armasaaaa','2018-07-9',5,5),(180,'que facha adquiristeaaaa','2018-07-10',5,5),(181,'que facha estasaaaaa','2018-07-1',6,5),(182,'facheroaaaaa','2018-07-2',6,5),(183,'fachero que soseaaaaa','2018-07-3',6,5),(184,'que facha soaaaaa','2018-07-4',6,5),(185,'que facha teneaaaa','2018-07-5',7,5),(186,'que facha poseeaaaa','2018-07-6',7,5),(187,'que facha manejasaaaa','2018-07-7',7,5),(188,'que facha llevasaaaa','2018-07-8',7,5),(189,'que facha armasaaaaa','2018-07-9',8,5),(190,'que facha adquiriaaaa','2018-07-10',8,5),(191,'que facha estasaaaa','2018-07-1',8,5),(192,'facheraaaa','2018-07-2',8,5),(193,'fachero que soaaaaa','2018-07-3',9,5),(194,'que facha sosaaaa','2018-07-4',9,5),(195,'que facha tenesaaaaa','2018-07-5',9,5),(196,'que facha poseeaaaa','2018-07-6',9,5),(197,'que facha manejasaaaa','2018-07-7',10,5),(198,'que facha llevasaaaa','2018-07-8',10,5),(199,'que facha armasaaaa','2018-07-9',10,5),(200,'que facha adquiristaaaaa','2018-07-10',10,5);
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `idposts` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `urlimagen` varchar(45) NOT NULL,
  `pie de foto` varchar(45) DEFAULT NULL,
  `fecha de posteo` datetime DEFAULT NULL,
  PRIMARY KEY (`idposts`),
  KEY `idusuario_idx` (`idUsuario`),
  CONSTRAINT `idusuario2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,'aaaa','capo','2015-05-19 00:00:00'),(2,1,'aaaa','bien de pilcha','2015-05-20 00:00:00'),(3,1,'aaaa','los pibes','2015-05-21 00:00:00'),(4,1,'aaaa','fachero','2015-05-22 00:00:00'),(5,1,'aaaa','ñerys','2015-05-19 00:00:00'),(6,1,'aaaa','padel en pinguinos','2015-05-20 00:00:00'),(7,1,'aaaa','jeto','2015-05-21 00:00:00'),(8,1,'aaaa','maxi meza','2015-05-22 00:00:00'),(9,1,'aaaa','morfi con la banda','2015-05-19 00:00:00'),(10,1,'aaaa','pipis','2015-05-20 00:00:00'),(11,2,'eeee','caposs','2016-05-19 00:00:00'),(12,2,'eeee','bien de pilchass','2016-05-20 00:00:00'),(13,2,'eeee','los pibesss','2016-05-21 00:00:00'),(14,2,'eeee','facheross','2016-05-22 00:00:00'),(15,2,'eeee','ñerysss','2016-05-23 00:00:00'),(16,2,'eeee','padel en pinguinosss','2016-05-24 00:00:00'),(17,2,'eeee','jetoss','2016-05-25 00:00:00'),(18,2,'eeee','maxi mezass','2016-05-26 00:00:00'),(19,2,'eeee','morfi con la bandass','2016-05-17 00:00:00'),(20,2,'eeee','pipisss','2016-05-28 00:00:00'),(21,3,'iiii','caposs aa','2017-07-01 00:00:00'),(22,3,'iiii','bien de pilchass aa','2017-07-11 00:00:00'),(23,3,'iiii','los pibesss aa','2017-07-12 00:00:00'),(24,3,'iiii','facheross aa','2017-07-13 00:00:00'),(25,3,'iiii','ñerysss aa','2017-07-14 00:00:00'),(26,3,'iiii','padel en pinguinosss aa','2017-07-15 00:00:00'),(27,3,'iiii','jetoss aa','2017-07-16 00:00:00'),(28,3,'iiii','maxi mezass aa','2017-07-17 00:00:00'),(29,3,'iiii','morfi con la bandass aa','2017-07-18 00:00:00'),(30,3,'iiii','pipisss aa','2017-07-19 00:00:00'),(31,4,'oooo','buenaaa','2018-07-01 00:00:00'),(32,4,'oooo','saliendooo','2018-07-02 00:00:00'),(33,4,'oooo','amigos','2018-07-03 00:00:00'),(34,4,'oooo','que bien estamos','2018-07-04 00:00:00'),(35,4,'oooo','ojala salir','2018-07-05 00:00:00'),(36,4,'oooo','tenis con los pibes','2018-07-06 00:00:00'),(37,4,'oooo','roseee','2018-07-07 00:00:00'),(38,4,'oooo','se sale','2018-07-08 00:00:00'),(39,4,'oooo','morfando con la banda','2018-07-09 00:00:00'),(40,4,'oooo','que no llueva hoyy','2018-07-10 00:00:00'),(41,5,'uuuu','buenaaasssss','2019-07-10 00:00:00'),(42,5,'uuuu','saliendoooxxxx','2019-07-12 00:00:00'),(43,5,'uuuu','amigosxxxx','2019-07-13 00:00:00'),(44,5,'uuuu','que bien estamosxxxx','2019-07-14 00:00:00'),(45,5,'uuuu','ojala salirxxxx','2019-07-15 00:00:00'),(46,5,'uuuu','tenis con los pibesxxxx','2019-07-16 00:00:00'),(47,5,'uuuu','roseeexxxx','2019-07-17 00:00:00'),(48,5,'uuuu','se salexxxx','2019-07-18 00:00:00'),(49,5,'uuuu','morfando con la bandaxxxx','2019-07-19 00:00:00'),(50,5,'uuuu','que no llueva hoyyxxxx','2019-07-20 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha de nacimiento` datetime DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Tony Montana','1957-05-19 00:00:00',63),(2,'Vito Corleone','1933-09-01 00:00:00',87),(3,'Michael Corleone','1960-07-10 00:00:00',59),(4,'Jhon Gotti','1940-10-27 00:00:00',79),(5,'Michael Franzese','1951-05-27 00:00:00',69);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-25 22:08:11
