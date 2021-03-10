-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2021 a las 00:17:24
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `monto` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `descri` varchar(500) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`id`, `nombre`, `monto`, `tipo`, `telefono`, `lugar`, `marca`, `modelo`, `year`, `descri`, `estado`) VALUES
(1, 'Manuel', 500, 'Sedan', '2458-895', 'Panama', 'Toyota', 'Corrola', 2009, 'Esta algo averiado ', 'Activo'),
(2, 'Luis', 700, 'Sedan', '12-343-12', 'Panama', 'Hyudai', 'Elantra', 2010, 'Esta algo viejo', 'Activo'),
(3, 'Maria', 900, 'Sedan', '245-2878-4', 'Panama', 'Toyota', 'Yariz', 2020, 'Esta como nuevo', 'Activo'),
(4, 'Noel', 700, 'SUV', '12-312-41', 'Panama', 'Toyota', 'RAV4', 2019, 'Medio usado', 'Cancelado'),
(6, 'Lili', 500, 'Sedan', '84964-4654', 'Panama', 'Toyota', 'Corrola', 2020, 'Nuevo', 'Activo'),
(7, 'William', 600, 'Sedan', '457-38', 'Panama', 'Nissan', 'Sentra', 2020, 'Poco uso', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autoactivo`
--

CREATE TABLE `autoactivo` (
  `id` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `lugar` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `descri` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autoactivo`
--

INSERT INTO `autoactivo` (`id`, `marca`, `modelo`, `year`, `tipo`, `telefono`, `lugar`, `ciudad`, `descri`) VALUES
(1, 'Toyota', 'Corrola', 2020, 'Sedan', '457-38', 'Panama', 'Panama', 'Poco uso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `correo` varchar(30) NOT NULL,
  `mensaje` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`correo`, `mensaje`) VALUES
('ejemplo@gmail.com', 'Prueba'),
('ejemplo2@gmail.com', 'Prueba 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `contra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombre`, `edad`, `genero`, `pais`, `ciudad`, `contra`) VALUES
(1, 'Manuel', 20, 'Masculio', 'Panama', 'Panama', '123'),
(2, 'William', 25, 'Masculino', 'Panama', 'Panama', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autoactivo`
--
ALTER TABLE `autoactivo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `autoactivo`
--
ALTER TABLE `autoactivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
