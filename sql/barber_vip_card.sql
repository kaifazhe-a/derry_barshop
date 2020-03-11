/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_vip_card
-- ----------------------------
DROP TABLE IF EXISTS `barber_vip_card`;
CREATE TABLE `barber_vip_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员卡id',
  `vip_card_number` varchar(255) DEFAULT NULL COMMENT '会员卡号(手机号)',
  `vip_name` varchar(255) DEFAULT NULL COMMENT '会员姓名',
  `vip_password` varchar(255) DEFAULT NULL COMMENT '会员卡密码',
  `vip_balance` decimal(11,2) DEFAULT NULL COMMENT '会员卡余额',
  `vip_grade` int(11) DEFAULT NULL COMMENT '会员等级（1贵宾卡充值0.5k,2金卡充值5K,3钻石卡充值10K）',
  `price_sum` decimal(11,2) DEFAULT NULL COMMENT '累计充值',
  `vip_status` int(11) DEFAULT NULL COMMENT '卡状态(1正常,0注销) ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='vip会员信息表';

-- ----------------------------
-- Records of barber_vip_card
-- ----------------------------
INSERT INTO `barber_vip_card` VALUES ('1', '1338265456', 'zs', '123', '5500.00', '13', '5500.00', '1');
INSERT INTO `barber_vip_card` VALUES ('2', '1338265123', 'ww', '123', '5500.00', '13', '5500.00', '1');
INSERT INTO `barber_vip_card` VALUES ('4', '13569863663', '王五00', '123', '500.00', '11', '500.00', '0');
