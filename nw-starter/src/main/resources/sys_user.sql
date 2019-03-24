/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : new-worth

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2019-03-18 08:00:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `pic_id` bigint(20) DEFAULT NULL COMMENT '头像图片id',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `dept_id` bigint(20) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `locked` tinyint(4) DEFAULT '0' COMMENT '账号是否被锁 0-无 1-被锁 ',
  `expired` tinyint(4) DEFAULT '0' COMMENT '账号是否过期 0-无 1-过期',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '状态 0:禁用，1:正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '{bcrypt}$2a$10$C5MbDWRvozuYP.t16P0lUe4R562oD8Lx1tQXeetJugoeLgUP8svE2', '陈晓清', '1', null, '2019-03-17 17:43:23', '', null, null, null, '0', '0', '2019-03-17 17:43:36', '2019-03-17 17:43:38', '0');
