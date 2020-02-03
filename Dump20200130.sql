-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mipedido
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

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
-- Table structure for table `mp_categoria`
--

DROP TABLE IF EXISTS `mp_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_categoria`
--

LOCK TABLES `mp_categoria` WRITE;
/*!40000 ALTER TABLE `mp_categoria` DISABLE KEYS */;
INSERT INTO `mp_categoria` VALUES (1,'Construccion',NULL,'A'),(2,'Electricidad',NULL,'A');
/*!40000 ALTER TABLE `mp_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_categoria_sub`
--

DROP TABLE IF EXISTS `mp_categoria_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_categoria_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `is_destacada` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria_idx` (`id_categoria`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `mp_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_categoria_sub`
--

LOCK TABLES `mp_categoria_sub` WRITE;
/*!40000 ALTER TABLE `mp_categoria_sub` DISABLE KEYS */;
INSERT INTO `mp_categoria_sub` VALUES (13,1,'Aceros','uploads/1/2019-12/acero.jpg','S'),(14,1,'Aditivos','uploads/1/2019-12/aditivos.jpg','S'),(15,2,'Accesorios','uploads/5/2019-12/acero.jpg','S');
/*!40000 ALTER TABLE `mp_categoria_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_producto`
--

DROP TABLE IF EXISTS `mp_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_subcategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_subcategoria_producto_idx` (`id_subcategoria`),
  CONSTRAINT `id_subcategoria_producto` FOREIGN KEY (`id_subcategoria`) REFERENCES `mp_categoria_sub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_producto`
--

LOCK TABLES `mp_producto` WRITE;
/*!40000 ALTER TABLE `mp_producto` DISABLE KEYS */;
INSERT INTO `mp_producto` VALUES (2,13,'Planchas','25','uploads/5/2019-12/acero.jpg');
/*!40000 ALTER TABLE `mp_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-30 20:23:12
