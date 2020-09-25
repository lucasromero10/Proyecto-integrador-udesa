CREATE DATABASE  IF NOT EXISTS `tpintegrador` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tpintegrador`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: tpintegrador
-- ------------------------------------------------------
-- Server version	5.7.24

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
INSERT INTO `comentarios` VALUES (1,'que facha estas','2018-07-1',1,1),(2,'fachero','2018-07-2',1,1),(3,'fachero que sos','2018-07-3',1,1),(4,'que facha sos','2018-07-4',1,1),(5,'que facha tenes','2018-07-5',2,1),(6,'que facha posees','2018-07-6',2,1),(7,'que facha manejas','2018-07-7',2,1),(8,'que facha llevas','2018-07-8',2,1),(9,'que facha armas','2018-07-9',3,1),(10,'que facha adquiriste','2018-07-10',3,1),(11,'que facha estasiiiii','2018-07-1',1,1),(12,'facheroxxxx','2018-07-2',3,1),(13,'fachero que sosxxxx','2018-07-3',3,1),(14,'que facha sosiiiii','2018-07-4',4,1),(15,'que facha tenesiiiii','2018-07-5',4,1),(16,'que facha poseesiiiii','2018-07-6',4,1),(17,'que facha manejasiiiiiii','2018-07-7',5,1),(18,'que facha llevasiiii','2018-07-8',5,1),(19,'que facha armasiiiii','2018-07-9',5,1),(20,'que facha adquiristeiiiiii','2018-07-10',5,1),(21,'que facha estaseeee','2018-07-1',6,1),(22,'facheroeeee','2018-07-2',6,1),(23,'fachero que soseeeee','2018-07-3',6,1),(24,'que facha soeeees','2018-07-4',6,1),(25,'que facha teneseeee','2018-07-5',7,1),(26,'que facha poseeseeee','2018-07-6',7,1),(27,'que facha manejaseeeee','2018-07-7',7,1),(28,'que facha llevaseeee','2018-07-8',7,1),(29,'que facha armaseeeee','2018-07-9',8,1),(30,'que facha adquiristeeeeee','2018-07-10',8,1),(31,'que facha estasoooooo','2018-07-1',8,1),(32,'facheroooooo','2018-07-2',8,1),(33,'fachero que sosoooo','2018-07-3',9,1),(34,'que facha sosoooo','2018-07-4',9,1),(35,'que facha tenesoooo','2018-07-5',9,1),(36,'que facha poseesoooo','2018-07-6',9,1),(37,'que facha manejasoooo','2018-07-7',10,1),(38,'que facha llevasooooo','2018-07-8',10,1),(39,'que facha armasooooo','2018-07-9',10,1),(40,'que facha adquiristeoooo','2018-07-10',10,1);
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

-- Dump completed on 2020-09-25 20:51:31
