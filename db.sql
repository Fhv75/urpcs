-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 19:59:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `urpc's`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenamiento`
--

CREATE TABLE `almacenamiento` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `tamano` varchar(20) NOT NULL,
  `velocidad_esctritura` varchar(20) NOT NULL,
  `velocidad_lectura` varchar(20) NOT NULL,
  `tiene_dram` varchar(3) DEFAULT NULL,
  `rpm` int(11) DEFAULT NULL,
  `capacidad` varchar(11) NOT NULL,
  `id_gama` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `id_modelo` int(2) NOT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacenamiento`
--

INSERT INTO `almacenamiento` (`SKU`, `nombre`, `precio`, `tamano`, `velocidad_esctritura`, `velocidad_lectura`, `tiene_dram`, `rpm`, `capacidad`, `id_gama`, `tipo`, `id_modelo`, `url_amazon`) VALUES
('B0BBT6Y72X', 'Hikivision E100', 98.99, '2.5\'\'', '450 mb/s', '550 mb/s', 'No', 0, '512gb', 2, 'SSD', 1, 'https://www.amazon.com/Hikvision-interno-pulgadas-expansi%C3%B3n-escritorio/dp/B0BBT6Y72X/ref=sr_1_1_sspa?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=30DXEZJLEF0WP&keywords=hikvision%2Be100&qid=1666913798&qu=eyJxc2MiOiIwLjAwIiwicXNhIjoiMC4wMCIsInFzcCI6IjAuMDAifQ%3D%3D&sprefix=hikivision%2Be100%2Caps%2C202&sr=8-1-spons&th=1'),
('‎B0088PUEP', 'WD Blue WD10EZEX', 34.99, '3.5”', '', '', 'No', 7200, '1 TB ', 3, 'HDD', 2, 'https://www.amazon.com/dp/B0088PUEPK?ref_=cm_sw_r_cp_ud_dp_VKZWB7PZW7STSWSQ66E0'),
('‎B079XC5PV', 'Kingston ‎A400 SSD', 62.99, '2.5\'\'', '450 mb/s', '500 mb/s', 'No', 0, '960gb', 1, 'SSD', 3, 'https://www.amazon.com/Kingston-960GB-interno-SA400S37-960G/dp/B079XC5PVV?qu=eyJxc2MiOiI0LjAxIiwicXNhIjoiMy41MSIsInFzcCI6IjIuODcifQ%3D%3D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion`
--

CREATE TABLE `certificacion` (
  `id` int(11) NOT NULL,
  `certificacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `certificacion`
--

INSERT INTO `certificacion` (`id`, `certificacion`) VALUES
(1, '80 PLUS'),
(2, '80 PLUS BRONZE'),
(3, '80 PLUS SILVER'),
(4, '80 PLUS GOLD'),
(5, '80 PLUS PLATINUM'),
(6, '80 PLUS TITANIUM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cpu`
--

CREATE TABLE `cpu` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `socket` varchar(10) NOT NULL,
  `velocidad_base` varchar(11) NOT NULL,
  `grafica_int` varchar(3) NOT NULL,
  `nucleos` int(11) NOT NULL,
  `hilos` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_gama` int(11) NOT NULL,
  `id_modelo` int(2) DEFAULT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cpu`
--

INSERT INTO `cpu` (`SKU`, `nombre`, `precio`, `socket`, `velocidad_base`, `grafica_int`, `nucleos`, `hilos`, `tipo`, `id_gama`, `id_modelo`, `url_amazon`) VALUES
('B086MHSTWN', ' Intel Core i5-10400F', 128.64, 'BGA 437', '2.9GHz', 'No', 6, 12, 'CPU', 1, 4, 'https://www.amazon.com/-/es/i5-10400F-Procesador-sobremesa-gr%C3%A1ficos-procesador/dp/B086MHSTWN?qu=eyJxc2MiOiIyLjIxIiwicXNhIjoiMS41MiIsInFzcCI6IjEuMTUifQ%3D%3D'),
('B0876Y2TMZ', 'AMD Ryzen 3 3100', 149.99, 'AM4', '3.6GHz', 'No', 4, 8, 'CPU', 2, 5, 'https://www.amazon.com/-/es/Procesador-escritorio-desbloqueado-n%C3%BAcleos-enfriador/dp/B0876Y2TMZ/ref=sr_1_1?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=VS03WAKPQ3HA&keywords=ryzen+3+3100&qid=1666914060&qu=eyJxc2MiOiIzLjA4IiwicXNhIjoiMi4xOCIsInFzcCI6IjEuNDgifQ%3D%3D&sprefix=ryzen+3+3100%2Caps%2C208&sr=8-1'),
('B0883NSYG1', 'Intel Pentium Gold G6400', 0, 'LGA 1200', '4 GHz', 'Si', 2, 4, 'CPU', 3, 6, 'https://www.amazon.es/dp/B0883NSYG1?_encoding=UTF8&psc=1&ref_=cm_sw_r_cp_ud_dp_X7JB07Z7SRYAP00GD7W2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factor_forma`
--

CREATE TABLE `factor_forma` (
  `id` int(10) NOT NULL,
  `factor_forma` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factor_forma`
--

INSERT INTO `factor_forma` (`id`, `factor_forma`) VALUES
(1, 'ATX'),
(2, 'mATX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabinete`
--

CREATE TABLE `gabinete` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `id_factor_forma` int(10) NOT NULL,
  `panel_lateral` varchar(11) NOT NULL,
  `tamano` varchar(20) NOT NULL,
  `iluminacion` varchar(10) NOT NULL,
  `peso` int(11) NOT NULL,
  `id_gama` int(11) NOT NULL,
  `id_modelo` int(2) NOT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gabinete`
--

INSERT INTO `gabinete` (`SKU`, `nombre`, `precio`, `id_factor_forma`, `panel_lateral`, `tamano`, `iluminacion`, `peso`, `id_gama`, `id_modelo`, `url_amazon`) VALUES
(' B08SDS2Q9', ' DeepCool Matrexx 40', 0, 2, 'Vidrio Temp', '15.75x8.46x16.97\'\'', 'no', 3620, 2, 7, 'https://www.amazon.com/-/es/DEEPCOOL-MATREXX-40-Mini-ITX-Micro-ATX/dp/B08SDS2Q9J/ref=sr_1_2?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=DS8D9BLISQW8&keywords=DeepCool%2BMatrexx%2B30&qid=1666913838&qu=eyJxc2MiOiIyLjg3IiwicXNhIjoiMi42NyIsInFzcCI6IjEuMDAifQ%3D%3D&sprefix=deepcool%2Bmatrexx%2B30%2Caps%2C221&sr=8-2&th=1'),
('B07BFGB8Z6', 'Gabinete Thermaltake Core P3', 139.99, 1, 'Vidrio temp', '7.3 x 21.6 x 21.3 pu', 'no', 12, 1, 19, 'https://www.amazon.com/-/es/Thermaltake-Core-ATX-computadora-CA-1G4-00M1WN-06/dp/B07BFGB8Z6'),
('B07QZDM8K4', 'DEEPCOOL MATREXX 30', 0, 2, ' Vidrio tem', '41.61 x 24 x 46.51cm', 'no', 4, 3, 8, 'https://www.amazon.es/dp/B07QZDM8K4?_encoding=UTF8&psc=1&ref_=cm_sw_r_cp_ud_dp_DFTK5TP0FV2WA7E51G3T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gama`
--

CREATE TABLE `gama` (
  `id` int(11) NOT NULL,
  `gama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gama`
--

INSERT INTO `gama` (`id`, `gama`) VALUES
(1, 'gama_alta'),
(2, 'gama_media'),
(3, 'gama_baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gpu`
--

CREATE TABLE `gpu` (
  `SKU` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `resolucion` varchar(11) NOT NULL,
  `frecuencia` varchar(11) NOT NULL,
  `interfaz` varchar(10) NOT NULL,
  `memoria` varchar(11) NOT NULL,
  `id_gama` int(11) NOT NULL,
  `id_modelo` int(2) NOT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gpu`
--

INSERT INTO `gpu` (`SKU`, `nombre`, `precio`, `resolucion`, `frecuencia`, `interfaz`, `memoria`, `id_gama`, `id_modelo`, `url_amazon`) VALUES
(' B08BNRR5SJ ', 'Gigabyte GeForce GTX 1650 D6 O', 0, '8k', '1635 MHz', 'PCI Expres', '4GB GDDR6 (', 2, 9, 'https://www.amazon.com/-/es/Tarjeta-Gigabyte-compacto-GV-N1656OC-4GD-REV2-0/dp/B08BNRR5SJ/ref=sr_1_2?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=U6TYU5OYS5AR&keywords=Gigabyte+GeForce+GTX+1650+D6+OC+4G&qid=1666913974&qu=eyJxc2MiOiIxLjQ1IiwicXNhIjoiMC4wMCIsInFzcCI6IjAuMDAifQ%3D%3D&sprefix=gigabyte+geforce+gtx+1650+d6+oc+4g%2Caps%2C234&sr=8-2'),
('B0719CR59P ', 'GPU Gigabyte', 109, '1080p', '1506GHz', 'PCI Expres', '2 GB', 3, 22, 'https://www.amazon.es/Gigabyte-GV-N1030D5-2GL-2GB-GDDR5-Tarjeta/dp/B0719CR59P'),
('B097YW4FW9 ', ' ZOTAC Gaming GeForce RTX 3060', 530, '4k', '1695MHz', 'DisplayPor', '8gb', 1, 10, 'https://www.amazon.com/-/es/IceStorm-refrigeraci%C3%B3n-avanzada-ventilador-ZT-A30610H-10MLHR/dp/B097YW4FW9?qu=eyJxc2MiOiIwLjk4IiwicXNhIjoiMC4wMCIsInFzcCI6IjAuMDAifQ%3D%3D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`) VALUES
(1, 'Gigabyte'),
(2, 'amd'),
(3, 'intel'),
(4, 'kingston'),
(5, 'hikivision'),
(6, 'western digital'),
(7, 'DeepCool'),
(8, 'corsair'),
(9, 'patriot'),
(10, 'zotac'),
(11, 'msi'),
(12, 'evga'),
(13, 'silverstone');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoria`
--

CREATE TABLE `memoria` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `capacidad` varchar(11) NOT NULL,
  `id_gama` int(11) NOT NULL,
  `frecuencia` varchar(11) NOT NULL,
  `arquitectura` varchar(10) NOT NULL,
  `id_modelo` int(2) NOT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `memoria`
--

INSERT INTO `memoria` (`SKU`, `nombre`, `precio`, `capacidad`, `id_gama`, `frecuencia`, `arquitectura`, `id_modelo`, `url_amazon`) VALUES
('B0143UM4TC', 'Corsair Vengeance LPX', 49.99, '2 x 8GB', 2, '3200 MHz', 'DDR4', 12, 'https://www.amazon.com/-/es/Corsair-Vengeance-3200MHz-memoria-escritorio/dp/B0143UM4TC/ref=sr_1_1?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2PL45ZREINXRP&keywords=corsair+vengeance+lpx&qid=1666913581&qu=eyJxc2MiOiIzLjEzIiwicXNhIjoiMi44MyIsInFzcCI6IjIuMzQifQ%3D%3D&sprefix=corsair+vengeance+lp%2Caps%2C196&sr=8-1'),
('B07D1XCKWW', ' Corsair Vengeance RGB Pro', 62.99, '16GB', 1, '3200MHz', 'DDR4 SDRAM', 11, 'https://www.amazon.com/-/es/Corsair-Vengeance-3200MHz-computadora-escritorio/dp/B07D1XCKWW?qu=eyJxc2MiOiIzLjg2IiwicXNhIjoiMy4yNyIsInFzcCI6IjIuMjUifQ%3D%3D\n'),
('B07WMSJGS1', ' Patriot Memory Viper Steel', 52.99, ' 2 x 4GB', 3, '3200 MHz', 'DDR4', 13, 'https://www.amazon.es/dp/B07WMSJGS1?ref_=cm_sw_r_cp_ud_dp_AFY4GH8551BRFAT0NSBG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id`, `nombre`, `id_marca`) VALUES
(1, 'HS-SSD-E100/512G', 5),
(2, 'WD10EZEX', 6),
(3, 'SA400S37', 4),
(4, 'BX8070110400F ', 3),
(5, '100-100000284BOX', 2),
(6, 'BX80701G6400', 3),
(7, 'DP-MATX-MATREXX40', 7),
(8, 'DP-MATX-MATREXX30', 7),
(9, 'GV-N1656OC-4GD REV2.', 1),
(10, ' ZT-A30610H-10MLHR ', 10),
(11, 'CMW16GX4M2C3200C16 ', 8),
(12, 'CMK16GX4M2B3200C16 ', 8),
(13, 'PVS48G320C6K', 9),
(14, 'H510M PRO ', 11),
(15, 'S2H', 1),
(16, 'DS3H', 1),
(17, 'SST-ST40F-ES230', 13),
(18, '100-B1-0500-KR', 12),
(19, 'CA-1G4-00M1WN-06', 14),
(20, 'RGB-1050', 15),
(21, 'A320M-DVS R4.0', 16),
(22, 'GV-N1030D5-2GL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placa_madre`
--

CREATE TABLE `placa_madre` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `chipset` varchar(30) NOT NULL,
  `socket` varchar(30) NOT NULL,
  `tiene_thunderbolt` varchar(3) NOT NULL,
  `slots_memoria` int(11) NOT NULL,
  `id_factor_forma` int(10) NOT NULL,
  `memoria_max` varchar(11) NOT NULL,
  `id_gama` int(10) NOT NULL,
  `id_modelo` int(2) NOT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `placa_madre`
--

INSERT INTO `placa_madre` (`SKU`, `nombre`, `precio`, `chipset`, `socket`, `tiene_thunderbolt`, `slots_memoria`, `id_factor_forma`, `memoria_max`, `id_gama`, `id_modelo`, `url_amazon`) VALUES
('B07NJ337VW', 'Asrock A320M-DVS', 89.99, 'AMD A320', 'AM4', 'No', 2, 2, '32 GB', 3, 21, 'https://www.amazon.com/dp/B092H21SGG?ref_=cm_sw_r_cp_ud_dp_KRSTKS177RG24PJ8KWX6'),
('B08F7HPJ4F', 'Gigabyte A520M ', 0, 'AMD A520 (AM4)', 'AM4', 'No', 2, 2, '64GB', 2, 15, 'https://www.amazon.com/-/es/Gigabyte-A520M-S2H-MicroATX-Interfaces/dp/B08F7HPJ4F/ref=sr_1_1?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1T4ASLHI87I5C&keywords=a520m+s2h&qid=1666913898&qu=eyJxc2MiOiIwLjc4IiwicXNhIjoiMC44MyIsInFzcCI6IjEuMjIifQ%3D%3D&sprefix=a520m+s2h%2Caps%2C184&sr=8-1\n'),
('B08WCF4SF3', 'MSI H510M PRO ProSeries', 89.99, 'Intel H510', 'LGA 1200', 'No', 2, 2, '64GB', 1, 14, 'https://www.amazon.com/-/es/MSI-H510M-PRO-ProSeries-generaci%C3%B3n/dp/B08WCF4SF3?qu=eyJxc2MiOiIwLjc5IiwicXNhIjoiMC4wMCIsInFzcCI6IjAuMDAifQ%3D%3D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psu`
--

CREATE TABLE `psu` (
  `SKU` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` float NOT NULL,
  `id_factor_forma` int(10) DEFAULT NULL,
  `potencia` varchar(11) NOT NULL,
  `id_certificacion` int(11) DEFAULT NULL,
  `id_gama` int(20) DEFAULT NULL,
  `id_modelo` int(2) DEFAULT NULL,
  `url_amazon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `psu`
--

INSERT INTO `psu` (`SKU`, `nombre`, `precio`, `id_factor_forma`, `potencia`, `id_certificacion`, `id_gama`, `id_modelo`, `url_amazon`) VALUES
('B00DZ6R9GE', 'EVGA 500B B1', 19, 1, '500W', 2, 2, 18, 'https://www.amazon.com/-/es/Fuente-alimentaci%C3%B3n-Bronce-100-B1-0700-K1-Negro/dp/B00DZ6R9GE/ref=sr_1_1?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2OFNQF7PKWAUE&keywords=evga%2B500b%2Bb1&qid=1666913943&qu=eyJxc2MiOiIwLjcxIiwicXNhIjoiMC4wMCIsInFzcCI6IjAuMDAifQ%3D%3D&sprefix=evga%2B500b%2Bb%2Caps%2C185&sr=8-1&th=1'),
('B01GCSCMIQ', 'SilverStone SST-ST40F-ES230', 169.99, 1, ' 400W', 1, 3, 17, 'https://www.amazon.com/-/es/GAMEMAX-alimentaci%C3%B3n-totalmente-certificado-RGB-1050/dp/B0963BFQ8T'),
('B0963BFQ8', 'GAMEMAX PSU1050 W', 34.99, 1, '1050W', 4, 1, 20, 'https://www.amazon.es/dp/B01GCSCMIQ?_encoding=UTF8&psc=1&ref_=cm_sw_r_cp_ud_dp_19JTG4R73PSANB4AYGDG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(10) NOT NULL,
  `contrasenia` varchar(12) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `contrasenia`, `correo`) VALUES
('a', '12345678', 'a@a.a');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenamiento`
--
ALTER TABLE `almacenamiento`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `certificacion`
--
ALTER TABLE `certificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `factor_forma`
--
ALTER TABLE `factor_forma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gabinete`
--
ALTER TABLE `gabinete`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_factor_forma` (`id_factor_forma`);

--
-- Indices de la tabla `gama`
--
ALTER TABLE `gama`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `memoria`
--
ALTER TABLE `memoria`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `placa_madre`
--
ALTER TABLE `placa_madre`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_factor_forma` (`id_factor_forma`);

--
-- Indices de la tabla `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`SKU`),
  ADD KEY `id_factor_forma` (`id_factor_forma`),
  ADD KEY `id_gama` (`id_gama`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_certificacion` (`id_certificacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`correo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacenamiento`
--
ALTER TABLE `almacenamiento`
  ADD CONSTRAINT `almacenamiento_ibfk_1` FOREIGN KEY (`id_gama`) REFERENCES `gama` (`id`),
  ADD CONSTRAINT `almacenamiento_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id`);

--
-- Filtros para la tabla `cpu`
--
ALTER TABLE `cpu`
  ADD CONSTRAINT `cpu_ibfk_1` FOREIGN KEY (`id_gama`) REFERENCES `gama` (`id`),
  ADD CONSTRAINT `cpu_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id`);

--
-- Filtros para la tabla `gabinete`
--
ALTER TABLE `gabinete`
  ADD CONSTRAINT `gabinete_ibfk_1` FOREIGN KEY (`id_gama`) REFERENCES `gama` (`id`),
  ADD CONSTRAINT `gabinete_ibfk_2` FOREIGN KEY (`id_factor_forma`) REFERENCES `factor_forma` (`id`),
  ADD CONSTRAINT `gabinete_ibfk_3` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id`);

--
-- Filtros para la tabla `gpu`
--
ALTER TABLE `gpu`
  ADD CONSTRAINT `gpu_ibfk_1` FOREIGN KEY (`id_gama`) REFERENCES `gama` (`id`),
  ADD CONSTRAINT `gpu_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id`);

--
-- Filtros para la tabla `memoria`
--
ALTER TABLE `memoria`
  ADD CONSTRAINT `memoria_ibfk_1` FOREIGN KEY (`id_gama`) REFERENCES `gama` (`id`),
  ADD CONSTRAINT `memoria_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
