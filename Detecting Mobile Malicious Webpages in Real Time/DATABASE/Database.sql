/*
MySQL Data Transfer
Source Host: localhost
Source Database: p11
Target Host: localhost
Target Database: p11
Date: 9/22/2017 4:59:49 PM
*/

create database p11;

use p11;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for blocked_user
-- ----------------------------
DROP TABLE IF EXISTS `blocked_user`;
CREATE TABLE `blocked_user` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `tname` text,
  `ip` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bnb_users
-- ----------------------------
DROP TABLE IF EXISTS `bnb_users`;
CREATE TABLE `bnb_users` (
  `user` text,
  `number` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL auto_increment,
  `recommendfrom` varchar(45) default NULL,
  `recommendto` varchar(45) default NULL,
  `tname` varchar(45) default NULL,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `url` text,
  `descr` text,
  `uses` text,
  `image` longblob,
  `auth` text,
  `year` text,
  `rank` int(11) default NULL,
  `dt` text,
  `admin_name` text,
  `ip` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `tname` text,
  `task` text,
  `dt` text,
  `ip` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for unblock_req
-- ----------------------------
DROP TABLE IF EXISTS `unblock_req`;
CREATE TABLE `unblock_req` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `status` text,
  `req_dt` text,
  `res_dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `image` longblob,
  `status` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_web_limits
-- ----------------------------
DROP TABLE IF EXISTS `user_web_limits`;
CREATE TABLE `user_web_limits` (
  `id` int(11) NOT NULL auto_increment,
  `user` text,
  `name` text,
  `count` text,
  `type` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for web_limits
-- ----------------------------
DROP TABLE IF EXISTS `web_limits`;
CREATE TABLE `web_limits` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `count` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

