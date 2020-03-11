/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_resource
-- ----------------------------
DROP TABLE IF EXISTS `barber_resource`;
CREATE TABLE `barber_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(255) DEFAULT NULL COMMENT '资源名',
  `url` varchar(255) DEFAULT NULL COMMENT '资源路径PATH',
  `p_id` int(11) DEFAULT NULL COMMENT '父级id',
  `resource_type` varchar(255) DEFAULT NULL COMMENT '资源类型: 1菜单路径; 2按钮',
  `resource_code` varchar(255) DEFAULT NULL COMMENT '资源编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='资源表';

-- ----------------------------
-- Records of barber_resource
-- ----------------------------
INSERT INTO `barber_resource` VALUES ('1', '员工展示', '/staff/toShow', '17', '1', 'STAFF_PATH');
INSERT INTO `barber_resource` VALUES ('2', '开除员工', '-----', '1', '2', '-------');
INSERT INTO `barber_resource` VALUES ('3', '招聘员工', '---', '1', '2', '-----');
INSERT INTO `barber_resource` VALUES ('4', '升级员工', '----', '1', '2', '-----');
INSERT INTO `barber_resource` VALUES ('5', '降级员工', '----', '1', '2', '------');
INSERT INTO `barber_resource` VALUES ('6', '商品展示', '/product/toShow', '17', '1', 'PRODUCT_PATH');
INSERT INTO `barber_resource` VALUES ('7', '商品添加', '-----', '6', '2', '--------');
INSERT INTO `barber_resource` VALUES ('8', '商品上下架', '-----', '6', '2', '------');
INSERT INTO `barber_resource` VALUES ('9', '商品购买', '----', '6', '2', '----');
INSERT INTO `barber_resource` VALUES ('10', '理发项目展示', '/itme/toShow', '0', '1', 'ITME_PATH');
INSERT INTO `barber_resource` VALUES ('11', '选择项目', '-----', '10', '2', '-----');
INSERT INTO `barber_resource` VALUES ('12', '会员展示', '/vipcard/toShowVipcard', '17', '1', 'VIPCARD_PATH');
INSERT INTO `barber_resource` VALUES ('13', '添加会员', '----', '12', '2', '----');
INSERT INTO `barber_resource` VALUES ('14', '删除会员', '----', '12', '2', '-----');
INSERT INTO `barber_resource` VALUES ('15', '会员充值', '----', '12', '2', '------');
INSERT INTO `barber_resource` VALUES ('16', '营业额展示', '/turnover/toShow', '0', '1', 'TURNOVER_PATH');
INSERT INTO `barber_resource` VALUES ('17', '展示页面', '----', '0', '1', '-----');
