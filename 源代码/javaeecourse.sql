/*
SQLyog Enterprise v12.08 (32 bit)
MySQL - 5.6.5-m8 : Database - javaeecourse
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`javaeecourse` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `javaeecourse`;

/*Table structure for table `homework` */

DROP TABLE IF EXISTS `homework`;

CREATE TABLE `homework` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `htitle` varchar(300) NOT NULL,
  `hcontent` varchar(300) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `homework` */

insert  into `homework`(`hid`,`tid`,`htitle`,`hcontent`,`start_time`,`end_time`) values (1,1,'homework1','homework1',1622476800,1625068800),(2,10001,'作业1','写一篇（800字）',1623772800,1625155200),(4,10001,'11111','22222222',1623772800,1625068800);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sName` varchar(20) NOT NULL,
  `sPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`sid`,`sName`,`sPassword`) values (1,'student1','123456'),(2,'student2','123456'),(3,'student3','123456'),(11,'12321','12'),(111,'student111','123456'),(1111,'111','111');

/*Table structure for table `studenthomework` */

DROP TABLE IF EXISTS `studenthomework`;

CREATE TABLE `studenthomework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `homework_content` varchar(300) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `studenthomework` */

insert  into `studenthomework`(`id`,`sid`,`hid`,`homework_content`,`create_time`,`update_time`) values (1,1,7,'homework1',1607096668,1607096668),(8,1,1,'111111',1607133139,1607133139),(9,1,1,'1232424',1607159352,1607159352),(10,111,2,'11111111111111111111111111111111112222222222222222222\n22222222222222222222222222222\n22222222222222222222\n22222222222222233333333333333333333\n444444444444444444444444444444',1623646502,1623646563),(11,111,2,'',1623660743,1623660743),(12,111,2,'2222222222222',1623808374,1623808374),(13,111,4,'333333333',1623808390,1623808390);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tName` varchar(20) NOT NULL,
  `tPassword` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`tid`,`tName`,`tPassword`) values (1,'teacher1','123456'),(111,'111','11'),(1111,'111','111'),(10001,'teacher3','123456');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
