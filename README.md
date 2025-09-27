CREATE TABLE `categoria` (
  `cod_categoria` char(6) PRIMARY KEY,
  `nombre` varchar(30) NOT NULL
);

CREATE TABLE `producto` (
  `id_producto` char(6) PRIMARY KEY,
  `descripcion` varchar(100) NOT NULL,
  `precio_venta` decimal NOT NULL,
  `stock_minimo` integer,
  `stock_actual` integer,
  `cod_categoria` char(6)
);

CREATE TABLE `direccion` (
  `id_direccion` integer PRIMARY KEY,
  `departemento` varchar(100),
  `provincia` varchar(100),
  `distrito` varchar(100),
  `detalledireccion` varchar(150),
  `referencia` varchar(150)
);

CREATE TABLE `Sede` (
  `cod_sede` int PRIMARY KEY,
  `m2` int,
  `aforo` int,
  `num_pisos` int,
  `ubicacion` varchar(150),
  `id_direccion` integer
);

CREATE TABLE `Empleado` (
  `cod_emple` int PRIMARY KEY,
  `nombres` varchar(100),
  `apellidos` varchar(100),
  `dni_emple` varchar(100),
  `estado_civil` varchar(150),
  `nivel_educa` varchar(150),
  `telefono` int,
  `email` varchar(100),
  `fecha_ingreso` date,
  `id_direccion` int,
  `cod_cargo` int,
  `cod_sede` int
);

CREATE TABLE `Cliente` (
  `id_cliente` int PRIMARY KEY,
  `nombre` varchar(100),
  `apellidos` varchar(100),
  `telefono` int,
  `email` varchar(100)
);

CREATE TABLE `Direccion_Cliente` (
  `id_cliente` int,
  `id_direccion` int,
  PRIMARY KEY (`id_cliente`, `id_direccion`)
);

CREATE TABLE `Boleta` (
  `num_boleta` int PRIMARY KEY,
  `fecha_emi` varchar(150),
  `id_cliente` decimal(10,2),
  `cod_emple` int,
  `estado_boleta` int,
  `total` int
);

CREATE TABLE `DetalleBoleta` (
  `num_boleta` int,
  `id_producto` int,
  `cantidad` int,
  `importe` decimal,
  `IGV` decimal,
  PRIMARY KEY (`num_boleta`, `id_producto`)
);

CREATE TABLE `Cargos` (
  `cod_cargos` int PRIMARY KEY,
  `nombre_cargo` varchar(255),
  `sueldo_basico` decimal
);

ALTER TABLE `producto` ADD FOREIGN KEY (`cod_categoria`) REFERENCES `categoria` (`cod_categoria`);

ALTER TABLE `Direccion_Cliente` ADD FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id_direccion`);

ALTER TABLE `Sede` ADD FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id_direccion`);

ALTER TABLE `Direccion_Cliente` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Cliente` (`id_cliente`);

ALTER TABLE `DetalleBoleta` ADD FOREIGN KEY (`num_boleta`) REFERENCES `Boleta` (`num_boleta`);

ALTER TABLE `DetalleBoleta` ADD FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

ALTER TABLE `Empleado` ADD FOREIGN KEY (`id_direccion`) REFERENCES `direccion` (`id_direccion`);

ALTER TABLE `Empleado` ADD FOREIGN KEY (`cod_cargo`) REFERENCES `Cargos` (`cod_cargos`);

ALTER TABLE `Empleado` ADD FOREIGN KEY (`cod_sede`) REFERENCES `Sede` (`cod_sede`);
