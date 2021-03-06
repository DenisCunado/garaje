-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2022 a las 20:13:15
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `garajebd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

create schema garajebd;
use garajebd;

CREATE TABLE `cliente` (
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Matricula` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`DNI`, `Nombre`, `Matricula`) VALUES
('45753050B', 'pepe', '1254VGF'),
('45753060B', 'Alejandro', '1229JVF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motor`
--

CREATE TABLE `motor` (
  `matricula` varchar(25) NOT NULL,
  `LitrosAceite` int(11) NOT NULL,
  `Caballos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `motor`
--

INSERT INTO `motor` (`matricula`, `LitrosAceite`, `Caballos`) VALUES
('1229JVF', 10, 165),
('1254VGF', 0, 150),
('1548JCF', 0, 185);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `Marca` varchar(25) NOT NULL,
  `Modelo` varchar(25) NOT NULL,
  `Matricula` varchar(25) NOT NULL,
  `ImporteAcumulador` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`Marca`, `Modelo`, `Matricula`, `ImporteAcumulador`) VALUES
('Ford', 'Focus', '1229JVF', '0.00'),
('seat', 'ibiza', '1254VGF', '0.00'),
('seat', 'ibiz', '1548JCF', '0.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`Matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;