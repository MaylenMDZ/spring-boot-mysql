-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para demo
DROP DATABASE IF EXISTS `demo`;
CREATE DATABASE IF NOT EXISTS `demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `demo`;

-- Volcando estructura para tabla demo.contenido
DROP TABLE IF EXISTS `contenido`;
CREATE TABLE IF NOT EXISTS `contenido` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_contenido` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.contenido: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `contenido` DISABLE KEYS */;
INSERT INTO `contenido` (`id`, `nombre_contenido`, `imagen`, `url`) VALUES
	(1, 'Inicio', 'aaaaaa', '/'),
	(2, 'Tienda', '', 'product'),
	(3, 'Productos del Carrito', '', 'shoping-cart'),
	(4, 'Blog', '', 'blog-detail'),
	(5, 'Acerca de', '', 'about'),
	(6, 'Contacto', '', 'contact');
/*!40000 ALTER TABLE `contenido` ENABLE KEYS */;

-- Volcando estructura para tabla demo.mensajes
DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE IF NOT EXISTS `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `mensaje` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.mensajes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;

-- Volcando estructura para tabla demo.pedidosproducto
DROP TABLE IF EXISTS `pedidosproducto`;
CREATE TABLE IF NOT EXISTS `pedidosproducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `foto_producto` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.pedidosproducto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidosproducto` DISABLE KEYS */;
INSERT INTO `pedidosproducto` (`id`, `nombre`, `precio`, `cantidad`, `total`, `foto_producto`) VALUES
	(1, 'Lightweight Jacket', 100, 5, 500, 'https://img.ltwebstatic.com/images3_pi/2019/11/11/15734594034afeb997f9e67f9810e7b011780da59b_thumbnail_600x.webp'),
	(2, 'Vestido', 101, 1, 101, 'https://img.ltwebstatic.com/images3_pi/2019/11/09/1573286513176adf0c4a198ff186c5eb409f45592b_thumbnail_600x.webp');
/*!40000 ALTER TABLE `pedidosproducto` ENABLE KEYS */;

-- Volcando estructura para tabla demo.productos
DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `precio` double NOT NULL DEFAULT 0,
  `descripcion` text NOT NULL ,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `foto3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.productos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `foto1`, `foto2`, `foto3`) VALUES
	(1, 'Lightweight Jacket', 100, 'SHEIN Vestido Ajustado Con Estampado Geométrico De Cuello Alto', 'https://img.ltwebstatic.com/images3_pi/2019/11/11/15734594034afeb997f9e67f9810e7b011780da59b_thumbnail_600x.webp', 'https://img.ltwebstatic.com/images3_pi/2019/11/11/157345940188def337fd9a9120d5ac0bb13bdd2871_thumbnail_600x.webp', 'https://img.ltwebstatic.com/images3_pi/2019/11/11/1573459397d5843f77b273bc713440ab385dfe75c3_thumbnail_600x.webp'),
	(2, 'Vestido', 100.99, 'SHEIN Vestido De Muslo Con Abertura Ribete Fruncido Exagerado Con Un Hombro', 'https://img.ltwebstatic.com/images3_pi/2019/11/09/1573286513176adf0c4a198ff186c5eb409f45592b_thumbnail_600x.webp', 'https://img.ltwebstatic.com/images3_pi/2019/11/09/1573286506f72cca8d6ba1f2d72f0b4ca5bc91c471_thumbnail_600x.webp', 'https://img.ltwebstatic.com/images3_pi/2019/11/09/1573286508095e142f4cd49ba81da01a57f642bd74_thumbnail_600x.webp');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;

-- Volcando estructura para tabla demo.reseñas
DROP TABLE IF EXISTS `reseñas`;
CREATE TABLE IF NOT EXISTS `reseñas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reseña` text NOT NULL,
  `foto` text NOT NULL,
  `id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.reseñas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `reseñas` DISABLE KEYS */;
INSERT INTO `reseñas` (`id`, `nombre`, `email`, `reseña`, `foto`, `id_producto`) VALUES
	(1, 'Maylen', 'mazariegosmaylen@gmail.com', 'Comentario global: La talla corresponde Caderas: 99 cm / 39.0 inCintura: 78 cm / 30.7 inAltura: 148 cm / 58.3 inPeso: 50 Kg / 110.2 LbsBusto: 86 cm / 33.9 in', 'https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/s960x960/73375567_2362997763822135_9128990847784714240_o.jpg?_nc_cat=105&_nc_ohc=Ak5UY-dVW7EAQnHNQtZqBIdyHXm5n4_KoNqjdPAIGZBzJzG9iHY6s2TFw&_nc_ht=scontent-dfw5-1.xx&oh=680dd47fdf4a7aac3a5c8259331f142b&oe=5E400701', 2),
	(2, 'Maria', 'angel-pumas2009@hotmail.com', 'sssssssssssss', 'https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/s960x960/77279952_2148184965282274_4848330375610499072_o.jpg?_nc_cat=107&_nc_ohc=0F6Z-t_dLTsAQkWhWvXHmsepTlziHYj_n1uv7vMs2rp2mjxSmf9pPx-2A&_nc_ht=scontent-dfw5-1.xx&oh=7ff988dcbc5914944bb1a3c8ab774ad5&oe=5E70B464', 1);
/*!40000 ALTER TABLE `reseñas` ENABLE KEYS */;

-- Volcando estructura para tabla demo.suscripciones
DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla demo.suscripciones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `suscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `suscripciones` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
