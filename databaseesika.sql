-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 06:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseesika`
--

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `efectivoTotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campania`
--

CREATE TABLE `campania` (
  `campania_id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `numero_campania` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campania`
--

INSERT INTO `campania` (`campania_id`, `fecha_inicio`, `fecha_final`, `numero_campania`) VALUES
(11, '2024-06-14', '2024-06-15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `nombre`) VALUES
(1, 'Perfume'),
(2, 'maquillaje'),
(3, 'CREMAS'),
(5, 'ACCESORIOS');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(11) NOT NULL,
  `dni` varchar(25) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `dni`, `provincia`, `ciudad`, `direccion`, `usuario_id`) VALUES
(6, '72530991', 'Ucayali', 'Pucallpa', 'A.H El triunfo', 8);

-- --------------------------------------------------------

--
-- Table structure for table `detalles_registro_ventas`
--

CREATE TABLE `detalles_registro_ventas` (
  `detalle_registro_ventas_id` int(11) NOT NULL,
  `registro_ventas_id` int(11) DEFAULT NULL,
  `producto_nombre` varchar(500) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `precio_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalles_registro_ventas`
--

INSERT INTO `detalles_registro_ventas` (`detalle_registro_ventas_id`, `registro_ventas_id`, `producto_nombre`, `cantidad`, `precio_unitario`, `precio_total`) VALUES
(39, 29, 'RIMEL', 15, '775.00', 11625),
(40, 30, 'base hidratante ultraligera', 1, '150.00', 150),
(41, 31, 'perfume vibranza', 1, '5.00', 5),
(42, 32, 'perfume vibranza', 1, '5.00', 5),
(43, 33, 'perfume vibranza', 1, '5.00', 5),
(44, 34, 'perfume vibranza', 1, '5.00', 5),
(45, 35, 'perfume vibranza', 1, '5.00', 5),
(46, 36, 'perfume vibranza', 1, '5.00', 5),
(47, 37, 'perfume vibranza', 1, '5.00', 5),
(48, 38, 'perfume vibranza', 1, '5.00', 5),
(49, 39, 'perfume vibranza', 1, '5.00', 5),
(50, 40, 'perfume vibranza', 1, '5.00', 5),
(51, 41, 'perfume vibranza', 1, '5.00', 5),
(52, 42, 'perfume vibranza', 1, '5.00', 5),
(53, 43, 'perfume vibranza', 1, '5.00', 5),
(54, 44, 'perfume vibranza', 1, '5.00', 5),
(55, 45, 'perfume vibranza', 1, '5.00', 5),
(56, 46, 'perfume vibranza', 1, '5.00', 5),
(57, 47, 'perfume vibranza', 1, '5.00', 5),
(58, 48, 'perfume vibranza', 1, '5.00', 5),
(59, 49, 'perfume vibranza', 1, '5.00', 5),
(60, 50, 'perfume vibranza', 1, '5.00', 5),
(61, 51, 'perfume vibranza', 1, '5.00', 5),
(62, 52, 'perfume vibranza', 1, '5.00', 5),
(63, 53, 'perfume vibranza', 1, '5.00', 5),
(64, 54, 'perfume vibranza', 1, '5.00', 5),
(65, 55, 'perfume vibranza', 1, '5.00', 5),
(66, 56, 'perfume vibranza', 1, '5.00', 5),
(67, 57, 'perfume vibranza', 1, '5.00', 5),
(68, 58, 'perfume vibranza', 1, '5.00', 5),
(69, 59, 'perfume vibranza', 1, '5.00', 5),
(70, 60, 'perfume vibranza', 1, '5.00', 5),
(71, 61, 'perfume vibranza', 1, '5.00', 5),
(72, 62, 'perfume vibranza', 1, '5.00', 5),
(73, 63, 'perfume vibranza', 1, '5.00', 5),
(74, 64, 'perfume vibranza', 1, '5.00', 5),
(75, 65, 'perfume vibranza', 1, '5.00', 5),
(76, 66, 'perfume vibranza', 1, '5.00', 5),
(77, 67, 'perfume vibranza', 1, '5.00', 5),
(78, 68, 'perfume vibranza', 2, '5.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre`) VALUES
(1, 'Esika'),
(2, 'Avon'),
(3, 'Cyzone');

-- --------------------------------------------------------

--
-- Table structure for table `precio`
--

