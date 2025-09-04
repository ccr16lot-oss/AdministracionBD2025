-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 23:29:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pedro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `TELEFONO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `NOMBRE`, `DIRECCION`, `TELEFONO`) VALUES
(1, 'Juan Pérez', 'Calle 1 #123', '555-1234'),
(2, 'María López', 'Avenida 2 #456', '555-5678'),
(3, 'Carlos Martínez', 'Boulevard 3 #789', '555-9012'),
(4, 'Ana Gómez', 'Plaza 4 #234', '555-3456'),
(5, 'Luis Rodríguez', 'Camino 5 #567', '555-7890'),
(6, 'Sofía Hernández', 'Ruta 6 #890', '555-2345'),
(7, 'Miguel Fernández', 'Calle 7 #135', '555-6789'),
(8, 'Laura Sánchez', 'Avenida 8 #246', '555-0123'),
(9, 'Pedro Ramírez', 'Boulevard 9 #357', '555-4567'),
(10, 'Elena Torres', 'Plaza 10 #468', '555-8901'),
(11, 'Diego Morales', 'Camino 11 #579', '555-3457'),
(12, 'Gabriela Díaz', 'Ruta 12 #680', '555-7891'),
(13, 'Andrés Castro', 'Calle 13 #791', '555-2346'),
(14, 'Clara Ruiz', 'Avenida 14 #802', '555-6780'),
(15, 'Jorge Jiménez', 'Boulevard 15 #913', '555-0124'),
(16, 'Marta Vázquez', 'Plaza 16 #124', '555-4568'),
(17, 'Rafael Ortiz', 'Camino 17 #235', '555-8902'),
(18, 'Lucía Mendoza', 'Ruta 18 #346', '555-3458'),
(19, 'Hugo Aguilar', 'Calle 19 #457', '555-7892'),
(20, 'Patricia Cruz', 'Avenida 20 #568', '555-2347'),
(21, 'Esteban Rivas', 'Boulevard 21 #679', '555-6781'),
(22, 'Verónica Herrera', 'Plaza 22 #780', '555-0125'),
(23, 'Ricardo Silva', 'Camino 23 #891', '555-4569'),
(24, 'Natalia Romero', 'Ruta 24 #902', '555-8903'),
(25, 'Felipe Castillo', 'Calle 25 #103', '555-3459'),
(26, 'Isabel Moreno', 'Avenida 26 #214', '555-7893'),
(27, 'Javier León', 'Boulevard 27 #325', '555-2348'),
(28, 'Daniela Ramos', 'Plaza 28 #436', '555-6782'),
(29, 'Fernando Vargas', 'Camino 29 #547', '555-0126'),
(30, 'Paula Soto', 'Ruta 30 #658', '555-4570'),
(31, 'Alberto Mendoza', 'Calle 31 #769', '555-8904'),
(32, 'Natalia Cruz', 'Avenida 32 #870', '555-3460'),
(33, 'Raúl Morales', 'Boulevard 33 #981', '555-7894'),
(34, 'Liliana Peña', 'Plaza 34 #192', '555-2349'),
(35, 'Óscar Jiménez', 'Camino 35 #203', '555-6783'),
(36, 'Marina Flores', 'Ruta 36 #314', '555-0127'),
(37, 'Pablo Castro', 'Calle 37 #425', '555-4571'),
(38, 'Daniela Méndez', 'Avenida 38 #536', '555-8905'),
(39, 'Tomás Paredes', 'Boulevard 39 #647', '555-3461'),
(40, 'Cecilia Vega', 'Plaza 40 #758', '555-7895'),
(41, 'Sergio Aguilar', 'Camino 41 #869', '555-2350'),
(42, 'Lorena Castillo', 'Ruta 42 #970', '555-6784'),
(43, 'Miguel Ángel Ruiz', 'Calle 43 #081', '555-0128'),
(44, 'Valeria Medina', 'Avenida 44 #192', '555-4572'),
(45, 'Joaquín Soto', 'Boulevard 45 #203', '555-8906'),
(46, 'Adriana Peña', 'Plaza 46 #314', '555-3462'),
(47, 'Mario Campos', 'Camino 47 #425', '555-7896'),
(48, 'Elisa Navarro', 'Ruta 48 #536', '555-2351'),
(49, 'Santiago Torres', 'Calle 49 #647', '555-6785'),
(50, 'Mónica Fuentes', 'Avenida 50 #758', '555-0129'),
(51, 'Iván Delgado', 'Boulevard 51 #869', '555-4573'),
(52, 'Natalia Bravo', 'Plaza 52 #970', '555-8907'),
(53, 'Roberto Molina', 'Camino 53 #081', '555-3463'),
(54, 'María Jiménez', 'Ruta 54 #192', '555-7897'),
(55, 'Víctor León', 'Calle 55 #203', '555-2352'),
(56, 'Sofía Rivas', 'Avenida 56 #314', '555-6786'),
(57, 'Ernesto Pérez', 'Boulevard 57 #425', '555-0130'),
(58, 'Gabriela Torres', 'Plaza 58 #536', '555-4574'),
(59, 'Javier Castillo', 'Camino 59 #647', '555-8908'),
(60, 'Paula Herrera', 'Ruta 60 #758', '555-3464'),
(61, 'Andrés Soto', 'Calle 61 #869', '555-7898'),
(62, 'Lorena Moreno', 'Avenida 62 #970', '555-2353'),
(63, 'Carlos Vega', 'Boulevard 63 #081', '555-6787'),
(64, 'Isabel Fuentes', 'Plaza 64 #192', '555-0131'),
(65, 'Luis Medina', 'Camino 65 #203', '555-4575'),
(66, 'Marina Delgado', 'Ruta 66 #314', '555-8909'),
(67, 'Tomás Bravo', 'Calle 67 #425', '555-3465'),
(68, 'Ana Campos', 'Avenida 68 #536', '555-7899'),
(69, 'Felipe Navarro', 'Boulevard 69 #647', '555-2354'),
(70, 'Cecilia Molina', 'Plaza 70 #758', '555-6788'),
(71, 'Jorge Rivas', 'Camino 71 #869', '555-0132'),
(72, 'Elena Pérez', 'Ruta 72 #970', '555-4576'),
(73, 'Ricardo Torres', 'Calle 73 #081', '555-8910'),
(74, 'Natalia Castillo', 'Avenida 74 #192', '555-3466'),
(75, 'Fernando Herrera', 'Boulevard 75 #203', '555-7900'),
(76, 'Sofía Soto', 'Plaza 76 #314', '555-2355'),
(77, 'Miguel Moreno', 'Camino 77 #425', '555-6789'),
(78, 'Valeria Vega', 'Ruta 78 #536', '555-0133'),
(79, 'Diego Fuentes', 'Calle 79 #647', '555-4577'),
(80, 'Laura Medina', 'Avenida 80 #758', '555-8911');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `ID_DETALLE` int(11) NOT NULL,
  `ID_FACTURA` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TOTAL_DETA` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`ID_DETALLE`, `ID_FACTURA`, `ID_PRODUCTO`, `CANTIDAD`, `TOTAL_DETA`) VALUES
