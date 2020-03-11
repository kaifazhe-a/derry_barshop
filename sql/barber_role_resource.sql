/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `barber_role_resource`;
CREATE TABLE `barber_role_resource` (
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `resource_id` int(11) DEFAULT NULL COMMENT '资源id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源关联表';

-- ----------------------------
-- Records of barber_role_resource
-- ----------------------------
INSERT INTO `barber_role_resource` VALUES ('1', '1');
INSERT INTO `barber_role_resource` VALUES ('1', '2');
INSERT INTO `barber_role_resource` VALUES ('1', '3');
INSERT INTO `barber_role_resource` VALUES ('1', '4');
INSERT INTO `barber_role_resource` VALUES ('1', '5');
INSERT INTO `barber_role_resource` VALUES ('1', '6');
INSERT INTO `barber_role_resource` VALUES ('1', '7');
INSERT INTO `barber_role_resource` VALUES ('1', '8');
INSERT INTO `barber_role_resource` VALUES ('1', '10');
INSERT INTO `barber_role_resource` VALUES ('1', '12');
INSERT INTO `barber_role_resource` VALUES ('1', '13');
INSERT INTO `barber_role_resource` VALUES ('1', '14');
INSERT INTO `barber_role_resource` VALUES ('1', '15');
INSERT INTO `barber_role_resource` VALUES ('1', '16');
INSERT INTO `barber_role_resource` VALUES ('2', '1');
INSERT INTO `barber_role_resource` VALUES ('2', '3');
INSERT INTO `barber_role_resource` VALUES ('2', '6');
INSERT INTO `barber_role_resource` VALUES ('2', '8');
INSERT INTO `barber_role_resource` VALUES ('2', '10');
INSERT INTO `barber_role_resource` VALUES ('2', '12');
INSERT INTO `barber_role_resource` VALUES ('2', '13');
INSERT INTO `barber_role_resource` VALUES ('2', '14');
INSERT INTO `barber_role_resource` VALUES ('2', '15');
INSERT INTO `barber_role_resource` VALUES ('2', '16');
INSERT INTO `barber_role_resource` VALUES ('3', '1');
INSERT INTO `barber_role_resource` VALUES ('3', '6');
INSERT INTO `barber_role_resource` VALUES ('3', '10');
INSERT INTO `barber_role_resource` VALUES ('3', '12');
INSERT INTO `barber_role_resource` VALUES ('3', '13');
INSERT INTO `barber_role_resource` VALUES ('3', '15');
INSERT INTO `barber_role_resource` VALUES ('3', '16');
INSERT INTO `barber_role_resource` VALUES ('4', '1');
INSERT INTO `barber_role_resource` VALUES ('4', '6');
INSERT INTO `barber_role_resource` VALUES ('4', '10');
INSERT INTO `barber_role_resource` VALUES ('4', '12');
INSERT INTO `barber_role_resource` VALUES ('4', '16');
INSERT INTO `barber_role_resource` VALUES ('5', '1');
INSERT INTO `barber_role_resource` VALUES ('5', '6');
INSERT INTO `barber_role_resource` VALUES ('5', '10');
INSERT INTO `barber_role_resource` VALUES ('5', '12');
INSERT INTO `barber_role_resource` VALUES ('5', '16');
INSERT INTO `barber_role_resource` VALUES ('6', '1');
INSERT INTO `barber_role_resource` VALUES ('6', '6');
INSERT INTO `barber_role_resource` VALUES ('6', '10');
INSERT INTO `barber_role_resource` VALUES ('6', '12');
INSERT INTO `barber_role_resource` VALUES ('6', '16');
INSERT INTO `barber_role_resource` VALUES ('7', '6');
INSERT INTO `barber_role_resource` VALUES ('7', '9');
INSERT INTO `barber_role_resource` VALUES ('7', '10');
INSERT INTO `barber_role_resource` VALUES ('7', '11');
