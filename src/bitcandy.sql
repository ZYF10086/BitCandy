/*
Navicat MySQL Data Transfer

Source Server         : mysql5.7
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : bitcandy

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-03-08 20:56:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `end_time` datetime NOT NULL,
  `type` varchar(20) NOT NULL COMMENT '1:EOS;2:BIG;3:PRS;4:BTC;',
  `is_hot` int(11) NOT NULL,
  `interest_rate` int(11) NOT NULL,
  `member_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '分布式操作系统，BM大作', '000', '2018-09-22 00:00:00', 'EOS', '0', '20', '30');
INSERT INTO `activity` VALUES ('2', '比特币交易平台，潜力无限', '000', '2018-09-11 00:00:00', 'BIG', '0', '50', '100');
INSERT INTO `activity` VALUES ('3', '下一代版权交易平台', '000', '2018-09-10 00:00:00', 'PRS', '0', '20', '20');
INSERT INTO `activity` VALUES ('4', '下一代版权交易平台', '000', '2018-09-10 00:00:00', 'BTC', '0', '20', '20');

-- ----------------------------
-- Table structure for app_resource
-- ----------------------------
DROP TABLE IF EXISTS `app_resource`;
CREATE TABLE `app_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_resource
-- ----------------------------

-- ----------------------------
-- Table structure for join_in
-- ----------------------------
DROP TABLE IF EXISTS `join_in`;
CREATE TABLE `join_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `get_time` datetime NOT NULL,
  `candy_count` double NOT NULL,
  `get_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of join_in
-- ----------------------------
INSERT INTO `join_in` VALUES ('1', '123@qq.com', '1', '2018-03-08 00:00:00', '1000', 'EOS');
INSERT INTO `join_in` VALUES ('2', '123@qq.com', '2', '2018-02-02 00:00:00', '100', 'EOS');
INSERT INTO `join_in` VALUES ('3', '123@qq.com', '3', '2018-02-03 00:00:00', '10', 'BTC');
INSERT INTO `join_in` VALUES ('4', '123@qq.com', '4', '2018-02-04 00:00:00', '2', 'BTC');
INSERT INTO `join_in` VALUES ('5', '123@qq.com', '5', '2018-02-05 00:00:00', '133', 'PRS');
INSERT INTO `join_in` VALUES ('6', '123@qq.com', '6', '2018-02-06 00:00:00', '155', 'PRS');
INSERT INTO `join_in` VALUES ('7', '123@qq.com', '7', '2018-02-07 00:00:00', '15', 'BIG');
INSERT INTO `join_in` VALUES ('8', '123@qq.com', '8', '2018-02-08 00:00:00', '2', 'BIG');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone_activated` int(11) NOT NULL DEFAULT '0',
  `email_activated` int(11) NOT NULL DEFAULT '0',
  `regist_time` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123@qq.com', '13758160292', '123', '0', '1', '2018-02-09 22:52:04');
