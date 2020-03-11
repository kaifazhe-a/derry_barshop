/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_role
-- ----------------------------
DROP TABLE IF EXISTS `barber_role`;
CREATE TABLE `barber_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of barber_role
-- ----------------------------
INSERT INTO `barber_role` VALUES ('1', '店长');
INSERT INTO `barber_role` VALUES ('2', '经理');
INSERT INTO `barber_role` VALUES ('3', '收银员');
INSERT INTO `barber_role` VALUES ('4', '首席设计师');
INSERT INTO `barber_role` VALUES ('5', '资深设计师');
INSERT INTO `barber_role` VALUES ('6', '打酱油学徒');
INSERT INTO `barber_role` VALUES ('7', '客户');
