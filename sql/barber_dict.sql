/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:02:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_dict
-- ----------------------------
DROP TABLE IF EXISTS `barber_dict`;
CREATE TABLE `barber_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典数据id',
  `dict_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `p_id` int(11) DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of barber_dict
-- ----------------------------
INSERT INTO `barber_dict` VALUES ('1', '员工状态', '0');
INSERT INTO `barber_dict` VALUES ('2', '空闲', '1');
INSERT INTO `barber_dict` VALUES ('3', '工作', '1');
INSERT INTO `barber_dict` VALUES ('4', '请假', '1');
INSERT INTO `barber_dict` VALUES ('5', '有预约', '1');
INSERT INTO `barber_dict` VALUES ('6', '消费方式', '0');
INSERT INTO `barber_dict` VALUES ('7', '会员卡充值', '6');
INSERT INTO `barber_dict` VALUES ('8', '项目消费', '6');
INSERT INTO `barber_dict` VALUES ('9', '商品消费', '6');
INSERT INTO `barber_dict` VALUES ('10', '会员卡等级', '0');
INSERT INTO `barber_dict` VALUES ('11', '贵宾卡', '10');
INSERT INTO `barber_dict` VALUES ('12', '金卡', '10');
INSERT INTO `barber_dict` VALUES ('13', '钻石卡', '10');
