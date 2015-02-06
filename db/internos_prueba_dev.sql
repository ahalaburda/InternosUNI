-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generaciÃ³n: 06-02-2015 a las 10:09:55
-- VersiÃ³n del servidor: 5.5.41
-- VersiÃ³n de PHP: 5.3.10-1ubuntu3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `internos_prueba_dev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ahoy_events`
--

CREATE TABLE IF NOT EXISTS `ahoy_events` (
  `id` binary(16) NOT NULL,
  `visit_id` binary(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8_unicode_ci,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ahoy_events_on_visit_id` (`visit_id`),
  KEY `index_ahoy_events_on_user_id` (`user_id`),
  KEY `index_ahoy_events_on_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interno` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `interno`, `created_at`, `updated_at`) VALUES
(1, 'Operadora', 101, '2014-07-23 16:04:07', '2014-10-13 12:21:22'),
(2, 'Rector', 102, '2014-07-23 16:04:20', '2014-12-11 14:30:54'),
(3, 'Vicerrectorado', 103, '2014-07-23 16:04:34', '2014-07-24 12:37:17'),
(4, 'Planificacion', 104, '2014-07-23 16:05:12', '2014-08-29 13:12:17'),
(5, 'Direccion de Planificacion', 105, '2014-07-23 16:05:39', '2014-08-29 13:10:35'),
(6, 'Direccion de Posgrado', 106, '2014-07-23 16:06:00', '2014-08-29 13:13:16'),
(7, 'Administracion', 107, '2014-07-23 16:06:25', '2014-10-02 12:06:15'),
(8, 'Direccion Academica', 108, '2014-07-23 16:06:48', '2014-08-29 13:19:11'),
(9, 'Secretaria General', 109, '2014-07-23 16:07:32', '2014-08-29 13:22:27'),
(10, 'Direccion de Administracion y Finanzas', 110, '2014-07-23 16:08:04', '2014-08-29 13:23:25'),
(11, 'Tecnico', 112, '2014-07-23 16:09:02', '2014-08-29 13:33:49'),
(12, 'Investigacion y Extension', 115, '2014-07-23 16:10:11', '2014-08-29 13:34:36'),
(13, 'Secretaria de Administracion y Finanzas', 116, '2014-07-23 16:10:52', '2014-08-29 13:44:37'),
(14, 'Auditoria', 117, '2014-07-23 16:11:22', '2014-08-29 14:26:11'),
(15, 'Tecnologia e Informatica', 118, '2014-07-23 16:11:51', '2014-08-29 14:27:59'),
(16, 'Recursos Humanos', 120, '2014-07-23 16:12:07', '2014-10-02 12:08:37'),
(17, 'Giraduria', 121, '2014-07-23 16:12:25', '2014-08-29 14:38:51'),
(18, 'UOC', 122, '2014-07-23 16:13:20', '2014-08-29 14:41:32'),
(19, 'Ciencias Juridicas (Administracion)', 123, '2014-07-23 16:14:06', '2014-07-23 16:14:06'),
(20, 'FACAF (Administracion)', 124, '2014-07-23 16:14:46', '2014-07-23 16:14:46'),
(21, 'FACEA (Administracion)', 125, '2014-07-23 16:15:16', '2014-07-23 16:15:16'),
(22, 'CRIUNI', 128, '2014-07-23 16:15:31', '2014-08-29 15:55:58'),
(23, 'Patrimonio', 129, '2014-07-23 16:16:34', '2014-10-01 18:28:38'),
(24, 'Direccion General Academica', 131, '2014-07-23 16:17:09', '2014-08-29 16:01:54'),
(25, 'Direccion de Recursos Humanos', 304, '2014-07-23 16:17:48', '2014-10-02 12:13:16'),
(26, 'Giraduria', 134, '2014-07-23 16:18:13', '2014-08-29 16:11:49'),
(27, 'Relaciones Internacionales', 135, '2014-07-23 16:18:51', '2014-08-29 16:13:07'),
(28, 'Asesoria Juridica ', 137, '2014-07-23 17:45:29', '2014-10-13 14:05:52'),
(29, 'CYT', 138, '2014-07-23 17:45:55', '2014-07-23 17:45:55'),
(30, 'Ingenieria(Administracion)', 139, '2014-07-23 17:46:27', '2014-07-23 17:46:27'),
(31, 'Direccion de UOC', 140, '2014-07-23 17:47:14', '2014-10-13 14:12:10'),
(32, 'Presupuesto', 141, '2014-07-23 17:47:33', '2014-10-13 14:11:45'),
(33, 'Posgrado / Bienestar Universitario / INCUNI', 142, '2014-07-23 17:47:47', '2014-10-13 14:06:26'),
(34, 'Contabilidad', 143, '2014-07-23 17:49:13', '2014-10-13 14:03:23'),
(35, 'Secretaria Vicerrectorado', 144, '2014-07-23 17:49:51', '2014-10-13 13:49:25'),
(36, 'Protocolo', 145, '2014-07-23 17:50:34', '2014-10-13 13:48:55'),
(37, 'Archivo Academico', 146, '2014-07-23 17:51:07', '2014-10-13 13:48:05'),
(38, 'Comunicacion', 147, '2014-07-23 17:51:41', '2014-10-13 12:33:31'),
(39, 'Gabinete del Rector', 148, '2014-07-23 17:52:05', '2014-10-13 12:31:46'),
(40, 'Secretaria del Rector', 202, '2014-07-23 17:53:05', '2014-10-13 12:31:14'),
(41, 'Servicios Generales', 203, '2014-07-23 17:53:55', '2014-10-13 12:27:35'),
(42, 'Control y Procedimiento', 204, '2014-07-23 17:54:10', '2014-10-13 12:30:31'),
(43, 'MECIP', 205, '2014-07-23 17:54:26', '2014-10-13 12:28:26'),
(44, 'Direccion Financiera', 302, '2014-07-30 18:08:16', '2014-10-02 12:04:23'),
(45, 'Evaluacion Academica-Estadistica', 136, '2014-08-01 15:47:10', '2014-10-13 12:20:06'),
(46, 'Direccion Administrativa', 303, '2014-10-02 12:05:55', '2014-10-02 12:12:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `interno` int(11) DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cumpleanio` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=108 ;

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nombre`, `apellido`, `cargo`, `departamento_id`, `interno`, `correo`, `cumpleanio`, `created_at`, `updated_at`) VALUES
(1, 'Alice', 'MiÃ±o', 'Operadora', 1, 101, 'amino@uni.edu.py', '2014-10-14', '2014-07-23 16:02:37', '2014-10-13 12:21:22'),
(2, 'Hildegardo', 'GÃ³nzalez', 'Rector', 2, 102, 'rector@uni.edu.py', '2014-10-30', '2014-07-23 18:01:10', '2014-12-11 14:30:54'),
(3, 'Yilda', 'Aguero de Talavera', 'Vicerrectorado', 3, 103, 'vicerrectora@uni.edu.py', '2014-12-01', '2014-07-23 18:01:38', '2014-07-24 12:34:24'),
(4, 'Myrian', 'Morinigo', 'Jefe de Mantenimiento', 4, 104, 'mmorinigo@uni.edu.py', '2014-02-12', '2014-07-24 12:39:03', '2014-08-29 12:57:22'),
(5, 'Milciades', 'Mercado', 'Fiscalizador', 4, 104, 'mmercado@uni.edu.py', '2014-10-20', '2014-07-24 15:12:23', '2014-08-29 13:02:44'),
(6, 'Fernando', 'Velazquez', 'Fiscalizador', 4, 104, 'fvelazquez@uni.edu.py', '2014-03-03', '2014-07-24 15:15:47', '2014-08-29 13:03:07'),
(7, 'Blas', 'Soto', 'Tecnico', 4, 104, 'gsoto@uni.edu.py', '2014-08-21', '2014-07-24 15:18:04', '2014-08-29 13:12:17'),
(8, 'Javier', 'Palacios', 'Jefe de Planificacion', 4, 104, 'jpalacios@uni.edu.py', '2014-10-25', '2014-07-24 15:19:10', '2014-08-29 13:09:17'),
(9, 'Edith', 'PaÃ©z', 'Directora de Planificacion', 5, 105, 'epaez@uni.edu.py', '2014-01-01', '2014-07-24 15:21:40', '2014-08-29 13:10:35'),
(10, 'Perla', 'Sosa', 'Director de Postgrado', 6, 106, 'psosa@uni.edu.py', '2014-09-11', '2014-07-24 15:23:25', '2014-08-29 13:11:17'),
(11, 'Miguel', 'Romero', 'Tecnico', 6, 106, 'mromero@uni.edu.py', '2014-05-01', '2014-07-24 15:24:47', '2014-08-29 13:12:00'),
(12, 'Carlos', 'Aquino', 'Secretario', 6, 106, 'caquino@uni.edu.py', '2014-10-01', '2014-07-24 15:42:38', '2014-08-29 13:13:16'),
(13, 'Nelly', 'Monges de Insfran', 'Directora Administrativa', 48, 303, 'nmonges@uni.edu.py', '2014-04-25', '2014-07-24 15:45:51', '2014-10-02 12:12:33'),
(14, 'Everlyn', 'Lobos', 'Secretaria', 7, 107, 'elobos@uni.edu.py', '2014-10-18', '2014-07-24 15:47:02', '2014-08-29 13:14:07'),
(15, 'Ruben', 'Sosa', 'Encargado de Almacen', 7, 107, 'rsosa@uni.edu.py', '2014-08-13', '2014-07-24 15:48:48', '2014-08-29 13:15:01'),
(16, 'Luz', 'NuÃ±ez', 'Auxiliar', 7, 107, 'lnunez@uni.edu.py', '2014-08-08', '2014-07-24 16:00:26', '2014-08-29 13:16:53'),
(17, 'Dina', 'Matiauda', 'Directora General', 8, 108, 'dmatiauda@uni.edu.py', '2014-12-05', '2014-07-24 16:01:56', '2014-08-29 13:17:37'),
(18, 'Adriana', 'Rivas', 'Secretaria', 8, 108, 'marivas@uni.edu.py', '2014-05-04', '2014-07-24 16:02:55', '2014-08-29 13:18:33'),
(19, 'Juan Carlos', 'Jimenez', 'Coordinacion', 8, 108, 'jjimenez@uni.edu.py', '2014-08-24', '2014-07-24 16:03:47', '2014-08-29 13:19:11'),
(20, 'Nestor', 'IbaÃ±ez', 'Secretario General', 9, 109, 'nibanez@uni.edu.py', '2014-01-01', '2014-07-24 16:58:31', '2014-07-28 18:51:12'),
(21, 'Ivan', 'Alvarez', '', 9, 109, 'ialvarez@uni.edu.py', '2014-02-08', '2014-07-24 17:34:01', '2014-08-01 18:16:28'),
(22, 'Gustavo', 'Gamon', 'Encargado de Documentacion Estudiantil', 9, 109, 'ggamon@uni.edu.py', '2014-09-03', '2014-07-24 17:35:10', '2014-08-29 13:22:27'),
(23, 'Marciano', 'Leiva', 'Director Genera de Administracion y Finanzas', 10, 110, 'mleiva@uni.edu.py', '2014-03-06', '2014-07-24 17:52:35', '2014-08-29 13:23:25'),
(24, 'Angel', 'Centurion', 'Personal de Mantenimiento', 11, 112, 'acenturion@uni.edu.py', '2014-01-01', '2014-07-24 18:38:53', '2014-08-29 13:25:01'),
(25, 'Euclides', 'Gonzalez', 'Tecnico', 11, 112, 'egonzalez@uni.edu.py', '2014-09-21', '2014-07-24 18:41:05', '2014-08-29 13:26:04'),
(26, 'Pablo', 'Ramos Pires', 'Auxiliar de Servicios Generales', 11, 112, 'framos@uni.edu.py', '2014-04-28', '2014-07-24 18:44:02', '2014-08-29 13:26:41'),
(27, 'Ever', 'Ferreira', 'Tecnico', 11, 112, 'eferreira@uni.edu.py', '2014-09-18', '2014-07-24 18:49:24', '2014-08-29 13:33:49'),
(28, 'Deysi', 'Cardozo', 'Secretaria', 12, 115, 'maidana.analia@uni.edu.py', '2014-12-12', '2014-07-24 18:54:01', '2014-08-29 13:34:36'),
(29, 'Alcidia', 'Benitez', 'Secretaria', 13, 116, 'abenitez@uni.edu.py', '2014-11-04', '2014-07-25 15:01:08', '2014-08-29 13:43:40'),
(30, 'Asuncion', 'Ortiz', 'Personal de Servicio', 13, 116, 'aortiz@uni.edu.py', '2014-08-15', '2014-07-25 15:02:29', '2014-08-29 13:44:37'),
(31, 'Miguel', 'Martinez', 'Auditor', 14, 117, 'mrmartinez@uni.edu.py', '2014-10-20', '2014-07-25 15:25:33', '2014-07-25 15:25:33'),
(32, 'Patricia', 'Sanchez', 'Encargada de Auditoria', 14, 117, 'psanchez@uni.edu.py', '2014-12-10', '2014-07-25 15:27:19', '2014-08-29 14:26:11'),
(33, 'Pablo', 'Villalba', 'Jefe de Informatica', 15, 118, 'pvillalba@uni.edu.py', '2014-05-23', '2014-07-25 15:39:13', '2014-08-29 14:27:59'),
(34, 'Leonel', 'Gamarra', 'Encargado', 15, 118, 'lgamarra@uni.edu.py', '2014-08-04', '2014-07-25 15:43:55', '2014-08-01 18:47:42'),
(35, 'Wilmar', 'Santos', 'Tecnico', 15, 118, 'wsantos@uni.edu.py', '2014-09-21', '2014-07-25 15:45:16', '2014-07-25 15:45:16'),
(36, 'Adrian', 'Halaburda', 'Tecnico', 15, 118, 'ahalaburda@uni.edu.py', '2014-10-07', '2014-07-25 18:09:58', '2014-07-25 18:09:58'),
(37, 'Pedro', 'Gimenez', 'Tecnico', 15, 118, 'pgimenez@uni.edu.py', '2014-11-29', '2014-07-25 18:12:41', '2014-07-25 18:12:41'),
(38, 'Edith', 'Gonzalez', 'Psicologa', 16, 120, 'edgonzalez@uni.edu.py', '2014-10-26', '2014-07-25 18:14:44', '2014-08-29 14:30:20'),
(39, 'Cecilia', 'Gonzalez', 'Tecnico', 16, 120, 'rgonzalez@uni.edu.py', '2014-09-21', '2014-07-25 18:29:56', '2014-08-29 14:30:57'),
(40, 'Fatima', 'Silvero', 'Tecnico', 16, 120, 'fsilvero@uni.edu.py', '2014-01-01', '2014-07-25 18:37:12', '2014-08-29 14:31:21'),
(41, 'Ramon', 'Prieto', 'Tecnico', 25, 304, 'rprieto@uni.edu.py', '2014-05-09', '2014-07-25 18:38:21', '2014-10-02 12:13:16'),
(42, 'Cristian', 'Maciel', 'Secretario de Giraduria', 17, 121, 'cmaciel@uni.edu.py', '2014-08-13', '2014-07-25 18:43:04', '2014-08-29 14:36:24'),
(43, 'Carlos', 'Gonzalez', 'Auxiliar', 17, 121, 'cdgonzalez@uni.edu.py', '2014-11-06', '2014-07-25 18:44:30', '2014-08-29 14:37:15'),
(44, 'Ester', 'Chaparro', 'Giradora', 17, 121, 'cchaparro@uni.edu.py', '2014-03-06', '2014-07-29 15:22:59', '2014-08-29 14:38:08'),
(45, 'Irma', 'Lopez', 'Auxiliar de Giraduria', 17, 121, 'ilopez@uni.edu.py', '2014-07-15', '2014-07-29 15:24:59', '2014-08-29 14:38:51'),
(46, 'Laura', 'Ubeda', 'Asistente', 18, 122, 'lubeda@uni.edu.py', '2014-10-07', '2014-07-29 15:37:42', '2014-08-29 14:39:24'),
(47, 'Nimia', 'Ramos', 'Tecnico', 18, 122, 'nramos@uni.edu.py', '2014-09-16', '2014-07-29 17:58:01', '2014-08-29 14:40:03'),
(48, 'Analia', 'Pacheco', 'Auxiliar', 18, 122, 'apacheco@uni.edu.py', '2014-12-07', '2014-07-29 17:59:11', '2014-08-29 14:40:38'),
(49, 'Luis Fernando', 'Parra', 'Tecnico', 18, 122, 'lparra@uni.edu.py', '2014-10-11', '2014-07-29 18:00:08', '2014-08-29 14:41:32'),
(50, 'Ignacia', 'Zayas', 'Tecnico', 22, 128, 'izayas@uni.edu.py', '2014-07-14', '2014-07-30 13:54:16', '2014-08-29 14:42:08'),
(51, 'Ingrid', 'Paredes', 'Jefe de Documentacion', 22, 128, 'iparedes@uni.edu.py', '2014-07-30', '2014-07-30 14:21:38', '2014-08-29 14:42:57'),
(52, 'Analia', 'Ibarra', 'Secretaria', 22, 128, 'anibarra@uni.edu.py', '2014-02-06', '2014-07-30 14:31:38', '2014-08-29 14:43:47'),
(53, 'Evangelina', 'Martinez', '', 22, 128, 'emartinez@uni.edu.py', '2014-12-14', '2014-07-30 14:33:19', '2014-07-30 14:33:19'),
(54, 'Ricardo', 'Gomez', 'Auxiliar', 22, 128, 'rgomez@uni.edu.py', '2014-07-13', '2014-07-30 14:34:31', '2014-08-29 15:55:58'),
(55, 'Mariela', 'Martinez', 'Jefe de Patrimonio', 23, 129, 'mmartinez@uni.edu.py', '2014-09-20', '2014-07-30 14:35:42', '2014-08-29 15:55:38'),
(56, 'Emilce', 'Sotelo', 'Encargada de Patrimonio', 23, 129, 'dsotelo@uni.edu.py', '2014-01-01', '2014-07-30 14:48:15', '2014-08-29 15:56:45'),
(57, 'Diego', 'Melgarejo', 'Tecnico', 23, 129, 'dmelgarejo@uni.edu.py', '2014-11-30', '2014-07-30 14:49:29', '2014-08-29 16:00:34'),
(58, 'Lucila', 'Bogado', 'Directora General de Academico e Investigacion', 24, 132, 'lbogado@uni.edu.py', '2014-10-23', '2014-07-30 14:51:31', '2014-08-29 16:01:54'),
(59, 'Analia', 'Caballero', 'Jefe de Recursos Humanos', 25, 304, 'acaballero@uni.edu.py', '2014-09-25', '2014-07-30 18:07:07', '2014-10-02 12:09:26'),
(60, 'Susana', 'Lugo', 'Director de Finanzas', 46, 302, 'slugo@uni.edu.py', '2014-11-07', '2014-07-30 18:09:56', '2014-10-02 12:04:23'),
(61, 'Nelida', 'Lang', 'Secretaria', 46, 302, 'nlang@uni.edu.py', '2014-04-14', '2014-07-30 18:11:21', '2014-10-02 12:04:01'),
(62, 'Ester', 'Gysin', 'Encargada de Ingreso', 26, 134, 'egysin@uni.edu.py', '2014-02-09', '2014-07-30 18:39:02', '2014-08-29 16:09:05'),
(63, 'Marisa', 'Gonzalez', 'Encargada de Egreso', 26, 134, 'mrgonzalez@uni.edu.py', '2014-04-14', '2014-07-30 18:45:17', '2014-08-29 16:10:20'),
(64, 'Celia', 'Cardozo', 'Encargada de Registros', 26, 134, 'ccardozo@uni.edu.py', '2014-04-15', '2014-07-30 18:46:26', '2014-08-29 16:11:49'),
(65, 'Teresita', 'Regis', 'Jefe de Relaciones Internacionales', 27, 135, 'tregis@uni.edu.py', '2014-11-05', '2014-07-31 11:51:14', '2014-08-29 16:12:39'),
(66, 'Pamela', 'Garcia', 'Tecnico', 27, 135, 'pgarcia@uni.edu.py', '2014-03-17', '2014-07-31 11:54:05', '2014-08-29 16:13:07'),
(67, 'Juan Manuel', 'Sosa', 'Asesor Legal', 28, 137, 'jsosa@uni.edu.py', '2014-06-26', '2014-07-31 14:05:19', '2014-10-13 11:57:51'),
(68, 'Blasida', 'AcuÃ±a', 'Secretaria', 28, 137, 'bacuna@uni.edu.py', '2014-02-03', '2014-07-31 14:06:49', '2014-10-13 12:19:02'),
(69, 'Raquel', 'Velazquez', 'Jefe del departamento juridico', 28, 137, 'rvelazquez@uni.edu.py', '2014-06-23', '2014-07-31 14:08:12', '2014-10-13 12:22:58'),
(70, 'Silvana', 'Mongelos', '', 28, 137, 'smongelos@uni.edu.py', '2014-01-01', '2014-07-31 14:10:26', '2014-07-31 14:10:26'),
(71, 'Dionicio', 'Cabrera', 'Secretario', 28, 137, 'dcabrera@uni.edu.py', '2014-01-01', '2014-07-31 14:40:26', '2014-10-13 12:26:44'),
(72, 'Fernando', 'Mauro', 'Secretario', 28, 137, 'fmelgarejo@uni.edu.py', '2014-06-09', '2014-07-31 14:42:56', '2014-10-13 14:05:52'),
(73, 'Zully', 'Lopez', 'Director', 31, 140, 'zlopez@uni.edu.py', '2014-06-20', '2014-07-31 14:44:23', '2014-10-13 14:12:10'),
(74, 'Beatriz', 'Chavez', 'Jefe de Presupuesto', 32, 141, 'echavez@uni.edu.py', '2014-08-05', '2014-07-31 14:51:02', '2014-10-13 14:11:45'),
(75, 'Romilio', 'Ocampos', 'Tecnico', 32, 141, 'jocampo@uni.edu.py', '2014-09-08', '2014-07-31 15:21:10', '2014-10-13 14:10:49'),
(76, 'Romina', 'Castillo', 'Encargada Eval.  y control de Presupuesto', 32, 141, 'rcastillo@uni.edu.py', '2014-03-22', '2014-07-31 15:23:22', '2014-10-13 14:10:31'),
(78, 'Aldo', 'Torales', 'Tecnico', 32, 141, 'atorales@uni.edu.py', '2014-04-19', '2014-07-31 15:36:41', '2014-10-13 14:09:28'),
(79, 'Rosa', 'Arapayu', 'Profesional', 33, 142, 'rarapayu@uni.edu.py', '2014-08-03', '2014-07-31 15:42:40', '2014-10-13 14:06:26'),
(80, 'David', 'Martinez', '', 34, 142, 'dlmartinez@uni.edu.py', '2014-07-10', '2014-07-31 15:58:35', '2014-07-31 15:58:35'),
(81, 'Gladys', 'Romero', 'Profesional', 33, 142, 'gromero@uni.edu.py', '2014-02-18', '2014-07-31 17:36:04', '2014-10-13 14:05:31'),
(82, 'Nestor', 'Valenzuela', '', 33, 142, 'nvalenzuela@uni.edu.py', '2014-08-04', '2014-07-31 17:50:00', '2014-07-31 17:50:00'),
(83, 'Oraida', 'Ubeda de Gamon', 'Contadora', 36, 142, 'oubeda@uni.edu.py', '2014-11-13', '2014-07-31 19:02:41', '2014-10-13 14:03:23'),
(84, 'Maria', 'Ocampo', 'Encargada de ingreso contabilidad', 36, 143, 'mariaokmpo@uni.edu.py', '2014-02-16', '2014-07-31 19:04:22', '2014-10-13 13:53:46'),
(85, 'Walter', 'Leiva', 'Encargado de egreso contabilidad', 36, 143, 'wleiva@uni.edu.py', '2014-09-13', '2014-08-01 14:04:31', '2014-10-13 13:52:46'),
(86, 'Sandra', 'Benitez', 'Tecnico', 36, 143, 'sbenitez@uni.edu.py', '2014-06-21', '2014-08-01 14:07:47', '2014-10-13 13:51:15'),
(87, 'Carlos', 'Vera', 'Encargado de archivo contable', 36, 143, 'cvera@uni.edu.py', '2014-06-27', '2014-08-01 14:09:10', '2014-10-13 13:50:58'),
(88, 'Johana', 'Delvalle', 'Secretaria', 36, 143, 'jdelvalle@uni.edu.py', '2014-01-09', '2014-08-01 14:10:46', '2014-10-13 13:50:11'),
(89, 'Walter', 'Romero', 'Tecnico', 36, 143, 'wromero@uni.edu.py', '2014-06-25', '2014-08-01 14:11:42', '2014-10-13 13:49:50'),
(90, 'Viviana', 'Aldana', 'Secretaria', 37, 144, 'valdana@uni.edu.py', '2014-12-22', '2014-08-01 14:13:05', '2014-10-13 13:49:25'),
(91, 'Carmen', 'Bogado', 'Jefe de cooperacion estudiantil', 38, 145, 'cbogado@uni.edu.py', '2014-07-09', '2014-08-01 14:21:47', '2014-10-13 13:48:55'),
(92, 'Sandra', 'Cristaldo', 'Secretaria', 39, 146, 'scristaldo@uni.edu.py', '2014-11-03', '2014-08-01 14:30:23', '2014-10-13 13:48:05'),
(93, 'Cristhian', 'Balcazar', 'Jefe de Comunicaciones', 40, 147, 'crbalcazar@uni.edu.py', '2014-10-07', '2014-08-01 14:32:56', '2014-10-13 12:33:31'),
(94, 'Juan', 'Britto', 'Tecnico', 40, 147, 'jbritto@uni.edu.py', '2014-03-19', '2014-08-01 14:33:59', '2014-10-13 12:32:49'),
(95, 'Edil', 'Paez', 'Coordinador', 40, 147, 'gpacheco@uni.edu.py', '2014-08-22', '2014-08-01 14:35:32', '2014-10-13 12:32:30'),
(96, 'Andrea', 'Lezcano', 'Tecnico', 40, 147, 'alezcano@uni.edu.py', '2014-07-15', '2014-08-01 14:36:57', '2014-10-13 12:32:04'),
(97, 'Armando', 'MiÃ±o', 'Auxiliar', 41, 202, 'armandom@uni.edu.py', '2014-02-20', '2014-08-01 14:38:29', '2014-10-13 12:31:46'),
(98, 'Liliana', 'Espinola', 'Jefe de Gabinete del Rector', 42, 202, 'fl.espinola@uni.edu.py', '2014-07-09', '2014-08-01 14:39:36', '2014-10-13 12:31:14'),
(99, 'Veronica', 'Arapayu', 'Jefe de Control y Procedimientos', 44, 204, 'varapayu@uni.edu.py', '2014-04-03', '2014-08-01 14:45:05', '2014-10-13 12:30:31'),
(100, 'Sandra', 'Chavez', 'Asistente de Control y Procedimientos', 44, 204, 'schavez@uni.edu.py', '2014-01-08', '2014-08-01 15:02:42', '2014-10-13 12:30:00'),
(101, 'Mirian', 'Aquino', 'Encargada de auditoria financiera', 44, 204, 'maquino@uni.edu.py', '2014-07-14', '2014-08-01 15:04:28', '2014-10-13 12:29:12'),
(102, 'Carmen', 'Romero', 'Encargada de control', 45, 205, 'cromero@uni.edu.py', '2014-09-27', '2014-08-01 15:06:11', '2014-10-13 12:28:26'),
(103, 'Roli', 'Ayala', 'Jefe de Servicios Generales', 43, 203, 'rolijose@uni.edu.py', '2014-02-13', '2014-08-01 15:07:51', '2014-10-13 12:27:35'),
(104, 'JuliÃ¡n', 'Garcia', 'Deportes', 33, 142, 'jgarcia@uni.edu.py', '2014-01-07', '2014-08-01 15:09:24', '2014-08-01 15:09:24'),
(105, 'Arnaldo', 'Ortiz', 'Auxiliar', 38, 145, 'aortiz@uni.edu.py', '2014-08-10', '2014-08-01 15:15:34', '2014-10-13 12:20:47'),
(106, 'Eugenia', 'Cyncar', 'Evaluadora Academica', 47, 136, 'ecyncar@uni.edu.py', '2014-05-13', '2014-08-01 15:56:13', '2014-10-13 12:20:06'),
(107, 'Mauricio', 'Villalba', 'Auxiliar', 47, 136, 'mvillalba@uni.edu.py', '2014-03-23', '2014-08-01 15:57:47', '2014-10-13 12:19:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140324120354'),
('20140324120403'),
('20140910135334'),
('20150115152420');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE IF NOT EXISTS `visits` (
  `id` binary(16) NOT NULL,
  `visitor_id` binary(16) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `referrer` text COLLATE utf8_unicode_ci,
  `landing_page` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `referring_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_visits_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `visitor_id`, `ip`, `user_agent`, `referrer`, `landing_page`, `user_id`, `referring_domain`, `search_keyword`, `browser`, `os`, `device_type`, `country`, `region`, `city`, `utm_source`, `utm_medium`, `utm_term`, `utm_content`, `utm_campaign`, `started_at`) VALUES
(' ¼Àk¬ÅKÓ¶6Ha@y²•', 'à‰á\rïK©(ã§}Sx', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-29 13:03:11'),
('@ø¼ÂC#‰Éð\nÖ', '‡Ä¬wLû@ŒdëL—0sÈ', '192.168.17.204', 'Mozilla/5.0 (Linux; Android 5.0.2; GT-I9300 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.93 Mobile Safari/537.36', NULL, 'http://192.168.17.16:3000/', NULL, NULL, NULL, 'Chrome Mobile', 'Android', 'Mobile', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-16 13:49:19'),
('Tš”«åÁKüª›mw‹¦-', 'ÆÒpÅMöƒ,ËP&ZC÷', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:34.0) Gecko/20100101 Firefox/34.0', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Firefox', 'Ubuntu', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-20 11:21:51'),
('[£u<×Ô@«ô#\n_´¾¨', '¸+¡âIóÀ|^þ`Þ', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-20 11:10:38'),
('^Sî—îBu­“€2ò‡¤·', 'ë‹òIöO0¤R/@¯"þõ', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 'http://localhost:3000/funcionarios', 'http://localhost:3000/', NULL, 'localhost', NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-02 18:01:23'),
('~cFˆ—yLi½$?Ä$@S', 'ÆÒpÅMöƒ,ËP&ZC÷', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Firefox', 'Ubuntu', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-02 15:34:12'),
('çbÄŠøMT½ç‰Î¿ÙÆ', '=ñ°Gƒ³Q™ÄTÕà', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-19 12:04:54'),
('÷X^m*(DÁ±\n)ý_ˆê', 'à‰á\rïK©(ã§}Sx', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-02 14:35:55'),
('ÿIg¬[Héž"øg†ÏT', '=ñ°Gƒ³Q™ÄTÕà', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-15 16:05:50'),
('ÿÆ×.gËF©ƒ/P®qù°m', 'ë©äÈEe™@ÓŠc¢À', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', NULL, 'http://localhost:3000/', NULL, NULL, NULL, 'Chrome', 'Linux', 'Desktop', 'Reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-01-23 17:24:37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
