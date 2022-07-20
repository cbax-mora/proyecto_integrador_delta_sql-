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

-- Volcando estructura para tabla proyecto_integrador.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `direction` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `cell_phone` varchar(20) NOT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es para saber todo sobre los usuarios';

-- Volcando datos para la tabla proyecto_integrador.users: ~5 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `mail`, `direction`, `date_of_birth`, `cell_phone`, `photo`) VALUES
	(1, 'kenyer ortiz', 'kenyer1@gmail.com', 'calle aa # 59 85 ', '1992-07-12', '3125895654', _binary 0x6e756c6c),
	(2, 'angela martinez', 'angi2341@gmail.com', 'calle 56 bb # 89-56', '1991-12-12', '3158766542', _binary 0x6e756c6c),
	(3, 'anderson sanchez', 'sanchezander453@gmail.com', 'carrera 115c # 23-56', '1985-11-14', '3125785641', _binary 0x6e756c6c),
	(4, 'sergio murillo', 'murillo3451@gmail.com', 'calle 100 # 8 bb - 34', '1990-05-12', '3201458934', _binary 0x6e756c6c),
	(5, 'stiven mora', 'stiven@gmail.com', 'calle 34 # 56-84', '1985-07-25', '3214586934', _binary 0x6e756c6c);

-- Volcando estructura para tabla proyecto_integrador.users_careers
DROP TABLE IF EXISTS `users_careers`;
CREATE TABLE IF NOT EXISTS `users_careers` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `career_id` smallint NOT NULL,
  `user_id` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='esta tabla es para conectar carreras y usuarios';

-- Volcando datos para la tabla proyecto_integrador.users_careers: ~5 rows (aproximadamente)
DELETE FROM `users_careers`;
INSERT INTO `users_careers` (`id`, `career_id`, `user_id`) VALUES
	(1, 1, 5),
	(2, 3, 2),
	(3, 3, 4),
	(4, 2, 3),
	(5, 1, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
