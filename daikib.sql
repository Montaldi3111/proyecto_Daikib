-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220703.0056236a4c
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2022 a las 17:01:42
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daikib`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Acción'),
(2, 'Aventuras'),
(3, 'Biografía'),
(4, 'Comedia'),
(5, 'Documentales'),
(6, 'Familiar'),
(7, 'Misterio'),
(8, 'Romance'),
(9, 'Thriller'),
(10, 'Animación'),
(11, 'Bélico Guerra'),
(12, 'Ciencia Ficción'),
(13, 'Crimen'),
(14, 'Drama'),
(15, 'Fantasía'),
(16, 'Musical'),
(17, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `name`, `rating`, `img`, `genre_id`, `description`) VALUES
(1, 'Avatar', '4.6', '', 12, 'En un exuberante planeta llamado Pandora viven los Na\'vi, seres que aparentan ser primitivos pero que en realidad son muy evolucionados. Debido a que el ambiente de Pandora es venenoso, los híbridos humanos/Na\'vi, llamados Avatares, están relacionados con'),
(2, 'Charlie y la fabrica de chocolate', '4.8', '', 15, 'Charlie Bucket es un niño proveniente de una familia pobre que pasa la mayor parte de su tiempo soñando sobre el chocolate que rara vez se puede permitir comer.'),
(3, 'El exorcista', '4.7', '', 17, 'Adaptación de la novela de William Peter Blatty. Inspirada en un exorcismo real ocurrido en Washington en 1949. Regan, una niña de doce años, es víctima de fenómenos paranormales.'),
(4, 'El extraño mundo de jack', '4.9', '', 16, 'El Señor de Halloween, Jack Skellington, aburrido de hacer cada año lo mismo, descubre la Navidad en la Ciudad de la Navidad y queda fascinado, por lo que decide emplearse a fondo y mejorar dicha festividad. Con este fin, secuestra a Santa Claus y crea un'),
(5, 'Matrix', '4.7', '', 12, 'El programador informático Thomas Anderson, más conocido en el mundo de los \"hacker\" como Neo, está en el punto de mira del temible agente Smith. Otros dos piratas informáticos, Trinity y Morfeo, se ponen en contacto con Neo para ayudarlo a escapar. Matri'),
(6, 'Nacido del rey', '3.0', '', 14, 'Ambientada en 1919, es la historia sobre Faisal, un príncipe árabe de 14 años que es enviado desde los desiertos de Arabia a Londres por su padre, el príncipe Abdul Aziz. Faisal acude a una misión diplomática de alto riesgo para asegurar la formación de s'),
(7, 'El planeta de los simios', '4.6', '', 12, 'George Taylor forma parte de la tripulación de una nave espacial en una misión de larga duración que se estrella en un planeta desconocido y aparentemente carente de vida inteligente.'),
(8, 'El resplandor', '4.4', '', 17, 'Jack Torrance se convierte en cuidador de invierno en el Hotel Overlook, en Colorado, con la esperanza de vencer su bloqueo con la escritura. Se instala allí junto con su esposa, Wendy, y su hijo, Danny, que está plagado de premoniciones psíquicas. Mientr'),
(9, 'Shang Chi y la leyenda de los diez anillos', '4.5', '', 1, 'El maestro de artes marciales Shang-Chi se enfrenta al pasado que creía haber dejado atrás cuando se ve envuelto en la red de la misteriosa organización de los Diez Anillos.'),
(10, 'Spider-Man: sin camino a casa', '4.8', '', 12, 'Tras descubrirse la identidad secreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter decide pedirle ayuda al Doctor Extraño para recuperar su vida. Pero algo sale mal y provoca una fractura en el multiverso.'),
(11, 'Dr. Strange en el multiverso de la locura', '3.5', '', 1, 'El Dr. Stephen Strange abre un portal al multiverso al utilizar un hechizo prohibido. Ahora, su equipo debe enfrentarse a una amenaza que podría destruirlo todo.'),
(12, 'Terminator: Genesis', '4.0', '', 12, 'En Los Ángeles del año 2032, John Connor, líder de la resistencia humana contra las máquinas que se han apoderado de la Tierra, prepara la ofensiva definitiva contra Skynet. Junto a él lucha su mano derecha, el sargento Kyle Reese. Connor envía a Reese a '),
(13, 'Black Widow', '4.1', '', 1, 'Una peligrosa conspiración, relacionada con su pasado, persigue a Natasha Romanoff, también conocida como Viuda Negra. La agente tendrá que lidiar con las consecuencias de haber sido espía, así como con las relaciones rotas, para sobrevivir.'),
(14, 'Wall-E', '4.9', '', 10, 'Tras cientos de años haciendo aquello para lo que fue construido: limpiar el planeta de basura, el pequeño robot Wall-e tiene una nueva misión cuando conoce a Eva.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



