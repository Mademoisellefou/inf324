-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 08:42:49
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inf324test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `iddoc` int(11) NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreC` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`iddoc`, `password`, `nombreC`) VALUES
(1028, '12ab', 'Flores Fernandes Brian'),
(1029, '12bc', 'Ten	Pom	Jorge'),
(1030, '12cd', 'Contreras	Candia	Juan'),
(1031, '12de', 'Vargas	Vargas Roberto'),
(1032, '12ef', 'Alcon	Lopez	Ruben'),
(1033, '12gh', 'Nogales	Quispe	Hernan'),
(1034, '123456789', 'Estevez Patinson Lidia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `sigla` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`sigla`, `descripcion`, `iddoc`) VALUES
('EST133', 'ESTADISTICA I', 1028),
('FIS122', 'FISICA I', 1034),
('INF111', 'INTRODUCCION A LA INFORMATICA', 1028),
('INF112', 'ORGANIZACION DE COMPUTADORAS', 1028),
('INF113', 'LABORATORIO DE COMPUTACION', 1029),
('INF141', 'SISTEMAS DE GESTION', 1030),
('INF142', 'FUNDAMENTOS DIGITALES', 1031),
('INF143', 'TALLER DE PROGRAMACION', 1032),
('INF313', 'SISTEMAS', 1034),
('LAB111', 'LABORATORIO DE INF-111', 1033),
('LAB132', 'LABORATORIO DE FISICA II', 1028),
('LAB152', 'ASEMBLER', 1034),
('LIN116', 'GRAMATICA ESPANOLA', 1029);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `CI` int(11) NOT NULL,
  `sigla` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota1` int(11) DEFAULT NULL,
  `nota2` int(11) DEFAULT NULL,
  `nota3` int(11) DEFAULT NULL,
  `notafinal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`CI`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
(1, 'EST133', 30, 20, 20, 70),
(1, 'FIS122', 30, 20, 20, 70),
(1, 'INF111', 10, 24, 22, 56),
(1, 'INF112', 30, 20, 20, 70),
(1, 'INF113', 30, 20, 20, 70),
(1, 'INF131', 20, 10, 11, 41),
(1, 'INF141', 30, 20, 20, 70),
(1, 'INF142', 30, 20, 20, 70),
(1, 'INF143', 30, 20, 20, 70),
(1, 'INF161', 12, 30, 22, 68),
(1, 'INF313', 30, 20, 20, 70),
(1, 'LAB111', 30, 20, 20, 70),
(1, 'LAB132', 30, 20, 20, 70),
(1, 'LAB152', 30, 20, 20, 70),
(1, 'LIN116', 30, 20, 20, 70),
(1, 'MAT123', 23, 12, 23, 58),
(2, 'INF111', 23, 21, 33, 77),
(2, 'INF151', 12, 30, 2, 44),
(2, 'INF161', 21, 24, 23, 68),
(3, 'INF111', 22, 30, 16, 68),
(3, 'INF112', 25, 22, 23, 70),
(3, 'INF113', 25, 22, 23, 70),
(3, 'INF131', 30, 30, 33, 93),
(3, 'INF141', 25, 22, 23, 70),
(3, 'INF142', 25, 22, 23, 70),
(3, 'INF143', 25, 22, 23, 70),
(3, 'INF313', 25, 22, 23, 70),
(3, 'LAB111', 25, 22, 23, 70),
(3, 'LAB132', 25, 22, 23, 70),
(3, 'LAB152', 25, 22, 23, 70),
(3, 'LIN116', 25, 22, 23, 70),
(4, 'EST133', 20, 20, 20, 60),
(4, 'FIS122', 20, 20, 20, 60),
(4, 'INF111', 20, 20, 20, 60),
(4, 'INF112', 20, 20, 20, 60),
(4, 'INF113', 20, 20, 20, 60),
(4, 'INF141', 20, 20, 20, 60),
(4, 'INF142', 20, 20, 20, 60),
(4, 'INF143', 20, 20, 20, 60),
(4, 'INF313', 20, 20, 20, 60),
(4, 'LAB111', 20, 20, 20, 60),
(4, 'LAB132', 20, 20, 20, 60),
(4, 'LAB152', 20, 20, 20, 60),
(4, 'LIN116', 20, 20, 20, 60),
(5, 'EST133', 20, 20, 20, 60),
(5, 'FIS122', 20, 20, 20, 60),
(5, 'INF111', 20, 20, 20, 60),
(5, 'INF112', 20, 20, 20, 60),
(5, 'INF113', 20, 20, 20, 60),
(5, 'INF141', 20, 20, 20, 60),
(5, 'INF142', 20, 20, 20, 60),
(5, 'INF143', 20, 20, 20, 60),
(5, 'INF313', 20, 20, 20, 60),
(5, 'LAB111', 20, 20, 20, 60),
(5, 'LAB132', 20, 20, 20, 60),
(5, 'LAB152', 20, 20, 20, 60),
(5, 'LIN116', 20, 20, 20, 60),
(6, 'EST133', 20, 25, 20, 65),
(6, 'FIS122', 20, 25, 20, 65),
(6, 'INF111', 20, 25, 20, 65),
(6, 'INF112', 20, 25, 20, 65),
(6, 'INF113', 20, 25, 20, 65),
(6, 'INF141', 20, 25, 20, 65),
(6, 'INF142', 20, 25, 20, 65),
(6, 'INF143', 20, 25, 20, 65),
(6, 'INF313', 20, 25, 20, 65),
(6, 'LAB111', 20, 25, 20, 65),
(6, 'LAB132', 20, 25, 20, 65),
(6, 'LAB152', 20, 25, 20, 65),
(6, 'LIN116', 20, 25, 20, 65),
(7, 'EST133', 20, 30, 30, 80),
(7, 'FIS122', 20, 30, 30, 80),
(7, 'INF111', 20, 30, 30, 80),
(7, 'INF112', 20, 30, 30, 80),
(7, 'INF113', 20, 30, 30, 80),
(7, 'INF141', 20, 30, 30, 80),
(7, 'INF142', 20, 30, 30, 80),
(7, 'INF143', 20, 30, 30, 80),
(7, 'INF313', 20, 30, 30, 80),
(7, 'LAB111', 20, 30, 30, 80),
(7, 'LAB132', 20, 30, 30, 80),
(7, 'LAB152', 20, 30, 30, 80),
(7, 'LIN116', 20, 30, 30, 80),
(50, 'INF141', 21, 22, 22, 65),
(60, 'INF141', 20, 16, 29, 65),
(66, 'INF141', 22, 23, 10, 55),
(70, 'INF141', 4, 22, 25, 51),
(73, 'INF141', 14, 11, 29, 54),
(75, 'INF141', 15, 28, 29, 72),
(100, 'INF141', 15, 11, 28, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `CI` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNac` date NOT NULL,
  `departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`CI`, `nombre`, `fechaNac`, `departamento`) VALUES
(1, 'Ruben	Soria', '1995-04-27', 1),
(2, 'Ana Ticona', '1993-02-28', 2),
(3, 'Arturo Sosa', '1998-03-10', 3),
(4, 'Ramiro Ugarte', '1997-07-05', 2),
(5, 'Jose Mamani', '1995-07-02', 1),
(6, 'Bryan	Quispe', '1996-08-25', 3),
(7, 'Susana Arteaga', '1995-10-06', 5),
(50, 'Cinthya	Camacho', '1994-02-24', 1),
(52, 'Claudia	Jimenez', '1994-06-20', 2),
(58, 'Gabriel	Alvarez', '1994-08-17', 3),
(59, 'Genesis	Villa', '1994-12-29', 4),
(60, 'Isabel	Apaza', '1994-10-13', 5),
(61, 'Ramiro	Perez', '1990-01-01', 6),
(62, 'Rene	Morales', '1991-02-02', 1),
(66, 'Carlos Nina', '1998-09-06', 1),
(67, 'Jorge	Santiesteban', '1997-02-07', 2),
(68, 'Rodrigo	Humerez		', '1993-01-08', 2),
(69, 'Sergio	Baltazar	', '1991-06-09', 2),
(70, 'Jose	Ramirez		    ', '1994-09-10', 3),
(71, 'Ivan	Galarza		    ', '1992-03-11', 3),
(78, 'Betty	Zeballos	', '1991-12-19', 3),
(79, 'Patricia	Pareja		', '1992-08-23', 1),
(80, 'Olga	Fernandes		', '1996-01-17', 5),
(89, 'Pablo Javier	Becerra	', '1994-01-17', 4),
(90, 'Juan Pablo	Calderon', '1996-01-17', 4),
(91, 'Jhonny Yessi	Canquilla', '1991-01-17', 4),
(96, 'Andy Ramiro	Chipana	', '1999-01-17', 4),
(98, 'Cristhian	Conde', '1999-01-17', 1),
(100, '	Hazael Devora	Copa', '1999-01-17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CI` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CI`, `usuario`, `password`) VALUES
(1, 'mlstvz', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`iddoc`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`sigla`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`CI`,`sigla`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`CI`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `iddoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
