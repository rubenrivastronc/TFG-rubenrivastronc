-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-08-2018 a las 19:30:02
-- Versión del servidor: 5.7.23-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vanswer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `hash` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `acceso`
--

INSERT INTO `acceso` (`id`, `nombre`, `apellidos`, `email`, `password`, `hash`, `activo`) VALUES
(1, 'Default', 'DefaultLastName', '- Elegir profesor -', 'test', '@dadoad123431', 1),
(19, 'Guadalupe', 'Ortiz', 'guadalupe.ortiz@uca.es', '$2y$10$A4P4BdSCvI86t7xTkEG6o.91dZ45Iurl3sodF5MiO6rl6rbAfo84m', '84d9ee44e457ddef7f2c4f25dc8fa865', 1),
(22, 'Jose', 'Ruben', 'rubencitorivas@gmail.com', '$2y$10$j4.WMh8LzKLJ4POJzb1ah.K8tf8XluS1iuexyhldzNm3QrsY8jkTK', 'b53b3a3d6ab90ce0268229151c9bde11', 1),
(23, 'Administrador', 'del sistema', 'vansweruca@gmail.com', '$2y$10$9bP8QI5W7WzeEe3Z31jzEeIrbjdnnyDqBJxorvei7hLPEeF9OgSCy', '0f28b5d49b3020afeecd95b4009adf4c', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociacatprof`
--

CREATE TABLE `asociacatprof` (
  `prof_id` int(64) NOT NULL,
  `cat_id` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `asociacatprof`
--

INSERT INTO `asociacatprof` (`prof_id`, `cat_id`) VALUES
(22, 1),
(23, 1),
(22, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL,
  `usuario` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `tematica` text COLLATE utf8_spanish_ci NOT NULL,
  `aciertos` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `usuario`, `tematica`, `aciertos`, `total`, `fecha`) VALUES
(3, 'u45327753', 'Bases de datos', 1, 2, '2018-06-01 11:37:21'),
(4, 'u45327753', 'Bases de datos', 1, 2, '2018-06-01 12:55:42'),
(5, 'u45327753', 'Bases de datos', 2, 2, '2018-06-01 13:57:54'),
(6, 'u45327753', 'Bases de datos', 2, 2, '2018-06-01 14:13:12'),
(7, 'u45327753', 'Bases de datos', 2, 2, '2018-06-01 15:14:36'),
(8, 'u45327753', 'Bases de datos', 1, 2, '2018-06-01 15:16:53'),
(9, 'u45327753', 'Bases de datos', 2, 2, '2018-06-01 18:14:14'),
(11, 'u45327753', 'Topografía', 4, 4, '2018-06-02 15:38:39'),
(12, 'u45327753', 'Fruta', 3, 3, '2018-06-02 15:41:07'),
(13, 'u99765432', 'Topografía', 4, 4, '2018-06-03 09:22:15'),
(14, 'u31313467', 'Topografía', 4, 4, '2018-06-03 09:58:41'),
(15, 'u34009921', 'Topografía', 4, 4, '2018-06-04 12:02:19'),
(16, 'u45327753', 'Topografía', 3, 4, '2018-06-05 19:36:39'),
(17, 'u45327753', 'Topografía', 3, 3, '2018-06-07 10:24:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) CHARACTER SET latin1 NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `activo`) VALUES
(1, '- Elegir temática -', 0),
(20, 'Topografía', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(255) NOT NULL,
  `titulo` text CHARACTER SET latin1 NOT NULL,
  `vof` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `categoria_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `titulo`, `vof`, `tipo`, `categoria_id`) VALUES
(19, 'El objetivo de un levantamiento stop and go es:', NULL, 1, 20),
(20, 'Cuando usamos métodos cinemáticos conseguimos precisiones muy rigurosas:', 'F', 1, 20),
(21, 'La grabación de datos de la antena se inicia y se detiene para cada punto:', 'F', 2, 20),
(22, 'En un levantamiento cinemático la grabación de datos se realiza:', NULL, 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repaso`
--

CREATE TABLE `repaso` (
  `id` int(11) NOT NULL,
  `usuario` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `tematica` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pregunta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `repaso`
--

INSERT INTO `repaso` (`id`, `usuario`, `tematica`, `pregunta_id`) VALUES
(28, 'u45327753', 'Fruta', 16),
(29, 'u45327753', 'Fruta', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(255) NOT NULL,
  `descripcion` text CHARACTER SET latin1 NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `pregunta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `descripcion`, `is_correct`, `pregunta_id`) VALUES
(55, 'Medir puntos desconectados entre sí', 1, 19),
(56, 'Medir puntos contínuos', 0, 19),
(57, 'Medir puntos en trayectorias', 0, 19),
(58, 'Mediciones estáticas de precisión', 0, 19),
(59, 'Cada intervalo prefijado de tiempo y distancia', 1, 22),
(60, 'Cada intervalo de tiempo', 0, 22),
(61, 'Cada intervalo de distancia', 0, 22),
(62, 'En la media de los intervalos de distancia', 0, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(255) NOT NULL,
  `clave` varchar(9) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `clave`) VALUES
(1, 'u12345678'),
(10, 'u23456789'),
(96, 'u25853572'),
(11, 'u31313467'),
(7, 'u31323002'),
(6, 'u31323003'),
(88, 'u34009921'),
(8, 'u34529800'),
(129, 'u34598702'),
(33, 'u35477261'),
(89, 'u35772354'),
(121, 'u4532775'),
(47, 'u45327750'),
(13, 'u45327753'),
(126, 'u45328811'),
(127, 'u45369912'),
(5, 'u45382150'),
(105, 'u45386559'),
(128, 'u45399103'),
(12, 'u52418759'),
(2, 'u87654321'),
(9, 'u96787321'),
(85, 'u99765432');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asociacatprof`
--
ALTER TABLE `asociacatprof`
  ADD UNIQUE KEY `indx_ids` (`prof_id`,`cat_id`),
  ADD KEY `fk_cat_asocia_id` (`cat_id`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `repaso`
--
ALTER TABLE `repaso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`,`tematica`,`pregunta_id`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `repaso`
--
ALTER TABLE `repaso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asociacatprof`
--
ALTER TABLE `asociacatprof`
  ADD CONSTRAINT `fk_cat_asocia_id` FOREIGN KEY (`cat_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_prof_asocia_id` FOREIGN KEY (`prof_id`) REFERENCES `acceso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `categoria_id_fk` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `pregunta_id_fk` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
