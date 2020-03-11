/*
Navicat MySQL Data Transfer

Source Server         : shh
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : barbershop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-03-11 18:03:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for barber_staff
-- ----------------------------
DROP TABLE IF EXISTS `barber_staff`;
CREATE TABLE `barber_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '理发店员工id',
  `staff_phone_email` varchar(255) DEFAULT NULL COMMENT '账号(手机号/邮箱)',
  `staff_name` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `staff_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `staff_img` varchar(255) DEFAULT NULL COMMENT '员工头像',
  `staff_status` int(11) DEFAULT NULL COMMENT '状态(1空闲，2工作，3请假, 4有预约)',
  `creation_time` datetime DEFAULT NULL COMMENT '员工入职时间',
  `work_time` datetime DEFAULT NULL COMMENT '工作时间',
  `salt` varchar(255) DEFAULT NULL COMMENT '密码加盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of barber_staff
-- ----------------------------
INSERT INTO `barber_staff` VALUES ('1', '1338268123', '德瑞', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/6454ab8299c44818a5f66991d72d57f7', '2', '2020-03-07 15:40:05', null, '653299ca22718c79af52724dcab75602');
INSERT INTO `barber_staff` VALUES ('2', '1233213231', '陈经理', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/5c049a9db7a84c9eabc2773b9c57f445', '2', '2020-03-07 15:42:54', null, '653299ca22718c79af52724dcab75602');
INSERT INTO `barber_staff` VALUES ('10', '13026410321', '资深设计师', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/12ec4bc227b44defa6eb5cce43388bae', '2', '2020-03-10 21:06:54', '2020-03-11 15:12:03', '653299ca22718c79af52724dcab75602');
INSERT INTO `barber_staff` VALUES ('11', '15032154264', 'Tny', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/251408b379cc495996c3078c88957724', '2', '2020-03-10 21:06:57', null, '653299ca22718c79af52724dcab75602');
INSERT INTO `barber_staff` VALUES ('12', '13343243243', 'Tony', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/eca7508121544fae99ccbb058d1cb95c', '2', '2020-03-08 22:59:00', '2020-03-11 17:10:29', '653299ca22718c79af52724dcab75602');
INSERT INTO `barber_staff` VALUES ('27', '13598654999', '小王', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/a9daa004a12741c68f2fda0e086bed22', '2', '2020-03-11 15:58:59', '2020-03-11 16:02:59', 'c37af8299020dc9b8b042e2563ef8080');
INSERT INTO `barber_staff` VALUES ('28', '13598654555', '张三', '0efd15517b9f1fc8abe8900729e7a910', null, '7', null, null, 'e880e64996b60fe9f2b356a3b3532b38');
INSERT INTO `barber_staff` VALUES ('29', '13598656666', 'dede', '0efd15517b9f1fc8abe8900729e7a910', 'http://q5w0yme1k.bkt.clouddn.com/a771ba1f9ba74ac58ad59a5cf041d0e9', '2', '2020-03-11 16:03:56', null, '4d050c142852a46720eeba86b9579d62');
INSERT INTO `barber_staff` VALUES ('39', '13598654963', '李四', '9685d930dbc2a19db555e1e58aca5d02', null, '7', null, null, '8437b64660e1a4870e3bf15fa6381751');
