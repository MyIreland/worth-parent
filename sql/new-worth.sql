/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : new-worth

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 11/09/2019 13:48:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(40) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('new-worth', 'new-worth', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 'server', 'password,refresh_token,authorization_code', NULL, NULL, NULL, NULL, NULL, 'false');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `parent_id` varchar(20) DEFAULT NULL,
  `del_flag` char(1) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES ('1', '厦门学校', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '0', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_relation`;
CREATE TABLE `sys_dept_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ancestor` varchar(20) NOT NULL COMMENT '祖先节点',
  `descendant` varchar(20) NOT NULL COMMENT '后代节点',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx1` (`ancestor`) USING BTREE,
  KEY `idx2` (`descendant`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(20) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_dict_value` (`value`) USING BTREE,
  KEY `sys_dict_label` (`label`) USING BTREE,
  KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (172, '22', '一年级', 'Test', '描述', 4, NULL, '2019-08-31 22:32:28', '11', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `service_id` varchar(32) DEFAULT NULL COMMENT '服务ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(1000) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(10) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `time` mediumtext COMMENT '执行时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_log_create_by` (`create_by`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='日志表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `name` varchar(32) NOT NULL COMMENT '菜单名称',
  `permission` varchar(100) DEFAULT NULL COMMENT '菜单权限标识',
  `url` varchar(128) DEFAULT NULL COMMENT '请求链接',
  `method` varchar(32) DEFAULT NULL COMMENT '请求方法',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `type` char(1) DEFAULT NULL COMMENT '菜单类型 （0菜单 1按钮 2链接）',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '0--正常 1--删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121010 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', NULL, NULL, NULL, -1, 'icon-xitongguanli', 1, '0', '2017-11-07 20:56:00', '2018-05-14 21:53:22', 0);
INSERT INTO `sys_menu` VALUES (2, '用户管理', NULL, '', NULL, 1, 'icon-yonghuguanli', 2, '0', '2017-11-02 22:24:37', '2018-05-14 22:11:35', 0);
INSERT INTO `sys_menu` VALUES (3, '菜单管理', NULL, '', NULL, 1, 'icon-caidanguanli', 3, '0', '2017-11-08 09:57:27', '2018-05-14 22:11:21', 0);
INSERT INTO `sys_menu` VALUES (4, '角色管理', NULL, NULL, NULL, 1, 'icon-jiaoseguanli', 4, '0', '2017-11-08 10:13:37', '2018-05-14 22:11:19', 0);
INSERT INTO `sys_menu` VALUES (5, '日志管理', NULL, NULL, NULL, 1, 'icon-rizhiguanli', 5, '0', '2017-11-20 14:06:22', '2018-05-14 22:11:18', 0);
INSERT INTO `sys_menu` VALUES (6, '字典管理', NULL, NULL, NULL, 1, 'icon-zygl', 6, '0', '2017-11-29 11:30:52', '2018-05-14 22:12:48', 0);
INSERT INTO `sys_menu` VALUES (7, '部门管理', NULL, '', NULL, 1, 'icon-iconbmgl', 7, '0', '2018-01-20 13:17:19', '2018-05-14 22:11:16', 0);
INSERT INTO `sys_menu` VALUES (21, '用户查看', '', '/platform-admin/user/**', 'GET', 2, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (22, '用户新增', 'sys_user_add', '/platform-admin/user/**', 'POST', 2, NULL, NULL, '1', '2017-11-08 09:52:09', '2017-12-04 16:31:10', 0);
INSERT INTO `sys_menu` VALUES (23, '用户修改', 'sys_user_upd', '/platform-admin/user/**', 'PUT', 2, NULL, NULL, '1', '2017-11-08 09:52:48', '2018-01-17 17:40:01', 0);
INSERT INTO `sys_menu` VALUES (24, '用户删除', 'sys_user_del', '/platform-admin/user/**', 'DELETE', 2, NULL, NULL, '1', '2017-11-08 09:54:01', '2017-12-04 16:31:18', 0);
INSERT INTO `sys_menu` VALUES (31, '菜单查看', NULL, '/platform-admin/menu/**', 'GET', 3, NULL, NULL, '1', '2017-11-08 09:57:56', '2017-11-14 17:29:17', 0);
INSERT INTO `sys_menu` VALUES (32, '菜单新增', 'sys_menu_add', '/platform-admin/menu/**', 'POST', 3, NULL, NULL, '1', '2017-11-08 10:15:53', '2018-01-20 14:37:50', 0);
INSERT INTO `sys_menu` VALUES (33, '菜单修改', 'sys_menu_edit', '/platform-admin/menu/**', 'PUT', 3, NULL, NULL, '1', '2017-11-08 10:16:23', '2018-01-20 14:37:56', 0);
INSERT INTO `sys_menu` VALUES (34, '菜单删除', 'sys_menu_del', '/platform-admin/menu/**', 'DELETE', 3, NULL, NULL, '1', '2017-11-08 10:16:43', '2018-01-20 14:38:03', 0);
INSERT INTO `sys_menu` VALUES (41, '角色查看', NULL, '/platform-admin/role/**', 'GET', 4, NULL, NULL, '1', '2017-11-08 10:14:01', '2018-02-04 13:55:06', 0);
INSERT INTO `sys_menu` VALUES (42, '角色新增', 'sys_role_add', '/platform-admin/role/**', 'POST', 4, NULL, NULL, '1', '2017-11-08 10:14:18', '2018-04-20 07:21:38', 0);
INSERT INTO `sys_menu` VALUES (43, '角色修改', 'sys_role_edit', '/platform-admin/role/**', 'PUT', 4, NULL, NULL, '1', '2017-11-08 10:14:41', '2018-04-20 07:21:50', 0);
INSERT INTO `sys_menu` VALUES (44, '角色删除', 'sys_role_del', '/platform-admin/role/**', 'DELETE', 4, NULL, NULL, '1', '2017-11-08 10:14:59', '2018-04-20 07:22:00', 0);
INSERT INTO `sys_menu` VALUES (45, '分配权限', 'sys_role_perm', '/platform-admin/role/**', 'PUT', 4, NULL, NULL, '1', '2018-04-20 07:22:55', '2018-04-20 07:24:40', 0);
INSERT INTO `sys_menu` VALUES (51, '日志查看', NULL, '/platform-admin/log/**', 'GET', 5, NULL, NULL, '1', '2017-11-20 14:07:25', '2018-02-04 14:28:53', 0);
INSERT INTO `sys_menu` VALUES (52, '日志删除', 'sys_log_del', '/platform-admin/log/**', 'DELETE', 5, NULL, NULL, '1', '2017-11-20 20:37:37', '2017-11-28 17:36:52', 0);
INSERT INTO `sys_menu` VALUES (61, '字典查看', NULL, '/platform-admin/dict/**', 'GET', 6, NULL, NULL, '1', '2017-11-19 22:04:24', '2017-11-29 11:31:24', 0);
INSERT INTO `sys_menu` VALUES (62, '字典删除', 'sys_dict_del', '/platform-admin/dict/**', 'DELETE', 6, NULL, NULL, '1', '2017-11-29 11:30:11', '2018-01-07 15:40:51', 0);
INSERT INTO `sys_menu` VALUES (63, '字典新增', 'sys_dict_add', '/platform-admin/dict/**', 'POST', 6, NULL, NULL, '1', '2018-05-11 22:34:55', NULL, 0);
INSERT INTO `sys_menu` VALUES (64, '字典修改', 'sys_dict_upd', '/platform-admin/dict/**', 'PUT', 6, NULL, NULL, '1', '2018-05-11 22:36:03', NULL, 0);
INSERT INTO `sys_menu` VALUES (71, '部门查看', '', '/platform-admin/dept/**', 'GET', 7, NULL, NULL, '1', '2018-01-20 13:17:19', '2018-01-20 14:55:24', 0);
INSERT INTO `sys_menu` VALUES (72, '部门新增', 'sys_dept_add', '/platform-admin/dept/**', 'POST', 7, NULL, NULL, '1', '2018-01-20 14:56:16', '2018-01-20 21:17:57', 0);
INSERT INTO `sys_menu` VALUES (73, '部门修改', 'sys_dept_edit', '/platform-admin/dept/**', 'PUT', 7, NULL, NULL, '1', '2018-01-20 14:56:59', '2018-01-20 21:17:59', 0);
INSERT INTO `sys_menu` VALUES (74, '部门删除', 'sys_dept_del', '/platform-admin/dept/**', 'DELETE', 7, NULL, NULL, '1', '2018-01-20 14:57:28', '2018-01-20 21:18:05', 0);
INSERT INTO `sys_menu` VALUES (100, '客户端管理', '', '', '', 1, 'icon-bangzhushouji', 9, '0', '2018-01-20 13:17:19', '2019-08-23 02:41:44', 1);
INSERT INTO `sys_menu` VALUES (101, '客户端新增', 'sys_client_add', '/platform-admin/client/**', 'POST', 100, '1', NULL, '1', '2018-05-15 21:35:18', '2018-05-16 10:35:26', 0);
INSERT INTO `sys_menu` VALUES (102, '客户端修改', 'sys_client_upd', '/platform-admin/client/**', 'PUT', 100, NULL, NULL, '1', '2018-05-15 21:37:06', '2018-05-15 21:52:30', 0);
INSERT INTO `sys_menu` VALUES (103, '客户端删除', 'sys_client_del', '/platform-admin/client/**', 'DELETE', 100, NULL, NULL, '1', '2018-05-15 21:39:16', '2018-05-15 21:52:34', 0);
INSERT INTO `sys_menu` VALUES (104, '客户端查看', NULL, '/platform-admin/client/**', 'GET', 100, NULL, NULL, '1', '2018-05-15 21:39:57', '2018-05-15 21:52:40', 0);
INSERT INTO `sys_menu` VALUES (100001, '打卡管理', NULL, NULL, NULL, -1, 'icon-xitongguanli', 1, '0', '2018-11-05 10:32:05', '2018-11-05 10:32:32', 0);
INSERT INTO `sys_menu` VALUES (110001, '打卡活动', NULL, NULL, NULL, 100001, NULL, 1, '0', '2018-11-05 11:04:25', '2018-11-05 11:05:09', 0);
INSERT INTO `sys_menu` VALUES (111001, '活动查看', '', '/platform-admin/activity/page', 'GET', 110001, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (111002, '活动导出', '', '/platform-admin/activity/excelExport', 'POST', 110001, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (111003, '活动新增', '', '/platform-admin/activity/**', 'POST', 110001, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (111004, '活动删除', NULL, '/platform-admin/activity/deletes', 'POST', 110001, NULL, NULL, '1', '2018-11-06 10:16:41', '2018-11-06 10:17:07', 0);
INSERT INTO `sys_menu` VALUES (111005, '活动下线', NULL, '/platform-admin/activity/statuses', 'POST', 110001, NULL, NULL, '1', '2018-11-06 11:17:20', '2018-11-06 11:17:37', 0);
INSERT INTO `sys_menu` VALUES (111006, '活动编辑', NULL, '/platform-admin/activity/**', 'PUT', 110001, NULL, NULL, '1', '2018-11-06 17:24:38', '2018-11-30 17:24:53', 0);
INSERT INTO `sys_menu` VALUES (111007, '测评模板查询', NULL, '/platform-admin/examTemplate/page', 'GET', 110001, NULL, NULL, '1', '2018-11-07 17:12:56', '2018-11-07 17:13:52', 0);
INSERT INTO `sys_menu` VALUES (111008, '设置题库', NULL, '/platform-admin/examTemplate/selectTemplate', 'POST', 110001, NULL, NULL, '1', '2018-11-07 19:47:20', '2018-11-07 19:47:40', 0);
INSERT INTO `sys_menu` VALUES (120001, '兑换记录', NULL, NULL, NULL, 100001, NULL, 2, '0', '2018-11-05 11:04:25', '2018-11-05 11:05:09', 0);
INSERT INTO `sys_menu` VALUES (121001, '活动查看', '', '/platform-admin/commodityRecord/page', 'GET', 110001, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (121002, '活动导出', '', '/platform-admin/commodityRecord/excelExport', 'POST', 110001, NULL, NULL, '1', '2017-11-07 20:58:05', '2018-02-04 14:28:49', 0);
INSERT INTO `sys_menu` VALUES (121003, 'dataType', 'dataType', 'dataType', 'put', -1, 'dataType', 1, '0', '2019-08-23 02:08:34', '2019-08-23 02:19:33', 1);
INSERT INTO `sys_menu` VALUES (121004, 'fsa ', 'CommonConstant.STATUS_NORMAL', 'CommonConstant.STATUS_NORMAL', 'get', -1, 'CommonConstant.STATUS_NORMAL', 2, '1', '2019-08-23 02:21:16', '2019-08-23 02:34:10', 1);
INSERT INTO `sys_menu` VALUES (121005, 'fsdafsa', 'ds', 'sda', 'put', -1, 'fsd', 5, '0', '2019-08-23 02:40:19', '2019-08-23 02:40:26', 1);
INSERT INTO `sys_menu` VALUES (121006, 'fsa', 'fs', 'fs', 'delete', -1, 'sfd', 6, '0', '2019-08-23 02:41:10', '2019-08-23 02:41:16', 1);
INSERT INTO `sys_menu` VALUES (121007, 'fsa', 'fsd', 'fas', 'post', -1, 'fd', 122, '1', '2019-08-23 02:59:36', '2019-08-23 03:10:39', 1);
INSERT INTO `sys_menu` VALUES (121008, 'fsd', 'fds', 'fds', 'get', -1, 'fsd', 5, '1', '2019-08-23 03:10:32', '2019-08-23 03:10:37', 1);
INSERT INTO `sys_menu` VALUES (121009, '测试下', 'fff', '444', 'post', -1, '', 2, '0', '2019-09-05 16:26:13', '2019-09-05 18:06:02', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `pid` bigint(20) DEFAULT '0' COMMENT '客户父id',
  `name` varchar(50) DEFAULT NULL COMMENT '客户全称',
  `type` tinyint(1) DEFAULT '0' COMMENT '客户类型 1.公有云，2.私有云',
  `brief_name` varchar(100) DEFAULT NULL COMMENT '客户简称',
  `phone` varchar(100) DEFAULT NULL COMMENT '客户电话',
  `email` varchar(100) DEFAULT NULL COMMENT '客户邮箱',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态：0.未开通，1.已开通',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除（0：否，1：是）',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_update` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户表';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_org` VALUES (1, 0, '陈租户', 0, '陈租户', '13055515853', '13055515853@163.com', '天上', '天上', 1, 0, '2019-08-07 16:33:26', '2019-08-07 16:33:43');
INSERT INTO `sys_org` VALUES (2, 0, '_this', 0, '_this', '1222', '22', NULL, NULL, 0, 0, '2019-09-09 15:35:54', '2019-09-09 15:35:54');
INSERT INTO `sys_org` VALUES (3, 0, '_this', 0, '_this33333', '555', '66', NULL, NULL, 0, 1, '2019-09-09 15:36:08', '2019-09-09 15:36:27');
COMMIT;

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position` (
  `id` varchar(18) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` varchar(18) DEFAULT NULL,
  `org_id` varchar(20) DEFAULT NULL,
  `descr_short` varchar(255) DEFAULT NULL,
  `dept_id` varchar(20) DEFAULT NULL,
  `is_del` varchar(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='岗位表';

-- ----------------------------
-- Records of sys_position
-- ----------------------------
BEGIN;
INSERT INTO `sys_position` VALUES ('321', '测试20180503', '10003823', 'null', 'null', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_desc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `role_type` tinyint(4) DEFAULT NULL COMMENT '角色类型 0-正常角色 1-管理员角色',
  `org_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'admin', 'ROLE_ADMIN', '超级管理员1', 1, 183, '2017-10-29 15:45:51', '2019-09-01 02:23:53', '0');
INSERT INTO `sys_role` VALUES (2, 'test', 'test', 'ce', 0, 183, '2019-09-01 02:05:32', '2019-09-05 17:44:24', '1');
INSERT INTO `sys_role` VALUES (3, 'fsd', 'fds', 'fd', 1, 183, '2019-09-01 02:16:44', '2019-09-01 02:16:44', '0');
INSERT INTO `sys_role` VALUES (4, 'ets1', 'ds', '', 0, 183, '2019-09-05 16:27:13', '2019-09-05 17:44:29', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `dept_id` varchar(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (11, 1, '183');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(11) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(11) NOT NULL COMMENT '菜单ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1, 183);
INSERT INTO `sys_role_menu` VALUES (1, 2, 183);
INSERT INTO `sys_role_menu` VALUES (1, 3, 183);
INSERT INTO `sys_role_menu` VALUES (1, 4, 183);
INSERT INTO `sys_role_menu` VALUES (1, 5, 183);
INSERT INTO `sys_role_menu` VALUES (1, 6, 183);
INSERT INTO `sys_role_menu` VALUES (1, 7, 183);
INSERT INTO `sys_role_menu` VALUES (1, 21, 183);
INSERT INTO `sys_role_menu` VALUES (1, 22, 183);
INSERT INTO `sys_role_menu` VALUES (1, 23, 183);
INSERT INTO `sys_role_menu` VALUES (1, 24, 183);
INSERT INTO `sys_role_menu` VALUES (1, 31, 183);
INSERT INTO `sys_role_menu` VALUES (1, 32, 183);
INSERT INTO `sys_role_menu` VALUES (1, 33, 183);
INSERT INTO `sys_role_menu` VALUES (1, 34, 183);
INSERT INTO `sys_role_menu` VALUES (1, 41, 183);
INSERT INTO `sys_role_menu` VALUES (1, 42, 183);
INSERT INTO `sys_role_menu` VALUES (1, 43, 183);
INSERT INTO `sys_role_menu` VALUES (1, 44, 183);
INSERT INTO `sys_role_menu` VALUES (1, 45, 183);
INSERT INTO `sys_role_menu` VALUES (1, 51, 183);
INSERT INTO `sys_role_menu` VALUES (1, 52, 183);
INSERT INTO `sys_role_menu` VALUES (1, 61, 183);
INSERT INTO `sys_role_menu` VALUES (1, 62, 183);
INSERT INTO `sys_role_menu` VALUES (1, 63, 183);
INSERT INTO `sys_role_menu` VALUES (1, 64, 183);
INSERT INTO `sys_role_menu` VALUES (1, 71, 183);
INSERT INTO `sys_role_menu` VALUES (1, 72, 183);
INSERT INTO `sys_role_menu` VALUES (1, 73, 183);
INSERT INTO `sys_role_menu` VALUES (1, 74, 183);
INSERT INTO `sys_role_menu` VALUES (1, 100001, 183);
INSERT INTO `sys_role_menu` VALUES (1, 110001, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111001, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111002, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111003, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111004, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111005, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111006, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111007, 183);
INSERT INTO `sys_role_menu` VALUES (1, 111008, 183);
INSERT INTO `sys_role_menu` VALUES (1, 120001, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121001, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121002, 183);
COMMIT;

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(100) DEFAULT NULL COMMENT '任务名',
  `method_name` varchar(255) DEFAULT NULL COMMENT '任务调用的方法名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `bean_class` varchar(255) DEFAULT NULL COMMENT '任务执行时调用哪个类的方法 包名+类名',
  `spring_bean` varchar(200) DEFAULT NULL COMMENT 'Spring bean',
  `is_concurrent` varchar(3) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `job_group` varchar(255) NOT NULL COMMENT '任务分组',
  `job_status` varchar(255) NOT NULL COMMENT '任务状态',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_user` bigint(20) DEFAULT NULL COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
BEGIN;
INSERT INTO `sys_task` VALUES (1, 'baseJob', 'run1', '*/5 * * * * ?', 'cn.worth.thirdparty.quartz.job.BaseJob', '', '1', '', 'group1', '0', '2017-05-19 18:30:56', 1, 1, '2019-09-11 11:42:32', 0);
INSERT INTO `sys_task` VALUES (8, 'base3Job', 'run1', '*/4 * * * * ?', 'cn.worth.thirdparty.quartz.job.Base1Job', '', '1', '', 'group1', '0', '2017-05-19 18:30:56', 1, 1, '2019-09-11 11:22:23', 0);
INSERT INTO `sys_task` VALUES (9, 'base2Job', 'run1', '*/5 * * * * ?', 'cn.worth.thirdparty.quartz.job.Base2Job', '', '1', '', 'group1', '0', '2017-05-19 18:30:56', 1, 1, '2019-09-11 10:47:33', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_task_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_log`;
CREATE TABLE `sys_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` int(11) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) NOT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) NOT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` int(11) NOT NULL COMMENT '任务状态  0：成功  1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `gmt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务日志表';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 1-男 2-女',
  `type` tinyint(1) DEFAULT '0' COMMENT '0-普通 1-管理员 2-微信用户',
  `salt` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '随机盐',
  `real_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT '手机',
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `org_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0-正常 1-锁住 2- 过期',
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '0-正常，1-删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_idx1_username` (`username`) USING BTREE,
  UNIQUE KEY `user_idx2_phone` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1300004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 1, 0, NULL, 'admin', '13000000000', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 183, 1, 0, 'admin@test.cn', '2018-10-19 16:50:50', '2019-09-01 13:42:30', 0);
INSERT INTO `sys_user` VALUES (1300003, 'admin1', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 1, 0, NULL, 'admin', '13000000001', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 183, 1, 0, 'admin@test.cn', '2018-10-19 16:50:50', '2019-09-01 13:42:30', 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 1, 183);
INSERT INTO `sys_user_role` VALUES (1, 2, 183);
INSERT INTO `sys_user_role` VALUES (145661, 1, 183);
INSERT INTO `sys_user_role` VALUES (145661, 2, 183);
INSERT INTO `sys_user_role` VALUES (157542, 1, 183);
INSERT INTO `sys_user_role` VALUES (1300000, 1, 183);
INSERT INTO `sys_user_role` VALUES (1300000, 2, 183);
INSERT INTO `sys_user_role` VALUES (1300001, 1, 183);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '文件名',
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `bizType` tinyint(4) DEFAULT NULL COMMENT '业务类型',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';

SET FOREIGN_KEY_CHECKS = 1;
