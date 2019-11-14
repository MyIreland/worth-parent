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

 Date: 14/11/2019 17:37:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for applet_user
-- ----------------------------
DROP TABLE IF EXISTS `applet_user`;
CREATE TABLE `applet_user` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `nickname` varchar(200) DEFAULT NULL COMMENT '微信名',
                               `province` varchar(100) DEFAULT NULL COMMENT '省',
                               `gender` varchar(10) DEFAULT NULL COMMENT '性别',
                               `city` varchar(10) DEFAULT NULL COMMENT '城市',
                               `country` varchar(20) DEFAULT NULL COMMENT '国家',
                               `avatar_url` varchar(200) DEFAULT NULL COMMENT '头像地址',
                               `open_id` varchar(200) DEFAULT NULL COMMENT '微信openId',
                               `status` tinyint(4) DEFAULT '1' COMMENT '用户状态 0-未知 1-正常  ',
                               `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for approval_model
-- ----------------------------
DROP TABLE IF EXISTS `approval_model`;
CREATE TABLE `approval_model` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  `name` varchar(150) DEFAULT NULL COMMENT '审批模型名称',
                                  `type` tinyint(4) DEFAULT NULL COMMENT '审批模型类型  字典值 approval_type',
                                  `status` tinyint(4) DEFAULT '0' COMMENT '审批模型状态 0-禁用 1-启用',
                                  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                                  `user_create` bigint(20) DEFAULT NULL COMMENT '创建人',
                                  `gmt_update` datetime DEFAULT NULL COMMENT '更新时间',
                                  `user_update` bigint(20) DEFAULT NULL COMMENT '更新人',
                                  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除 0-否 1-是',
                                  `tenant_id` bigint(20) DEFAULT NULL,
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='审批模型';

-- ----------------------------
-- Records of approval_model
-- ----------------------------
BEGIN;
INSERT INTO `approval_model` VALUES (103, 'test2', 10, 1, NULL, 1, NULL, NULL, 0, 183);
INSERT INTO `approval_model` VALUES (104, 'test', 10, 0, NULL, 1, NULL, NULL, 0, 183);
COMMIT;

-- ----------------------------
-- Table structure for approval_model_process
-- ----------------------------
DROP TABLE IF EXISTS `approval_model_process`;
CREATE TABLE `approval_model_process` (
                                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                          `name` varchar(100) DEFAULT NULL COMMENT '节点名称',
                                          `sort` tinyint(4) DEFAULT NULL COMMENT '节点排序',
                                          `user_name` varchar(50) DEFAULT NULL COMMENT '名字',
                                          `user_id` bigint(20) DEFAULT NULL COMMENT '节点审批人',
                                          `model_id` bigint(20) DEFAULT NULL COMMENT '模型id',
                                          `description` varchar(100) DEFAULT NULL COMMENT '描述',
                                          PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='审批节点';

-- ----------------------------
-- Records of approval_model_process
-- ----------------------------
BEGIN;
INSERT INTO `approval_model_process` VALUES (12, '节点1', 1, 'admin1', 1300003, 104, NULL);
INSERT INTO `approval_model_process` VALUES (13, '节点2', 2, 'admin1', 1300003, 104, NULL);
INSERT INTO `approval_model_process` VALUES (14, '节点3', 3, 'admin', 1, 104, NULL);
INSERT INTO `approval_model_process` VALUES (15, '节点1', 1, 'admin', 1, 103, NULL);
INSERT INTO `approval_model_process` VALUES (16, '节点2', 2, 'admin1', 1300003, 103, NULL);
COMMIT;

-- ----------------------------
-- Table structure for approval_task
-- ----------------------------
DROP TABLE IF EXISTS `approval_task`;
CREATE TABLE `approval_task` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `name` varchar(150) DEFAULT NULL COMMENT '审批任务名称',
                                 `type` tinyint(4) DEFAULT NULL COMMENT '审批任务类型  字典值 approval_type',
                                 `status` tinyint(4) DEFAULT '0' COMMENT '审批任务状态 0-进行中 1-审批通过 2-审批拒绝 3-审批取消',
                                 `current_process` bigint(20) DEFAULT NULL COMMENT '当前任务节点',
                                 `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                                 `user_create` bigint(20) DEFAULT NULL COMMENT '创建人',
                                 `user_create_name` varchar(100) DEFAULT NULL COMMENT '创建人姓名',
                                 `tenant_id` bigint(20) DEFAULT NULL,
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='审批任务';

