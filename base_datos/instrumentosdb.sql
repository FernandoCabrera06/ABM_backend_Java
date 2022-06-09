/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - instrumentosdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`instrumentosdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `instrumentosdb`;

/*Table structure for table `instrumento` */

DROP TABLE IF EXISTS `instrumento`;

CREATE TABLE `instrumento` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cantidad_vendida` INT(11) NOT NULL,
  `costo_envio` VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` LONGTEXT COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instrumento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `instrumento` */

insert  into `instrumento`(`id`,`cantidad_vendida`,`costo_envio`,`descripcion`,`imagen`,`instrumento`,`marca`,`modelo`,`precio`) values 
(1,28,'G','Estas viendo una excelente mandolina de la marca Stagg, con un sonido muy dulce, tapa aros y fondo de tilo, y diapasón de palisandro. Es un instrumento acústico (no se enchufa) de cuerdas dobles (4 pares) con la caja ovalada y cóncava, y el mástil corto. Su utilización abarca variados ámbitos, desde rock, folk, country y ensambles experimentales.','nro10.jpg','Mandolina Instrumento Musical Stagg Sunburst','Stagg','M20',2450),
(2,10,'150','1 Pandereta - 32 sonajas metálicas. Más de 8 años vendiendo con 100 % de calificaciones POSITIVAS y clientes satisfechos !! ','nro9.jpg','Pandereta Pandero Instrumento Musical ','DyM ventas','32 sonajas',325),
(4,2,'G','BARCHIME CORTINA MUSICAL DE 25 BARRAS LATIN CUSTOM. Emitimos factura A y B','nro7.jpg','Bar Chimes Lp Cortina Musical 72 Barras ','FM','LATIN',2250),
(5,5,'300','Las calabazas utilizadas para nuestras artesanías son sembradas y cosechadas por nosotros, quienes seleccionamos el mejor fruto para garantizar la calidad del producto y ofrecerle algo creativo y original.','nro6.jpg','Shekeres. Instrumento. Música. Artesanía. ','Azalea Artesanías','Cuentas de madera',850),
(6,0,'2000','Buen dia! Sale a la venta este Piano Alemán Neumeyer con candelabros incluidos. Tiene una talla muy bonita en la madera. Una pieza de calidad.','nro3.jpg','Antiguo Piano Aleman Con Candelabros. ','Neumeyer','Stratus',17000),
(7,5,'G','Material: Plástico smil madera 4 Cuerdas longitud: 60cm, el mejor regalo para usted, su familia y amigos, adecuado para 3-18 años de edad','nro4.jpg','Guitarra Ukelele Infantil Grande 60cm','GUITARRA','UKELELE',500),
(9,3,'250','Triangulo Musical de 24 Centímetros De Acero. ENVIOS POR CORREO O ENCOMIENDA: Se le deberán adicionar $40 en concepto de Despacho y el Costo del envío se abonará al recibir el producto en Terminal, Sucursal OCA o Domicilio','nro8.jpg','Triangulo Musical 24 Cm Percusion','LBP','24',260),
(10,15,'300','Estas viendo un excelente y completísimo set de percusion para niños con estuche rígido, equipado con los instrumentos mas divertidos! De gran calidad y sonoridad. Ideal para jardines, escuelas primarias, musicoterapeutas o chicos que se quieran iniciar en la música de la mejor manera. Es un muy buen producto que garantiza entretenimiento en cualquier casa o reunión, ya que esta equipado para que varias personas al mismo tiempo estén tocando un instrumento.','nro1.jpg','Instrumentos De Percusión Niños Set Musical Con Estuche ','KNIGHT','LB17',2700),
(11,380,'250','DESCRIPCIÓN: DE 1 A 3 AÑOS. EL SET INCLUYE 5 TAMBORES, PALILLOS Y EL PLATILLO TAL CUAL LAS FOTOS. SONIDOS REALISTAS Y FÁCIL DE MONTAR. MEDIDAS: 40X20X46 CM','nro5.jpg','Batería Musical Infantil Juguete Niño 9 Piezas Palillos ','Bateria','Infantil',850);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 S`instrumento`ET SQL_NOTES=@OLD_SQL_NOTES */;