(1, 1, 1, 2, 2.40),
(2, 1, 5, 1, 0.90),
(3, 2, 3, 5, 5.50),
(4, 2, 10, 2, 8.00),
(5, 3, 15, 4, 3.60),
(6, 3, 20, 3, 4.50),
(7, 4, 7, 6, 12.00),
(8, 4, 12, 2, 4.60),
(9, 5, 8, 10, 25.00),
(10, 5, 14, 8, 11.20),
(11, 6, 11, 3, 5.40),
(12, 6, 18, 7, 47.60),
(13, 7, 4, 5, 17.00),
(14, 7, 19, 4, 8.80),
(15, 8, 21, 2, 4.00),
(16, 8, 25, 1, 1.50),
(17, 9, 6, 9, 9.00),
(18, 9, 22, 5, 4.50),
(19, 10, 2, 3, 4.50),
(20, 10, 9, 2, 6.40),
(21, 11, 30, 3, 4.80),
(22, 11, 13, 4, 6.80),
(23, 12, 17, 2, 15.00),
(24, 12, 23, 6, 6.60),
(25, 13, 28, 5, 5.00),
(26, 13, 16, 7, 35.00),
(27, 14, 29, 3, 2.10),
(28, 14, 24, 4, 4.40),
(29, 15, 31, 6, 9.60),
(30, 15, 27, 3, 4.80),
(31, 16, 26, 5, 6.50),
(32, 16, 32, 4, 7.20),
(33, 17, 33, 7, 11.20),
(34, 17, 35, 2, 3.60),
(35, 18, 36, 3, 7.50),
(36, 18, 37, 1, 1.80),
(37, 19, 38, 4, 8.00),
(38, 19, 34, 5, 10.00),
(39, 20, 39, 3, 4.80),
(40, 20, 40, 6, 5.40),
(41, 21, 41, 2, 3.80),
(42, 21, 43, 1, 4.20),
(43, 22, 42, 4, 7.60),
(44, 22, 44, 3, 4.50),
(45, 23, 45, 5, 15.00),
(46, 23, 46, 2, 3.00),
(47, 24, 47, 6, 16.80),
(48, 24, 48, 1, 0.70),
(49, 25, 49, 7, 4.90),
(50, 25, 50, 3, 8.40),
(51, 26, 51, 4, 26.00),
(52, 26, 53, 2, 4.80),
(53, 27, 52, 3, 12.00),
(54, 27, 54, 5, 13.50),
(55, 28, 55, 6, 17.40),
(56, 28, 56, 1, 1.50),
(57, 29, 57, 4, 10.40),
(58, 29, 58, 3, 7.80),
(59, 30, 59, 2, 5.00),
(60, 30, 60, 5, 7.50),
(61, 31, 61, 3, 8.70),
(62, 31, 62, 4, 10.80),
(63, 32, 63, 1, 2.00),
(64, 32, 64, 2, 1.60),
(65, 33, 65, 5, 8.00),
(66, 33, 66, 3, 9.30),
(67, 34, 67, 6, 6.00),
(68, 34, 68, 4, 6.80),
(69, 35, 69, 2, 5.00),
(70, 35, 70, 7, 18.20),
(71, 36, 71, 5, 16.00),
(72, 36, 72, 3, 10.20),
(73, 37, 73, 4, 14.40),
(74, 37, 74, 2, 7.60),
(75, 38, 75, 3, 12.00),
(76, 38, 76, 1, 4.20),
(77, 39, 77, 6, 6.00),
(78, 39, 78, 3, 5.10),
(79, 40, 79, 2, 7.00),
(80, 40, 80, 4, 12.40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_FACTURA` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `TOTAL` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_FACTURA`, `ID_CLIENTE`, `FECHA`, `TOTAL`) VALUES
(1, 1, '2025-01-15', 150.50),
(2, 2, '2025-01-16', 230.75),
(3, 3, '2025-01-17', 310.00),
(4, 4, '2025-01-18', 125.00),
(5, 5, '2025-01-19', 540.20),
(6, 6, '2025-01-20', 430.10),
(7, 7, '2025-01-21', 220.00),
(8, 8, '2025-01-22', 195.45),
(9, 9, '2025-01-23', 375.80),
(10, 10, '2025-01-24', 410.00),
(11, 11, '2025-01-25', 300.60),
(12, 12, '2025-01-26', 270.50),
(13, 13, '2025-01-27', 180.00),
(14, 14, '2025-01-28', 205.75),
(15, 15, '2025-01-29', 140.90),
(16, 16, '2025-01-30', 195.30),
(17, 17, '2025-02-01', 310.00),
(18, 18, '2025-02-02', 400.00),
(19, 19, '2025-02-03', 235.00),
(20, 20, '2025-02-04', 300.00),
(21, 21, '2025-02-05', 350.00),
(22, 22, '2025-02-06', 275.40),
(23, 23, '2025-02-07', 190.10),
(24, 24, '2025-02-08', 220.00),
(25, 25, '2025-02-09', 160.00),
(26, 26, '2025-02-10', 210.50),
(27, 27, '2025-02-11', 310.20),
(28, 28, '2025-02-12', 180.00),
(29, 29, '2025-02-13', 400.50),
(30, 30, '2025-02-14', 320.00),
(31, 31, '2025-02-15', 150.00),
(32, 32, '2025-02-16', 260.70),
(33, 33, '2025-02-17', 280.00),
(34, 34, '2025-02-18', 390.00),
(35, 35, '2025-02-19', 220.00),
(36, 36, '2025-02-20', 330.00),
(37, 37, '2025-02-21', 180.20),
(38, 38, '2025-02-22', 250.50),
(39, 39, '2025-02-23', 275.00),
(40, 40, '2025-02-24', 190.00),
(41, 41, '2025-02-25', 210.00),
(42, 42, '2025-02-26', 300.00),
(43, 43, '2025-02-27', 280.40),
(44, 44, '2025-02-28', 150.00),
(45, 45, '2025-03-01', 320.00),
(46, 46, '2025-03-02', 260.00),
(47, 47, '2025-03-03', 230.00),
(48, 48, '2025-03-04', 170.00),
(49, 49, '2025-03-05', 200.00),
(50, 50, '2025-03-06', 280.00),
(51, 51, '2025-03-07', 350.00),
(52, 52, '2025-03-08', 310.00),
(53, 53, '2025-03-09', 240.00),
(54, 54, '2025-03-10', 270.00),
(55, 55, '2025-03-11', 290.00),
(56, 56, '2025-03-12', 180.00),
(57, 57, '2025-03-13', 220.00),
(58, 58, '2025-03-14', 330.00),
(59, 59, '2025-03-15', 400.00),
(60, 60, '2025-03-16', 350.00),
(61, 61, '2025-03-17', 300.00),
(62, 62, '2025-03-18', 290.00),
(63, 63, '2025-03-19', 210.00),
(64, 64, '2025-03-20', 240.00),
(65, 65, '2025-03-21', 250.00),
(66, 66, '2025-03-22', 310.00),
(67, 67, '2025-03-23', 200.00),
(68, 68, '2025-03-24', 230.00),
(69, 69, '2025-03-25', 275.00),
(70, 70, '2025-03-26', 290.00),
(71, 71, '2025-03-27', 320.00),
(72, 72, '2025-03-28', 340.00),
(73, 73, '2025-03-29', 360.00),
(74, 74, '2025-03-30', 380.00),
(75, 75, '2025-03-31', 400.00),
(76, 76, '2025-04-01', 420.00),
(77, 77, '2025-04-02', 440.00),
(78, 78, '2025-04-03', 460.00),
(79, 79, '2025-04-04', 480.00),
(80, 80, '2025-04-05', 500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `NOMBRE_PRO` varchar(45) NOT NULL,
  `PRECIOVENTA` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_PRODUCTO`, `NOMBRE_PRO`, `PRECIOVENTA`) VALUES
(1, 'Arroz 1kg', 1.20),
(2, 'Frijoles 1kg', 1.50),
(3, 'Azúcar 1kg', 1.10),
(4, 'Aceite 1L', 3.40),
(5, 'Leche 1L', 0.90),
(6, 'Pan 500g', 1.00),
(7, 'Huevos 12 unidades', 2.00),
(8, 'Queso 250g', 2.50),
(9, 'Jamon 200g', 3.20),
(10, 'Café 250g', 4.00),
(11, 'Té 100g', 1.80),
(12, 'Mantequilla 200g', 2.30),
(13, 'Yogur 1L', 1.70),
(14, 'Harina 1kg', 1.40),
(15, 'Sal 1kg', 0.80),
(16, 'Pollo entero 1kg', 5.00),
(17, 'Carne de res 1kg', 7.50),
(18, 'Pescado 1kg', 6.80),
(19, 'Manzanas 1kg', 2.20),
(20, 'Bananas 1kg', 1.50),
(21, 'Naranjas 1kg', 2.00),
(22, 'Tomates 1kg', 1.90),
(23, 'Lechuga unidad', 0.90),
(24, 'Cebolla 1kg', 1.10),
(25, 'Ajo 100g', 1.50),
(26, 'Zanahorias 1kg', 1.30),
(27, 'Papas 1kg', 1.20),
(28, 'Pepino unidad', 0.70),
(29, 'Calabacín unidad', 1.00),
(30, 'Pasta 500g', 1.60),
(31, 'Salsa de tomate 500g', 1.80),
(32, 'Mayonesa 250g', 1.50),
(33, 'Mostaza 200g', 1.20),
(34, 'Refresco 2L', 2.50),
(35, 'Agua mineral 1.5L', 1.00),
(36, 'Cerveza 355ml', 1.50),
(37, 'Vino tinto 750ml', 8.00),
(38, 'Vino blanco 750ml', 7.50),
(39, 'Jugo de naranja 1L', 2.20),
(40, 'Galletas 200g', 1.50),
(41, 'Chocolate 100g', 1.80),
(42, 'Helado 500ml', 3.00),
(43, 'Cereal 500g', 2.50),
(44, 'Miel 250g', 3.40),
(45, 'Frutas secas 200g', 4.00),
(46, 'Nueces 200g', 4.50),
(47, 'Aceitunas 200g', 2.20),
(48, 'Atún en lata 200g', 3.00),
(49, 'Sardinas en lata 200g', 2.50),
(50, 'Sopa instantánea', 1.00),
(51, 'Caldo de pollo 1L', 1.80),
(52, 'Jamon de pavo 200g', 3.00),
(53, 'Salchichas 250g', 2.80),
(54, 'Queso crema 200g', 2.60),
(55, 'Crema para café 250ml', 1.50),
(56, 'Pan integral 500g', 1.50),
(57, 'Arvejas 1kg', 1.90),
(58, 'Chícharos 1kg', 1.80),
(59, 'Lentejas 1kg', 1.70),
(60, 'Salsa BBQ 500g', 2.50),
(61, 'Vinagre 500ml', 1.20),
(62, 'Aceite de oliva 500ml', 6.50),
(63, 'Coco rallado 200g', 1.70),
(64, 'Azúcar morena 1kg', 1.30),
(65, 'Pimienta 100g', 2.00),
(66, 'Canela 50g', 1.50),
(67, 'Clavos de olor 50g', 1.80),
(68, 'Chocolate en polvo 200g', 2.50),
(69, 'Leche condensada 400g', 1.90),
(70, 'Leche evaporada 400g', 1.70),
(71, 'Gaseosa cola 2L', 2.50),
(72, 'Galletas saladas 200g', 1.60),
(73, 'Barra de pan', 0.80),
(74, 'Mermelada 250g', 2.20),
(75, 'Cereal para niños 500g', 3.00),
(76, 'Salsa de soya 250ml', 2.00),
(77, 'Mostaza Dijon 200g', 1.80),
(78, 'Aceite vegetal 1L', 3.00),
(79, 'Tocino 200g', 3.50),
(80, 'Jamon cocido 200g', 3.10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`ID_DETALLE`),
  ADD KEY `ID_FACTURA` (`ID_FACTURA`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `ID_DETALLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`ID_FACTURA`) REFERENCES `factura` (`ID_FACTURA`),
  ADD CONSTRAINT `detalle_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
