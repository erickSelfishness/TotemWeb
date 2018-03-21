-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 11:21 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estacion_sueno2`
--

-- --------------------------------------------------------

--
-- Table structure for table `authassignment`
--

CREATE TABLE `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Admin', '1', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

CREATE TABLE `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('Admin', 2, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Site.Index', 0, NULL, NULL, 'N;'),
('Table.*', 1, NULL, NULL, 'N;'),
('Table.Admin', 0, NULL, NULL, 'N;'),
('Table.Create', 0, NULL, NULL, 'N;'),
('Table.Delete', 0, NULL, NULL, 'N;'),
('Table.Index', 0, NULL, NULL, 'N;'),
('Table.Update', 0, NULL, NULL, 'N;'),
('Table.View', 0, NULL, NULL, 'N;'),
('User.Activation.*', 1, NULL, NULL, 'N;'),
('User.Activation.Activation', 0, NULL, NULL, 'N;'),
('User.Default.*', 1, NULL, NULL, 'N;'),
('User.Default.Index', 0, NULL, NULL, 'N;'),
('User.Login.*', 1, NULL, NULL, 'N;'),
('User.Login.Login', 0, NULL, NULL, 'N;'),
('User.Logout.*', 1, NULL, NULL, 'N;'),
('User.Logout.Logout', 0, NULL, NULL, 'N;'),
('User.Profile.*', 1, NULL, NULL, 'N;'),
('User.Profile.Changepassword', 0, NULL, NULL, 'N;'),
('User.Profile.Edit', 0, NULL, NULL, 'N;'),
('User.Profile.Profile', 0, NULL, NULL, 'N;'),
('User.Recovery.*', 1, NULL, NULL, 'N;'),
('User.Recovery.Recovery', 0, NULL, NULL, 'N;'),
('User.User.*', 1, NULL, NULL, 'N;'),
('User.User.Index', 0, NULL, NULL, 'N;'),
('User.User.View', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

CREATE TABLE `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('Authenticated', 'Site.Index'),
('Authenticated', 'Table.*'),
('Authenticated', 'Table.Create'),
('Authenticated', 'Table.Index'),
('Authenticated', 'Table.Update'),
('Authenticated', 'Table.View'),
('Authenticated', 'User.Activation.*'),
('Authenticated', 'User.Activation.Activation'),
('Authenticated', 'User.Default.*'),
('Authenticated', 'User.Default.Index'),
('Authenticated', 'User.Login.Login'),
('Authenticated', 'User.Logout.*'),
('Authenticated', 'User.Logout.Logout'),
('Authenticated', 'User.Profile.*'),
('Authenticated', 'User.Profile.Changepassword'),
('Authenticated', 'User.Profile.Edit'),
('Authenticated', 'User.Profile.Profile'),
('Authenticated', 'User.Recovery.Recovery');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Empresa 1');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `name`) VALUES
(1, 'Empresario'),
(2, 'Profesional Autónomo'),
(3, 'Comerciante'),
(4, 'Dirección de Empresas'),
(5, 'Gerencia'),
(6, 'Jefatura'),
(7, 'Supervisión'),
(8, 'Empleado'),
(9, 'En búsqueda laboral'),
(10, 'Otros');

-- --------------------------------------------------------

--
-- Table structure for table `occupation_area`
--

CREATE TABLE `occupation_area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation_area`
--

