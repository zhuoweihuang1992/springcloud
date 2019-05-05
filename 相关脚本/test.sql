/*
SQLyog Ultimate v8.32 
MySQL - 5.5.27 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `auth_resource` */

DROP TABLE IF EXISTS `auth_resource`;

CREATE TABLE `auth_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `data_area_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `auth_resource` */

insert  into `auth_resource`(`id`,`username`,`role`,`resource`,`data_area_code`) values (1,'zhuoweihuang','ROLE_ADMIN','/backend/admin','serviceA,serviceB'),(2,'admin','ROLE_ADMIN','/backend/user','serviceA'),(3,'zhuoweihuang','ROLE_USER','/backend/user','serviceA'),(4,'zhuoweihuang','ROLE_ADMIN','/backend/user','serviceA'),(5,'zhuoweihuang','ROLE_USER','/backend/guest','serviceA'),(6,'zhuoweihuang','ROLE_USER','/backend/admin','serviceA'),(7,'wei','ROLE_USER','/backend/admin','serviceA');

/*Table structure for table `jd_user` */

DROP TABLE IF EXISTS `jd_user`;

CREATE TABLE `jd_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `jd_user` */

insert  into `jd_user`(`id`,`username`,`password`,`role`,`appid`) values (1,'admin','$2a$10$97zol1NIqICXhWIA9bdnU.yhSYDN6S4kDpXASEgEe4dJunbLpPymC','ROLE_ADMIN',NULL),(3,'zhuoweihuang','$2a$10$SfRWtByz0MrSoDxrFAZ0yeEDwAaQNd4AO4Tvm/Q6wR32Enz6Lu.ba','ROLE_ADMIN,ROLE_USER',NULL),(4,'zhuoweihuang123','$2a$10$hwPkugr0l01jV744U2glzOhljksDRi9WtmKtqK80DhjnttOd6yTxW','ROLE_USER',NULL),(5,'test','$2a$10$TtQhcAX4.s1/lXh60J4Eyehgjd6zwkaNqEClYabC./MkXl4LlYi/2','ROLE_USER',NULL),(6,'demo','$2a$10$Iw/4SnZlsMVgiT8ljf9FTOlTLDbcusTXYWvLWGg55dLEOER3zuzLa','ROLE_ADMIN',NULL),(8,'demo2','$2a$10$yE7Qyt5cXJUSc0rUq2uyA.oiXNUhxTQbjrHuk85PdrH9auF94S/Am','ROLE_ADMIN',NULL),(9,'wei','$2a$10$9OW64AM7WjRRHuKSJNNLI.nu08B7m9KEfPm/pSqB4UVg/MslJNK8e','ROLE_USER',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
