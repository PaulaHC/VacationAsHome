CREATE DATABASE  IF NOT EXISTS `zerberusbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zerberusbd`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: zerberusbd
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `alojamiento`
--

DROP TABLE IF EXISTS `alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alojamiento` (
  `ubicacionPrecisa` varchar(45) NOT NULL,
  `fechaEntrada` date NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `maxHuesped` int NOT NULL,
  `numDormitorios` int NOT NULL,
  `numCamas` int NOT NULL,
  `numBanos` int NOT NULL,
  `ubicacionDescrita` varchar(100) NOT NULL,
  `caracteristicas` enum('cabana','apartamento','casa','castillo','molino','barco','granja','singular','primera linea de playa','pie de pista','piscina','montana','deluxe') NOT NULL,
  `servicio` enum('Cocina','lavavajillas','lavadora','wifi','aparcamiento','calefaccion','aireacondicionado','mascotas') NOT NULL,
  `aceptacionReserva` tinyint NOT NULL,
  `localidad` varchar(45) NOT NULL,
  `valoracionGlobal` int NOT NULL,
  `Anfitrion_email` varchar(45) NOT NULL,
  PRIMARY KEY (`ubicacionPrecisa`,`Anfitrion_email`),
  KEY `fk_Alojamiento_Anfitrion1_idx` (`Anfitrion_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alojamiento`
--

LOCK TABLES `alojamiento` WRITE;
/*!40000 ALTER TABLE `alojamiento` DISABLE KEYS */;
INSERT INTO `alojamiento` VALUES ('40.4305,-3.7035','2022-02-01','Apartamento en el centro',4,2,2,1,'En el centro de la ciudad, cerca de tiendas y restaurantes','apartamento','aparcamiento',1,'Madrid',8,'ana@gmail.com'),('43.454,-2.7899','2022-01-01','Casa en la playa',6,3,3,2,'A 50 metros de la playa, en una zona tranquila','casa','Cocina',1,'San Juan',9,'juan@gmail.com');
/*!40000 ALTER TABLE `alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anfitrion`
--

DROP TABLE IF EXISTS `anfitrion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anfitrion` (
  `nombre` varchar(15) NOT NULL,
  `idiomas` varchar(45) NOT NULL,
  `identidadIdentificada` tinyint NOT NULL,
  `ratioRespuesta` int NOT NULL,
  `tiempoMedioRespuesta` int NOT NULL,
  `superAnfitrion` tinyint NOT NULL,
  `email` varchar(45) NOT NULL,
  `fechaSuscripcion` date NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anfitrion`
--

LOCK TABLES `anfitrion` WRITE;
/*!40000 ALTER TABLE `anfitrion` DISABLE KEYS */;
INSERT INTO `anfitrion` VALUES ('Ana','Espanol, Ingles',1,90,10,1,'ana@gmail.com','2022-02-01','contrasenaAna'),('Juan','Espanol',1,80,20,0,'juan@gmail.com','2022-01-01','contrasenaJuan'),('Pedro','Espanol, Frances',0,70,15,0,'pedro@gmail.com','2022-03-01','contrasenaPedro');
/*!40000 ALTER TABLE `anfitrion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `email` varchar(45) NOT NULL,
  `fechaSuscripcion` date NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('cliente1@gmail.com','2022-01-01','abc123'),('cliente2@gmail.com','2022-02-01','def456'),('cliente3@gmail.com','2022-03-01','ghi789');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen` (
  `etiqueta` varchar(12) NOT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `Alojamiento_ubicacionPrecisa` varchar(45) NOT NULL,
  PRIMARY KEY (`Alojamiento_ubicacionPrecisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES ('fachada','assets/img/gallery/apartamento.jpg','40.4305,-3.7035'),('Posada','assets/img/gallery/bora.jpg','43.454,-2.7899');
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `contenido` varchar(500) NOT NULL,
  `fechaEnvio` date NOT NULL,
  `Cliente_email` varchar(45) NOT NULL,
  `Anfitrion_email` varchar(45) NOT NULL,
  PRIMARY KEY (`Cliente_email`,`Anfitrion_email`),
  KEY `fk_Mensaje_Anfitrion1_idx` (`Anfitrion_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES ('Hola, si, todavia tengo disponibilidad para ese fin de semana. ¿Te interesa hacer una reserva?','2022-01-02','cliente1@gmail.com','juan@gmail.com'),('Hola, me gustaria saber si todavia tienes disponibilidad para el fin de semana del 15 al 17 de marzo','2022-01-01','cliente2@gmai.com','ana@gmail.com');
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `precioNoche` float NOT NULL,
  `precioFindeSemana` float NOT NULL,
  `precioSemana` float NOT NULL,
  `precioMes` float NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `Alojamiento_ubicacionPrecisa` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`Alojamiento_ubicacionPrecisa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio`
--

LOCK TABLES `precio` WRITE;
/*!40000 ALTER TABLE `precio` DISABLE KEYS */;
INSERT INTO `precio` VALUES (1,80,100,600,2000,'2022-02-01','2022-02-28','40.4305,-3.7035'),(2,100,120,700,2500,'2022-01-01','2022-01-31','43.454,-2.7899');
/*!40000 ALTER TABLE `precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `fechaEntrada` date NOT NULL,
  `fechaSalida` date NOT NULL,
  `numHuespedes` int NOT NULL,
  `comentarios` varchar(100) NOT NULL,
  `estado` enum('realizada','aceptadaAnfitrion','confirmada','pagada','canceladaCliente','canceladaAnfitrion','ejecutada','canceladaFuerzaMayor') NOT NULL,
  `dividePago` tinyint NOT NULL,
  `Cliente_email` varchar(45) NOT NULL,
  `Alojamiento_ubicacionPrecisa` varchar(45) NOT NULL,
  `Alojamiento_Anfitrion_email` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`Cliente_email`,`Alojamiento_ubicacionPrecisa`,`Alojamiento_Anfitrion_email`),
  KEY `fk_Reserva_Cliente1_idx` (`Cliente_email`),
  KEY `fk_Reserva_Alojamiento1_idx` (`Alojamiento_ubicacionPrecisa`,`Alojamiento_Anfitrion_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'2022-02-01','2022-02-03',2,'Solicitamos habitacion con vistas','realizada',1,'cliente1@gmail.com','43.454,-2.7899','juan@gmail.com'),(2,'2022-03-01','2022-03-03',4,'Necesitamos cuna para bebe','realizada',0,'cliente2@gmail.com','40.4305,-3.7035','ana@gmail.com'),(3,'2022-04-01','2022-04-03',2,'Preferimos habitacion en planta baja','realizada',1,'cliente3@gmail.com','43.454,-2.7899','juan@gmail.com');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-27 20:16:26
