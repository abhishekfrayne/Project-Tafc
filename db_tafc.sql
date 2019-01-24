/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - db_tafc
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `db_tafc`;

USE `db_tafc`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_acess_control` */

DROP TABLE IF EXISTS `m_acess_control`;

CREATE TABLE `m_acess_control` (
  `ac_code` int(5) NOT NULL auto_increment,
  `f_code` int(5) NOT NULL,
  `domain_code` int(5) NOT NULL,
  `subdomain_code` int(5) NOT NULL,
  `rdate` date default NULL,
  `rtime` time default NULL,
  PRIMARY KEY  (`ac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_acess_control` */

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin','admin','admin','jayanagar','9878987678','admin@gmail.com');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL auto_increment,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_flag` varchar(200) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_flag`) values (1,'ftp://drivehq.com/cloud1','blrstore1','*blrstore123','0');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_flag`) values (2,'ftp://drivehq.com/cloud1','blrstore1','*blrstore123','0');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_flag`) values (3,'ftp://drivehq.com/cloud1','blrstore1','*blrstore123','1');

/*Table structure for table `m_domain` */

DROP TABLE IF EXISTS `m_domain`;

CREATE TABLE `m_domain` (
  `domain_code` int(10) NOT NULL auto_increment,
  `domain_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`domain_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_domain` */

insert into `m_domain` (`domain_code`,`domain_name`) values (10,'The Times of India');
insert into `m_domain` (`domain_code`,`domain_name`) values (20,'Deccan Herald');
insert into `m_domain` (`domain_code`,`domain_name`) values (30,'The Hindu');

/*Table structure for table `m_file_upload` */

DROP TABLE IF EXISTS `m_file_upload`;

CREATE TABLE `m_file_upload` (
  `f_code` int(5) NOT NULL auto_increment,
  `f_name` varchar(100) NOT NULL,
  `f_type` varchar(50) NOT NULL,
  `f_upload_date` date NOT NULL,
  `f_upload_time` time default NULL,
  `f_subject` varchar(200) NOT NULL,
  `cloud_id` int(5) NOT NULL,
  `owner_id` int(10) NOT NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_upload` */

/*Table structure for table `m_owner` */

DROP TABLE IF EXISTS `m_owner`;

CREATE TABLE `m_owner` (
  `id` int(5) NOT NULL auto_increment,
  `ownerid` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) default NULL,
  `do_key1` varchar(100) default NULL,
  `do_key2` varchar(100) default NULL,
  PRIMARY KEY  (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_owner` */

/*Table structure for table `m_request_secfile` */

DROP TABLE IF EXISTS `m_request_secfile`;

CREATE TABLE `m_request_secfile` (
  `userid_no` int(50) NOT NULL auto_increment,
  `userid` varchar(100) default NULL,
  `identity_tocken` varchar(90) default NULL,
  PRIMARY KEY  (`userid_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_request_secfile` */

/*Table structure for table `m_subdomain` */

DROP TABLE IF EXISTS `m_subdomain`;

CREATE TABLE `m_subdomain` (
  `sdomain_code` int(10) NOT NULL auto_increment,
  `sdomain_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`sdomain_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_subdomain` */

insert into `m_subdomain` (`sdomain_code`,`sdomain_name`) values (101,'Gold');
insert into `m_subdomain` (`sdomain_code`,`sdomain_name`) values (102,'Silver');
insert into `m_subdomain` (`sdomain_code`,`sdomain_name`) values (103,'Branze');

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `t_no` int(10) NOT NULL auto_increment,
  `t_date` date NOT NULL,
  `t_time` time NOT NULL,
  `u_code` int(10) NOT NULL,
  `f_code` int(10) NOT NULL,
  `domain_code` int(10) NOT NULL,
  `sdomain_code` int(10) NOT NULL,
  `t_status` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_code` int(10) NOT NULL auto_increment,
  `userid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `domain_code` int(10) NOT NULL,
  `sdomain_code` int(10) NOT NULL,
  `u_doj` date NOT NULL,
  `u_email` varchar(100) default NULL,
  `u_tocken_id` varchar(400) default NULL,
  PRIMARY KEY  (`u_code`,`userid`),
  KEY `FK_m_user` (`domain_code`),
  CONSTRAINT `m_user_ibfk_1` FOREIGN KEY (`domain_code`) REFERENCES `m_domain` (`domain_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
