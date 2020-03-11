/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_turnover
-- ----------------------------
DROP TABLE IF EXISTS `barber_turnover`;
CREATE TABLE `barber_turnover` (
  `staff_id` int(11) DEFAULT NULL COMMENT '员工id',
  `project` varchar(255) DEFAULT NULL COMMENT '消费项目',
  `pay_time` datetime DEFAULT NULL COMMENT '消费时间',
  `pay_price` int(10) DEFAULT NULL COMMENT '消费金额',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '消费方式（1充值,2会员消费,3散户消费）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店内营业额表';

-- ----------------------------
-- Records of barber_turnover
-- ----------------------------
INSERT INTO `barber_turnover` VALUES ('2', '会员卡充值', '2020-03-11 14:56:10', '1000', '7');
INSERT INTO `barber_turnover` VALUES ('2', '会员卡充值', '2020-03-11 14:56:11', '1000', '7');
INSERT INTO `barber_turnover` VALUES ('-1', '海飞丝洗头水', '2020-03-11 14:56:32', '160', '9');
INSERT INTO `barber_turnover` VALUES ('12', '理发(资深理发师)', '2020-03-11 14:58:51', '50', '8');
INSERT INTO `barber_turnover` VALUES ('30', '洗发和吹发(学徒)', '2020-03-11 16:24:54', '20', '8');
INSERT INTO `barber_turnover` VALUES ('27', '理发(资深理发师)', '2020-03-11 16:25:59', '50', '8');
INSERT INTO `barber_turnover` VALUES ('10', '会员卡充值', '2020-03-11 17:18:34', '500', '7');
INSERT INTO `barber_turnover` VALUES ('-1', '假发男士', '2020-03-11 17:57:16', '888', '9');
