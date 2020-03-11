/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:02:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_itme
-- ----------------------------
DROP TABLE IF EXISTS `barber_itme`;
CREATE TABLE `barber_itme` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `itme_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `itme_price` decimal(10,2) DEFAULT NULL COMMENT '项目价格',
  `itme_time` int(11) DEFAULT NULL COMMENT '项目时长',
  `itme_img` varchar(255) DEFAULT NULL COMMENT '项目效果（图片）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of barber_itme
-- ----------------------------
INSERT INTO `barber_itme` VALUES ('1', '5', '理发(资深理发师)', '50.00', '30', 'http://q5w0yme1k.bkt.clouddn.com/bb84037097e94421b8b2d40d2b8f88a0');
INSERT INTO `barber_itme` VALUES ('2', '4', '理发(首席理发师)', '70.00', '30', 'http://q5w0yme1k.bkt.clouddn.com/d594342dff9f4180bb3e9317e7acac19');
INSERT INTO `barber_itme` VALUES ('3', '6', '洗发和吹发(学徒)', '20.00', '15', 'http://q5w0yme1k.bkt.clouddn.com/0500d7215e794c5db9bb845c70651242');
INSERT INTO `barber_itme` VALUES ('4', '5', '烫发(资深理发师)', '300.00', '120', 'http://q5w0yme1k.bkt.clouddn.com/c7d9be7f3611422abbf064690ae1ad15');
INSERT INTO `barber_itme` VALUES ('5', '4', '烫发(首席理发师)', '500.00', '120', 'http://q5w0yme1k.bkt.clouddn.com/201e2b23ca5f4df59111c188a3bd019c');
