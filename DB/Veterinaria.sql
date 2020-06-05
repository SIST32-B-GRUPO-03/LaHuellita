-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: fdb20.awardspace.net
-- Tiempo de generación: 28-05-2020 a las 01:13:36
-- Versión del servidor: 5.7.20-log
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `3051330_veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Id_Cita` int(10) NOT NULL,
  `Paciente` int(5) DEFAULT NULL,
  `Doctor` varchar(10) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` varchar(5) DEFAULT NULL,
  `Estado` int(1) DEFAULT NULL,
  `Detalles` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `Id_Clase` int(2) NOT NULL,
  `Nombre_Clase` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Cliente` int(10) NOT NULL,
  `Nombre_Cliente` varchar(40) DEFAULT NULL,
  `Apelido_Cliente` varchar(40) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `DUI` varchar(10) NOT NULL,
  `Nombre_Empleado` varchar(40) DEFAULT NULL,
  `Apellido` varchar(40) DEFAULT NULL,
  `Priviliegios` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada_medicamentos`
--

CREATE TABLE `entrada_medicamentos` (
  `Id_entrada` int(10) NOT NULL,
  `Medicamento` int(5) DEFAULT NULL,
  `Cantidad` int(5) DEFAULT NULL,
  `Fecha_entrad` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_Estado` int(1) NOT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_recetas`
--

CREATE TABLE `estados_recetas` (
  `Id_Estado` int(2) NOT NULL,
  `Estado_receta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `Id_mascota` int(5) NOT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Fecha_nacimiento` date DEFAULT NULL,
  `Raza` int(3) DEFAULT NULL,
  `Dueño` int(5) DEFAULT NULL,
  `Sexo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `Id_Medicamento` int(5) NOT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Detalles` varchar(40) DEFAULT NULL,
  `Minimo_Stock` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegios`
--

CREATE TABLE `privilegios` (
  `Id_Privilegios` int(2) NOT NULL,
  `Usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razas`
--

CREATE TABLE `razas` (
  `Id_raza` int(3) NOT NULL,
  `Raza` varchar(40) DEFAULT NULL,
  `Clase` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `Id_recetas` int(10) NOT NULL,
  `Cantidad` int(5) DEFAULT NULL,
  `Mascota` int(5) DEFAULT NULL,
  `Medicamento` int(5) DEFAULT NULL,
  `Estado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `Identificador` int(1) NOT NULL,
  `sexo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Id_Cita`),
  ADD KEY `FKDoctor` (`Doctor`),
  ADD KEY `FKEstado1` (`Estado`),
  ADD KEY `FKPaciente` (`Paciente`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`Id_Clase`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`DUI`),
  ADD KEY `FKPrivilegios` (`Priviliegios`);

--
-- Indices de la tabla `entrada_medicamentos`
--
ALTER TABLE `entrada_medicamentos`
  ADD PRIMARY KEY (`Id_entrada`),
  ADD KEY `FKMdicamento` (`Medicamento`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `estados_recetas`
--
ALTER TABLE `estados_recetas`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`Id_mascota`),
  ADD KEY `FKSexo` (`Sexo`),
  ADD KEY `FKRaza` (`Raza`),
  ADD KEY `FKDueño` (`Dueño`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`Id_Medicamento`);

--
-- Indices de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`Id_Privilegios`);

--
-- Indices de la tabla `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`Id_raza`),
  ADD KEY `FKId_Clases` (`Clase`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`Id_recetas`),
  ADD KEY `FKMedicamento1` (`Medicamento`),
  ADD KEY `FKEstado` (`Estado`),
  ADD KEY `FKMascota` (`Mascota`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`Identificador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Id_Cita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `Id_Clase` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `entrada_medicamentos`
--
ALTER TABLE `entrada_medicamentos`
  MODIFY `Id_entrada` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_Estado` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estados_recetas`
--
ALTER TABLE `estados_recetas`
  MODIFY `Id_Estado` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `Id_mascota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `Id_Medicamento` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `privilegios`
--
ALTER TABLE `privilegios`
  MODIFY `Id_Privilegios` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `razas`
--
ALTER TABLE `razas`
  MODIFY `Id_raza` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `Id_recetas` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `Identificador` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `FKDoctor` FOREIGN KEY (`Doctor`) REFERENCES `empleados` (`DUI`),
  ADD CONSTRAINT `FKEstado1` FOREIGN KEY (`Estado`) REFERENCES `estados` (`Id_Estado`),
  ADD CONSTRAINT `FKPaciente` FOREIGN KEY (`Paciente`) REFERENCES `mascotas` (`Id_mascota`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FKPrivilegios` FOREIGN KEY (`Priviliegios`) REFERENCES `privilegios` (`Id_Privilegios`);

--
-- Filtros para la tabla `entrada_medicamentos`
--
ALTER TABLE `entrada_medicamentos`
  ADD CONSTRAINT `FKMdicamento` FOREIGN KEY (`Medicamento`) REFERENCES `medicamentos` (`Id_Medicamento`);

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `FKDueño` FOREIGN KEY (`Dueño`) REFERENCES `clientes` (`Id_Cliente`),
  ADD CONSTRAINT `FKRaza` FOREIGN KEY (`Raza`) REFERENCES `razas` (`Id_raza`),
  ADD CONSTRAINT `FKSexo` FOREIGN KEY (`Sexo`) REFERENCES `sexos` (`Identificador`);

--
-- Filtros para la tabla `razas`
--
ALTER TABLE `razas`
  ADD CONSTRAINT `FKId_Clases` FOREIGN KEY (`Clase`) REFERENCES `clases` (`Id_Clase`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `FKEstado` FOREIGN KEY (`Estado`) REFERENCES `estados_recetas` (`Id_Estado`),
  ADD CONSTRAINT `FKMascota` FOREIGN KEY (`Mascota`) REFERENCES `mascotas` (`Id_mascota`),
  ADD CONSTRAINT `FKMedicamento1` FOREIGN KEY (`Medicamento`) REFERENCES `medicamentos` (`Id_Medicamento`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
