-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2025 a las 23:30:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lpp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artefacto`
--

CREATE TABLE `artefacto` (
  `codArt` char(30) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` char(18) NOT NULL,
  `stock` char(18) NOT NULL,
  `linea` varchar(9) NOT NULL,
  `modelo` varchar(18) NOT NULL,
  `codFabricante` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `nroBoleta` char(18) NOT NULL,
  `fechaEmision` date NOT NULL,
  `Situacion` varchar(18) NOT NULL,
  `total` char(18) NOT NULL,
  `codClie` char(18) DEFAULT NULL,
  `nroNP` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codClie` char(18) NOT NULL,
  `nombreClie` varchar(30) NOT NULL,
  `apellidosClie` varchar(30) NOT NULL,
  `direccionClie` char(45) NOT NULL,
  `telefonoClie` char(9) NOT NULL,
  `emailClie` varchar(30) NOT NULL,
  `rucClie` char(18) NOT NULL,
  `dniClie` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleboleta`
--

CREATE TABLE `detalleboleta` (
  `nroBoleta` char(18) NOT NULL,
  `codArt` char(18) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` char(6) NOT NULL,
  `precio` char(6) NOT NULL,
  `monto` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallefactura`
--

CREATE TABLE `detallefactura` (
  `codArt` char(30) NOT NULL,
  `NroFactura` char(18) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` char(6) NOT NULL,
  `cantidad` char(6) NOT NULL,
  `monto` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallenotaped`
--

CREATE TABLE `detallenotaped` (
  `codArt` char(30) NOT NULL,
  `nroNP` char(18) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `cantidad` char(6) NOT NULL,
  `precio` char(18) NOT NULL,
  `monto` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `codFabricante` char(9) NOT NULL,
  `nombreFabric` varchar(18) NOT NULL,
  `procedencia` varchar(18) NOT NULL,
  `telefonoLocal` char(9) NOT NULL,
  `direccionaLocal` varchar(18) NOT NULL,
  `emailFabric` varchar(45) NOT NULL,
  `contacto` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `NroFactura` char(18) NOT NULL,
  `FechaEmision` date NOT NULL,
  `Situacion` varchar(18) NOT NULL,
  `Subtotal` char(6) NOT NULL,
  `IGV` decimal(6,0) NOT NULL,
  `Total` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notapedido`
--

CREATE TABLE `notapedido` (
  `nroNP` char(18) NOT NULL,
  `fechaEmsion` date NOT NULL,
  `Situacion` varchar(30) NOT NULL,
  `motivoCancelado` varchar(30) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `codVend` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `codVend` char(18) NOT NULL,
  `nombreVend` varchar(30) NOT NULL,
  `apellidosVend` varchar(30) NOT NULL,
  `telefonoVend` char(9) NOT NULL,
  `dniVend` char(9) NOT NULL,
  `emailVend` varchar(30) NOT NULL,
  `sueldoVend` char(18) NOT NULL,
  `fechaIngreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artefacto`
--
ALTER TABLE `artefacto`
  ADD PRIMARY KEY (`codArt`),
  ADD KEY `R_17` (`codFabricante`);

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`nroBoleta`),
  ADD KEY `R_14` (`codClie`),
  ADD KEY `R_16` (`nroNP`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codClie`);

--
-- Indices de la tabla `detalleboleta`
--
ALTER TABLE `detalleboleta`
  ADD PRIMARY KEY (`nroBoleta`,`codArt`),
  ADD KEY `R_13` (`codArt`);

--
-- Indices de la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD PRIMARY KEY (`codArt`,`NroFactura`),
  ADD KEY `R_20` (`NroFactura`);

--
-- Indices de la tabla `detallenotaped`
--
ALTER TABLE `detallenotaped`
  ADD PRIMARY KEY (`codArt`,`nroNP`),
  ADD KEY `R_9` (`nroNP`);

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`codFabricante`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`NroFactura`);

--
-- Indices de la tabla `notapedido`
--
ALTER TABLE `notapedido`
  ADD PRIMARY KEY (`nroNP`),
  ADD KEY `R_15` (`codVend`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`codVend`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artefacto`
--
ALTER TABLE `artefacto`
  ADD CONSTRAINT `R_17` FOREIGN KEY (`codFabricante`) REFERENCES `fabricante` (`codFabricante`);

--
-- Filtros para la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD CONSTRAINT `R_14` FOREIGN KEY (`codClie`) REFERENCES `cliente` (`codClie`),
  ADD CONSTRAINT `R_16` FOREIGN KEY (`nroNP`) REFERENCES `notapedido` (`nroNP`);

--
-- Filtros para la tabla `detalleboleta`
--
ALTER TABLE `detalleboleta`
  ADD CONSTRAINT `R_13` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`),
  ADD CONSTRAINT `R_7` FOREIGN KEY (`nroBoleta`) REFERENCES `boleta` (`nroBoleta`);

--
-- Filtros para la tabla `detallefactura`
--
ALTER TABLE `detallefactura`
  ADD CONSTRAINT `R_18` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`),
  ADD CONSTRAINT `R_20` FOREIGN KEY (`NroFactura`) REFERENCES `factura` (`NroFactura`);

--
-- Filtros para la tabla `detallenotaped`
--
ALTER TABLE `detallenotaped`
  ADD CONSTRAINT `R_10` FOREIGN KEY (`codArt`) REFERENCES `artefacto` (`codArt`),
  ADD CONSTRAINT `R_9` FOREIGN KEY (`nroNP`) REFERENCES `notapedido` (`nroNP`);

--
-- Filtros para la tabla `notapedido`
--
ALTER TABLE `notapedido`
  ADD CONSTRAINT `R_15` FOREIGN KEY (`codVend`) REFERENCES `vendedor` (`codVend`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
