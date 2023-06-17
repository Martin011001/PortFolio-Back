-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bm4sicm4jnn1qbzzuio3-mysql.services.clever-cloud.com:3306
-- Generation Time: Jun 17, 2023 at 09:43 PM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bm4sicm4jnn1qbzzuio3`
--
CREATE DATABASE IF NOT EXISTS `bm4sicm4jnn1qbzzuio3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bm4sicm4jnn1qbzzuio3`;

-- --------------------------------------------------------

--
-- Table structure for table `conocimiento`
--

CREATE TABLE `conocimiento` (
  `id` bigint(20) NOT NULL,
  `conocimiento` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `progreso` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conocimiento`
--

INSERT INTO `conocimiento` (`id`, `conocimiento`, `logo`, `progreso`, `tipo`) VALUES
(152, 'Java Script', 'https://upload.wikimedia.org/wikipedia/commons/9/99/Unofficial_JavaScript_logo_2.svg', '70', 'Lenguaje'),
(202, 'Type Script', './assets/icons/typeScript.png', '60', 'Lenguaje'),
(203, 'Angular', './assets/icons/angular.png', '50', 'Framework'),
(204, 'Java', 'https://i.blogs.es/8d2420/650_1000_java/1366_2000.png', '80', 'Lenguaje'),
(205, 'NetBeans (JPA, JSP)', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Apache_NetBeans_Logo.svg/1200px-Apache_NetBeans_Logo.svg.png', '50', 'Framework'),
(206, 'CSS', './assets/icons/css.png', '60', 'Lenguaje'),
(357, 'HTML', './assets/icons/html.png', '75', 'Lenguaje'),
(402, 'Spring Boot', './assets/icons/springBootLogo.png', '68', 'Framework'),
(452, 'GitHub', './assets/icons/github.png', '60', 'Herramientas'),
(453, 'PhpMyAdmin', './assets/icons/phpMyAdmin.png', '80', 'Herramientas'),
(454, 'Xampp', './assets/icons/xampp.png', '80', 'Herramientas');

-- --------------------------------------------------------

--
-- Table structure for table `conocimiento_seq`
--

CREATE TABLE `conocimiento_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conocimiento_seq`
--

INSERT INTO `conocimiento_seq` (`next_val`) VALUES
(551),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fin` varchar(255) DEFAULT NULL,
  `img_institucion` varchar(255) DEFAULT NULL,
  `inicio` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `carrera`, `descripcion`, `fin`, `img_institucion`, `inicio`, `titulo`) VALUES
(102, 'Analista de Sistemas', 'Ort Argentina', '', './assets/images/logoOrtInstitucion.png', '', 'Tecnico Analista de Sistemas'),
(103, 'Argentina Programa Developer full stack', 'Argentina Programa', '', './assets/images/LogoArgentinaPrograma.png', '', 'Developer full stack Junior'),
(104, 'Se programar', 'Argentina Programa', '', './assets/images/LogoArgentinaPrograma.png', '', 'tecnico trainee en programacion'),
(152, 'Diseño de interiores', 'E.T.N°6 Fernando Fader', '', './assets/images/LogoFaderLargo.png', '', 'Técnico en diseño de interiores');

-- --------------------------------------------------------

--
-- Table structure for table `educacion_seq`
--

CREATE TABLE `educacion_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion_seq`
--

INSERT INTO `educacion_seq` (`next_val`) VALUES
(251),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fin` varchar(255) DEFAULT NULL,
  `img_trabajo` varchar(255) DEFAULT NULL,
  `inicio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcion`, `fin`, `img_trabajo`, `inicio`) VALUES
