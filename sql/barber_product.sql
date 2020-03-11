/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:02:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_product
-- ----------------------------
DROP TABLE IF EXISTS `barber_product`;
CREATE TABLE `barber_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `pro_name` varchar(255) DEFAULT NULL COMMENT '商品名',
  `pro_img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `pro_price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `pro_effect` varchar(255) DEFAULT NULL COMMENT '商品功效',
  `pro_status` int(11) DEFAULT NULL COMMENT '商品状态(0下架, 1上架)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品表 ';

-- ----------------------------
-- Records of barber_product
-- ----------------------------
INSERT INTO `barber_product` VALUES ('1', '海飞丝洗头水', 'http://q5w0yme1k.bkt.clouddn.com/08a22344a2e5495db9e159d80a5132fd', '40.00', '洗发水', '1');
INSERT INTO `barber_product` VALUES ('2', '海飞丝护发素', 'http://q5w0yme1k.bkt.clouddn.com/20bea7d2fb49450b98633f6b8521e39b', '55.00', '护发素', '1');
INSERT INTO `barber_product` VALUES ('3', '染发膏', 'http://q5w0yme1k.bkt.clouddn.com/c599d8302bf044218b92318abc92228f', '60.00', '想要一头乌黑亮丽的头发吗，选它没错', '1');
INSERT INTO `barber_product` VALUES ('6', '男士假发', 'http://q5w0yme1k.bkt.clouddn.com/b3acd30ea0734b6e876f18720a5c4c7e', '599.00', '告别秃顶,走上巅峰!', '1');
INSERT INTO `barber_product` VALUES ('7', '女士假发', 'http://q5w0yme1k.bkt.clouddn.com/e695ee23ade34e359feb907cb2c85fbb', '1099.00', '让你长发及腰!', '1');
INSERT INTO `barber_product` VALUES ('8', '假发男士', 'http://q5w0yme1k.bkt.clouddn.com/23bc4c982605417eb71c83854bb31137', '888.00', '告别秃顶,走上巅峰!', '1');
INSERT INTO `barber_product` VALUES ('9', '女士假发', 'http://q5w0yme1k.bkt.clouddn.com/a043a266b84a4bff8a95e8f3198e1852', '566.00', '让你长发及腰!', '1');
