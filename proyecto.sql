-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.29 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyecto_integrador
DROP DATABASE IF EXISTS `proyecto_integrador`;
CREATE DATABASE IF NOT EXISTS `proyecto_integrador` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_integrador`;

-- Volcando estructura para tabla proyecto_integrador.careers
DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cohort` tinyint NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` blob NOT NULL,
  `working_day` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es para saber las carreras de aprendizaje del participante';

-- Volcando datos para la tabla proyecto_integrador.careers: ~3 rows (aproximadamente)
DELETE FROM `careers`;
INSERT INTO `careers` (`id`, `name`, `cohort`, `description`, `image`, `working_day`) VALUES
	(1, 'front_end', 1, 'El Front end es la parte de una web que conecta e interactúa con los usuarios que la visitan. Es la parte visible, la que muestra el diseño, los contenidos y la que permite a los visitantes navegar po', _binary '', 'mañana'),
	(2, 'back_end', 1, 'Un backend es un los sistema corporativo que se utilizan para dirigir una web o empresa, tales como sistemas de gestión de pedidos, inventario y procesamiento de suministro', _binary '', 'tarde'),
	(3, 'full_stack', 1, '\r\nUn Full Stack es la persona responsable de la creación y el mantenimiento de una aplicación web. Por este emotivo, es importante que el Full Stack tenga conocimientos de desarrollo Front-End y Back-', _binary '', 'mañana_tarde');

-- Volcando estructura para tabla proyecto_integrador.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es sobre las cuidades';

-- Volcando datos para la tabla proyecto_integrador.cities: ~0 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'medellin'),
	(2, 'bogota'),
	(3, 'tolima'),
	(4, 'santa marta'),
	(5, 'manizales');

-- Volcando estructura para tabla proyecto_integrador.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es para saber sobre los roles ';

-- Volcando datos para la tabla proyecto_integrador.roles: ~0 rows (aproximadamente)
DELETE FROM `roles`;
INSERT INTO `roles` (`id`, `name`) VALUES
	(1, 'estudiante'),
	(2, 'profesor'),
	(3, 'psicologo'),
	(4, 'administrador'),
	(5, 'director');

-- Volcando estructura para tabla proyecto_integrador.users_roles
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint NOT NULL,
  `rol_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es la pivot para conectar la tabla usuarios y roles';

-- Volcando datos para la tabla proyecto_integrador.users_roles: ~0 rows (aproximadamente)
DELETE FROM `users_roles`;
INSERT INTO `users_roles` (`id`, `user_id`, `rol_id`) VALUES
	(1, 3, 1),
	(2, 5, 3),
	(3, 1, 5),
	(4, 4, 2),
	(5, 2, 4);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
