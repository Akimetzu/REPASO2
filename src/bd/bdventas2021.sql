-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bdventas2021
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int NOT NULL AUTO_INCREMENT,
  `idventas` int NOT NULL,
  `idproducto` int NOT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`iddetalle_venta`),
  KEY `fk_detalle_venta_ventas_idx` (`idventas`),
  KEY `fk_detalle_venta_producto1_idx` (`idproducto`),
  CONSTRAINT `fk_detalle_venta_producto1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`),
  CONSTRAINT `fk_detalle_venta_ventas` FOREIGN KEY (`idventas`) REFERENCES `ventas` (`idventas`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,4,1,2000,2),(2,17,1,2000,3),(3,37,1,2500,1),(4,37,3,100,1),(5,38,1,2500,1),(6,38,2,1000,3),(7,38,3,100,4),(8,39,1,2500,1),(9,39,2,1000,1),(10,39,3,100,1),(11,40,1,2500,3),(12,40,2,1000,2),(13,41,1,2500,1),(14,41,2,1000,1),(15,42,1,2500,1),(16,43,1,2500,1),(17,44,1,2500,1),(18,45,1,2500,1),(19,46,1,2500,1),(20,47,1,2500,1),(21,48,1,2500,1),(22,49,1,2500,1),(23,49,3,100,1),(28,54,1,2500,4),(39,54,1,2500,1),(40,54,1,2500,1),(41,57,1,2500,1),(42,58,1,2500,1),(43,59,1,2500,2),(44,60,1,2500,6),(45,61,1,2500,7),(46,62,2,1000,1),(47,63,3,100,3),(48,64,3,100,1),(49,64,2,1000,1),(50,65,3,100,1),(51,65,2,1000,1),(52,66,1,2500,2),(53,66,2,1000,1),(54,67,1,2500,4),(55,68,1,2500,1),(56,68,2,1000,1),(57,69,1,2500,2),(58,70,1,2500,1),(59,70,2,1000,1),(60,71,1,2500,1),(61,72,1,2500,2),(62,73,1,2500,1),(63,73,2,1000,1),(64,74,1,2500,1),(65,74,2,1000,1),(66,75,2,1000,1),(67,75,3,100,1),(68,75,1,2500,1),(69,76,1,2500,1),(70,76,2,1000,1),(71,77,1,2500,1),(72,77,2,1000,1),(73,78,1,2500,1),(74,78,3,100,1),(75,79,1,2500,3),(76,80,2,1000,5),(77,81,2,1000,1),(78,81,3,100,5),(79,82,1,2500,10),(80,83,1,2500,1),(81,83,2,1000,1),(82,84,1,2500,1),(83,84,2,1000,1),(84,85,1,2500,2),(85,85,2,1000,1),(86,86,1,2500,6),(87,86,2,1000,1),(88,86,3,100,3),(89,87,1,2500,5),(90,87,2,1000,1),(91,87,3,100,2),(92,88,1,2500,10);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idpersona` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Josue','Moron','20000112','2012'),(2,'David','Reyna','12345678','6789'),(3,'Ana','Reyes','87654321','567890900'),(4,'Jonas','Ayala','23232323','34343'),(5,'Gilmer','Espinoza','47474747','523562');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `nom_prod` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `codigo` int DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Laptop',2500,65,101),(2,'Pantalla Dell',1000,1,102),(3,'Parlantes',100,8,103);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idrol` int NOT NULL AUTO_INCREMENT,
  `nom_rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Gerente de Ventas'),(3,'Vendedor');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(45) DEFAULT NULL,
  `clave` varchar(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `idrol` int NOT NULL,
  `idpersona` int NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_rol1_idx` (`idrol`),
  KEY `fk_usuario_persona1_idx` (`idpersona`),
  CONSTRAINT `fk_usuario_persona1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `fk_usuario_rol1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'jmoron','123','1',2,1),(2,'dreyna','12345','1',1,2),(3,'jonas','321','1',3,4);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idventas` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `idpersona` int NOT NULL,
  `idcliente` int NOT NULL,
  PRIMARY KEY (`idventas`),
  KEY `fk_ventas_persona1_idx` (`idpersona`),
  KEY `fk_ventas_persona2_idx` (`idcliente`),
  CONSTRAINT `fk_ventas_persona1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`),
  CONSTRAINT `fk_ventas_persona2` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2018-05-22 00:00:00',2,2),(4,'2018-05-22 20:25:10',2,2),(17,'2018-05-24 13:58:47',2,5),(37,'2018-05-28 19:22:46',2,5),(38,'2018-05-28 19:24:47',2,5),(39,'2018-05-29 08:39:59',2,5),(40,'2018-05-29 08:58:33',2,5),(41,'2018-05-29 14:21:15',2,5),(42,'2018-05-29 14:26:04',2,5),(43,'2018-05-29 14:27:16',2,5),(44,'2018-05-29 14:31:29',2,5),(45,'2018-05-29 14:32:40',2,5),(46,'2018-05-29 14:33:34',2,5),(47,'2018-05-29 14:37:22',2,5),(48,'2018-05-29 14:38:38',2,5),(49,'2018-05-30 08:37:11',2,5),(50,'2018-05-30 09:52:30',2,5),(51,'2018-05-30 10:06:26',2,5),(52,'2018-05-30 10:07:42',2,5),(53,'2018-05-30 10:10:22',2,5),(54,'2018-05-30 10:11:09',2,5),(55,'2018-05-30 10:15:30',2,5),(56,'2018-05-30 10:16:44',2,5),(57,'2018-05-30 11:12:44',2,5),(58,'2018-05-30 20:49:24',2,5),(59,'2018-05-30 20:50:37',2,5),(60,'2018-05-30 20:51:03',2,5),(61,'2018-05-30 20:51:33',2,5),(62,'2018-05-30 20:53:07',2,5),(63,'2018-05-30 20:55:00',2,5),(64,'2018-05-30 20:58:15',2,5),(65,'2018-05-30 21:01:26',2,5),(66,'2018-05-31 09:25:38',2,5),(67,'2019-05-20 15:37:36',2,1),(68,'2021-05-31 15:18:59',2,5),(69,'2021-05-31 15:22:28',2,5),(70,'2021-06-25 10:41:26',2,5),(71,'2021-08-15 10:27:54',2,5),(72,'2021-08-15 10:29:31',2,5),(73,'2021-08-24 10:18:43',2,5),(74,'2021-08-25 21:28:20',2,5),(75,'2022-04-01 19:07:08',2,5),(76,'2022-04-06 10:07:26',2,5),(77,'2022-04-11 20:44:54',2,5),(78,'2022-04-13 07:47:33',2,5),(79,'2022-04-18 10:55:47',2,5),(80,'2022-04-18 10:57:03',2,5),(81,'2022-06-09 08:54:36',2,5),(82,'2022-06-09 08:58:29',2,5),(83,'2022-08-27 17:59:45',2,5),(84,'2022-09-10 19:03:51',2,5),(85,'2022-09-21 10:00:03',2,5),(86,'2022-10-15 18:54:12',2,5),(87,'2022-10-19 11:04:58',2,5),(88,'2022-12-03 19:27:59',2,5);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03 19:42:20
