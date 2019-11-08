-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: venus
-- ------------------------------------------------------
-- Server version	5.7.17-log
use venus;
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
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `idMaterial` int(10) NOT NULL AUTO_INCREMENT,
  `material` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (3,2,12,3,'Uploads/Prendas/vestido1.jpeg','Esta prenda me encanta','300.00','N','S'),(5,2,9,4,'Uploads/Prendas/sudadera.jpeg','Bonita tambiÃ©n','$800','N','N'),(6,2,2,2,'Uploads/Prendas/PlayeraRosaAero.jpeg','Es una de mis playeras favoritas, les juro estÃ¡ sÃºper bonita y casual.','$200','S','N'),(8,2,10,2,'Uploads/Prendas/ChamarraNegra.jpeg','Esta chamarra estÃ¡ preciosa, y la uso muuucho para combinarla con todo, pero ultimamente ya no es lo mio usar cosas que dan tanto calorrr, espero les interese.','$800','N','S'),(9,2,12,1,'Uploads/Prendas/VestidoVino.jpeg','Es como aterciopelado y me encanta, pero es un poquito formal para usarlo cualquier dia.','$350','S','N');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relmaterialtutorial`
--

LOCK TABLES `relmaterialtutorial` WRITE;
/*!40000 ALTER TABLE `relmaterialtutorial` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'Marbella','Velazquez','marbella.velazquez.ortega@gmail.com','MarbellaVelazquez','pI376GD4QauApRZoXvUe3g==','Uploads/marbella.jpg','192.168.20.138',NULL);
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

-- Dump completed on 2018-04-03 13:40:22