INSERT INTO `occupation_area` (`id`, `name`) VALUES
(1, 'Administración pública'),
(2, 'Agricultura, ganadería, pesca'),
(3, 'Alimentos y bebidas'),
(4, 'Banca y servicios financieros'),
(5, 'Comunicación, marketing y publicidad'),
(6, 'Construcción y mercado inmobiliario'),
(7, 'Consultoría'),
(8, 'Consumo masivo'),
(9, 'Cosmética y limpieza'),
(10, 'Defensa y seguridad'),
(11, 'Electrónica y electrodomésticos'),
(12, 'Energía, electricidad, gas y petróleo'),
(13, 'Enseñanza'),
(14, 'Estudios jurídicos'),
(15, 'Eventos y exposiciones'),
(16, 'Indumentaria'),
(17, 'Industria automotriz'),
(18, 'Laboratorios'),
(19, 'Medios de comunicación'),
(20, 'Mercado de capitales'),
(21, 'Minería'),
(22, 'ONG, servicios comunitarios y sociales'),
(23, 'Química y petroquímica'),
(24, 'Retail'),
(25, 'Seguros'),
(26, 'Servicios a empresas'),
(27, 'Servicios de salud'),
(28, 'Siderurgia y metalurgia'),
(29, 'Tabacaleras'),
(30, 'Tecnología'),
(31, 'Telecomunicaciones'),
(32, 'Transporte'),
(33, 'Turismo, hotelería, restaurantes'),
(34, 'Universidades y educación'),
(35, 'Otras actividades');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` int(10) NOT NULL DEFAULT '0',
  `height` decimal(10,2) NOT NULL DEFAULT '0.00',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `age` int(10) NOT NULL DEFAULT '0',
  `marital_status` int(10) NOT NULL DEFAULT '0',
  `activity_level` int(10) NOT NULL DEFAULT '0',
  `working_days_sleep_hours` time NOT NULL DEFAULT '00:00:00',
  `working_days_sleep_hours_desired` time NOT NULL DEFAULT '00:00:00',
  `working_days_sleep_quality` decimal(10,2) NOT NULL DEFAULT '0.00',
  `weekend_sleep_hours` time NOT NULL DEFAULT '00:00:00',
  `weekend_sleep_hours_desired` time NOT NULL DEFAULT '00:00:00',
  `weekend_sleep_quality` int(10) NOT NULL DEFAULT '0',
  `working_hours` time NOT NULL DEFAULT '00:00:00',
  `exercise_hours` time NOT NULL DEFAULT '00:00:00',
  `recreation_hours` time NOT NULL DEFAULT '00:00:00',
  `travel_hours` time NOT NULL DEFAULT '00:00:00',
  `company_id` int(10) NOT NULL DEFAULT '0',
  `occupation_id` int(10) NOT NULL DEFAULT '0',
  `occupation_area_id` int(10) NOT NULL DEFAULT '0',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `provider_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `gender`, `height`, `weight`, `age`, `marital_status`, `activity_level`, `working_days_sleep_hours`, `working_days_sleep_hours_desired`, `working_days_sleep_quality`, `weekend_sleep_hours`, `weekend_sleep_hours_desired`, `weekend_sleep_quality`, `working_hours`, `exercise_hours`, `recreation_hours`, `travel_hours`, `company_id`, `occupation_id`, `occupation_area_id`, `provider`, `provider_id`) VALUES
