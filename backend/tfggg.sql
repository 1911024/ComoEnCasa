-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2025 a las 19:36:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tfggg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250613144548', '2025-06-13 16:47:16', 92),
('DoctrineMigrations\\Version20250616130603', '2025-06-16 15:06:08', 93),
('DoctrineMigrations\\Version20250616183812', '2025-06-16 20:38:28', 62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `image`
--

INSERT INTO `image` (`id`, `property_id`, `url`) VALUES
(276, 1, '68582f85acf83.jpg'),
(278, 1, '68583031e3125.jpg'),
(279, 1, '685830b5552ac.jpg'),
(284, 2, '685831beaf962.jpg'),
(286, 2, '685831e41e379.jpg'),
(287, 2, '685831f703685.jpg'),
(288, 3, '685832328d10b.jpg'),
(289, 3, '685832469195e.jpg'),
(292, 3, '6858329b0f500.jpg'),
(298, 4, '6858335d6f337.jpg'),
(299, 4, '6858335d6f85b.jpg'),
(300, 4, '6858335d6fa75.jpg'),
(301, 4, '6858335d6fda9.jpg'),
(302, 4, '6858335d6ff86.jpg'),
(304, 5, '685834844e56d.jpg'),
(305, 5, '685834844e919.jpg'),
(306, 5, '685834844ebde.jpg'),
(307, 6, '6858373fa68c3.jpg'),
(308, 6, '6858373fa6ec7.jpg'),
(309, 6, '6858373fa7157.jpg'),
(310, 6, '6858373fa73cd.jpg'),
(311, 6, '6858373fa75b8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `city` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `property`
--

INSERT INTO `property` (`id`, `title`, `address`, `description`, `price`, `created_at`, `city`, `type`, `cp`) VALUES
(1, 'Casa en Patiño', 'Patiño', 'Carr. de la Fuensanta, 138, 30010 San Benito - Patiño, Murcia.\r\nSe trata de un chalet de 200 metros distribuidos en planta baja y primera planta.\r\n\r\nEn la planta baja encontrarás un luminoso salón-comedor con cocina abierta, que ofrece un ambiente moderno y funcional. Desde la cocina, accedes directamente a la zona de lavadero y al patio, perfecto para disfrutar del aire libre.\r\n\r\nEn la primera planta, la vivienda dispone de tres dormitorios con armarios empotrados. El dormitorio principal destaca por su vestidor privado y acceso a una acogedora terraza. Además, la planta cuenta con un baño completo.\r\n\r\nCabe destacar que cuenta con plaza de garaje y trastero incluido en el precio.', 280000, '2025-05-25 16:03:50', 'Murcia', 'Casa', '30012'),
(2, 'Chalet en Guadalupe', 'Guadalupe', 'C. Bando de la Huerta, 5, 30107 Murcia. Descubre esta magnífica vivienda unifamiliar situada en una de las zonas más tranquilas y cotizadas de Guadalupe, en Calle Los Jerónimos. Un entorno residencial ideal para disfrutar de la comodidad, la privacidad y la calidad de vida que tú y tu familia merecéis.\r\n\r\nCon 165 m² construidos, esta propiedad se distribuye en 4 amplios dormitorios con armarios empotrados y 4 baños completos, ofreciendo espacio y funcionalidad para toda la familia.\r\n\r\nQuieres vivir en la zona residencial de Murcia con mayor proyección, que dispone de parada de tranvía y autobús que conectan esta zona de Los Jerónimos con la Ciudad de Murcia, así como con las universidades y centros comerciales.', 319900, '2025-05-25 17:25:54', 'Murcia', 'Casa', '30107'),
(3, 'Piso en Albacete', 'Santa Teresa', 'C. Luis Rosales, 9, 02003 Albacete. Vivienda ubicada en una de las mejores zonas de Albacete con todos los servicios cerca.\r\nCuenta con un amplio y luminoso salón, tres dormitorios con armarios empotrados, 2 baños completos, amplia cocina armariada con galería y termo y campana incluidos (termo de 80lt recién cambiado), suelo de tarima y piso recién pintado, la comunidad de propietarios cuenta con grupo de presión, descalcificador y cámaras de seguridad.\r\nEl garaje cuenta con preinstalación para coche eléctrico, la vivienda cuenta con videoportero.\r\n\r\nNo dejes pasar esta oportunidad y ven a visitarlo! Te esperamos.', 180000, '2025-05-25 17:55:43', 'Albacete', 'Piso', '12001'),
(4, 'Piso en Cartagena', 'La Unión', 'C. Encarnación Sánchez, 22, 30360 La Unión, Murcia. Precioso piso en La Unión con plaza de garaje y trastero incluidos en el precio. Con aproximadamente 100 m² construidos, espacio bien distribuido, este hogar ofrece salón, 3 dormitorios y 2 baños completos, uno en suite para mayor comodidad.\r\n\r\nUna de las zonas más demandadas y con todo lo que necesita a su alcance. El piso cuenta con acabados de calidad: suelo de mármol, ventanas de aluminio con climalit, armarios empotrados, aire acondicionado central (frío/calor) para que siempre estén cómodos sin importar la estación. La puerta blindada les garantiza tranquilidad. Todo ello en un entorno amigable y bien cuidado.\r\n\r\nUbicado cerca de parques, colegios, supermercados y con fácil acceso a transporte, este hogar combina comodidad, funcionalidad y una excelente ubicación. ¡Una oportunidad que no pueden dejar pasar!', 210000, '2025-05-29 16:47:37', 'Cartagena', 'Piso', '30300'),
(5, 'Chalet en Magdalena', 'Molinos Marfagones', 'C. Puerto España, 20, 30393 Cartagena, Murcia. Chalet en venta en Magdalena, Pedanías Oeste, Cartagena. Acogedora planta baja de 119m2 construidos de los cuales 90m2 son útiles, distribuidos en PLANTA BAJA: Amplio jardín, cochera de 18m2 construidos, 3 habitaciones, 1 de ellas doble, 2 bños completos(uno de ellos con bañera), amplia cocina con salida a un patio. PLANTA BUARDILLA: Habitación y otro espacio abierto que se puede convertir en trastero y salida a una terraza de unos 50m2 aproximadamente. ¡Contacta ya y ven a visitarla!', 195000, '2025-05-30 18:32:54', 'Cartagena', 'Casa', '30393'),
(6, 'Chalet en San Pablo', 'Santa Teresa', 'Tr.ª Sta. Teresa, 17, 30300 Cartagena, Murcia. Casa baja reformada a estrenar en la zona de San Pablo cerca del parque fiesta del árbol. Totalmente equipada e independiente. En una sola planta más patio de 25 M² y trastero.\r\n\r\nConsta de 130 M² construidos y 119 m² útiles. Reforma a estrenar y todo el mobiliario en todo su concepto. Entrada hall, salón con cocina americana y salida al patio totalmente independiente con zona chillaos, ducha, toldos, barbacoa y piscina de hidromasaje desmontable. Altillo buhardilla-trastero. 3 dormitorios con armarios empotrados y camas con canapés ( zona de almacenaje), 2 baños completos con ducha. 2 TV en el salón y habitación principal. Aire Acondicionado frio-calor. MODERNA. Más cocinilla-lavadero en el patio.\r\n\r\nCon posibilidad de 2 plazas de garaje muy cerca de la vivienda.', 255000, '2025-05-31 13:14:02', 'Albacete', 'Casa', '12001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(1, 'tu_email@example.com', '[\"ROLE_USER\"]', '$2y$13$vyqfcwxq7eooWYRX7fov5u.vaKIcJIg5tBvqT0igeMQwoap/KuIVy', 'Tu Nombre'),
(2, 'usuario@ejemplo.com', '[\"ROLE_USER\"]', '$2y$13$qC1mdtlumzKKT0fzoMU74eCnv3l/gb0xV5YofhryBOTBcef08hyfW', 'Francisco Martínez'),
(3, 'franl@ejemplo.com', '[\"ROLE_USER\"]', '$2y$13$j1RtIP/nDDI4gXD..eFinu4SoR8XoFlCcfYPkfmVS9kDf7MWQkuMS', 'Fran Latorre'),
(4, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$ixtD1xWrUIphFRNaODC4fudV3On8tkwg95oziEzHdVUr/cAVCXZrO', 'Admin Principal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F549213EC` (`property_id`);

--
-- Indices de la tabla `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
