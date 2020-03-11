/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_staff_role
-- ----------------------------
DROP TABLE IF EXISTS `barber_staff_role`;
CREATE TABLE `barber_staff_role` (
  `staff_id` int(11) DEFAULT NULL COMMENT '员工id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工角色关系表\r\n(1店长,2经理,3收银员,4首席设计师,5资深设计师,6学徒)';

-- ----------------------------
-- Records of barber_staff_role
-- ----------------------------
INSERT INTO `barber_staff_role` VALUES ('1', '1');
INSERT INTO `barber_staff_role` VALUES ('2', '2');
INSERT INTO `barber_staff_role` VALUES ('10', '5');
INSERT INTO `barber_staff_role` VALUES ('11', '6');
INSERT INTO `barber_staff_role` VALUES ('12', '4');
INSERT INTO `barber_staff_role` VALUES ('25', '6');
INSERT INTO `barber_staff_role` VALUES ('26', '4');
INSERT INTO `barber_staff_role` VALUES ('27', '5');
INSERT INTO `barber_staff_role` VALUES ('28', '7');
INSERT INTO `barber_staff_role` VALUES ('29', '4');
INSERT INTO `barber_staff_role` VALUES ('30', '6');
INSERT INTO `barber_staff_role` VALUES ('31', '5');
INSERT INTO `barber_staff_role` VALUES ('32', '5');
INSERT INTO `barber_staff_role` VALUES ('33', '5');
INSERT INTO `barber_staff_role` VALUES ('34', '5');
INSERT INTO `barber_staff_role` VALUES ('35', '4');
INSERT INTO `barber_staff_role` VALUES ('36', '5');
INSERT INTO `barber_staff_role` VALUES ('37', '5');
INSERT INTO `barber_staff_role` VALUES ('38', '6');
INSERT INTO `barber_staff_role` VALUES ('39', '7');
