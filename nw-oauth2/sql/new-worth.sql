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

 Date: 07/08/2019 16:53:08
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
INSERT INTO `oauth_client_details` VALUES ('new-worth', 'admin', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', 'server', 'password,refresh_token,authorization_code', NULL, NULL, NULL, NULL, NULL, 'false');
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
INSERT INTO `sys_dept` VALUES ('1', '厦门学校', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', 'null', '1');
INSERT INTO `sys_dept` VALUES ('1540200000', '厦门学校教务管理部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1540201000', '厦门市思明区新东方教育培训学校客服部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1540300000', '厦门市思明区新东方教育培训学校校办', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1540400000', '厦门学校财务管理部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1540500000', '厦门学校资产管理部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1540600000', '厦门市思明区新东方教育培训学校成人部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1540700000', '厦门学校泡泡少儿部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1540800000', '厦门市思明区新东方教育培训学校VIP部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1541200000', '厦门市学校考试部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1541300000', '厦门学校英语学习部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1541400000', '厦门学校市场营销部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1541500000', '厦门学校优能中学部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1541600000', '厦门学校大愚书店', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1540500000', '1');
INSERT INTO `sys_dept` VALUES ('1541700000', '厦门学校校长办公室', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1541900000', '厦门学校人力资源部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1542000000', '厦门学校人力行政部行政', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '2200001558', '1');
INSERT INTO `sys_dept` VALUES ('1542100000', '厦门学校客户服务部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1542200000', '厦门学校教务客服部教务部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1542100000', '1');
INSERT INTO `sys_dept` VALUES ('1542300000', '厦门学校教务客服部呼叫中心部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1542100000', '1');
INSERT INTO `sys_dept` VALUES ('1542400000', '厦门学校教务客服部客服部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1542100000', '1');
INSERT INTO `sys_dept` VALUES ('1542500000', '厦门学校国内考试部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1542600000', '厦门学校国外考试部', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('1542700000', '厦门学校国外考试部北美项目', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1542600000', '1');
INSERT INTO `sys_dept` VALUES ('1542900000', '厦门学校国外考试部英联邦项目', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1542600000', '1');
INSERT INTO `sys_dept` VALUES ('1543000000', '厦门学校青少部东浦、前浦校区', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1540700000', '1');
INSERT INTO `sys_dept` VALUES ('1543100000', '厦门学校青少部东浦校区', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1540700000', '1');
INSERT INTO `sys_dept` VALUES ('1543200000', '厦门学校优能中学部高中英语组精品班', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543300000', '厦门学校优能中学部高中英语组个性化', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543400000', '厦门学校优能中学部高中英语组', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543500000', '厦门学校优能中学部初一初二英语组精品班', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543600000', '厦门学校优能中学部初一初二英语组个性化', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543700000', '厦门学校优能中学部初一初二英语组', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543800000', '厦门学校优能中学部个性化销售', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1543900000', '厦门学校优能中学部化学组精品班', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544000000', '厦门学校优能中学部化学组个性化', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544100000', '厦门学校优能中学部化学组', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544200000', '厦门学校优能中学部数学组精品班', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544300000', '厦门学校优能中学部数学组个性化', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544400000', '厦门学校优能中学部数学组', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544500000', '厦门学校优能中学部物理组精品班', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544600000', '厦门学校优能中学部物理组个性化', NULL, '2018-09-29 11:03:18', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544700000', '厦门学校优能中学部物理组', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544800000', '厦门学校优能中学部语文文综组精品班', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1544800001', '厦门学校优能中学稍微部初一初二英语组个性化初化升级的教务教育文综经典精品班级', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '0');
INSERT INTO `sys_dept` VALUES ('1544900000', '厦门学校优能中学部语文文综组', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545000000', '厦门学校优能中学部语文文综组个性化', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545100000', '厦门学校优能中学部个性化学管', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545200000', '厦门学校优能中学部中考英语组精品班', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545300000', '厦门学校优能中学部中考英语组个性化', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545400000', '厦门学校优能中学部中考英语组', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('1545500000', '厦门学校湖里分校', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('2200001049', '厦门学校优能一对一部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200001050', '厦门学校优能中学部精品班', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('2200001138', '厦门学校信息管理部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200001296', '厦门学校优能中学部酷学酷玩部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1541500000', '1');
INSERT INTO `sys_dept` VALUES ('2200001297', '厦门学校国外考试部出国VIP项目部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1542600000', '1');
INSERT INTO `sys_dept` VALUES ('2200001558', '厦门学校已撤销部门', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200001726', '厦门学校教学管理部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200002222', '厦门学校国际游学部', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200003333', '厦门学校EHR部门同步测试一', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '0');
INSERT INTO `sys_dept` VALUES ('2200003336', '厦门新东方漳州分校', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200003337', '厦门新东方泉州分校', NULL, '2018-09-29 11:03:17', '2018-12-06 16:50:25', '1', '1');
INSERT INTO `sys_dept` VALUES ('2200004387', '厦门学校校长办公室91团队', NULL, '2018-09-30 11:10:18', '2018-12-06 16:50:25', '1541700000', '1');
INSERT INTO `sys_dept` VALUES ('55', '厦门新东方泉州分校行政客服部', NULL, '2018-09-29 11:03:19', '2018-12-06 16:50:25', '2200003337', '0');
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
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_dict_value` (`value`) USING BTREE,
  KEY `sys_dict_label` (`label`) USING BTREE,
  KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (100, '10', '未开始', 'act_status', '打卡状态', 1, '2018-10-24 17:02:25', '2018-10-24 17:02:25', NULL, 0);
INSERT INTO `sys_dict` VALUES (101, '11', '进行中', 'act_status', '打卡状态', 1, '2018-10-24 17:02:26', '2018-10-24 17:02:26', NULL, 0);
INSERT INTO `sys_dict` VALUES (102, '12', '已结束', 'act_status', '打卡状态', 1, '2018-10-24 17:02:26', '2018-10-24 17:02:26', NULL, 0);
INSERT INTO `sys_dict` VALUES (103, '13', '已下线', 'act_status', '打卡状态', 1, '2018-10-24 17:02:26', '2018-10-24 17:02:26', NULL, 0);
INSERT INTO `sys_dict` VALUES (104, '10', '语文', 'act_subject', '科目', 1, '2018-10-24 17:04:29', '2018-10-24 17:04:29', NULL, 0);
INSERT INTO `sys_dict` VALUES (105, '11', '数学', 'act_subject', '科目', 1, '2018-10-24 17:04:29', '2018-10-24 17:04:29', NULL, 0);
INSERT INTO `sys_dict` VALUES (106, '12', '英语', 'act_subject', '科目', 1, '2018-10-24 17:04:29', '2018-10-24 17:04:29', NULL, 0);
INSERT INTO `sys_dict` VALUES (107, '10', '连续打卡', 'com_type', '兑换类型', 1, '2018-10-26 16:17:51', '2018-10-26 16:17:51', NULL, 0);
INSERT INTO `sys_dict` VALUES (108, '11', '直接兑换', 'com_type', '兑换类型', 1, '2018-10-26 16:17:51', '2018-10-26 16:17:51', NULL, 0);
INSERT INTO `sys_dict` VALUES (110, '10', '一年级', 'stu_grade', '年级', 1, '2018-11-05 11:38:38', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (111, '11', '二年级', 'stu_grade', '年级', 2, '2018-11-05 11:39:21', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (112, '12', '三年级', 'stu_grade', '年级', 3, '2018-11-05 11:39:39', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (113, '13', '四年级', 'stu_grade', '年级', 4, '2018-11-05 11:40:02', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (114, '14', '五年级', 'stu_grade', '年级', 5, '2018-11-05 11:40:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (115, '15', '六年级', 'stu_grade', '年级', 6, '2018-11-05 11:40:22', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (120, '10', '泡泡币', 'act_type', '活动奖励类型', 1, '2018-11-07 16:20:01', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (121, '11', '商品', 'act_type', '活动奖励类型', 2, '2018-11-07 16:20:16', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (122, '10', '选择题', 'qus_type', '问题类型', 1, '2018-11-07 16:24:27', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (123, '11', '阅读题', 'qus_type', '问题类型', 2, '2018-11-07 16:24:47', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (130, '11', '泡泡少儿', 'business_dept', '业务部门', 1, '2018-11-26 15:43:21', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (131, '12', '优能中学', 'business_dept', '业务部门', 2, '2018-11-26 15:43:21', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (132, '13', '国内外考试', 'business_dept', '业务部门', 3, '2018-11-26 15:43:21', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (150, '10', '咨询课程', 'csq_business_type', '问卷业务类型', 1, '2018-12-12 15:26:37', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (151, '11', '办理事务（转班、退班、延期挂起）', 'csq_business_type', '问卷业务类型', 2, '2018-12-12 15:27:14', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (152, '12', '投诉（服务监督电话：0592-5921888）', 'csq_business_type', '问卷业务类型', 3, '2018-12-12 15:27:37', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (153, '10', '完全匿名', 'csq_submit_type', '提交类型', 1, '2018-12-12 15:47:10', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (154, '11', '需要反馈', 'csq_submit_type', '提交类型', 2, '2018-12-12 15:47:28', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (155, '10', '前台环境', 'service_category', '质检评分类型', 1, '2018-12-20 09:55:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (156, '11', '仪容仪表/接待礼仪/考勤', 'service_category', '质检评分类型', 2, '2018-12-20 09:55:39', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES (157, '12', '日常事务处理', 'service_category', '质检评分类型', 3, '2018-12-20 09:56:03', NULL, NULL, 0);
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
  `id` bigint(20) NOT NULL COMMENT '菜单ID',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

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
INSERT INTO `sys_menu` VALUES (100, '客户端管理', '', '', '', 1, 'icon-bangzhushouji', 9, '0', '2018-01-20 13:17:19', '2018-05-15 21:28:10', 0);
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
INSERT INTO `sys_position` VALUES ('10003823', '厦门学校校长办公室校长', 'null', '183', '校长', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003824', '厦门学校人力资源部总监', '10003823', '183', '人力资源部总监', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003825', '厦门学校人力资源部薪酬福利专员', '10003824', '183', '薪酬福利专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003826', '厦门学校人力资源部招聘专员（撤销）', '10003824', '183', '招聘专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003827', '厦门学校人力资源部员工关系专员', '10046051', '183', '专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003828', '厦门学校资产管理部网管', '10008606', '183', '网管', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003829', '厦门学校校长办公室行政秘书', '10003824', '183', '行政秘书', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003830', '厦门学校校长办公室司机', '10033822', '183', '司机', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003831', '厦门学校资产管理部保安', '10008606', '183', '保安', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003832', '厦门学校资产管理部保洁', '10008606', '183', '保洁', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003834', '厦门学校资产管理部助理主管（撤销）', '10008606', '183', '助理主管', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003835', '厦门学校资产管理部采购专员', '10008606', '183', '采购专员', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003836', '厦门学校资产管理部电工', '10008606', '183', '电工', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003837', '厦门学校资产管理部仓库管理员', '10008606', '183', '仓库管理员', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003838', '厦门学校市场营销部总监', '10003823', '183', '市场营销部总监', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003839', '厦门学校市场营销部国内外部市场专员', '10019897', '183', '支持组市场专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003840', '厦门学校优能一对一教研组长（撤销）', '10008609', '183', '优能一对一教研组长', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003841', '厦门学校市场营销部推广组主管（撤销）', '10003838', '183', '市场营销部推广组主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003842', '厦门学校市场营销部网络推广专员（撤销）', '10007940', '183', '网络推广专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003843', '厦门学校品牌组设计专员', '10032690', '183', '品牌组设计专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003844', '厦门学校财务管理部总监', '10003823', '183', '财务管理部总监', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003845', '厦门学校财务管理部会计', '10003844', '183', '会计', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003846', '厦门学校财务管理部出纳', '10003844', '183', '出纳', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003847', '厦门学校大愚书店营业员', '10003848', '183', '书店营业员', '1541600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003848', '厦门学校客户服务部经理', '10003823', '183', '客户服务部经理', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003849', '厦门学校教务管理部个性化教务主管', '10003852', '183', '个性化教务主管', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003850', '厦门学校优能中学部合同班产品主管', '10043555', '183', '优能合同班产品主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003851', '厦门学校教务管理部个性化教务专员', '10003849', '183', '个性化教务', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003852', '厦门学校教务管理部总监', '10003823', '183', '教务经理', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003853', '厦门学校客户服务部呼叫中心主管', '10003848', '183', '呼叫中心主管', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003854', '厦门学校国外考试英联邦项目部雅思阅读组组长（撤销）', '10003884', '183', '雅思阅读组组长', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003855', '厦门学校新媒体中心呼叫客服', '10003848', '183', '新媒体中心呼叫客服', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003856', '厦门学校泡泡少儿部小升初英语教师（撤销）', '10003878', '183', '小升初英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003857', '厦门学校优能中学部思北校区主任（撤销）', '10003906', '183', '思北校区主任', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003858', '厦门学校客户服务部培训质检专员', '10003848', '183', '培训专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003859', '厦门学校泡泡少儿部幼少儿英语教师', '10046728', '183', '幼少儿英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003860', '厦门学校泡泡少儿部育秀校区主任（撤销）', '10022604', '183', '泡泡少儿部育秀校区主', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003861', '厦门学校客户服务部培训质检专员', '10003848', '183', '教务培训质检专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003862', '厦门学校优能中学部嘉禾校区主管助理', '10021438', '183', '优能中学嘉禾校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003863', '厦门学校国内考试部教师', '10047771', '183', '国内考试部教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003864', '厦门学校国内考试部兼职教师', '10009636', '183', '国内考试部兼职教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003865', '厦门学校泡泡少儿部英语项目经理', '10003893', '183', '少儿英语产品经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003866', '厦门学校泡泡少儿部新概念负责人', '10003865', '183', '新概念负责人', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003867', '厦门学校国外考试部经理', '10003823', '183', '国外考试部经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003868', '厦门学校国外考试部市场推广组组长', '10003867', '183', '组长', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003869', '厦门学校国外考试部教研主管', '10003867', '183', '国外考试部教研主管', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003870', '厦门学校出国VIP项目部主管', '10008603', '183', '出国VIP项目部主管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003871', '厦门学校出国VIP项目部顾问学管经理', '10019899', '183', '出国VIP项目部顾问', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003872', '厦门学校国外考试部出国VIP项目部源昌校区学习管理师', '10029135', '183', '出国VIP源昌学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003873', '厦门学校出国VIP项目部源昌校区顾问', '10029135', '183', '出国VIP源昌顾问', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003874', '厦门学校泉州分校出国VIP项目学习管理师', '10026194', '183', '泉州出国VIP部学管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003875', '厦门学校泡泡少儿部新概念英语教师', '10003865', '183', '新概念英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003876', '厦门学校北美项目部兼职托福助教', '10003867', '183', '兼职托福助教', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003877', '厦门学校北美项目部托福教师', '10003869', '183', '托福教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003878', '厦门学校泡泡少儿部小升初负责人', '10003894', '183', '小升初负责人', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003879', '厦门学校客户服务部助理经理', '10003848', '183', '客户服务部助理经理', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003880', '厦门学校国外考试北美项目部托福阅读组组长', '10008603', '183', '托福阅读组组长', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003881', '厦门学校国外考试北美项目部托福写作组组长', '10008603', '183', '托福写作组组长', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003882', '厦门学校国外考试北美项目部托福听力组组长', '10008603', '183', '托福听力组组长', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003883', '厦门学校北美项目部托福教师', '10003867', '183', '教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003884', '厦门学校国外考试英联邦项目部负责人', '10003867', '183', '英联邦项目部负责人', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003885', '厦门学校英联邦项目部雅思教师', '10003869', '183', '雅思教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003886', '厦门学校英联邦项目部兼职雅思教师', '10003869', '183', '教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003887', '厦门学校国外考试部数据专员', '10003867', '183', '国外考试部数据专员', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003888', '厦门学校优能中学校区市场专员', '10048263', '183', '优能中学校区市场专员', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003889', '厦门学校泡泡少儿部思北校区学习中心主管', '10022604', '183', '思北校区学习中心主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003893', '厦门学校泡泡少儿部总监', '10003823', '183', '泡泡少儿部总监', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003894', '厦门学校泡泡少儿部英语项目负责人', '10003893', '183', '泡泡少儿部英语项目负', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003895', '厦门学校泡泡少儿部市场主管', '10003893', '183', '泡泡少儿部市场主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003896', '厦门学校泡泡少儿部新概念英语教师', '10046423', '183', '泡泡少儿英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003897', '厦门学校泡泡少儿部行政助理', '10003893', '183', '泡泡少儿部行政助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003898', '厦门学校泡泡少儿课程顾问', '10019917', '183', '泡泡少儿课程顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003899', '厦门学校泡泡少儿部学习管理师', '10003893', '183', '管理师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003900', '厦门学校泡泡少儿部前埔校区主任', '10003893', '183', '前埔校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003901', '厦门学校泡泡少儿部语文教师', '10029538', '183', '泡泡少儿语文教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003902', '厦门学校泡泡少儿部数学教师', '10029539', '183', '泡泡少儿数学教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003903', '厦门学校泡泡少儿部英语项目教研组长', '10007993', '183', '泡泡少儿部英语项目教', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003904', '厦门学校泡泡少儿部客服主管', '10003893', '183', '泡泡少儿部客服主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003905', '厦门学校泡泡少儿部全科项目负责人', '10003893', '183', '泡泡少儿部全科项目负', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003906', '厦门学校优能中学部总监', '10003823', '183', '优能中学部总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003907', '厦门学校泡泡少儿部课程规划师', '10025007', '183', '泡泡课程规划师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003908', '厦门学校泡泡少儿部学习中心主管', '10003893', '183', '泡泡少儿学习中心主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003909', '厦门学校泡泡少儿部行政主管', '10003893', '183', '泡泡少儿部行政主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003910', '厦门学校优能中学部精品班高中英语教师', '10045845', '183', '精品班高中英语教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003911', '厦门学校优能中学部精品班兼职高中英语教师', '10009704', '183', '精品班兼职高中英语教', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003912', '厦门学校优能一对一部高中英语教师', '10012559', '183', '一对一高中英语教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003913', '空余岗位号', '10003908', '183', '教师', '1543300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003914', '空余岗位号', '10003908', '183', '教师', '1543400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003915', '厦门学校优能中学部思北美仁镇海校区主任', '10003906', '183', '思北美仁镇海校区主任', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003916', '空余岗位号', '10003915', '183', '教师', '1543500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003917', '空余岗位号', '10003915', '183', '教师', '1543600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003918', '厦门学校国内考试部听力教师', '10019175', '183', '国内考试部听力教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003919', '厦门学校优能中学部精品班初中英语主管', '10009704', '183', '初中英语教研组长', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003920', '厦门学校优能中学部精品班兼职初中英语教师', '10003919', '183', '精品班兼职初中英语教', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003921', '厦门学校优能中学部主管运营助理', '10003906', '183', '优能中学部主管运营助', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003922', '厦门学校优能一对一部育秀校区课程顾问', '10027344', '183', '育秀优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003923', '厦门学校优能中学部行政专员', '10003906', '183', '优能中学部行政专员', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003924', '厦门学校国内考试部词汇语法教师', '10019175', '183', '国内考试部词汇语法教', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003925', '厦门学校国外考试部英联邦项目雅思基础教师', '10052829', '183', '英联邦雅思基础教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003926', '厦门学校优能中学部精品班高中化学教师', '10039171', '183', '精品班高中化学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003927', '厦门学校优能中学部精品班高中生物教师', '10039166', '183', '精品班高中生物教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003928', '厦门学校国外考试英联邦项目部雅思口语组教师', '10019899', '183', '雅思口语组教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003929', '厦门学校优能中学部精品班初中化学教师', '10048267', '183', '精品班初中化学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003930', '厦门学校国外考试部北美项目托福基础教师', '10019916', '183', '托福基础教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003931', '厦门学校国内考试部教研组长', '10009636', '183', '国内考试部教研组长', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003932', '厦门学校优能中学部精品班初中数学教师', '10048265', '183', '精品班初中数学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003933', '厦门学校国外考试英联邦项目部雅思写作组组长', '10003884', '183', '雅思写作组组长', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003934', '厦门学校英语学习部综合能力组组长', '10003970', '183', '综合能力组组长', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003935', '厦门学校国外考试部北美项目托福强化教师', '10019916', '183', '托福强化教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003936', '厦门学校国外考试部SAT/ACT项目教师', '10019916', '183', 'SAT/ACT教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003937', '厦门学校优能一对一部初中数学教师', '10012562', '183', '一对一初中数学教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003938', '厦门学校国外考试部英联邦项目雅思强化教师', '10029869', '183', '英联邦雅思强化教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003939', '厦门学校优能一对一部高中数学教师', '10052305', '183', '一对一高中数学教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003940', '厦门学校优能中学部精品班高中数学教师', '10048268', '183', '精品班高中数学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003941', '厦门学校优能中学部精品班兼职初中数学教师', '10003840', '183', '精品班兼职初中数学教', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003942', '厦门学校英语学习部教师', '10019901', '183', '倍学口语组教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003943', '厦门学校英语学习部倍学口语组教师', '10019916', '183', '倍学口语组教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003944', '厦门学校国内考试部写作教师', '10003931', '183', '国内考试部写作教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003945', '厦门学校国内考试部综合教师', '10003931', '183', '国内考试部综合教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003946', '空余岗位号', '10003906', '183', '教研组长', '1544500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003947', '厦门学校优能中学部精品班高中物理教师', '10039166', '183', '精品班高中物理教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003948', '空余岗位号', '10003946', '183', '教师', '1544500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003949', '厦门学校优能一对一部高中语文教师', '10021441', '183', '一对一高中语文教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003950', '厦门学校优能中学部莲花校区主管助理', '10012604', '183', '莲花校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003951', '空余岗位号', '10003946', '183', '兼职教师', '1544600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003952', '空余岗位号', '10003946', '183', '兼职教师', '1544600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003953', '厦门学校优能一对一部高中物理教师', '10039204', '183', '一对一高中物理教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003954', '厦门学校优能中学部精品班初中物理教师', '10030663', '183', '精品班初中物理教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003955', '厦门学校优能一对一顾问主管', '10023742', '183', '顾问主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003956', '厦门学校国外考试部主管助理', '10003867', '183', '国外考试部主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003957', '厦门学校优能中学部精品班高中语文教师', '10021441', '183', '精品班高中语文教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003958', '厦门学校优能中学部精品班高中历史教师', '10007949', '183', '精品班高中历史教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003959', '厦门学校优能中学部精品班高中地理教师', '10021441', '183', '精品班高中地理教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003960', '厦门学校英语学习部倍学口语组组长', '10003970', '183', '倍学口语组组长', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003961', '厦门学校泡泡少儿部数学项目主管', '10003893', '183', '泡泡少儿数学项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003962', '厦门学校优能一对一兼职高中地理教师（撤销）', '10003840', '183', '优能一对一兼职高中地', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003963', '厦门学校国外考试部北美美高教师', '10019916', '183', '北美美高教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003964', '厦门学校优能中学部精品班初中语文教师', '10021444', '183', '精品班初中语文教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003965', '厦门学校优能一对一部育秀校区学习管理师', '10027344', '183', '育秀优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003966', '厦门学校优能一对一部高中化学教师', '10043556', '183', '一对一高中化学教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003967', '厦门学校泉州分校英联邦项目教师', '10028351', '183', '泉州英联邦项目教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003968', '厦门学校英语学习部综合能力组词汇语法教师', '10003934', '183', '综合能力组词汇语法教', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003969', '厦门学校英语学习部综合能力组德语教师', '10003934', '183', '德语教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003970', '厦门学校英语学习部经理', '10003823', '183', '英语学习部经理', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003971', '厦门学校英语学习部教师', '10003970', '183', '英语学习部教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003972', '厦门学校英语学习部倍学口语组教师', '10019916', '183', '倍学口语组教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003973', '厦门学校湖里分校销售组长', '10003862', '183', '销售组长', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003974', '厦门学校优能中学部湖里校区前台客服', '10003973', '183', '湖里校区前台客服', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10003975', '厦门学校湖里分校学习管理师', '10003973', '183', '学习管理师', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10006213', '厦门学校国外考试部部门招聘助理', '10008603', '183', '国外考试部部门招聘助', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10006214', '厦门学校泉州分校北美项目教师', '10029870', '183', '泉州北美项目教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10006418', '厦门学校优能中学部大区主管助理', '10003915', '183', '大区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10006419', '厦门学校教务管理部国外、国内考试教务专员', '10003849', '183', '国内外教务', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007890', '厦门学校国外考试部市场专员', '10003867', '183', '厦门学校国外考试部市', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007892', '厦门学校客户服务部呼叫中心外呼顾问', '10022792', '183', '呼叫中心外呼顾问', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007893', '空余岗位号', '10003853', '183', '厦门厦门学校教务客服', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007926', '空余岗位号', '10003862', '183', '厦门学校湖里分校少儿', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007931', '空余岗位号', '10003862', '183', '厦门学校湖里分校英语', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007932', '厦门学校湖里分校客服专员', '10003862', '183', '湖里分校客服专员', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007933', '厦门学校泡泡少儿部师训组长', '10003905', '183', '泡泡少儿部师训组长', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007934', '厦门学校泡泡少儿部主管秘书', '10003893', '183', '泡泡少儿部主管秘书', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007936', '空余岗位号', '10003893', '183', '前埔校区前台', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007937', '空余岗位号', '10003894', '183', '厦门学校青少部前埔和', '1543000000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007939', '厦门学校湖里分校市场专员', '10003862', '183', '湖里分校市场专员', '1545500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007940', '厦门学校市场营销部网络推广经理', '10003838', '183', '网络推广主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007942', '空余岗位号', '10003838', '183', '厦门学校市场部网络编', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007945', '空余岗位号', '10003903', '183', '厦门学校优能中学高中', '1543400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007947', '空余岗位号', '10003924', '183', '厦门学校优能中学部化', '1544100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007949', '厦门学校优能中学部精品班文综组教研组长', '10007997', '183', '精品班文综组教研组长', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007963', '厦门学校优能一对一学管主管', '10023742', '183', '学管主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007967', '厦门学校市场营销部推广组活动推广专员', '10003841', '183', '推广组活动推广专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007974', '厦门学校优能一对一部初中英语教师', '10012560', '183', '一对一初中英语教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007977', '空余岗位号', 'null', '183', '厦门学校优能中学部初', '1543300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007978', '厦门学校优能中学部精品班文综教师', '10021441', '183', '精品班文综教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007980', '空余岗位号（撤销）', '10003955', '183', '厦门学校优能中学部语', '1544900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007981', '空余岗位号', '10003906', '183', '厦门学校优能中学组高', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007983', '厦门学校优能中学部精品班理综教研组长', '10003906', '183', '精品班理综教研组长', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007984', '厦门学校市场营销部品牌组主管', '10003838', '183', '市场营销部品牌组主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007989', '厦门学校湖里分校少儿英语教师', '10003862', '183', '湖里分校少儿', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007990', '厦门学校优能中学部合同班初中英语教师', '10003850', '183', '合同班初中英语教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007991', '厦门学校湖里校区初中数学教师', '10003862', '183', '厦门学校湖里校区初中', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007992', '厦门学校泡泡少儿部客服专员', '10003860', '183', '泡泡少儿部客服专员', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007993', '厦门学校泡泡少儿部英语项目主管', '10003893', '183', '泡泡少部英语项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007995', '厦门学校市场营销部推广组策划专员', '10003838', '183', '推广组策划专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007996', '厦门学校国外考试英联邦项目部雅思口语组组长', '10003884', '183', '雅思口语组组长', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007997', '厦门学校优能中学部全科主管', '10003906', '183', '优能全科主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10007998', '厦门学校客户服务部收银员', '10003858', '183', '客户服务部收银员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008000', '厦门学校国外考试英联邦项目部雅思听力组组长', '10003884', '183', '雅思听力组组长', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008001', '厦门学校优能中学部精品班高中数学组教研组长', '10007997', '183', '精品班高中数学组教研', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008096', '厦门学校英语学习部课程顾问', '10022581', '183', '英语学习部课程顾问', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008574', '厦门学校国外考试北美项目部托福口语组组长', '10008603', '183', '托福口语组组长', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008588', '厦门学校出国VIP项目部学管经理', '10029135', '183', '出国VIP项目部学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008603', '厦门学校国外考试部总监', '10003823', '183', '国外考试部总监', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008605', '厦门学校国外考试部市场推广专员', '10003868', '183', '国外考试部市场推广专', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008606', '厦门学校资产管理部总监', '10003823', '183', '资产管理部总监', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008607', '厦门学校优能中学部酷学酷玩主管', '10003867', '183', '酷学酷玩主管', '2200001296', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008609', '厦门学校优能一对一主管（撤销）', '10003906', '183', '优能一对一主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008611', '厦门学校泡泡少儿部幼儿组英语教师', '10003865', '183', '幼儿组英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008613', '厦门学校泡泡少儿部幼儿组负责人', '10003894', '183', '泡泡少儿部幼儿组负责', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008617', '厦门学校泡泡少儿部镇海校区学习中心主管', '10003893', '183', '镇海校区学习中心主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10008618', '厦门学校市场营销部支持组主管', '10003838', '183', '市场营销部支持组主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009106', '厦门学校泡泡少儿部市场专员', '10003895', '183', '泡泡少儿部市场专员', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009470', '厦门学校优能中学部英语项目主管', '10003906', '183', '优能中学英语项目主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009472', '厦门学校北美项目部托福教师', '10003869', '183', '兼职托福教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009636', '厦门学校国内考试部经理', '10003823', '183', '国内考试部经理', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009704', '厦门学校优能中学部初中部经理', '10003906', '183', '优能初中部经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10009709', '厦门学校湖里分校个性化初中英语教师', '10008609', '183', '湖里分校初中英语教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10011764', '厦门学校优能一对一部初中语文教师', '10048272', '183', '一对一初中语文教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012559', '厦门学校优能一对一部高中英语组教研主管', '10028935', '183', '一对一高中英语主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012560', '厦门学校优能一对一部初中英语组教研主管', '10028935', '183', '一对一初中英语主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012561', '厦门学校优能一对一部高中数学组教研主管', '10028935', '183', '一对一高中数学主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012562', '厦门学校优能一对一部初中数学组教研主管', '10028935', '183', '一对一初中数学主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012563', '厦门学校优能中学部精品班初中数学组教研组长', '10007997', '183', '优能中学部精品班初中', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012604', '厦门学校优能中学部莲花校区主管', '10021438', '183', '优能中学莲花校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012605', '厦门学校国内考试部集美校区主任', '10019175', '183', '集美校区主任', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012606', '厦门学校泡泡少儿部东浦校区主任', '10022604', '183', '东浦校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012833', '厦门学校优能中学部精品班晚辅教师', '10003906', '183', '精品班晚辅教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10012959', '厦门学校优能中学部酷学酷玩专员', '10008607', '183', '酷学酷玩专员', '2200001296', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10013151', '厦门学校校长办公室校长助理', '10003823', '183', '校长助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10013201', '厦门学校优能中学部镇海校区主管', '10021438', '183', '优能镇海校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10013401', '厦门学校信息管理部经理', '10003823', '183', '信息管理部经理', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10013760', '厦门学校英语学习部德语教师', '10003970', '183', '德语教师', '1541300000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10014224', '厦门学校信息管理部JAVA开发工程师', '10013401', '183', 'Java开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015537', '厦门学校财务管理部会计主管', '10003844', '183', '会计主管', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015538', '厦门学校教学管理部经理', '10003823', '183', '教学管理部经理', '2200001726', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015539', '厦门学校教学管理部总监', '10003823', '183', '教学管理部总监', '2200001726', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015540', '厦门学校人力资源部招聘专员', '10029548', '183', '招聘专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015580', '厦门学校人力资源部企业文化专员', '10030745', '183', '企业文化专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10015666', '厦门学校优能中学部中学市场经理', '10003823', '183', '优能中学市场经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10016393', '厦门学校出国VIP项目部美仁宫校区主管助理', '10025503', '183', '美仁宫主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10016560', '厦门学校信息管理部UI设计师', '10031486', '183', 'UI设计师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10017808', '厦门学校优能中学部莲花湖里瑞景校区总监', '10003906', '183', '校区总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10017963', '厦门新东方学校优能中学一对一初中化学教师（撤销）', '10008609', '183', '一对一初中化学教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018024', '厦门学校优能中学部合同班初中数学教师', '10003850', '183', '合同班初中数学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018026', '厦门学校优能中学部合同班初中物理教师', '10003850', '183', '合同班初中物理教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018027', '厦门学校优能一对一部初中化学教师', '10048271', '183', '一对一初中化学教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018032', '厦门学校优能中学部瑞景校区主任', '10021438', '183', '瑞景校区主任', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018033', '厦门学校优能中学部瑞景校区主管助理', '10029534', '183', '瑞景校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018157', '厦门学校市场营销部市场助理', '10015666', '183', '市场助理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018167', '厦门学校优能一对一文综教师', '10021441', '183', '优能一对一文综教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10018385', '厦门学校市场营销部泡泡市场主管', '10003893', '183', '泡泡市场主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019043', '厦门学校客户服务部培训质检专员', '10003848', '183', '客户服务部培训质检专', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019158', '厦门学校泡泡少儿部育秀校区总监', '10003893', '183', '泡泡少儿育秀校区总监', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019174', '厦门学校优能中学部湖里校区主任助理', '10003862', '183', '湖里校区主任助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019175', '厦门学校国内考试部总监', '10019899', '183', '国内考试部总监', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019213', '厦门学校国外考试北美项目部美国高中项目教师', '10019899', '183', '美国高中项目教师', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019225', '厦门学校优能中学部育秀校区总监', '10003906', '183', '育秀校区总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019310', '厦门学校人力资源部培训专员', '10051124', '183', '培训专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019365', '厦门学校优能一对一部高中地理教师', '10021441', '183', '一对一高中地理教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019407', '厦门学校优能中学部精品班初中英语培优项目教研组长', '10003906', '183', '精品班初中英语培优教', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019460', '厦门学校优能中学部精品班初中英语培优项目教师', '10019407', '183', '精品班初中英语培优教', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019730', '厦门学校优能一对一部高中生物教师', '10039204', '183', '一对一高中生物教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019833', '厦门学校北美精英计划项目高级专员', '10019899', '183', '经营计划项目高级专', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019896', '厦门学校国外考试部大学生校区总监', '10022581', '183', '大学生校区总监', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019897', '厦门学校市场营销部国内外部市场经理', '10019899', '183', '国内外市场主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019898', '厦门学校美高项目负责人', '10019899', '183', '美高项目负责人', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019899', '厦门学校国外考试部总监', '10003823', '183', '国外考试部总监', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019900', '厦门学校国外考试部英联邦项目雅思VIP项目经理', '10019899', '183', '雅思VIP项目负责人', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019901', '厦门学校国外考试部英联邦项目雅思项目经理', '10019899', '183', '雅思项目经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019902', '厦门学校国外考试部SAT/ACT项目经理', '10019899', '183', '雅思基础段负责人', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019903', '厦门学校优能中学部思北镇海文灶校区主任', '10003906', '183', '校区总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019904', '厦门学校优能中学部莲花湖里瑞景校区主任', '10003906', '183', '校区总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019905', '厦门学校优能中学部育秀校区主任', 'null', '183', '校区总监', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019908', '厦门学校优能中学部精品班文数组长', '10003906', '183', '精品班文数组长', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019909', '厦门学校优能中学部精品班中学地理教师', '10021441', '183', '精品班中学地理教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019910', '厦门学校优能中学部精品班中学英语教师', '10009704', '183', '精品班中学英语教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019914', '厦门学校优能一对一中学物理教师（撤销）', '10021445', '183', '一对一中学物理教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019915', '厦门学校优能一对一部初中物理教师', '10048269', '183', '一对一初中物理教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019916', '厦门学校国内外考试部北美项目经理', '10003823', '183', '北美项目经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019917', '厦门学校泡泡少儿部瑞景校区主任', '10022604', '183', '瑞景校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019918', '厦门学校泡泡少儿部镇海校区主管', '10029531', '183', '泡泡镇海校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019919', '厦门学校泡泡少儿部思北校区主任', '10003893', '183', '思北校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019922', '厦门学校优能中学部文灶校区主任', '10021438', '183', '文灶校区主任', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019923', '厦门学校优能中学部文灶校区主任助理', '10019922', '183', '文灶校区主任助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019933', '厦门学校出国VIP项目部大学生校区学习管理师', '10022581', '183', '大学生校区学习管理师', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019934', '厦门学校出国VIP项目部集美校区顾问', '10046715', '183', '出国VIP集美顾问', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019935', '厦门学校客户服务部嘉禾校区客服专员', '10003862', '183', '嘉禾客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019936', '厦门学校客户服务部集美校区客服专员', '10003848', '183', '集美客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019937', '厦门学校客户服务部美仁校区客服专员', '10025503', '183', '美仁客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019938', '厦门学校客户服务部瑞景校区客服专员', '10029534', '183', '瑞景客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019939', '厦门学校客户服务部思北校区客服专员', '10021438', '183', '思北客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019940', '厦门学校客户服务部文灶校区客服专员', '10023581', '183', '文灶客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019941', '厦门学校客户服务部育秀校区客服专员', '10021439', '183', '育秀客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019942', '厦门学校客户服务部镇海校区客服专员', '10013201', '183', '镇海客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019943', '厦门学校泡泡少儿部东浦客服专员', '10003893', '183', '泡泡东浦客服专员', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019944', '厦门学校泡泡少儿部育秀校区精品班课程顾问', '10035850', '183', '泡泡育秀精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019945', '厦门学校国内外考试部大学校区市场专员', '10038364', '183', '大学校区市场专员', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019946', '厦门学校泡泡少儿部泡泡校区市场专员', '10031909', '183', '泡泡校区市场专员', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019947', '厦门学校市场营销部瑞景推广组策划专员', '10018032', '183', '瑞景推广组策划专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019948', '厦门学校市场营销部文灶推广组策划专员', '10019922', '183', '文灶推广组策划专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019949', '厦门学校市场营销部中学推广组策划专员', '10015666', '183', '推广组策划专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019950', '厦门学校优能一对一部嘉禾校区课程顾问', '10003862', '183', '嘉禾优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019951', '厦门学校优能一对一部嘉禾校区学习管理师', '10003862', '183', '嘉禾优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019952', '厦门学校优能一对一部瑞景校区课程顾问', '10029534', '183', '瑞景优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019953', '厦门学校优能一对一部瑞景校区学习管理师', '10029534', '183', '瑞景优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019954', '厦门学校优能一对一部思北校区课程顾问', '10029528', '183', '思北优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019955', '厦门学校优能一对一部思北校区学习管理师', '10029528', '183', '思北优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019956', '厦门学校优能一对一部文灶校区学习管理师', '10023581', '183', '文灶优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019957', '厦门学校优能一对一部镇海校区课程顾问', '10013201', '183', '镇海优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019958', '厦门学校优能一对一部镇海校区学习管理师', '10013201', '183', '镇海优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019966', '厦门学校优能中学部合同班初中化学教师', '10003850', '183', '合同班初中化学教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019967', '厦门学校优能中学部精品班初中英语教师', '10053114', '183', '精品班初中英语教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019968', '厦门学校优能中学部合同班初中语文教师', '10003850', '183', '合同班初中语文教师', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019969', '厦门学校优能中学部一对一高中地理教师', '10021441', '183', '一对一高中地理教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10019970', '厦门学校市场营销部国内外推广组策划专员', '10019897', '183', '国内外推广组策划专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020066', '厦门学校泡泡少儿部金榜校区主任', '10022604', '183', '泡泡少儿金榜校区主任', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020067', '厦门学校泡泡少儿部瑞景校区精品班课程顾问', '10024583', '183', '泡泡瑞景精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020069', '厦门学校泡泡少儿部金榜校区精品班课程顾问', '10033479', '183', '泡泡金榜精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020070', '厦门学校泡泡少儿部育秀校区客服专员', '10003860', '183', '泡泡少儿育秀客服专员', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020093', '厦门学校客户服务部莲花校区客服专员', '10012604', '183', '莲花客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020116', '厦门学校国外考试部大学生校区总监', '10003870', '183', '大学生校区总监', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020117', '厦门学校优能一对一部文灶校区课程顾问', '10023581', '183', '文灶优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020118', '厦门学校优能一对一部莲花校区学习管理师', '10012604', '183', '莲花优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10020490', '厦门学校校长办公室校办主任', '10003823', '183', '校长办公室校办主任', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021363', '厦门学校泡泡少儿部语文项目经理', '10003893', '183', '泡泡少儿语文项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021438', '厦门学校优能中学部校区运营经理', '10003823', '183', '优能中学校区运营经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021439', '厦门学校优能中学部分校二区经理', '10003906', '183', '优能中学分校二区经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021440', '厦门学校优能中学部高中部经理', '10003906', '183', '优能高中部经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021441', '厦门学校优能中学部精品班高中语文文综项目主管助理', '10043555', '183', '优能精品班中文综主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021442', '厦门学校优能中学部精品班初中副经理', '10003906', '183', '优能精品班初中副经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021443', '厦门学校优能中学部精品班初中数学主管', '10043555', '183', '优能精品初中数学主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021444', '厦门学校优能中学部精品班初中语文主管', '10043555', '183', '优能精品班初语主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021445', '厦门学校优能中学部精品班高中物理主管', '10021440', '183', '优能精品高中物理主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021446', '厦门学校优能中学部精品班高中数学主管', '10043555', '183', '优能精品高中数学主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021466', '厦门学校优能中学部高中精品班运营助理', '10021440', '183', '优能高中精品运营助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021467', '厦门学校优能中学部精品班高中化学主管', '10043555', '183', '优能精品高中化学主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021510', '厦门学校泡泡少儿部语文项目主管', '10003893', '183', '泡泡少儿语文项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021511', '厦门学校泡泡少儿部语文项目主管', '10003893', '183', '泡泡少儿语文项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021513', '厦门学校泡泡少儿部语文项目主管', '10003893', '183', '泡泡少儿语文主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021534', '厦门学校信息管理部测试专员', '10031487', '183', '软件测试工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021658', '厦门学校泡泡少儿部镇海课程顾问', '10019918', '183', '泡泡镇海课程顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10021714', '厦门学校泡泡少儿部镇海校区精品班课程顾问', '10033479', '183', '泡泡镇海精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022139', '厦门学校优能一对一部莲花校区课程顾问', '10012604', '183', '莲花优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022432', '厦门学校人力资源部薪酬绩效专员', '10046051', '183', '薪酬绩效专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022566', '厦门学校泡泡少儿部育秀课程顾问', '10003860', '183', '少儿部育秀课程顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022568', '厦门学校校长办公室管理培训生', '10003824', '183', '校办管培', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022572', '厦门学校国际游学部经理', '10003823', '183', '国际游学部经理', '2200002222', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022580', '厦门学校国外考试部部门运营助理', '10019899', '183', '国外考试部运营助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022581', '厦门学校国外考试部出国VIP项目部负责人', '10008603', '183', '出国VIP项目负责人', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022604', '厦门学校泡泡少儿部大区经理', '10003893', '183', '泡泡少儿部大区经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022609', '厦门学校泡泡少儿部总监助理', '10003893', '183', '泡泡少儿部总监助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022682', '厦门学校国外考试部国际游学部顾问', '10022572', '183', '国际游学顾问', '2200002222', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022792', '厦门学校客户服务部呼叫中心主管', '10003848', '183', '呼叫中心组长', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10022955', '厦门学校泡泡少儿部个性化学管', '10025007', '183', '泡泡少儿个性化学管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023122', '厦门学校信息管理部前端开发工程师', '10013401', '183', '前端开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023267', '厦门学校泡泡少儿部绘画教师', '10003893', '183', '泡泡少儿绘画教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023268', '厦门学校泡泡少儿部泥塑教师', '10003893', '183', '泡泡少儿泥塑教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023439', '厦门学校市场营销部网络推广专员', '10007940', '183', '网络推广专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023577', '厦门学校优能中学部育秀校区主管助理', '10021438', '183', '优能中学育秀主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023581', '厦门学校优能中学部文灶校区主管', '10021438', '183', '优能中学文灶校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023654', '厦门学校市场营销部国内外部市场专员', '10003838', '183', '国内外部市场专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023655', '厦门学校市场营销部新媒体专员', '10029533', '183', '新媒体专员', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023656', '厦门学校泡泡少儿部语文师训助理', '10021363', '183', '语文师训助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023657', '厦门学校泡泡少儿部语文教研助理', '10003893', '183', '语文教研助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023658', '厦门学校泡泡少儿部英语项目幼儿教研主管', '10003865', '183', '英语项目幼儿教研主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023659', '厦门学校泡泡少儿部镇海校区主管', '10003893', '183', '镇海校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023660', '厦门学校国外考试部总监', '10013151', '183', '总监', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023661', '厦门学校国外考试部托福项目经理', '10008603', '183', '托福项目经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023662', '厦门学校国外考试部精英计划项目经理', '10029134', '183', '精英计划项目经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023663', '厦门学校国外考试部北美项目托福基础教研主管助理', '10019916', '183', '托福基础教研主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023664', '厦门学校国外考试部北美美高教研主管', '10019916', '183', '北美美高教研主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023665', '厦门学校国外考试部英联邦项目雅思基础教研主管', '10019899', '183', '雅思基础教研主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023666', '厦门学校国内考试四六级考研项目经理', '10019899', '183', '四六级考研项目经理', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023667', '厦门学校国内考试部倍学口语项目经理', '10019175', '183', '倍学口语项目经理', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023738', '厦门学校出国VIP项目部美仁宫校区学习管理师', '10052823', '183', '出国VIP美仁宫学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023739', '厦门学校出国VIP项目部美仁宫校区顾问', '10052823', '183', '出国VIP美仁宫顾问', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023740', '厦门学校国外考试部精英计划项目学管', '10052826', '183', '精英计划学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023741', '厦门学校泡泡少儿部英语项目新概念教研主管', '10003865', '183', '英语项目新概念教研主', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023742', '厦门学校优能中学部个性化经理', '10003906', '183', '个性化经理(总监助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10023743', '厦门学校出国VIP项目部集美校区学习管理师', '10046715', '183', '出国VIP集美学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024572', '厦门学校泡泡少儿部语文产品经理', '10003893', '183', '语文产品经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024576', '厦门学校客户服务部源昌校区客服专员', '10003848', '183', '客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024577', '厦门学校客户服务部泉州校区客服专员', '10003844', '183', '客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024578', '厦门学校泉州分校出国VIP项目顾问', '10027705', '183', '泉州出国VIP部顾问', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024579', '厦门学校教务管理部泡泡教务专员', '10003849', '183', '泡泡教务', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024580', '厦门学校教务管理部中学班级教务专员', '10003849', '183', '中学教务', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024581', '厦门学校泡泡少儿部金榜校区主管', '10033479', '183', '校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024582', '厦门学校泡泡少儿部莲花校区主管', '10035850', '183', '泡泡莲花校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024583', '厦门学校泡泡少儿部瑞景校区主管助理', '10033479', '183', '瑞景泡泡少儿校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024584', '厦门学校泡泡少儿部思北校区主管助理', '10035850', '183', '校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024755', '厦门学校优能中学部精品班高中英语主管', '10043555', '183', '优能精品高中英语主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024951', '厦门学校泡泡少儿部莲花校区精品班课程顾问', '10024582', '183', '泡泡莲花精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024977', '厦门学校信息管理部ANDROID开发工程师', '10031488', '183', '安卓开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024978', '厦门学校信息管理部IOS开发工程师', '10031488', '183', 'IOS开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024979', '厦门学校信息管理部前端开发工程师', '10013401', '183', '前端开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10024980', '厦门学校信息管理部前端开发工程师', '10031486', '183', '前端开发工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025007', '厦门学校泡泡少儿部个性化项目经理', '10003893', '183', '泡泡个性化项目经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025073', '厦门学校国内外考试部行政助理', '10019899', '183', '国内外考试部行政助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025229', '厦门学校优能中学部个性化销售主管', '10028935', '183', '优能个性化销售主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025230', '厦门学校优能中学部个性化学管主管', '10028935', '183', '优能个性化学管主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025503', '厦门学校国内外部大学校区经理', '10019899', '183', '大学校区经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025683', '厦门学校客户服务部海沧校区客服专员', '10026467', '183', '海沧校区客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10025738', '厦门学校信息管理部产品经理', '10013401', '183', '信管部产品经理', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026020', '厦门学校信息管理部研发主管', '10013401', '183', '研发主管', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026194', '厦门学校泉州分校出国VIP项目学管主管', '10003844', '183', '泉州国内外学管主管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026404', '厦门学校市场营销部项目经理', '10003838', '183', '项目经理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026461', '厦门学校新媒体中心网络推广专员', '10003848', '183', '新媒体网络推广专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026462', '厦门学校优能一对一部海沧校区学习管理师', '10033572', '183', '海沧优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026466', '厦门学校优能中学部精品班初中英语主管', '10043555', '183', '优能精品初中英语主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026467', '厦门学校优能中学部分校三区经理', '10021438', '183', '优能中学分校三区经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026480', '厦门学校客户服务部金榜校区客服专员', '10029531', '183', '金榜校区客服专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10026546', '厦门学校优能一对一部海沧校区课程顾问', '10033572', '183', '海沧优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027054', '厦门学校国内考试四六级考研教师', '10047771', '183', '四六级考研教师', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027104', '厦门学校出国VIP项目部美仁校区学习管理师', '10025503', '183', '美仁校区学习管理师', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027344', '厦门学校优能中学部育秀校区主管', '10021438', '183', '育秀校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027345', '厦门学校优能中学部思北校区主管', '10003906', '183', '思北校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027346', '厦门学校优能中学部总监助理', '10003906', '183', '总监助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027347', '厦门学校泉州分校执行校长', '10003823', '183', '泉州分校执行校长', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027367', '厦门学校校长办公室校办主任', '10003823', '183', '校办主任', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027705', '厦门学校泉州分校出国VIP项目顾问主管', '10003844', '183', '泉州VIP顾问主管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027724', '厦门学校泉州国内外市场专员', '10003844', '183', '泉州国内外市场专员', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10027725', '厦门学校市场营销部泉州网络推广经理', '10003838', '183', '泉州网络推广经理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028349', '厦门学校国外考试部托福项目泉州分校主管', '10019899', '183', '泉州托福项目主管', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028350', '厦门学校国外考试部SAT/ACT项目泉州分校主管', '10019899', '183', '泉州分校主管', '1542700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028351', '厦门学校泉州英联邦项目主管', '10003844', '183', '泉州英联邦项目主管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028352', '厦门学校市场营销部泉州分校主管', '10003844', '183', '泉州市场营销部主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028360', '厦门学校出国VIP项目部源昌校区学习管理师导师', '10029135', '183', '源昌校区学管导师', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028596', '厦门学校国内考试部考研专业课项目专员', '10047771', '183', '考研专业课项目专员', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028624', '厦门学校国外考试部中学留学市场策划', '10038363', '183', '中学留学市场策划', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028625', '厦门学校优能中学部中学市场策划', '10048263', '183', '优能中学市场策划', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10028935', '厦门学校优能一对一部总监', '10003823', '183', '优能一对一部总监', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029035', '厦门学校客户服务部培训质检主管', '10003848', '183', '培训质检主管', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029134', '厦门学校国外考试部运营经理', '10019899', '183', '国外考试部运营经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029135', '厦门学校国内外考试部源昌校区主管', '10019899', '183', '国内外部源昌主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029515', '厦门学校国内外考试部副总监（分管市场）', '10019899', '183', '国内外副总监分管市场', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029528', '厦门学校优能中学部思北校区主管', '10021438', '183', '优能思北校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029529', '厦门学校泡泡少儿部海沧校区主管助理', '10033479', '183', '泡泡海沧校区主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029531', '厦门学校泡泡少儿部一区经理', '10003893', '183', '泡泡分校一区经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029532', '厦门学校泡泡少儿部一对一英语组教研主管助理', '10025007', '183', '泡泡英语教研主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029533', '厦门学校市场营销部市场部支持组主管', '10003838', '183', '市场部支持组主管', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029534', '厦门学校优能中学部瑞景校区主管', '10021438', '183', '优能中学瑞景校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029535', '厦门学校泡泡少儿部莲花校区主管助理', '10035850', '183', '泡泡莲花校区主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029536', '厦门学校优能中学部松柏校区主管', '10021438', '183', '优能中学松柏校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029537', '厦门学校泡泡少儿部嘉禾校区主管', '10035850', '183', '泡泡嘉禾校区主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029538', '厦门学校泡泡少儿部语文组教研主管', '10021363', '183', '泡泡语文组教研主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029539', '厦门学校泡泡少儿部数学组教研主管', '10046428', '183', '泡泡数学组教研主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029540', '厦门学校泡泡少儿部数学项目经理', '10003893', '183', '泡泡数学项目经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029541', '厦门学校优能中学部海沧校区主管助理', '10026467', '183', '优能海沧校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029542', '厦门学校泡泡少儿部新概念英语项目主管', '10046423', '183', '泡泡新概念英语主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029543', '厦门学校泡泡少儿部幼少英语项目主管', '10046728', '183', '幼少英语项目主管', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029545', '厦门学校国外考试部精英计划美国本科项目主管', '10038357', '183', '美国本科项目主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029546', '厦门学校市场营销部泡泡市场主管助理', '10031909', '183', '泡泡市场主管助理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029547', '厦门学校人力资源部培训发展主管', '10003824', '183', '培训发展主管', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029548', '厦门学校人力资源部招聘中心经理', '10003824', '183', '招聘中心经理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029773', '厦门学校优能中学部思北校区精品班顾问客服', '10029528', '183', '思北精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029774', '厦门学校优能中学部同安校区精品班顾问客服', '10046702', '183', '同安精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029775', '厦门学校优能中学部海沧校区精品班顾问客服', '10033572', '183', '海沧精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029776', '厦门学校优能中学部精品班文灶校区顾问客服', '10023581', '183', '文灶精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029777', '厦门学校优能中学部精品班瑞景校区顾问客服', '10029534', '183', '瑞景精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029778', '厦门学校优能中学部精品班镇海校区顾问客服', '10013201', '183', '镇海精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029779', '厦门学校优能中学部精品班育秀校区顾问客服', '10027344', '183', '育秀精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029780', '厦门学校优能中学部莲花区精品班顾问客服', '10012604', '183', '莲花精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029781', '厦门学校优能中学部嘉禾校区精品班顾问客服', '10003862', '183', '嘉禾精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029782', '厦门学校优能中学部精品班松柏校区顾问客服', '10029536', '183', '松柏精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029783', '厦门学校国外考试部出国VIP项目部集美校区行政客服', '10046715', '183', '国内外集美行政客服', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029784', '厦门学校国内外美仁行政客服', '10052823', '183', '国内外美仁行政客服', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029785', '厦门学校国外考试部出国VIP项目部源昌行政客服', '10029135', '183', '国内外源昌行政客服', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029809', '厦门学校泉州分校万达校区行政客服', '10049461', '183', '泉州行政客服', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029869', '厦门学校国外考试部英联邦项目雅思强化教研主管', '10019899', '183', '雅思强化教研主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029870', '厦门学校泉州北美项目主管', '10019916', '183', '泉州北美项目主管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029883', '厦门学校信息化支持中心产品经理', '10033824', '183', '信息化支持产品经理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029885', '厦门学校泡泡少儿部数学项目师训主管助理', '10003893', '183', '泡泡数学师训主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029886', '厦门学校泡泡一对一镇海校区课程顾问', '10025007', '183', '镇海校区课程顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029921', '厦门学校校长办公室信息化管理中心经理', '10003823', '183', '校办管理中心经理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029934', '厦门学校资产管理部信息专员', '10008606', '183', '资产管理部信息专员', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029946', '厦门学校泡泡少儿部思北校区个性化课程顾问', '10046440', '183', '泡泡思北个性化顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029948', '厦门学校泡泡育秀精品班顾问客服', '10029531', '183', '泡泡育秀精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029949', '厦门学校泡泡镇海精品班顾问客服', '10033480', '183', '泡泡镇海精品顾问客服', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029950', '厦门学校泡泡少儿部思北校区精品班课程顾问', '10024584', '183', '泡泡思北精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029951', '厦门学校泡泡瑞景精品班顾问客服', '10024583', '183', '瑞景精品班顾问客服', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029952', '厦门学校泡泡莲花精品班顾问客服', '10024582', '183', '泡泡莲花精品顾问客服', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029953', '厦门学校泡泡少儿部嘉禾校区精品班课程顾问', '10036214', '183', '泡泡嘉禾精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029954', '厦门学校泡泡金榜精品班顾问客服', '10033479', '183', '金榜精品班顾问客服', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10029955', '厦门学校泡泡少儿部海沧校区精品班课程顾问', '10029529', '183', '泡泡海沧精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030110', '厦门学校优能一对一部同安校区课程顾问', '10046702', '183', '同安优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030135', '厦门学校人力资源部人事助理', '10046051', '183', '人事助理', '2200001726', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030419', '厦门学校优能一对一部同安校区学习管理师', '10046702', '183', '同安优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030422', '厦门学校优能中学部新媒体专员', '10048263', '183', '优能中学新媒体专员', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030509', '厦门学校优能中学部HRBP', '10003824', '183', '优能HRBP', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030532', '厦门学校英联邦项目小语种教师', '10029869', '183', '小语种教师', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030533', '厦门学校英联邦项目泉州校区小语种教师', '10028351', '183', '泉州校区小语种教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030663', '厦门学校优能中学部精品班初中理综主管', '10043555', '183', '优能精品初中理综主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030745', '厦门学校人力资源部企业文化经理', '10003824', '183', '企业文化经理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030849', '厦门学校泉州国内外市场经理', '10003844', '183', '泉州国内外市场经理', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030941', '厦门学校国际游学部顾问', '10033075', '183', '国际游学部顾问', '2200002222', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030993', '厦门学校泡泡少儿部泡泡市场策划', '10031909', '183', '泡泡市场策划', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030995', '厦门学校校长办公室行政专员', '10033822', '183', '校办行政专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10030996', '厦门学校校长办公室行政经理', '10003823', '183', '行政经理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031027', '厦门学校人力资源部人事专员', '10046051', '183', '人事专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031059', '厦门学校新媒体运营中心呼叫主管助理', '10003848', '183', '新媒体呼叫主管助理', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031091', '厦门学校市场营销部市场策划', '10029533', '183', '市场营销部市场策划', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031161', '厦门学校财务管理部会计助理', '10003844', '183', '会计助理', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031405', '厦门学校市场营销部总监助理', '10003838', '183', '市场营销部总监助理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031486', '厦门学校信息管理部前端研发主管', '10013401', '183', '前端研发经理', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031487', '厦门学校信息管理部测试主管', '10013401', '183', '信息管理部测试主管', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031488', '厦门学校信息管理部移动端研发经理', '10013401', '183', '移动端研发经理', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031489', '厦门学校信息管理部JAVA研发主管', '10013401', '183', 'Java研发经理', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031521', '厦门学校优能一对一部松柏校区学习管理师', '10029536', '183', '松柏优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031523', '厦门学校优能一对一部松柏校区课程顾问', '10029536', '183', '松柏优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031609', '厦门学校出国VIP项目部漳州校区顾问', '10052878', '183', '漳州出国VIP部顾问', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031696', '厦门学校泉州国内外市场策划', '10003844', '183', '泉州国内外市场策划', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031733', '厦门学校漳州分校行政客服', '10052878', '183', '漳州行政客服', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031909', '厦门学校泡泡少儿部市场经理', '10003893', '183', '泡泡市场经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10031957', '厦门学校国外考试部雅思中级督导', '10019901', '183', '雅思中级督导', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032037', '厦门学校泉州HRBP', '10003824', '183', '泉州HRBP', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032038', '厦门学校泉州雅思项目初级督导', '10028351', '183', '泉州雅思初级督导', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032039', '厦门学校泉州北美项目初级督导', '10029870', '183', '泉州北美初级督导', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032217', '厦门学校出国VIP项目部漳州校区学习管理师', '10052878', '183', '漳州出国VIP部学管', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032513', '厦门学校国内外考试部HRBP', '10019899', '183', '国内外考试部HRBP', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032516', '厦门学校国外考试部大学市场专员（漳州）', '10052878', '183', '大学市场专员（漳州）', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032582', '人力资源部总监助理(分管招聘中心)', '10003824', '183', '人力总助(分管招聘）', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032583', '厦门学校人力资源部职能类招聘专员', '10051125', '183', '人力职能类招聘专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032689', '厦门学校公关媒体助理经理', '10032690', '183', '公关媒体助理经理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032690', '厦门学校公关媒体经理', '10003838', '183', '公关媒体经理', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032752', '厦门学校国外考试部漳州校区雅思初级督导', '10029869', '183', '漳州校区雅思初级督导', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032925', '厦门学校公关媒体中心文案编辑', '10032690', '183', '公关媒体中心文案', '1541400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032945', '厦门学校优能中学部数据中心经理', '10003823', '183', '优能中学数据中心经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10032946', '厦门学校新媒体运营中心经理', '10003823', '183', '新媒体运营中心经理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033028', '厦门学校泡泡少儿部启明星少儿数学教师', '10029539', '183', '泡泡启明星数学教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033075', '厦门学校国际游学部顾问主管', '10022572', '183', '国际游学部顾问主管', '2200002222', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033207', '厦门学校泡泡少儿部幼少儿英语个性化教师', '10038365', '183', '幼少儿英语个性化教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033255', '厦门学校信息管理部产品专员', '10025738', '183', '信息管理部产品专员', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033262', '厦门学校国外考试部雅思初级督导', '10029869', '183', '国外部雅思初级督导', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033274', '厦门学校家庭教育中心专员', '10033763', '183', '家庭教育中心专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033356', '厦门学校校长办公室管理顾问', '10003823', '183', '校办管理顾问', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033386', '厦门学校漳州分校执行校长', '10003823', '183', '漳州分校执行校长', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033420', '厦门学校泉州分校执行校长', '10003823', '183', '漳州分校执行校长', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033474', '厦门学校泉州分校出纳', '10003844', '183', '泉州出纳', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033479', '厦门学校泡泡少儿部三区经理', '10003893', '183', '泡泡三区经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033480', '厦门学校泡泡少儿部镇海校区主管助理', '10033479', '183', '泡泡镇海主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033482', '厦门学校国内外旺角行政客服', '10038359', '183', '国内外旺角行政客服', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033483', '厦门学校出国VIP项目部旺角校区顾问', '10038359', '183', '出国VIP旺角顾问', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033570', '厦门学校国外考试部泉州雅思中级督导', '10028351', '183', '泉州雅思中级督导', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033572', '厦门学校优能中学部海沧校区主管', '10043579', '183', '优能中学海沧校区主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033619', '厦门学校泡泡少儿部总监助理分管幼儿英语', '10003893', '183', '总监助理分管幼英', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033620', '厦门学校泡泡少儿部副总监', '10003893', '183', '泡泡少儿部副总监', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033763', '厦门学校家庭教育中心经理', '10003823', '183', '家庭教育中心经理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033822', '厦门学校校长办公室行政主管', '10003824', '183', '校办行政主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033824', '厦门学校信息化支持中心主管', '10003823', '183', '信息化支持中心主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033828', '厦门学校漳州分校顾问主管助理', '10033386', '183', '漳州分校顾问主管助理', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033830', '厦门学校信息化支持中心专员', '10033824', '183', '信息化支持中心专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10033916', '厦门学校信息管理部运维工程师', '10013401', '183', '信息管理部运维工程师', '2200001138', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10034756', '厦门学校泉州优能中学部市场策划', '10035168', '183', '泉州优能部市场策划', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10034842', '厦门学校泉州四六级考研教师', '10047771', '183', '泉州四六级考研教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10034850', '厦门学校泉州分校优能精品班顾问客服', '10047074', '183', '泉州精品班顾问客服', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035095', '厦门学校教务管理部教材专员', '10003852', '183', '教务管理部教材专员', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035161', '厦门学校优能中学部镇海校区主管', '10021438', '183', '优能镇海校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035168', '厦门学校泉州分校K12总监', '10003844', '183', '泉州分校K12总监', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035280', '厦门学校泉州分校精英计划项目学管', '10003844', '183', '泉州精英计划学管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035430', '厦门学校泡泡少儿部金榜校区主管助理', '10033479', '183', '泡泡金榜校区主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035763', '厦门学校泡泡少儿部英语项目小升初教研主管', '10046728', '183', '英语小升初教研主助', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035765', '厦门学校培训与发展中心培训师主管', '10029547', '183', '培训与发展中心培训师', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035832', '厦门学校泉州分校K12泡泡精品班数学教师', '10035168', '183', '泉州泡泡精品班数学', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10035850', '厦门学校泡泡少儿部二区经理', '10003893', '183', '泡泡少儿部二区经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10036165', '厦门学校泉州分校教务专员', '10003844', '183', '泉州分校教务专员', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10036214', '厦门学校泡泡少儿部嘉禾校区主管', '10035850', '183', '泡泡嘉禾主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10036384', '厦门学校优能中学部高中学霸班产品经理', '10043555', '183', '优能高中学霸班经理', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10036385', '厦门学校优能中学部高中学霸班产品副经理', '10036384', '183', '优能高中学霸副经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10037083', '厦门学校人力资源部薪酬助理', '10046051', '183', '人力资源部薪酬助理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10037124', '厦门学校优能中学部行政助理', '10046052', '183', '优能中学部行政助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10037197', '厦门学校泡泡少儿部新媒体运营专员', '10031909', '183', '泡泡少儿部新媒体运营', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10037435', '厦门学校新媒体运营中心专员', '10003848', '183', '新媒体运营中心专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10037436', '厦门学校人力资源部新媒体运营专员', '10030745', '183', '人力新媒体运营专员', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038023', '厦门学校校长办公室内审内控主管', '10003823', '183', '内审内控主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038320', '厦门学校泉州分校K12泡泡精品班英语教师', '10051458', '183', '泉州泡泡精品班英语', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038357', '厦门学校国内外考试部总监助理分管运营', '10019899', '183', '国外总监助理分管运营', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038358', '厦门学校国内外考试部美仁宫校区主管', '10025503', '183', '美仁宫校区主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038359', '厦门学校国内外考试部旺角校区主管', '10025503', '183', '国内外旺角主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038360', '厦门学校国内外考试部中学项目市场主管助理', '10050766', '183', '中学市场主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038361', '厦门学校国内外考试部国内考试项目教研主管', '10019899', '183', '国内项目教研主管', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038363', '厦门学校国内外考试部国外考试精英计划项目主管助理', '10019899', '183', '精英计划主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038364', '厦门学校国内外考试部大学市场主管', '10019899', '183', '大学市场主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038365', '厦门学校泡泡少儿部个性化英语教研主管', '10025007', '183', '泡泡个性英语教研主助', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038383', '厦门学校资产管理部工程专员', '10008606', '183', '资产管理部工程专员', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10038759', '厦门学校泡泡少儿部数学个性化教师', '10025007', '183', '泡泡少儿部数学个性化', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039047', '厦门学校财务管理部财务主管', '10003844', '183', '财务管理部财务主管', '1540400000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039096', '厦门学校泡泡少儿部语文个性化教师', '10025007', '183', '泡泡语文个性化教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039158', '厦门学校优能中学部初中学霸班项目主管助理', '10043555', '183', '优能初中学霸主管助理', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039166', '厦门学校优能中学部精品班高中物理教研主管助理', '10043555', '183', '优能精品高物教研主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039171', '厦门学校优能中学部高中师训主管助理', '10043555', '183', '优能高中师训主管助理', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039199', '厦门学校出国VIP项目部旺角校区学习管理师', '10038359', '183', '出国VIP旺角学管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039204', '厦门学校优能一对一部高中物理组教研主管', '10028935', '183', '一对一高中物理主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039330', '厦门学校泉州分校华大校区主管助理', '10003844', '183', '泉州分校华大校区主管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039331', '厦门学校泉州分校华大校区顾问', '10039330', '183', '泉州分校华大校区顾问', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039332', '厦门学校泉州分校华大校区行政客服', '10039330', '183', '泉州分校华大校区行政', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039615', '厦门学校家庭教育中心渠道关系高级专员', '10033763', '183', '家庭教育渠道高级专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039746', '厦门学校校长办公室校长助理', '10003823', '183', '校长办公室校长助理', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10039961', '厦门学校泡泡少儿部英语项目小升初教师', '10035763', '183', '泡泡少儿部走名初英语', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040090', '厦门学校教学管理部经理', '10003823', '183', '教学管理部经理', '2200001726', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040091', '厦门学校资产管理部经理', '10008606', '183', '资产管理部经理', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040092', '厦门学校资产管理部部门助理', '10008606', '183', '资产管理部部门助理', '1540500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040281', '厦门学校国内外考试部NCUK项目学术经理', '10019899', '183', 'NCUK项目学术经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040282', '厦门学校教学管理部部门助理', '10015539', '183', '教学管理部部门助理', '2200001726', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040512', '厦门学校漳州分校校区主管', '10019899', '183', '漳州分校校区主管', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040816', '厦门学校泡泡少儿部启明星少儿语文教师', '10029538', '183', '泡泡启明星语文教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040877', '厦门学校人力资源部培训发展中心经理助理', '10003824', '183', '培训发展中心经理助理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040881', '厦门学校人力资源部招聘中心主管助理', '10029548', '183', '招聘中心主管助理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040955', '厦门学校校长办公室法务专员', '10033822', '183', '校长办公室法务专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10040971', '厦门学校国内外考试部国际预科数学教师', '10040281', '183', '国际预科数学教师', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10041096', '厦门学校泡泡少儿部幼儿产品运营经理', '10003893', '183', '幼儿产品运营经理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10041129', '厦门学校家庭教育中心招商专员', '10033763', '183', '家庭教育中心招商专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10041849', '厦门学校国内外考试部学管培训主管助理', '10019899', '183', '学管培训主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10041991', '厦门学校泡泡少儿部幼少儿英语督导', '10046728', '183', '幼少儿英语督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10041993', '厦门学校泡泡少儿部新概念英语督导', '10046423', '183', '新概念英语督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10042225', '厦门学校泡泡少儿部语文个性化督导', '10025007', '183', '少儿语文个性化督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10042360', '厦门学校泡泡少儿部精品班数学督导', '10029539', '183', '泡泡精品班数学督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043111', '厦门学校EHR部门同步测试一总监', '10003111', '183', '部门同步一总监', '2200003333', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043476', '厦门学校国内外考试部副总监', '10003823', '183', '国内外考试部副总监', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043555', '厦门学校优能中学部精品班总监', '10003823', '183', '优能中学部精品班总监', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043556', '厦门学校优能一对一部高中化学组教研主管助理', '10028935', '183', '一对一高化主管助理', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043566', '厦门学校优能中学部分校一区经理', '10003906', '183', '优能中学部分校一区经', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043579', '厦门学校优能中学部校区运营副经理', '10021438', '183', '优能校区运营副经理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043614', '厦门学校国内外考试部北美项目部SAT项目教研主管助理', '10019916', '183', 'SAT教研主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043802', '厦门学校泡泡少儿部HRBP', '10003893', '183', '泡泡少儿部HRBP', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043959', '厦门学校信息化支持中心前端研发主管', '10033824', '183', '信息支持前端研发主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043960', '厦门学校信息化支持中心前端工程师', '10043959', '183', '信息支持前端工程师', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043961', '厦门学校信息化支持中心测试主管', '10033824', '183', '信息化支持测试主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043962', '厦门学校信息化支持中心测试专员', '10043961', '183', '信息化支持测试专员', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043963', '厦门学校信息化支持中心UI设计主管', '10033824', '183', '信息支持UI设计主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043964', '厦门学校信息化支持中心JAVA研发主管', '10033824', '183', '信息支持JAVA主管', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10043965', '厦门学校信息化支持中心JAVA工程师', '10043964', '183', '信息支持JAVA', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044199', '厦门学校国外考试部出国VIP项目部TMK呼叫专员', '10019899', '183', 'TMK呼叫专员', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044395', '厦门学校教务管理部数据专员', '10051744', '183', '教务管理部数据专员', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044519', '厦门学校泡泡少儿部育秀校区主管助理', '10035850', '183', '泡泡育秀校区主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044543', '厦门学校泡泡少儿部幼儿英语教师', '10046728', '183', '泡泡幼儿英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044580', '厦门学校泡泡少儿部育秀校区个性化课程顾问', '10046440', '183', '泡泡育秀个性化顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044767', '厦门学校优能一对一部高中历史教师', '10021441', '183', '一对一高中历史教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10044768', '厦门学校优能一对一部高中政治教师', '10021441', '183', '一对一高中政治教师', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045453', '厦门学校优能一对一高中历史督导', '10021441', '183', '一对一高中历史督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045455', '厦门学校优能一对一初中英语督导', '10012560', '183', '一对一初中英语督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045457', '厦门学校优能一对一高中政治督导', '10028935', '183', '一对一高中政治督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045458', '厦门学校优能一对一初中语文督导', '10048272', '183', '一对一初中语文督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045459', '厦门学校优能一对一高中英语督导', '10012559', '183', '一对一高中英语督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045460', '厦门学校优能一对一高中数学督导', '10012561', '183', '一对一高中数学督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045500', '厦门学校泡泡少儿部数学个性化督导', '10025007', '183', '泡泡数学个性化督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045501', '厦门学校泡泡少儿部幼少儿英语个性化督导', '10038365', '183', '幼少儿英语个性化督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045504', '厦门学校泡泡少儿部语文督导', '10029538', '183', '泡泡少儿部语文督导', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045506', '厦门学校优能一对一初中化学督导', '10048271', '183', '一对一初中化学督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045508', '厦门学校优能一对一初中数学督导', '10012562', '183', '一对一初中数学督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045509', '厦门学校优能一对一初中物理督导', '10048269', '183', '一对一初中物理督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045510', '厦门学校优能一对一高中化学督导', '10043556', '183', '一对一高中化学督导', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045511', '厦门学校优能中学部精品班高中化学督导', '10021467', '183', '精品班高中化学督导', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045665', '厦门学校泡泡少儿部五缘湾校区精品班课程顾问', '10033479', '183', '泡泡五缘湾精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045845', '厦门学校优能中学部精品班高中英语教研主管', '10043555', '183', '优能精品高英教研主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045846', '厦门学校优能中学部高中学霸班项目主管', '10043555', '183', '优能高中学霸项目主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10045909', '厦门学校泡泡少儿部同安校区主管助理', '10035850', '183', '泡泡同安校区主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046051', '厦门学校人力资源部薪酬绩效主管', '10003824', '183', '人力薪酬绩效主管', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046052', '厦门学校优能中学部人力资源行政主管', '10003824', '183', '优能人力行政主管', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046213', '厦门学校优能中学部人力行政专员', '10046052', '183', '优能人力行政专员', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046352', '厦门学校优能中学部精品班初中英语督导', '10026466', '183', '优能精品班初英督导', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046410', '厦门学校泡泡少儿部启明星幼少儿英语教师', '10046728', '183', '泡泡启明星英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046421', '厦门学校泡泡少儿部同安校区教学主管助理', '10046728', '183', '泡泡同安教学主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046423', '厦门学校泡泡少儿部中段项目主管助理', '10046728', '183', '泡泡中段项目主管助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046428', '厦门学校泡泡少儿部数学产品经理助理', '10003893', '183', '泡泡数学产品经理助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046440', '厦门学校泡泡少儿部个性化前端运营主管助理', '10025007', '183', '泡泡个性化前端主助', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046702', '厦门学校优能中学部同安校区主管助理', '10043579', '183', '优能同安校区主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046709', '厦门学校优能中学部精品班顾问主管助理', '10043555', '183', '优能精品班顾问主助', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046715', '厦门学校国内外考试部石鼓校区主管助理', '10025503', '183', '国内外石鼓主管助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046720', '厦门学校国内考试部产品推广主管助理', '10047771', '183', '国内产品推广主管助理', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10046728', '厦门学校泡泡少儿部英语产品经理助理', '10003893', '183', '泡泡英语产品经理助理', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10047074', '厦门学校泉州分校K12万达校区主管助理', '10035168', '183', '泉州K12万达主助', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10047401', '厦门学校泉州分校K12优能精品班物理教师', '10035168', '183', '泉州优能精品班物理', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10047489', '厦门学校国外考试部英联邦项目外教', '10029869', '183', '英联邦项目外教', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10047558', '厦门学校泡泡少儿部同安精品班英语教师', '10046421', '183', '泡泡同安精品英语教师', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10047771', '厦门学校国内外考试部国内考试项目经理助理', '10019899', '183', '国内考试项目经理助理', '1542500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048020', '厦门学校优能一对一部五缘湾校区课程顾问', '10048274', '183', '五缘湾优能一对一顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048021', '厦门学校优能中学部五缘湾校区精品班顾问客服', '10048274', '183', '五缘湾精品班顾问客服', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048022', '厦门学校优能一对一部五缘湾校区学习管理师', '10048274', '183', '五缘湾优能一对一学管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048136', '厦门学校优能中学部岛内校区管理培训生', '10021438', '183', '优能岛内管培', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048137', '厦门学校优能中学部岛外校区管理培训生', '10043579', '183', '优能岛外管培', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048138', '厦门学校泡泡少儿部三区管理培训生', '10033479', '183', '泡泡三区管培', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048140', '厦门学校泡泡少儿部二区管理培训生', '10035850', '183', '泡泡二区管培', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048142', '厦门学校国内外考试部大学校区管理培训生', '10025503', '183', '国内外大学校区管培', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048157', '厦门学校国内外考试部市场管理培训生', '10029135', '183', '国内外市场管培', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048158', '厦门学校国内外考试部学管管理培训生', '10041849', '183', '国内外学管管培', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048159', '厦门学校泉州分校市场管理培训生', '10003844', '183', '泉州市场管培', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048162', '厦门学校泉州分校K12管理培训生', '10035168', '183', '泉州K12管培', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048263', '厦门学校优能中学部市场主管助理', '10021438', '183', '优能市场主管助理', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048265', '厦门学校优能中学部精品班初中数学项目主管助理', '10043555', '183', '优能精品班初数主助', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048267', '厦门学校优能中学部精品班初中化学项目主管助理', '10043555', '183', '优能精品班初化主助', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048268', '厦门学校优能中学部精品班高中数学项目主管助理', '10043555', '183', '优能精品班高数主助', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048269', '厦门学校优能一对一部初中物理主管助理', '10028935', '183', '优能一对一初物主助', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048271', '厦门学校优能一对一部初中化学主管助理', '10028935', '183', '优能一对一初化主助', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048272', '厦门学校优能一对一部初中语文主管助理', '10028935', '183', '优能一对一初语主助', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048274', '厦门学校优能中学部五缘湾校区主管助理', '10021438', '183', '优能中学五缘校区主助', '1541500000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048521', '厦门学校泉州分校北美项目主管助理', '10029870', '183', '泉州北美主管助理', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10048522', '厦门学校泉州分校英联邦项目主管助理', '10028351', '183', '泉州英联邦主管助理', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049355', '厦门学校信息化支持中心UI设计师', '10033824', '183', '信息支持UI设计', '1541700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049461', '厦门学校泉州分校国内外万达校区主管助理', '10003844', '183', '泉州国内外万达主助', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049468', '厦门学校泉州分校出国VIP项目华大校区顾问', '10039330', '183', '泉州国内外华大顾问', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049469', '厦门学校泉州出国VIP项目华大校区学管', '10039330', '183', '泉州国内外华大学管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049667', '厦门学校泉州分校K12学习管理师', '10047074', '183', '泉州K12学管', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049671', '厦门学校优能一对一部一对六项目主管', '10028935', '183', '一对六项目主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049907', '厦门学校泉州分校K12泡泡个性化英语教师', '10051458', '183', '泉州泡泡个性英语教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049908', '厦门学校泉州分校K12泡泡个性化数学教师', '10035168', '183', '泉州泡泡个性数学教师', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10049975', '厦门学校国内外考试部总监助理', '10019899', '183', '国内外总监助理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050036', '厦门学校国内外考试部新媒体运营专员', '10019899', '183', '国内外新媒体运营专员', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050171', '厦门学校91团队前端开发工程师', '10050223', '183', '91团队经理', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050212', '厦门学校国内外考试部顾问培训主管', '10019899', '183', '国内外顾问培训主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050214', '厦门学校91团队运维工程师', '10050172', '183', '91团队运维工程师', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050216', '厦门学校91团队JAVA研发经理', '10050172', '183', '91JAVA研发经理', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050218', '厦门学校91团队移动端研发经理', '10050172', '183', '91移动端研发经理', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050222', '厦门学校91团队测试主管', '10050172', '183', '91团队测试主管', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050223', '厦门学校91团队前端研发经理', '10050172', '183', '91团队前端研发经理', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050224', '厦门学校91团队产品经理', '10050172', '183', '91团队产品经理', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050226', '厦门学校91团队产品专员', '10050224', '183', '91团队产品专员', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050228', '厦门学校91团队IOS开发工程师', '10050218', '183', '91IOS开发工程师', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050229', '厦门学校91团队软件测试工程师', '10050222', '183', '91软件测试工程师', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050230', '厦门学校91团队UI设计师', '10050223', '183', '91团队UI设计师', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050231', '厦门学校91团队JAVA开发工程师', '10050216', '183', '91团队JAVA开发', '2200004387', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050291', '厦门学校优能中学部精品班师训经理助理', '10043555', '183', '优能精品师训经理助理', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050766', '厦门学校国内外考试部中学市场经理', '10019899', '183', '国内外中学市场经理', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050955', '厦门学校泡泡少儿部同安校区精品班课程顾问', '10045909', '183', '泡泡同安精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10050995', '厦门学校漳州分校校区主管助理', '10019899', '183', '漳州分校校区主管助理', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051011', '厦门学校优能中学部精品班集美校区顾问客服', '10043579', '183', '集美精品班顾问', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051124', '厦门学校人力资源部培训发展中心经理', '10003824', '183', '人力培训发展经理', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051125', '厦门学校人力资源部招聘中心主管', '10029548', '183', '人力招聘主管', '1541900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051151', '厦门学校泡泡少儿部杏林校区精品班课程顾问', '10045909', '183', '泡泡杏林精品班顾问', '1540700000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051458', '厦门学校泉州分校K12项目英语教研主管助理', '10035168', '183', '英语教研主管助理', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051744', '厦门学校数据中心数据审计主管', '10003852', '183', '数据审计主管', '1540200000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051904', '厦门学校优能中学部精品班产品经理助理', '10043555', '183', '精品班初中英语主管', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10051915', '厦门学校泉州分校K12项目精品班课程顾问', '10047074', '183', '泉州分校课程顾问', '2200003337', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052304', '厦门学校优能一对一部学管副主管', '10028935', '183', '一对一学管副主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052305', '厦门学校优能一对一部高中数学教研副主管', '10028935', '183', '高中数学教研副主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052306', '厦门学校优能一对一部销售副主管', '10028935', '183', '销售副主管', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052307', '厦门学校客户服务部新媒体运营专员', '10003848', '183', '新媒体运营专员', '1542100000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052823', '厦门学校出国VIP项目部新星计划美仁实习主管', '10025503', '183', '新星计划美仁实习主管', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052826', '厦门学校出国VIP项目部新星计划精英计划项目实习主管助理', '10019899', '183', '实习主管助理', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052828', '厦门学校国外考试部师训主管', '10019899', '183', '师训主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052829', '厦门学校英联邦项目部新星计划英联邦项目实习负责人', '10003823', '183', '英联邦项目实习负责人', '1542900000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052830', '厦门学校出国VIP项目部新星计划中学市场实习主管助理', '10019899', '183', '实习主管助理', '2200001297', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052831', '厦门学校国内外考试部市场渠道主管', '10038364', '183', '市场渠道主管', '1542600000', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10052878', '厦门学校漳州分校国内外考试部漳州校区主管助理', '10019899', '183', '主管助理', '2200003336', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10053114', '厦门学校优能中学部精品班初中英语教研主管助理', '10043555', '183', '主管助理', '2200001050', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10053638', '厦门学校优能一对一部集美校区课程顾问', '10043579', '183', '集美校区课程顾问', '2200001049', NULL, NULL, '2018-12-06 16:50:25');
INSERT INTO `sys_position` VALUES ('10089871', '厦门学校国内外泉州行政客服', '10029870', '183', '泉州行政客服', '55', NULL, NULL, '2018-12-06 16:50:25');
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
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_idx1_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'admin', 'ROLE_ADMIN', '超级管理员', 1, NULL, '2017-10-29 15:45:51', '2018-04-22 11:40:29', '0');
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
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (1, 31);
INSERT INTO `sys_role_menu` VALUES (1, 32);
INSERT INTO `sys_role_menu` VALUES (1, 33);
INSERT INTO `sys_role_menu` VALUES (1, 34);
INSERT INTO `sys_role_menu` VALUES (1, 41);
INSERT INTO `sys_role_menu` VALUES (1, 42);
INSERT INTO `sys_role_menu` VALUES (1, 43);
INSERT INTO `sys_role_menu` VALUES (1, 44);
INSERT INTO `sys_role_menu` VALUES (1, 45);
INSERT INTO `sys_role_menu` VALUES (1, 51);
INSERT INTO `sys_role_menu` VALUES (1, 52);
INSERT INTO `sys_role_menu` VALUES (1, 61);
INSERT INTO `sys_role_menu` VALUES (1, 62);
INSERT INTO `sys_role_menu` VALUES (1, 63);
INSERT INTO `sys_role_menu` VALUES (1, 64);
INSERT INTO `sys_role_menu` VALUES (1, 71);
INSERT INTO `sys_role_menu` VALUES (1, 72);
INSERT INTO `sys_role_menu` VALUES (1, 73);
INSERT INTO `sys_role_menu` VALUES (1, 74);
INSERT INTO `sys_role_menu` VALUES (1, 101);
INSERT INTO `sys_role_menu` VALUES (1, 102);
INSERT INTO `sys_role_menu` VALUES (1, 103);
INSERT INTO `sys_role_menu` VALUES (1, 104);
INSERT INTO `sys_role_menu` VALUES (1, 100001);
INSERT INTO `sys_role_menu` VALUES (1, 110001);
INSERT INTO `sys_role_menu` VALUES (1, 111001);
INSERT INTO `sys_role_menu` VALUES (1, 111002);
INSERT INTO `sys_role_menu` VALUES (1, 111003);
INSERT INTO `sys_role_menu` VALUES (1, 111004);
INSERT INTO `sys_role_menu` VALUES (1, 111005);
INSERT INTO `sys_role_menu` VALUES (1, 111006);
INSERT INTO `sys_role_menu` VALUES (1, 111007);
INSERT INTO `sys_role_menu` VALUES (1, 111008);
INSERT INTO `sys_role_menu` VALUES (1, 120001);
INSERT INTO `sys_role_menu` VALUES (1, 121001);
INSERT INTO `sys_role_menu` VALUES (1, 121002);
COMMIT;

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant` (
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
  `gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='客户表';

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant` VALUES (1, 0, '陈租户', 0, '陈租户', '13055515853', '13055515853@163.com', '天上', '天上', 1, 0, '2019-08-07 16:33:26', '2019-08-07 16:33:43');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `sex` char(0) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别 1-男 2-女',
  `type` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '0管理员1微信用户',
  `salt` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '随机盐',
  `real_name` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT '手机',
  `avatar` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '租户id',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0-正常 1-锁住 2- 过期',
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '0-正常，1-删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_idx1_username` (`username`) USING BTREE,
  UNIQUE KEY `user_idx2_phone` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1300000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$CZf4oF94ezwYLbSi8IHLKuZzKyQd2vITrAi4DT0AsdfGPfLfjXOpm', NULL, '0', NULL, 'admin', '13000000000', NULL, 183, 1, NULL, 'admin@xdf.cn', '2018-10-19 16:50:50', NULL, 0);
INSERT INTO `sys_user` VALUES (132992, 'zhanrong', '$2a$10$gmu5cYqCBrKIAN3LV4u8Jed4JlfW0HEwv5ar1Abd2cSfa9tC3jN2W', NULL, '0', NULL, '詹榕', '15260228500', NULL, 183, 2200001049, NULL, 'zhanrong@xdf.cn', '2018-12-06 15:56:26', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (132997, 'linliling', '$2a$10$h.2afYNKPU.bVsUxLzUgk.BTfNhLROyoLN6vyUtBl3CjmegRMPKBi', NULL, '0', NULL, '林丽玲', '13606045951', NULL, 183, 2200003336, NULL, 'linliling@xdf.cn', '2018-12-06 15:55:29', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133089, 'kechunmei', '$2a$10$eeQ9ZvoSXgKTktFColajzOshtd6OWmzob.0zSVi16RY/.RV4M7trK', NULL, '0', NULL, '柯春梅', '18759958852', NULL, 183, 2200001049, NULL, 'kechunmei@xdf.cn', '2018-12-06 15:56:18', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133090, 'shianqi', '$2a$10$AX5Y1D2LqevujetrVxvh9OFh1rX3NsFIgxUU9IJ1L1JDUdxR1SPyK', NULL, '0', NULL, '施安祺', '18350270687', NULL, 183, 1540700000, NULL, 'shianqi@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133095, 'lufeiding', '$2a$10$c6MPSWHivBRpZ3RNHoqCIOa6L8Tf9DZqA5kYT5Ri2lsAepLgvbwRG', NULL, '0', NULL, '陆飞定', '18649947822', NULL, 183, 1540700000, NULL, 'lufeiding@xdf.cn', '2018-12-06 15:56:31', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133102, 'dingyali4', '$2a$10$MPZh0Sm9xMq3mDlKPrxW1ucOwb7W0B7zeKGq7r/3sJrK.9RAHwmL2', NULL, '0', NULL, '丁雅莉', '18750906466', NULL, 183, 1540700000, NULL, 'dingyali4@xdf.cn', '2018-12-06 15:55:17', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133109, 'lixiaohong9', '$2a$10$XvaVCLZ/2.1ttaBXZN6c/.LeqhELEGdW6IP1MJ6sjS8csAR3fNSCy', NULL, '0', NULL, '李小红', '13645005452', NULL, 183, 2200001049, NULL, 'lixiaohong9@xdf.cn', '2018-12-06 15:55:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133113, 'caoliwei', '$2a$10$7L4hO0DGCPSmz6JOst84o.vACayWUTo3Q.u.Z6xVpp2Uf.muhhXhK', NULL, '0', NULL, '曹立伟', '18659225350', NULL, 183, 2200001049, NULL, 'caoliwei@xdf.cn', '2018-12-06 15:55:39', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133117, 'chenshuangxi', '$2a$10$X23ks4kZfsrsrNEFZJl0je9DQ/jDWQNIHuGuJoKwNVtGFjG23c92m', NULL, '0', NULL, '陈双喜', '18250822031', NULL, 183, 2200001049, NULL, 'chenshuangxi@xdf.cn', '2018-12-06 15:56:33', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133118, 'daihuirong', '$2a$10$WfhlD8/MNbusmdV7Ebx4k.R/RPBYNrcEnY8XqzQ5G9iwKuuMWlH9a', NULL, '0', NULL, '戴惠蓉', '17759209124', NULL, 183, 1540700000, NULL, 'daihuirong@xdf.cn', '2018-12-06 15:55:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133119, 'huangduanya', '$2a$10$GFEhmc5YoGzMXeR9scTVM.633RQbAdslpKqtz3o2AILjD0uoVq59W', NULL, '0', NULL, '黄端雅', '18850580396', NULL, 183, 1540700000, NULL, 'huangduanya@xdf.cn', '2018-12-06 15:56:35', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133166, 'caierhong', '$2a$10$p.hIqPw5JdSMWiCMO1oQ3ugJbXy.QJLwympj/m2c0nE6kKss.Tm/C', NULL, '0', NULL, '蔡尔鸿', '15860741866', NULL, 183, 2200001297, NULL, 'caierhong@xdf.cn', '2018-12-06 15:56:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133171, 'huangxinyue', '$2a$10$meVCU8zpV7yDKnP3Auo9iOSOnvFfgFx4cX4tSeAZSug8infhK9GES', NULL, '0', NULL, '黄鑫玥', '13860489552', NULL, 183, 1542900000, NULL, 'huangxinyue@xdf.cn', '2018-12-06 15:56:36', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133178, 'linchao5', '$2a$10$zr.UFCCk/bPL.pizCiXiJ.zpF8CdEuapWSd4JcDc2NqaghhMkh2bu', NULL, '0', NULL, '林超', '15160713791', NULL, 183, 2200001049, NULL, 'linchao5@xdf.cn', '2018-12-06 15:56:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133210, 'chenyuantian', '$2a$10$05XUBKDx6g4VPrxdUv6uguJveogaVw51MhPDVDCnZ.xuCw4clycqS', NULL, '0', NULL, '陈元田', '18030043345', NULL, 183, 2200001050, NULL, 'chenyuantian@xdf.cn', '2018-12-06 15:56:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133228, 'huangjing32', '$2a$10$8cRNDgmNrmnfrjvQ5Kw3RuGsqL6B9KPdsUy.62mCtQ7ZdwduJw9/O', NULL, '0', NULL, '黄静', '15711514600', NULL, 183, 1540700000, NULL, 'huangjing32@xdf.cn', '2018-12-06 15:56:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133319, 'orujovjeyhun', '$2a$10$YRvSG5Hv/w4MXscczsigVuInYKvhIdQDbEkPQGWSv7Eqd5TpmKUPO', NULL, '0', NULL, 'ORUJOV JEYHUN', '18030252969', NULL, 183, 1540700000, NULL, 'orujovjeyhun@xdf.cn', '2018-12-06 15:55:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133372, 'zhengkejia3', '$2a$10$bGYPPpScIN.fJf0YOVMD.u/WUcjA4O9j1i0KftFe3pwWNcf8O/UOK', NULL, '0', NULL, '郑可嘉', '18850159923', NULL, 183, 1540700000, NULL, 'zhengkejia3@xdf.cn', '2018-12-06 15:56:40', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133379, 'helijuan4', '$2a$10$roiOUHVodkmgWh30HXCCseHdnMeu6MKkgkW0ux5Kws5/CpsuOm3bO', NULL, '0', NULL, '何丽娟', '15260785752', NULL, 183, 2200001049, NULL, 'helijuan4@xdf.cn', '2018-12-06 15:58:05', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133388, 'linxin14', '$2a$10$MTBuJWBv5uQAqH/yPf421OQD8DCkOx3oLGtx7h9dEBn/iS33ZGGlS', NULL, '0', NULL, '林欣', '18050274129', NULL, 183, 2200001049, NULL, 'linxin14@xdf.cn', '2018-12-06 15:56:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133425, 'chenhuan7', '$2a$10$RFiDA3KsRWfJRjdEyh1kw.0W4f0.RCtxnkvEk8l6oNYXon2aYBQMu', NULL, '0', NULL, '陈欢', '18120777611', NULL, 183, 2200001050, NULL, 'chenhuan7@xdf.cn', '2018-12-06 15:56:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133489, 'zhangfan41', '$2a$10$oQmzyKtdKP2KJrAWHDHUeO8sbBeLH/VJBRWNqcBvKkqQuLxNwx55i', NULL, '0', NULL, '张帆', '15659431610', NULL, 183, 1540700000, NULL, 'zhangfan41@xdf.cn', '2018-12-06 15:55:46', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133495, 'zhangkeke', '$2a$10$gquXMV/2KlFpoh/lKiGNXOYewKhRK.OcP320h.N/mFb1NFIVsrU5m', NULL, '0', NULL, '张珂珂', '15759266373', NULL, 183, 2200001049, NULL, 'zhangkeke@xdf.cn', '2018-12-06 15:55:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133498, 'luxiao5', '$2a$10$NTIt78oM0rr3HFHAaCrgQuqnhxRO.iQTkXbUpRJWVgSs76bUpf6V6', NULL, '0', NULL, '卢晓', '13400657607', NULL, 183, 2200001050, NULL, 'luxiao5@xdf.cn', '2018-12-06 15:55:11', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133503, 'liulei38', '$2a$10$s6pQb7ozoU2CoZ3uDgRFUuz2qt9rco/uSOc25SZBIbKsuPwezl1YG', NULL, '0', NULL, '刘磊', '17350035455', NULL, 183, 2200001050, NULL, 'liulei38@xdf.cn', '2018-12-06 15:55:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133510, 'wuhaiyan4', '$2a$10$cCc5pbmCIB5SNcVNq9qDE.v8WR4fH8FSs9mRrW5StKxTbPtYZ6lY2', NULL, '0', NULL, '吴海艳', '15960267721', NULL, 183, 2200001050, NULL, 'wuhaiyan4@xdf.cn', '2018-12-06 15:55:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133516, 'chenlijuan6', '$2a$10$IxIrBdP7r97uz445H7zMle8ovAatF8bUyhqtdp6ohtuEMNXudNVOS', NULL, '0', NULL, '陈丽娟', '13509312635', NULL, 183, 2200001049, NULL, 'chenlijuan6@xdf.cn', '2018-12-06 15:56:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133517, 'fushanshan3', '$2a$10$UoB0ZDAQrkpCxgyxLYJNAO0GhjzKknGa//lJxLZzcZ8/kntFi1fKa', NULL, '0', NULL, '傅珊珊', '18659592231', NULL, 183, 2200001050, NULL, 'fushanshan3@xdf.cn', '2018-12-06 15:55:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133528, 'lichenying', '$2a$10$E19N0O0cBIX2jN9.HvGNFOmvzq1a9gJIbj5aAmJr8FKHLxRk41xuW', NULL, '0', NULL, '李陈颖', '18650997805', NULL, 183, 2200001049, NULL, 'lichenying@xdf.cn', '2018-12-06 15:55:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133529, 'gongshasha', '$2a$10$nvAeEFBQfAskkKzqwUdo7uXWrjYdTL88UoySidraHEymHguBjucqK', NULL, '0', NULL, '龚沙沙', '18750813771', NULL, 183, 1540700000, NULL, 'gongshasha@xdf.cn', '2018-12-06 15:57:00', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133537, 'xieqiuying', '$2a$10$YS8JiT1NbKq29U5sS2SNauPgXFIizsYdnLZGx.6QQjpvmPgsw4Uc.', NULL, '0', NULL, '谢秋莹', '13043042157', NULL, 183, 1540700000, NULL, 'xieqiuying@xdf.cn', '2018-12-06 15:56:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133543, 'zhangronggui', '$2a$10$.UaVTv6nUo7hDEhmfU1Rj.YsOkbzr49Mi4uHHv97YgK1oKXnVeiDi', NULL, '0', NULL, '张荣桂', '15880432583', NULL, 183, 2200001049, NULL, 'zhangronggui@xdf.cn', '2018-12-06 15:55:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133545, 'hanqi6', '$2a$10$owjKQNS0h/vDLUmiCX91FOARXrseUv0J07uoIxspyVyHTpMTZcrge', NULL, '0', NULL, '韩琦', '18906005589', NULL, 183, 2200001050, NULL, 'hanqi6@xdf.cn', '2018-12-06 15:56:21', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133546, 'lixiaozhen', '$2a$10$NTNE7OFsRYBJOPyywf4oB.xeiNNL5T7a26WIDW1dzcrF.Tzt/Btae', NULL, '0', NULL, '李小珍', '18859297217', NULL, 183, 2200001049, NULL, 'lixiaozhen@xdf.cn', '2018-12-06 15:55:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133552, 'zhuhuamin', '$2a$10$HTJhnXMrQppHnlYjeNyrK.nF3S1lWC6sfNVfrqnGY/S0CuqYvAII2', NULL, '0', NULL, '朱华敏', '18750516785', NULL, 183, 1540700000, NULL, 'zhuhuamin@xdf.cn', '2018-12-06 15:55:40', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133558, 'zenghaiyan3', '$2a$10$b9TLNdunaH6YFOvSWOQziO3MtdSuo8pIsAG/44dQxEj35SYChuia6', NULL, '0', NULL, '曾海燕', '15259228057', NULL, 183, 2200001050, NULL, 'zenghaiyan3@xdf.cn', '2018-12-06 15:55:40', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133620, 'guomuxin', '$2a$10$0RCM8y9jpaaAzYPA5HjdhuOFXBuiuaGZsQUBwBxBUXOoCtQWB/Wme', NULL, '0', NULL, '郭穆新', '13194080740', NULL, 183, 2200001049, NULL, 'guomuxin@xdf.cn', '2018-12-06 15:56:43', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133631, 'linhuai', '$2a$10$vDrwMEDG8pXLUFBIsEV4E.qTFV9T/8fmQ0qyFy60qLdEE3699.CsG', NULL, '0', NULL, '林淮', '13515116551', NULL, 183, 2200001049, NULL, 'linhuai@xdf.cn', '2018-12-06 15:56:14', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133679, 'huangkefan', '$2a$10$88E65kiS9Qw7RfTUHXXhO.IzF0QzpF/xyFJ6okH/TgiNR0xbJKETm', NULL, '0', NULL, '黄克凡', '13599293591', NULL, 183, 2200003337, NULL, 'huangkefan@xdf.cn', '2018-12-06 15:56:55', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133681, 'xucan', '$2a$10$LEJlkjGliYA1IuE64MhkgeOCcQ5bWmnCqWdIgvEgbyM5E6.Z2V.32', NULL, '0', NULL, '许灿', '15859913533', NULL, 183, 2200001049, NULL, 'xucan@xdf.cn', '2018-12-06 15:56:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133715, 'cuichen3', '$2a$10$SKE8F7fcZsdCYOP/QO4YFu7NBzRG6oUo.jUx9qowqRrgEYJMckASq', NULL, '0', NULL, '崔晨', '18048566829', NULL, 183, 2200003337, NULL, 'cuichen3@xdf.cn', '2018-12-06 15:55:36', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133746, 'huxiaoxiao', '$2a$10$suqZoDuQvihko6lpUW/U4ORQ7ZEiAKTTMuBEyYh52PoVVtkscfVQO', NULL, '0', NULL, '胡潇潇', '13616021696', NULL, 183, 1541400000, NULL, 'huxiaoxiao@xdf.cn', '2018-12-06 15:55:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133785, 'fuyaling3', '$2a$10$8AFRqzKL7k52Q9AHeMs2h.lu173dx90/TyiQ0KNjWD0oeXkkVEvAK', NULL, '0', NULL, '傅雅灵', '18659666467', NULL, 183, 1540200000, NULL, 'fuyaling3@xdf.cn', '2018-12-06 15:55:06', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133797, 'zhaofengping', '$2a$10$YDSF7eD6xOXUZyd/50fTUuun35/vFV3t3E78fq2Y04TNTMh7MogbS', NULL, '0', NULL, '赵烽平', '18259072462', NULL, 183, 2200001049, NULL, 'zhaofengping@xdf.cn', '2018-12-06 15:57:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133804, 'xiongyila', '$2a$10$lRtm6yAplPzpU41aIIVHGuv.Gi8L1.ZtjZXzg2x6Tbd42jKRcVVrm', NULL, '0', NULL, '熊一腊', '15823346721', NULL, 183, 1542500000, NULL, 'xiongyila@xdf.cn', '2018-12-06 15:55:59', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133809, 'zhangling33', '$2a$10$yiAC1HYnOOHLpGZKgjWr8uRuiCX4GnuHfO4EKaMuVRWlZoFYW0E8.', NULL, '0', NULL, '张玲', '18759958167', NULL, 183, 2200001050, NULL, 'zhangling33@xdf.cn', '2018-12-06 15:58:02', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133811, 'huanghuoqing', '$2a$10$mCYne6mtuNjSxL.YsSXQ3.HTWjcpmrF9dvZ71y9eB7AQbSuLuy88.', NULL, '0', NULL, '黄火青', '13255940039', NULL, 183, 2200001050, NULL, 'huanghuoqing@xdf.cn', '2018-12-06 15:56:35', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133869, 'chendingxia', '$2a$10$LjnHvTZaeejtJeS3N4Mzg.dTG3XPR2Ob3yUmBXPLXWffkze3QFcIi', NULL, '0', NULL, '陈鼎霞', '13400635122', NULL, 183, 1540700000, NULL, 'chendingxia@xdf.cn', '2018-12-06 15:56:20', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133877, 'xuqiuyi', '$2a$10$CTXAc98bmBG9Pk1nezG3d.tc5LQfKTobYaNYnWcUxm/.bGLKZ7ND6', NULL, '0', NULL, '许秋怡', '13023971013', NULL, 183, 1540700000, NULL, 'xuqiuyi@xdf.cn', '2018-12-06 15:56:27', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133908, 'qianhuina', '$2a$10$MTr4xvV.AouwCsUj14XsleQ5OcDJOmTWLuQBRLo4yKOrGDsdiNCNS', NULL, '0', NULL, '钱惠娜', '18605043250', NULL, 183, 2200001050, NULL, 'qianhuina@xdf.cn', '2018-12-06 15:56:30', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133916, 'xulu15', '$2a$10$lIvJeU/uAErfpeBZfHzKSOBJpFk41bYCvOfP.Gj/gDr98VNyxDela', NULL, '0', NULL, '徐璐', '15959282536', NULL, 183, 2200001049, NULL, 'xulu15@xdf.cn', '2018-12-06 15:55:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133929, 'chenxiaoying5', '$2a$10$BV6vyfblpKPmnnJdXIrAYOCM7qvNgsmNuPpVIwzAX6RbJIR1znd42', NULL, '0', NULL, '陈小颖', '18760096295', NULL, 183, 2200001049, NULL, 'chenxiaoying5@xdf.cn', '2018-12-06 15:56:09', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133938, 'shentianzi', '$2a$10$CtE93ISgPFun6Xumv9K2zuYb6JDkL/42YtawNy.LtjbCjd2nOma7O', NULL, '0', NULL, '沈天姿', '15959272165', NULL, 183, 2200001049, NULL, 'shentianzi@xdf.cn', '2018-12-06 15:55:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133941, 'panqiuping', '$2a$10$LZ7BwjkPUCpvOIdgySSnJ.0VYBoWnWIsY22BaongZ6mwoe5PxaGqS', NULL, '0', NULL, '潘秋萍', '18359722872', NULL, 183, 1540700000, NULL, 'panqiuping@xdf.cn', '2018-12-06 15:58:00', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133945, 'yanqiuping', '$2a$10$DZZWj.AmAu5xWkOKEHYMVu7NmNG.m3gCO24BajyXEtL30ia6UCfOq', NULL, '0', NULL, '严秋萍', '13023989309', NULL, 183, 2200001049, NULL, 'yanqiuping@xdf.cn', '2018-12-06 15:55:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133946, 'qiuguiying', '$2a$10$nBUxOxSf0qrOnKCaG9duzOXEqXcdGUp.fbmJKTEg4mt0HuEgUJarG', NULL, '0', NULL, '丘桂英', '13055219935', NULL, 183, 2200001049, NULL, 'qiuguiying@xdf.cn', '2018-12-06 15:55:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (133964, 'pantingting5', '$2a$10$nSkhzqychnO4j/OA6mce8.IfeH8bMnicOJtdTP6xwGoPBkS0j5t82', NULL, '0', NULL, '潘婷婷', '13958911320', NULL, 183, 1542900000, NULL, 'pantingting5@xdf.cn', '2018-12-06 15:55:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133973, 'yangyang120', '$2a$10$71WX2YDcX0OVGqViUlq5AODtrKizG47ez2dKvkzMK8/9MexDQIpOa', NULL, '0', NULL, '杨洋', '18060920791', NULL, 183, 1542900000, NULL, 'yangyang120@xdf.cn', '2018-12-06 15:55:28', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133979, 'luyu15', '$2a$10$K6u8p2ABhf3jvw5iOddiuu5c2.gCHPwcvR2HNmtK4aStzap0/ogXW', NULL, '0', NULL, '卢羽', '18159850809', NULL, 183, 2200001049, NULL, 'luyu15@xdf.cn', '2018-12-06 15:55:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (133988, 'chenmeilan', '$2a$10$lDmxWCyVpxIX.7nc8eFIdesEWdQrJQnTZap4ge9.l8N2SVA7w6BA6', NULL, '0', NULL, '陈美兰', '13656017073', NULL, 183, 1540700000, NULL, 'chenmeilan@xdf.cn', '2018-12-06 15:56:46', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134046, 'wangshize', '$2a$10$.K/LGitEgLngCu.dm.Z59uQoHgX4GZRyimcAK/P.S3rxuj0e1N/XG', NULL, '0', NULL, '王世泽', '13235006626', NULL, 183, 2200004387, NULL, 'wangshize@xdf.cn', '2018-12-06 15:56:00', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134053, 'daiguihua3', '$2a$10$VBhZOFWT6sviF0O5AWIP0.Sz5l0EQjFmfb3YoiwOcbt9mNaauirna', NULL, '0', NULL, '戴桂花', '18054820423', NULL, 183, 2200001049, NULL, 'daiguihua3@xdf.cn', '2018-12-06 15:55:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134069, 'chenlihui4', '$2a$10$gcIp8IMPSfkqHAjuthpDEe6i438nm//c2suX4KXSaFSUZElgbZizy', NULL, '0', NULL, '陈丽慧', '18050268442', NULL, 183, 1540700000, NULL, 'chenlihui4@xdf.cn', '2018-12-06 15:56:31', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134227, 'dieyun', '$2a$10$kFoRT6DbDz7hIGbZMm.ECeKh6GuAYhUrxI1Tm20OOWQirIvdfstoS', NULL, '0', NULL, '牒韵', '15606905616', NULL, 183, 2200001049, NULL, 'dieyun@xdf.cn', '2018-12-06 15:55:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134401, 'zhaolingyun3', '$2a$10$UNX5QpkKv66cICtQeoi94.ymd9BONulWkHf4Xvd6BASiCuBhS7DOy', NULL, '0', NULL, '赵伶云', '15150504745', NULL, 183, 2200001049, NULL, 'zhaolingyun3@xdf.cn', '2018-12-06 15:56:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134408, 'liangruiyan', '$2a$10$9MoneMMgr8Ag6IPLR3oi.emH4RKQju18XQTBFWI02z76z0s19yb.6', NULL, '0', NULL, '梁瑞琰', '18750215079', NULL, 183, 2200001049, NULL, 'liangruiyan@xdf.cn', '2018-12-06 15:55:54', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134413, 'zhuoyun', '$2a$10$OmOcyGeKr994VYCFMO1I4uqgKleWCA5rmbUBQI2gTsf3ww.8oYY7C', NULL, '0', NULL, '卓韵', '18750396951', NULL, 183, 1540700000, NULL, 'zhuoyun@xdf.cn', '2018-12-06 15:55:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134429, 'linliqin', '$2a$10$p6iDtl.BFYGtL3FSt7V0wuzR/TClPVEj2ONYiUuJ.VwVqpgUQrfQ2', NULL, '0', NULL, '林丽琴', '18030221757', NULL, 183, 2200001049, NULL, 'linliqin@xdf.cn', '2018-12-06 15:55:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134475, 'linzhenghuai', '$2a$10$K7HBkpMKojGoEyDU3LnO5u2O/Ddiv.CfneeNEQdAuih9hinaapZKW', NULL, '0', NULL, '林郑怀', '13959926566', NULL, 183, 1542900000, NULL, 'linzhenghuai@xdf.cn', '2018-12-06 15:56:17', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134495, 'guanmingxia', '$2a$10$MtoEp3R.dQ6MT/MJ9fmTRuyDe8nz4p7BAHP8WvMcjuSiuyMOPod/i', NULL, '0', NULL, '官明霞', '13400620400', NULL, 183, 2200002222, NULL, 'guanmingxia@xdf.cn', '2018-12-06 15:55:35', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134500, 'xuejunjie', '$2a$10$gF4eZ2DAWkMOPP2mvxLjZ.viPJHKn1QKCTDMrZKUrbux4pMhOVFoi', NULL, '0', NULL, '薛君捷', '15959220397', NULL, 183, 2200004387, NULL, 'xuejunjie@xdf.cn', '2018-12-06 15:56:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134501, 'sunshiyun', '$2a$10$/kKfMfhJ89CzQtIsByYsPO.PCfC7Ua2hVJlutjadIsApJNmnI3TOe', NULL, '0', NULL, '孙诗云', '18850048369', NULL, 183, 2200001049, NULL, 'sunshiyun@xdf.cn', '2018-12-06 15:55:34', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134521, 'huyongjin', '$2a$10$Il3q2/TFd9C7UJN8hTezquBmnhhkUuuS/fUsvuhQ8g2OQpU76/AjW', NULL, '0', NULL, '胡永津', '18859279087', NULL, 183, 2200001138, NULL, 'huyongjin@xdf.cn', '2018-12-06 15:57:59', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134538, 'wangyan103', '$2a$10$lVr7V2nBY.fatS3W8vUzJOt/bSecSgqs8XfYfxKTtY5fWP/AkqA4a', NULL, '0', NULL, '王燕', '15959292103', NULL, 183, 2200001049, NULL, 'wangyan103@xdf.cn', '2018-12-06 15:56:03', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134609, 'xiasong', '$2a$10$FtiOi4Tp1h.m4Afbt5EISORLLaKGw9ayc0N0gBDUyGv00krQPbOiy', NULL, '0', NULL, '夏松', '13036112680', NULL, 183, 2200003337, NULL, 'xiasong@xdf.cn', '2018-12-06 15:55:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134692, 'lijing160', '$2a$10$/gtKBBqFhO9sRuL01w1UVOUYdzcDPOIwsaByvUtaEQ/rbRCVByrMi', NULL, '0', NULL, '李晶', '18960485563', NULL, 183, 2200003337, NULL, 'lijing160@xdf.cn', '2018-12-06 15:55:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134697, 'lvzuanzhu', '$2a$10$9qsJ8840mfFCfrqB1aVAgujql4gTTSPUy5BNVGHL4niuyMadXawBK', NULL, '0', NULL, '吕钻珠', '13505010739', NULL, 183, 1540700000, NULL, 'lvzuanzhu@xdf.cn', '2018-12-06 15:55:26', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134699, 'linyixiao', '$2a$10$j6vbNXFya6krY9ILLfwJE.7u6B4NnGFKrHfiKc0W/k0RqyA2xMBnG', NULL, '0', NULL, '林逸晓', '13860469524', NULL, 183, 2200001049, NULL, 'linyixiao@xdf.cn', '2018-12-06 15:56:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134737, 'xuesiling', '$2a$10$K8neGTxgTfAC2uXja.O1uuLNnT4QJzMGuzHh3AcaGt0OQR5Dx4VUy', NULL, '0', NULL, '薛思聆', '18650422050', NULL, 183, 2200001049, NULL, 'xuesiling@xdf.cn', '2018-12-06 15:56:25', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134768, 'yuanbinbin', '$2a$10$570S/b3DqrniEdVr4AgzCetRXClropxqKUbHwwZ2MUUduXYMJ9U9i', NULL, '0', NULL, '袁彬彬', '15859248068', NULL, 183, 1540700000, NULL, 'yuanbinbin@xdf.cn', '2018-12-06 15:56:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134823, 'linyinhua', '$2a$10$5.AD76DGE1muKla0Gd/0r.l6hMxgJ7/ePSg3ugtlQqjYK4fSsZsNi', NULL, '0', NULL, '林银华', '13950101076', NULL, 183, 2200004387, NULL, 'linyinhua@xdf.cn', '2018-12-06 15:56:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134892, 'caishangzhi', '$2a$10$IEuVV/NrcQhti8ZHfAotF.f1J9I8CZ5RbX4uz1IXqODsF/4LbQu8O', NULL, '0', NULL, '蔡尚志', '13400684840', NULL, 183, 1540700000, NULL, 'caishangzhi@xdf.cn', '2018-12-06 15:56:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134893, 'zengfei3', '$2a$10$n97JaFJJmZoGwSYCzMJZ/.U/B1OuhcldBuKNHJ6AY6hOQqzY2.53K', NULL, '0', NULL, '曾菲', '18883735089', NULL, 183, 2200001049, NULL, 'zengfei3@xdf.cn', '2018-12-06 15:55:40', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134895, 'donghaitao', '$2a$10$3F/6EQxb5Vk0zRrbIONyJupA4AZ8MXsfm9BTwCjVPgLK42gr1zmbq', NULL, '0', NULL, '董海涛', '13043009268', NULL, 183, 2200001049, NULL, 'donghaitao@xdf.cn', '2018-12-06 15:56:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134898, 'guomingqin', '$2a$10$MI9x1551Gwif.fYJsQNlKeoUpIzpcEY5gcMsC2nWcC4Xb//akvR3G', NULL, '0', NULL, '郭明钦', '13074893796', NULL, 183, 2200001050, NULL, 'guomingqin@xdf.cn', '2018-12-06 15:56:42', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134905, 'guocuiping3', '$2a$10$uY93sTtkWG.KwfSYowV3mekkOQgG77aw3z3TweUAGwOAjO1DjafAm', NULL, '0', NULL, '郭翠萍', '15750717129', NULL, 183, 2200001049, NULL, 'guocuiping3@xdf.cn', '2018-12-06 15:56:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134923, 'linyanping4', '$2a$10$oEIRdy7kmDcmyz/yPeGGhuR4HbUj2v1g8n6gTrawOtUVDxxV5CwLy', NULL, '0', NULL, '林燕萍', '15805936165', NULL, 183, 2200001049, NULL, 'linyanping4@xdf.cn', '2018-12-06 15:56:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134947, 'liangpan', '$2a$10$hGbChbv0PrO5WPG9ni1ii.SCNKAMCpTjIZRAh9JacUADsuuFixa1y', NULL, '0', NULL, '梁盼', '17359318621', NULL, 183, 2200003337, NULL, 'liangpan@xdf.cn', '2018-12-06 15:55:55', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134964, 'liaoxuezhen', '$2a$10$DZdHtPfoFAP8O/r0tHyk6uDT0lQqZWBv0dZg7fs9Edokgknbxip2a', NULL, '0', NULL, '廖雪真', '18159350821', NULL, 183, 2200004387, NULL, 'liaoxuezhen@xdf.cn', '2018-12-06 15:55:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134967, 'linyuhong', '$2a$10$ZDedphwnSQo3kDTLCN6Ah.CwA9cczJ9EGr8F814r5qERzMdoeQpsq', NULL, '0', NULL, '林裕红', '18489977863', NULL, 183, 2200001049, NULL, 'linyuhong@xdf.cn', '2018-12-06 15:56:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134969, 'zhangcuiling', '$2a$10$H9G6CYPPVb/BI2WJuwm4mu81eaKO39Hy8jy9xrr1vHy1jtT20J.16', NULL, '0', NULL, '张翠玲', '17720760105', NULL, 183, 1540700000, NULL, 'zhangcuiling@xdf.cn', '2018-12-06 15:55:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (134982, 'chenrong20', '$2a$10$n3zbtyZjAXTy5JJnbNP2VeAKzopwszLKLd5zCRwQK9kBp3oagaF0G', NULL, '0', NULL, '陈溶', '15880221974', NULL, 183, 2200001050, NULL, 'chenrong20@xdf.cn', '2018-12-06 15:56:45', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (134994, 'zhengzhihua', '$2a$10$AK.XspQE68fA9lbjWSHtQekO8YDFtsHaopLUqzcEeejwyJpSqrzU6', NULL, '0', NULL, '郑志华', '13030890403', NULL, 183, 2200001138, NULL, 'zhengzhihua@xdf.cn', '2018-12-06 15:57:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135012, 'lincailong', '$2a$10$PySxzIapQiIP3ttRGB8y5ukJYNSOAeW1dg1HJ2Wa.6SeEinWqRnqO', NULL, '0', NULL, '林彩龙', '13850074425', NULL, 183, 2200001049, NULL, 'lincailong@xdf.cn', '2018-12-06 15:56:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135032, 'zouyucheng', '$2a$10$q5dDQ0H1gRXpKhaA9NzgAuNFwTYXg.BCf.KGWOlpTyMbOD/Bbht6.', NULL, '0', NULL, '邹羽澄', '15605026288', NULL, 183, 2200001049, NULL, 'zouyucheng@xdf.cn', '2018-12-06 15:56:39', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135051, 'shilishan', '$2a$10$yYVCkWOVSWogKqHYP9tB3eCtrqh39ZG7TGD6tt6Jp59IhBDToJrYy', NULL, '0', NULL, '施丽姗', '18695633340', NULL, 183, 2200001049, NULL, 'shilishan@xdf.cn', '2018-12-06 15:55:38', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135103, 'yaoyating', '$2a$10$.KR0CQuN2tW.EG3BjGBeMueDOhsJbzyXmwfzSmhZKcstlV0/NVr5e', NULL, '0', NULL, '姚雅婷', '15606008881', NULL, 183, 2200001297, NULL, 'yaoyating@xdf.cn', '2018-12-06 15:55:33', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135105, 'yangjinping', '$2a$10$W9J/llod.xa7XNtRw84iDuF9Oq2FlnbhSZX/MN0eTijN31l2l/2RK', NULL, '0', NULL, '杨金平', '17701863068', NULL, 183, 2200001049, NULL, 'yangjinping@xdf.cn', '2018-12-06 15:55:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135126, 'yuanran', '$2a$10$GOJk/D4Q9pczfigxQwKbfeQWTU8kyh5.9whINMcAg5UBW.kbKU0pC', NULL, '0', NULL, '余安然', '13959927658', NULL, 183, 2200003337, NULL, 'yuanran@xdf.cn', '2018-12-06 15:55:20', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135128, 'wubichun', '$2a$10$FyKV9QEgsW3jy9zj4S8DAeAy4Vs9FmG/uFEzzhPfTWg1Kh0UeMzbq', NULL, '0', NULL, '伍碧春', '18850550043', NULL, 183, 1540700000, NULL, 'wubichun@xdf.cn', '2018-12-06 15:55:19', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135132, 'chentingting16', '$2a$10$J6pC.3TNNQeQFxwpvB5iPeLacjUpauG/uTHrz.7CTqADQtjeD1Y9W', NULL, '0', NULL, '陈婷婷', '18850048316', NULL, 183, 2200001049, NULL, 'chentingting16@xdf.cn', '2018-12-06 15:56:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135139, 'guozhongbin', '$2a$10$E8.YW0jVhRVyiufTRdfQAOlBG4wmXasRva6HiG6l0sny8XOHgMSQe', NULL, '0', NULL, '郭钟彬', '15750953109', NULL, 183, 2200001049, NULL, 'guozhongbin@xdf.cn', '2018-12-06 15:56:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135154, 'chenyaxin3', '$2a$10$7oWR.1yJnvpOtc9vRqKKierx4KEwzHn104N9G38I8P/0q26IZDMu.', NULL, '0', NULL, '陈雅鑫', '18030131526', NULL, 183, 1540500000, NULL, 'chenyaxin3@xdf.cn', '2018-12-06 15:56:19', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135208, 'hemiao6', '$2a$10$fA7HK5BjDbuOMOYevVArHuGWL4bszGw7/Ec8fGujTIKcEsbRm/f/C', NULL, '0', NULL, '何妙', '18649940884', NULL, 183, 2200001049, NULL, 'hemiao6@xdf.cn', '2018-12-06 15:55:19', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135319, 'weikaiyan', '$2a$10$TZ3WJjQ.H2tz2jZpGrBEyu5OBzYR/rMXtJ5kfaw5aVdhTwUfEtRFG', NULL, '0', NULL, '魏开颜', '15659262716', NULL, 183, 2200001049, NULL, 'weikaiyan@xdf.cn', '2018-12-06 15:56:54', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135322, 'suyaqing', '$2a$10$b3mOdrEKcZ7a2/s1wWUCbeOoZuGDfkWhJrd/xXAjrO0qJKPC.Yh36', NULL, '0', NULL, '苏雅青', '13110590362', NULL, 183, 2200001049, NULL, 'suyaqing@xdf.cn', '2018-12-06 15:55:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135326, 'dingxiaolong', '$2a$10$JhlPYB8xfIlSOVzLHEcQHegi3FD77NJGMJQloVNKPUKtRIS/q9yUS', NULL, '0', NULL, '丁晓龙', '13215917927', NULL, 183, 2200001049, NULL, 'dingxiaolong@xdf.cn', '2018-12-06 15:55:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135338, 'zhangrun5', '$2a$10$y5LjC8OINDpC1iCvzoSO8O1KcrCdDxMaWvq4/8y1.1xs6kULT9/ua', NULL, '0', NULL, '张润', '18649941581', NULL, 183, 1542900000, NULL, 'zhangrun5@xdf.cn', '2018-12-06 15:55:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135345, 'chenxinghua3', '$2a$10$nvFnz7uGeTkHmeFcNWLbKOQyDUxxX9k0c2VHrWoHU8niL4s0/elyG', NULL, '0', NULL, '陈星桦', '15711580263', NULL, 183, 1542900000, NULL, 'chenxinghua3@xdf.cn', '2018-12-06 15:56:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135348, 'laixiaofei', '$2a$10$plN9Os7AFQLkZtouMHsF9e7vuQL.TyPxZ4dkGTzUsVssNWiA4a8D6', NULL, '0', NULL, '赖晓菲', '18750233509', NULL, 183, 1540700000, NULL, 'laixiaofei@xdf.cn', '2018-12-06 15:56:29', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135379, 'zhengyingying3', '$2a$10$7cI/P1XGggeXsTduoiim8Or7cAgsc78I1D07mNCbuDSSl6e4qkQs2', NULL, '0', NULL, '郑盈盈', '18965161580', NULL, 183, 2200001050, NULL, 'zhengyingying3@xdf.cn', '2018-12-06 15:56:41', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135380, 'huanyuan', '$2a$10$7hlqJvgBOkr0/fgd8J3D8OWODa1FSVI64EDNzzrNerwX2Kv7HVKuy', NULL, '0', NULL, '胡安媛', '18408269023', NULL, 183, 2200001050, NULL, 'huanyuan@xdf.cn', '2018-12-06 15:55:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135391, 'fuyayun', '$2a$10$OCebRhweZDVV9ot.znQ29OrQS820godRHQH5ECSqDRPbAPLEGVcyK', NULL, '0', NULL, '傅雅云', '18705991878', NULL, 183, 1540700000, NULL, 'fuyayun@xdf.cn', '2018-12-06 15:55:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135394, 'jianglei7', '$2a$10$BU53Bw4qWMt4vB6DjLcaTe8etaepxT6mldyiEugwpwxTyGWniUhO.', NULL, '0', NULL, '姜蕾', '13015690169', NULL, 183, 1540700000, NULL, 'jianglei7@xdf.cn', '2018-12-06 15:55:33', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135433, 'zhongqiaoqin', '$2a$10$OIjIe2MBpi3naVcgPeVd7ec/uh2CE.Id6GaIqinJqKV5bKNAo6eG2', NULL, '0', NULL, '钟巧琴', '15080454259', NULL, 183, 1542100000, NULL, 'zhongqiaoqin@xdf.cn', '2018-12-06 15:56:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135449, 'piluoying', '$2a$10$A6yv/XQ3x1dYjztsMiUcr.TimXMCuQOkDDejYGyaB5PVmznSzioVW', NULL, '0', NULL, '皮洛盈', '15959248770', NULL, 183, 2200001049, NULL, 'piluoying@xdf.cn', '2018-12-06 15:57:59', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135468, 'lvshaobo', '$2a$10$mFxPmPxL/PJ6ycUPOrOr9OBw/6.CEiybDtSOlmVWyeLJRMaoSFCWi', NULL, '0', NULL, '吕少波', '15960221352', NULL, 183, 1540700000, NULL, 'lvshaobo@xdf.cn', '2018-12-06 15:58:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135534, 'hongcuifang', '$2a$10$Exh3wskGd05E056edeNeRu/IyJBWytgZZ4K4JyFb76aC1qphJeKda', NULL, '0', NULL, '洪翠芳', '18250810691', NULL, 183, 1542900000, NULL, 'hongcuifang@xdf.cn', '2018-12-06 15:58:00', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135642, 'zhouyuqing', '$2a$10$iQxAozNyZiGL1jNwuygrv.fq4SnlbaW61z9wInaLzDA2qBMx9I/Me', NULL, '0', NULL, '周雨晴', '15659830332', NULL, 183, 2200001050, NULL, 'zhouyuqing@xdf.cn', '2018-12-06 15:58:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135649, 'zhengchenmin', '$2a$10$L7/lwgiJEUv9I0gx9XTqcODwCfUBdrFqddHIPpViA0V2ft1ISljFq', NULL, '0', NULL, '郑陈敏', '15759257719', NULL, 183, 2200001049, NULL, 'zhengchenmin@xdf.cn', '2018-12-06 15:57:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135659, 'xiekangxin', '$2a$10$v0shA/fRMDclv2ShxE1jv.qTDa3MnmYX0THVawnN1pt9avcv47CB.', NULL, '0', NULL, '谢康新', '18084724665', NULL, 183, 2200001138, NULL, 'xiekangxin@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135668, 'xumeiling5', '$2a$10$h/dWAnhixGJs0S1mTvzow.UQpacZdCpw5JdUVP0fKYzl/deWCV80S', NULL, '0', NULL, '许美玲', '18030207973', NULL, 183, 2200001049, NULL, 'xumeiling5@xdf.cn', '2018-12-06 15:57:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135671, 'yeruiping', '$2a$10$mFzWl97lq52MyGm6sXgpNOkzZhkWpTqsXsfayWft3os.k1Hug70lu', NULL, '0', NULL, '叶瑞萍', '18959257542', NULL, 183, 2200001049, NULL, 'yeruiping@xdf.cn', '2018-12-06 15:58:04', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135768, 'weina10', '$2a$10$w/CbK3U0Lk.svELUkPhWze8T8ATm8belr2iPn/rTEwfxnTh7METwW', NULL, '0', NULL, '魏娜', '18359187006', NULL, 183, 2200003337, NULL, 'weina10@xdf.cn', '2018-12-06 15:57:20', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135801, 'zhengshanshan', '$2a$10$IjUKiDF7WY3V7zKxJ8n2ru/lkmHuD3lxQ0e72nn6UUcE3HiXawuEa', NULL, '0', NULL, '郑珊珊', '13023989332', NULL, 183, 2200001049, NULL, 'zhengshanshan@xdf.cn', '2018-12-06 15:57:57', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135860, 'liling51', '$2a$10$3RdGyP3sz4mkL5fZ/308aeA3.9Zei3lFe.hiX/9GgMtZMJ06JRGA.', NULL, '0', NULL, '李玲', '15060785524', NULL, 183, 2200001049, NULL, 'liling51@xdf.cn', '2018-12-06 15:58:01', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (135868, 'zhoushimin', '$2a$10$bnIG.BPQnwwnD0JBMdZujeFEEHSkpqFsM8UqpYALtX79sxM.j8zqe', NULL, '0', NULL, '周诗敏', '18771067072', NULL, 183, 2200001049, NULL, 'zhoushimin@xdf.cn', '2018-12-06 15:58:03', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135870, 'zhangjiachuan', '$2a$10$m0TAvNe1NQwDkzkE4zDo6O1oarfkUpmPDyeGLc1r5.1mQo4AIuoaq', NULL, '0', NULL, '章嘉钏', '15750756181', NULL, 183, 2200001049, NULL, 'zhangjiachuan@xdf.cn', '2018-12-06 15:57:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (135879, 'zhangbairong', '$2a$10$SuNZLlLrFdlMJ9gMnoc8TO.2NZEKjK7NPxH7pVSWRotRQT7bisSkG', NULL, '0', NULL, '张栢荣', '13606095357', NULL, 183, 1542900000, NULL, 'zhangbairong@xdf.cn', '2018-12-06 15:58:02', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136126, 'zhangyajing6', '$2a$10$f7cF2./cRRQPW1hz//Nhn.HePOQq/CwgX7hPRu3ehjNAqMwibLiVW', NULL, '0', NULL, '张雅婧', '18876308065', NULL, 183, 1542500000, NULL, 'zhangyajing6@xdf.cn', '2018-12-06 15:58:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136189, 'hongbishuang', '$2a$10$nW5ekMuw3a/y2qQ9Moqc9.2F2iND.u/v598wyj0iVeY4487oDW23m', NULL, '0', NULL, '洪碧双', '13950152637', NULL, 183, 2200001049, NULL, 'hongbishuang@xdf.cn', '2018-12-06 15:58:00', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136198, 'caishaoting', '$2a$10$IinOhdmyyxlJZpsbjuEsOeJewoGzkHdtma0mP.My69NwnBRFEJfi2', NULL, '0', NULL, '蔡少婷', '18750903105', NULL, 183, 2200003337, NULL, 'caishaoting@xdf.cn', '2018-12-06 15:57:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136352, 'huangjingyang', '$2a$10$DOEs4PK59i56zNZMD9l7y.W8G7IebUcdJfZ/hAm4WaIXp2yf5Mq9u', NULL, '0', NULL, '黄景洋', '15080313730', NULL, 183, 2200001049, NULL, 'huangjingyang@xdf.cn', '2018-12-06 15:57:20', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136358, 'lanxiaoxiang', '$2a$10$rlZbjSWwZabfDSSbrdLD0e9FtNzUoPGV.1Bmtra.oDbfLqCGtdWQq', NULL, '0', NULL, '蓝小香', '18450089325', NULL, 183, 1540700000, NULL, 'lanxiaoxiang@xdf.cn', '2018-12-06 15:57:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136359, 'limeifen', '$2a$10$xq19wnqQGd1cpAKUSsNmR.DHFok/23u9GSdWE.5PAUCkagNUshjiG', NULL, '0', NULL, '李美芬', '13055382288', NULL, 183, 2200001049, NULL, 'limeifen@xdf.cn', '2018-12-06 15:58:00', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136362, 'chenjia12', '$2a$10$EmRIQWECgKCwCOk/uXucR.Gm20PqhEYzIYC1RLL0xonTh3MsZAq3W', NULL, '0', NULL, '陈佳', '18649940816', NULL, 183, 2200001049, NULL, 'chenjia12@xdf.cn', '2018-12-06 15:56:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136394, 'humingxi', '$2a$10$yfPjvjOCRZBKs/lOTE.VW.bLFupDCXlfPExqzQ6ARK2nMR99o70zm', NULL, '0', NULL, '胡明希', '18064425229', NULL, 183, 2200001050, NULL, 'humingxi@xdf.cn', '2018-12-06 15:57:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136462, 'wanggege3', '$2a$10$UjX4U0xZrhX251o40UmYdOrOVs2oQ5ufgEBzqIwz4bQ..7OUjijGO', NULL, '0', NULL, '王格格', '13666097061', NULL, 183, 2200003337, NULL, 'wanggege3@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136608, 'zenghuijun', '$2a$10$ce8Qqg5s4wnrSzpEnGlQdet2Mqw76qk8qLm7AHz1tJwX9afAG2zU2', NULL, '0', NULL, '曾慧君', '15059926698', NULL, 183, 1540400000, NULL, 'zenghuijun@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136670, 'zhengzixuan3', '$2a$10$POG/r4O1Mo0Ic6zT4L4F3Oudh7QeRfX.CU7L4xNvx1yh2sungxG8O', NULL, '0', NULL, '郑子璇', '13559577575', NULL, 183, 2200003337, NULL, 'zhengzixuan3@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136751, 'jingrunrun', '$2a$10$gmkqS4A0Ka74MCIHOFoP9.i/0KsLtodzuCyUdK4e/7KVQ.jtB1b8y', NULL, '0', NULL, '景润润', '15710637876', NULL, 183, 1542500000, NULL, 'jingrunrun@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136759, 'xuyuanxi', '$2a$10$85DYWMK7vYA.WvH5MwS8KeB/qnwUFGX8TgTQkcMZg8nyTSmazbPB6', NULL, '0', NULL, '徐远茜', '15160718403', NULL, 183, 1542900000, NULL, 'xuyuanxi@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136831, 'huanghongmei', '$2a$10$fIg4gL38gpnwj774erYLQ.BoE1/4GVV4r9nOWnjGE2mCdrFtiI.yC', NULL, '0', NULL, '黄鸿梅', '18822526614', NULL, 183, 2200001049, NULL, 'huanghongmei@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (136838, 'wangdanni6', '$2a$10$16XaozOVPC4tN521fYTy0.APuIV8l/J/syzT90XKgN6qiQ3susxb6', NULL, '0', NULL, '王丹妮', '18359147719', NULL, 183, 2200001049, NULL, 'wangdanni6@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136897, 'yinshiwen', '$2a$10$kTZ6ICTdvCJfiTKeY5b40ObRzfR1McS9H7BAexsGNDzATW0FLY72W', NULL, '0', NULL, '殷诗雯', '18759285594', NULL, 183, 2200001049, NULL, 'yinshiwen@xdf.cn', '2018-12-06 15:57:19', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (136937, 'leiyuming3', '$2a$10$XLG6geACHc.mkHiwIY./p.ViTtxLeKErULirm56FcvGI5XbTgW8eu', NULL, '0', NULL, '雷宇鸣', '13599290060', NULL, 183, 2200003337, NULL, 'leiyuming3@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137026, 'maoxiaofang', '$2a$10$3BKqP82/A79FWn5.9WDzbuS39ClpUrYfauMQkLfkfgxgZHxvvjqPe', NULL, '0', NULL, '茅晓芳', '13672059919', NULL, 183, 1540700000, NULL, 'maoxiaofang@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137028, 'kanghuijun', '$2a$10$38GAZ6HMCmr6wM0bLukvQuxu78mHNjb04Z/uuv4eNhacl.UjPpgZS', NULL, '0', NULL, '康慧君', '18750228539', NULL, 183, 2200001050, NULL, 'kanghuijun@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137035, 'WEIJINWEI', '$2a$10$5Jw6p9egjrrI.PJwHsQi1eHifpNMPSEsTX3lQjN0CsSydPXUt9kCe', NULL, '0', NULL, '魏金伟', '15705965887', NULL, 183, 2200001049, NULL, 'WEIJINWEI@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137046, 'zhuangyuane', '$2a$10$yzsOje41quK.IjgQKjB6d.Lp299fx9CrRNqSjvOhUS1e8rqt1YOvG', NULL, '0', NULL, '庄渊娥', '15759261705', NULL, 183, 2200001049, NULL, 'zhuangyuane@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137070, 'zhoujing47', '$2a$10$M2jLVAW.Orxm0ZP5zt7sYuAGxbaXW9XoCxohVEQf5t9nhaMKfFf3a', NULL, '0', NULL, '周婧', '13959265093', NULL, 183, 1540700000, NULL, 'zhoujing47@xdf.cn', '2018-12-06 15:56:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137076, 'zhangjing169', '$2a$10$6VC0UKb4lLwgG2zTVMW92uLc3ke33oM.xrELQaQMBGHr7E6kxlwZC', NULL, '0', NULL, '张静', '15068766893', NULL, 183, 2200001050, NULL, 'zhangjing169@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137417, 'chenxiangjun', '$2a$10$95K9aKmdQonfmM3Gl7eLxOPVj9JPe4zibJSSENR3jGdfM0Q5zKZpG', NULL, '0', NULL, '陈香珺', '18759287580', NULL, 183, 1542900000, NULL, 'chenxiangjun@xdf.cn', '2018-12-06 15:56:59', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137479, 'huangyiwei', '$2a$10$69lvctpuE.wz4mvUmlWQ2ODjfvbrSmHuQF0vejS7rgof67vMfJpSy', NULL, '0', NULL, '黄艺唯', '18659286923', NULL, 183, 1542900000, NULL, 'huangyiwei@xdf.cn', '2018-12-06 15:56:59', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137528, 'qihui3', '$2a$10$8XN35Yb/Hf7pYDxwsunrxuWL1Hl9FLI6iJ6KJEZsFwMA3L5Yz8SnG', NULL, '0', NULL, '祁慧', '15705924749', NULL, 183, 2200001049, NULL, 'qihui3@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137560, 'zengyanfang', '$2a$10$x/HjvxLZ.DwDRo1a9fUFteKJD0ng51DD90KlAkOQFlw6NSvSKCSlC', NULL, '0', NULL, '曾燕芳', '18823389569', NULL, 183, 2200001297, NULL, 'zengyanfang@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137594, 'yansiyi', '$2a$10$EI6M8uT8vfXwJ2.R.AAlFeqOsKkC5QLPw859lKJL0QDWnYEFq6GDe', NULL, '0', NULL, '严思仪', '15710628098', NULL, 183, 2200001050, NULL, 'yansiyi@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137642, 'gongjun', '$2a$10$JyxkNJ9pdN9v9SeQpYM2n.N0l2Zv1Ssq4BVVzGr0zUDOE.LYCb1VW', NULL, '0', NULL, '龚君', '15280851252', NULL, 183, 2200003337, NULL, 'gongjun@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137644, 'xujiangjiang', '$2a$10$bHhj1wnG78rSTiI2pSy76.be9c1fCoLEZj3NQJNq0971y4cQJ.Rue', NULL, '0', NULL, '徐疆疆', '15859215320', NULL, 183, 1541400000, NULL, 'xujiangjiang@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137710, 'qiangwei5', '$2a$10$cNOTl61HYsO7nMAE02d7Xe8yQayMG7RRomjsWWLJXOKff7LC/TZWS', NULL, '0', NULL, '强薇', '18120779032', NULL, 183, 1542900000, NULL, 'qiangwei5@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137775, 'huxiaoyi', '$2a$10$Ni/OVRd.ZFfRsCsd2I.E3.l50lx3y51DWlIDbf4lccKx85gRXlNPC', NULL, '0', NULL, '胡小艺', '15159858618', NULL, 183, 2200003337, NULL, 'huxiaoyi@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137792, 'yechaojie', '$2a$10$deQvWRvwPIxwRYTuRw7JC.Y/EqNYwZ0DTDaEhnz5laWUUhmbuy7zy', NULL, '0', NULL, '叶超杰', '13576947358', NULL, 183, 2200001050, NULL, 'yechaojie@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (137869, 'guanjingyu', '$2a$10$FXl/CL5DQ8LS8GOedBRxgu8AXJSpvd1eJtMC3/0oHeXhRKMVWLAXO', NULL, '0', NULL, '关晶钰', '13023994551', NULL, 183, 2200001050, NULL, 'guanjingyu@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (137932, 'honghuadong', '$2a$10$.SdPIGTFXYYJqyKy6KD8R.9fXrRXXZsuBTSZRAhBe.uxOpf122fHe', NULL, '0', NULL, '洪华东', '18695633779', NULL, 183, 1540700000, NULL, 'honghuadong@xdf.cn', '2018-12-06 15:56:58', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138042, 'huangmingzhu', '$2a$10$A1ODnHll5KgKYW/mHWjBaOOq0KUU4Ry7TrT1TnuVA.8fJTL4.miGC', NULL, '0', NULL, '黄明珠', '13666086954', NULL, 183, 2200001050, NULL, 'huangmingzhu@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138043, 'huangyachao', '$2a$10$1/t/2SVoWxcQ5atc4kLz5u43S0Fsx28kdw/lSyAJbAK1acZq9fX22', NULL, '0', NULL, '黄雅超', '18559623807', NULL, 183, 2200001049, NULL, 'huangyachao@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138045, 'huanglijun', '$2a$10$..6ZpRzVAmgU7Yyo0EJxreYUeg50aFkovqMmYmMOSt1XKgreZ8hTq', NULL, '0', NULL, '黄丽君', '15280856652', NULL, 183, 2200001049, NULL, 'huanglijun@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138058, 'chenling21', '$2a$10$6ITnPuGQpANGwLWaJLSC5u9Ye.DmvqBYvt4FjoFpzZzJnIWxPR6sW', NULL, '0', NULL, '陈铃', '18850190893', NULL, 183, 2200001049, NULL, 'chenling21@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138063, 'youying5', '$2a$10$WYjBYBjisroc54BoAPjv5.T0Y86MDlayen.yLdDS8swwKEsc4Eum6', NULL, '0', NULL, '游瑛', '18959604269', NULL, 183, 2200001049, NULL, 'youying5@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138204, 'tangnaping', '$2a$10$qy.cGGCTXpXpZYZGdDGi9.sn29HxDrhHlWA.2WylLPWceN3m4wQke', NULL, '0', NULL, '唐娜萍', '15259145507', NULL, 183, 2200001138, NULL, 'tangnaping@xdf.cn', '2018-12-06 15:56:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138363, 'chenlulin3', '$2a$10$c19h35ecgWCrgS83d9MKQuFCK0xT52v0y6nhQ8nQP3Pu4YITd6n5S', NULL, '0', NULL, '陈露霖', '15160716629', NULL, 183, 2200001049, NULL, 'chenlulin3@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138437, 'wangshuhan3', '$2a$10$ZP9MZQUODurbcqjZbEGs7ulNxj5V54/lvP3vHG0X/GZTu3xDRlhXS', NULL, '0', NULL, '王舒罕', '13615058186', NULL, 183, 2200001050, NULL, 'wangshuhan3@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (138505, 'liyuting10', '$2a$10$n25./2MdiMsyGmIetAefT.ZqysbfcqS6VwVqAs8x5OgQg/i7uV.ZG', NULL, '0', NULL, '李玉婷', '18850040910', NULL, 183, 2200001049, NULL, 'liyuting10@xdf.cn', '2018-12-06 15:56:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138508, 'wangyuanyuan33', '$2a$10$mFHhkhkxRfKkKBK6ervNLOuPKxCwyC2zM3qkGVnC23Hkq4NUG/Cr2', NULL, '0', NULL, '王媛媛', '15659804926', NULL, 183, 1540700000, NULL, 'wangyuanyuan33@xdf.cn', '2018-12-06 15:56:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138572, 'wangqian84', '$2a$10$iye9gW/prUsvQgL..R0jq.N8dVWeWo.eJHXTLpvgmwic8s5/89K0m', NULL, '0', NULL, '王茜', '13805962125', NULL, 183, 1542700000, NULL, 'wangqian84@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138864, 'chenlili15', '$2a$10$MWDw.p.ITx1uxWt3QSetNekd6OEs1mdmCaKvxcoZ.9iwir/CRKz6G', NULL, '0', NULL, '陈丽丽', '18850042057', NULL, 183, 1540700000, NULL, 'chenlili15@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (138903, 'chenyaru4', '$2a$10$J7hM9AvKWtFoZV8p.7Vz7e5aPJJ8b..XzUlJQcrYkCnXpLncpXvru', NULL, '0', NULL, '陈雅茹', '18106089862', NULL, 183, 1542900000, NULL, 'chenyaru4@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (138998, 'wangyan107', '$2a$10$.p/n3mNB1e9cBmqwU9Kj1.OHncsRoMtNuvPKe8xJY73V8SkKxr.kS', NULL, '0', NULL, '王艳', '15921085217', NULL, 183, 1540700000, NULL, 'wangyan107@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139027, 'wangziming3', '$2a$10$QKbcFHJQXCdWEgL9l8LdRuiurqvH9hrJr26IHr5jBXS/odr35Ioau', NULL, '0', NULL, '王子鸣', '15710691775', NULL, 183, 2200001297, NULL, 'wangziming3@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (139029, 'linlina3', '$2a$10$uzf8xGfF9CbgdS9OmW0t8OCSNWbILPX7jhirbSwdXaMWBlLdOZm.m', NULL, '0', NULL, '林丽娜', '15306924096', NULL, 183, 1540700000, NULL, 'linlina3@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139094, 'zhengxiaowei4', '$2a$10$7hEQ0HIQjjgK3jO5EWydLut358McmqrieWy9v1IusQ7XqtQ.9QvJO', NULL, '0', NULL, '郑晓薇', '18020751712', NULL, 183, 2200001050, NULL, 'zhengxiaowei4@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139276, 'kangyizhi', '$2a$10$44ni9tIvTLZvdKIqoEMb/OO8F7V0G9p5MC8w8/9iLa0i7w9mvOQGK', NULL, '0', NULL, '康艺智', '13806075420', NULL, 183, 2200001049, NULL, 'kangyizhi@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139277, 'heyajun5', '$2a$10$f0tdLm7dlbim.cRCF84dlObQ0qbyspZSu3CXWPLlioWzi6x10bHhW', NULL, '0', NULL, '何雅君', '15221041920', NULL, 183, 2200001049, NULL, 'heyajun5@xdf.cn', '2018-12-06 15:57:18', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (139278, 'helinqin', '$2a$10$QnMt0103F1.l.qFlljdhfOymnEzDwIY4AE7Uc2ouR9j3qSQ52rPda', NULL, '0', NULL, '何林秦', '18859297219', NULL, 183, 2200001050, NULL, 'helinqin@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139389, 'wangqinyuan', '$2a$10$b49hk24CsCrh9RvBq.cRBOfBCmH2GVp47C4TH.OOTBT/7Cld51WoC', NULL, '0', NULL, '王琴媛', '15880201337', NULL, 183, 2200001049, NULL, 'wangqinyuan@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139508, 'zhuangxueyun', '$2a$10$26tHEXx0kUJaGjZGqwEY9eoEK93PgRHT90bBHB9oYWCWdQp7ZqpVy', NULL, '0', NULL, '庄雪云', '15880723868', NULL, 183, 2200003337, NULL, 'zhuangxueyun@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139514, 'chenkun6', '$2a$10$V.7vIObaIC0EcF6FbKR.MO8mDqytwBlFZnlEyL0wPmeZk66L1kUAa', NULL, '0', NULL, '陈坤', '15715933599', NULL, 183, 2200001297, NULL, 'chenkun6@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139516, 'zhangxianbin', '$2a$10$i.pRRadB70QIzRNqhm.zKui5EkWOrPkE3qzKwoWg3Xjil2gy2F7/u', NULL, '0', NULL, '张贤斌', '13395030857', NULL, 183, 1540200000, NULL, 'zhangxianbin@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (139818, 'luolei3', '$2a$10$d.2JZcS02BG.od9gsMz70umP0tz3RHXYI/wThofGtOPyhUbJYhDYS', NULL, '0', NULL, '罗蕾', '15705936717', NULL, 183, 1540700000, NULL, 'luolei3@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140024, 'lixintian4', '$2a$10$e2SaTeVHVF3eEBZ1SGcAQOhXz9ziury8fEKq7YxzFti1TXT3QpsDq', NULL, '0', NULL, '李鑫田', '13194082740', NULL, 183, 1542900000, NULL, 'lixintian4@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140035, 'jumeng', '$2a$10$flnlMCZizY467WGP8u98UORQbqs70EPxrcY3/phlRrGm7yozHZO4e', NULL, '0', NULL, '居盟', '18059256280', NULL, 183, 2200001050, NULL, 'jumeng@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140217, 'liuli53', '$2a$10$0j/cZy.ABQs2rhvURha49eE9GlXu4fOH/ZX.PubgOVu2/J5IE01ZW', NULL, '0', NULL, '刘丽', '18250858258', NULL, 183, 2200001049, NULL, 'liuli53@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140220, 'denglili3', '$2a$10$0NXXnwUm.8dLKjJrDE66y.4J6ft4dO/tMkOokOthv/sQEdgJTaDoy', NULL, '0', NULL, '邓丽丽', '18750204680', NULL, 183, 2200001050, NULL, 'denglili3@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140331, 'zhangxiaogui', '$2a$10$msvL.bFg9X7dmRKbIBuPAuSzKhcsxG0RdNO3JUhGBdVVcuf4BfuqG', NULL, '0', NULL, '张小桂', '13860410652', NULL, 183, 2200001049, NULL, 'zhangxiaogui@xdf.cn', '2018-12-06 15:57:17', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140552, 'linqiuzhen', '$2a$10$xmeYaU17xhn9VWg3Sxp77uo746jQ.TdovlcxViYU59jRGo1LxOcD.', NULL, '0', NULL, '林秋珍', '18450089003', NULL, 183, 2200001049, NULL, 'linqiuzhen@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140559, 'zhengmeixia', '$2a$10$ugpWnK3rQmae6LEsaF8BGeKavbn5aip5cTbA9C0I3XzxNU9rGyVkG', NULL, '0', NULL, '郑美霞', '18046302983', NULL, 183, 2200001049, NULL, 'zhengmeixia@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140605, 'zhengchengfan', '$2a$10$LiVIIvqo8et2V7uJmbMReOGNu6qter3PDevmnLMgKU1n51IZVvvaS', NULL, '0', NULL, '郑程帆', '15059686586', NULL, 183, 2200001050, NULL, 'zhengchengfan@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140614, 'wangqian86', '$2a$10$Sv0WyfxaXUZH6A/Jw2S.Lep5GmWgE0UMoRVc4CKeyweZuvDWBpvG2', NULL, '0', NULL, '王倩', '18559770803', NULL, 183, 1540700000, NULL, 'wangqian86@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140669, 'dingyiran', '$2a$10$yM.h69VcnJWnBxMIQlyJdeKrEtaIFVUhmqgkzbZQe5AUJZLGsQIp.', NULL, '0', NULL, '丁亦然', '13123367335', NULL, 183, 1540700000, NULL, 'dingyiran@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140725, 'yangjinghua3', '$2a$10$QNkiTeVo/vf1bjhbJ7h.EuVuKiUcExWvQZXfkxmqirTXGevBJt4US', NULL, '0', NULL, '杨景华', '18650170365', NULL, 183, 1540700000, NULL, 'yangjinghua3@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140730, 'xieyinqiu', '$2a$10$84hVs7VGg9B1gKBRuMzeP.ufle1tVgkfrDXk9yIcAnBv3FkPgSaQG', NULL, '0', NULL, '谢吟秋', '15659287229', NULL, 183, 1541500000, NULL, 'xieyinqiu@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140735, 'zhangxingui', '$2a$10$0Z0AKO1Vqwg/v6W0IYv/jOBLzIb1YeeBBrLwQxhHjnE7oyHLgby1O', NULL, '0', NULL, '张鑫桂', '13600942797', NULL, 183, 2200001050, NULL, 'zhangxingui@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140742, 'linjiaoqing', '$2a$10$E2pkxACGUHlq/ay4LhKHxuGxAMEKXNnE5EecwYANXD8j88CCMD4AK', NULL, '0', NULL, '林娇青', '13045921842', NULL, 183, 2200001049, NULL, 'linjiaoqing@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140743, 'zhouyan31', '$2a$10$MFghm7h.C4bY7xzkrBCy.uZAJiWU47yGvS8fFh5eU0DZYuSUBjksu', NULL, '0', NULL, '周妍', '18506938983', NULL, 183, 2200001049, NULL, 'zhouyan31@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (140751, 'caisiyan', '$2a$10$CxEoHypJc1LPoYUlALwove18/iwL0iZL/y79qOZ0b8UqYz6b2B/qq', NULL, '0', NULL, '蔡思彦', '15277190097', NULL, 183, 1540700000, NULL, 'caisiyan@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (140805, 'huangyiting', '$2a$10$eRQ17fCX1wm9Ynir03cHL.pqP54CiNR7384Ey.fJvGop.e4BtpkaK', NULL, '0', NULL, '黄艺婷', '18259417216', NULL, 183, 2200001049, NULL, 'huangyiting@xdf.cn', '2018-12-06 15:57:16', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141473, 'chenshutong', '$2a$10$XT/WVYOjZN3X/kKh55vB1eZmf/OFEC8vrQNlRnQnqxLD6o3rXA392', NULL, '0', NULL, '陈树通', '15960234048', NULL, 183, 1542500000, NULL, 'chenshutong@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141512, 'duxintong3', '$2a$10$DlCTdyycjGnSjCePu9yAvO8/oguTrvuJTVRGjOJww65l7mXYa8T1C', NULL, '0', NULL, '杜欣桐', '13259772154', NULL, 183, 1540700000, NULL, 'duxintong3@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141518, 'zhangmei12', '$2a$10$k/0A2pKsoG2gHuRbl1ntEOjPfTLd2lAU2ZHTSio0yJ1fMQ/k.dYaG', NULL, '0', NULL, '章梅', '15506438751', NULL, 183, 1540700000, NULL, 'zhangmei12@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141669, 'chenzhiwen4', '$2a$10$2aaWZ5S5FIEVbvPW2zjMjeA3KAnhCTYoAUB82kSn9HMhAfJae422y', NULL, '0', NULL, '陈志文', '18659332663', NULL, 183, 2200001050, NULL, 'chenzhiwen4@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141674, 'caiyaokun', '$2a$10$/53Xt/Q98lEtEAQp6ioR/.1Be8KRoyOod23dmHhI4wc1wnR0bzbW2', NULL, '0', NULL, '蔡耀坤', '13859943722', NULL, 183, 2200001049, NULL, 'caiyaokun@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141677, 'guoyiwen', '$2a$10$XzwlyXjK/yF/OIllkqH3IeQ25dnHzKddHvr.vtjN7a.iaiBYGAtyC', NULL, '0', NULL, '郭怡文', '15080305041', NULL, 183, 2200001049, NULL, 'guoyiwen@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141681, 'chenshitian', '$2a$10$yildd1rMH5k8ITGy2wDE5OMZBASD5q2bs03OrVfutpT61pU9SCWxG', NULL, '0', NULL, '陈诗恬', '13646039770', NULL, 183, 2200001049, NULL, 'chenshitian@xdf.cn', '2018-12-06 15:57:15', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141700, 'yuziqian', '$2a$10$t/4LnHwQys3KEQQnEUFOPe8Aq5yFza.qHo.IKmNPKJMzqBmoT.Vy6', NULL, '0', NULL, '余子倩', '18850074223', NULL, 183, 2200001049, NULL, 'yuziqian@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141742, 'chenkongshuang', '$2a$10$nmQ2zR6FvU/s3gsFD8tBUuL.81NoWcz5dvwucFVaQoAerHTY62coG', NULL, '0', NULL, '陈孔霜', '18850040982', NULL, 183, 2200001049, NULL, 'chenkongshuang@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141764, 'zhouwenjie5', '$2a$10$8X9Etuhx/pLc8B32Ocqn8u6hKM1XtG/7t9GGAZ7TvS45i9RoomaIi', NULL, '0', NULL, '周文杰', '18850041087', NULL, 183, 2200001049, NULL, 'zhouwenjie5@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141778, 'yangdaxi', '$2a$10$VD/v.Od90TQpvv8xECwxauRN5H9PN5Hva/XK8WzLN4KCd5KstRUwu', NULL, '0', NULL, '杨大喜', '13400661808', NULL, 183, 2200001049, NULL, 'yangdaxi@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141860, 'zhangfeng20', '$2a$10$3/s2Ec4QQUX6v0yyd9W62ezdMoFCp/.s01Q0VrusdYJk5HHhY3rK.', NULL, '0', NULL, '张锋', '15659814785', NULL, 183, 2200001049, NULL, 'zhangfeng20@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (141927, 'liluyi4', '$2a$10$r1gWNwaXeor1NXTnTPvh4eBocjxvK0hRLNC0qGd/anqMq4YLlpkcG', NULL, '0', NULL, '李璐一', '13044572831', NULL, 183, 1541700000, NULL, 'liluyi4@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141943, 'zengcuiwei', '$2a$10$3RygCvOrQd2l2R/B56CP4epRZiSVgiAt/lZLq6TunXvIFhWw/LA1y', NULL, '0', NULL, '曾翠微', '18359185363', NULL, 183, 1542900000, NULL, 'zengcuiwei@xdf.cn', '2018-12-06 15:57:14', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (141968, 'zhongweiping', '$2a$10$PUwXgfJuQeYbbQO3azvH6ubpuRzuw2w9ImbjIqHhSvAjELj4oqjZ2', NULL, '0', NULL, '钟慰平', '15860707161', NULL, 183, 2200001049, NULL, 'zhongweiping@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142144, 'liuguannv', '$2a$10$2Llz7D0vVOdW9zZZxNzT5Ol4BcoCl39zAx5X.LapvY.8nG.pGhLCW', NULL, '0', NULL, '刘观女', '15396507309', NULL, 183, 2200003337, NULL, 'liuguannv@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142179, 'xielin8', '$2a$10$JZv7xMqyklHSXb0qRVH4je2gQkvL.h2hzJMiP/4VcvMwPZqj7.pdy', NULL, '0', NULL, '谢琳', '18905979356', NULL, 183, 1542900000, NULL, 'xielin8@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142183, 'xufeng12', '$2a$10$pE106eY605dM.37eiOdRX.SLPGdZFpEjSMGanrQecLW14MNMi/vba', NULL, '0', NULL, '徐锋', '18859779130', NULL, 183, 2200003337, NULL, 'xufeng12@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142235, 'zhangxiaomei10', '$2a$10$J8Y0XKHrZdE/fKxRfXvx3eh.znlqgXlm1No6pI7ZkZX5Jnp/NlFWi', NULL, '0', NULL, '张晓梅', '18850054013', NULL, 183, 1540700000, NULL, 'zhangxiaomei10@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142382, 'caixiaoying', '$2a$10$8pi9E0PdtjnDk/uzZ4hWcOR5Xx.ZtekUsZ/maUzlG1qBhkeU1wcmO', NULL, '0', NULL, '蔡晓莹', '18859294094', NULL, 183, 1540700000, NULL, 'caixiaoying@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142433, 'wuyanhui3', '$2a$10$SMwPXI2adZ2HEvqAilIF1ez1r/RA0tQ6bSxgh2HeU/43XxmrfGjci', NULL, '0', NULL, '吴燕慧', '15606944052', NULL, 183, 2200001049, NULL, 'wuyanhui3@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142440, 'xurenjie', '$2a$10$BeHdBYIjk0ErPy9n0I2Ap.89X.d7eRVYbwZNBuWaitnO01bIGMe2O', NULL, '0', NULL, '许仁杰', '17759209412', NULL, 183, 1540700000, NULL, 'xurenjie@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142445, 'hanxiaoqing7', '$2a$10$cXXwiny.CElXfnSNAJJex.aAKn.PrPBfAgUQt5cBeD.wvG06Xq49.', NULL, '0', NULL, '韩小清', '18750246586', NULL, 183, 2200001049, NULL, 'hanxiaoqing7@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142448, 'zhouxuan15', '$2a$10$eMZFqHRcWR6DHBZa7uGINemGjJ2bXdQJK1.Zv9Sn2wJJnXxVCSACK', NULL, '0', NULL, '周镟', '13225071060', NULL, 183, 1540700000, NULL, 'zhouxuan15@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142468, 'yejinsong', '$2a$10$vj2xf8hn8t6LDLp6QcicleTb/aZNkgT86UoST1o.u563uj1oVoro2', NULL, '0', NULL, '叶劲松', '15880243278', NULL, 183, 2200001049, NULL, 'yejinsong@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142614, 'yangfangyu', '$2a$10$nN8GAmdfScoEaFXF.i1yAuRTBTs6JHDZNxf7IxRY1qEcxeMhcM2Um', NULL, '0', NULL, '杨方钰', '15260952529', NULL, 183, 1540700000, NULL, 'yangfangyu@xdf.cn', '2018-12-06 15:57:13', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142621, 'liuyueyue', '$2a$10$Ci22NmfsxJOE.wRduA5J1OnanEtUAMnVo6L2UdSsQYA.jNDVaOcke', NULL, '0', NULL, '柳粤粤', '18860015309', NULL, 183, 2200001049, NULL, 'liuyueyue@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142838, 'hongwanrong', '$2a$10$1KALHx6oU94tqwaoVPwI7eNJP5L7//Evv3qsZIctrqJ9x3k9Q5qzG', NULL, '0', NULL, '洪婉蓉', '13003900221', NULL, 183, 2200001049, NULL, 'hongwanrong@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (142845, 'hongxiaoyi', '$2a$10$FZ8lWzzYq8VcaO2q5J1AX.uxFdQDBqKD5LPJfckSSa.qBIt1mzMXe', NULL, '0', NULL, '洪晓逸', '15860773115', NULL, 183, 2200001049, NULL, 'hongxiaoyi@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (142860, 'shilulin', '$2a$10$6URi76B9IBSfeKPpW0YR5uGf1kxpg0raI5xO0xv0KM8jIRDYmaV1y', NULL, '0', NULL, '石璐琳', '17875098416', NULL, 183, 1540700000, NULL, 'shilulin@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143019, 'yangjunjie3', '$2a$10$kNUuSYSAXQikMcrP7Zn/..TuG1ktE7zanAapumqh.Y8W2FF1w88Oe', NULL, '0', NULL, '杨俊杰', '15606956282', NULL, 183, 2200001050, NULL, 'yangjunjie3@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143095, 'sulijing4', '$2a$10$cfhHziQ/pjYukoeOCHg.zuJERuSz/BX.LZpXhjlCUnj/zd73LQgUa', NULL, '0', NULL, '苏丽菁', '15605951025', NULL, 183, 2200001049, NULL, 'sulijing4@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143395, 'jiyining', '$2a$10$JYoHQ0U/Sw55SjsuLfrga.2nWLS64lsO691b0Qzz51zeRdivbZ07q', NULL, '0', NULL, '纪忆宁', '15750757190', NULL, 183, 2200003336, NULL, 'jiyining@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143397, 'huangqiaoling', '$2a$10$giST6ncYX9y4pziFT9Zd0umazEQZ0LNQAG5YRbVXnEiM6nog5bYoS', NULL, '0', NULL, '黄巧玲', '18506965949', NULL, 183, 2200001050, NULL, 'huangqiaoling@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143399, 'hongwanping', '$2a$10$3YoCNhZjjRkDcwg9QyYmT.JSzMX9YohvAFzbEAH9YjkhIz3sBghhi', NULL, '0', NULL, '洪婉萍', '13959948313', NULL, 183, 1540700000, NULL, 'hongwanping@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143419, 'chenxingguang', '$2a$10$Yj70wLmUU6q9K4/g.UsdEuYcfF7y9IWhO4rAXvT/8P2OqWDpIvNO2', NULL, '0', NULL, '陈星光', '18850573742', NULL, 183, 1541900000, NULL, 'chenxingguang@xdf.cn', '2018-12-06 15:57:28', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143444, 'zouchenlu', '$2a$10$m.Qn0x.aoW29MoLYpBaNNuEw4L8xYlsAJZTOAnDpe3embOFq/FMHi', NULL, '0', NULL, '邹晨露', '13599523205', NULL, 183, 2200001297, NULL, 'zouchenlu@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143453, 'zhangqian68', '$2a$10$nSAr4iP.PppYdXzTQADR4eCUIcEc3ksIemw4PLU6LCr7QRS/mg8GW', NULL, '0', NULL, '张倩', '18850673225', NULL, 183, 1541500000, NULL, 'zhangqian68@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143461, 'yangjunjun3', '$2a$10$/4IxVLYm8qSujUB.9bRdyeDj1MUZia23.8MZsPlb8opar9PekoxBO', NULL, '0', NULL, '杨钧均', '15606929110', NULL, 183, 1540200000, NULL, 'yangjunjun3@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143467, 'huangmengting3', '$2a$10$gzp1OsTtwzg0/f09ebUl4.m0uoxU0sSkieNNeX/DIVE.P6SHb8ysC', NULL, '0', NULL, '黄梦婷', '13774659768', NULL, 183, 1542600000, NULL, 'huangmengting3@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143470, 'linpingping', '$2a$10$tyqW6ON0iIbLQoShMfALieP6/WiCGTRgSKIAdhiez27vXwhGeK9kS', NULL, '0', NULL, '林萍萍', '18065298530', NULL, 183, 2200001049, NULL, 'linpingping@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143473, 'shiqiangwei', '$2a$10$RDNjeCtj29oRY5LA77b2pOJHfNs9SGu8G5WvqN4Y3ii2Q/7AEHE4C', NULL, '0', NULL, '时强威', '18959203832', NULL, 183, 2200001050, NULL, 'shiqiangwei@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143531, 'linyanting4', '$2a$10$5jKOWGXnX4Fu8UKu4Lk8u.TAWUiyr5ag9735CHFiXJ56K.mHDE9pS', NULL, '0', NULL, '林燕婷', '15659037372', NULL, 183, 1540200000, NULL, 'linyanting4@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143537, 'chenting23', '$2a$10$9gBx0Zuyib4eLUeqq19ERuBzVhNvHx1.uDmdlJ57gurN.F8RhXV9q', NULL, '0', NULL, '陈婷', '13860197031', NULL, 183, 1541900000, NULL, 'chenting23@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143544, 'yuhan5', '$2a$10$U.ZN.c1VueiQ1kEMqDrerezLhzeaeIj1I0wb5VFfAv.mwpyg4e1GC', NULL, '0', NULL, '余晗', '18850048130', NULL, 183, 2200001297, NULL, 'yuhan5@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143670, 'wangxiu6', '$2a$10$A9fkTeA6kLWiCFRwzK4Wc.9v5fJbZ0ZawaFMxOGp21Du77pm0yf0G', NULL, '0', NULL, '王秀', '13023904929', NULL, 183, 1540700000, NULL, 'wangxiu6@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143681, 'zhangxinhan', '$2a$10$oJYIPG7/sQ6aM10ZlaB7eOF3TGQvsUyy9c/ZMNSObeNgog5CLiUzO', NULL, '0', NULL, '张莘涵', '15959206392', NULL, 183, 1540700000, NULL, 'zhangxinhan@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143697, 'lilu55', '$2a$10$/zwfXAjOnQaeVHuklqUrXuh/xE0ysrZPf8Jad0VqJXtPGw9cAVaAS', NULL, '0', NULL, '李露', '18876410968', NULL, 183, 1540700000, NULL, 'lilu55@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143709, 'zhenglening', '$2a$10$aqE1McEad/38XdbH79.xWeiybW/NloMhBs/7PfjENkpVTbeJTmH4C', NULL, '0', NULL, '郑乐宁', '13606907501', NULL, 183, 2200001050, NULL, 'zhenglening@xdf.cn', '2018-12-06 15:57:27', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143715, 'lvruiwen', '$2a$10$77g8YiyJFeLeAtgJP2fdjeoOoZ/5UpXyAzWKSj1isblCMDPMAnD6e', NULL, '0', NULL, '吕瑞文', '15259204433', NULL, 183, 1542700000, NULL, 'lvruiwen@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143751, 'gaojingwei', '$2a$10$qTH3zujjqHQ2docK/Bm4juT0y6XCnMhi3ZQvkBcrxqeaPLUP/q5um', NULL, '0', NULL, '高敬伟', '15959263897', NULL, 183, 2200001049, NULL, 'gaojingwei@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143768, 'wuhonglian', '$2a$10$gmYeNgGE0bZnNLMg825NkeAr9eilHfvqb1JWzszW6L7NTaUDs3UGK', NULL, '0', NULL, '吴红莲', '18649823936', NULL, 183, 2200004387, NULL, 'wuhonglian@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143770, 'xiaoyi6', '$2a$10$rcBqCNjhPpBhJPvSZCH3lOuwoo9Ir4PNYJYP3/7Z2FKp/WwmwBF5G', NULL, '0', NULL, '肖怡', '15396287865', NULL, 183, 1541700000, NULL, 'xiaoyi6@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143782, 'sukailin', '$2a$10$7E6pb/zj4GtZCnRCi17aSuZOmQOj4Q5iZ2RdfjtO/EH3XJ8GvrEBy', NULL, '0', NULL, '苏凯琳', '13600961291', NULL, 183, 1541700000, NULL, 'sukailin@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143789, 'wenxiao3', '$2a$10$I.mv5vvRrgO/mncOKbu8dOWzBmew2eZTVII9etZrMHOrZ6sb5NsyW', NULL, '0', NULL, '温潇', '18150701821', NULL, 183, 2200001297, NULL, 'wenxiao3@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143790, 'zhangjing180', '$2a$10$XDYaic.jREsuzo0gGi1/0OKLh9gPR7DWsHlbAXC8wK8joaZNBxayK', NULL, '0', NULL, '张静', '18106988385', NULL, 183, 2200001050, NULL, 'zhangjing180@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143828, 'cuina3', '$2a$10$i.gyITL.8BsHDJz89pwE/e7ROTQ6iCMwUpj140buZR2HPx/5WGbki', NULL, '0', NULL, '崔娜', '18065561860', NULL, 183, 2200001049, NULL, 'cuina3@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143831, 'guoyinghong', '$2a$10$MyioyAuWqAvyCjih3ZyF1e2K4efUsiYHpXMuUz5uaYWfVBs1Kzzpa', NULL, '0', NULL, '郭颖弘', '13599923575', NULL, 183, 1540700000, NULL, 'guoyinghong@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143853, 'linting7', '$2a$10$YbymqrmJEwcy906vOLyHpOqF0PBbP1wzQwhJU9j00F/7rtjW29Ydy', NULL, '0', NULL, '林婷', '15606909323', NULL, 183, 1541700000, NULL, 'linting7@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143855, 'liruoyu', '$2a$10$ZbpMj03247MmLgr6zOQBB.IjHVfxTrrrrPvi3FfWfw4ta8GVZW25i', NULL, '0', NULL, '李若愚', '17090143987', NULL, 183, 1540700000, NULL, 'liruoyu@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143857, 'zhangjingyuan6', '$2a$10$2f/oKinbb7gWcchFxolK4OBwAfYPSPGfVY1.U2XCMKzJ0fOH7VJLy', NULL, '0', NULL, '张敬源', '18760363715', NULL, 183, 2200001050, NULL, 'zhangjingyuan6@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143871, 'chenmeiling8', '$2a$10$i68ie0ABCqryGksiglx5CuRJXlSMpOhRd8..rqd2nXajIK66yzA.u', NULL, '0', NULL, '陈美玲', '18850542970', NULL, 183, 2200001050, NULL, 'chenmeiling8@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143872, 'xulingyu', '$2a$10$3I323dg0zmwhRRuxhfkXoO602wfBaGQR5uCRV/l7L.ltjclJytedO', NULL, '0', NULL, '徐凌钰', '13606089446', NULL, 183, 1540700000, NULL, 'xulingyu@xdf.cn', '2018-12-06 15:57:26', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143939, 'xingzhimin', '$2a$10$F6b9HZdliSPfcV.o2c2hUux8P8Zys7FjLof65VtTiRwUuhD2jfirW', NULL, '0', NULL, '邢志敏', '19906058892', NULL, 183, 2200001050, NULL, 'xingzhimin@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143960, 'pengjiucan', '$2a$10$PWQD6GA0WRqylac2GboRN..3EDRU53Df7RhI7E7pGYdXvxrifEt3i', NULL, '0', NULL, '彭久灿', '15606956781', NULL, 183, 2200001049, NULL, 'pengjiucan@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143971, 'wangliangduan', '$2a$10$3mthmYAwUd49qQy2odeTl.HMerMxVMLjyJ/EBPYmIZRZ.2.1v2qcq', NULL, '0', NULL, '王良锻', '13225963352', NULL, 183, 2200001049, NULL, 'wangliangduan@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (143980, 'qijianmin', '$2a$10$rK5XbpFYiaeqV4HdXrh4k.b4m/Xcn8ErRtB5oQ5kMs2e1zQsWwnBS', NULL, '0', NULL, '祁剑敏', '18906029002', NULL, 183, 1540700000, NULL, 'qijianmin@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (143988, 'huxinyi', '$2a$10$qu/ql.YcDj8COmGF79b5TONCENow67Jgp/Jzv4tp39ibag3G/utpW', NULL, '0', NULL, '胡馨怡', '13063089857', NULL, 183, 2200001297, NULL, 'huxinyi@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144042, 'zengjiaxue', '$2a$10$BMmyFYZ.pcV1M46OvFo72uy4T/6x6FNCWHUnN8fLfH1I0iRzDuzUG', NULL, '0', NULL, '曾嘉雪', '18650334480', NULL, 183, 2200001049, NULL, 'zengjiaxue@xdf.cn', '2018-12-06 15:57:12', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144053, 'jinyan10', '$2a$10$Y0Kc64.rSfV3Gy5aKwfrl.PhVJtSMMyBhXsWX/ULyapMH7jt1yw/6', NULL, '0', NULL, '金焱', '15959277965', NULL, 183, 1541500000, NULL, 'jinyan10@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144066, 'likexin5', '$2a$10$ZyknJpAOAJRNttgH8P.q0uOS.b754UFslVPizLOckL4ymt.kEdLkO', NULL, '0', NULL, '李珂欣', '13015917626', NULL, 183, 2200001050, NULL, 'likexin5@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144068, 'linyangmei', '$2a$10$HHKH0lulBovJdOURhEHL4eNP0bsduwWiTUCaVllYf4hoXTZsd3sBO', NULL, '0', NULL, '林阳梅', '13799555693', NULL, 183, 1541500000, NULL, 'linyangmei@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144078, 'zhangxiaofang6', '$2a$10$ro44OtKHGZ7A1D7oLq9LruTthtlv2QcqS7tqPIeWmq.6Py.d4kniq', NULL, '0', NULL, '张小芳', '13489633903', NULL, 183, 1540700000, NULL, 'zhangxiaofang6@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144084, 'wudanni8', '$2a$10$oHa0S05lQdsKs7Pzoge/y.QQPxL.C6dNjILWt3H9cOYY/EVGN4O9a', NULL, '0', NULL, '吴丹妮', '15606006590', NULL, 183, 1540700000, NULL, 'wudanni8@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144089, 'wuxiaolin5', '$2a$10$I.hTvr.OLbsARzOK0dX7m.e/qaOt0FuJFieVWs4add63vOaOVk03G', NULL, '0', NULL, '巫晓琳', '18860015072', NULL, 183, 2200001049, NULL, 'wuxiaolin5@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144220, 'luqiang', '$2a$10$Q5XbYJLQmzLQxxQhMa16xOC9.fIXt1aRVcWqT9mfPtovmzYZ7LY6i', NULL, '0', NULL, '陆强', '18965839720', NULL, 183, 2200001049, NULL, 'luqiang@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144228, 'zhangxinyuan5', '$2a$10$m/E6fyTu/eg6J7b1aZGsVeqGKOSDqt/Qv.20L16qfXsk6hOe/VS1e', NULL, '0', NULL, '张馨元', '18705046561', NULL, 183, 1540700000, NULL, 'zhangxinyuan5@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144271, 'liumeng26', '$2a$10$0RN0WrfRU2WoTEr/WQup9OKDpX9Y/ohsWGRcM46Nv3haTfXy7IoNu', NULL, '0', NULL, '刘萌', '15860755970', NULL, 183, 2200001297, NULL, 'liumeng26@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144272, 'gaoqingyu3', '$2a$10$eYgaIS0wQ8DKH.EmHEucj.4.OM0tdTt/83xd6J/4V6pzWXxQiIvL2', NULL, '0', NULL, '高清钰', '18060095818', NULL, 183, 2200003337, NULL, 'gaoqingyu3@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144294, 'dingqianyun', '$2a$10$qVPaWpjint/.6qVXVP2JouVwyhQbBD7dkAuNtnOjiSOANDXHwOqFC', NULL, '0', NULL, '丁倩云', '18850166364', NULL, 183, 2200001049, NULL, 'dingqianyun@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144351, 'zhuquanwei', '$2a$10$2tJKRfvzG9JW67Uy5ConTeTzM25XGn3q.cWqRWh0oZe6kn9p6f7yi', NULL, '0', NULL, '朱权威', '18064562098', NULL, 183, 2200003336, NULL, 'zhuquanwei@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144353, 'hongqifeng', '$2a$10$l5Be/jMxZ9UUXH43fy95Ke0q8GrS51J9Uq/VY0Q.EUdJFQmHB1Cd.', NULL, '0', NULL, '洪琪凤', '18030258208', NULL, 183, 2200001049, NULL, 'hongqifeng@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144372, 'yangyazhen', '$2a$10$MmZwDoq2E0iJxekAwW7J/uKPRe.lJheTuvggrHqN7D7QwN9ju5Tm6', NULL, '0', NULL, '杨亚真', '15060759328', NULL, 183, 2200001050, NULL, 'yangyazhen@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144394, 'shiyibin', '$2a$10$UoNc2iMEgjfQ48BU8BaA9.DmZLFLI6UaW7HZOoTGwi/Gy.nSop2tm', NULL, '0', NULL, '施艺斌', '18150395767', NULL, 183, 2200004387, NULL, 'shiyibin@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144402, 'liuchang64', '$2a$10$1ek7vwtMK39SmvMJxCLngeFqiOl3chY1YwhjkMUdoSNWLsOqSbSLW', NULL, '0', NULL, '刘畅', '13055507102', NULL, 183, 2200001049, NULL, 'liuchang64@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144403, 'pangqi', '$2a$10$dEVJYdPeatIMYXOF1GUuK.a1mqOExqOb7u4q9Lj4EyWMc3FpCmCx.', NULL, '0', NULL, '庞琪', '18959299867', NULL, 183, 2200001049, NULL, 'pangqi@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144409, 'liuyunhe', '$2a$10$PgSOzZCaHYc1xWZDqevJveyASwHWMzXLCqhMpgz2oDoOkG1.ccSKG', NULL, '0', NULL, '刘云贺', '13015918556', NULL, 183, 1541700000, NULL, 'liuyunhe@xdf.cn', '2018-12-06 15:57:10', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144423, 'hejiawei4', '$2a$10$xZfWHVsq1JYPF1ZJT.UUgOH9EhPo4r/nvjUaE0uq0pyuPYle1vG1m', NULL, '0', NULL, '何家伟', '15659292951', NULL, 183, 1541700000, NULL, 'hejiawei4@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144445, 'wangxinting', '$2a$10$XEuf3tDr6vO1IU0u2eccyeuQJaSJlh6zBWnf7WpABHk4hrc/AuL2.', NULL, '0', NULL, '王昕婷', '15221927507', NULL, 183, 2200001049, NULL, 'wangxinting@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144488, 'fuhuanhuan', '$2a$10$Z9Qw0TLTwBkzkMqWOIPofea//NwVcQ.W1fmf21TEQ3Y6a7aQy0vAS', NULL, '0', NULL, '符欢欢', '18859256601', NULL, 183, 2200001049, NULL, 'fuhuanhuan@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144584, 'helijuan5', '$2a$10$Jxa8l8GismdtVI5J57MFdupx2fGtyxlM/9e7ZDuLHRvO4Xau88jbG', NULL, '0', NULL, '何丽娟', '18659584431', NULL, 183, 1540700000, NULL, 'helijuan5@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144654, 'chengrui3', '$2a$10$2xvVbjVJxWAEp/64gsniA.4mOJn9gvU2CNhecigrilE8nTnH3FYwa', NULL, '0', NULL, '程睿', '18659289150', NULL, 183, 1540700000, NULL, 'chengrui3@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144671, 'wangkunhua', '$2a$10$RN1zCA9hV0jsck/bNQm3heMkHAaFNyNlwBZczsb/vx0vYpVoiOMhy', NULL, '0', NULL, '王坤华', '15259245045', NULL, 183, 2200001049, NULL, 'wangkunhua@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144673, 'liaoheyi', '$2a$10$Ouv8Hg40hF75TmoxCmD0tObrCylRHIngK5sQc3UsHHDbZ9j2pY4wO', NULL, '0', NULL, '廖和义', '17706021636', NULL, 183, 2200001050, NULL, 'liaoheyi@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144683, 'zhengweiwen', '$2a$10$1w7327iTDUC7PK.PL9uGgO9EdMteUGx7.Uvo7CfBcH.Jc9BIiUloi', NULL, '0', NULL, '郑蔚雯', '15059458572', NULL, 183, 2200001049, NULL, 'zhengweiwen@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144687, 'shenshumin', '$2a$10$auaZqoh5PQ1/gl3mrcrnPuAHxmLnuSPbDxRjCY3j8N6bAeZ/1IxBG', NULL, '0', NULL, '沈淑敏', '15053103019', NULL, 183, 2200001049, NULL, 'shenshumin@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144688, 'wuwenbin', '$2a$10$aef0Xi19JaIVJJefjgZH/OI29eu8dzH2ryDKg3322NjN32lSAS8RK', NULL, '0', NULL, '吴文斌', '18559020990', NULL, 183, 1542700000, NULL, 'wuwenbin@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144696, 'linzhejing', '$2a$10$Q8aJaprbGUODLxS/cfNau.hzfkcJ3yc/G98NAslvm9ia4v4cE9HZm', NULL, '0', NULL, '林哲静', '13600933872', NULL, 183, 2200001049, NULL, 'linzhejing@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144754, 'zhanxiaoyan', '$2a$10$/IL5pkS/meN/9PZTasrPMuf3y4PaADWDrhTFX79vi21YT3zyr8zFC', NULL, '0', NULL, '詹小燕', '15759213410', NULL, 183, 2200004387, NULL, 'zhanxiaoyan@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144763, 'changfeng', '$2a$10$QLFxWqtTPLv9MsQ4YH5b4OZlZviUlh9mkwrdCkAmbrevMvydxYeOC', NULL, '0', NULL, '常枫', '15659685177', NULL, 183, 2200001050, NULL, 'changfeng@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144768, 'yansiting', '$2a$10$jNdQSEnuOuSV.8CTrOSuG.bJumM.BDuY1M4UL6w6c0wZ0fzIyD/2y', NULL, '0', NULL, '严司婷', '13110652881', NULL, 183, 2200003336, NULL, 'yansiting@xdf.cn', '2018-12-06 15:57:34', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (144772, 'zhanshenwei', '$2a$10$r1kYb4CM2CXsEnGdeV76u.7ZKUoHvea7IBK0vB45/sTyHpS4j5JkO', NULL, '0', NULL, '詹燊玮', '13163800899', NULL, 183, 1541900000, NULL, 'zhanshenwei@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144929, 'zhongmeiling', '$2a$10$.6Leqt0KGyngjXi0O3Gzg.DfWmjL1WgLM1ZbzA5qTjuVzE/9GW9i.', NULL, '0', NULL, '钟美玲', '13328405506', NULL, 183, 2200001049, NULL, 'zhongmeiling@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144933, 'wuliping4', '$2a$10$5nOjDK7P2cIZHsts.Fw.5uWFB/eVoC44GMDvY5V/LxRjEwJoupaYS', NULL, '0', NULL, '吴丽萍', '19959281391', NULL, 183, 2200001049, NULL, 'wuliping4@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144959, 'linyi15', '$2a$10$yQLgXk0.cOqzTbNXC.Ik0uA03BdXSlxuygLBHeUWGQxaigE71mjBK', NULL, '0', NULL, '林艺', '18259400414', NULL, 183, 2200001049, NULL, 'linyi15@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144964, 'hongqinnan', '$2a$10$DrzmCAr5Rf7e0lPErDRdYey8FVBlKjdJEWaazqE6p8uq5qyxDeAfO', NULL, '0', NULL, '洪钦南', '15160737169', NULL, 183, 2200001049, NULL, 'hongqinnan@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (144991, 'yelinxi', '$2a$10$JuHvozYgPHiGHb8fCyLADuPYOph0dw4EkW6CcUYIbWzQ8no3VmlfW', NULL, '0', NULL, '叶林茜', '15711511206', NULL, 183, 2200001049, NULL, 'yelinxi@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145001, 'wanshuang', '$2a$10$Upuc0kyuWex4UXFyA2hEOeUhLdl9aJ3/QtWfPo154TDWq7P3LqoGG', NULL, '0', NULL, '万爽', '18645034673', NULL, 183, 2200003337, NULL, 'wanshuang@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145002, 'zhouyan33', '$2a$10$pQbpgo5WFyg.YfM.17G8me3zIlIw7y83mtYCFw0.tPjWXs7Mn1SAW', NULL, '0', NULL, '周燕', '18850155453', NULL, 183, 2200001049, NULL, 'zhouyan33@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145027, 'lijiale4', '$2a$10$uvV/og.XEC8.Bby/LSY6xuQn3ySsDeXrD9eK1sNxRuoj3nZakr9xy', NULL, '0', NULL, '李佳乐', '15606981215', NULL, 183, 2200003337, NULL, 'lijiale4@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145030, 'ruiying', '$2a$10$XHYs0YSnsRxU5eMx3.EVvumZMMSYInhm3hKtLXX84228gRnPlHCM.', NULL, '0', NULL, '芮瑛', '18919894766', NULL, 183, 2200001049, NULL, 'ruiying@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145082, 'linxiangmei', '$2a$10$uCGwnDQSpqeOWW/3ZgM3VOtnTmTy8SuVpVuiXNdrdHbfrGoekUHwu', NULL, '0', NULL, '林湘梅', '18159660151', NULL, 183, 1540700000, NULL, 'linxiangmei@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145083, 'dingshasha3', '$2a$10$NJGuU/iywhLsmA74/joSsO4I3WO8DDdlPVz7nYHq4LyvCNbPgnlCK', NULL, '0', NULL, '丁莎莎', '18030256615', NULL, 183, 2200001049, NULL, 'dingshasha3@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145094, 'zhongwei5', '$2a$10$gYDjy4zfXbtJCxYhaZvdnePzNrqyvLQiViyZHu1x9OMibg3MK2gv.', NULL, '0', NULL, '钟伟', '18120759290', NULL, 183, 2200001049, NULL, 'zhongwei5@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145112, 'linyingying4', '$2a$10$jShnW38j68nJ2GxX8AXpeeTTatdpxiwthyOiRCe8oIC0J51NZLydS', NULL, '0', NULL, '林莹莹', '13559484772', NULL, 183, 2200001050, NULL, 'linyingying4@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145113, 'zhangke12', '$2a$10$M3ldVYFPeAQHxi0gAT46IOa1j4H0/7bJbzz4s/9l5g49EC9uy0I4u', NULL, '0', NULL, '张科', '18649940181', NULL, 183, 1541500000, NULL, 'zhangke12@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145116, 'zhouying46', '$2a$10$Sa3/u5f3D6ydcUVr6oF0l.3HegT53qdmLogmedokbRB4tat2T1Bq6', NULL, '0', NULL, '周莹', '18650188137', NULL, 183, 1542900000, NULL, 'zhouying46@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145133, 'caiyue4', '$2a$10$73byoqGGHFYt93ynOGCTmerBajC3vcaEwlk5ynLDo.Kevhvb/6FsS', NULL, '0', NULL, '蔡玥', '15859275767', NULL, 183, 2200001050, NULL, 'caiyue4@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145137, 'xuehaoyu', '$2a$10$2wY4S8IZQwm492LxJQq3ueHeLeCF0RbE9O5LcoWBYOUgpiN0j.dIq', NULL, '0', NULL, '薛浩宇', '18094044748', NULL, 183, 2200001049, NULL, 'xuehaoyu@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145172, 'yezhigang', '$2a$10$I8Rv2.j7d7dBT.8lXjCuI.oayGkoO2ANHpl.qfrr.AZADFDfH7NGG', NULL, '0', NULL, '叶志刚', '18750933593', NULL, 183, 2200001049, NULL, 'yezhigang@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145184, 'jiangfengzhu', '$2a$10$2swDkBLQ5GerfRYdzpVZ4u8CnRZNep4den82Izczq7qC0WIY3OeH2', NULL, '0', NULL, '江凤珠', '15659517206', NULL, 183, 2200003336, NULL, 'jiangfengzhu@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145194, 'yiruoran', '$2a$10$TjbRVca72IJvHhdRe.s92eHAnx0oZAXdKs1D7XFigBZI12NFyPzhy', NULL, '0', NULL, '易若然', '17746079896', NULL, 183, 2200001049, NULL, 'yiruoran@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145206, 'yangyunyi3', '$2a$10$3T2XqURhsZgUBE7SuXutx.JcZKuf/eSYmb8RsNAAg930P025E60OG', NULL, '0', NULL, '杨云逸', '18030108055', NULL, 183, 1541900000, NULL, 'yangyunyi3@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145207, 'dubaohua', '$2a$10$UPC9jgNhqbC6qI8SApKjYuj.W4MQZ7FO59/oodcuESjmlxxFufX46', NULL, '0', NULL, '杜宝花', '15260137595', NULL, 183, 2200001049, NULL, 'dubaohua@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145217, 'guokelun', '$2a$10$EqUHalzvsLJ94NSVwsUkieH81h7wK3XW0n3a41U/YdeNvD.geBtlK', NULL, '0', NULL, '郭可伦', '18659619961', NULL, 183, 2200001049, NULL, 'guokelun@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145223, 'chenshuyuan', '$2a$10$2YpO/rQz.NWWLmP5FJNX3Ozv64RxUoSuTyLNyBaiZiwUuSab6YKt6', NULL, '0', NULL, '陈淑媛', '15960819102', NULL, 183, 2200001049, NULL, 'chenshuyuan@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145225, 'chenxiaoru3', '$2a$10$5QpJwNPkMDiaNu/IKTtzmeMAYuyuI3G.mQjlePHcEII4sXos2Xg9a', NULL, '0', NULL, '陈小茹', '15280217525', NULL, 183, 2200001049, NULL, 'chenxiaoru3@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145254, 'linxiumei', '$2a$10$90x1dPPBpiBi9R7/zm.kdOC0C8cp9q/1hx1P2BiYPOiS3cU6v8qbe', NULL, '0', NULL, '林秀梅', '18750919076', NULL, 183, 2200001049, NULL, 'linxiumei@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145266, 'ganwenbin', '$2a$10$IgB.2Xb6A5wFHyKBZ9uuNOMnLXSeUrwqVWjBhP4Et2n2xepqGnLwC', NULL, '0', NULL, '甘汶彬', '13559185927', NULL, 183, 2200001049, NULL, 'ganwenbin@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145267, 'huangtingting10', '$2a$10$MbMXJvukPhCzmXa9XRXAheSr4ZUWg6LeZuXG0aHqeP2xPpSmtWv3K', NULL, '0', NULL, '黄婷婷', '18060905512', NULL, 183, 1540700000, NULL, 'huangtingting10@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145270, 'zengshaoze', '$2a$10$4wZAegsXoYBDR/7sNFVVguLMA9mgTjvnNDvWQFSDPS4b6k/f7NpI.', NULL, '0', NULL, '曾少泽', '18650155331', NULL, 183, 2200001049, NULL, 'zengshaoze@xdf.cn', '2018-12-06 15:57:33', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145272, 'liuxinpei', '$2a$10$RqTF7UGS9Z4y9iJ76R./9u42IivhNudnWelMGNMXW580B9iuN.SEa', NULL, '0', NULL, '刘鑫沛', '15160008616', NULL, 183, 2200004387, NULL, 'liuxinpei@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145291, 'zhengyixian', '$2a$10$XwohrZw68biPwncxuWliHe/783d6VyPp3kkunhRNQGsG37ceXvP.K', NULL, '0', NULL, '郑一娴', '18250811430', NULL, 183, 2200001049, NULL, 'zhengyixian@xdf.cn', '2018-12-06 15:57:31', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145296, 'zhanghualong', '$2a$10$EuU9QcpRwerAGs9M/GjQjO6uvK3Zcqqw2EcR.NA6On6HHvnqadmCm', NULL, '0', NULL, '张华龙', '13666080675', NULL, 183, 1542700000, NULL, 'zhanghualong@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145309, 'wanghuimin8', '$2a$10$fqKhW7K1RbXo/chhknt/LelEBeLTqNQh7Wyjb0EJu/GmuxqDtZm5y', NULL, '0', NULL, '王慧敏', '18805927571', NULL, 183, 2200003336, NULL, 'wanghuimin8@xdf.cn', '2018-12-06 15:57:32', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145438, 'linyanhua', '$2a$10$NBVadvt0L7UxZxHoGFOKLONlDwQ0ojRPv3GubgAohwmqL5RtEJTcW', NULL, '0', NULL, '林艳华', '17859799885', NULL, 183, 2200001049, NULL, 'linyanhua@xdf.cn', '2018-12-06 15:57:30', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145504, 'ludaozhi', '$2a$10$Zz2p4v321GJUHyObZxDqyOKYMMEPdb67qHaBZ43xsBhvGR0uc6uo2', NULL, '0', NULL, '陆道芝', '15260106315', NULL, 183, 2200001049, NULL, 'ludaozhi@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145588, 'chiyuli', '$2a$10$1Kn/.TCRPtAGf1CkZexr8ux5PqMQ28eqaSmjYviyFXEfF0wyKgsg2', NULL, '0', NULL, '池毓丽', '15060895076', NULL, 183, 2200003337, NULL, 'chiyuli@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145610, 'tianzengying', '$2a$10$IK58e55KTvLv/tfFkE/8gefzcbAapM3ikNqi8O4VyVqWlOvyLrs8i', NULL, '0', NULL, '田增英', '15889307170', NULL, 183, 2200001049, NULL, 'tianzengying@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145646, 'xujiayu', '$2a$10$K5bf7hfNuGt7X45MT5piYutvUlYwGDcEfkn3ViQwJU7l.hGBf4Hne', NULL, '0', NULL, '徐佳雨', '18959203340', NULL, 183, 1542700000, NULL, 'xujiayu@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145661, 'boyulan', '$2a$10$IWTLtJRgsD.9.D3DkO12Eukl/S76rVvjzawCUFNAi1t3EARQaeyfO', NULL, '0', NULL, '伯玉兰', '18649925592', NULL, 183, 2200001049, NULL, 'boyulan@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145669, 'zhangboyang3', '$2a$10$JH6dHPViCGEzEH91mmrLD.XulZ1zhLIbbd8rmJbCVBzPV6pWLfN/C', NULL, '0', NULL, '张博洋', '13263288007', NULL, 183, 1542700000, NULL, 'zhangboyang3@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145671, 'wuyanting', '$2a$10$KV5XdVaHGRM3HWwinLA5..6LPBvbvQJa0GNqhsClUkODQDXH/0vga', NULL, '0', NULL, '吴燕婷', '18965687619', NULL, 183, 2200001049, NULL, 'wuyanting@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145674, 'wangzhou4', '$2a$10$tTBWqG2SXwnb8DU8aOgc9.QTUTMfkCY/84gqF.5FdqYu9r39PZWg6', NULL, '0', NULL, '王舟', '19959277219', NULL, 183, 2200001049, NULL, 'wangzhou4@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145675, 'hongpeiqi', '$2a$10$1zrXPrqvt42hqp3DeMcWj.2MJbWhrmSXCOG69pKlTRPDTg4z5LBTa', NULL, '0', NULL, '洪佩琪', '18750560918', NULL, 183, 2200001049, NULL, 'hongpeiqi@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145677, 'hongyarong', '$2a$10$kI/T/r7CNS7uP2P2WS4fpujA18Fl/78g6BIu65WVT1lcnaJ5e80Qa', NULL, '0', NULL, '洪亚蓉', '13062437626', NULL, 183, 2200001049, NULL, 'hongyarong@xdf.cn', '2018-12-06 15:57:29', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145703, 'huangyamin', '$2a$10$fbEV5kkFpLmKowZO.TbA8e1rSXe3BewwaiP2KrxA/1WAfd6BizkwW', NULL, '0', NULL, '黄雅敏', '18850221381', NULL, 183, 1540700000, NULL, 'huangyamin@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145708, 'lvjinhao', '$2a$10$FFWsyIHxEsnmHeQAgVj1TuB01gNYcpZRxmyCgaKpza4syWhlalQ9a', NULL, '0', NULL, '吕金浩', '18350271897', NULL, 183, 2200001049, NULL, 'lvjinhao@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145709, 'linjianfeng', '$2a$10$Wa9LD1UqWCadiWjYc2hASer0I2RYJJ/nl/figjnRpGstHwUoT5DWC', NULL, '0', NULL, '林建凤', '15715932272', NULL, 183, 2200001049, NULL, 'linjianfeng@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145737, 'yangrui22', '$2a$10$7mtwQZt3d0gTBqQiSi6ZS.EOGL45SjeXpLEc6XwljJXz0aRru61VW', NULL, '0', NULL, '杨睿', '15871847931', NULL, 183, 2200001049, NULL, 'yangrui22@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (145744, 'lixinling3', '$2a$10$k5NkvbOGvPeI7xgH7cGjxO7xGBTocneRHzTUQ63Ty3zWfvGH7mEpK', NULL, '0', NULL, '李新玲', '15959270537', NULL, 183, 2200001049, NULL, 'lixinling3@xdf.cn', '2018-12-06 15:56:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145848, 'shilijuan3', '$2a$10$0SfMrhbzOPsliMfamrqkFundD1En8GbS0l6LnSJpZDG70lvNdqfVe', NULL, '0', NULL, '施丽娟', '15880890519', NULL, 183, 1541500000, NULL, 'shilijuan3@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145920, 'caixinning', '$2a$10$SOua5ITyt/Isp.EZ6LsUmex/Jrg.pqmSN3kcpQ3YIVx0OTG91WwpG', NULL, '0', NULL, '蔡欣宁', '13950075665', NULL, 183, 2200001050, NULL, 'caixinning@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (145991, 'wangdingyi3', '$2a$10$Y7qAorsPv0tm8Zys7fWGXuZ7cllsvXIQ/hhTNufhj8BCPA9Zuoecu', NULL, '0', NULL, '王丁一', '15959287092', NULL, 183, 1542500000, NULL, 'wangdingyi3@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146240, 'caimianmian', '$2a$10$Ts8IBS/R6aSUEDwHMeDZ0.bGaGg5JLAvcCUloqfRl3T4anX2LqaXi', NULL, '0', NULL, '蔡绵绵', '18359108010', NULL, 183, 1542100000, NULL, 'caimianmian@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146407, 'linshen5', '$2a$10$/3vGa6MH/ubDqKYlQckbPeEOiPr.q.awsQOoe9fKVTG2WIByRhXay', NULL, '0', NULL, '林燊', '15960231886', NULL, 183, 2200001297, NULL, 'linshen5@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146427, 'liupingzhen', '$2a$10$e8i30M8pQgpJsNvQYDiHIewgp2RyWpVXlVK5LM2ax9ALeRLAu5ciy', NULL, '0', NULL, '刘萍真', '15860597623', NULL, 183, 2200001049, NULL, 'liupingzhen@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146431, 'zouanqi', '$2a$10$xYhYTq2R5Zkskxphv7LHOenNCqlMC6cpQBgDT75n1KdZrBI/wNxEq', NULL, '0', NULL, '邹安琪', '18120775892', NULL, 183, 2200001049, NULL, 'zouanqi@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146448, 'zoushiyun', '$2a$10$WlIbygxEexsxswXunZFLcO7QcNUj/Uo6uhcUWLjqxDehcP/ESvf1C', NULL, '0', NULL, '邹诗韵', '18810304377', NULL, 183, 1540200000, NULL, 'zoushiyun@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146454, 'zhuangyiling', '$2a$10$4tBKvVFRSoftzvIhqSV2eO4m8vmGySS6blm2hg4n0AeMNS5AMGvDu', NULL, '0', NULL, '庄翊玲', '13860462028', NULL, 183, 2200001050, NULL, 'zhuangyiling@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146461, 'chengengzhe', '$2a$10$RKYpK3PTvm2ctIVq/imZqOVHLD4bHitMpIfFdOBu.QV1ftAdbc12q', NULL, '0', NULL, '陈耿哲', '17750040766', NULL, 183, 2200004387, NULL, 'chengengzhe@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146500, 'zhangye16', '$2a$10$9grlBUgquaW0a//t9yxjNOthYVkeTEbmTOk1giLC8FwPPnHC7CZrC', NULL, '0', NULL, '张烨', '18259633016', NULL, 183, 1540700000, NULL, 'zhangye16@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146502, 'baoyanhua', '$2a$10$I/kSh/dZGzyQfmJfQn2F9.Tzp3iQO.eM4CglZl5YcnWWf89n2G5/y', NULL, '0', NULL, '包艳华', '13063163112', NULL, 183, 2200001049, NULL, 'baoyanhua@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146504, 'linyali3', '$2a$10$3nbZ.er0387x7Uv1h/gbROSQK7zY.DhLlPMpHNCOZsDNHRAXl/kHK', NULL, '0', NULL, '林雅莉', '15659439886', NULL, 183, 2200001049, NULL, 'linyali3@xdf.cn', '2018-12-06 15:56:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146545, 'wenxilong', '$2a$10$rSSrNEc91QzXzZtbuWRXFuH.emjUJmK1gd0nBN2er8uC5mNUmulYS', NULL, '0', NULL, '温锡龙', '18659097997', NULL, 183, 2200001049, NULL, 'wenxilong@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146557, 'xiaopeilin', '$2a$10$xfVIBi4L7D2d315QNtTRue98DBTKHinQ685FhZa42DET00TWHGFiq', NULL, '0', NULL, '肖培林', '18906052681', NULL, 183, 2200001050, NULL, 'xiaopeilin@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146607, 'shijinjin', '$2a$10$ZZ4ghakABBulhkhRT9fn/uEu/bn4BjkNSzzBB0zIvn9AGXbzaFF7W', NULL, '0', NULL, '史金金', '13213867537', NULL, 183, 2200001297, NULL, 'shijinjin@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146623, 'wuzhihong', '$2a$10$rsG5rPsBBytjuCAFmOXuM.86xcnm9ebCiMicALzv0K3JxQzsf.Yt.', NULL, '0', NULL, '吴志鸿', '13960089611', NULL, 183, 2200001297, NULL, 'wuzhihong@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146655, 'yangbingbing3', '$2a$10$EPxnXMvG4kzg3aGLp6XYq..Nr.VRQvfRgalD1fvzHpZuP4rcuz/je', NULL, '0', NULL, '杨冰冰', '18750691929', NULL, 183, 2200003337, NULL, 'yangbingbing3@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146719, 'liyingxin', '$2a$10$wnVftpKx7fZMhNVVVo8vF.dlkNXwdUf/PNe3z/L0.ZhlAC1.s7Qzu', NULL, '0', NULL, '李颖新', '18084769202', NULL, 183, 1542900000, NULL, 'liyingxin@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146730, 'mengdefeng', '$2a$10$FLfpXKAVyC4Qq7Oko5PznuZKCo8xHWub.eR2Lf.G3Ah2ieyRAw.0m', NULL, '0', NULL, '孟德峰', '18030113781', NULL, 183, 2200001049, NULL, 'mengdefeng@xdf.cn', '2018-12-06 15:56:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (146911, 'xiemengqi3', '$2a$10$.GU3QqrmmgtXhY5SWjBlsuHEjo9RByE5FDNFpWDG2rEKBRya7F3TS', NULL, '0', NULL, '谢梦其', '13074858886', NULL, 183, 1540700000, NULL, 'xiemengqi3@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (146980, 'linmiaoling3', '$2a$10$cwGxann2H5jenZdyHrz2D.I/wUuFZcZVF2gedK0nhySw/SAzbho8y', NULL, '0', NULL, '林妙玲', '18344990807', NULL, 183, 2200001049, NULL, 'linmiaoling3@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147007, 'liuruolin', '$2a$10$2i8MBZzZp7fPXxGGZvmwjuZQpT2.BVoba2EmLhZRg8.2WKo4fM.1S', NULL, '0', NULL, '刘若霖', '18950073653', NULL, 183, 2200001049, NULL, 'liuruolin@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147051, 'baihuifang', '$2a$10$XOGgeLBgYIGp7uIcbxdG2emB0DyOPrT9Xz0ja/AS9JQM2MYmVsEq2', NULL, '0', NULL, '白慧芳', '15280578006', NULL, 183, 1541500000, NULL, 'baihuifang@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147080, 'taojing8', '$2a$10$p3QXhfaWyICZt5FOApXS/./iixO2Ir84Mas3QJQtwXt506dQ3rALG', NULL, '0', NULL, '陶静', '15759260532', NULL, 183, 2200003337, NULL, 'taojing8@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147109, 'lifengping3', '$2a$10$8mMgRSU77PFN9EZXTryhkO65oYsU1UpIepwot/UGPPrXp.f9m8Brq', NULL, '0', NULL, '李凤萍', '13599927014', NULL, 183, 2200001049, NULL, 'lifengping3@xdf.cn', '2018-12-06 15:56:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147237, 'wangzhuoyue3', '$2a$10$RBs2A5a3AzwS1IHdk.ZXqOtWTo359mLt1Z/c6B4LDejG3znv1KwF6', NULL, '0', NULL, '王卓越', '15981422631', NULL, 183, 1540700000, NULL, 'wangzhuoyue3@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147246, 'linsicheng', '$2a$10$FcYo0HHiej6hU16LdYLfIuAHscQezBeEPysKNgDXT3w5QVIg2DHdC', NULL, '0', NULL, '林思成', '13559220924', NULL, 183, 1540500000, NULL, 'linsicheng@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147311, 'chengzhangyuan', '$2a$10$.EHdYT1ZS6corHPs9o7jbecfDGpupMttikBHvKZZZYKn05zM9pcJu', NULL, '0', NULL, '程章元', '18850042179', NULL, 183, 2200001049, NULL, 'chengzhangyuan@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147364, 'wujinghui', '$2a$10$/qjXwcmXcoOc/2epShA0CuSg7da0pWbaFWlJZwJ5C2ZprqTpO91e6', NULL, '0', NULL, '吴景辉', '15859623362', NULL, 183, 2200003336, NULL, 'wujinghui@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147380, 'zhengwenqi', '$2a$10$nbBJjQ.7woK1aOPlY0hK9e9b4FmPdSof4nbYBNsTBhaomHQLyIQM.', NULL, '0', NULL, '郑文其', '18650089041', NULL, 183, 1540700000, NULL, 'zhengwenqi@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147386, 'wangyajing6', '$2a$10$kwfkC8vL8w84Bm5KcKBZIuPZ/wLuY6JaMTK5YrNJRdThSoCJLG1K6', NULL, '0', NULL, '王雅靖', '13605069097', NULL, 183, 2200003336, NULL, 'wangyajing6@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147403, 'kangchunuo', '$2a$10$gko3FGBOuRCultsiq6E46uocwJiOVvEWIrPm7zQbnqL2MVzWuZnxi', NULL, '0', NULL, '康楚诺', '13235009089', NULL, 183, 2200001297, NULL, 'kangchunuo@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147409, 'liuyun20', '$2a$10$aE5qD9n2nUDriwKLgp.1redLi4UBlOhzG74PgNav.3h6nAdAV8Kaa', NULL, '0', NULL, '刘昀', '18159249426', NULL, 183, 1540700000, NULL, 'liuyun20@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147459, 'luyao14', '$2a$10$hxbr6k4HEM.3eHYJ1vdB9eXcyyS6Rw2nOXocikZxXwgqiJo2LkA/q', NULL, '0', NULL, '陆尧', '18659339083', NULL, 183, 2200001049, NULL, 'luyao14@xdf.cn', '2018-12-06 15:56:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147464, 'youleqing', '$2a$10$SBl0SR59TNjwO7a.UkctausYJdpBBQgAFTEyQg.pBrYhZ/IvU76F2', NULL, '0', NULL, '尤乐清', '18050010997', NULL, 183, 1540500000, NULL, 'youleqing@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147514, 'fanglijuan', '$2a$10$oSyp/c5ELdFZwusG5u0Lzu/n6ndbCAOhFQ6AhY1Ri3qRgvRcdqu8W', NULL, '0', NULL, '方丽娟', '13063081468', NULL, 183, 2200001297, NULL, 'fanglijuan@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147568, 'nisha4', '$2a$10$GweCy7BKgPQSKbOcRZkT5Os0zDp/0O2mVFAwdSj4gh2xP5BwgZ/K.', NULL, '0', NULL, '倪莎', '18959264456', NULL, 183, 1540700000, NULL, 'nisha4@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147611, 'hanbing16', '$2a$10$kKfNuP28ZB3r3kto/Y3S1uqwwKbGDJdtyjM2TsoKMvDymy9m5R.gC', NULL, '0', NULL, '韩冰', '18950099854', NULL, 183, 1540200000, NULL, 'hanbing16@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147648, 'maoyanxiang', '$2a$10$2m1QzJHluVMSJ62eCpZM4e0ortzEgSaNTt3waqw5i4VsLWZ2AIwfu', NULL, '0', NULL, '毛燕香', '18850331035', NULL, 183, 1540700000, NULL, 'maoyanxiang@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (147725, 'leichengli', '$2a$10$1fwMdFzcJKz2mxGC0/WjJO/ozL.PERXCPiB76WWIsn0sBAZmapMgy', NULL, '0', NULL, '雷成丽', '13255060952', NULL, 183, 2200001297, NULL, 'leichengli@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (147739, 'zengdefa', '$2a$10$HyAadyPu//nz.O/YRs/Dr.EY.EIDw.iYu9.ercE273pv.evvQGEPC', NULL, '0', NULL, '曾德发', '17605087574', NULL, 183, 2200001049, NULL, 'zengdefa@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148041, 'lincongzhen', '$2a$10$KG1jB1OdoOC00pM07OSOiuV1ucEHwBu/7H5fNdR35MAOG4fC5Cile', NULL, '0', NULL, '林聪振', '18750230663', NULL, 183, 2200001050, NULL, 'lincongzhen@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148092, 'luxianjia', '$2a$10$AAZbAfFp8/pOllqdSCAkneOJVYiKBqKvyIeAyvuacQZNOGV9ZjOKS', NULL, '0', NULL, '卢贤嘉', '13290787620', NULL, 183, 1540700000, NULL, 'luxianjia@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148147, 'wanlingyan', '$2a$10$ASTpOWhzKPzvawpYcaecUuq50QPcy3GXEq3EdXdhpUgnF.CY0qTDu', NULL, '0', NULL, '万玲艳', '15932808505', NULL, 183, 1541500000, NULL, 'wanlingyan@xdf.cn', '2018-12-06 15:56:47', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148210, 'zengyiyun3', '$2a$10$NBN46N41om6cvvQyZC.xCe7GurgYgqpYCaOnRHtX7GtdxJLhw2PW.', NULL, '0', NULL, '曾奕昀', '15659439119', NULL, 183, 2200001049, NULL, 'zengyiyun3@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148212, 'huangyue10', '$2a$10$Afgi3waFJ7MvlYZMWGx/he5LGD3.o8/CmjJKLTRCjWDerooPhHdxO', NULL, '0', NULL, '黄悦', '18850149406', NULL, 183, 2200001049, NULL, 'huangyue10@xdf.cn', '2018-12-06 15:56:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148234, 'chenfang14', '$2a$10$Dzln1xxvKAOSbAeVCVgHzeyU5h7PVhbygZ/d65Ya57gbCxoHqElaS', NULL, '0', NULL, '陈芳', '15859207517', NULL, 183, 2200001050, NULL, 'chenfang14@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148236, 'zhufuxuan', '$2a$10$QnrPG.bVmJXggXhJ0vyoI.HAx84FfFFhGt/7gIFykKBczqucfVvq2', NULL, '0', NULL, '朱傅萱', '15620974046', NULL, 183, 2200001050, NULL, 'zhufuxuan@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148353, 'xulikete', '$2a$10$bN980ceBHbmqejozgQzfEOBKGtYlnX///cuPaTM/j5mxKINiWQtum', NULL, '0', NULL, '徐李科特', '19959280292', NULL, 183, 2200001049, NULL, 'xulikete@xdf.cn', '2018-12-06 15:56:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148356, 'wuliqi', '$2a$10$m795cPJ51NngQfFfvUd9IeHB9Wg/xwAAH3.ukGN.FHW2dzO6vWXpK', NULL, '0', NULL, '吴立琪', '13365048313', NULL, 183, 2200001049, NULL, 'wuliqi@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148466, 'wangqingpo', '$2a$10$iro1XpuD6hhFUqu2fTCHTexkkZt.eTuemZz1x5uR2puHkMmMTfp1O', NULL, '0', NULL, '王清坡', '15805958096', NULL, 183, 1540700000, NULL, 'wangqingpo@xdf.cn', '2018-12-06 15:57:09', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148586, 'chenwanlin', '$2a$10$5qKyDlyuhw7RjUkQH4eBs.RvYrKlECuO62D.LzOGWig/y4F6s4ufC', NULL, '0', NULL, '陈婉淋', '18050583385', NULL, 183, 2200001049, NULL, 'chenwanlin@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148591, 'liuyutong5', '$2a$10$URBkytgYCmiD7gm1nmH5DuUYhwSc1fWLGX1hlrAWmH3izjurNyTei', NULL, '0', NULL, '刘昱彤', '18606385298', NULL, 183, 1542900000, NULL, 'liuyutong5@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148601, 'chenxiaoyi6', '$2a$10$wX8Z/qTM2n45fki4Pn88dek0bmsJHm3i9S.GSgkSWSfeKiNbmEefO', NULL, '0', NULL, '陈潇绎', '15710616069', NULL, 183, 2200001049, NULL, 'chenxiaoyi6@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148622, 'duyafeng', '$2a$10$j6.olW3u8GAfw1ujkUHOj.4lx/yTeQ7mn4m1A9/GIgSOV75dQCJZG', NULL, '0', NULL, '杜雅凤', '15980788625', NULL, 183, 1540700000, NULL, 'duyafeng@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148685, 'linqi6', '$2a$10$goaMYQ2OISiFk/OGKxfwH.jAfQX2sK9yqvbDEUKbQAdLs.mfbLA8e', NULL, '0', NULL, '林琦', '15960222833', NULL, 183, 2200001049, NULL, 'linqi6@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148693, 'luoqian8', '$2a$10$o2DL.XQ0ptscE/lT2DnviOPERmkkm0e2tIChEu.PhfxlvOWBJmuDm', NULL, '0', NULL, '罗倩', '15396236693', NULL, 183, 1540700000, NULL, 'luoqian8@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148721, 'lvlinguo', '$2a$10$.ivQfYAJA7DUpMuIOAsyKene7GBFGcfRQpZFXjHUzLdnjMBfcmJ26', NULL, '0', NULL, '吕林果', '18046302616', NULL, 183, 2200001049, NULL, 'lvlinguo@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148751, 'qiulihong', '$2a$10$HXn.BjT9trNlkf7aBdNBfePp7JL7GxHuJJQ24XxuX2FyD/6vC..cO', NULL, '0', NULL, '邱立红', '18559632606', NULL, 183, 2200001049, NULL, 'qiulihong@xdf.cn', '2018-12-06 15:57:08', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148849, 'songyuling4', '$2a$10$GlfKbHjRpSJvX4PKfbJ9du7YWQM4mpE8tZbGXM871N7NOO53QYOMy', NULL, '0', NULL, '宋玉玲', '15060741299', NULL, 183, 2200003337, NULL, 'songyuling4@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148855, 'gongyingying3', '$2a$10$aLEsZOe0YjBEgAu6H8AnvebdkrA8HGCzDDEELQF7yccBGHaUJVnZa', NULL, '0', NULL, '龚颖瑛', '15659005911', NULL, 183, 2200003337, NULL, 'gongyingying3@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148914, 'wangwenxia4', '$2a$10$F09NJeG1rUFrhkiGWPyajuA1qT8x5i1nG6rS6.EsIDmaFnGnLFYsy', NULL, '0', NULL, '王雯霞', '13834168673', NULL, 183, 1540200000, NULL, 'wangwenxia4@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148945, 'shenyiling', '$2a$10$HZ/VPZoeoSYzaoOUfNuRC.zsBLilJiT/c9FdZ7Vu/RAIxAU5vNhC6', NULL, '0', NULL, '沈艺玲', '15659978948', NULL, 183, 2200001049, NULL, 'shenyiling@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148960, 'jiangshan18', '$2a$10$9M6yoP9OQDo4M6wP/Uca0.x64Feq5MFIdEHX7hyL3jFoKHnXJkmH.', NULL, '0', NULL, '江珊', '18559288523', NULL, 183, 1540700000, NULL, 'jiangshan18@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (148972, 'chijingjing', '$2a$10$BhY3wEQgjIeROmqdWmsGPeUtWIg8bGAfZpYmox/xaxzgMY2AqrOyy', NULL, '0', NULL, '池晶晶', '19959281329', NULL, 183, 1540700000, NULL, 'chijingjing@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148987, 'zhongtingdong', '$2a$10$n5XhbZ7NIzTrt0twFeTn2expcSreaIanmwGjITVBQjOKq3YKRbnr.', NULL, '0', NULL, '钟汀栋', '18030124875', NULL, 183, 2200001049, NULL, 'zhongtingdong@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148988, 'chenying53', '$2a$10$H8OssW3sEA8G1xxqcuhR6e2sYP/ZYouxjbp84oSyzt0GJ68mBw0ti', NULL, '0', NULL, '陈颖', '18030268782', NULL, 183, 2200001049, NULL, 'chenying53@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (148997, 'qiuhualian', '$2a$10$Gc1y3dNbW1m.c/aoQ1af0epl2hRXy0s1X8vrHlIJtAg6YCl9NARa6', NULL, '0', NULL, '丘华连', '13400701403', NULL, 183, 1540700000, NULL, 'qiuhualian@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149003, 'chenzhiyong3', '$2a$10$IqLx4B02JVGpSuEBSSi6FO1Oj5M9b2VKpVa6WWoOv.u216ScgzSH.', NULL, '0', NULL, '陈志勇', '18850590102', NULL, 183, 2200001049, NULL, 'chenzhiyong3@xdf.cn', '2018-12-06 15:57:07', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149117, 'huangqiming', '$2a$10$NkBt9AyFUVxVWPlhu/RTBOkto6cP1BJn1DNnojCg0p4q56meHXqgy', NULL, '0', NULL, '黄启明', '18659883672', NULL, 183, 1540400000, NULL, 'huangqiming@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149136, 'wangsonglin3', '$2a$10$poR3V3UF4dG/86VhdvcTYOyqUd30pub0SSYgfABOTM6kO6O2IOdWu', NULL, '0', NULL, '王松林', '15980934520', NULL, 183, 1540400000, NULL, 'wangsonglin3@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149378, 'xiewenting3', '$2a$10$Z5Frws/CVF2sAxiw9Ny/r.PH0gJeYEYRKcfby1t6LlZWNNkLOKan6', NULL, '0', NULL, '谢文婷', '15908151487', NULL, 183, 1540700000, NULL, 'xiewenting3@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149383, 'xiejing10', '$2a$10$mNcmFo2TJPi4XzhPSYFWPORbfatUWG3KsZhHLzEN8yMkOjB./BVDC', NULL, '0', NULL, '谢婧', '18813145811', NULL, 183, 1542900000, NULL, 'xiejing10@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149411, 'pange', '$2a$10$wkUFhKMoaSe46YvkotLZsOLxIi3ZFiXlaYl18xMSUG.GsNAUi.zHe', NULL, '0', NULL, '潘戈', '18659653285', NULL, 183, 1540700000, NULL, 'pange@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149510, 'mengsi4', '$2a$10$FuSegdTBaWlp4/SvzMtTz.g5ai06Hy.7ohe5UrR8p/huODpvJCshK', NULL, '0', NULL, '蒙思', '15878105445', NULL, 183, 2200001050, NULL, 'mengsi4@xdf.cn', '2018-12-06 15:57:06', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149524, 'laixiaoshan', '$2a$10$ha4jAY7DFeueHqTZLMOwb.rFlKiCvWQ4g65Wtd0lB8VlNuB3r7Nu.', NULL, '0', NULL, '赖晓珊', '18850586403', NULL, 183, 1540700000, NULL, 'laixiaoshan@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149529, 'chenyun14', '$2a$10$9DgYBkTsQBLs67pSNNLleeyuiQXYS9eJAwP5nK2e2xmQxR2HzZhL6', NULL, '0', NULL, '陈芸', '15659433780', NULL, 183, 2200001049, NULL, 'chenyun14@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149532, 'zhuangyumeng', '$2a$10$xGq/ghlONOmo9LMBlUCyL.cm024YF25tnrvz7hNzRStHMfOiTqDq6', NULL, '0', NULL, '庄雨梦', '15860888276', NULL, 183, 2200001049, NULL, 'zhuangyumeng@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149537, 'qiuxiaoyun', '$2a$10$Lm79HVgj5Qr35tNwXTFLR.JOV939RqB521VvSeOwPRl1wih7eXqvi', NULL, '0', NULL, '邱晓芸', '18850071747', NULL, 183, 2200001049, NULL, 'qiuxiaoyun@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149542, 'hongqi4', '$2a$10$YWkTIn1qHjX3WsYzo29oZOM6kOcQo6J8L.Pw3hF/J2nwanEYP6lh6', NULL, '0', NULL, '洪祺', '13616055694', NULL, 183, 2200001050, NULL, 'hongqi4@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149562, 'litingting22', '$2a$10$yHdVymVwdK37mEqUsbFMO.qPqf/Tgtt7rT0ellANFL2hlEovghujm', NULL, '0', NULL, '李婷婷', '13459228115', NULL, 183, 1540700000, NULL, 'litingting22@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149632, 'linjing12', '$2a$10$5DxwZQTC1YIiunN3tXCKQeiH8IDfRlqAwy/p6Gq0OTKHC6TbN2atm', NULL, '0', NULL, '林晶', '18030222107', NULL, 183, 1540700000, NULL, 'linjing12@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149648, 'linyanhan3', '$2a$10$cqZ24kwTx8fBQq8HFin0xOAxCs8mFz3xbnQBjfOfCFF62OKpB2oOC', NULL, '0', NULL, '林延汉', '15659531711', NULL, 183, 2200001049, NULL, 'linyanhan3@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (149661, 'chenxiaozhen4', '$2a$10$Emkzkn1aoMSdk2yKW8T8TOPIQ8nXY0AtEiVTouOnzLWd2/rnUBWY6', NULL, '0', NULL, '陈晓珍', '13616060028', NULL, 183, 2200001297, NULL, 'chenxiaozhen4@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149667, 'wangting73', '$2a$10$SyAn6E3QsliPDlVXT9hbwO6g7FCKk1WNNr2w3.dUThqB6hOS6QMo.', NULL, '0', NULL, '王停', '18959216083', NULL, 183, 2200001049, NULL, 'wangting73@xdf.cn', '2018-12-06 15:57:05', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149974, 'xiezhiqing', '$2a$10$h024n/IIAuMU1jADTJg0u.3cnGNSkWO/bRWyYWoFaKQ4wrS2PShH2', NULL, '0', NULL, '谢志青', '18593275027', NULL, 183, 1540700000, NULL, 'xiezhiqing@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (149977, 'duhuimin4', '$2a$10$MtWIcBkoBkUvV/o5W0QccOBfVB.MIUEsM1GLglc2rcDROYGam0Y7u', NULL, '0', NULL, '杜慧敏', '15690323230', NULL, 183, 2200003337, NULL, 'duhuimin4@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150006, 'liangshixiang', '$2a$10$jNox/vEywWC1SJY64x2X7O/GEbIqU5mO8OPx5iJ8JrwidSvgI0H4y', NULL, '0', NULL, '梁世想', '18950143505', NULL, 183, 2200001049, NULL, 'liangshixiang@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150009, 'liuxiaomei7', '$2a$10$wJqiSWIJi.ekKkb7EDBLO.3QnQzv/wFw3M953IhqbgBLLdd6aezRe', NULL, '0', NULL, '刘晓梅', '18060925063', NULL, 183, 2200001049, NULL, 'liuxiaomei7@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150069, 'chenqiuyan3', '$2a$10$tb5NoVaMi4c6UkPLT4R/JukdkMazkd.4L7vqPdFWi2N2vC6q.0BWi', NULL, '0', NULL, '陈秋燕', '18350552909', NULL, 183, 2200003337, NULL, 'chenqiuyan3@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150076, 'shichunlin', '$2a$10$XLu/D2uHyj04Vy5hEZbyvuBjx0AwXNmud1jlR3hnl/UtvHFyX4zT.', NULL, '0', NULL, '施纯林', '13405910926', NULL, 183, 2200003337, NULL, 'shichunlin@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150125, 'yangxiaoqing4', '$2a$10$B6UzF1q/Zw7ts9WL2z7Mfuq6w0hwBRCkQOoyxeQ01v7pUmDmX/pN6', NULL, '0', NULL, '杨小清', '18759211063', NULL, 183, 1540700000, NULL, 'yangxiaoqing4@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150137, 'linliping', '$2a$10$4zgywQZrmhLrImc4KwGPXuTK0dXO4sVxpSLLmhCngRcM2IEO7wmyK', NULL, '0', NULL, '林莉萍', '13043006428', NULL, 183, 1540700000, NULL, 'linliping@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150228, 'jiangyijuan', '$2a$10$WT9WkbMSGTEs8slthGdmBuxB7ZFme1VH2YI.W4Emxkf/B1GNdY66C', NULL, '0', NULL, '江艺娟', '18859216080', NULL, 183, 1540700000, NULL, 'jiangyijuan@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150248, 'zhengyunlei', '$2a$10$7cIGk7tEf17TMRWwnT4Ln.1S2XahP.tSA9F94ig5E4QAC69aZtd22', NULL, '0', NULL, '郑云蕾', '18250794768', NULL, 183, 1540700000, NULL, 'zhengyunlei@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150258, 'huangfengying', '$2a$10$4A.vWt/pl.NKbgytxPFk0.hHnLd10eBsPtGPxXRQFxNHP11UWgZo.', NULL, '0', NULL, '黄凤英', '18805023170', NULL, 183, 1540700000, NULL, 'huangfengying@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150268, 'zhangxiaodong10', '$2a$10$n/iMFVraeY0k7JTj7lhx0ugVpbqHUVHUamozWkOUFYHlVCHAFPqaS', NULL, '0', NULL, '张晓东', '15880283906', NULL, 183, 2200001138, NULL, 'zhangxiaodong10@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150275, 'zhengyinghe', '$2a$10$D/7tsok5ZhcD1gWfFj7gzedXLm.oNzrX32Ap202uea4b/m585IPOa', NULL, '0', NULL, '郑映荷', '15221277872', NULL, 183, 1542900000, NULL, 'zhengyinghe@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150313, 'chenwenjie4', '$2a$10$7bAT13Q1Cx/UaOZGctVpQewXzNrsqwX2mwiDmq6kURd2pJWlD91DG', NULL, '0', NULL, '陈文杰', '13966481924', NULL, 183, 1540700000, NULL, 'chenwenjie4@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150468, 'luoyue6', '$2a$10$l6vDAtKkzlwLFoCn1pYSGOoSrxC8HdtGYzON1tydJADFqjp7KqzbO', NULL, '0', NULL, '罗越', '13959219382', NULL, 183, 1540700000, NULL, 'luoyue6@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150585, 'wuyujie4', '$2a$10$63xjbtHAGYv.lgpHIag4H.yyzaWc14V07qAU4yi.gvM1Z.6JPyqiS', NULL, '0', NULL, '吴宇捷', '15189112928', NULL, 183, 2200003336, NULL, 'wuyujie4@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150749, 'linyanping5', '$2a$10$wnFbZQi8pudEHtQ08dGOP.q814EADdsHHGA/oxhR7cyw/lx9eDa6e', NULL, '0', NULL, '林延平', '13400779962', NULL, 183, 2200001049, NULL, 'linyanping5@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150764, 'caimingwei', '$2a$10$BxO7dTjhko/EETJHs0HNSuLhQ7GA8QauLf5ilGa7WaqlSIaj2y1jW', NULL, '0', NULL, '蔡明威', '18106989931', NULL, 183, 1542500000, NULL, 'caimingwei@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (150870, 'zhouwei36', '$2a$10$vO.0sit1csMdFSQAQdyp/eJ8kpkvMytISiR3jd6O7FSyTUvQuneNi', NULL, '0', NULL, '周唯', '18850568368', NULL, 183, 1542500000, NULL, 'zhouwei36@xdf.cn', '2018-12-06 15:57:04', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150931, 'wengpeiying', '$2a$10$xtlG9MPpP3b4YxPXShRsL.pYaVL.d5ZE8iD65.bqOlVOMC4udAWX6', NULL, '0', NULL, '翁沛颖', '18396590706', NULL, 183, 2200001049, NULL, 'wengpeiying@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (150961, 'panxueping', '$2a$10$Xm2hweRb6A9ywNUhYHR67u8N6q/UDLC2GVGMJaVSM.5MJ4kmjauHa', NULL, '0', NULL, '潘薛平', '18659245489', NULL, 183, 2200001049, NULL, 'panxueping@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151004, 'chensenlin', '$2a$10$QyGlUsPYsYSpJTbfIY9RBOq0ILR7gMmMtdaNFLbhyjJIiJW/TA68.', NULL, '0', NULL, '陈森麟', '18695630689', NULL, 183, 2200001049, NULL, 'chensenlin@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151019, 'gongshiqi3', '$2a$10$t5FQXUgaaMmJs29ldUFDk.6wRfKzsQREK8rx16B1yj7jPMZk3rGMa', NULL, '0', NULL, '龚诗琦', '13045975317', NULL, 183, 2200001049, NULL, 'gongshiqi3@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151029, 'honghuatang', '$2a$10$i390kQVOYfx4Coz5IlcoFenjrtReKtCpMgSSd8OcwK52X.21ro3m6', NULL, '0', NULL, '洪华堂', '13799749353', NULL, 183, 2200001050, NULL, 'honghuatang@xdf.cn', '2018-12-06 15:57:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151166, 'lisimin5', '$2a$10$T/z3s388JSg67/zgaEzex.47CT1IEJaZfsaglVnQYNbMZ2n.gzfc2', NULL, '0', NULL, '李思敏', '18850527193', NULL, 183, 2200001049, NULL, 'lisimin5@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151209, 'yufeifei3', '$2a$10$pwzana92uaBi0TsL3baJF.wgPm3ks6VdJUG3mGCJbBZBhwaIDnznG', NULL, '0', NULL, '余菲菲', '13666092509', NULL, 183, 1542900000, NULL, 'yufeifei3@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151312, 'wangsijie7', '$2a$10$bQjqmrIPqkNmneRSb/txK.R/f3hmAgOwgmkCgwOT.mKj8jdUkYKGW', NULL, '0', NULL, '王思杰', '18359619652', NULL, 183, 1542500000, NULL, 'wangsijie7@xdf.cn', '2018-12-06 15:57:00', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151328, 'chenwanwan3', '$2a$10$vY/MCpv.tDwmnLpr/O6EsOo8pKSho8x1dX5UHfokuJ6Hpx0SJpY8q', NULL, '0', NULL, '陈弯弯', '18702510795', NULL, 183, 2200001049, NULL, 'chenwanwan3@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151337, 'caofangjie', '$2a$10$GYO23tXWnoPppGgouFBSIerfTwEvTZ2sAXwu1w12nOeElQMj5sN8G', NULL, '0', NULL, '曹方洁', '18205953103', NULL, 183, 1542700000, NULL, 'caofangjie@xdf.cn', '2018-12-06 15:57:02', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151397, 'longzhongneng', '$2a$10$zAsUJtoxwClKtGhbcPNTuOd6m49n5vUYxpLlJQ0QjSGIUwPiFOSum', NULL, '0', NULL, '龙仲能', '13159205002', NULL, 183, 2200001297, NULL, 'longzhongneng@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151409, 'wangxiaoqin8', '$2a$10$az8PyaJtRSpZwjcATIGBeuE40fLMAWx2ENL0OdzV.zDr8MZnNClh6', NULL, '0', NULL, '汪小芹', '18859272325', NULL, 183, 2200001049, NULL, 'wangxiaoqin8@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151427, 'chenfengming', '$2a$10$ASCluYYnMT5y4mbOIf9qaedxFuFOfcCpRDNTqQTqpmUoWAsVUlOJG', NULL, '0', NULL, '陈凤铭', '18859279620', NULL, 183, 2200001049, NULL, 'chenfengming@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151463, 'fangyuan18', '$2a$10$7o4Ktjeyol5wPH0DGGBuke0mPlrz3mStuZTvA/a.Pjh5XmBpm0ld.', NULL, '0', NULL, '方远', '15659868158', NULL, 183, 2200003337, NULL, 'fangyuan18@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151491, 'huxinyue8', '$2a$10$BvYbsT2E2i8Ff4BI7AO1jOKf83PMg9nuZpBjzObCDVHTJvAPK8a2G', NULL, '0', NULL, '胡心悦', '18059885491', NULL, 183, 1542900000, NULL, 'huxinyue8@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151496, 'huangjiajing', '$2a$10$o585FafEXXvXJnWr4tdDkO3HW0cLZO2MOdgjExR2/YorWUFyJnB7i', NULL, '0', NULL, '黄佳婧', '18559021870', NULL, 183, 1541400000, NULL, 'huangjiajing@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151569, 'keshanshan', '$2a$10$jFP3b75YLSNSTJMDNHfRi.HdOlcHayp.KsFIDEljiRvagouHgxZLW', NULL, '0', NULL, '柯珊珊', '13003989314', NULL, 183, 1540700000, NULL, 'keshanshan@xdf.cn', '2018-12-06 15:57:01', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (151909, 'lintingting7', '$2a$10$BpyPT2nGp7/fDNtRM4o2.ePAjHc.2WTU1SkTc78u9yPnIi1LCMcS2', NULL, '0', NULL, '林婷婷', '15880279363', NULL, 183, 1540700000, NULL, 'lintingting7@xdf.cn', '2018-12-06 15:57:00', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (151927, 'fuchenyun', '$2a$10$zWySTLQmBHuBalvp7I2fsOcf964Ts5zEOINP48guqzByDhwqzClsS', NULL, '0', NULL, '傅辰鋆', '18050055124', NULL, 183, 1540700000, NULL, 'fuchenyun@xdf.cn', '2018-12-06 15:57:00', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152022, 'chenxiong3', '$2a$10$LxhMfynZhD.YjmJEaRVj5unBiT19vtl9IhBJ8X4Gvc59Dtlg1Jcvu', NULL, '0', NULL, '陈雄', '18050106517', NULL, 183, 2200001049, NULL, 'chenxiong3@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152051, 'qiuyuewen', '$2a$10$4Y2azYichwfynH06YIlkYuLNRY.v/MwF570apu3JJeLsB7ee00WeC', NULL, '0', NULL, '邱悦雯', '13023937090', NULL, 183, 2200001049, NULL, 'qiuyuewen@xdf.cn', '2018-12-06 15:57:36', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152057, 'gaoyang33', '$2a$10$s.NUkXzPQTHg7q58FeC.oOpmE/RZM30UNOnatO19NBG0Mllyr0Lnm', NULL, '0', NULL, '高阳', '13055201893', NULL, 183, 2200001050, NULL, 'gaoyang33@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152060, 'guoyun4', '$2a$10$ptHCtwnLSs4JpWMTIMk5keZBfgLX5ItpjcXbs4IQRgRJfYQ3optza', NULL, '0', NULL, '郭昀', '15394487891', NULL, 183, 2200001049, NULL, 'guoyun4@xdf.cn', '2018-12-06 15:57:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152260, 'youwenlin', '$2a$10$QiVJTSVcGOLlQIw4VVLe5eSN3xM8Q0Si9m1ZzZfkowD/7uwOt2sB6', NULL, '0', NULL, '尤文琳', '13600979792', NULL, 183, 1541500000, NULL, 'youwenlin@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152288, 'lixiaojie7', '$2a$10$n7mhU2c7FwTUEnUT5l4BlOXXT5F/dHgvnp8tIVR3Kux2LRsNuoJH.', NULL, '0', NULL, '李晓洁', '13860452537', NULL, 183, 2200001297, NULL, 'lixiaojie7@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152339, 'suyanhong', '$2a$10$1.nC4cwqGpsoFKKMBY2IUe/lRd2VR9lGg1BrA8NkwBRUSg.vRzHN.', NULL, '0', NULL, '苏燕红', '18039834855', NULL, 183, 1540700000, NULL, 'suyanhong@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152381, 'zhangfan54', '$2a$10$Qo0o2dYASSmGlZOma2aCIOK0Jji8ibPWUAdZanGfANd/EIrJjmqU6', NULL, '0', NULL, '张帆', '18959216737', NULL, 183, 1542500000, NULL, 'zhangfan54@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152386, 'luolingmin', '$2a$10$Xx.arSmVfC7Hnh6p.l1P3ezbrOtx3O2yHEAkBbdLj.CjQEzEX1yRi', NULL, '0', NULL, '罗灵敏', '15980922830', NULL, 183, 1540700000, NULL, 'luolingmin@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152535, 'lijiawen7', '$2a$10$B3VG.rNWhYgtSI6H3pxilOxcdQ3ahKCWOiRdyhycN/.6dDyf9MZZK', NULL, '0', NULL, '李嘉玟', '13959289231', NULL, 183, 1540700000, NULL, 'lijiawen7@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152677, 'zhuangzefeng', '$2a$10$57fP853gkbC9LztCBDAFVeHeH5yjSUxpk.Po89q80ZXeD2ID4bNMG', NULL, '0', NULL, '庄泽峰', '18859256915', NULL, 183, 2200001049, NULL, 'zhuangzefeng@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152704, 'zhangxiaohan5', '$2a$10$7GSqjpZOGY0dfFMgisjV0OIzjcWpelDDbbSrrueB03EFVJOEDcOla', NULL, '0', NULL, '张笑寒', '15359313400', NULL, 183, 1540700000, NULL, 'zhangxiaohan5@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152804, 'thompsonrobertlanyon', '$2a$10$F5fdmauV4eEHFF1JPK7Qd.1lfpyd8QBiHWkxUS/Zh9NL89hxuA8AC', NULL, '0', NULL, '森吉', '17850137331', NULL, 183, 2200001050, NULL, 'thompsonrobertlanyon@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152811, 'liuning17', '$2a$10$8IZUdrd0B9ZOHq9xx4N/mup.MwZN1aXs.59L3vVn7ZF17JkHrRY6C', NULL, '0', NULL, '刘宁', '18859243271', NULL, 183, 2200001049, NULL, 'liuning17@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152812, 'zhangjingjing32', '$2a$10$1CJSiHLznM9HMcye.N7FFOsitPYSGRKUPoKAG/evmPaJV7pXUVGTa', NULL, '0', NULL, '张晶晶', '18850583031', NULL, 183, 2200001049, NULL, 'zhangjingjing32@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152832, 'chenhaixin', '$2a$10$CDP7Qre/YGcl34XuZKcMS.DU3yFLHgE3n6NjuX/Pbs8eZVm/gkGYu', NULL, '0', NULL, '陈海信', '15960651523', NULL, 183, 1542500000, NULL, 'chenhaixin@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152845, 'changzenghui', '$2a$10$XK896MHrIbu6l8K4somAqOllCYCayOHAzG0D6B.ChMS4xoESrIA5m', NULL, '0', NULL, '常增辉', '18060938897', NULL, 183, 2200001050, NULL, 'changzenghui@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152854, 'tangjing15', '$2a$10$dnMKJzUDEgZjMA8QjFLcw.60dDS1cP.VNzme76EVweAvp38V8kyXq', NULL, '0', NULL, '唐静', '15159259738', NULL, 183, 1541300000, NULL, 'tangjing15@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (152895, 'rendandan3', '$2a$10$Iyzrfj0RjbIKRsCJIL5b4uXyzwg5dUWuGPbSbouUEVAbde4cFYpAe', NULL, '0', NULL, '任丹丹', '18559257030', NULL, 183, 1540700000, NULL, 'rendandan3@xdf.cn', '2018-12-06 15:57:36', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152897, 'liyajing7', '$2a$10$0qZwknmRLI5HoO5Mt3E9DedEviLDXRdhr4r59BJCSzSyisi2C1Vsm', NULL, '0', NULL, '李雅静', '18850548152', NULL, 183, 1541500000, NULL, 'liyajing7@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (152927, 'wangyumeng4', '$2a$10$fIqG4vPAowvfXpcGCS0lre6wxgZESkE83U9CGLxLZyOP2xwbBIIuy', NULL, '0', NULL, '王雨萌', '15513792711', NULL, 183, 1540700000, NULL, 'wangyumeng4@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153030, 'xushuling', '$2a$10$6EGIgBOMdBLBew1ZaOagEeBWp7XSNMuSXOajFMhyaXiQFTmnvdRVm', NULL, '0', NULL, '徐淑灵', '15280253213', NULL, 183, 1540700000, NULL, 'xushuling@xdf.cn', '2018-12-06 15:57:35', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153041, 'linliling4', '$2a$10$3L0rWZUJorLhyuUguy62fO6.IBenve/bTRhlZC2AD9odo7Laux/ga', NULL, '0', NULL, '林丽玲', '15159881520', NULL, 183, 2200001049, NULL, 'linliling4@xdf.cn', '2018-12-06 15:57:36', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153044, 'caoqiuyue', '$2a$10$MeaPGf7gv/JSf93EuTr1I.9BBl6BIAdIGRJyE8Vx2HazZ6H1e8Uwu', NULL, '0', NULL, '曹秋月', '13600908784', NULL, 183, 1540700000, NULL, 'caoqiuyue@xdf.cn', '2018-12-06 15:57:36', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153090, 'linshanshan5', '$2a$10$gjZdHkckL2HXGyGdA/2kse4GpTmo2VJHMiKf38cxnsp0ZSYZe..FG', NULL, '0', NULL, '林姗姗', '15160033793', NULL, 183, 1540700000, NULL, 'linshanshan5@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153185, 'liushikang', '$2a$10$HaQzRXiZ.sXX7WCnY7WeQedlw4ZlPdyPyG6PGAZWtIXEIiYpF86N2', NULL, '0', NULL, '刘诗康', '13235022569', NULL, 183, 1540700000, NULL, 'liushikang@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153220, 'wangchunmei', '$2a$10$VYeEoPUt4w4CnAKKP3C3nuB6Rudtz4yxhdSIdGttQEMeh5oEVjvBG', NULL, '0', NULL, '王春媚', '13159252732', NULL, 183, 2200001049, NULL, 'wangchunmei@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153255, 'sunxinlei', '$2a$10$d9wefevvkVVG16C.gSDIk.Dqz5iS.kANQ.3FNTrT69zjw8v8LfprO', NULL, '0', NULL, '孙鑫磊', '13215029356', NULL, 183, 1540700000, NULL, 'sunxinlei@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153291, 'chenakeng', '$2a$10$5dK0PUyoojt8UxP3HJBYNekOyWryBVgf/nKJiW9GPCADE7FtNFBEi', NULL, '0', NULL, '陈阿铿', '15859263658', NULL, 183, 2200001049, NULL, 'chenakeng@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153329, 'youngkarljohn', '$2a$10$58NhWyGkAi1815TKazj2dOApfbJPJqR.DZDT/W0okPkmLSnjDeyQi', NULL, '0', NULL, 'YOUNG KARLJOHN', '13178352061', NULL, 183, 1542900000, NULL, 'youngkarljohn@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153540, 'chendinghui', '$2a$10$yo0I3B/eChuVHRDPXSxNeur9XyYvVEXtkW3TxAR0hYGqJ36VoY6Uu', NULL, '0', NULL, '陈鼎辉', '13720884702', NULL, 183, 2200003336, NULL, 'chendinghui@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (153632, 'lindanhong4', '$2a$10$MmxRCyBxiCKpHadoEDj.oOhZORLiEepLzVaOCgHp//D7oyuTIQt1i', NULL, '0', NULL, '林丹虹', '13806033003', NULL, 183, 2200001050, NULL, 'lindanhong4@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153639, 'yangyimin', '$2a$10$Ewrysi/P3urBqaMP69VlROyfswzMUbdbAIIcGEiF/U2PptDvzkZvW', NULL, '0', NULL, '杨艺敏', '18030042258', NULL, 183, 1540700000, NULL, 'yangyimin@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153681, 'zhangli421', '$2a$10$GSiQLYZXGzQBF/nv.rmMd.qkyNKrVha0rkdm3QV1mGXxCNTF2rHuq', NULL, '0', NULL, '张丽', '13110936589', NULL, 183, 2200001049, NULL, 'zhangli421@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153690, 'zhangliping21', '$2a$10$v5FhKfayARZZL2KAtjfGxOuLX72VkvedLpVKci9AcrRdOZtfLp0gG', NULL, '0', NULL, '张丽萍', '15959441653', NULL, 183, 2200001049, NULL, 'zhangliping21@xdf.cn', '2018-12-06 15:57:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (153699, 'linshifan', '$2a$10$a68KLig2AC985dG2jRjb8uLjyPoRFal.Lco2lk1Iny9Qgq6ExERlq', NULL, '0', NULL, '林诗凡', '18650178823', NULL, 183, 2200001050, NULL, 'linshifan@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (154043, 'liuanqi5', '$2a$10$.a6I9m3VKdjY7gkKXvQbdOQ4lJxJQlzL9Zzn89N163EmdiUZA2W0q', NULL, '0', NULL, '刘安琪', '18050069767', NULL, 183, 1542700000, NULL, 'liuanqi5@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (154165, 'chenyanhong5', '$2a$10$v0839Zld/aq29YSv7HJD4OmupVM3FNf.p62zgvDhhnHZSabnND49C', NULL, '0', NULL, '陈燕红', '13645939932', NULL, 183, 1540700000, NULL, 'chenyanhong5@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (154578, 'wangyu104', '$2a$10$Xpg9BWW7lv/FE9/wPFKEheRvZBR6TRt.8OcNIsPYgYkipa6IKkm5y', NULL, '0', NULL, '王羽', '18685989802', NULL, 183, 1540700000, NULL, 'wangyu104@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (154629, 'xujingwen5', '$2a$10$GVlEb.7O8dmMiryFwTuc/uq2M4NEj6v4MO7LHYe3B1sAtWjoZLAUS', NULL, '0', NULL, '徐静雯', '15959293509', NULL, 183, 1542900000, NULL, 'xujingwen5@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (154654, 'qiyanjun', '$2a$10$JZa7OkbSDDL3apMpPlXBhu3IRhvxAGaKZ3PmtAzrmJbpeYv7rHare', NULL, '0', NULL, '齐彦俊', '17750031992', NULL, 183, 1540700000, NULL, 'qiyanjun@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (154691, 'lihuiling6', '$2a$10$xWcdTrql8fDzw5Y5fBaElOEoUGxkWFAnO0eL/XwOorrLhibFxM92q', NULL, '0', NULL, '李惠玲', '15159757868', NULL, 183, 2200003337, NULL, 'lihuiling6@xdf.cn', '2018-12-06 15:57:57', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (154718, 'lishuanglong', '$2a$10$MdfI8DFXo.Tb/4Ib0vbSTOY.iMt4Ry2fMgGnnoejYm3ETmgx51WVy', NULL, '0', NULL, '李双龙', '18850968663', NULL, 183, 2200001049, NULL, 'lishuanglong@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (154882, 'zhongxiaoqing3', '$2a$10$IdG7up7F1rFmmVKIpcJ2JehZ/a.vL27GyksNr3n.dLzIrVYxaHkL.', NULL, '0', NULL, '钟晓庆', '18559286690', NULL, 183, 1540700000, NULL, 'zhongxiaoqing3@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (154998, 'yangwanning', '$2a$10$b3qZTFEFDJFsHVLxN4p1.us.nbW7/J8hpaBscht0uvgG88vYhh3A6', NULL, '0', NULL, '杨皖宁', '18202435973', NULL, 183, 1542500000, NULL, 'yangwanning@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155017, 'guochen', '$2a$10$LN2OxC7kdWq0Wo.vte01NO5a/jglZ2o7BRixA3BB.3gp7c/p.iP.a', NULL, '0', NULL, '郭晨', '15160658413', NULL, 183, 2200001138, NULL, 'guochen@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155048, 'rahimnejadsamad', '$2a$10$3atK2yzqvrsvu3BVM/zWjOaWXV.lv4txge62JPZs.0GsCEszwNndK', NULL, '0', NULL, 'RAHIMNEJAD SAMAD', '14759241310', NULL, 183, 1540700000, NULL, 'rahimnejadsamad@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155087, 'zhouyou9', '$2a$10$YhV51hVSEhKdOu8QX1uYSeQMiPxIyuGBAGH0FJabJcUCu/5CXK156', NULL, '0', NULL, '周尤', '17755640129', NULL, 183, 2200001049, NULL, 'zhouyou9@xdf.cn', '2018-12-06 15:57:25', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155122, 'zhengzhongtao', '$2a$10$tBFjjkmSvkIQBJpjj0whweVNISF3xSfsE/4hpvBr1lSDKY9Ogwr82', NULL, '0', NULL, '郑中焘', '18359312046', NULL, 183, 2200001049, NULL, 'zhengzhongtao@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155334, 'huangqiaoling3', '$2a$10$7O9zmVnMfNcAdMpOeW/ZEe.r6ZhcYcdiQSSgD2wuhO0CMUEVB8KxW', NULL, '0', NULL, '黄巧玲', '15711558837', NULL, 183, 2200001049, NULL, 'huangqiaoling3@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155464, 'chenwenping', '$2a$10$fuVEGDkaXh8p1M9dKgux3OR5uruDPrn3nj5UQz53v1mm4TimDZxmm', NULL, '0', NULL, '陈文萍', '15979232768', NULL, 183, 1540700000, NULL, 'chenwenping@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155500, 'yangping15', '$2a$10$UXBX57Vf.oJFHrn1dsYiHuO5/iotBHZD4VxbXSGre.K7uJjysyRXq', NULL, '0', NULL, '杨萍', '18649807791', NULL, 183, 2200001050, NULL, 'yangping15@xdf.cn', '2018-12-06 15:57:38', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155517, 'dingyingxuan', '$2a$10$4oDoWl0n5kzKTk9T6aP8BeKU4su7D3rsHvBiI1cOcnYtG3wXKzGFi', NULL, '0', NULL, '丁莹萱', '15959282973', NULL, 183, 1541700000, NULL, 'dingyingxuan@xdf.cn', '2018-12-06 15:57:39', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155763, 'shijinshi', '$2a$10$CNVqt6Q6LilF94R9UoIB2.xLgkqWuUuFCVkND/jj6OaMnZnaronSu', NULL, '0', NULL, '施金狮', '15659435747', NULL, 183, 2200001049, NULL, 'shijinshi@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155844, 'yewenting', '$2a$10$eJNAVAUb9pzKVkt5O0W4J.Z86Yq3AicSFMps6pgklfECfSLf0S1AC', NULL, '0', NULL, '叶文婷', '15859268263', NULL, 183, 2200001049, NULL, 'yewenting@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155847, 'luomeiling3', '$2a$10$c/tDC0E4LZxXrOhbpRsPpuk02d2zzWga8NmptAdshdBhumP2XjfZe', NULL, '0', NULL, '罗美龄', '18950494847', NULL, 183, 2200001050, NULL, 'luomeiling3@xdf.cn', '2018-12-06 15:57:39', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155911, 'yechenqing', '$2a$10$fuJcZCTGnMCI0GNnfNecDO51a5Vd.q98xtbaJY1iHK.zmdo9v78Bq', NULL, '0', NULL, '叶陈清', '15606085422', NULL, 183, 1540700000, NULL, 'yechenqing@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155916, 'yanshu4', '$2a$10$yQEQbp9QHnGMmvOrypX/4eJ0CwR2kqTmXs1xKFljX/di/j7FHsuUG', NULL, '0', NULL, '严书', '15606906664', NULL, 183, 2200001049, NULL, 'yanshu4@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (155921, 'hedandan4', '$2a$10$EGNIVUaLFYKeHCuvjxrPfuEwWGVcvlx3MRfb/ag5sku8kfier/lAe', NULL, '0', NULL, '何丹丹', '13960395903', NULL, 183, 2200001049, NULL, 'hedandan4@xdf.cn', '2018-12-06 15:57:39', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155923, 'zhuangyuting', '$2a$10$fR/oVaBjkVh8q3jD5BLZt.x2pMKCQC25ogMWhacjUgvWmicKOsqAm', NULL, '0', NULL, '庄育婷', '13606006597', NULL, 183, 1540700000, NULL, 'zhuangyuting@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (155951, 'zhanzuquan', '$2a$10$4EMbuVyQ7bDXLUne0731BORWpihKnrDapvrZvP3d9xxlH5bx1kDvu', NULL, '0', NULL, '詹祖全', '15105967691', NULL, 183, 2200001049, NULL, 'zhanzuquan@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156303, 'linguodong', '$2a$10$IUkXgKaG9ZrorxInsKsg8.W//ovuErbl0FWkP7cRcEbgTTwD4g.a2', NULL, '0', NULL, '林国栋', '13178277829', NULL, 183, 1540700000, NULL, 'linguodong@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156307, 'paschettaadriano', '$2a$10$/be8zEGsb0nuOl0uo9I7DuhI/IppAfyLlGsWWYm/F0nsN/eJOy3Mq', NULL, '0', NULL, '李来', '13015911270', NULL, 183, 2200001050, NULL, 'paschettaadriano@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156309, 'liwei87', '$2a$10$rFJXh.pbXtUdcmJyLDDBderknpwzUN5JJVaSIrKCkssDXxWCYgLn2', NULL, '0', NULL, '李微', '18063712871', NULL, 183, 1540700000, NULL, 'liwei87@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156317, 'xingmengxia', '$2a$10$YduPXxiDYOvsbesQoxW6BuU1UEqBZKVJIafqPUVRq8.Kgrx4Z6sZS', NULL, '0', NULL, '邢梦霞', '13306034683', NULL, 183, 2200001049, NULL, 'xingmengxia@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156326, 'sunxiaoyu9', '$2a$10$q.b0pgTkxm5tr.aXPfVSJ.V493EMGN5Cm3QyF5XCkXqD9YhfaEfga', NULL, '0', NULL, '孙晓宇', '13275045053', NULL, 183, 2200001049, NULL, 'sunxiaoyu9@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156408, 'zhoulingzhi', '$2a$10$7p5YnCogbFpdxWUbKAOZreOMk/31E95eI6NRun8t2Y6L1QU4JedRy', NULL, '0', NULL, '周凌志', '13055209912', NULL, 183, 2200001050, NULL, 'zhoulingzhi@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156412, 'shizhanghong', '$2a$10$vg78T.nqSySRn6fCyDHXRO2gr2MAVI0DBo2Hv7wvINpnkwhL6w9Iq', NULL, '0', NULL, '石张红', '18815799581', NULL, 183, 2200001049, NULL, 'shizhanghong@xdf.cn', '2018-12-06 15:57:38', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156415, 'zhulei14', '$2a$10$38RS35uzz2J8pIvg.jjh2.5H.6MQXbRQqarjEr.nzcG3QrIjbUBzu', NULL, '0', NULL, '朱磊', '15805907416', NULL, 183, 2200001050, NULL, 'zhulei14@xdf.cn', '2018-12-06 15:58:03', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156417, 'linjian3', '$2a$10$lLjDNkgxM6JHxNj./CHlQ.DOdaA1VkSOk9BF.m44c0GbDGn.8vIpa', NULL, '0', NULL, '林健', '13859662920', NULL, 183, 2200001050, NULL, 'linjian3@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156561, 'wengliangdong', '$2a$10$H3S8PHUd.m62AWyYBSllR.BfEJJVMM6nvgrIVahX.DM0zAiPncRnK', NULL, '0', NULL, '翁梁栋', '15960259897', NULL, 183, 2200001297, NULL, 'wengliangdong@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156678, 'yangboyu', '$2a$10$GzG.ZX2UAyzQvSikQ4/v0.Q9Ff55ifoiWIJIZ4Q7Uya45He.whdRm', NULL, '0', NULL, '杨博宇', '13850011650', NULL, 183, 2200001049, NULL, 'yangboyu@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156679, 'pengyanping', '$2a$10$EFON6OXv2s8x6YlrhYOqbu/nNCY8O3D6IcakiOWk8kGt5sPuRhr4q', NULL, '0', NULL, '彭燕萍', '15605924330', NULL, 183, 1540700000, NULL, 'pengyanping@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156682, 'zhouyanling3', '$2a$10$BuisCJThSzS4Oyx/No1YpeRQYU099Xjnqy7f/r28EmZcxx4z4iZt.', NULL, '0', NULL, '周艳玲', '18750219391', NULL, 183, 1540700000, NULL, 'zhouyanling3@xdf.cn', '2018-12-06 15:57:38', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156722, 'huangxi4', '$2a$10$YHtK22txonIdPGal7sUz8u3lE/FRYclA8O/rKSoHWiGpfhZf2GgNW', NULL, '0', NULL, '黄曦', '13850087631', NULL, 183, 2200001049, NULL, 'huangxi4@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156827, 'wangyanqi4', '$2a$10$4Lm1yforSWh9x/1X941so.WDDjfwd7nU7svUX3qxS5N3FSBPsslWK', NULL, '0', NULL, '王彦琪', '13752128151', NULL, 183, 1540700000, NULL, 'wangyanqi4@xdf.cn', '2018-12-06 15:57:36', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156834, 'wukai7', '$2a$10$GzjIHMUBdIuFni21kBc3Q.uJbl5i2U467YLnwgIzU6Ii8plZErH1y', NULL, '0', NULL, '吴凯', '18030026865', NULL, 183, 2200001050, NULL, 'wukai7@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156843, 'chenhaiyan11', '$2a$10$LbcWtRzr8D0TH77Yw/CdSOH9273R6U2GS4.c6aripThbyqKYpbn5y', NULL, '0', NULL, '陈海燕', '13860127711', NULL, 183, 1540700000, NULL, 'chenhaiyan11@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156888, 'zhangshanshan17', '$2a$10$DgUYh2FC54vHaw8avmykU.JWYQB0prcxjeniYh5JU5U1S8ZPbEuaO', NULL, '0', NULL, '张珊珊', '13235023212', NULL, 183, 2200001049, NULL, 'zhangshanshan17@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156890, 'lixin89', '$2a$10$hFK7oqAnB2R6dOvgHlSs9eHCxZckv862D1NeNDzAURkN0Zn05aNji', NULL, '0', NULL, '李鑫', '13646017785', NULL, 183, 2200001049, NULL, 'lixin89@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (156894, 'jixufei', '$2a$10$QFmiFXPseglta.hgBXxBAeZVA/WlqjWtuCsRq5ZAQ8oxSRBV7Na.O', NULL, '0', NULL, '吉旭飞', '15606924075', NULL, 183, 2200001049, NULL, 'jixufei@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (156935, 'zhangweiwei17', '$2a$10$oLBTmZx2hTZNSaHEfRCvj.E2DjOW14nDBlVkCH66xVHU9FsyssH46', NULL, '0', NULL, '张伟伟', '15160192305', NULL, 183, 2200001049, NULL, 'zhangweiwei17@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157073, 'chengyuzhuo', '$2a$10$kyQO9qtZbSbS22DelJt8/.ais.6QBgt45hChOl4q7MlSd7gybP4YK', NULL, '0', NULL, '程钰卓', '17859933685', NULL, 183, 2200001049, NULL, 'chengyuzhuo@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (157079, 'caojianxin', '$2a$10$PFnGdpTKex7BkaUNIPu5G.LcsaozeNr/g05dwaX5o5enlXlxno8lS', NULL, '0', NULL, '曹建新', '18059869713', NULL, 183, 2200001049, NULL, 'caojianxin@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157300, 'songjia12', '$2a$10$8V98sfiYNvkGWy1A7W6N6efdK5FE4QInojqUJjtx1QrU5xTKlWJLS', NULL, '0', NULL, '宋佳', '18559037587', NULL, 183, 1540700000, NULL, 'songjia12@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157332, 'matingyu', '$2a$10$7uLDVGBT6QlGltNNa3L.MuNDbw6F8Sp67Qij2ypMbFMJjudoadJB2', NULL, '0', NULL, '马婷玉', '17350817962', NULL, 183, 1540700000, NULL, 'matingyu@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (157487, 'keliping', '$2a$10$KPq3ectcv85OUNQvFC76xeASckPgVOmCB/pHHFUB472CwrQ44.0yi', NULL, '0', NULL, '柯丽萍', '15711513006', NULL, 183, 2200001049, NULL, 'keliping@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157490, 'lvyuqing', '$2a$10$V2S0NT07FEmqplflPREvdeDEUp.1zOA/SGoXkv.DFssdt4VMyk2UO', NULL, '0', NULL, '吕宇晴', '18650036043', NULL, 183, 2200001297, NULL, 'lvyuqing@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (157522, 'zhengweiwei4', '$2a$10$Z8vVXmXBAv4GJpaXG0I6s.1Atqm8965DVD9uNL6zBvdMfsMX7th4m', NULL, '0', NULL, '郑伟巍', '18659219029', NULL, 183, 2200001050, NULL, 'zhengweiwei4@xdf.cn', '2018-12-06 15:57:41', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157536, 'mayuanchao', '$2a$10$DF9ewS2gUjwXyUVKNGTE4eZK98Bd.yYg67ryttRJkRNXEBhp2Shge', NULL, '0', NULL, '马元超', '18744001929', NULL, 183, 1540700000, NULL, 'mayuanchao@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157542, 'caitingfang', '$2a$10$grsaaEN9OHtjvwBSDghZKeLIuSOrjXyt7.RV4GB7MgkUqq0Hdahji', NULL, '0', NULL, '蔡婷芳', '18850339232', NULL, 183, 2200001049, NULL, 'caitingfang@xdf.cn', '2018-12-06 15:57:47', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (157546, 'xieying12', '$2a$10$8O/kIBHheHKgAS45JzH2be/LsJFnmH76I5soArpEEFUp8YJdmkxqW', NULL, '0', NULL, '谢颖', '18805057042', NULL, 183, 2200001049, NULL, 'xieying12@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (157818, 'luling9', '$2a$10$so10ICCLeyCgaIhBFhsL0em8oKUDZnavW6S9Z9HecjamW6AU/gQWO', NULL, '0', NULL, '卢凌', '18805927687', NULL, 183, 1540700000, NULL, 'luling9@xdf.cn', '2018-12-06 15:57:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (157958, 'chenzhihan', '$2a$10$CRgLJlv0A36yMFjL3MONwObogsNxeqMWLwIbQ1J4riSnREcOg9BSy', NULL, '0', NULL, '陈志瀚', '18689876156', NULL, 183, 1541500000, NULL, 'chenzhihan@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158037, 'zhuoshichen', '$2a$10$SEXjkBxDhqGgs7CDwF5.oe.y9iD8lyU36WHd/RcfDSKqnnhkRdk5i', NULL, '0', NULL, '卓世晨', '15659801521', NULL, 183, 2200001050, NULL, 'zhuoshichen@xdf.cn', '2018-12-06 15:57:21', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158089, 'zhenglizhu', '$2a$10$EKl5orBwQpIubuDxarN6je7s3gS/vmNmge9Vj0QV6GGxmyEC4XKBi', NULL, '0', NULL, '郑丽珠', '18674088221', NULL, 183, 2200003337, NULL, 'zhenglizhu@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158220, 'zhouyijuan', '$2a$10$3U3mJ8TAeLXtrVIRFzp6nuHSR6MuePbOAZy4EsuF7u9Vg7NX0yYq.', NULL, '0', NULL, '周艺娟', '15985832325', NULL, 183, 1540700000, NULL, 'zhouyijuan@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158232, 'zhangxin93', '$2a$10$L.1aDjL4EfpidGn/CW.u7OFugXDPL7O69ZR.Z/9ciin9pQPLr0E2C', NULL, '0', NULL, '张昕', '18050087686', NULL, 183, 2200001050, NULL, 'zhangxin93@xdf.cn', '2018-12-06 15:57:37', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158269, 'zhulingping', '$2a$10$0e.Z0r.BHcxcFSV8isdAcOkgSuEjMs1VHZ1eDR.NL3QoFlUurUgxm', NULL, '0', NULL, '朱玲萍', '18050557168', NULL, 183, 2200001049, NULL, 'zhulingping@xdf.cn', '2018-12-06 15:57:49', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158281, 'shaoyanni', '$2a$10$UCCbpWgyqZBJoA00rgb6hOxhBqN24cIs.m2XeVKyoel1K3Ef386La', NULL, '0', NULL, '邵燕妮', '15959371582', NULL, 183, 2200001049, NULL, 'shaoyanni@xdf.cn', '2018-12-06 15:57:49', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158287, 'linfenglan3', '$2a$10$lF2HUyZxoJ5GsPwB31Vj2eKoUzFsdC6wvhr4m6vZZTnBNN6W4EVu2', NULL, '0', NULL, '林凤兰', '17750624169', NULL, 183, 1540700000, NULL, 'linfenglan3@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158295, 'guyijia', '$2a$10$RZ2DUjfsIs7CWDaOcxRvx.V/FCPaqQyhZ0UsLmNtx3Fug5EgXDTlO', NULL, '0', NULL, '辜亿珈', '13688257131', NULL, 183, 1542700000, NULL, 'guyijia@xdf.cn', '2018-12-06 15:57:38', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158304, 'luowenjuan3', '$2a$10$7RLg4Lc6.OU1uaaFQzLQbefc4RUpN7qSq6Lza6HdiPXTEMAhCpBo2', NULL, '0', NULL, '骆文娟', '15060861473', NULL, 183, 2200003337, NULL, 'luowenjuan3@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158331, 'yangweihong4', '$2a$10$W2gBnj.MmMFoI5/Kw2vyBemplSTATn5eeVbr9CKpfUNPpqBbPbXgO', NULL, '0', NULL, '杨伟宏', '18059817295', NULL, 183, 1540700000, NULL, 'yangweihong4@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158497, 'zhangshiwen', '$2a$10$6LCgDQELijgw7lDqYMu78..wMmsbmX3Mx0bQXrDzMxZKdmxiBYIJW', NULL, '0', NULL, '张诗雯', '15985831173', NULL, 183, 1540700000, NULL, 'zhangshiwen@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158509, 'zhangyixuan8', '$2a$10$QHsf/sgVrDZRiC7L2kJ7Au4AsRBimlxuttSOUfsIj9pXcj.d4V17G', NULL, '0', NULL, '张艺璇', '13159256339', NULL, 183, 1540700000, NULL, 'zhangyixuan8@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158572, 'leixian', '$2a$10$oXEYX8xWKh9k/.JBicoxJewt7YPuum2nqw9CQm7PF.O2mVDMtcRMG', NULL, '0', NULL, '雷纤', '18695680712', NULL, 183, 1540700000, NULL, 'leixian@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158586, 'huangshun4', '$2a$10$dLnbxsIpHbi888KePYEzWugSUua69pIyB4IRty0XrFKFJ3FToYSDK', NULL, '0', NULL, '黄顺', '13123373598', NULL, 183, 1540700000, NULL, 'huangshun4@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158663, 'huangjing37', '$2a$10$DzyQI5Qru5Bc1rK.IYPDO.UpS6RO2mv3xQPKbmeeRORt.qiKFf.S.', NULL, '0', NULL, '黄婧', '15960266498', NULL, 183, 1540700000, NULL, 'huangjing37@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158670, 'lizhicheng', '$2a$10$4MJouNgkzwjO4ykNyhE2bO.X3UKAD9hkHW/U.tD8aWSPwFBhnEgSe', NULL, '0', NULL, '李治成', '15060808649', NULL, 183, 2200003337, NULL, 'lizhicheng@xdf.cn', '2018-12-06 15:57:24', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158674, 'panwanting', '$2a$10$ZIpk07ybn/krbiOLnTe1A.z5EQ9L9YueMQ3VrRus3Hx9MCaFBP3cu', NULL, '0', NULL, '潘婉婷', '13215027662', NULL, 183, 1540700000, NULL, 'panwanting@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158683, 'chenlinnan', '$2a$10$Z3vKYuYrIPcbMRIoa.Lk1uSuIGYKarln4HW0GNdg9YUJrQ9OBUoIm', NULL, '0', NULL, '陈琳楠', '15710633310', NULL, 183, 1540700000, NULL, 'chenlinnan@xdf.cn', '2018-12-06 15:57:50', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158689, 'yangshaorong', '$2a$10$HgTVWu6g4Nq3AJSBMBhYhetH0UfPpjDU6xJuJBkPQbNt.itcl9JEi', NULL, '0', NULL, '杨少容', '18144045940', NULL, 183, 1540700000, NULL, 'yangshaorong@xdf.cn', '2018-12-06 15:57:40', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158693, 'luxuzhelin', '$2a$10$sslqaGFua1kniyUWL3lbPe3mMBKss7QSi7rglKaBQg3QbebAhQLMm', NULL, '0', NULL, '陆许哲林', '18750936728', NULL, 183, 1540700000, NULL, 'luxuzhelin@xdf.cn', '2018-12-06 15:57:39', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158834, 'caizhaofu', '$2a$10$9tOjgyjYpv7wECkCdZ.TsuEv8qpTiOkfKD3njxJqiLc88rVLEIQ8i', NULL, '0', NULL, '蔡照福', '13950120817', NULL, 183, 1540700000, NULL, 'caizhaofu@xdf.cn', '2018-12-06 15:57:23', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (158844, 'yaoying4', '$2a$10$zMPvwJPBrpu3Zdj2WQctMeD5Bx2uvw8eY5QsI3xMqUQhJfVa905TG', NULL, '0', NULL, '姚营', '17355321995', NULL, 183, 1540700000, NULL, 'yaoying4@xdf.cn', '2018-12-06 15:57:48', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158913, 'zhengfabiao', '$2a$10$JTJNPIGOn3apVCVFmGIM9e4yv1h8exftz47poDW9h/71wapAsT1.O', NULL, '0', NULL, '郑发标', '18359202726', NULL, 183, 2200001050, NULL, 'zhengfabiao@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (158924, 'xiejiajian', '$2a$10$nJ0d4S8vFPQNdgjA6hJrQOGCRCju9oPdcUZsbvC.22YHkObfGSRLe', NULL, '0', NULL, '谢家坚', '13159218932', NULL, 183, 2200001049, NULL, 'xiejiajian@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159062, 'heliuyi', '$2a$10$KzH06Xhcr9mQoz.fs4FgwuL5A8hicN0cv1JZ3ID4tqLr3yjrS33Mm', NULL, '0', NULL, '何刘毅', '13860163879', NULL, 183, 2200001049, NULL, 'heliuyi@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159072, 'yeyilin', '$2a$10$HzE6QPAwVyFLIIrE/DeLA./sJ8e60y30lctwOo0eK32xUhg58qdEu', NULL, '0', NULL, '叶祎琳', '15711553010', NULL, 183, 2200001050, NULL, 'yeyilin@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159132, 'chennan16', '$2a$10$ADWnCQ8eue/Z7Zn9xeH37upfF3HujqzvGynyPjOhqby5wYmasv0La', NULL, '0', NULL, '陈楠', '18750928250', NULL, 183, 2200001049, NULL, 'chennan16@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159136, 'baiwubin', '$2a$10$/uzlN7DaIcPyNMb61SpR2uZDN7z5W1eHD73tXG6ZOq3NLukacd9pa', NULL, '0', NULL, '白吴斌', '13003970719', NULL, 183, 2200001049, NULL, 'baiwubin@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159140, 'zhangwencheng', '$2a$10$miGDPw4pLMhSna7cIoayDuPdWMf0mAirSJbIW9KFlP8ZCRBYlF1au', NULL, '0', NULL, '张文成', '19959277180', NULL, 183, 2200001049, NULL, 'zhangwencheng@xdf.cn', '2018-12-06 15:57:42', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159146, 'xuhaiyan6', '$2a$10$tLUlca.Ym6Y804sHDbWHyOLTbc9/mQftkZ63XF5w9yiNtEVrishmq', NULL, '0', NULL, '许海燕', '15659836993', NULL, 183, 2200001050, NULL, 'xuhaiyan6@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159150, 'huangruiyun', '$2a$10$4/pOnptIkWoTIsRjextWEeMYcKhjLvay2PdwGfx3uaIMeJR1HIEOC', NULL, '0', NULL, '黄瑞云', '15105981032', NULL, 183, 2200001049, NULL, 'huangruiyun@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159159, 'liaoyunying', '$2a$10$svx2nTLrzuwlE9igoqHt4ua5r33ZTuVlHp67FTqFkM14RkOqTK67u', NULL, '0', NULL, '廖云英', '15395977462', NULL, 183, 2200001049, NULL, 'liaoyunying@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159161, 'wuyue33', '$2a$10$YkTtlWgqYDUp0H/Cg6cf1.azvAm5a2JYNwx.Tn1QN5en3mdsi1gii', NULL, '0', NULL, '吴悦', '15606091002', NULL, 183, 2200001049, NULL, 'wuyue33@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159163, 'liuhang7', '$2a$10$TiAO4Fi6IY/L.gfg/FVvCOrXZW5j9Yctz3IQeLOzgOwQSr383TRsW', NULL, '0', NULL, '刘航', '19959277191', NULL, 183, 2200001049, NULL, 'liuhang7@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159193, 'panweibin', '$2a$10$l6/3znPuKk7NaaakRTRdcOczkkQ7/HGCikf2O5eWOA.s3dGHu..Bq', NULL, '0', NULL, '潘伟斌', '15750722655', NULL, 183, 2200001049, NULL, 'panweibin@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159316, 'panxinlei', '$2a$10$mgKOSEAOm7jEuZU6AiqS..v00lUiDP5o9ByS7Y404WZQa8QuvWDTS', NULL, '0', NULL, '潘鑫磊', '18606096427', NULL, 183, 1540700000, NULL, 'panxinlei@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159318, 'zhuzehui', '$2a$10$1ENLQkVgC2lGicQYT/7QDOdA6.TDL.EkzfT59wWGHFrptlHxDyAxi', NULL, '0', NULL, '朱泽晖', '15659789695', NULL, 183, 1540700000, NULL, 'zhuzehui@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159356, 'zhangqian76', '$2a$10$ooyvEqUe2reg6Zu2Eg1Rd.VQ.WsrZXhvElBEdDKAXzHFQkkpr9C1C', NULL, '0', NULL, '张茜', '18817957798', NULL, 183, 2200003337, NULL, 'zhangqian76@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (159459, 'licuilan3', '$2a$10$RjPoTQAe.ELBQKx1xvwxr.Lj4P.f0UfnCV2b8uwMFG32B6XNIpytS', NULL, '0', NULL, '李翠兰', '15960281566', NULL, 183, 2200001049, NULL, 'licuilan3@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159504, 'zhangzihui', '$2a$10$GFDKW4dyETJ/0KggkzpyxOiXALHGbBbFmwGcuy2/IIrTUpgCrywQK', NULL, '0', NULL, '章梓辉', '13600739169', NULL, 183, 2200001049, NULL, 'zhangzihui@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (159699, 'chenyang39', '$2a$10$QGM.UQ4R6W1w0My4qj3j0eYKGeMjWTvyL69S.Jk/SvLKv8qyTm2mO', NULL, '0', NULL, '陈洋', '15836260026', NULL, 183, 2200001049, NULL, 'chenyang39@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160026, 'quqi3', '$2a$10$wsiSS39jc3S5lmALVumvy.D8yGA6jiRDuKDlI.36DkG7pKai9c.dy', NULL, '0', NULL, '曲齐', '13222072207', NULL, 183, 1542900000, NULL, 'quqi3@xdf.cn', '2018-12-06 15:56:08', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160030, 'xiefangfang3', '$2a$10$flVD9MUVjXGn0T6N.a2yi.zIB.tCD6zd0ddgIAcRo6mkKs4maRbv.', NULL, '0', NULL, '谢芳芳', '15080587454', NULL, 183, 1540700000, NULL, 'xiefangfang3@xdf.cn', '2018-12-06 15:57:44', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160123, 'zhangboyang4', '$2a$10$JxN6dS8FTY2X0xQiUNt9EOxRTDNv1hPq4JjDnKO0M.byR28VvOjS.', NULL, '0', NULL, '张柏扬', '13636955818', NULL, 183, 2200001049, NULL, 'zhangboyang4@xdf.cn', '2018-12-06 15:57:43', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160395, 'yuanguifen', '$2a$10$eHS/TX1dxIT.J0zNNZZmFO/vedeaqHnX9sYOmorO7LPrHlkLJfyOi', NULL, '0', NULL, '袁贵芬', '18396212679', NULL, 183, 1540700000, NULL, 'yuanguifen@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160492, 'lidan88', '$2a$10$BoTDf/0NuLVN.gXXXAvM6.6PPLxZdjHmjNB5dcI1ibwIFVwT4GN8e', NULL, '0', NULL, '李丹', '13590472972', NULL, 183, 1540700000, NULL, 'lidan88@xdf.cn', '2018-12-06 15:57:45', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160547, 'wucongming', '$2a$10$r3Dnf.gkVvSH.eYPKgaxw.C.RIKyIYjjYXAxHGxWeltsYtPNifBRG', NULL, '0', NULL, '吴聪明', '13110859682', NULL, 183, 2200003337, NULL, 'wucongming@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160561, 'lifengyun3', '$2a$10$E67WVc4JBwxRMKCaV8NPn.YDUD0aqI3viW2aFwIyTBJ2PvNt0upaK', NULL, '0', NULL, '李风云', '15960853270', NULL, 183, 1540700000, NULL, 'lifengyun3@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160563, 'wuying28', '$2a$10$quLScRyxCSlExNSWKrcm9ehpIILd6YTGXTpN00NDTVZB6F4CHxIke', NULL, '0', NULL, '吴滢', '18815998062', NULL, 183, 1542100000, NULL, 'wuying28@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160564, 'xujiying', '$2a$10$ksrFWGdcNGMAeTZZJt7FnufE9LIJGG6MZro8jixOqN4hY086br8pS', NULL, '0', NULL, '许季颖', '15880777780', NULL, 183, 2200003337, NULL, 'xujiying@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160570, 'caonan6', '$2a$10$49hG7pAd0RjODM97j4B8ZecDgPcIw2HNr4MTYe8MyvketTou0FZy.', NULL, '0', NULL, '曹楠', '18559645682', NULL, 183, 1540700000, NULL, 'caonan6@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160571, 'zhangzheng15', '$2a$10$Ec5/n9FzGcPclhrJuY4RH.tfeum4Tw/tiy8/XH12P/0GouTxqe5Fa', NULL, '0', NULL, '张政', '18663929426', NULL, 183, 1540700000, NULL, 'zhangzheng15@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160608, 'LINKAI4', '$2a$10$.nSI7BL46Ln.MQ/h1nEnDeotT63USyczSFaTf.DelNM1q/iqKxQtq', NULL, '0', NULL, '林恺', '18695757257', NULL, 183, 2200001049, NULL, 'LINKAI4@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160630, 'lianrongrong', '$2a$10$Gb1Rd/6wbrVjKqfbkmG7YOGqzcMwQ2s0WWykszUFpROz5E/gpCRXu', NULL, '0', NULL, '连蓉蓉', '13400740960', NULL, 183, 2200001049, NULL, 'lianrongrong@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160634, 'wuyuying3', '$2a$10$mWySr43I22wgAXAC2BbDNOO9wlcm6OkOVpbtiA9fSN.pCx7k4VIri', NULL, '0', NULL, '吴瑜莹', '18106980246', NULL, 183, 1540700000, NULL, 'wuyuying3@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160740, 'xuanyiyun', '$2a$10$9rpUyay74SkDfF0J2mIqrOyyg7KT2rJZvo6rpbvGPI0W/BVVZxz6O', NULL, '0', NULL, '宣义云', '15860765105', NULL, 183, 2200001049, NULL, 'xuanyiyun@xdf.cn', '2018-12-06 15:57:11', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160750, 'caishunjia', '$2a$10$GABnWCFT46I5tibfs9CO1uHP0F2BwM.XafRX/75kIkeBS0n7CIpwa', NULL, '0', NULL, '蔡顺嘉', '15959372618', NULL, 183, 2200001049, NULL, 'caishunjia@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160753, 'jiahui5', '$2a$10$g1APjHbgSdqDLwdSPWPOeOH4UKsFJ3I8HLOiwqoy6ql/MuOOpcp5C', NULL, '0', NULL, '贾慧', '13023991805', NULL, 183, 1540700000, NULL, 'jiahui5@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160754, 'jiangkaiwen', '$2a$10$mCn59mYfyfIx11.FEr05r.Hx4yNGox5dqCkGabsMKRDxFGjP410OG', NULL, '0', NULL, '蒋凯文', '18559310029', NULL, 183, 2200001049, NULL, 'jiangkaiwen@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160767, 'ganyanting', '$2a$10$5bFImzzXkXvi6DKKht8GbONbQCxfY7R6InTwWsX3QosFJOtBZNmia', NULL, '0', NULL, '甘燕婷', '13806076754', NULL, 183, 2200001050, NULL, 'ganyanting@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160776, 'linzebin3', '$2a$10$gwZboDcwCRAc9ALa62kyv.ttzjF1bxpsTJykvsRmPN5jXByOWe71W', NULL, '0', NULL, '林泽彬', '15160707183', NULL, 183, 2200001050, NULL, 'linzebin3@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (160921, 'shichao5', '$2a$10$KzPDfQw3Ozsn3ZpJzCojb.nIm2s05IkL/MP1FHC260MViYdmPJFQi', NULL, '0', NULL, '石超', '15985850069', NULL, 183, 2200001049, NULL, 'shichao5@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160932, 'heyuewen', '$2a$10$8Vl9KVug5AdPCMZnZVcrU./BQwjzVdDX7kbEhv1rpKq/3OYb0FU8S', NULL, '0', NULL, '何悦雯', '13666058135', NULL, 183, 2200001049, NULL, 'heyuewen@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (160993, 'jiangzhuyun', '$2a$10$eyyRVJKqd1IkTu.p2mriXOImcYIvlgQ8qj1lYk2gt0XQgDSkKtQ36', NULL, '0', NULL, '江珠云', '18359707177', NULL, 183, 2200001049, NULL, 'jiangzhuyun@xdf.cn', '2018-12-06 15:57:51', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161192, 'liuyanhua5', '$2a$10$c8UmCGauI8ujLG3PKpyRGOoBhW4J7GASGVCYPNQ2Ye/Y0amrsA9/a', NULL, '0', NULL, '刘彦花', '17805976878', NULL, 183, 2200001049, NULL, 'liuyanhua5@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161196, 'lijianjiang', '$2a$10$GSFrJG10.xfdpnWsqvUWV.9plZcJdO6wHK8PrrC4lf1dV.3yLMA1m', NULL, '0', NULL, '李建江', '13599129586', NULL, 183, 1540700000, NULL, 'lijianjiang@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161220, 'wengli', '$2a$10$xb5aYbdO128ETXyxhj7WPeeW7px/WZVGWAMwWrZZzLy1xJ74KRmbC', NULL, '0', NULL, '翁莉', '18030198916', NULL, 183, 2200001297, NULL, 'wengli@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161230, 'wuweiting', '$2a$10$O6OzZTByJzXkQOWv5IuxnOpc6ovR32sTJ4npOeT14nMBPYarUSkNm', NULL, '0', NULL, '伍玮婷', '15980467312', NULL, 183, 2200002222, NULL, 'wuweiting@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161270, 'dinglijuan', '$2a$10$J52HQU9p3OlQ.y8I8stQTe09FhdEEBGQwIsxBVZep4ayOHQHfWb.a', NULL, '0', NULL, '丁丽娟', '13616067937', NULL, 183, 2200001050, NULL, 'dinglijuan@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161376, 'kongweixin', '$2a$10$DkTnUhsWLw6BnPkZcq6piuQBlaPRhcDmmy8OoP0NN3O19raKbLtHu', NULL, '0', NULL, '孔维鑫', '15960379256', NULL, 183, 2200001049, NULL, 'kongweixin@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161377, 'yangguangyu', '$2a$10$ErAR2p6vfCWLZ2O.MeeZSe9jW0I86HRp0cxq6q5IbRGU7GFRM8gKm', NULL, '0', NULL, '杨光宇', '13123365698', NULL, 183, 2200001049, NULL, 'yangguangyu@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161389, 'liangxujie', '$2a$10$mno1koxyG/XNVR5Vt5yaFeqa1x2LjYUpkFfDiSC8au.5AEWQe5bN.', NULL, '0', NULL, '梁旭洁', '15105994516', NULL, 183, 2200001049, NULL, 'liangxujie@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161391, 'linyujin', '$2a$10$/WctoHgXNuUxVgCpmsacIu8ZiFL8IiF6oFcC/3cuGPdJnonS34gFu', NULL, '0', NULL, '林玉金', '15711515030', NULL, 183, 2200001049, NULL, 'linyujin@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161397, 'zhangbeini', '$2a$10$SU2BuAJEqLru1kowSZXSbeHw0ImaRDh3h.xh0TyzqG1MkTglYla5.', NULL, '0', NULL, '张贝妮', '15185830017', NULL, 183, 1540700000, NULL, 'zhangbeini@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161423, 'linyi16', '$2a$10$jfgWcJ3FcXS7i2UXpY3Vz.EDtoWPKw8smbWFl5uMXKcsfz4CtG95.', NULL, '0', NULL, '林怡', '18649646802', NULL, 183, 1540700000, NULL, 'linyi16@xdf.cn', '2018-12-06 15:57:53', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161490, 'denglijun', '$2a$10$WMMUQ/qCDjjYlMoGKCWqzuifT56dmFMVSMWVfqtAAtYiClPODZYOq', NULL, '0', NULL, '邓丽君', '18359782532', NULL, 183, 2200002222, NULL, 'denglijun@xdf.cn', '2018-12-06 15:57:52', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161557, 'wangjingting4', '$2a$10$A.HhqznZ2gW0DiJPBYzMkuTxmvhdijhEQuT.iCTQea0GNcyk73WU.', NULL, '0', NULL, '王靓婷', '13696966800', NULL, 183, 2200001297, NULL, 'wangjingting4@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161631, 'cuiweimin', '$2a$10$r5O0Q.wxmcywNjGOHjVR/eDVHozg8A10QMAy4v3pjC.kn/tUAfHPy', NULL, '0', NULL, '崔唯民', '17850130020', NULL, 183, 1542900000, NULL, 'cuiweimin@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161861, 'lianying4', '$2a$10$GPZ64y7piztUbHIjH/a9eOdXBcQ1U8lVTFUTMzLn5K7M8Q4/4dr8S', NULL, '0', NULL, '连颖', '18965506357', NULL, 183, 1540700000, NULL, 'lianying4@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (161919, 'zhanghui70', '$2a$10$sWCqeKGlz/tIG1Y3tmTRUeHLDZ8eN67ExszCT5zscV4/1.zy1lC9u', NULL, '0', NULL, '张慧', '13159412761', NULL, 183, 1540700000, NULL, 'zhanghui70@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (161928, 'chenmenghan', '$2a$10$FZqG/ruVcgLiDcE8OAux.OkFDM1akIaHZ1UdM6Pq3ZS0IDONiu.Q6', NULL, '0', NULL, '陈梦寒', '18959265079', NULL, 183, 1540700000, NULL, 'chenmenghan@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162021, 'liujingjing31', '$2a$10$8GhuNckzlmzi0jHj7ZZvX.mCU5eAbQHh/r6/dUfZ9PHjN7uB3bpca', NULL, '0', NULL, '柳菁菁', '18020715817', NULL, 183, 2200001049, NULL, 'liujingjing31@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162161, 'yinxue3', '$2a$10$dosDSRNw31GWcCDzah7DUOsj6ya6Z0Y33TUTx1tXCIE.Fb.fVfba2', NULL, '0', NULL, '尹雪', '17705925756', NULL, 183, 2200001050, NULL, 'yinxue3@xdf.cn', '2018-12-06 15:57:54', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162233, 'fanmeifang', '$2a$10$x.lpmXFrK2KbWSFwMKk1UOY/dc4JWeuBGQBTd30FcFtbAk66TwSLe', NULL, '0', NULL, '范美芳', '18649647469', NULL, 183, 1540700000, NULL, 'fanmeifang@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (162259, 'houxingzhi', '$2a$10$vOmYV0jQEFB3x3Xjoqq6c.CtFwAhVx9b4OUyrBwFj9W3B.4L5cD3.', NULL, '0', NULL, '侯星志', '18030280310', NULL, 183, 2200001049, NULL, 'houxingzhi@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 1);
INSERT INTO `sys_user` VALUES (162265, 'guomenghui', '$2a$10$yQIhsZpiEArXIqVArqiusueZjmEA6A8ccPOMKPaoz27q.UAT7mZ.G', NULL, '0', NULL, '郭梦惠', '13959258964', NULL, 183, 1540700000, NULL, 'guomenghui@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162271, 'zhaosiyu4', '$2a$10$4QHVPUhQJwhQYkw/anJF1.VGulgODZ9LghRsPktkP0f0P1Lk6yaSu', NULL, '0', NULL, '赵思语', '18059264032', NULL, 183, 1542500000, NULL, 'zhaosiyu4@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162541, 'zhanxiuling', '$2a$10$dukHB115KaHTjrfOaY5Oqe9w63m8hscYohBbejsuQ7QMLkWaR6SRS', NULL, '0', NULL, '詹秀玲', '18030075071', NULL, 183, 1540700000, NULL, 'zhanxiuling@xdf.cn', '2018-12-06 15:57:55', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162633, 'huanglina8', '$2a$10$aDaOgC4xTfLJtP4llHrk0.9TCjA.ssUBVZqGoFKCH/lgHbLzhb.Oi', NULL, '0', NULL, '黄丽娜', '18150291571', NULL, 183, 2200001049, NULL, 'huanglina8@xdf.cn', '2018-12-06 15:57:56', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (162641, 'linhaoran', '$2a$10$qzm.62TV8g3rfbnaI/9yNeggnG9/vE9ROuvhvJZ4mLUaeUK7JkYJG', NULL, '0', NULL, '林浩然', '18150394370', NULL, 183, 2200001138, NULL, 'linhaoran@xdf.cn', '2018-12-06 15:57:22', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (170753, 'hongjingyan', '$2a$10$Q1FJeEbnFTZ/dcH01HbsT.Cp9w.oxs1OG9Gw7bije/Lh2ku0VWYnC', NULL, '0', NULL, '洪静研', '13600978151', NULL, 183, 2200001050, NULL, 'hongjingyan@xdf.cn', '2018-12-06 15:57:46', '2018-12-06 16:50:00', 0);
INSERT INTO `sys_user` VALUES (1299999, 'test1127', '$2a$10$MvDFX9tzns6EkC.qXbGUp.piye7KB1y1LXvOfShBPQGuJ5cimVqVa', NULL, '0', NULL, '测试用户6', '18559131452', NULL, 183, 1541900000, NULL, 'test1127@xdf.cn', '2018-12-06 15:57:00', '2018-12-06 16:50:00', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(20) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
