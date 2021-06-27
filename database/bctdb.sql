/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - bctdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bctdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bctdb`;

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`title`,`price`,`image`,`createdAt`,`updatedAt`) values 
(1,'LG 8 KG ( FHV1408ZWW ) Fully Automatic Front Load Washing Machine',39951,'3894.jpg','2021-06-27 13:55:10','2021-06-27 13:55:10'),
(2,'LG 6.5 KG ( FHT1265ZNL ) Fully Automatic Front Load Washing Machine',39490,'3885.jpg','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(3,'Morphy Richards Salvo - 15 Ltr  Storage Water Heater',13000,'690.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(4,'Bajaj Calenta Mechanical 25 L Vertical Storage Water Heater',17000,'535.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(5,'Bajaj Calenta Mechanical 15 L Vertical Storage Water Heater',16000,'535.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(6,'Bajaj Calenta Digi 25 L Vertical Storage Water Heater',22000,'518.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(7,'Bajaj Caldia Storage Water Heater - 10 ltr',39490,'509.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(8,'Bajaj GX 4701 800 Watts Mixer Grinder with 4 Jars (White & Red)',6000,'466.jpg','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(9,'Bajaj Beryl Persian Blue 750 Watts Mixer Grinder with 3 Jars',6500,'468.png','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(10,'Bajaj Ivora Crimson Red 800 watts Mixer Grinder With 3 Jars',6600,'471.jpg','2021-06-27 14:40:45','2021-06-27 14:40:45'),
(11,'Bajaj Ivora Silky Caramel 800 watts Mixer Grinder With 3 Jars',6600,'472.png','2021-06-27 14:40:45','2021-06-27 14:40:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`createdAt`,`updatedAt`) values 
(1,'test','test','2021-06-27 14:34:31','2021-06-27 14:34:33');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