-- ----------------------------
-- Records of approval_task
-- ----------------------------
BEGIN;
INSERT INTO `approval_task` VALUES (3, 'ceshi', 10, 0, 5, '2019-09-19 17:13:23', 1, NULL, 183);
INSERT INTO `approval_task` VALUES (4, 's', 10, 2, 7, '2019-09-19 17:21:15', 1, NULL, 183);
COMMIT;

-- ----------------------------
-- Table structure for approval_task_log
-- ----------------------------
DROP TABLE IF EXISTS `approval_task_log`;
CREATE TABLE `approval_task_log` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                     `type` tinyint(4) DEFAULT '1' COMMENT '操作类型 1-数据更新',
                                     `action_task_id` bigint(20) DEFAULT NULL COMMENT '操作任务id',
                                     `action_user_name` varchar(50) DEFAULT NULL COMMENT '操作人姓名',
                                     `action_user` bigint(20) DEFAULT NULL COMMENT '操作人',
                                     `action_status` tinyint(4) DEFAULT NULL COMMENT '操作后状态',
                                     `action_time` datetime DEFAULT NULL COMMENT '操作时间',
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批任务操作记录表';

-- ----------------------------
-- Table structure for approval_task_process
-- ----------------------------
DROP TABLE IF EXISTS `approval_task_process`;
CREATE TABLE `approval_task_process` (
                                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                         `name` varchar(100) DEFAULT NULL COMMENT '任务节点名称',
                                         `status` tinyint(4) DEFAULT NULL COMMENT '任务节点状态 0-待审核 1-通过 2-驳回',
                                         `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
                                         `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
                                         `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
                                         `task_id` bigint(20) DEFAULT NULL COMMENT '任务id',
                                         `description` varchar(100) DEFAULT NULL COMMENT '描述',
                                         `gmt_create` datetime DEFAULT NULL,
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approval_task_process
-- ----------------------------
BEGIN;
INSERT INTO `approval_task_process` VALUES (3, '节点1', 0, 1, NULL, 1, 2, NULL, '2019-09-20 16:57:49');
INSERT INTO `approval_task_process` VALUES (4, '节点2', 0, 2, NULL, 1300003, 2, NULL, '2019-09-20 16:57:49');
INSERT INTO `approval_task_process` VALUES (5, '节点1', 1, 1, 'admin', 1, 3, NULL, '2019-09-20 16:57:49');
INSERT INTO `approval_task_process` VALUES (6, '节点2', 0, 2, 'admin1', 1300003, 3, NULL, '2019-09-20 16:57:49');
INSERT INTO `approval_task_process` VALUES (7, '节点1', 2, 1, 'admin', 1, 4, NULL, '2019-09-20 16:57:49');
INSERT INTO `approval_task_process` VALUES (8, '节点2', 0, 2, 'admin1', 1300003, 4, NULL, '2019-09-20 16:57:49');
COMMIT;

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
-- Table structure for platform_tenant
-- ----------------------------
DROP TABLE IF EXISTS `platform_tenant`;
CREATE TABLE `platform_tenant` (
                                   `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '客户id',
                                   `pid` bigint(20) DEFAULT '0' COMMENT '客户父id',
                                   `name` varchar(50) DEFAULT NULL COMMENT '客户全称',
                                   `type` tinyint(1) DEFAULT '0' COMMENT '客户类型',
                                   `brief_name` varchar(100) DEFAULT NULL COMMENT '客户简称',
                                   `phone` varchar(100) DEFAULT NULL COMMENT '客户电话',
                                   `email` varchar(100) DEFAULT NULL COMMENT '客户邮箱',
                                   `address` varchar(200) DEFAULT NULL COMMENT '地址',
                                   `remark` varchar(500) DEFAULT NULL COMMENT '备注',
                                   `status` tinyint(1) DEFAULT '0' COMMENT '状态：0.未开通，1.已开通',
                                   `del_flag` tinyint(1) DEFAULT '0' COMMENT '是否删除（0：否，1：是）',
                                   `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                                   `gmt_update` datetime DEFAULT NULL COMMENT '修改时间',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户表';

-- ----------------------------
-- Records of platform_tenant
-- ----------------------------
BEGIN;
INSERT INTO `platform_tenant` VALUES (1, 0, '陈租户', 0, '陈租户', '13055515853', '13055515853@163.com', '天上', '天上', 1, 0, '2019-08-07 16:33:26', '2019-11-07 15:31:12');
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
                            UNIQUE KEY `idx_type_value` (`type`,`value`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (173, '10', '财务审批', 'approval_type', '财务审批模板', 1, '2019-09-17 15:46:54', '2019-09-17 15:46:57', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `name` varchar(200) DEFAULT NULL COMMENT '文件名',
                            `type` tinyint(4) DEFAULT NULL COMMENT '文件类型',
                            `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
                            `size` bigint(20) DEFAULT NULL COMMENT '文件大小',
                            `biz_type` varchar(20) DEFAULT NULL COMMENT '业务类型',
                            `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
INSERT INTO `sys_file` VALUES (1, '裙子', 0, 'https://img.alicdn.com/imgextra/i1/122400877/O1CN01foKboR1ILhu05pOYk_!!0-saturn_solar.jpg_220x220.jpg_.webp', NULL, '0', '2019-09-12 22:10:43');
INSERT INTO `sys_file` VALUES (2, '头像', 0, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', NULL, '0', '2019-09-12 22:27:07');
INSERT INTO `sys_file` VALUES (205, 'WechatIMG1.jpeg', 0, '/files/admin/avatar/2019-09-30/6ab6a176-8434-48fa-bd73-e7f38cc51117.jpeg', NULL, 'avatar', '2019-09-30 17:00:55');
INSERT INTO `sys_file` VALUES (206, 'WechatIMG1.jpeg', 0, '/files/admin/avatar/2019-09-30/d31f4da5-48f0-4b08-99c1-aaf49c89c491.jpeg', NULL, 'avatar', '2019-09-30 17:07:58');
COMMIT;

-- ----------------------------
-- Table structure for sys_import
-- ----------------------------
DROP TABLE IF EXISTS `sys_import`;
CREATE TABLE `sys_import` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `file_id` bigint(20) NOT NULL COMMENT '文件id',
                              `file_url` varchar(300) NOT NULL COMMENT '文件路径',
                              `header_row` int(11) NOT NULL COMMENT '文件头行数',
                              `total_row` bigint(20) DEFAULT NULL COMMENT '总行书',
                              `success_row` bigint(20) DEFAULT NULL COMMENT '成功导入行数',
                              `status` tinyint(4) NOT NULL COMMENT '状态 0-未开始 1-进行中 2-成功 3-失败',
                              `user_create` bigint(20) DEFAULT NULL COMMENT '导入者',
                              `gmt_create` datetime DEFAULT NULL COMMENT '导入时间',
                              `gmt_modify` datetime DEFAULT NULL COMMENT '修改时间',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_import_error
-- ----------------------------
DROP TABLE IF EXISTS `sys_import_error`;
CREATE TABLE `sys_import_error` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `import_id` bigint(20) NOT NULL COMMENT '错误行数',
                                    `error_row` bigint(20) DEFAULT NULL,
                                    `description` varchar(200) DEFAULT NULL COMMENT '错误信息',
                                    `gmt_create` datetime DEFAULT NULL COMMENT '时间',
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
                            `permission` varchar(100) NOT NULL COMMENT '菜单权限标识',
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
) ENGINE=InnoDB AUTO_INCREMENT=121024 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', 'sys', '', NULL, -1, 'icon-xitongguanli', 1, '0', '2017-11-07 20:56:00', '2019-11-06 13:56:31', 0);
INSERT INTO `sys_menu` VALUES (2, '用户管理', 'sys-user', '', NULL, 1, 'icon-yonghuguanli', 2, '0', '2017-11-02 22:24:37', '2019-11-06 13:57:24', 0);
INSERT INTO `sys_menu` VALUES (3, '菜单管理', 'sys-menu', '', NULL, 1, 'icon-caidanguanli', 3, '0', '2017-11-08 09:57:27', '2019-11-06 13:58:37', 0);
INSERT INTO `sys_menu` VALUES (4, '角色管理', 'sys-role', NULL, NULL, 1, 'icon-jiaoseguanli', 4, '0', '2017-11-08 10:13:37', '2019-11-06 14:00:23', 0);
INSERT INTO `sys_menu` VALUES (5, '日志管理', 'sys-log', NULL, NULL, 1, 'icon-rizhiguanli', 5, '0', '2017-11-20 14:06:22', '2018-05-14 22:11:18', 0);
INSERT INTO `sys_menu` VALUES (6, '字典管理', 'sys-dict', NULL, NULL, 1, 'icon-zygl', 6, '0', '2017-11-29 11:30:52', '2018-05-14 22:12:48', 0);
INSERT INTO `sys_menu` VALUES (7, '部门管理', 'sys-dept', '', NULL, 1, 'icon-iconbmgl', 7, '0', '2018-01-20 13:17:19', '2018-05-14 22:11:16', 0);
INSERT INTO `sys_menu` VALUES (21, '用户列表', 'sys-user:list', '', 'post', 2, NULL, NULL, '1', '2017-11-07 20:58:05', '2019-11-06 13:57:44', 0);
INSERT INTO `sys_menu` VALUES (22, '用户新增', 'sys-user:add', '/platform-admin/user/**', 'POST', 2, NULL, NULL, '1', '2017-11-08 09:52:09', '2019-11-06 13:57:56', 0);
INSERT INTO `sys_menu` VALUES (23, '用户修改', 'sys-user:edit', '/platform-admin/user/**', 'PUT', 2, NULL, NULL, '1', '2017-11-08 09:52:48', '2019-11-06 13:58:10', 0);
INSERT INTO `sys_menu` VALUES (24, '用户删除', 'sys-user:del', '/platform-admin/user/**', 'DELETE', 2, NULL, NULL, '1', '2017-11-08 09:54:01', '2019-11-06 13:58:24', 0);
INSERT INTO `sys_menu` VALUES (31, '菜单查看', 'sys-menu:tree', '/platform-admin/menu/**', 'GET', 3, NULL, NULL, '1', '2017-11-08 09:57:56', '2019-11-06 14:00:03', 0);
INSERT INTO `sys_menu` VALUES (32, '菜单新增', 'sys-menu:add', '', 'POST', 3, NULL, NULL, '1', '2017-11-08 10:15:53', '2019-11-06 13:59:15', 0);
INSERT INTO `sys_menu` VALUES (33, '菜单修改', 'sys-menu:edit', '/platform-admin/menu/**', 'PUT', 3, NULL, NULL, '1', '2017-11-08 10:16:23', '2019-11-06 13:59:29', 0);
INSERT INTO `sys_menu` VALUES (34, '菜单删除', 'sys-menu:del', '/platform-admin/menu/**', 'DELETE', 3, NULL, NULL, '1', '2017-11-08 10:16:43', '2019-11-06 13:59:51', 0);
INSERT INTO `sys_menu` VALUES (41, '角色查看', 'sys-role:list', '/platform-admin/role/**', 'GET', 4, NULL, NULL, '1', '2017-11-08 10:14:01', '2018-02-04 13:55:06', 0);
INSERT INTO `sys_menu` VALUES (42, '角色新增', 'sys-role:add', '/platform-admin/role/**', 'POST', 4, NULL, NULL, '1', '2017-11-08 10:14:18', '2018-04-20 07:21:38', 0);
INSERT INTO `sys_menu` VALUES (43, '角色修改', 'sys-role:edit', '/platform-admin/role/**', 'PUT', 4, NULL, NULL, '1', '2017-11-08 10:14:41', '2018-04-20 07:21:50', 0);
INSERT INTO `sys_menu` VALUES (44, '角色删除', 'sys-role:del', '/platform-admin/role/**', 'DELETE', 4, NULL, NULL, '1', '2017-11-08 10:14:59', '2018-04-20 07:22:00', 0);
INSERT INTO `sys_menu` VALUES (45, '分配权限', 'sys-role:perm', '/platform-admin/role/**', 'PUT', 4, NULL, NULL, '1', '2018-04-20 07:22:55', '2018-04-20 07:24:40', 0);
INSERT INTO `sys_menu` VALUES (51, '日志查看', 'sys-log:list', '/platform-admin/log/**', 'GET', 5, NULL, NULL, '1', '2017-11-20 14:07:25', '2018-02-04 14:28:53', 0);
INSERT INTO `sys_menu` VALUES (52, '日志删除', 'sys-log:del', '/platform-admin/log/**', 'DELETE', 5, NULL, NULL, '1', '2017-11-20 20:37:37', '2017-11-28 17:36:52', 0);
INSERT INTO `sys_menu` VALUES (61, '字典查看', 'sys-dict:list', '/platform-admin/dict/**', 'GET', 6, NULL, NULL, '1', '2017-11-19 22:04:24', '2017-11-29 11:31:24', 0);
INSERT INTO `sys_menu` VALUES (62, '字典删除', 'sys-dict:del', '/platform-admin/dict/**', 'DELETE', 6, NULL, NULL, '1', '2017-11-29 11:30:11', '2018-01-07 15:40:51', 0);
INSERT INTO `sys_menu` VALUES (63, '字典新增', 'sys-dict:add', '/platform-admin/dict/**', 'POST', 6, NULL, NULL, '1', '2018-05-11 22:34:55', NULL, 0);
INSERT INTO `sys_menu` VALUES (64, '字典修改', 'sys-dict:edit', '/platform-admin/dict/**', 'PUT', 6, NULL, NULL, '1', '2018-05-11 22:36:03', NULL, 0);
INSERT INTO `sys_menu` VALUES (71, '部门查看', 'sys-dept:list', '/platform-admin/dept/**', 'GET', 7, NULL, NULL, '1', '2018-01-20 13:17:19', '2018-01-20 14:55:24', 0);
INSERT INTO `sys_menu` VALUES (72, '部门新增', 'sys-dept:add', '/platform-admin/dept/**', 'POST', 7, NULL, NULL, '1', '2018-01-20 14:56:16', '2018-01-20 21:17:57', 0);
INSERT INTO `sys_menu` VALUES (73, '部门修改', 'sys-dept:edit', '/platform-admin/dept/**', 'PUT', 7, NULL, NULL, '1', '2018-01-20 14:56:59', '2018-01-20 21:17:59', 0);
INSERT INTO `sys_menu` VALUES (74, '部门删除', 'sys-dept:del', '/platform-admin/dept/**', 'DELETE', 7, NULL, NULL, '1', '2018-01-20 14:57:28', '2018-01-20 21:18:05', 0);
INSERT INTO `sys_menu` VALUES (121013, '文件管理', 'sys-file', '', '', 1, '', 1, '0', '2019-11-06 17:08:15', '2019-11-06 17:08:15', 0);
INSERT INTO `sys_menu` VALUES (121014, '平台管理', 'platform', '', '', -1, '', 1, '0', '2019-11-06 17:24:16', '2019-11-06 17:24:16', 0);
INSERT INTO `sys_menu` VALUES (121015, '客户管理', 'platform-tenant', '', '', 121014, '', 1, '0', '2019-11-06 17:25:02', '2019-11-06 17:25:02', 0);
INSERT INTO `sys_menu` VALUES (121016, '审批管理', 'approval', '', '', -1, '', 1, '0', '2019-11-06 17:25:24', '2019-11-06 17:25:24', 0);
INSERT INTO `sys_menu` VALUES (121017, '模型管理', 'approval-model', '', '', 121016, '', 1, '0', '2019-11-06 17:25:47', '2019-11-06 17:25:47', 0);
INSERT INTO `sys_menu` VALUES (121018, '任务管理', 'approval-task', '', '', 121016, '', 1, '0', '2019-11-06 17:26:02', '2019-11-06 17:26:02', 0);
INSERT INTO `sys_menu` VALUES (121019, '我的审批', 'approval-myApproval', '', '', 121016, '', 1, '0', '2019-11-06 17:26:37', '2019-11-06 17:26:37', 0);
INSERT INTO `sys_menu` VALUES (121020, '系统监控', 'SysMonitoring', '', '', -1, '', 1, '0', '2019-11-06 17:28:41', '2019-11-06 17:28:41', 0);
INSERT INTO `sys_menu` VALUES (121021, '数据监控', 'sysMonitoring-data', '', '', 121020, '', 1, '0', '2019-11-06 17:29:53', '2019-11-06 17:29:53', 0);
INSERT INTO `sys_menu` VALUES (121022, '任务管理', 'sysMonitoring-task', '', '', 121020, '', 1, '0', '2019-11-06 17:31:25', '2019-11-06 17:31:25', 0);
INSERT INTO `sys_menu` VALUES (121023, '图标管理', 'platform-icons', '', '', 121014, '', 1, '0', '2019-11-06 17:36:42', '2019-11-06 17:36:42', 0);
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
                            `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
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
INSERT INTO `sys_role_menu` VALUES (1, 121013, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121014, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121015, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121016, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121017, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121018, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121019, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121020, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121021, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121022, 183);
INSERT INTO `sys_role_menu` VALUES (1, 121023, 183);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='定时任务实体';

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
                            `type` tinyint(1) DEFAULT '0' COMMENT '0-普通 1-管理员',
                            `salt` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '随机盐',
                            `real_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '姓名',
                            `mobile` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT '手机',
                            `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
                            `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
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
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 1, 0, NULL, 'admin', '13000000000', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 183, 0, 'admin@test.cn', '2018-10-19 16:50:50', '2019-09-01 13:42:30', 0);
INSERT INTO `sys_user` VALUES (1300003, 'admin1', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 1, 0, NULL, 'admin1', '13000000001', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 183, 0, 'admin@test.cn', '2018-10-19 16:50:50', '2019-09-01 13:42:30', 1);
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