(1, 'Administrador', 0, '1.80', '60.00', 0, 0, 0, '00:00:00', '00:00:00', '0.00', '00:00:00', '00:00:00', 0, '00:00:00', '00:00:00', '00:00:00', '00:00:00', 0, 0, 0, '', ''),
(6, 'Demo', 1, '1.80', '60.00', 0, 1, 1, '00:00:00', '00:00:00', '0.00', '00:00:00', '00:00:00', 0, '00:00:00', '00:00:00', '00:00:00', '00:00:00', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE `profile_field` (
  `id` int(11) NOT NULL,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` text,
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` text,
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_field`
--

INSERT INTO `profile_field` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
(5, 'name', 'Name', 'VARCHAR', 255, 0, 1, '', '', '', '', '', '', '', 0, 1),
(12, 'gender', 'Sexo', 'INTEGER', 10, 0, 1, '', '1==Masculino;2==Femenino', '', '', '0', '', '', 10, 1),
(13, 'height', 'Altura', 'DECIMAL', 10, 0, 1, '', '', '', '', '0', '', '', 20, 1),
(14, 'weight', 'Peso', 'DECIMAL', 10, 0, 1, '', '', '', '', '0', '', '', 30, 1),
(15, 'age', 'Edad', 'INTEGER', 10, 0, 1, '', '', '', '', '0', '', '', 40, 1),
(16, 'marital_status', 'Estado civil', 'INTEGER', 10, 0, 1, '', '1==Soltero;2==Casado;3==Divorciado;4==Viudo', '', '', '0', '', '', 50, 1),
(19, 'activity_level', 'Nivel de actividad', 'INTEGER', 10, 0, 1, '', '1==Sedentario;2==Activo;3==Muy activo', '', '', '0', '', '', 75, 1),
(20, 'working_days_sleep_hours', 'Horas de sueño habituales en días laborales', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 80, 1),
(21, 'working_days_sleep_hours_desired', 'Horas de sueño deseadas en días laborales', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 80, 1),
(22, 'working_days_sleep_quality', 'Calidad de sueño en días laborales', 'DECIMAL', 10, 0, 1, '', '', '', '', '0', '', '', 80, 1),
(23, 'weekend_sleep_hours', 'Horas de sueño habituales en fines de semana', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 110, 1),
(24, 'weekend_sleep_hours_desired', 'Horas de sueño deseadas por noche en fines de semana', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 120, 1),
(25, 'weekend_sleep_quality', 'Calidad de sueño en fines de semana', 'INTEGER', 10, 0, 1, '', '', '', '', '0', '', '', 130, 1),
(26, 'working_hours', 'Horas de trabajo', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 140, 1),
(27, 'exercise_hours', 'Horas de actividad física', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 150, 1),
(28, 'recreation_hours', 'Horas de actividad recreativa', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 160, 1),
(29, 'travel_hours', 'Horas de viaje', 'TIME', 10, 0, 1, '', '', '', '', '0', '', '', 170, 1),
(30, 'company_id', 'Empresa', 'INTEGER', 10, 0, 2, '', '', '', '', '0', 'UWrelBelongsTo', '{"modelName":"Company","optionName":"name","emptyField":"Ninguno","relationName":"company"}', 0, 0),
(31, 'occupation_id', 'Profesión', 'INTEGER', 10, 0, 1, '', '', '', '', '0', 'UWrelBelongsTo', '{"modelName":"Occupation","optionName":"name","relationName":"occupation"}', 61, 1),
(32, 'occupation_area_id', 'Área de actividad', 'INTEGER', 10, 0, 1, '', '', '', '', '0', 'UWrelBelongsTo', '{"modelName":"OccupationArea","optionName":"name","relationName":"occupation_area"}', 71, 1),
(33, 'provider', 'Proveedor', 'VARCHAR', 255, 0, 0, '', '', '', '', '', '', '', 33, 1),
(35, 'provider_id', 'Id del proveedor', 'VARCHAR', 255, 0, 0, '', '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `question_type` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `test_id`, `number`, `text`, `question_type`) VALUES
(1, 3, 1, 'Sentado leyendo', 1),
(2, 3, 2, 'Viendo televisión', 1),
(3, 3, 3, 'Sentado, inactivo en un lugar público', 1),
(4, 3, 4, 'Como pasajero en un coche una hora seguida', 1),
(5, 3, 5, 'Descansando recostado por la tarde cuando las circunsatancias lo permiten', 1),
(6, 3, 6, 'Sentado charlando con alguien', 1),
(7, 3, 7, 'Sentado tranquilo, después de un almuerzo sin alcohol', 1),
(8, 3, 8, 'En un coche, al pararse unos minutos en el tráfico', 1),
(9, 1, 1, 'en su casa, ¿a qué hora se acuesta normalmente por la noche?', 2),
(10, 1, 2, '¿Cúanto tiempo demora en quedarse dormido en promedio?', 2),
(11, 1, 3, '¿A qué hora se levanta habitualmente por la mañana?', 2),
(12, 1, 4, '¿Cuántas horas duerme habitualmente cada noche?', 2),
(13, 1, 5, 'No poder quedarse dormido en la primera media hora', 3),
(14, 1, 6, 'Despertarse durante la noche o de madrugada', 3),
(15, 1, 7, 'Tener que levantarse para ir al baño', 3),
(16, 1, 8, 'No poder respirar bien', 3),
(17, 1, 9, 'Toser o roncar ruidosamente', 3),
(18, 1, 10, 'Sentir  frio', 3),
(19, 1, 11, 'Sentir calor', 3),
(20, 1, 12, 'Tener sueños feos o pesadillas', 3),
(21, 1, 13, 'Tener dolores', 3),
(22, 1, 14, 'Otras razones', 3),
(23, 1, 15, 'Durante el mes pasado... ¿cuántas veces ha tomado medicinas (recetadas por el medico o por su cuenta) para dormir?', 3),
(24, 1, 16, 'Durante el mes pasado... ¿cuántas veces ha tenido problemas para permanecer despierto mientras conducía, comía, trabajaba, estudiaba o desarrollaba alguna otra actividad social?', 3),
(25, 1, 17, 'Durante el último mes, ¿qué tanto problema le ha traído a usted su estado de ánimo para realizar actividades como conducir, comer, trabajar, estudiar o alguna otra actividad social?', 4),
(26, 1, 18, 'Durante el último mes, ¿cómo calificaría en conjunto la calidad de su sueño?', 5),
(27, 2, 1, 'Ronquido fuerte', 6),
(28, 2, 2, '¿Siente las piernas inquietas, como si saltaran, o que se sacuden? (En cualquier momento del día)?', 6),
(29, 2, 3, 'Dificultad para conciliar el sueño', 6),
(30, 2, 4, 'Despertares frecuentes', 6),
(31, 2, 5, '¿Tiene dificultad para respirar? ¿Respiración entrecortada? ¿Respiración ruidosa? (En cualquier momento del día)', 6),
(32, 2, 6, '¿Se siente adormecido en el trabajo? (mientras conduce)', 6),
(33, 2, 7, '¿Con frecuencia da vueltas o se sacude en la cama?', 6),
(34, 2, 8, '¿En algún momento siente que se queda sin aire? (en cualquier momento del día)', 6),
(35, 2, 9, '¿Tiene excesiva somnolencia (le da mucho sueño) durante el día?', 6),
(36, 2, 10, '¿Tiene dolores de cabeza por la mañana?', 6),
(37, 2, 11, '¿Se sintió adormecido al conducir? (Fuera de su trabajo)', 6),
(38, 2, 12, 'Se siente paralizado, incapaz de moverse por períodos cortos al dormirse o al despertar', 6),
(39, 2, 13, '¿Tiene sueños vívidos al quedarse dormido o en el momento de despertarse?', 6),
(40, 2, 14, 'Ronquido (Cualquiera; fuerte o débil)', 6);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`id`, `name`) VALUES
(1, 'Epworth'),
(2, 'Pittsburgh - 1'),
(3, 'Pittsburgh - 2'),
(4, 'Pittsburgh - 3'),
(5, 'Pittsburgh - 4'),
(6, 'MAP');

-- --------------------------------------------------------

--
-- Table structure for table `question_type_option`
--

CREATE TABLE `question_type_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_type_id` int(10) UNSIGNED NOT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type_option`
--

INSERT INTO `question_type_option` (`id`, `question_type_id`, `value`, `text`) VALUES
(1, 1, 0, 'Ninguna vez en el último mes'),
(2, 1, 1, 'Menos de una vez por semana'),
(3, 1, 2, 'Una o dos veces a la semana'),
(4, 1, 3, 'Tres o más veces a la semana'),
(5, 2, 0, 'Escriba la hora habitual en la que se acuesta hs/min'),
(6, 3, 0, 'Ninguna vez en el último mes'),
(7, 3, 1, 'Menos de una vez a la semana'),
(8, 3, 2, 'Una o dos veces a la semana'),
(9, 3, 3, 'Tres o más veces a la semana'),
(10, 4, 0, 'Ningún problema'),
(11, 4, 1, 'Poco problema'),
(12, 4, 2, 'Moderado problema'),
(13, 4, 3, 'Mucho problema'),
(14, 5, 0, 'Muy buena'),
(15, 5, 1, 'Bastante buena'),
(16, 5, 2, 'Bastante mala'),
(17, 5, 3, 'Muy mala'),
(18, 6, 0, 'Nunca'),
(19, 6, 1, 'Casi nunca'),
(20, 6, 2, 'A veces'),
(21, 6, 3, 'Con frecuencia'),
(22, 6, 4, 'Siempre'),
(23, 6, 5, 'No sabe');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1357784830),
('m110805_153437_installYiiUser', 1357784843),
('m110810_162301_userTimestampFix', 1357784843);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_reaction_test` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `is_reaction_test`) VALUES
(1, 'Calidad del sueño', 0),
(2, 'Predicción de apnea', 0),
(3, 'Escala del sueño', 0),
(4, 'Tiempo de reacción', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `activkey`, `superuser`, `status`, `create_at`, `lastvisit_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'info@devonix.net', 'ebe83c88cff438a889d3a833d6b2d9e5', 1, 1, '2013-01-10 02:27:23', '2018-02-27 23:11:02'),
(6, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@devonix.net', '2957aefeba7be834458f490d84577314', 1, 1, '2013-05-27 19:41:45', '2013-09-11 01:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_reaction_test`
--

CREATE TABLE `user_reaction_test` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_test_id` int(10) UNSIGNED NOT NULL,
  `sleep_hours` int(10) UNSIGNED NOT NULL,
  `awake_hours` int(10) UNSIGNED NOT NULL,
  `time_now` decimal(10,4) UNSIGNED NOT NULL,
  `alert_level` int(10) UNSIGNED NOT NULL,
  `invalid_count` int(10) UNSIGNED NOT NULL,
  `missed_count` int(10) UNSIGNED NOT NULL,
  `crash_count` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reaction_test_measurement`
--

CREATE TABLE `user_reaction_test_measurement` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_reaction_test_id` int(10) UNSIGNED NOT NULL,
  `value` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_test`
--

CREATE TABLE `user_test` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `date_taken` datetime NOT NULL,
  `score` decimal(10,4) NOT NULL,
  `gender` int(10) NOT NULL DEFAULT '0',
  `height` decimal(10,2) NOT NULL DEFAULT '0.00',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `age` int(10) NOT NULL DEFAULT '0',
  `marital_status` int(10) NOT NULL DEFAULT '0',
  `occupation` varchar(255) NOT NULL DEFAULT '',
  `occupation_area` varchar(255) NOT NULL DEFAULT '',
  `activity_level` int(10) NOT NULL DEFAULT '0',
  `working_days_sleep_hours` time NOT NULL DEFAULT '00:00:00',
  `working_days_sleep_hours_desired` time NOT NULL DEFAULT '00:00:00',
  `working_days_sleep_quality` decimal(10,2) NOT NULL DEFAULT '0.00',
  `weekend_sleep_hours` time NOT NULL DEFAULT '00:00:00',
  `weekend_sleep_hours_desired` time NOT NULL DEFAULT '00:00:00',
  `weekend_sleep_quality` int(10) NOT NULL DEFAULT '0',
  `working_hours` time NOT NULL DEFAULT '00:00:00',
  `exercise_hours` time NOT NULL DEFAULT '00:00:00',
  `recreation_hours` time NOT NULL DEFAULT '00:00:00',
  `travel_hours` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_test_answer`
--

CREATE TABLE `user_test_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_test_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `question_type_option_id` int(10) UNSIGNED DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authassignment`
--
ALTER TABLE `authassignment`
  ADD PRIMARY KEY (`itemname`,`userid`);

--
-- Indexes for table `authitem`
--
ALTER TABLE `authitem`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupation_area`
--
ALTER TABLE `occupation_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `profile_field`
--
ALTER TABLE `profile_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_type_option`
--
ALTER TABLE `question_type_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_type_id` (`question_type_id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`itemname`);

--
-- Indexes for table `tbl_migration`
--
ALTER TABLE `tbl_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username` (`username`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- Indexes for table `user_reaction_test`
--
ALTER TABLE `user_reaction_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_test_id` (`user_test_id`);

--
-- Indexes for table `user_reaction_test_measurement`
--
ALTER TABLE `user_reaction_test_measurement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reaction_test_id` (`user_reaction_test_id`);

--
-- Indexes for table `user_test`
--
ALTER TABLE `user_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `user_test_answer`
--
ALTER TABLE `user_test_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_test_id` (`user_test_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `question_type_option_id` (`question_type_option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `occupation_area`
--
ALTER TABLE `occupation_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `profile_field`
--
ALTER TABLE `profile_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `question_type`
--
ALTER TABLE `question_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `question_type_option`
--
ALTER TABLE `question_type_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user_reaction_test`
--
ALTER TABLE `user_reaction_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user_reaction_test_measurement`
--
ALTER TABLE `user_reaction_test_measurement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT for table `user_test`
--
ALTER TABLE `user_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `user_test_answer`
--
ALTER TABLE `user_test_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`);

--
-- Constraints for table `question_type_option`
--
ALTER TABLE `question_type_option`
  ADD CONSTRAINT `question_type_option_ibfk_1` FOREIGN KEY (`question_type_id`) REFERENCES `question_type` (`id`);

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_reaction_test`
--
ALTER TABLE `user_reaction_test`
  ADD CONSTRAINT `user_reaction_test_ibfk_1` FOREIGN KEY (`user_test_id`) REFERENCES `user_test` (`id`);

--
-- Constraints for table `user_reaction_test_measurement`
--
ALTER TABLE `user_reaction_test_measurement`
  ADD CONSTRAINT `user_reaction_test_measurement_ibfk_3` FOREIGN KEY (`user_reaction_test_id`) REFERENCES `user_reaction_test` (`id`);

--
-- Constraints for table `user_test`
--
ALTER TABLE `user_test`
  ADD CONSTRAINT `user_test_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_test_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`);

--
-- Constraints for table `user_test_answer`
--
ALTER TABLE `user_test_answer`
  ADD CONSTRAINT `user_test_answer_ibfk_1` FOREIGN KEY (`user_test_id`) REFERENCES `user_test` (`id`),
  ADD CONSTRAINT `user_test_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `user_test_answer_ibfk_3` FOREIGN KEY (`question_type_option_id`) REFERENCES `question_type_option` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