CREATE TABLE `precio` (
  `precio_id` int(11) NOT NULL,
  `costo` decimal(20,2) DEFAULT NULL,
  `precio` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precio`
--

INSERT INTO `precio` (`precio_id`, `costo`, `precio`) VALUES
(1, '125.00', '150.00'),
(13, '150.00', '100.00'),
(14, '90.00', '80.00'),
(15, '90.00', '80.00'),
(16, '35.00', '30.00'),
(17, '30.00', '20.00'),
(18, '30.00', '20.00'),
(19, '45.00', '40.00'),
(20, '456.00', '754.00'),
(21, '125.00', '150.00'),
(22, '49.00', '20.00'),
(23, '200.00', '100.00'),
(24, '300.00', '100.00'),
(25, '400.00', '100.00'),
(26, '100.00', '125.00'),
(27, '120.00', '200.00'),
(28, '10.00', '555.00'),
(29, '456.00', '456.00'),
(30, '65.00', '100.00'),
(31, '10.00', '11.00'),
(32, '105.00', '150.00'),
(33, '678.00', '775.00'),
(34, '102.00', '150.00'),
(35, '6.00', '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `imagen_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`producto_id`, `stock_id`, `nombre`, `categoria_id`, `id_marca`, `modelo`, `imagen_url`) VALUES
(1, 1, 'perfume vibranza', 1, 1, 'SA-0015', ''),
(11, 11, 'labial tono mate', 2, 1, 'colorfix24H(rojo seductor)', ''),
(13, 13, 'RIMEL', 2, 1, 'Mega multi benefit(aprueba de agua)', ''),
(14, 14, 'base hidratante ultraligera', 2, 1, 'Natural Fresh', ''),
(22, 22, 'CREMA CORPORAL', 3, 1, 'VAINILLA Y JAZMIN', '');

-- --------------------------------------------------------

--
-- Table structure for table `registro_ventas`
--

CREATE TABLE `registro_ventas` (
  `registro_ventas_id` int(11) NOT NULL,
  `nombreCliente` varchar(500) DEFAULT NULL,
  `usuarioAtendiendo` varchar(500) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registro_ventas`
--

INSERT INTO `registro_ventas` (`registro_ventas_id`, `nombreCliente`, `usuarioAtendiendo`, `fecha`, `total`) VALUES
(29, 'Junior Sinarahua Sinarahua Mozombite', 'Kathylene', '2024-06-09', '11625.00'),
(30, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-09', '150.00'),
(31, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(32, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(33, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(34, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(35, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(36, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(37, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(38, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(39, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(40, 'Junior Sinarahua Sinarahua Mozombite', 'Kathylene', '2024-06-14', '5.00'),
(41, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(42, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(43, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(44, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(45, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(46, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(47, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(48, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(49, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(50, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(51, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(52, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(53, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(54, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(55, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(56, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(57, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(58, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(59, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(60, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(61, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(62, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(63, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(64, 'Junior Sinarahua Sinarahua Mozombite', 'Margarita', '2024-06-14', '5.00'),
(65, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(66, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(67, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '5.00'),
(68, 'Junior Sinarahua Sinarahua Mozombite', 'judith', '2024-06-14', '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `unidad_medida_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `unidad_medida_id`, `cantidad`) VALUES
(1, 1, 98),
(11, 14, 15),
(12, 14, 20),
(13, 14, 85),
(14, 14, 5),
(15, 14, 10),
(16, 1, 14),
(17, 1, 9),
(18, 1, 6),
(19, 1, 5),
(20, 1, 8),
(21, 14, 5),
(22, 14, 12),
(23, 14, 5),
(24, 14, 12),
(25, 14, 3),
(26, 14, 24),
(27, 1, 3635),
(28, 1, 54),
(29, 1, 76900),
(30, 1, 789);

-- --------------------------------------------------------

--
-- Table structure for table `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `unidad_medida_id` int(11) NOT NULL,
  `unidadMedida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unidad_medida`
--

INSERT INTO `unidad_medida` (`unidad_medida_id`, `unidadMedida`) VALUES
(1, 'mililitros'),
(14, 'gramo');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombreUsuario` varchar(255) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `linkFoto` varchar(1025) DEFAULT NULL,
  `dni` int(15) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `celular` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `nombres`, `apellidos`, `email`, `nombreUsuario`, `clave`, `tipo`, `linkFoto`, `dni`, `genero`, `fecha_nacimiento`, `celular`) VALUES
