-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2022 a las 19:05:18
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diplomado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Carrera` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `identificador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Nombre`, `Apellido`, `Carrera`, `Correo`, `identificador`) VALUES
('Richard', 'Doria', 'Ingenieria', 'rddm096@gmail.com', 1),
('Richard', 'Doria', 'Ingenieria', 'rddm096@gmail.com', 2),
('richard', 'Doria', 'Ingles', 'sdsad@asdas', 5),
('miguel', 'perez', 'Ingenieria de sistema', 'mp@gmail.com', 9),
('David', 'Montalvo', 'Ingenieria Industrial', 'rddm096@gmail.com', 10),
('David', 'Montalvo', 'Ingenieria Industrial', 'rddm096@gmail.com', 13),
('Sergio', 'Escobar', 'Ingenieria de sistema', 'smail@localhost.com', 878),
('Sergio', 'Prueba', 'Ingenieria de sistema', 'seaescob@gmail.com', 1032),
('richard', 'Montalvo', 'Ingenieria de sistema', 'rddm096@gmail.com', 1255);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `identificador` int(11) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`identificador`, `usuario`, `password`) VALUES
(1255, 'admin', 'admin'),
(5, 'rdoria', '12345'),
(878, 'seaescobar', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'miguel', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'david', '202cb962ac59075b964b07152d234b70'),
(13, 'david', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`identificador`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD KEY `fk_id_estudiante_idx` (`identificador`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_id_estudiante` FOREIGN KEY (`identificador`) REFERENCES `estudiante` (`identificador`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
