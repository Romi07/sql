-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2019 a las 16:56:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laboratoriosql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `ArticuloID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ArticuloID`, `Nombre`, `Precio`, `Stock`) VALUES
(1, 'Destornillador', 25, 50),
(2, 'Pinza', 35, 22),
(3, 'Martillo', 15, 28),
(4, 'Maza', 35, 18),
(5, 'Balde', 55, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ClientesID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Cuit` char(16) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Comentarios` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClientesID`, `Nombre`, `Apellido`, `Cuit`, `Direccion`, `Comentarios`) VALUES
(1, 'Agustin', 'Diaz', '20-12345788-0', 'Lima 458', NULL),
(2, 'Angela', 'Lopez', '20-37987854-0', 'Peru 32', NULL),
(3, 'Cristian', 'Fraga', '20-36887495-0', 'Chile 6985', NULL),
(4, 'Sol', 'Cabral', '20-25982495-0', 'Lavalle 1201', NULL),
(5, 'Ezequiel', 'Perez', '20-21987111-0', 'Uruguay 25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `Letra` char(1) NOT NULL,
  `Numero` int(11) NOT NULL,
  `ClienteID` int(11) DEFAULT NULL,
  `ArticuloID` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`Letra`, `Numero`, `ClienteID`, `ArticuloID`, `Fecha`, `Monto`) VALUES
('A', 1, 1, 1, '2011-10-18', 500),
('A', 2, 2, 2, '2011-10-18', 2500),
('A', 3, 3, 3, '2011-10-18', 320),
('A', 4, 4, 4, '2011-10-18', 120),
('A', 5, 5, 5, '2019-09-19', 300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`ArticuloID`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClientesID`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`Letra`,`Numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
