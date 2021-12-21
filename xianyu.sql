DROP DATABASE IF EXISTS `xianyu`;
CREATE DATABASE `xianyu`;

USE `xianyu`;

SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `UserBaseInformstion`;
-- ----------------------------
-- Table structure for UserBaseInformstion
-- ----------------------------
CREATE TABLE `UserBaseInformstion` (
`Id` INT NOT NULL,
`Avatar` VARCHAR(200) 
`Username` VARCHAR(50) NOT NULL,
`Phone` CHAR(11) NOT NULL,
`RealName` VARCHAR(20) NOT NULL,
`Clazz` VARCHAR(20) DEFAULT NULL,
`Sno` CHAR(13) NOT NULL,
`Dormitory` VARCHAR(20) DEFAULT NULL,
`Gender` CHAR(2) DEFAULT NULL,
`Createtime` DATETIME DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `StudentInformation`;
-- ----------------------------
-- Table structure for StudentInformation
-- ----------------------------
CREATE TABLE `StudentInformation` (
`sno` CHAR(12) NOT NULL,
`name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `UserRegister`;
-- ----------------------------
-- Table structure for UserRegister
-- ----------------------------
CREATE TABLE `UserRegister` (
`Id` VARCHAR(20) NOT NULL,
`Password` VARCHAR(24) NOT NULL,
`Uid` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `GoodsInformation`;
-- ----------------------------
-- Table structure for GoodsInformation
-- ----------------------------
CREATE TABLE `GoodsInformation` (
`Id` INT NOT NULL,
`Uploadtime` DATETIME,
`Name` VARCHAR(50) NOT NULL,
`Level` INT NOT NULL,
`Remark` VARCHAR(255),
`Price` DECIMAL(10,2) NOT NULL,
`Sort` INT NOT NULL,
`Count` INT NOT NULL,
`Display` INT NOT NULL,
`Sales` INT NOT NULL,
`Uid` INT NOT NULL,
`Image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `GoodsMessage`;
-- ----------------------------
-- Table structure for GoodsMessage
-- ----------------------------
CREATE TABLE `GoodsMessage` (
`Id` INT NOT NULL,
`Modify` DATETIME,
 `Gid` INT NOT NULL,
 `Content` VARCHAR(122) NOT NULL,
 `Display` INT NOT NULL,
 `Uid` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Mycollection`;
-- ----------------------------
-- Table structure for Mycollection
-- ----------------------------
CREATE TABLE `Mycollection` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Gid` INT NOT NULL,
`Display` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Want2BuyGoodsInformation`;
-- ----------------------------
-- Table structure for Want2BuyGoodsInformation
-- ----------------------------
CREATE TABLE `Want2BuyGoodsInformation` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Name` VARCHAR(50) NOT NULL,
`Remark` VARCHAR(255),
`Price` DECIMAL(10,2) NOT NULL,
`Sort` INT NOT NULL,
`Count` INT NOT NULL,
`Display` INT NOT NULL,
`Transaction` INT NOT NULL,
`Uid` INT NOT NULL,
`Image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Want2BuyGoodsMessage`;
-- ----------------------------
-- Table structure for Want2BuyGoodsMessage
-- ----------------------------
CREATE TABLE `Want2BuyGoodsMessage` (
`id` INT NOT NULL,
`Modify` DATETIME,
`Qid` INT NOT NULL,
`Content` VARCHAR(122) NOT NULL,
`Display` INT NOT NULL,
`Uid` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `MyReleaseGoods`;
-- ----------------------------
-- Table structure for MyReleaseGoods
-- ----------------------------
CREATE TABLE `MyReleaseGoods` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Display` INT NOT NULL,
`Uid` INT NOT NULL,
`Gid` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `MyWant2BuyGoods`;
-- ----------------------------
-- Table structure for MyWant2BuyGoods
-- ----------------------------
CREATE TABLE `MyWant2BuyGoods` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Display` INT NOT NULL,
`Uid` INT NOT NULL,
`Qid` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `MyPurchasedgoods`;
-- ----------------------------
-- Table structure for MyPurchasedgoods
-- ----------------------------
CREATE TABLE `MyPurchasedgoods` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Uid` INT NOT NULL,
`Gid` INT NOT NULL,
`Quantity` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `ShoppingCart`;
-- ----------------------------
-- Table structure for ShoppingCart
-- ----------------------------
CREATE TABLE `ShoppingCart` (
`Id` INT NOT NULL,
`Modify` DATETIME,
`Uid` INT NOT NULL,
`Gid` INT NOT NULL,
`Quantity` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;



