-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: venus
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `Id_Administrador` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre_Administrador` varchar(70) DEFAULT NULL,
  `Apellido_Administrador` varchar(70) DEFAULT NULL,
  `Correo_Administrador` varchar(70) NOT NULL,
  `Username_Administrador` varchar(70) NOT NULL,
  `Contrasenia_Administrador` varchar(20) NOT NULL,
  `Imagen_Usuario` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id_Administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catchat`
--

DROP TABLE IF EXISTS `catchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catchat` (
  `Id_CatChat` int(1) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_CatChat`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catchat`
--

LOCK TABLES `catchat` WRITE;
/*!40000 ALTER TABLE `catchat` DISABLE KEYS */;
INSERT INTO `catchat` VALUES (1,'Publico'),(2,'Privado');
/*!40000 ALTER TABLE `catchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catinteraccion`
--

DROP TABLE IF EXISTS `catinteraccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catinteraccion` (
  `Id_CatInteraccion` int(1) NOT NULL AUTO_INCREMENT,
  `interaccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_CatInteraccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catinteraccion`
--

LOCK TABLES `catinteraccion` WRITE;
/*!40000 ALTER TABLE `catinteraccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `catinteraccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catnotificacion`
--

DROP TABLE IF EXISTS `catnotificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catnotificacion` (
  `Id_CatNotificacion` int(2) NOT NULL AUTO_INCREMENT,
  `notificacion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_CatNotificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catnotificacion`
--

LOCK TABLES `catnotificacion` WRITE;
/*!40000 ALTER TABLE `catnotificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `catnotificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catpeticion`
--

DROP TABLE IF EXISTS `catpeticion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catpeticion` (
  `Id_CatP` int(1) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_CatP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catpeticion`
--

LOCK TABLES `catpeticion` WRITE;
/*!40000 ALTER TABLE `catpeticion` DISABLE KEYS */;
/*!40000 ALTER TABLE `catpeticion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cattallas`
--

DROP TABLE IF EXISTS `cattallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cattallas` (
  `Id_catTalla` int(10) NOT NULL AUTO_INCREMENT,
  `talla` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_catTalla`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cattallas`
--

LOCK TABLES `cattallas` WRITE;
/*!40000 ALTER TABLE `cattallas` DISABLE KEYS */;
INSERT INTO `cattallas` VALUES (1,'Extra Chico'),(2,'Chico'),(3,'Mediano'),(4,'Grande'),(5,'Extra Grande');
/*!40000 ALTER TABLE `cattallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cattipoprenda`
--

DROP TABLE IF EXISTS `cattipoprenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cattipoprenda` (
  `Id_catPrenda` int(10) NOT NULL AUTO_INCREMENT,
  `prenda` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_catPrenda`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cattipoprenda`
--

LOCK TABLES `cattipoprenda` WRITE;
/*!40000 ALTER TABLE `cattipoprenda` DISABLE KEYS */;
INSERT INTO `cattipoprenda` VALUES (1,'Falda'),(2,'Playera'),(3,'Blusa'),(4,'Pantalón'),(5,'Short'),(6,'Accesorio'),(7,'Gorro/Gorra'),(8,'Sueter'),(9,'Sudadera'),(10,'Chamarra'),(11,'Otro'),(12,'Vestido');
/*!40000 ALTER TABLE `cattipoprenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `Id_Chat` int(15) NOT NULL AUTO_INCREMENT,
  `Id_Creador` int(10) DEFAULT NULL,
  `Id_CatChat` int(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Chat`),
  KEY `Id_Creador` (`Id_Creador`),
  KEY `Id_CatChat` (`Id_CatChat`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`Id_Creador`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`Id_CatChat`) REFERENCES `catchat` (`Id_CatChat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo`
--

DROP TABLE IF EXISTS `ciclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclo` (
  `Id_Ciclo` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `duracionC` int(2) DEFAULT NULL,
  `duracionS` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id_Ciclo`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `ciclo_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo`
--

LOCK TABLES `ciclo` WRITE;
/*!40000 ALTER TABLE `ciclo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `Id_Contacto` int(20) NOT NULL AUTO_INCREMENT,
  `Id_User1` int(10) DEFAULT NULL,
  `Id_User2` int(10) DEFAULT NULL,
  `Id_CatContacto` int(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Contacto`),
  KEY `Id_User1` (`Id_User1`),
  KEY `Id_User2` (`Id_User2`),
  KEY `Id_CatContacto` (`Id_CatContacto`),
  CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`Id_User1`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `contacto_ibfk_2` FOREIGN KEY (`Id_User2`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `contacto_ibfk_3` FOREIGN KEY (`Id_CatContacto`) REFERENCES `catinteraccion` (`Id_CatInteraccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiqueta` (
  `Id_Etiqueta` int(20) NOT NULL AUTO_INCREMENT,
  `etiqueta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `Id_Evento` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id_Evento`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercambio`
--

DROP TABLE IF EXISTS `intercambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intercambio` (
  `Id_Intercambio` int(20) NOT NULL AUTO_INCREMENT,
  `Id_User1` int(10) DEFAULT NULL,
  `Id_Prenda1` int(15) DEFAULT NULL,
  `Id_User2` int(10) DEFAULT NULL,
  `Id_Prenda2` int(15) DEFAULT NULL,
  `Id_CatInter` int(1) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Intercambio`),
  KEY `Id_User1` (`Id_User1`),
  KEY `Id_User2` (`Id_User2`),
  KEY `Id_Prenda1` (`Id_Prenda1`),
  KEY `Id_Prenda2` (`Id_Prenda2`),
  CONSTRAINT `intercambio_ibfk_1` FOREIGN KEY (`Id_User1`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `intercambio_ibfk_2` FOREIGN KEY (`Id_User2`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `intercambio_ibfk_3` FOREIGN KEY (`Id_Prenda1`) REFERENCES `prenda` (`Id_Prenda`),
  CONSTRAINT `intercambio_ibfk_4` FOREIGN KEY (`Id_Prenda2`) REFERENCES `prenda` (`Id_Prenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercambio`
--

LOCK TABLES `intercambio` WRITE;
/*!40000 ALTER TABLE `intercambio` DISABLE KEYS */;
/*!40000 ALTER TABLE `intercambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intereses`
--

DROP TABLE IF EXISTS `intereses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intereses` (
  `idInteres` int(15) NOT NULL AUTO_INCREMENT,
  `idRel` int(10) DEFAULT NULL,
  `idUsuario` int(10) DEFAULT NULL,
  PRIMARY KEY (`idInteres`),
  KEY `idRel` (`idRel`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `intereses_ibfk_1` FOREIGN KEY (`idRel`) REFERENCES `relinteresdescripcion` (`idRel`),
  CONSTRAINT `intereses_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intereses`
--

LOCK TABLES `intereses` WRITE;
/*!40000 ALTER TABLE `intereses` DISABLE KEYS */;
INSERT INTO `intereses` VALUES (1,30,2),(2,31,2),(3,1,2),(4,2,2),(5,3,2),(6,9,2),(7,10,2),(8,11,2),(9,21,2),(10,24,2),(11,26,2);
/*!40000 ALTER TABLE `intereses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `idMaterial` int(10) NOT NULL AUTO_INCREMENT,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'Chocolate'),(2,'Chocolate'),(3,'Azucar'),(4,'no'),(5,'2'),(6,'3'),(7,'4'),(8,'5'),(9,'Chocolate'),(10,'Azucar'),(11,'10 g. Levadura'),(12,'1 Cucharadita de Sal'),(13,'1 Huevo'),(14,'2-4 Tazas de Agua'),(15,'1 Raja de canela'),(16,'1 Barra de Piloncillo');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `Id_Msj` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_Chat` int(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `contenido` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Id_Msj`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Chat` (`Id_Chat`),
  CONSTRAINT `mensaje_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `mensaje_ibfk_2` FOREIGN KEY (`Id_Chat`) REFERENCES `chat` (`Id_Chat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedia`
--

DROP TABLE IF EXISTS `multimedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multimedia` (
  `idMultimedia` int(10) NOT NULL AUTO_INCREMENT,
  `multimedia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idMultimedia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedia`
--

LOCK TABLES `multimedia` WRITE;
/*!40000 ALTER TABLE `multimedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `multimedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificacion` (
  `Id_Notificacion` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_CatNoti` int(2) DEFAULT NULL,
  `Id_event` int(20) DEFAULT NULL,
  `contenido` varchar(150) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Notificacion`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_CatNoti` (`Id_CatNoti`),
  CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `notificacion_ibfk_2` FOREIGN KEY (`Id_CatNoti`) REFERENCES `catnotificacion` (`Id_CatNotificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outfit`
--

DROP TABLE IF EXISTS `outfit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outfit` (
  `Id_Outfit` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_Creador` int(10) DEFAULT NULL,
  `nomvre` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Outfit`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Creador` (`Id_Creador`),
  CONSTRAINT `outfit_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `outfit_ibfk_2` FOREIGN KEY (`Id_Creador`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outfit`
--

LOCK TABLES `outfit` WRITE;
/*!40000 ALTER TABLE `outfit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peticion`
--

DROP TABLE IF EXISTS `peticion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peticion` (
  `Id_Peticion` int(15) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_CatP` int(1) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Peticion`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_CatP` (`Id_CatP`),
  CONSTRAINT `peticion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `peticion_ibfk_2` FOREIGN KEY (`Id_CatP`) REFERENCES `catpeticion` (`Id_CatP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peticion`
--

LOCK TABLES `peticion` WRITE;
/*!40000 ALTER TABLE `peticion` DISABLE KEYS */;
/*!40000 ALTER TABLE `peticion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prenda` (
  `Id_Prenda` int(15) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_catPrenda` int(10) DEFAULT NULL,
  `Id_catTalla` int(10) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio` varchar(10) DEFAULT NULL,
  `favorito` varchar(10) DEFAULT NULL,
  `intercambiable` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Prenda`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_catPrenda` (`Id_catPrenda`),
  KEY `Id_catTalla` (`Id_catTalla`),
  CONSTRAINT `prenda_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `prenda_ibfk_2` FOREIGN KEY (`Id_catPrenda`) REFERENCES `cattipoprenda` (`Id_catPrenda`),
  CONSTRAINT `prenda_ibfk_3` FOREIGN KEY (`Id_catTalla`) REFERENCES `cattallas` (`Id_catTalla`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (3,2,12,3,'Uploads/Prendas/vestido1.jpeg','Esta prenda me encanta','300.00','N','S'),(5,2,9,4,'Uploads/Prendas/sudadera.jpeg','Bonita tambiÃ©n','$800','N','N'),(6,2,2,2,'Uploads/Prendas/PlayeraRosaAero.jpeg','Es una de mis playeras favoritas, les juro estÃ¡ sÃºper bonita y casual.','$200','S','N'),(8,2,10,2,'Uploads/Prendas/ChamarraNegra.jpeg','Esta chamarra estÃ¡ preciosa, y la uso muuucho para combinarla con todo, pero ultimamente ya no es lo mio usar cosas que dan tanto calorrr, espero les interese.','$800','N','S'),(9,2,12,1,'Uploads/Prendas/VestidoVino.jpeg','Es como aterciopelado y me encanta, pero es un poquito formal para usarlo cualquier dia.','$350','S','N'),(10,3,12,3,'Uploads/Prendas/vestido.jpg','Vestido negro','$800','N','N'),(11,2,2,2,'Uploads/Prendas/playeraAeroBlanca.jpeg','De mis favoritas','$250','S','N'),(12,3,12,3,'Uploads/Prendas/negro.jpg','zzzz','$250','N','N');
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `Id_Publicacion` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `contenido` varchar(250) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Publicacion`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (11,4,' hola','Uploads/Publicaciones/fondo.jpg','2019-11-07 13:48:15'),(12,5,' Pinche Edson, no puedo ni sentarme','Uploads/Publicaciones/zapatos.jpg','2019-11-08 14:59:04'),(13,4,' hola mundo','','2019-11-08 17:52:28'),(14,4,' intento','','2019-11-09 00:57:49'),(15,4,' intento2','','2019-11-09 01:08:26');
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relchat_etiqueta`
--

DROP TABLE IF EXISTS `relchat_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relchat_etiqueta` (
  `Id_relCE` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Chat` int(15) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relCE`),
  KEY `Id_Chat` (`Id_Chat`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `relchat_etiqueta_ibfk_1` FOREIGN KEY (`Id_Chat`) REFERENCES `chat` (`Id_Chat`),
  CONSTRAINT `relchat_etiqueta_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relchat_etiqueta`
--

LOCK TABLES `relchat_etiqueta` WRITE;
/*!40000 ALTER TABLE `relchat_etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `relchat_etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relchat_usuario`
--

DROP TABLE IF EXISTS `relchat_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relchat_usuario` (
  `Id_relCU` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Chat` int(15) DEFAULT NULL,
  `Id_Usuario` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id_relCU`),
  KEY `Id_Chat` (`Id_Chat`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `relchat_usuario_ibfk_1` FOREIGN KEY (`Id_Chat`) REFERENCES `chat` (`Id_Chat`),
  CONSTRAINT `relchat_usuario_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relchat_usuario`
--

LOCK TABLES `relchat_usuario` WRITE;
/*!40000 ALTER TABLE `relchat_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `relchat_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relinteresdescripcion`
--

DROP TABLE IF EXISTS `relinteresdescripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relinteresdescripcion` (
  `idRel` int(10) NOT NULL AUTO_INCREMENT,
  `idTipo` int(10) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRel`),
  KEY `idTipo` (`idTipo`),
  CONSTRAINT `relinteresdescripcion_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipointeres` (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relinteresdescripcion`
--

LOCK TABLES `relinteresdescripcion` WRITE;
/*!40000 ALTER TABLE `relinteresdescripcion` DISABLE KEYS */;
INSERT INTO `relinteresdescripcion` VALUES (1,1,'Moda'),(2,1,'Belleza'),(3,1,'Consejos'),(4,1,'Confesiones'),(5,1,'Diversión'),(6,1,'Amistades'),(7,1,'Apoyo'),(8,2,'Casual'),(9,2,'Elegante'),(10,2,'Colorido'),(11,2,'Invierno'),(12,2,'Primavera'),(13,2,'Verano'),(14,2,'Otoño'),(15,2,'Juvenil'),(16,2,'Fiesta'),(17,2,'Oficina'),(18,3,'Risa'),(19,3,'Moda'),(20,3,'Motivadoras'),(21,3,'Frases'),(22,3,'Política y más'),(23,3,'Amor'),(24,3,'Consejos'),(25,3,'Arte'),(26,3,'Día a día'),(27,3,'Intimidades'),(28,4,'Collares'),(29,4,'Pulseras'),(30,4,'Relojes'),(31,4,'Anillos'),(32,4,'Aretes'),(33,4,'Bufandas'),(34,4,'Pashminas'),(35,5,'Coloridos'),(36,5,'Oscuros'),(37,5,'Multicolores'),(38,5,'Arcoíris'),(39,5,'Estampados de leopardo'),(40,5,'Estampados de flores'),(41,5,'Estampados de cuadros'),(42,6,'Botas'),(43,6,'Tenis casuales'),(44,6,'Tenis deportivos'),(45,6,'Flats'),(46,6,'Tacones'),(47,6,'Sandalias'),(48,6,'Botines'),(49,6,'Plataforma'),(50,7,'Repostería'),(51,7,'DIY'),(52,7,'Cocina'),(53,7,'Moda'),(54,7,'Maquillaje'),(55,7,'Entretenimiento'),(56,7,'Cuidado Personal'),(57,7,'Diseños de uñas'),(58,8,'Faldas'),(59,8,'Playeras'),(60,8,'Blusas'),(61,8,'Pantalones'),(62,8,'Shorts'),(63,8,'Accesorios'),(64,8,'Gorros o Gorras'),(65,8,'Sueteres'),(66,8,'Sudaderas'),(67,8,'Chamarras'),(68,8,'Vestidos'),(69,8,'Zapatos'),(70,8,'Medias o Calcetas');
/*!40000 ALTER TABLE `relinteresdescripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relmaterialtutorial`
--

DROP TABLE IF EXISTS `relmaterialtutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relmaterialtutorial` (
  `idRel` int(10) NOT NULL AUTO_INCREMENT,
  `idMaterial` int(10) DEFAULT NULL,
  `Id_Tutorial` int(20) DEFAULT NULL,
  PRIMARY KEY (`idRel`),
  KEY `idMaterial` (`idMaterial`),
  KEY `Id_Tutorial` (`Id_Tutorial`),
  CONSTRAINT `relmaterialtutorial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `materiales` (`idMaterial`),
  CONSTRAINT `relmaterialtutorial_ibfk_2` FOREIGN KEY (`Id_Tutorial`) REFERENCES `tutorial` (`Id_Tutorial`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relmaterialtutorial`
--

LOCK TABLES `relmaterialtutorial` WRITE;
/*!40000 ALTER TABLE `relmaterialtutorial` DISABLE KEYS */;
INSERT INTO `relmaterialtutorial` VALUES (1,9,6),(2,10,6),(3,11,7),(4,12,7),(5,13,7),(6,14,7),(7,15,7),(8,16,7);
/*!40000 ALTER TABLE `relmaterialtutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relmultimediatutorial`
--

DROP TABLE IF EXISTS `relmultimediatutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relmultimediatutorial` (
  `idRel` int(10) NOT NULL AUTO_INCREMENT,
  `idMultimedia` int(10) DEFAULT NULL,
  `Id_Tutorial` int(20) DEFAULT NULL,
  PRIMARY KEY (`idRel`),
  KEY `idMultimedia` (`idMultimedia`),
  KEY `Id_Tutorial` (`Id_Tutorial`),
  CONSTRAINT `relmultimediatutorial_ibfk_1` FOREIGN KEY (`idMultimedia`) REFERENCES `multimedia` (`idMultimedia`),
  CONSTRAINT `relmultimediatutorial_ibfk_2` FOREIGN KEY (`Id_Tutorial`) REFERENCES `tutorial` (`Id_Tutorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relmultimediatutorial`
--

LOCK TABLES `relmultimediatutorial` WRITE;
/*!40000 ALTER TABLE `relmultimediatutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `relmultimediatutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloutfit_etiqueta`
--

DROP TABLE IF EXISTS `reloutfit_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reloutfit_etiqueta` (
  `Id_relRE` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Outfit` int(15) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relRE`),
  KEY `Id_Outfit` (`Id_Outfit`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `reloutfit_etiqueta_ibfk_1` FOREIGN KEY (`Id_Outfit`) REFERENCES `outfit` (`Id_Outfit`),
  CONSTRAINT `reloutfit_etiqueta_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloutfit_etiqueta`
--

LOCK TABLES `reloutfit_etiqueta` WRITE;
/*!40000 ALTER TABLE `reloutfit_etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `reloutfit_etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reloutfit_prenda`
--

DROP TABLE IF EXISTS `reloutfit_prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reloutfit_prenda` (
  `Id_relOP` int(15) NOT NULL AUTO_INCREMENT,
  `Id_Outfit` int(15) DEFAULT NULL,
  `Id_Prenda` int(15) DEFAULT NULL,
  PRIMARY KEY (`Id_relOP`),
  KEY `Id_Prenda` (`Id_Prenda`),
  KEY `Id_Outfit` (`Id_Outfit`),
  CONSTRAINT `reloutfit_prenda_ibfk_1` FOREIGN KEY (`Id_Prenda`) REFERENCES `prenda` (`Id_Prenda`),
  CONSTRAINT `reloutfit_prenda_ibfk_2` FOREIGN KEY (`Id_Outfit`) REFERENCES `outfit` (`Id_Outfit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reloutfit_prenda`
--

LOCK TABLES `reloutfit_prenda` WRITE;
/*!40000 ALTER TABLE `reloutfit_prenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `reloutfit_prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relprenda_etiqueta`
--

DROP TABLE IF EXISTS `relprenda_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relprenda_etiqueta` (
  `Id_relRE` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Prenda` int(15) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relRE`),
  KEY `Id_Prenda` (`Id_Prenda`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `relprenda_etiqueta_ibfk_1` FOREIGN KEY (`Id_Prenda`) REFERENCES `prenda` (`Id_Prenda`),
  CONSTRAINT `relprenda_etiqueta_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relprenda_etiqueta`
--

LOCK TABLES `relprenda_etiqueta` WRITE;
/*!40000 ALTER TABLE `relprenda_etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `relprenda_etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relpublicacion_etiqueta`
--

DROP TABLE IF EXISTS `relpublicacion_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relpublicacion_etiqueta` (
  `Id_relPE` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Publicacion` int(20) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relPE`),
  KEY `Id_Publicacion` (`Id_Publicacion`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `relpublicacion_etiqueta_ibfk_1` FOREIGN KEY (`Id_Publicacion`) REFERENCES `publicacion` (`Id_Publicacion`),
  CONSTRAINT `relpublicacion_etiqueta_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relpublicacion_etiqueta`
--

LOCK TABLES `relpublicacion_etiqueta` WRITE;
/*!40000 ALTER TABLE `relpublicacion_etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `relpublicacion_etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reltutorial_etiqueta`
--

DROP TABLE IF EXISTS `reltutorial_etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reltutorial_etiqueta` (
  `Id_relTE` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Tutorial` int(20) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relTE`),
  KEY `Id_Tutorial` (`Id_Tutorial`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `reltutorial_etiqueta_ibfk_1` FOREIGN KEY (`Id_Tutorial`) REFERENCES `tutorial` (`Id_Tutorial`),
  CONSTRAINT `reltutorial_etiqueta_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reltutorial_etiqueta`
--

LOCK TABLES `reltutorial_etiqueta` WRITE;
/*!40000 ALTER TABLE `reltutorial_etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `reltutorial_etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relusuario_interes`
--

DROP TABLE IF EXISTS `relusuario_interes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relusuario_interes` (
  `Id_relUI` int(15) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `Id_Etiqueta` int(20) DEFAULT NULL,
  PRIMARY KEY (`Id_relUI`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Etiqueta` (`Id_Etiqueta`),
  CONSTRAINT `relusuario_interes_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `relusuario_interes_ibfk_2` FOREIGN KEY (`Id_Etiqueta`) REFERENCES `etiqueta` (`Id_Etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relusuario_interes`
--

LOCK TABLES `relusuario_interes` WRITE;
/*!40000 ALTER TABLE `relusuario_interes` DISABLE KEYS */;
/*!40000 ALTER TABLE `relusuario_interes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidor`
--

DROP TABLE IF EXISTS `seguidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguidor` (
  `Id_Usuario` int(10) NOT NULL,
  `Id_Seguidor` int(10) NOT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Seguidor`),
  KEY `FK2` (`Id_Seguidor`),
  CONSTRAINT `FK1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK2` FOREIGN KEY (`Id_Seguidor`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidor`
--

LOCK TABLES `seguidor` WRITE;
/*!40000 ALTER TABLE `seguidor` DISABLE KEYS */;
INSERT INTO `seguidor` VALUES (2,4),(5,4),(4,6),(4,7);
/*!40000 ALTER TABLE `seguidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siguiendo`
--

DROP TABLE IF EXISTS `siguiendo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siguiendo` (
  `Id_Usuario` int(10) NOT NULL,
  `Id_Siguiendo` int(10) NOT NULL,
  PRIMARY KEY (`Id_Usuario`,`Id_Siguiendo`),
  KEY `FK4` (`Id_Siguiendo`),
  CONSTRAINT `FK3` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK4` FOREIGN KEY (`Id_Siguiendo`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siguiendo`
--

LOCK TABLES `siguiendo` WRITE;
/*!40000 ALTER TABLE `siguiendo` DISABLE KEYS */;
INSERT INTO `siguiendo` VALUES (4,2),(6,4),(7,4),(4,5);
/*!40000 ALTER TABLE `siguiendo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipointeres`
--

DROP TABLE IF EXISTS `tipointeres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipointeres` (
  `idTipo` int(10) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipointeres`
--

LOCK TABLES `tipointeres` WRITE;
/*!40000 ALTER TABLE `tipointeres` DISABLE KEYS */;
INSERT INTO `tipointeres` VALUES (1,'Chats'),(2,'Outfits'),(3,'Publicaciones'),(4,'Accesorios'),(5,'Colores y Estampados'),(6,'Zapatos'),(7,'Tutoriales'),(8,'Ropa');
/*!40000 ALTER TABLE `tipointeres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial` (
  `Id_Tutorial` int(20) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(10) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `multimedia` varchar(100) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Tutorial`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tutorial_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
INSERT INTO `tutorial` VALUES (3,3,'Mentas con chocolate','Mentas muy ricas con chocolate y azucar','Uploads/Tutorial/Mentas con chocolateQue FÃ¡cil!.mp4','2018-04-09 04:33:06','Mentas'),(4,3,'Equis','dfsdf','Uploads/Tutorial/video.mp4','2018-04-10 02:39:46','esto'),(5,3,'Y','DFSDFSD','Uploads/Tutorial/video.mp4','2018-04-10 02:47:15','1'),(6,3,'Mentas con chocolate','Ricas mentas con chocolates y azucar glass para que compartas con tus amigas','Uploads/Tutorial/Mentas con chocolateQue FÃ¡cil!.mp4','2018-04-10 05:26:16','Mentas'),(7,2,'Pan','Delicioso','Uploads/Tutorial/bunuelos.mp4','2018-04-10 13:24:40','1 Â½ tazas de Harina');
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_Usuario` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre_Usuario` varchar(70) DEFAULT NULL,
  `Apellido_Usuario` varchar(70) DEFAULT NULL,
  `Correo_Usuario` varchar(70) NOT NULL,
  `Username_Usuario` varchar(70) NOT NULL,
  `Contrasenia_Usuario` varchar(100) DEFAULT NULL,
  `Imagen_Usuario` varchar(100) DEFAULT NULL,
  `IP_Usuario` varchar(20) NOT NULL,
  `fechaNac` date DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'Marbella','Velazquez','marbella.velazquez.ortega@gmail.com','MarbellaVelazquez','pI376GD4QauApRZoXvUe3g==','Uploads/marbella.jpg','10.190.26.127',NULL),(3,'Rodrigo','Sanchez','rodrigosanchez315@yahoo.com.mx','rodrigo123','mC5RgrANG2C3GVH10tHSfg==','Uploads/Wild+Dogsmall.jpg','127.0.0.1',NULL),(4,'Rodrigo','Sanchez','rodrigosanchez315@yahoo.com.mx','rodrigoESCOM','c7k5kArZIoDfomMFoK+zIQ==','Uploads/dn.jpg','10.100.65.235',NULL),(5,'Hugo','Gomez','hugo23@yahoo.com.mx','huguitobaby','o8w+lHEPFLuHNm+CEZ6T3A==','Uploads/poli.png','192.168.100.8',NULL),(6,'Marbella','Velazquez','marbella.velazquez.ortega@gmail.com','mar123','NWVqjqOrpFUV4umX2Q4XeA==','Uploads/Gabby.jpg','192.168.100.8',NULL),(7,'Pedro','Cabezon','pedrito69@hotmail.com','pedrito69','A6VdCfHFbC5zNPx6jAXwBg==','Uploads/compras.jpg','192.168.100.8',NULL),(8,'Juan','Perez','juan@22.hot','juanito22','PtX6r6l/wdAruGdAUMg8cQ==','Uploads/Calixto.jpg','192.168.100.8',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14  7:32:03
