/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.5-10.4.17-MariaDB : Database - medicalfinder
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`medicalfinder` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `medicalfinder`;

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admindata` */

insert  into `admindata`(`name`,`address`,`contact`,`email`) values ('nikhar','udaipur','6375802547','nikhar@gmail.com'),('pranjal ','kota','8107303555','p@gmail.com'),('sahil','pali','8696549150','sahil@gmail.com');

/*Table structure for table `logindata` */

DROP TABLE IF EXISTS `logindata`;

CREATE TABLE `logindata` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `logindata` */

insert  into `logindata`(`email`,`password`,`usertype`) values ('a@gmail.com','541','medical'),('nikhar@gmail.com','541','admin'),('p@gmail.com','abcd','admin'),('pl@gmail.com','5141','medical'),('rajesh@gmail.com','5241','medical'),('raju@gmail.com','5445','medical'),('rash@gmail.com','5141','medical'),('s@gmail.com','5412','medical'),('sahil@gmail.com','541','admin');

/*Table structure for table `medicaldata` */

DROP TABLE IF EXISTS `medicaldata`;

CREATE TABLE `medicaldata` (
  `name` varchar(100) DEFAULT NULL,
  `ownername` varchar(100) DEFAULT NULL,
  `licno` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` int(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `medicaldata` */

insert  into `medicaldata`(`name`,`ownername`,`licno`,`address`,`contact`,`email`) values ('raju medico','raju','5455','rampura',2147483647,'raju@gmail.com'),('sharma','rajesh','5141','dadabari',810730355,'rash@gmail.com'),('jsgsfg','fzdzbc','56445','fgsg',NULL,'s@gmail.com');

/*Table structure for table `medicinedata` */

DROP TABLE IF EXISTS `medicinedata`;

CREATE TABLE `medicinedata` (
  `med_id` int(100) NOT NULL AUTO_INCREMENT,
  `med_name` varchar(100) DEFAULT NULL,
  `med_type` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `licno` int(100) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `email_medical` varchar(100) NOT NULL,
  PRIMARY KEY (`med_id`,`email_medical`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `medicinedata` */

insert  into `medicinedata`(`med_id`,`med_name`,`med_type`,`company`,`licno`,`unit_price`,`email_medical`) values (2,'azithromycin','fev','kakak',210,120,'a@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