(3, 'Margarita', 'meza', 'margameza@gmail.com', 'marga', '$2b$10$fjKhCyPK.I/efAGF.KCL3eQR651GP/XMXgsnq3nPN0laAqKKlSelK', 'Administrador', 'https://scontent.flim1-1.fna.fbcdn.net/v/t39.30808-6/310994921_616816006652063_2973160034871553228_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeE0Z-Yq3uuUuOioXPrbgCkmGkgfz4SADuQaSB_PhIAO5LdssXc9D4cNHJgmZfB2Sx-fZybUYKmdUtHG_JiY1jJ-&_nc_ohc=_EJ1tFB8CA4Q7kNvgELDqk9&_nc_ht=scontent.flim1-1.fna&oh=00_AYChHf3uHB1kDbScKPY_3XFRe8bV7uJ2G5MNzpsxOiqxig&oe=66697317', 62903208, 'Femenino', '2004-04-16', 943257792),
(8, 'Junior Sinarahua', 'Sinarahua Mozombite', 'junior@gmail.com', '', '$2b$10$.wSucPP9U7innMNIhqAsBe2RW3Q05JfOHCwBUTRso5Y8AgTKd1nMm', 'cliente', '', 0, 'Masculino', '2024-06-27', 985487542),
(10, 'judith', 'piña', 'judih@gmail.com', 'judith', '$2b$10$Qv6byNQaZCcM7tXUVRbopefBfxJuDm5wvgZyyXnOZ/Hh5MsNFZP7C', 'Empleado', 'https://scontent.fjau4-1.fna.fbcdn.net/v/t39.30808-1/395699523_1074383010592833_5324754603803064193_n.jpg?stp=dst-jpg_s200x200&_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHeXjsJ8QTmepetih1AO0x4DaGx1ESyyRENobHURLLJEec33S3RAlNxF0jMQGFY1W6_-pLxosu97hPjoGq8IRoe&_nc_ohc=zSrXZgk8pa4Q7kNvgFvVUYJ&_nc_ht=scontent.fjau4-1.fna&oh=00_AYCXyQWXbz3vlWAuxOhBvea-Vi10TF7e46F26deRH5OsMQ&oe=666E8896', 63847345, 'Femenino', '2005-04-12', 934555623),
(11, 'Kathylene', 'Prada Perez', 'prada@gmail.com', 'Prada', '$2b$10$B4Dzuv79c.7TPxWhNn0.BesxCuzBLH5XIFQInsFYjP9FgTqHxHhgu', 'Administrador', 'https://scontent.fjau4-1.fna.fbcdn.net/v/t39.30808-1/361925822_203909532622853_3432091328748280890_n.jpg?stp=dst-jpg_s200x200&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHPIU-hc9bYnhATAtwfDIPqlUS-XNXCpOSVRL5c1cKk5EUc_Q6pZvSGJviPdWooUf0JGZkDLzYKJ_euN7L-LZBB&_nc_ohc=VpVmBVzhuXAQ7kNvgFM1tMR&_nc_ht=scontent.fjau4-1.fna&oh=00_AYCquatUynTRpfgZ8-ZriUWOmNgyO4jcnwqvkD1JwHl-PA&oe=666E8C28', 62290134, 'Femenino', '2004-03-30', 930294551);

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `foto_producto` varchar(400) DEFAULT NULL,
  `precio_id` int(11) NOT NULL,
  `campania_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`venta_id`, `producto_id`, `cantidad`, `descripcion`, `foto_producto`, `precio_id`, `campania_id`) VALUES
(38, 1, 61, 'zzz', NULL, 35, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`),
  ADD KEY `fk_usuarioID` (`usuario_id`);

--
-- Indexes for table `campania`
--
ALTER TABLE `campania`
  ADD PRIMARY KEY (`campania_id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `detalles_registro_ventas`
--
ALTER TABLE `detalles_registro_ventas`
  ADD PRIMARY KEY (`detalle_registro_ventas_id`),
  ADD KEY `producto_id` (`producto_nombre`),
  ADD KEY `regiswtor_a` (`registro_ventas_id`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `precio`
--
ALTER TABLE `precio`
  ADD PRIMARY KEY (`precio_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `marca_ibfk_1` (`id_marca`);

--
-- Indexes for table `registro_ventas`
--
ALTER TABLE `registro_ventas`
  ADD PRIMARY KEY (`registro_ventas_id`),
  ADD KEY `cliente_id` (`nombreCliente`),
  ADD KEY `usuario_id` (`usuarioAtendiendo`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `unidad_medida_id` (`unidad_medida_id`);

--
-- Indexes for table `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`unidad_medida_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD KEY `fk_producto` (`producto_id`),
  ADD KEY `fk_venta_precio` (`precio_id`),
  ADD KEY `fk_venta_campania` (`campania_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campania`
--
ALTER TABLE `campania`
  MODIFY `campania_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detalles_registro_ventas`
--
ALTER TABLE `detalles_registro_ventas`
  MODIFY `detalle_registro_ventas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `precio`
--
ALTER TABLE `precio`
  MODIFY `precio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `registro_ventas`
--
ALTER TABLE `registro_ventas`
  MODIFY `registro_ventas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `unidad_medida_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `fk_usuarioID` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);

--
-- Constraints for table `detalles_registro_ventas`
--
ALTER TABLE `detalles_registro_ventas`
  ADD CONSTRAINT `regiswtor_a` FOREIGN KEY (`registro_ventas_id`) REFERENCES `registro_ventas` (`registro_ventas_id`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`unidad_medida_id`);

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_producto` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `fk_venta_campania` FOREIGN KEY (`campania_id`) REFERENCES `campania` (`campania_id`),
  ADD CONSTRAINT `fk_venta_precio` FOREIGN KEY (`precio_id`) REFERENCES `precio` (`precio_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