(164, 'Producteca Empresa IT', '', './assets/images/logoProductecaGrande.png', ''),
(165, 'G3 ARQ S.R.L Empresa Constructora', '', './assets/images/logoG3Grande.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia_seq`
--

CREATE TABLE `experiencia_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia_seq`
--

INSERT INTO `experiencia_seq` (`next_val`) VALUES
(301),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `herramienta`
--

CREATE TABLE `herramienta` (
  `id` bigint(20) NOT NULL,
  `experiencia_id` bigint(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `herramienta`
--

INSERT INTO `herramienta` (`id`, `experiencia_id`, `nombre`) VALUES
(217, 164, 'Java Script'),
(218, 164, 'Type Script'),
(219, 164, 'Java'),
(220, 164, 'Bases de datos SQL'),
(221, 165, 'Autocad'),
(222, 165, 'SketChup'),
(223, 165, 'Excel');

-- --------------------------------------------------------

--
-- Table structure for table `herramienta_seq`
--

CREATE TABLE `herramienta_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `herramienta_seq`
--

INSERT INTO `herramienta_seq` (`next_val`) VALUES
(301),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `interes`
--

CREATE TABLE `interes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interes`
--

INSERT INTO `interes` (`id`, `nombre`) VALUES
(1, 'Leng.Programacion'),
(2, 'Deportes'),
(3, 'Tecnologia'),
(4, 'Aplicaciones IT'),
(52, 'Frameworks');

-- --------------------------------------------------------

--
-- Table structure for table `interes_seq`
--

CREATE TABLE `interes_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interes_seq`
--

INSERT INTO `interes_seq` (`next_val`) VALUES
(151),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `estudio` varchar(255) DEFAULT NULL,
  `img_perfil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `trabajo_actual` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `e` varchar(255) DEFAULT NULL,
  `img_empresa` varchar(255) DEFAULT NULL,
  `img_estudio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `email`, `empresa`, `estudio`, `img_perfil`, `nombre`, `telefono`, `trabajo_actual`, `ubicacion`, `e`, `img_empresa`, `img_estudio`) VALUES
(1, 'Gagliardi', NULL, 'Producteca', 'Ort Argentina', './assets/images/imagePerfil.jpg', 'Martin', NULL, 'Support and Development Analyst en Producteca', 'Buenos Aires CABA, Provincia de Buenos Aires, Argentina', NULL, './assets/images/logoProductecaChico.jpg', './assets/images/logoOrtChico.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `persona_seq`
--

CREATE TABLE `persona_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persona_seq`
--

INSERT INTO `persona_seq` (`next_val`) VALUES
(51),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `proyecto`
--

CREATE TABLE `proyecto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(2500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyecto`
--

INSERT INTO `proyecto` (`id`, `descripcion`, `detalle`, `titulo`) VALUES
(2, 'El proyecto que llevé a cabo consistió en desarrollar un portafolio web personal utilizando varias tecnologías de vanguardia. En primer lugar, utilicé Angular como mi framework de front-end. Angular es una herramienta potente que me permitió crear una interfaz de usuario moderna y atractiva para mi sitio web. Con su sistema de enlace de datos y sus componentes reutilizables, pude diseñar una experiencia de usuario intuitiva y receptiva, lo cual es fundamental para un portafolio web efectivo. Por otro lado, utilicé Node.js como plataforma de servidor para el back-end de mi aplicación. Node.js es conocido por su capacidad de manejar una gran cantidad de conexiones simultáneas de forma eficiente gracias a su modelo basado en eventos. Esto me permitió desarrollar una API RESTful eficiente para gestionar las solicitudes de los clientes y manejar la lógica del servidor de manera efectiva. En cuanto a la base de datos, utilicé SQL para crear y gestionar la estructura de la base de datos de mi portafolio web. Utilicé las capacidades de SQL para crear consultas eficientes y garantizar un almacenamiento seguro y eficaz de la información en la base de datos. Además, utilicé NetBeans con Spring Boot para desarrollar la lógica del servidor y gestionar la configuración de mi aplicación.', 'Proyecto Argentina Programa Portafolio web', 'Portafolio Web');

-- --------------------------------------------------------

--
-- Table structure for table `proyecto_seq`
--

CREATE TABLE `proyecto_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyecto_seq`
--

INSERT INTO `proyecto_seq` (`next_val`) VALUES
(101),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `puesto`
--

CREATE TABLE `puesto` (
  `id` bigint(20) NOT NULL,
  `experiencia_id` bigint(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `puesto`
--

INSERT INTO `puesto` (`id`, `experiencia_id`, `nombre`) VALUES
(265, 164, 'Solutions to errors and problems'),
(266, 164, 'Support and Development Analyst'),
(267, 165, 'Agente Administrativo'),
(268, 165, 'Sobre estante de obra'),
(269, 165, 'Dibujante de proyectos'),
(302, 166, 'Puesto');

-- --------------------------------------------------------

--
-- Table structure for table `puesto_seq`
--

CREATE TABLE `puesto_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `puesto_seq`
--

INSERT INTO `puesto_seq` (`next_val`) VALUES
(401),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `sobre_mi`
--

CREATE TABLE `sobre_mi` (
  `id` bigint(20) NOT NULL,
  `image_cv` varchar(255) DEFAULT NULL,
  `texto` varchar(2200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url_cv` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sobre_mi`
--

INSERT INTO `sobre_mi` (`id`, `image_cv`, `texto`, `url_cv`) VALUES
(1, './assets/images/MartinGagliardiCV.png', 'Hola, mi nombre es Martin Gagliardi y tengo 21 años. Soy un apasionado estudiante de Analista de Sistemas en la institución O.R.T. Actualmente, me encuentro en la recta final de la carrera y he logrado concretar el título intermedio de técnico programador con éxito. Me enorgullece decir que he obtenido un 75% de la carrera y espero concluir la misma a fines del 2023. Anteriormente, también obtuve el título de Diseño de Interiores en la Escuela Técnica Secundaria N°6 Fernando Fader, lo que me ha permitido desarrollar habilidades creativas y estéticas que me han resultado de gran utilidad en mi formación como Analista de Sistemas. Actualmente, me encuentro trabajando como Support and Development Analyst en Producteca. En mi trabajo diario, hago uso de herramientas como db visualizer con lenguaje de SQL, mongo db, leguajes como Java Script, Type Script y Java, entre otros. Mi principal función en Producteca es la resolución y análisis de errores y casos a resolver. En resumen, estoy comprometido con mi educación y desarrollo profesional, y estoy seguro de que con mi experiencia, habilidades y conocimientos podré aportar mucho valor a cualquier proyecto en el que me involucre.', 'https://www.canva.com/design/DAEjPozLI1c/IpmSBRUyZsI-fP5QQyktSw/view');

-- --------------------------------------------------------

--
-- Table structure for table `sobre_mi_seq`
--

CREATE TABLE `sobre_mi_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sobre_mi_seq`
--

INSERT INTO `sobre_mi_seq` (`next_val`) VALUES
(51),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `admin` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `admin`, `email`, `password`) VALUES
(1, b'1', 'programa@gmail', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(51),
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conocimiento`
--
ALTER TABLE `conocimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herramienta`
--
ALTER TABLE `herramienta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interes`
--
ALTER TABLE `interes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sobre_mi`
--
ALTER TABLE `sobre_mi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
