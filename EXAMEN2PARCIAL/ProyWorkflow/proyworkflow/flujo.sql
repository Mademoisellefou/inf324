-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-11-2021 a las 19:47:00
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flujo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `ci` int(20) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `paterno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `materno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `j` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`ci`, `nombre`, `paterno`, `materno`, `j`) VALUES
(1, 'Moises', 'Silva', 'Perez', 1),
(4, 'Juan', 'Perez', 'Lopez', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro`
--

CREATE TABLE `centro` (
  `idcentro` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `sigla` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `1ejecutivo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `2ejecutivo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `3ejecutivo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `1hcf` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `2hcf` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `1caf` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `1hcc` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `2hcc` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `3hcc` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `1cac` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `notramite` int(20) NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `centro`
--

INSERT INTO `centro` (`idcentro`, `nombre`, `sigla`, `1ejecutivo`, `2ejecutivo`, `3ejecutivo`, `1hcf`, `2hcf`, `1caf`, `1hcc`, `2hcc`, `3hcc`, `1cac`, `notramite`, `estado`) VALUES
(270, 'vl', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 'v', 81, 'inscrito'),
(274, 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 'f', 84, 'inscrito'),
(275, 'gg', 't', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 85, 'postulante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujocondicionante`
--

CREATE TABLE `flujocondicionante` (
  `proceso` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `si` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `rol` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `formulario` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `flujocondicionante`
--

INSERT INTO `flujocondicionante` (`proceso`, `si`, `no`, `ID`, `rol`, `formulario`) VALUES
('P1', 'P4', 'P2', 1, 'CEI', 'C1'),
('P3', 'P4', 'fin', 2, 'CEI', 'C2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujoproceso`
--

CREATE TABLE `flujoproceso` (
  `flujo` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proceso` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rol` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `procesosiguiente` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `formulario` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `flujoproceso`
--

INSERT INTO `flujoproceso` (`flujo`, `proceso`, `tipo`, `rol`, `procesosiguiente`, `formulario`, `id`) VALUES
('F1', 'P1', 'I', 'Usuario', 'con', 'P1', 1),
('F1', 'P2', 'P', 'CEI', 'P3', 'P2', 2),
('F1', 'P3', 'D', 'Usuario', 'con', 'P3', 3),
('F1', 'P4', 'C', 'Kardex', 'P5', 'P4', 4),
('F1', 'P5', 'F', 'CEI', 'fin', 'P5', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `idobservacion` int(11) NOT NULL,
  `notramite` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `observacion`
--

INSERT INTO `observacion` (`idobservacion`, `notramite`, `observacion`) VALUES
(82, '81', 'Corregir los apellidos'),
(85, '85', '    \r\n    aregglar todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `notramite` int(11) DEFAULT NULL,
  `usuario` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flujo` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proceso` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechainicio` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechafin` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`notramite`, `usuario`, `flujo`, `proceso`, `fechainicio`, `fechafin`, `id`) VALUES
(81, 'Moises', 'F1', 'P1', '2021/11/30   02:15 pm', '2021/11/30   02:16 pm', 252),
(81, 'CEI', 'F1', 'P2', '2021/11/30   02:16 pm', '2021/11/30   02:49 pm', 253),
(81, 'Moises', 'F1', 'P3', '2021/11/30   02:17 pm', '2021/11/30   02:17 pm', 254),
(81, 'Kardex', 'F1', 'P4', '2021/11/30   02:17 pm', '2021/11/30   02:46 pm', 255),
(81, 'CEI', 'F1', 'P5', '2021/11/30   02:19 pm', '2021/11/30   02:46 pm', 256),
(84, 'German', 'F1', 'P1', '2021/11/30   02:45 pm', '2021/11/30   02:45 pm', 284),
(84, 'Kardex', 'F1', 'P4', '2021/11/30   02:45 pm', '2021/11/30   02:46 pm', 285),
(84, 'CEI', 'F1', 'P5', '2021/11/30   02:46 pm', '2021/11/30   02:46 pm', 286),
(85, 'Maria', 'F1', 'P1', '2021/11/30   02:48 pm', '2021/11/30   02:48 pm', 287),
(85, 'CEI', 'F1', 'P2', '2021/11/30   02:48 pm', '2021/11/30   02:49 pm', 288),
(85, 'Maria', 'F1', 'P3', '2021/11/30   02:49 pm', '2021/11/30   02:49 pm', 289),
(85, '', '', 'fin', '2021/11/30   02:49 pm', NULL, 290);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE `tramite` (
  `notramite` int(10) NOT NULL,
  `ci` int(20) NOT NULL,
  `fecha` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`notramite`, `ci`, `fecha`) VALUES
(81, 1, '2021/11/30   02:15 pm'),
(84, 2, '2021/11/30   02:45 pm'),
(85, 14, '2021/11/30   02:48 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ci` int(11) NOT NULL,
  `usuario` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contrasenia` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rol` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ci`, `usuario`, `contrasenia`, `rol`) VALUES
(1, 'Moises', '123456', 'E'),
(2, 'German', '123456', 'E'),
(3, 'Melany', '123456', 'K'),
(4, 'Juan', '123456', 'C'),
(14, 'Maria', '123456', 'E');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`j`);

--
-- Indices de la tabla `centro`
--
ALTER TABLE `centro`
  ADD PRIMARY KEY (`idcentro`);

--
-- Indices de la tabla `flujocondicionante`
--
ALTER TABLE `flujocondicionante`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `flujoproceso`
--
ALTER TABLE `flujoproceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`idobservacion`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD PRIMARY KEY (`notramite`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `j` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `centro`
--
ALTER TABLE `centro`
  MODIFY `idcentro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT de la tabla `flujocondicionante`
--
ALTER TABLE `flujocondicionante`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `flujoproceso`
--
ALTER TABLE `flujoproceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `observacion`
--
ALTER TABLE `observacion`
  MODIFY `idobservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `notramite` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
