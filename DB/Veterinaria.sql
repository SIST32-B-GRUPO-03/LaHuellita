-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

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
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `Id_Cita` int(10) NOT NULL AUTO_INCREMENT,
  `Paciente` int(5) DEFAULT NULL,
  `Doctor` varchar(10) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` varchar(5) DEFAULT NULL,
  `Estado` int(1) DEFAULT NULL,
  `Detalles` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Cita`),
  KEY `FKDoctor` (`Doctor`),
  KEY `FKEstado1` (`Estado`),
  KEY `FKPaciente` (`Paciente`),
  CONSTRAINT `FKDoctor` FOREIGN KEY (`Doctor`) REFERENCES `empleados` (`DUI`),
  CONSTRAINT `FKEstado1` FOREIGN KEY (`Estado`) REFERENCES `estados` (`Id_Estado`),
  CONSTRAINT `FKPaciente` FOREIGN KEY (`Paciente`) REFERENCES `mascotas` (`Id_mascota`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases` (
  `Id_Clase` int(2) NOT NULL AUTO_INCREMENT,
  `Nombre_Clase` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Clase`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,'Perro'),(2,'Gato');
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `Id_Cliente` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre_Cliente` varchar(40) DEFAULT NULL,
  `Apelido_Cliente` varchar(40) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`Id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `DUI` varchar(10) NOT NULL,
  `Nombre_Empleado` varchar(40) DEFAULT NULL,
  `Apellido` varchar(40) DEFAULT NULL,
  `Priviliegios` int(2) DEFAULT NULL,
  PRIMARY KEY (`DUI`),
  KEY `FKPrivilegios` (`Priviliegios`),
  CONSTRAINT `FKPrivilegios` FOREIGN KEY (`Priviliegios`) REFERENCES `privilegios` (`Id_Privilegios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrada_medicamentos`
--

DROP TABLE IF EXISTS `entrada_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrada_medicamentos` (
  `Id_entrada` int(10) NOT NULL AUTO_INCREMENT,
  `Medicamento` int(5) DEFAULT NULL,
  `Cantidad` int(5) DEFAULT NULL,
  `Fecha_entrad` date DEFAULT NULL,
  PRIMARY KEY (`Id_entrada`),
  KEY `FKMdicamento` (`Medicamento`),
  CONSTRAINT `FKMdicamento` FOREIGN KEY (`Medicamento`) REFERENCES `medicamentos` (`Id_Medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrada_medicamentos`
--

LOCK TABLES `entrada_medicamentos` WRITE;
/*!40000 ALTER TABLE `entrada_medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrada_medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `Id_Estado` int(1) NOT NULL AUTO_INCREMENT,
  `Estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados_recetas`
--

DROP TABLE IF EXISTS `estados_recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados_recetas` (
  `Id_Estado` int(2) NOT NULL AUTO_INCREMENT,
  `Estado_receta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_recetas`
--

LOCK TABLES `estados_recetas` WRITE;
/*!40000 ALTER TABLE `estados_recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `estados_recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `Id_mascota` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Raza` int(3) DEFAULT NULL,
  `Dueño` int(5) DEFAULT NULL,
  `Sexo` int(1) DEFAULT NULL,
  PRIMARY KEY (`Id_mascota`),
  KEY `FKSexo` (`Sexo`),
  KEY `FKRaza` (`Raza`),
  KEY `FKDueño` (`Dueño`),
  CONSTRAINT `FKDueño` FOREIGN KEY (`Dueño`) REFERENCES `clientes` (`Id_Cliente`),
  CONSTRAINT `FKRaza` FOREIGN KEY (`Raza`) REFERENCES `razas` (`Id_raza`),
  CONSTRAINT `FKSexo` FOREIGN KEY (`Sexo`) REFERENCES `sexos` (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `Id_Medicamento` int(5) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) DEFAULT NULL,
  `Detalles` varchar(40) DEFAULT NULL,
  `Minimo_Stock` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id_Medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilegios`
--

DROP TABLE IF EXISTS `privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilegios` (
  `Id_Privilegios` int(2) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Privilegios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegios`
--

LOCK TABLES `privilegios` WRITE;
/*!40000 ALTER TABLE `privilegios` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `razas`
--

DROP TABLE IF EXISTS `razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `razas` (
  `Id_raza` int(3) NOT NULL AUTO_INCREMENT,
  `Raza` varchar(40) DEFAULT NULL,
  `Clase` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id_raza`),
  KEY `FKId_Clases` (`Clase`),
  CONSTRAINT `FKId_Clases` FOREIGN KEY (`Clase`) REFERENCES `clases` (`Id_Clase`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `razas`
--

LOCK TABLES `razas` WRITE;
/*!40000 ALTER TABLE `razas` DISABLE KEYS */;
INSERT INTO `razas` VALUES (1,'Pitbull',1);
/*!40000 ALTER TABLE `razas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetas` (
  `Id_recetas` int(10) NOT NULL AUTO_INCREMENT,
  `Cantidad` int(5) DEFAULT NULL,
  `Mascota` int(5) DEFAULT NULL,
  `Medicamento` int(5) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL,
  PRIMARY KEY (`Id_recetas`),
  KEY `FKMedicamento1` (`Medicamento`),
  KEY `FKEstado` (`Estado`),
  KEY `FKMascota` (`Mascota`),
  CONSTRAINT `FKEstado` FOREIGN KEY (`Estado`) REFERENCES `estados_recetas` (`Id_Estado`),
  CONSTRAINT `FKMascota` FOREIGN KEY (`Mascota`) REFERENCES `mascotas` (`Id_mascota`),
  CONSTRAINT `FKMedicamento1` FOREIGN KEY (`Medicamento`) REFERENCES `medicamentos` (`Id_Medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexos`
--

DROP TABLE IF EXISTS `sexos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexos` (
  `Identificador` int(1) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Identificador`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexos`
--

LOCK TABLES `sexos` WRITE;
/*!40000 ALTER TABLE `sexos` DISABLE KEYS */;
INSERT INTO `sexos` VALUES (1,'Macho'),(2,'Hembra');
/*!40000 ALTER TABLE `sexos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'veterinaria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 17:56:58
