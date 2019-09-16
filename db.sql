/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : pay

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-16 17:36:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2019-09-16 09:36:02');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '权限管理', 'fa-tasks', null, null, null, '2019-09-16 09:34:51');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户管理', 'fa-users', 'auth/users', null, null, '2019-09-16 09:35:03');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色管理', 'fa-user', 'auth/roles', null, null, '2019-09-16 09:35:14');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限管理', 'fa-ban', 'auth/permissions', null, null, '2019-09-16 09:35:24');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单管理', 'fa-bars', 'auth/menu', null, null, '2019-09-16 09:35:41');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '操作日志', 'fa-history', 'auth/logs', null, null, '2019-09-16 09:35:50');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '客户管理', 'fa-bars', '/customer', null, '2019-09-16 09:06:16', '2019-09-16 09:06:16');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 07:59:29', '2019-09-16 07:59:29');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:34', '2019-09-16 07:59:34');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:39', '2019-09-16 07:59:39');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:41', '2019-09-16 07:59:41');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:43', '2019-09-16 07:59:43');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:45', '2019-09-16 07:59:45');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:52', '2019-09-16 07:59:52');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 07:59:54', '2019-09-16 07:59:54');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:00:54', '2019-09-16 08:00:54');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:01:03', '2019-09-16 08:01:03');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:01:08', '2019-09-16 08:01:08');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:04:44', '2019-09-16 08:04:44');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:04:52', '2019-09-16 08:04:52');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:05:45', '2019-09-16 08:05:45');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:05:49', '2019-09-16 08:05:49');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:06:22', '2019-09-16 08:06:22');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:13:11', '2019-09-16 08:13:11');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:13:16', '2019-09-16 08:13:16');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 08:29:01', '2019-09-16 08:29:01');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:06', '2019-09-16 08:29:06');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:08', '2019-09-16 08:29:08');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:17', '2019-09-16 08:29:17');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:19', '2019-09-16 08:29:19');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:21', '2019-09-16 08:29:21');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:29:25', '2019-09-16 08:29:25');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:37', '2019-09-16 08:30:37');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:42', '2019-09-16 08:30:42');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:43', '2019-09-16 08:30:43');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:44', '2019-09-16 08:30:44');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:44', '2019-09-16 08:30:44');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 08:30:56', '2019-09-16 08:30:56');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 09:01:47', '2019-09-16 09:01:47');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:01:49', '2019-09-16 09:01:49');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:01:57', '2019-09-16 09:01:57');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:02:04', '2019-09-16 09:02:04');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5ba2\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/customer\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\"}', '2019-09-16 09:06:15', '2019-09-16 09:06:15');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:06:16', '2019-09-16 09:06:16');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:06:22', '2019-09-16 09:06:22');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:09:14', '2019-09-16 09:09:14');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:09:20', '2019-09-16 09:09:20');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,customer_type,ip,product_id,star_level,status,updated_at\",\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:11:52', '2019-09-16 09:11:52');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:12:00', '2019-09-16 09:12:00');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:17:59', '2019-09-16 09:17:59');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:01', '2019-09-16 09:18:01');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:02', '2019-09-16 09:18:02');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:03', '2019-09-16 09:18:03');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:03', '2019-09-16 09:18:03');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:04', '2019-09-16 09:18:04');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:04', '2019-09-16 09:18:04');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:05', '2019-09-16 09:18:05');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:05', '2019-09-16 09:18:05');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:06', '2019-09-16 09:18:06');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:06', '2019-09-16 09:18:06');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:18:11', '2019-09-16 09:18:11');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:13', '2019-09-16 09:18:13');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:14', '2019-09-16 09:18:14');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:14', '2019-09-16 09:18:14');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:14', '2019-09-16 09:18:14');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:15', '2019-09-16 09:18:15');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:15', '2019-09-16 09:18:15');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:15', '2019-09-16 09:18:15');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:15', '2019-09-16 09:18:15');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:18:16', '2019-09-16 09:18:16');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:06', '2019-09-16 09:19:06');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:07', '2019-09-16 09:19:07');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:07', '2019-09-16 09:19:07');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:07', '2019-09-16 09:19:07');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:08', '2019-09-16 09:19:08');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:08', '2019-09-16 09:19:08');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:08', '2019-09-16 09:19:08');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:09', '2019-09-16 09:19:09');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:09', '2019-09-16 09:19:09');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:09', '2019-09-16 09:19:09');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:09', '2019-09-16 09:19:09');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:10', '2019-09-16 09:19:10');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:10', '2019-09-16 09:19:10');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:10', '2019-09-16 09:19:10');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:10', '2019-09-16 09:19:10');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:10', '2019-09-16 09:19:10');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:11', '2019-09-16 09:19:11');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:11', '2019-09-16 09:19:11');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:19:33', '2019-09-16 09:19:33');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:18', '2019-09-16 09:21:18');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:19', '2019-09-16 09:21:19');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:20', '2019-09-16 09:21:20');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:21', '2019-09-16 09:21:21');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:21', '2019-09-16 09:21:21');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:21', '2019-09-16 09:21:21');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:21', '2019-09-16 09:21:21');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:21', '2019-09-16 09:21:21');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:22', '2019-09-16 09:21:22');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:22', '2019-09-16 09:21:22');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:22', '2019-09-16 09:21:22');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:22', '2019-09-16 09:21:22');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:22', '2019-09-16 09:21:22');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:52', '2019-09-16 09:21:52');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:53', '2019-09-16 09:21:53');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:53', '2019-09-16 09:21:53');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:54', '2019-09-16 09:21:54');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:54', '2019-09-16 09:21:54');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:55', '2019-09-16 09:21:55');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:21:57', '2019-09-16 09:21:57');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:58', '2019-09-16 09:21:58');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:58', '2019-09-16 09:21:58');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:59', '2019-09-16 09:21:59');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:59', '2019-09-16 09:21:59');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:59', '2019-09-16 09:21:59');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:21:59', '2019-09-16 09:21:59');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:22:00', '2019-09-16 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:22:00', '2019-09-16 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:22:00', '2019-09-16 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:22:00', '2019-09-16 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:22:00', '2019-09-16 09:22:00');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:26:56', '2019-09-16 09:26:56');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:29:55', '2019-09-16 09:29:55');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:30:26', '2019-09-16 09:30:26');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:30:32', '2019-09-16 09:30:32');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/customer', 'GET', '127.0.0.1', '[]', '2019-09-16 09:30:43', '2019-09-16 09:30:43');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:30:50', '2019-09-16 09:30:50');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:14', '2019-09-16 09:34:14');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:14', '2019-09-16 09:34:14');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:16', '2019-09-16 09:34:16');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:17', '2019-09-16 09:34:17');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:21', '2019-09-16 09:34:21');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:24', '2019-09-16 09:34:24');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:25', '2019-09-16 09:34:25');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:26', '2019-09-16 09:34:26');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:29', '2019-09-16 09:34:29');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:39', '2019-09-16 09:34:39');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:34:51', '2019-09-16 09:34:51');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:34:51', '2019-09-16 09:34:51');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:34:55', '2019-09-16 09:34:55');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:35:03', '2019-09-16 09:35:03');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:35:03', '2019-09-16 09:35:03');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:35:07', '2019-09-16 09:35:07');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:35:14', '2019-09-16 09:35:14');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:35:15', '2019-09-16 09:35:15');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:35:18', '2019-09-16 09:35:18');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:35:24', '2019-09-16 09:35:24');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:35:25', '2019-09-16 09:35:25');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:35:27', '2019-09-16 09:35:27');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:35:41', '2019-09-16 09:35:41');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:35:42', '2019-09-16 09:35:42');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:35:44', '2019-09-16 09:35:44');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:35:50', '2019-09-16 09:35:50');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:35:50', '2019-09-16 09:35:50');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:35:53', '2019-09-16 09:35:53');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"Q5ZwSJc1pt5O8I0U260HiSaSCSua1zj7yiAGHZHn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/office.pay.com\\/admin\\/auth\\/menu\"}', '2019-09-16 09:36:02', '2019-09-16 09:36:02');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-09-16 09:36:02', '2019-09-16 09:36:02');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:04', '2019-09-16 09:36:04');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-09-16 09:36:05', '2019-09-16 09:36:05');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:08', '2019-09-16 09:36:08');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:11', '2019-09-16 09:36:11');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:13', '2019-09-16 09:36:13');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:15', '2019-09-16 09:36:15');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:17', '2019-09-16 09:36:17');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:18', '2019-09-16 09:36:18');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-09-16 09:36:25', '2019-09-16 09:36:25');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-09-16 07:13:43', '2019-09-16 07:13:43');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$ar7VjQR0E0J2d86TYbjw/.o0LLD4xROQsHGJVfl8gMmIxPq79OWLK', 'Administrator', null, 'XJyl0FDDnsheaZpD0YCBTQOf8QlFVS2C7j9w0g9js4YgutwB4WXXx5ggkBCT', '2019-09-16 07:13:43', '2019-09-16 07:13:43');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for approves
-- ----------------------------
DROP TABLE IF EXISTS `approves`;
CREATE TABLE `approves` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `request_type` tinyint(1) NOT NULL COMMENT '1 存款 2 取款',
  `merchant_code` varchar(25) NOT NULL COMMENT '商户标识',
  `request_id` varchar(100) NOT NULL COMMENT '提案ID',
  `old_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 存款 1取款',
  `new_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '2 批准 -3 拒绝',
  `approve_by` varchar(200) NOT NULL COMMENT '审批人',
  `user_type` varchar(15) NOT NULL COMMENT 'C 会员 U 客服 Z 资金',
  `remarks` varchar(250) NOT NULL COMMENT '审批备注',
  `ip_address` varchar(250) NOT NULL COMMENT 'IP',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approves
-- ----------------------------

-- ----------------------------
-- Table structure for bank_codes
-- ----------------------------
DROP TABLE IF EXISTS `bank_codes`;
CREATE TABLE `bank_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 T-银行卡 2 I-存款银行卡 3 I-取款银行',
  `name` varchar(25) NOT NULL COMMENT '银行名称',
  `code` varchar(15) NOT NULL COMMENT '银行编码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0  无效  1 有效',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank_codes
-- ----------------------------
INSERT INTO `bank_codes` VALUES ('1', '1', '工商银行', 'ABC', '1');
INSERT INTO `bank_codes` VALUES ('2', '1', '中国银行', 'AOC', '1');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `city_id` varchar(12) DEFAULT NULL,
  `province_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', '市辖区', '110100000000', '110000000000');
INSERT INTO `cities` VALUES ('2', '市辖区', '120100000000', '120000000000');
INSERT INTO `cities` VALUES ('3', '石家庄市', '130100000000', '130000000000');
INSERT INTO `cities` VALUES ('4', '唐山市', '130200000000', '130000000000');
INSERT INTO `cities` VALUES ('5', '秦皇岛市', '130300000000', '130000000000');
INSERT INTO `cities` VALUES ('6', '邯郸市', '130400000000', '130000000000');
INSERT INTO `cities` VALUES ('7', '邢台市', '130500000000', '130000000000');
INSERT INTO `cities` VALUES ('8', '保定市', '130600000000', '130000000000');
INSERT INTO `cities` VALUES ('9', '张家口市', '130700000000', '130000000000');
INSERT INTO `cities` VALUES ('10', '承德市', '130800000000', '130000000000');
INSERT INTO `cities` VALUES ('11', '沧州市', '130900000000', '130000000000');
INSERT INTO `cities` VALUES ('12', '廊坊市', '131000000000', '130000000000');
INSERT INTO `cities` VALUES ('13', '衡水市', '131100000000', '130000000000');
INSERT INTO `cities` VALUES ('14', '太原市', '140100000000', '140000000000');
INSERT INTO `cities` VALUES ('15', '大同市', '140200000000', '140000000000');
INSERT INTO `cities` VALUES ('16', '阳泉市', '140300000000', '140000000000');
INSERT INTO `cities` VALUES ('17', '长治市', '140400000000', '140000000000');
INSERT INTO `cities` VALUES ('18', '晋城市', '140500000000', '140000000000');
INSERT INTO `cities` VALUES ('19', '朔州市', '140600000000', '140000000000');
INSERT INTO `cities` VALUES ('20', '晋中市', '140700000000', '140000000000');
INSERT INTO `cities` VALUES ('21', '运城市', '140800000000', '140000000000');
INSERT INTO `cities` VALUES ('22', '忻州市', '140900000000', '140000000000');
INSERT INTO `cities` VALUES ('23', '临汾市', '141000000000', '140000000000');
INSERT INTO `cities` VALUES ('24', '吕梁市', '141100000000', '140000000000');
INSERT INTO `cities` VALUES ('25', '呼和浩特市', '150100000000', '150000000000');
INSERT INTO `cities` VALUES ('26', '包头市', '150200000000', '150000000000');
INSERT INTO `cities` VALUES ('27', '乌海市', '150300000000', '150000000000');
INSERT INTO `cities` VALUES ('28', '赤峰市', '150400000000', '150000000000');
INSERT INTO `cities` VALUES ('29', '通辽市', '150500000000', '150000000000');
INSERT INTO `cities` VALUES ('30', '鄂尔多斯市', '150600000000', '150000000000');
INSERT INTO `cities` VALUES ('31', '呼伦贝尔市', '150700000000', '150000000000');
INSERT INTO `cities` VALUES ('32', '巴彦淖尔市', '150800000000', '150000000000');
INSERT INTO `cities` VALUES ('33', '乌兰察布市', '150900000000', '150000000000');
INSERT INTO `cities` VALUES ('34', '兴安盟', '152200000000', '150000000000');
INSERT INTO `cities` VALUES ('35', '锡林郭勒盟', '152500000000', '150000000000');
INSERT INTO `cities` VALUES ('36', '阿拉善盟', '152900000000', '150000000000');
INSERT INTO `cities` VALUES ('37', '沈阳市', '210100000000', '210000000000');
INSERT INTO `cities` VALUES ('38', '大连市', '210200000000', '210000000000');
INSERT INTO `cities` VALUES ('39', '鞍山市', '210300000000', '210000000000');
INSERT INTO `cities` VALUES ('40', '抚顺市', '210400000000', '210000000000');
INSERT INTO `cities` VALUES ('41', '本溪市', '210500000000', '210000000000');
INSERT INTO `cities` VALUES ('42', '丹东市', '210600000000', '210000000000');
INSERT INTO `cities` VALUES ('43', '锦州市', '210700000000', '210000000000');
INSERT INTO `cities` VALUES ('44', '营口市', '210800000000', '210000000000');
INSERT INTO `cities` VALUES ('45', '阜新市', '210900000000', '210000000000');
INSERT INTO `cities` VALUES ('46', '辽阳市', '211000000000', '210000000000');
INSERT INTO `cities` VALUES ('47', '盘锦市', '211100000000', '210000000000');
INSERT INTO `cities` VALUES ('48', '铁岭市', '211200000000', '210000000000');
INSERT INTO `cities` VALUES ('49', '朝阳市', '211300000000', '210000000000');
INSERT INTO `cities` VALUES ('50', '葫芦岛市', '211400000000', '210000000000');
INSERT INTO `cities` VALUES ('51', '长春市', '220100000000', '220000000000');
INSERT INTO `cities` VALUES ('52', '吉林市', '220200000000', '220000000000');
INSERT INTO `cities` VALUES ('53', '四平市', '220300000000', '220000000000');
INSERT INTO `cities` VALUES ('54', '辽源市', '220400000000', '220000000000');
INSERT INTO `cities` VALUES ('55', '通化市', '220500000000', '220000000000');
INSERT INTO `cities` VALUES ('56', '白山市', '220600000000', '220000000000');
INSERT INTO `cities` VALUES ('57', '松原市', '220700000000', '220000000000');
INSERT INTO `cities` VALUES ('58', '白城市', '220800000000', '220000000000');
INSERT INTO `cities` VALUES ('59', '延边朝鲜族自治州', '222400000000', '220000000000');
INSERT INTO `cities` VALUES ('60', '哈尔滨市', '230100000000', '230000000000');
INSERT INTO `cities` VALUES ('61', '齐齐哈尔市', '230200000000', '230000000000');
INSERT INTO `cities` VALUES ('62', '鸡西市', '230300000000', '230000000000');
INSERT INTO `cities` VALUES ('63', '鹤岗市', '230400000000', '230000000000');
INSERT INTO `cities` VALUES ('64', '双鸭山市', '230500000000', '230000000000');
INSERT INTO `cities` VALUES ('65', '大庆市', '230600000000', '230000000000');
INSERT INTO `cities` VALUES ('66', '伊春市', '230700000000', '230000000000');
INSERT INTO `cities` VALUES ('67', '佳木斯市', '230800000000', '230000000000');
INSERT INTO `cities` VALUES ('68', '七台河市', '230900000000', '230000000000');
INSERT INTO `cities` VALUES ('69', '牡丹江市', '231000000000', '230000000000');
INSERT INTO `cities` VALUES ('70', '黑河市', '231100000000', '230000000000');
INSERT INTO `cities` VALUES ('71', '绥化市', '231200000000', '230000000000');
INSERT INTO `cities` VALUES ('72', '大兴安岭地区', '232700000000', '230000000000');
INSERT INTO `cities` VALUES ('73', '市辖区', '310100000000', '310000000000');
INSERT INTO `cities` VALUES ('74', '南京市', '320100000000', '320000000000');
INSERT INTO `cities` VALUES ('75', '无锡市', '320200000000', '320000000000');
INSERT INTO `cities` VALUES ('76', '徐州市', '320300000000', '320000000000');
INSERT INTO `cities` VALUES ('77', '常州市', '320400000000', '320000000000');
INSERT INTO `cities` VALUES ('78', '苏州市', '320500000000', '320000000000');
INSERT INTO `cities` VALUES ('79', '南通市', '320600000000', '320000000000');
INSERT INTO `cities` VALUES ('80', '连云港市', '320700000000', '320000000000');
INSERT INTO `cities` VALUES ('81', '淮安市', '320800000000', '320000000000');
INSERT INTO `cities` VALUES ('82', '盐城市', '320900000000', '320000000000');
INSERT INTO `cities` VALUES ('83', '扬州市', '321000000000', '320000000000');
INSERT INTO `cities` VALUES ('84', '镇江市', '321100000000', '320000000000');
INSERT INTO `cities` VALUES ('85', '泰州市', '321200000000', '320000000000');
INSERT INTO `cities` VALUES ('86', '宿迁市', '321300000000', '320000000000');
INSERT INTO `cities` VALUES ('87', '杭州市', '330100000000', '330000000000');
INSERT INTO `cities` VALUES ('88', '宁波市', '330200000000', '330000000000');
INSERT INTO `cities` VALUES ('89', '温州市', '330300000000', '330000000000');
INSERT INTO `cities` VALUES ('90', '嘉兴市', '330400000000', '330000000000');
INSERT INTO `cities` VALUES ('91', '湖州市', '330500000000', '330000000000');
INSERT INTO `cities` VALUES ('92', '绍兴市', '330600000000', '330000000000');
INSERT INTO `cities` VALUES ('93', '金华市', '330700000000', '330000000000');
INSERT INTO `cities` VALUES ('94', '衢州市', '330800000000', '330000000000');
INSERT INTO `cities` VALUES ('95', '舟山市', '330900000000', '330000000000');
INSERT INTO `cities` VALUES ('96', '台州市', '331000000000', '330000000000');
INSERT INTO `cities` VALUES ('97', '丽水市', '331100000000', '330000000000');
INSERT INTO `cities` VALUES ('98', '合肥市', '340100000000', '340000000000');
INSERT INTO `cities` VALUES ('99', '芜湖市', '340200000000', '340000000000');
INSERT INTO `cities` VALUES ('100', '蚌埠市', '340300000000', '340000000000');
INSERT INTO `cities` VALUES ('101', '淮南市', '340400000000', '340000000000');
INSERT INTO `cities` VALUES ('102', '马鞍山市', '340500000000', '340000000000');
INSERT INTO `cities` VALUES ('103', '淮北市', '340600000000', '340000000000');
INSERT INTO `cities` VALUES ('104', '铜陵市', '340700000000', '340000000000');
INSERT INTO `cities` VALUES ('105', '安庆市', '340800000000', '340000000000');
INSERT INTO `cities` VALUES ('106', '黄山市', '341000000000', '340000000000');
INSERT INTO `cities` VALUES ('107', '滁州市', '341100000000', '340000000000');
INSERT INTO `cities` VALUES ('108', '阜阳市', '341200000000', '340000000000');
INSERT INTO `cities` VALUES ('109', '宿州市', '341300000000', '340000000000');
INSERT INTO `cities` VALUES ('110', '六安市', '341500000000', '340000000000');
INSERT INTO `cities` VALUES ('111', '亳州市', '341600000000', '340000000000');
INSERT INTO `cities` VALUES ('112', '池州市', '341700000000', '340000000000');
INSERT INTO `cities` VALUES ('113', '宣城市', '341800000000', '340000000000');
INSERT INTO `cities` VALUES ('114', '福州市', '350100000000', '350000000000');
INSERT INTO `cities` VALUES ('115', '厦门市', '350200000000', '350000000000');
INSERT INTO `cities` VALUES ('116', '莆田市', '350300000000', '350000000000');
INSERT INTO `cities` VALUES ('117', '三明市', '350400000000', '350000000000');
INSERT INTO `cities` VALUES ('118', '泉州市', '350500000000', '350000000000');
INSERT INTO `cities` VALUES ('119', '漳州市', '350600000000', '350000000000');
INSERT INTO `cities` VALUES ('120', '南平市', '350700000000', '350000000000');
INSERT INTO `cities` VALUES ('121', '龙岩市', '350800000000', '350000000000');
INSERT INTO `cities` VALUES ('122', '宁德市', '350900000000', '350000000000');
INSERT INTO `cities` VALUES ('123', '南昌市', '360100000000', '360000000000');
INSERT INTO `cities` VALUES ('124', '景德镇市', '360200000000', '360000000000');
INSERT INTO `cities` VALUES ('125', '萍乡市', '360300000000', '360000000000');
INSERT INTO `cities` VALUES ('126', '九江市', '360400000000', '360000000000');
INSERT INTO `cities` VALUES ('127', '新余市', '360500000000', '360000000000');
INSERT INTO `cities` VALUES ('128', '鹰潭市', '360600000000', '360000000000');
INSERT INTO `cities` VALUES ('129', '赣州市', '360700000000', '360000000000');
INSERT INTO `cities` VALUES ('130', '吉安市', '360800000000', '360000000000');
INSERT INTO `cities` VALUES ('131', '宜春市', '360900000000', '360000000000');
INSERT INTO `cities` VALUES ('132', '抚州市', '361000000000', '360000000000');
INSERT INTO `cities` VALUES ('133', '上饶市', '361100000000', '360000000000');
INSERT INTO `cities` VALUES ('134', '济南市', '370100000000', '370000000000');
INSERT INTO `cities` VALUES ('135', '青岛市', '370200000000', '370000000000');
INSERT INTO `cities` VALUES ('136', '淄博市', '370300000000', '370000000000');
INSERT INTO `cities` VALUES ('137', '枣庄市', '370400000000', '370000000000');
INSERT INTO `cities` VALUES ('138', '东营市', '370500000000', '370000000000');
INSERT INTO `cities` VALUES ('139', '烟台市', '370600000000', '370000000000');
INSERT INTO `cities` VALUES ('140', '潍坊市', '370700000000', '370000000000');
INSERT INTO `cities` VALUES ('141', '济宁市', '370800000000', '370000000000');
INSERT INTO `cities` VALUES ('142', '泰安市', '370900000000', '370000000000');
INSERT INTO `cities` VALUES ('143', '威海市', '371000000000', '370000000000');
INSERT INTO `cities` VALUES ('144', '日照市', '371100000000', '370000000000');
INSERT INTO `cities` VALUES ('145', '莱芜市', '371200000000', '370000000000');
INSERT INTO `cities` VALUES ('146', '临沂市', '371300000000', '370000000000');
INSERT INTO `cities` VALUES ('147', '德州市', '371400000000', '370000000000');
INSERT INTO `cities` VALUES ('148', '聊城市', '371500000000', '370000000000');
INSERT INTO `cities` VALUES ('149', '滨州市', '371600000000', '370000000000');
INSERT INTO `cities` VALUES ('150', '菏泽市', '371700000000', '370000000000');
INSERT INTO `cities` VALUES ('151', '郑州市', '410100000000', '410000000000');
INSERT INTO `cities` VALUES ('152', '开封市', '410200000000', '410000000000');
INSERT INTO `cities` VALUES ('153', '洛阳市', '410300000000', '410000000000');
INSERT INTO `cities` VALUES ('154', '平顶山市', '410400000000', '410000000000');
INSERT INTO `cities` VALUES ('155', '安阳市', '410500000000', '410000000000');
INSERT INTO `cities` VALUES ('156', '鹤壁市', '410600000000', '410000000000');
INSERT INTO `cities` VALUES ('157', '新乡市', '410700000000', '410000000000');
INSERT INTO `cities` VALUES ('158', '焦作市', '410800000000', '410000000000');
INSERT INTO `cities` VALUES ('159', '濮阳市', '410900000000', '410000000000');
INSERT INTO `cities` VALUES ('160', '许昌市', '411000000000', '410000000000');
INSERT INTO `cities` VALUES ('161', '漯河市', '411100000000', '410000000000');
INSERT INTO `cities` VALUES ('162', '三门峡市', '411200000000', '410000000000');
INSERT INTO `cities` VALUES ('163', '南阳市', '411300000000', '410000000000');
INSERT INTO `cities` VALUES ('164', '商丘市', '411400000000', '410000000000');
INSERT INTO `cities` VALUES ('165', '信阳市', '411500000000', '410000000000');
INSERT INTO `cities` VALUES ('166', '周口市', '411600000000', '410000000000');
INSERT INTO `cities` VALUES ('167', '驻马店市', '411700000000', '410000000000');
INSERT INTO `cities` VALUES ('168', '省直辖县级行政区划', '419000000000', '410000000000');
INSERT INTO `cities` VALUES ('169', '武汉市', '420100000000', '420000000000');
INSERT INTO `cities` VALUES ('170', '黄石市', '420200000000', '420000000000');
INSERT INTO `cities` VALUES ('171', '十堰市', '420300000000', '420000000000');
INSERT INTO `cities` VALUES ('172', '宜昌市', '420500000000', '420000000000');
INSERT INTO `cities` VALUES ('173', '襄阳市', '420600000000', '420000000000');
INSERT INTO `cities` VALUES ('174', '鄂州市', '420700000000', '420000000000');
INSERT INTO `cities` VALUES ('175', '荆门市', '420800000000', '420000000000');
INSERT INTO `cities` VALUES ('176', '孝感市', '420900000000', '420000000000');
INSERT INTO `cities` VALUES ('177', '荆州市', '421000000000', '420000000000');
INSERT INTO `cities` VALUES ('178', '黄冈市', '421100000000', '420000000000');
INSERT INTO `cities` VALUES ('179', '咸宁市', '421200000000', '420000000000');
INSERT INTO `cities` VALUES ('180', '随州市', '421300000000', '420000000000');
INSERT INTO `cities` VALUES ('181', '恩施土家族苗族自治州', '422800000000', '420000000000');
INSERT INTO `cities` VALUES ('182', '省直辖县级行政区划', '429000000000', '420000000000');
INSERT INTO `cities` VALUES ('183', '长沙市', '430100000000', '430000000000');
INSERT INTO `cities` VALUES ('184', '株洲市', '430200000000', '430000000000');
INSERT INTO `cities` VALUES ('185', '湘潭市', '430300000000', '430000000000');
INSERT INTO `cities` VALUES ('186', '衡阳市', '430400000000', '430000000000');
INSERT INTO `cities` VALUES ('187', '邵阳市', '430500000000', '430000000000');
INSERT INTO `cities` VALUES ('188', '岳阳市', '430600000000', '430000000000');
INSERT INTO `cities` VALUES ('189', '常德市', '430700000000', '430000000000');
INSERT INTO `cities` VALUES ('190', '张家界市', '430800000000', '430000000000');
INSERT INTO `cities` VALUES ('191', '益阳市', '430900000000', '430000000000');
INSERT INTO `cities` VALUES ('192', '郴州市', '431000000000', '430000000000');
INSERT INTO `cities` VALUES ('193', '永州市', '431100000000', '430000000000');
INSERT INTO `cities` VALUES ('194', '怀化市', '431200000000', '430000000000');
INSERT INTO `cities` VALUES ('195', '娄底市', '431300000000', '430000000000');
INSERT INTO `cities` VALUES ('196', '湘西土家族苗族自治州', '433100000000', '430000000000');
INSERT INTO `cities` VALUES ('197', '广州市', '440100000000', '440000000000');
INSERT INTO `cities` VALUES ('198', '韶关市', '440200000000', '440000000000');
INSERT INTO `cities` VALUES ('199', '深圳市', '440300000000', '440000000000');
INSERT INTO `cities` VALUES ('200', '珠海市', '440400000000', '440000000000');
INSERT INTO `cities` VALUES ('201', '汕头市', '440500000000', '440000000000');
INSERT INTO `cities` VALUES ('202', '佛山市', '440600000000', '440000000000');
INSERT INTO `cities` VALUES ('203', '江门市', '440700000000', '440000000000');
INSERT INTO `cities` VALUES ('204', '湛江市', '440800000000', '440000000000');
INSERT INTO `cities` VALUES ('205', '茂名市', '440900000000', '440000000000');
INSERT INTO `cities` VALUES ('206', '肇庆市', '441200000000', '440000000000');
INSERT INTO `cities` VALUES ('207', '惠州市', '441300000000', '440000000000');
INSERT INTO `cities` VALUES ('208', '梅州市', '441400000000', '440000000000');
INSERT INTO `cities` VALUES ('209', '汕尾市', '441500000000', '440000000000');
INSERT INTO `cities` VALUES ('210', '河源市', '441600000000', '440000000000');
INSERT INTO `cities` VALUES ('211', '阳江市', '441700000000', '440000000000');
INSERT INTO `cities` VALUES ('212', '清远市', '441800000000', '440000000000');
INSERT INTO `cities` VALUES ('213', '东莞市', '441900000000', '440000000000');
INSERT INTO `cities` VALUES ('214', '中山市', '442000000000', '440000000000');
INSERT INTO `cities` VALUES ('215', '潮州市', '445100000000', '440000000000');
INSERT INTO `cities` VALUES ('216', '揭阳市', '445200000000', '440000000000');
INSERT INTO `cities` VALUES ('217', '云浮市', '445300000000', '440000000000');
INSERT INTO `cities` VALUES ('218', '南宁市', '450100000000', '450000000000');
INSERT INTO `cities` VALUES ('219', '柳州市', '450200000000', '450000000000');
INSERT INTO `cities` VALUES ('220', '桂林市', '450300000000', '450000000000');
INSERT INTO `cities` VALUES ('221', '梧州市', '450400000000', '450000000000');
INSERT INTO `cities` VALUES ('222', '北海市', '450500000000', '450000000000');
INSERT INTO `cities` VALUES ('223', '防城港市', '450600000000', '450000000000');
INSERT INTO `cities` VALUES ('224', '钦州市', '450700000000', '450000000000');
INSERT INTO `cities` VALUES ('225', '贵港市', '450800000000', '450000000000');
INSERT INTO `cities` VALUES ('226', '玉林市', '450900000000', '450000000000');
INSERT INTO `cities` VALUES ('227', '百色市', '451000000000', '450000000000');
INSERT INTO `cities` VALUES ('228', '贺州市', '451100000000', '450000000000');
INSERT INTO `cities` VALUES ('229', '河池市', '451200000000', '450000000000');
INSERT INTO `cities` VALUES ('230', '来宾市', '451300000000', '450000000000');
INSERT INTO `cities` VALUES ('231', '崇左市', '451400000000', '450000000000');
INSERT INTO `cities` VALUES ('232', '海口市', '460100000000', '460000000000');
INSERT INTO `cities` VALUES ('233', '三亚市', '460200000000', '460000000000');
INSERT INTO `cities` VALUES ('234', '三沙市', '460300000000', '460000000000');
INSERT INTO `cities` VALUES ('235', '儋州市', '460400000000', '460000000000');
INSERT INTO `cities` VALUES ('236', '省直辖县级行政区划', '469000000000', '460000000000');
INSERT INTO `cities` VALUES ('237', '市辖区', '500100000000', '500000000000');
INSERT INTO `cities` VALUES ('238', '县', '500200000000', '500000000000');
INSERT INTO `cities` VALUES ('239', '成都市', '510100000000', '510000000000');
INSERT INTO `cities` VALUES ('240', '自贡市', '510300000000', '510000000000');
INSERT INTO `cities` VALUES ('241', '攀枝花市', '510400000000', '510000000000');
INSERT INTO `cities` VALUES ('242', '泸州市', '510500000000', '510000000000');
INSERT INTO `cities` VALUES ('243', '德阳市', '510600000000', '510000000000');
INSERT INTO `cities` VALUES ('244', '绵阳市', '510700000000', '510000000000');
INSERT INTO `cities` VALUES ('245', '广元市', '510800000000', '510000000000');
INSERT INTO `cities` VALUES ('246', '遂宁市', '510900000000', '510000000000');
INSERT INTO `cities` VALUES ('247', '内江市', '511000000000', '510000000000');
INSERT INTO `cities` VALUES ('248', '乐山市', '511100000000', '510000000000');
INSERT INTO `cities` VALUES ('249', '南充市', '511300000000', '510000000000');
INSERT INTO `cities` VALUES ('250', '眉山市', '511400000000', '510000000000');
INSERT INTO `cities` VALUES ('251', '宜宾市', '511500000000', '510000000000');
INSERT INTO `cities` VALUES ('252', '广安市', '511600000000', '510000000000');
INSERT INTO `cities` VALUES ('253', '达州市', '511700000000', '510000000000');
INSERT INTO `cities` VALUES ('254', '雅安市', '511800000000', '510000000000');
INSERT INTO `cities` VALUES ('255', '巴中市', '511900000000', '510000000000');
INSERT INTO `cities` VALUES ('256', '资阳市', '512000000000', '510000000000');
INSERT INTO `cities` VALUES ('257', '阿坝藏族羌族自治州', '513200000000', '510000000000');
INSERT INTO `cities` VALUES ('258', '甘孜藏族自治州', '513300000000', '510000000000');
INSERT INTO `cities` VALUES ('259', '凉山彝族自治州', '513400000000', '510000000000');
INSERT INTO `cities` VALUES ('260', '贵阳市', '520100000000', '520000000000');
INSERT INTO `cities` VALUES ('261', '六盘水市', '520200000000', '520000000000');
INSERT INTO `cities` VALUES ('262', '遵义市', '520300000000', '520000000000');
INSERT INTO `cities` VALUES ('263', '安顺市', '520400000000', '520000000000');
INSERT INTO `cities` VALUES ('264', '毕节市', '520500000000', '520000000000');
INSERT INTO `cities` VALUES ('265', '铜仁市', '520600000000', '520000000000');
INSERT INTO `cities` VALUES ('266', '黔西南布依族苗族自治州', '522300000000', '520000000000');
INSERT INTO `cities` VALUES ('267', '黔东南苗族侗族自治州', '522600000000', '520000000000');
INSERT INTO `cities` VALUES ('268', '黔南布依族苗族自治州', '522700000000', '520000000000');
INSERT INTO `cities` VALUES ('269', '昆明市', '530100000000', '530000000000');
INSERT INTO `cities` VALUES ('270', '曲靖市', '530300000000', '530000000000');
INSERT INTO `cities` VALUES ('271', '玉溪市', '530400000000', '530000000000');
INSERT INTO `cities` VALUES ('272', '保山市', '530500000000', '530000000000');
INSERT INTO `cities` VALUES ('273', '昭通市', '530600000000', '530000000000');
INSERT INTO `cities` VALUES ('274', '丽江市', '530700000000', '530000000000');
INSERT INTO `cities` VALUES ('275', '普洱市', '530800000000', '530000000000');
INSERT INTO `cities` VALUES ('276', '临沧市', '530900000000', '530000000000');
INSERT INTO `cities` VALUES ('277', '楚雄彝族自治州', '532300000000', '530000000000');
INSERT INTO `cities` VALUES ('278', '红河哈尼族彝族自治州', '532500000000', '530000000000');
INSERT INTO `cities` VALUES ('279', '文山壮族苗族自治州', '532600000000', '530000000000');
INSERT INTO `cities` VALUES ('280', '西双版纳傣族自治州', '532800000000', '530000000000');
INSERT INTO `cities` VALUES ('281', '大理白族自治州', '532900000000', '530000000000');
INSERT INTO `cities` VALUES ('282', '德宏傣族景颇族自治州', '533100000000', '530000000000');
INSERT INTO `cities` VALUES ('283', '怒江傈僳族自治州', '533300000000', '530000000000');
INSERT INTO `cities` VALUES ('284', '迪庆藏族自治州', '533400000000', '530000000000');
INSERT INTO `cities` VALUES ('285', '拉萨市', '540100000000', '540000000000');
INSERT INTO `cities` VALUES ('286', '日喀则市', '540200000000', '540000000000');
INSERT INTO `cities` VALUES ('287', '昌都市', '540300000000', '540000000000');
INSERT INTO `cities` VALUES ('288', '林芝市', '540400000000', '540000000000');
INSERT INTO `cities` VALUES ('289', '山南市', '540500000000', '540000000000');
INSERT INTO `cities` VALUES ('290', '那曲市', '540600000000', '540000000000');
INSERT INTO `cities` VALUES ('291', '阿里地区', '542500000000', '540000000000');
INSERT INTO `cities` VALUES ('292', '西安市', '610100000000', '610000000000');
INSERT INTO `cities` VALUES ('293', '铜川市', '610200000000', '610000000000');
INSERT INTO `cities` VALUES ('294', '宝鸡市', '610300000000', '610000000000');
INSERT INTO `cities` VALUES ('295', '咸阳市', '610400000000', '610000000000');
INSERT INTO `cities` VALUES ('296', '渭南市', '610500000000', '610000000000');
INSERT INTO `cities` VALUES ('297', '延安市', '610600000000', '610000000000');
INSERT INTO `cities` VALUES ('298', '汉中市', '610700000000', '610000000000');
INSERT INTO `cities` VALUES ('299', '榆林市', '610800000000', '610000000000');
INSERT INTO `cities` VALUES ('300', '安康市', '610900000000', '610000000000');
INSERT INTO `cities` VALUES ('301', '商洛市', '611000000000', '610000000000');
INSERT INTO `cities` VALUES ('302', '兰州市', '620100000000', '620000000000');
INSERT INTO `cities` VALUES ('303', '嘉峪关市', '620200000000', '620000000000');
INSERT INTO `cities` VALUES ('304', '金昌市', '620300000000', '620000000000');
INSERT INTO `cities` VALUES ('305', '白银市', '620400000000', '620000000000');
INSERT INTO `cities` VALUES ('306', '天水市', '620500000000', '620000000000');
INSERT INTO `cities` VALUES ('307', '武威市', '620600000000', '620000000000');
INSERT INTO `cities` VALUES ('308', '张掖市', '620700000000', '620000000000');
INSERT INTO `cities` VALUES ('309', '平凉市', '620800000000', '620000000000');
INSERT INTO `cities` VALUES ('310', '酒泉市', '620900000000', '620000000000');
INSERT INTO `cities` VALUES ('311', '庆阳市', '621000000000', '620000000000');
INSERT INTO `cities` VALUES ('312', '定西市', '621100000000', '620000000000');
INSERT INTO `cities` VALUES ('313', '陇南市', '621200000000', '620000000000');
INSERT INTO `cities` VALUES ('314', '临夏回族自治州', '622900000000', '620000000000');
INSERT INTO `cities` VALUES ('315', '甘南藏族自治州', '623000000000', '620000000000');
INSERT INTO `cities` VALUES ('316', '西宁市', '630100000000', '630000000000');
INSERT INTO `cities` VALUES ('317', '海东市', '630200000000', '630000000000');
INSERT INTO `cities` VALUES ('318', '海北藏族自治州', '632200000000', '630000000000');
INSERT INTO `cities` VALUES ('319', '黄南藏族自治州', '632300000000', '630000000000');
INSERT INTO `cities` VALUES ('320', '海南藏族自治州', '632500000000', '630000000000');
INSERT INTO `cities` VALUES ('321', '果洛藏族自治州', '632600000000', '630000000000');
INSERT INTO `cities` VALUES ('322', '玉树藏族自治州', '632700000000', '630000000000');
INSERT INTO `cities` VALUES ('323', '海西蒙古族藏族自治州', '632800000000', '630000000000');
INSERT INTO `cities` VALUES ('324', '银川市', '640100000000', '640000000000');
INSERT INTO `cities` VALUES ('325', '石嘴山市', '640200000000', '640000000000');
INSERT INTO `cities` VALUES ('326', '吴忠市', '640300000000', '640000000000');
INSERT INTO `cities` VALUES ('327', '固原市', '640400000000', '640000000000');
INSERT INTO `cities` VALUES ('328', '中卫市', '640500000000', '640000000000');
INSERT INTO `cities` VALUES ('329', '乌鲁木齐市', '650100000000', '650000000000');
INSERT INTO `cities` VALUES ('330', '克拉玛依市', '650200000000', '650000000000');
INSERT INTO `cities` VALUES ('331', '吐鲁番市', '650400000000', '650000000000');
INSERT INTO `cities` VALUES ('332', '哈密市', '650500000000', '650000000000');
INSERT INTO `cities` VALUES ('333', '昌吉回族自治州', '652300000000', '650000000000');
INSERT INTO `cities` VALUES ('334', '博尔塔拉蒙古自治州', '652700000000', '650000000000');
INSERT INTO `cities` VALUES ('335', '巴音郭楞蒙古自治州', '652800000000', '650000000000');
INSERT INTO `cities` VALUES ('336', '阿克苏地区', '652900000000', '650000000000');
INSERT INTO `cities` VALUES ('337', '克孜勒苏柯尔克孜自治州', '653000000000', '650000000000');
INSERT INTO `cities` VALUES ('338', '喀什地区', '653100000000', '650000000000');
INSERT INTO `cities` VALUES ('339', '和田地区', '653200000000', '650000000000');
INSERT INTO `cities` VALUES ('340', '伊犁哈萨克自治州', '654000000000', '650000000000');
INSERT INTO `cities` VALUES ('341', '塔城地区', '654200000000', '650000000000');
INSERT INTO `cities` VALUES ('342', '阿勒泰地区', '654300000000', '650000000000');
INSERT INTO `cities` VALUES ('343', '自治区直辖县级行政区划', '659000000000', '650000000000');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `country_id` varchar(12) DEFAULT NULL,
  `city_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', '东城区', '110101000000', '110100000000');
INSERT INTO `countries` VALUES ('2', '西城区', '110102000000', '110100000000');
INSERT INTO `countries` VALUES ('3', '朝阳区', '110105000000', '110100000000');
INSERT INTO `countries` VALUES ('4', '丰台区', '110106000000', '110100000000');
INSERT INTO `countries` VALUES ('5', '石景山区', '110107000000', '110100000000');
INSERT INTO `countries` VALUES ('6', '海淀区', '110108000000', '110100000000');
INSERT INTO `countries` VALUES ('7', '门头沟区', '110109000000', '110100000000');
INSERT INTO `countries` VALUES ('8', '房山区', '110111000000', '110100000000');
INSERT INTO `countries` VALUES ('9', '通州区', '110112000000', '110100000000');
INSERT INTO `countries` VALUES ('10', '顺义区', '110113000000', '110100000000');
INSERT INTO `countries` VALUES ('11', '昌平区', '110114000000', '110100000000');
INSERT INTO `countries` VALUES ('12', '大兴区', '110115000000', '110100000000');
INSERT INTO `countries` VALUES ('13', '怀柔区', '110116000000', '110100000000');
INSERT INTO `countries` VALUES ('14', '平谷区', '110117000000', '110100000000');
INSERT INTO `countries` VALUES ('15', '密云区', '110118000000', '110100000000');
INSERT INTO `countries` VALUES ('16', '延庆区', '110119000000', '110100000000');
INSERT INTO `countries` VALUES ('17', '和平区', '120101000000', '120100000000');
INSERT INTO `countries` VALUES ('18', '河东区', '120102000000', '120100000000');
INSERT INTO `countries` VALUES ('19', '河西区', '120103000000', '120100000000');
INSERT INTO `countries` VALUES ('20', '南开区', '120104000000', '120100000000');
INSERT INTO `countries` VALUES ('21', '河北区', '120105000000', '120100000000');
INSERT INTO `countries` VALUES ('22', '红桥区', '120106000000', '120100000000');
INSERT INTO `countries` VALUES ('23', '东丽区', '120110000000', '120100000000');
INSERT INTO `countries` VALUES ('24', '西青区', '120111000000', '120100000000');
INSERT INTO `countries` VALUES ('25', '津南区', '120112000000', '120100000000');
INSERT INTO `countries` VALUES ('26', '北辰区', '120113000000', '120100000000');
INSERT INTO `countries` VALUES ('27', '武清区', '120114000000', '120100000000');
INSERT INTO `countries` VALUES ('28', '宝坻区', '120115000000', '120100000000');
INSERT INTO `countries` VALUES ('29', '滨海新区', '120116000000', '120100000000');
INSERT INTO `countries` VALUES ('30', '宁河区', '120117000000', '120100000000');
INSERT INTO `countries` VALUES ('31', '静海区', '120118000000', '120100000000');
INSERT INTO `countries` VALUES ('32', '蓟州区', '120119000000', '120100000000');
INSERT INTO `countries` VALUES ('33', '市辖区', '130101000000', '130100000000');
INSERT INTO `countries` VALUES ('34', '长安区', '130102000000', '130100000000');
INSERT INTO `countries` VALUES ('35', '桥西区', '130104000000', '130100000000');
INSERT INTO `countries` VALUES ('36', '新华区', '130105000000', '130100000000');
INSERT INTO `countries` VALUES ('37', '井陉矿区', '130107000000', '130100000000');
INSERT INTO `countries` VALUES ('38', '裕华区', '130108000000', '130100000000');
INSERT INTO `countries` VALUES ('39', '藁城区', '130109000000', '130100000000');
INSERT INTO `countries` VALUES ('40', '鹿泉区', '130110000000', '130100000000');
INSERT INTO `countries` VALUES ('41', '栾城区', '130111000000', '130100000000');
INSERT INTO `countries` VALUES ('42', '井陉县', '130121000000', '130100000000');
INSERT INTO `countries` VALUES ('43', '正定县', '130123000000', '130100000000');
INSERT INTO `countries` VALUES ('44', '行唐县', '130125000000', '130100000000');
INSERT INTO `countries` VALUES ('45', '灵寿县', '130126000000', '130100000000');
INSERT INTO `countries` VALUES ('46', '高邑县', '130127000000', '130100000000');
INSERT INTO `countries` VALUES ('47', '深泽县', '130128000000', '130100000000');
INSERT INTO `countries` VALUES ('48', '赞皇县', '130129000000', '130100000000');
INSERT INTO `countries` VALUES ('49', '无极县', '130130000000', '130100000000');
INSERT INTO `countries` VALUES ('50', '平山县', '130131000000', '130100000000');
INSERT INTO `countries` VALUES ('51', '元氏县', '130132000000', '130100000000');
INSERT INTO `countries` VALUES ('52', '赵县', '130133000000', '130100000000');
INSERT INTO `countries` VALUES ('53', '石家庄高新技术产业开发区', '130171000000', '130100000000');
INSERT INTO `countries` VALUES ('54', '石家庄循环化工园区', '130172000000', '130100000000');
INSERT INTO `countries` VALUES ('55', '辛集市', '130181000000', '130100000000');
INSERT INTO `countries` VALUES ('56', '晋州市', '130183000000', '130100000000');
INSERT INTO `countries` VALUES ('57', '新乐市', '130184000000', '130100000000');
INSERT INTO `countries` VALUES ('58', '市辖区', '130201000000', '130200000000');
INSERT INTO `countries` VALUES ('59', '路南区', '130202000000', '130200000000');
INSERT INTO `countries` VALUES ('60', '路北区', '130203000000', '130200000000');
INSERT INTO `countries` VALUES ('61', '古冶区', '130204000000', '130200000000');
INSERT INTO `countries` VALUES ('62', '开平区', '130205000000', '130200000000');
INSERT INTO `countries` VALUES ('63', '丰南区', '130207000000', '130200000000');
INSERT INTO `countries` VALUES ('64', '丰润区', '130208000000', '130200000000');
INSERT INTO `countries` VALUES ('65', '曹妃甸区', '130209000000', '130200000000');
INSERT INTO `countries` VALUES ('66', '滦南县', '130224000000', '130200000000');
INSERT INTO `countries` VALUES ('67', '乐亭县', '130225000000', '130200000000');
INSERT INTO `countries` VALUES ('68', '迁西县', '130227000000', '130200000000');
INSERT INTO `countries` VALUES ('69', '玉田县', '130229000000', '130200000000');
INSERT INTO `countries` VALUES ('70', '唐山市芦台经济技术开发区', '130271000000', '130200000000');
INSERT INTO `countries` VALUES ('71', '唐山市汉沽管理区', '130272000000', '130200000000');
INSERT INTO `countries` VALUES ('72', '唐山高新技术产业开发区', '130273000000', '130200000000');
INSERT INTO `countries` VALUES ('73', '河北唐山海港经济开发区', '130274000000', '130200000000');
INSERT INTO `countries` VALUES ('74', '遵化市', '130281000000', '130200000000');
INSERT INTO `countries` VALUES ('75', '迁安市', '130283000000', '130200000000');
INSERT INTO `countries` VALUES ('76', '滦州市', '130284000000', '130200000000');
INSERT INTO `countries` VALUES ('77', '市辖区', '130301000000', '130300000000');
INSERT INTO `countries` VALUES ('78', '海港区', '130302000000', '130300000000');
INSERT INTO `countries` VALUES ('79', '山海关区', '130303000000', '130300000000');
INSERT INTO `countries` VALUES ('80', '北戴河区', '130304000000', '130300000000');
INSERT INTO `countries` VALUES ('81', '抚宁区', '130306000000', '130300000000');
INSERT INTO `countries` VALUES ('82', '青龙满族自治县', '130321000000', '130300000000');
INSERT INTO `countries` VALUES ('83', '昌黎县', '130322000000', '130300000000');
INSERT INTO `countries` VALUES ('84', '卢龙县', '130324000000', '130300000000');
INSERT INTO `countries` VALUES ('85', '秦皇岛市经济技术开发区', '130371000000', '130300000000');
INSERT INTO `countries` VALUES ('86', '北戴河新区', '130372000000', '130300000000');
INSERT INTO `countries` VALUES ('87', '市辖区', '130401000000', '130400000000');
INSERT INTO `countries` VALUES ('88', '邯山区', '130402000000', '130400000000');
INSERT INTO `countries` VALUES ('89', '丛台区', '130403000000', '130400000000');
INSERT INTO `countries` VALUES ('90', '复兴区', '130404000000', '130400000000');
INSERT INTO `countries` VALUES ('91', '峰峰矿区', '130406000000', '130400000000');
INSERT INTO `countries` VALUES ('92', '肥乡区', '130407000000', '130400000000');
INSERT INTO `countries` VALUES ('93', '永年区', '130408000000', '130400000000');
INSERT INTO `countries` VALUES ('94', '临漳县', '130423000000', '130400000000');
INSERT INTO `countries` VALUES ('95', '成安县', '130424000000', '130400000000');
INSERT INTO `countries` VALUES ('96', '大名县', '130425000000', '130400000000');
INSERT INTO `countries` VALUES ('97', '涉县', '130426000000', '130400000000');
INSERT INTO `countries` VALUES ('98', '磁县', '130427000000', '130400000000');
INSERT INTO `countries` VALUES ('99', '邱县', '130430000000', '130400000000');
INSERT INTO `countries` VALUES ('100', '鸡泽县', '130431000000', '130400000000');
INSERT INTO `countries` VALUES ('101', '广平县', '130432000000', '130400000000');
INSERT INTO `countries` VALUES ('102', '馆陶县', '130433000000', '130400000000');
INSERT INTO `countries` VALUES ('103', '魏县', '130434000000', '130400000000');
INSERT INTO `countries` VALUES ('104', '曲周县', '130435000000', '130400000000');
INSERT INTO `countries` VALUES ('105', '邯郸经济技术开发区', '130471000000', '130400000000');
INSERT INTO `countries` VALUES ('106', '邯郸冀南新区', '130473000000', '130400000000');
INSERT INTO `countries` VALUES ('107', '武安市', '130481000000', '130400000000');
INSERT INTO `countries` VALUES ('108', '市辖区', '130501000000', '130500000000');
INSERT INTO `countries` VALUES ('109', '桥东区', '130502000000', '130500000000');
INSERT INTO `countries` VALUES ('110', '桥西区', '130503000000', '130500000000');
INSERT INTO `countries` VALUES ('111', '邢台县', '130521000000', '130500000000');
INSERT INTO `countries` VALUES ('112', '临城县', '130522000000', '130500000000');
INSERT INTO `countries` VALUES ('113', '内丘县', '130523000000', '130500000000');
INSERT INTO `countries` VALUES ('114', '柏乡县', '130524000000', '130500000000');
INSERT INTO `countries` VALUES ('115', '隆尧县', '130525000000', '130500000000');
INSERT INTO `countries` VALUES ('116', '任县', '130526000000', '130500000000');
INSERT INTO `countries` VALUES ('117', '南和县', '130527000000', '130500000000');
INSERT INTO `countries` VALUES ('118', '宁晋县', '130528000000', '130500000000');
INSERT INTO `countries` VALUES ('119', '巨鹿县', '130529000000', '130500000000');
INSERT INTO `countries` VALUES ('120', '新河县', '130530000000', '130500000000');
INSERT INTO `countries` VALUES ('121', '广宗县', '130531000000', '130500000000');
INSERT INTO `countries` VALUES ('122', '平乡县', '130532000000', '130500000000');
INSERT INTO `countries` VALUES ('123', '威县', '130533000000', '130500000000');
INSERT INTO `countries` VALUES ('124', '清河县', '130534000000', '130500000000');
INSERT INTO `countries` VALUES ('125', '临西县', '130535000000', '130500000000');
INSERT INTO `countries` VALUES ('126', '河北邢台经济开发区', '130571000000', '130500000000');
INSERT INTO `countries` VALUES ('127', '南宫市', '130581000000', '130500000000');
INSERT INTO `countries` VALUES ('128', '沙河市', '130582000000', '130500000000');
INSERT INTO `countries` VALUES ('129', '市辖区', '130601000000', '130600000000');
INSERT INTO `countries` VALUES ('130', '竞秀区', '130602000000', '130600000000');
INSERT INTO `countries` VALUES ('131', '莲池区', '130606000000', '130600000000');
INSERT INTO `countries` VALUES ('132', '满城区', '130607000000', '130600000000');
INSERT INTO `countries` VALUES ('133', '清苑区', '130608000000', '130600000000');
INSERT INTO `countries` VALUES ('134', '徐水区', '130609000000', '130600000000');
INSERT INTO `countries` VALUES ('135', '涞水县', '130623000000', '130600000000');
INSERT INTO `countries` VALUES ('136', '阜平县', '130624000000', '130600000000');
INSERT INTO `countries` VALUES ('137', '定兴县', '130626000000', '130600000000');
INSERT INTO `countries` VALUES ('138', '唐县', '130627000000', '130600000000');
INSERT INTO `countries` VALUES ('139', '高阳县', '130628000000', '130600000000');
INSERT INTO `countries` VALUES ('140', '容城县', '130629000000', '130600000000');
INSERT INTO `countries` VALUES ('141', '涞源县', '130630000000', '130600000000');
INSERT INTO `countries` VALUES ('142', '望都县', '130631000000', '130600000000');
INSERT INTO `countries` VALUES ('143', '安新县', '130632000000', '130600000000');
INSERT INTO `countries` VALUES ('144', '易县', '130633000000', '130600000000');
INSERT INTO `countries` VALUES ('145', '曲阳县', '130634000000', '130600000000');
INSERT INTO `countries` VALUES ('146', '蠡县', '130635000000', '130600000000');
INSERT INTO `countries` VALUES ('147', '顺平县', '130636000000', '130600000000');
INSERT INTO `countries` VALUES ('148', '博野县', '130637000000', '130600000000');
INSERT INTO `countries` VALUES ('149', '雄县', '130638000000', '130600000000');
INSERT INTO `countries` VALUES ('150', '保定高新技术产业开发区', '130671000000', '130600000000');
INSERT INTO `countries` VALUES ('151', '保定白沟新城', '130672000000', '130600000000');
INSERT INTO `countries` VALUES ('152', '涿州市', '130681000000', '130600000000');
INSERT INTO `countries` VALUES ('153', '定州市', '130682000000', '130600000000');
INSERT INTO `countries` VALUES ('154', '安国市', '130683000000', '130600000000');
INSERT INTO `countries` VALUES ('155', '高碑店市', '130684000000', '130600000000');
INSERT INTO `countries` VALUES ('156', '市辖区', '130701000000', '130700000000');
INSERT INTO `countries` VALUES ('157', '桥东区', '130702000000', '130700000000');
INSERT INTO `countries` VALUES ('158', '桥西区', '130703000000', '130700000000');
INSERT INTO `countries` VALUES ('159', '宣化区', '130705000000', '130700000000');
INSERT INTO `countries` VALUES ('160', '下花园区', '130706000000', '130700000000');
INSERT INTO `countries` VALUES ('161', '万全区', '130708000000', '130700000000');
INSERT INTO `countries` VALUES ('162', '崇礼区', '130709000000', '130700000000');
INSERT INTO `countries` VALUES ('163', '张北县', '130722000000', '130700000000');
INSERT INTO `countries` VALUES ('164', '康保县', '130723000000', '130700000000');
INSERT INTO `countries` VALUES ('165', '沽源县', '130724000000', '130700000000');
INSERT INTO `countries` VALUES ('166', '尚义县', '130725000000', '130700000000');
INSERT INTO `countries` VALUES ('167', '蔚县', '130726000000', '130700000000');
INSERT INTO `countries` VALUES ('168', '阳原县', '130727000000', '130700000000');
INSERT INTO `countries` VALUES ('169', '怀安县', '130728000000', '130700000000');
INSERT INTO `countries` VALUES ('170', '怀来县', '130730000000', '130700000000');
INSERT INTO `countries` VALUES ('171', '涿鹿县', '130731000000', '130700000000');
INSERT INTO `countries` VALUES ('172', '赤城县', '130732000000', '130700000000');
INSERT INTO `countries` VALUES ('173', '张家口市高新技术产业开发区', '130771000000', '130700000000');
INSERT INTO `countries` VALUES ('174', '张家口市察北管理区', '130772000000', '130700000000');
INSERT INTO `countries` VALUES ('175', '张家口市塞北管理区', '130773000000', '130700000000');
INSERT INTO `countries` VALUES ('176', '市辖区', '130801000000', '130800000000');
INSERT INTO `countries` VALUES ('177', '双桥区', '130802000000', '130800000000');
INSERT INTO `countries` VALUES ('178', '双滦区', '130803000000', '130800000000');
INSERT INTO `countries` VALUES ('179', '鹰手营子矿区', '130804000000', '130800000000');
INSERT INTO `countries` VALUES ('180', '承德县', '130821000000', '130800000000');
INSERT INTO `countries` VALUES ('181', '兴隆县', '130822000000', '130800000000');
INSERT INTO `countries` VALUES ('182', '滦平县', '130824000000', '130800000000');
INSERT INTO `countries` VALUES ('183', '隆化县', '130825000000', '130800000000');
INSERT INTO `countries` VALUES ('184', '丰宁满族自治县', '130826000000', '130800000000');
INSERT INTO `countries` VALUES ('185', '宽城满族自治县', '130827000000', '130800000000');
INSERT INTO `countries` VALUES ('186', '围场满族蒙古族自治县', '130828000000', '130800000000');
INSERT INTO `countries` VALUES ('187', '承德高新技术产业开发区', '130871000000', '130800000000');
INSERT INTO `countries` VALUES ('188', '平泉市', '130881000000', '130800000000');
INSERT INTO `countries` VALUES ('189', '市辖区', '130901000000', '130900000000');
INSERT INTO `countries` VALUES ('190', '新华区', '130902000000', '130900000000');
INSERT INTO `countries` VALUES ('191', '运河区', '130903000000', '130900000000');
INSERT INTO `countries` VALUES ('192', '沧县', '130921000000', '130900000000');
INSERT INTO `countries` VALUES ('193', '青县', '130922000000', '130900000000');
INSERT INTO `countries` VALUES ('194', '东光县', '130923000000', '130900000000');
INSERT INTO `countries` VALUES ('195', '海兴县', '130924000000', '130900000000');
INSERT INTO `countries` VALUES ('196', '盐山县', '130925000000', '130900000000');
INSERT INTO `countries` VALUES ('197', '肃宁县', '130926000000', '130900000000');
INSERT INTO `countries` VALUES ('198', '南皮县', '130927000000', '130900000000');
INSERT INTO `countries` VALUES ('199', '吴桥县', '130928000000', '130900000000');
INSERT INTO `countries` VALUES ('200', '献县', '130929000000', '130900000000');
INSERT INTO `countries` VALUES ('201', '孟村回族自治县', '130930000000', '130900000000');
INSERT INTO `countries` VALUES ('202', '河北沧州经济开发区', '130971000000', '130900000000');
INSERT INTO `countries` VALUES ('203', '沧州高新技术产业开发区', '130972000000', '130900000000');
INSERT INTO `countries` VALUES ('204', '沧州渤海新区', '130973000000', '130900000000');
INSERT INTO `countries` VALUES ('205', '泊头市', '130981000000', '130900000000');
INSERT INTO `countries` VALUES ('206', '任丘市', '130982000000', '130900000000');
INSERT INTO `countries` VALUES ('207', '黄骅市', '130983000000', '130900000000');
INSERT INTO `countries` VALUES ('208', '河间市', '130984000000', '130900000000');
INSERT INTO `countries` VALUES ('209', '市辖区', '131001000000', '131000000000');
INSERT INTO `countries` VALUES ('210', '安次区', '131002000000', '131000000000');
INSERT INTO `countries` VALUES ('211', '广阳区', '131003000000', '131000000000');
INSERT INTO `countries` VALUES ('212', '固安县', '131022000000', '131000000000');
INSERT INTO `countries` VALUES ('213', '永清县', '131023000000', '131000000000');
INSERT INTO `countries` VALUES ('214', '香河县', '131024000000', '131000000000');
INSERT INTO `countries` VALUES ('215', '大城县', '131025000000', '131000000000');
INSERT INTO `countries` VALUES ('216', '文安县', '131026000000', '131000000000');
INSERT INTO `countries` VALUES ('217', '大厂回族自治县', '131028000000', '131000000000');
INSERT INTO `countries` VALUES ('218', '廊坊经济技术开发区', '131071000000', '131000000000');
INSERT INTO `countries` VALUES ('219', '霸州市', '131081000000', '131000000000');
INSERT INTO `countries` VALUES ('220', '三河市', '131082000000', '131000000000');
INSERT INTO `countries` VALUES ('221', '市辖区', '131101000000', '131100000000');
INSERT INTO `countries` VALUES ('222', '桃城区', '131102000000', '131100000000');
INSERT INTO `countries` VALUES ('223', '冀州区', '131103000000', '131100000000');
INSERT INTO `countries` VALUES ('224', '枣强县', '131121000000', '131100000000');
INSERT INTO `countries` VALUES ('225', '武邑县', '131122000000', '131100000000');
INSERT INTO `countries` VALUES ('226', '武强县', '131123000000', '131100000000');
INSERT INTO `countries` VALUES ('227', '饶阳县', '131124000000', '131100000000');
INSERT INTO `countries` VALUES ('228', '安平县', '131125000000', '131100000000');
INSERT INTO `countries` VALUES ('229', '故城县', '131126000000', '131100000000');
INSERT INTO `countries` VALUES ('230', '景县', '131127000000', '131100000000');
INSERT INTO `countries` VALUES ('231', '阜城县', '131128000000', '131100000000');
INSERT INTO `countries` VALUES ('232', '河北衡水高新技术产业开发区', '131171000000', '131100000000');
INSERT INTO `countries` VALUES ('233', '衡水滨湖新区', '131172000000', '131100000000');
INSERT INTO `countries` VALUES ('234', '深州市', '131182000000', '131100000000');
INSERT INTO `countries` VALUES ('235', '市辖区', '140101000000', '140100000000');
INSERT INTO `countries` VALUES ('236', '小店区', '140105000000', '140100000000');
INSERT INTO `countries` VALUES ('237', '迎泽区', '140106000000', '140100000000');
INSERT INTO `countries` VALUES ('238', '杏花岭区', '140107000000', '140100000000');
INSERT INTO `countries` VALUES ('239', '尖草坪区', '140108000000', '140100000000');
INSERT INTO `countries` VALUES ('240', '万柏林区', '140109000000', '140100000000');
INSERT INTO `countries` VALUES ('241', '晋源区', '140110000000', '140100000000');
INSERT INTO `countries` VALUES ('242', '清徐县', '140121000000', '140100000000');
INSERT INTO `countries` VALUES ('243', '阳曲县', '140122000000', '140100000000');
INSERT INTO `countries` VALUES ('244', '娄烦县', '140123000000', '140100000000');
INSERT INTO `countries` VALUES ('245', '山西转型综合改革示范区', '140171000000', '140100000000');
INSERT INTO `countries` VALUES ('246', '古交市', '140181000000', '140100000000');
INSERT INTO `countries` VALUES ('247', '市辖区', '140201000000', '140200000000');
INSERT INTO `countries` VALUES ('248', '新荣区', '140212000000', '140200000000');
INSERT INTO `countries` VALUES ('249', '平城区', '140213000000', '140200000000');
INSERT INTO `countries` VALUES ('250', '云冈区', '140214000000', '140200000000');
INSERT INTO `countries` VALUES ('251', '云州区', '140215000000', '140200000000');
INSERT INTO `countries` VALUES ('252', '阳高县', '140221000000', '140200000000');
INSERT INTO `countries` VALUES ('253', '天镇县', '140222000000', '140200000000');
INSERT INTO `countries` VALUES ('254', '广灵县', '140223000000', '140200000000');
INSERT INTO `countries` VALUES ('255', '灵丘县', '140224000000', '140200000000');
INSERT INTO `countries` VALUES ('256', '浑源县', '140225000000', '140200000000');
INSERT INTO `countries` VALUES ('257', '左云县', '140226000000', '140200000000');
INSERT INTO `countries` VALUES ('258', '山西大同经济开发区', '140271000000', '140200000000');
INSERT INTO `countries` VALUES ('259', '市辖区', '140301000000', '140300000000');
INSERT INTO `countries` VALUES ('260', '城区', '140302000000', '140300000000');
INSERT INTO `countries` VALUES ('261', '矿区', '140303000000', '140300000000');
INSERT INTO `countries` VALUES ('262', '郊区', '140311000000', '140300000000');
INSERT INTO `countries` VALUES ('263', '平定县', '140321000000', '140300000000');
INSERT INTO `countries` VALUES ('264', '盂县', '140322000000', '140300000000');
INSERT INTO `countries` VALUES ('265', '市辖区', '140401000000', '140400000000');
INSERT INTO `countries` VALUES ('266', '潞州区', '140412000000', '140400000000');
INSERT INTO `countries` VALUES ('267', '上党区', '140413000000', '140400000000');
INSERT INTO `countries` VALUES ('268', '屯留区', '140414000000', '140400000000');
INSERT INTO `countries` VALUES ('269', '潞城区', '140415000000', '140400000000');
INSERT INTO `countries` VALUES ('270', '襄垣县', '140423000000', '140400000000');
INSERT INTO `countries` VALUES ('271', '平顺县', '140425000000', '140400000000');
INSERT INTO `countries` VALUES ('272', '黎城县', '140426000000', '140400000000');
INSERT INTO `countries` VALUES ('273', '壶关县', '140427000000', '140400000000');
INSERT INTO `countries` VALUES ('274', '长子县', '140428000000', '140400000000');
INSERT INTO `countries` VALUES ('275', '武乡县', '140429000000', '140400000000');
INSERT INTO `countries` VALUES ('276', '沁县', '140430000000', '140400000000');
INSERT INTO `countries` VALUES ('277', '沁源县', '140431000000', '140400000000');
INSERT INTO `countries` VALUES ('278', '山西长治高新技术产业园区', '140471000000', '140400000000');
INSERT INTO `countries` VALUES ('279', '市辖区', '140501000000', '140500000000');
INSERT INTO `countries` VALUES ('280', '城区', '140502000000', '140500000000');
INSERT INTO `countries` VALUES ('281', '沁水县', '140521000000', '140500000000');
INSERT INTO `countries` VALUES ('282', '阳城县', '140522000000', '140500000000');
INSERT INTO `countries` VALUES ('283', '陵川县', '140524000000', '140500000000');
INSERT INTO `countries` VALUES ('284', '泽州县', '140525000000', '140500000000');
INSERT INTO `countries` VALUES ('285', '高平市', '140581000000', '140500000000');
INSERT INTO `countries` VALUES ('286', '市辖区', '140601000000', '140600000000');
INSERT INTO `countries` VALUES ('287', '朔城区', '140602000000', '140600000000');
INSERT INTO `countries` VALUES ('288', '平鲁区', '140603000000', '140600000000');
INSERT INTO `countries` VALUES ('289', '山阴县', '140621000000', '140600000000');
INSERT INTO `countries` VALUES ('290', '应县', '140622000000', '140600000000');
INSERT INTO `countries` VALUES ('291', '右玉县', '140623000000', '140600000000');
INSERT INTO `countries` VALUES ('292', '山西朔州经济开发区', '140671000000', '140600000000');
INSERT INTO `countries` VALUES ('293', '怀仁市', '140681000000', '140600000000');
INSERT INTO `countries` VALUES ('294', '市辖区', '140701000000', '140700000000');
INSERT INTO `countries` VALUES ('295', '榆次区', '140702000000', '140700000000');
INSERT INTO `countries` VALUES ('296', '榆社县', '140721000000', '140700000000');
INSERT INTO `countries` VALUES ('297', '左权县', '140722000000', '140700000000');
INSERT INTO `countries` VALUES ('298', '和顺县', '140723000000', '140700000000');
INSERT INTO `countries` VALUES ('299', '昔阳县', '140724000000', '140700000000');
INSERT INTO `countries` VALUES ('300', '寿阳县', '140725000000', '140700000000');
INSERT INTO `countries` VALUES ('301', '太谷县', '140726000000', '140700000000');
INSERT INTO `countries` VALUES ('302', '祁县', '140727000000', '140700000000');
INSERT INTO `countries` VALUES ('303', '平遥县', '140728000000', '140700000000');
INSERT INTO `countries` VALUES ('304', '灵石县', '140729000000', '140700000000');
INSERT INTO `countries` VALUES ('305', '介休市', '140781000000', '140700000000');
INSERT INTO `countries` VALUES ('306', '市辖区', '140801000000', '140800000000');
INSERT INTO `countries` VALUES ('307', '盐湖区', '140802000000', '140800000000');
INSERT INTO `countries` VALUES ('308', '临猗县', '140821000000', '140800000000');
INSERT INTO `countries` VALUES ('309', '万荣县', '140822000000', '140800000000');
INSERT INTO `countries` VALUES ('310', '闻喜县', '140823000000', '140800000000');
INSERT INTO `countries` VALUES ('311', '稷山县', '140824000000', '140800000000');
INSERT INTO `countries` VALUES ('312', '新绛县', '140825000000', '140800000000');
INSERT INTO `countries` VALUES ('313', '绛县', '140826000000', '140800000000');
INSERT INTO `countries` VALUES ('314', '垣曲县', '140827000000', '140800000000');
INSERT INTO `countries` VALUES ('315', '夏县', '140828000000', '140800000000');
INSERT INTO `countries` VALUES ('316', '平陆县', '140829000000', '140800000000');
INSERT INTO `countries` VALUES ('317', '芮城县', '140830000000', '140800000000');
INSERT INTO `countries` VALUES ('318', '永济市', '140881000000', '140800000000');
INSERT INTO `countries` VALUES ('319', '河津市', '140882000000', '140800000000');
INSERT INTO `countries` VALUES ('320', '市辖区', '140901000000', '140900000000');
INSERT INTO `countries` VALUES ('321', '忻府区', '140902000000', '140900000000');
INSERT INTO `countries` VALUES ('322', '定襄县', '140921000000', '140900000000');
INSERT INTO `countries` VALUES ('323', '五台县', '140922000000', '140900000000');
INSERT INTO `countries` VALUES ('324', '代县', '140923000000', '140900000000');
INSERT INTO `countries` VALUES ('325', '繁峙县', '140924000000', '140900000000');
INSERT INTO `countries` VALUES ('326', '宁武县', '140925000000', '140900000000');
INSERT INTO `countries` VALUES ('327', '静乐县', '140926000000', '140900000000');
INSERT INTO `countries` VALUES ('328', '神池县', '140927000000', '140900000000');
INSERT INTO `countries` VALUES ('329', '五寨县', '140928000000', '140900000000');
INSERT INTO `countries` VALUES ('330', '岢岚县', '140929000000', '140900000000');
INSERT INTO `countries` VALUES ('331', '河曲县', '140930000000', '140900000000');
INSERT INTO `countries` VALUES ('332', '保德县', '140931000000', '140900000000');
INSERT INTO `countries` VALUES ('333', '偏关县', '140932000000', '140900000000');
INSERT INTO `countries` VALUES ('334', '五台山风景名胜区', '140971000000', '140900000000');
INSERT INTO `countries` VALUES ('335', '原平市', '140981000000', '140900000000');
INSERT INTO `countries` VALUES ('336', '市辖区', '141001000000', '141000000000');
INSERT INTO `countries` VALUES ('337', '尧都区', '141002000000', '141000000000');
INSERT INTO `countries` VALUES ('338', '曲沃县', '141021000000', '141000000000');
INSERT INTO `countries` VALUES ('339', '翼城县', '141022000000', '141000000000');
INSERT INTO `countries` VALUES ('340', '襄汾县', '141023000000', '141000000000');
INSERT INTO `countries` VALUES ('341', '洪洞县', '141024000000', '141000000000');
INSERT INTO `countries` VALUES ('342', '古县', '141025000000', '141000000000');
INSERT INTO `countries` VALUES ('343', '安泽县', '141026000000', '141000000000');
INSERT INTO `countries` VALUES ('344', '浮山县', '141027000000', '141000000000');
INSERT INTO `countries` VALUES ('345', '吉县', '141028000000', '141000000000');
INSERT INTO `countries` VALUES ('346', '乡宁县', '141029000000', '141000000000');
INSERT INTO `countries` VALUES ('347', '大宁县', '141030000000', '141000000000');
INSERT INTO `countries` VALUES ('348', '隰县', '141031000000', '141000000000');
INSERT INTO `countries` VALUES ('349', '永和县', '141032000000', '141000000000');
INSERT INTO `countries` VALUES ('350', '蒲县', '141033000000', '141000000000');
INSERT INTO `countries` VALUES ('351', '汾西县', '141034000000', '141000000000');
INSERT INTO `countries` VALUES ('352', '侯马市', '141081000000', '141000000000');
INSERT INTO `countries` VALUES ('353', '霍州市', '141082000000', '141000000000');
INSERT INTO `countries` VALUES ('354', '市辖区', '141101000000', '141100000000');
INSERT INTO `countries` VALUES ('355', '离石区', '141102000000', '141100000000');
INSERT INTO `countries` VALUES ('356', '文水县', '141121000000', '141100000000');
INSERT INTO `countries` VALUES ('357', '交城县', '141122000000', '141100000000');
INSERT INTO `countries` VALUES ('358', '兴县', '141123000000', '141100000000');
INSERT INTO `countries` VALUES ('359', '临县', '141124000000', '141100000000');
INSERT INTO `countries` VALUES ('360', '柳林县', '141125000000', '141100000000');
INSERT INTO `countries` VALUES ('361', '石楼县', '141126000000', '141100000000');
INSERT INTO `countries` VALUES ('362', '岚县', '141127000000', '141100000000');
INSERT INTO `countries` VALUES ('363', '方山县', '141128000000', '141100000000');
INSERT INTO `countries` VALUES ('364', '中阳县', '141129000000', '141100000000');
INSERT INTO `countries` VALUES ('365', '交口县', '141130000000', '141100000000');
INSERT INTO `countries` VALUES ('366', '孝义市', '141181000000', '141100000000');
INSERT INTO `countries` VALUES ('367', '汾阳市', '141182000000', '141100000000');
INSERT INTO `countries` VALUES ('368', '市辖区', '150101000000', '150100000000');
INSERT INTO `countries` VALUES ('369', '新城区', '150102000000', '150100000000');
INSERT INTO `countries` VALUES ('370', '回民区', '150103000000', '150100000000');
INSERT INTO `countries` VALUES ('371', '玉泉区', '150104000000', '150100000000');
INSERT INTO `countries` VALUES ('372', '赛罕区', '150105000000', '150100000000');
INSERT INTO `countries` VALUES ('373', '土默特左旗', '150121000000', '150100000000');
INSERT INTO `countries` VALUES ('374', '托克托县', '150122000000', '150100000000');
INSERT INTO `countries` VALUES ('375', '和林格尔县', '150123000000', '150100000000');
INSERT INTO `countries` VALUES ('376', '清水河县', '150124000000', '150100000000');
INSERT INTO `countries` VALUES ('377', '武川县', '150125000000', '150100000000');
INSERT INTO `countries` VALUES ('378', '呼和浩特金海工业园区', '150171000000', '150100000000');
INSERT INTO `countries` VALUES ('379', '呼和浩特经济技术开发区', '150172000000', '150100000000');
INSERT INTO `countries` VALUES ('380', '市辖区', '150201000000', '150200000000');
INSERT INTO `countries` VALUES ('381', '东河区', '150202000000', '150200000000');
INSERT INTO `countries` VALUES ('382', '昆都仑区', '150203000000', '150200000000');
INSERT INTO `countries` VALUES ('383', '青山区', '150204000000', '150200000000');
INSERT INTO `countries` VALUES ('384', '石拐区', '150205000000', '150200000000');
INSERT INTO `countries` VALUES ('385', '白云鄂博矿区', '150206000000', '150200000000');
INSERT INTO `countries` VALUES ('386', '九原区', '150207000000', '150200000000');
INSERT INTO `countries` VALUES ('387', '土默特右旗', '150221000000', '150200000000');
INSERT INTO `countries` VALUES ('388', '固阳县', '150222000000', '150200000000');
INSERT INTO `countries` VALUES ('389', '达尔罕茂明安联合旗', '150223000000', '150200000000');
INSERT INTO `countries` VALUES ('390', '包头稀土高新技术产业开发区', '150271000000', '150200000000');
INSERT INTO `countries` VALUES ('391', '市辖区', '150301000000', '150300000000');
INSERT INTO `countries` VALUES ('392', '海勃湾区', '150302000000', '150300000000');
INSERT INTO `countries` VALUES ('393', '海南区', '150303000000', '150300000000');
INSERT INTO `countries` VALUES ('394', '乌达区', '150304000000', '150300000000');
INSERT INTO `countries` VALUES ('395', '市辖区', '150401000000', '150400000000');
INSERT INTO `countries` VALUES ('396', '红山区', '150402000000', '150400000000');
INSERT INTO `countries` VALUES ('397', '元宝山区', '150403000000', '150400000000');
INSERT INTO `countries` VALUES ('398', '松山区', '150404000000', '150400000000');
INSERT INTO `countries` VALUES ('399', '阿鲁科尔沁旗', '150421000000', '150400000000');
INSERT INTO `countries` VALUES ('400', '巴林左旗', '150422000000', '150400000000');
INSERT INTO `countries` VALUES ('401', '巴林右旗', '150423000000', '150400000000');
INSERT INTO `countries` VALUES ('402', '林西县', '150424000000', '150400000000');
INSERT INTO `countries` VALUES ('403', '克什克腾旗', '150425000000', '150400000000');
INSERT INTO `countries` VALUES ('404', '翁牛特旗', '150426000000', '150400000000');
INSERT INTO `countries` VALUES ('405', '喀喇沁旗', '150428000000', '150400000000');
INSERT INTO `countries` VALUES ('406', '宁城县', '150429000000', '150400000000');
INSERT INTO `countries` VALUES ('407', '敖汉旗', '150430000000', '150400000000');
INSERT INTO `countries` VALUES ('408', '市辖区', '150501000000', '150500000000');
INSERT INTO `countries` VALUES ('409', '科尔沁区', '150502000000', '150500000000');
INSERT INTO `countries` VALUES ('410', '科尔沁左翼中旗', '150521000000', '150500000000');
INSERT INTO `countries` VALUES ('411', '科尔沁左翼后旗', '150522000000', '150500000000');
INSERT INTO `countries` VALUES ('412', '开鲁县', '150523000000', '150500000000');
INSERT INTO `countries` VALUES ('413', '库伦旗', '150524000000', '150500000000');
INSERT INTO `countries` VALUES ('414', '奈曼旗', '150525000000', '150500000000');
INSERT INTO `countries` VALUES ('415', '扎鲁特旗', '150526000000', '150500000000');
INSERT INTO `countries` VALUES ('416', '通辽经济技术开发区', '150571000000', '150500000000');
INSERT INTO `countries` VALUES ('417', '霍林郭勒市', '150581000000', '150500000000');
INSERT INTO `countries` VALUES ('418', '市辖区', '150601000000', '150600000000');
INSERT INTO `countries` VALUES ('419', '东胜区', '150602000000', '150600000000');
INSERT INTO `countries` VALUES ('420', '康巴什区', '150603000000', '150600000000');
INSERT INTO `countries` VALUES ('421', '达拉特旗', '150621000000', '150600000000');
INSERT INTO `countries` VALUES ('422', '准格尔旗', '150622000000', '150600000000');
INSERT INTO `countries` VALUES ('423', '鄂托克前旗', '150623000000', '150600000000');
INSERT INTO `countries` VALUES ('424', '鄂托克旗', '150624000000', '150600000000');
INSERT INTO `countries` VALUES ('425', '杭锦旗', '150625000000', '150600000000');
INSERT INTO `countries` VALUES ('426', '乌审旗', '150626000000', '150600000000');
INSERT INTO `countries` VALUES ('427', '伊金霍洛旗', '150627000000', '150600000000');
INSERT INTO `countries` VALUES ('428', '市辖区', '150701000000', '150700000000');
INSERT INTO `countries` VALUES ('429', '海拉尔区', '150702000000', '150700000000');
INSERT INTO `countries` VALUES ('430', '扎赉诺尔区', '150703000000', '150700000000');
INSERT INTO `countries` VALUES ('431', '阿荣旗', '150721000000', '150700000000');
INSERT INTO `countries` VALUES ('432', '莫力达瓦达斡尔族自治旗', '150722000000', '150700000000');
INSERT INTO `countries` VALUES ('433', '鄂伦春自治旗', '150723000000', '150700000000');
INSERT INTO `countries` VALUES ('434', '鄂温克族自治旗', '150724000000', '150700000000');
INSERT INTO `countries` VALUES ('435', '陈巴尔虎旗', '150725000000', '150700000000');
INSERT INTO `countries` VALUES ('436', '新巴尔虎左旗', '150726000000', '150700000000');
INSERT INTO `countries` VALUES ('437', '新巴尔虎右旗', '150727000000', '150700000000');
INSERT INTO `countries` VALUES ('438', '满洲里市', '150781000000', '150700000000');
INSERT INTO `countries` VALUES ('439', '牙克石市', '150782000000', '150700000000');
INSERT INTO `countries` VALUES ('440', '扎兰屯市', '150783000000', '150700000000');
INSERT INTO `countries` VALUES ('441', '额尔古纳市', '150784000000', '150700000000');
INSERT INTO `countries` VALUES ('442', '根河市', '150785000000', '150700000000');
INSERT INTO `countries` VALUES ('443', '市辖区', '150801000000', '150800000000');
INSERT INTO `countries` VALUES ('444', '临河区', '150802000000', '150800000000');
INSERT INTO `countries` VALUES ('445', '五原县', '150821000000', '150800000000');
INSERT INTO `countries` VALUES ('446', '磴口县', '150822000000', '150800000000');
INSERT INTO `countries` VALUES ('447', '乌拉特前旗', '150823000000', '150800000000');
INSERT INTO `countries` VALUES ('448', '乌拉特中旗', '150824000000', '150800000000');
INSERT INTO `countries` VALUES ('449', '乌拉特后旗', '150825000000', '150800000000');
INSERT INTO `countries` VALUES ('450', '杭锦后旗', '150826000000', '150800000000');
INSERT INTO `countries` VALUES ('451', '市辖区', '150901000000', '150900000000');
INSERT INTO `countries` VALUES ('452', '集宁区', '150902000000', '150900000000');
INSERT INTO `countries` VALUES ('453', '卓资县', '150921000000', '150900000000');
INSERT INTO `countries` VALUES ('454', '化德县', '150922000000', '150900000000');
INSERT INTO `countries` VALUES ('455', '商都县', '150923000000', '150900000000');
INSERT INTO `countries` VALUES ('456', '兴和县', '150924000000', '150900000000');
INSERT INTO `countries` VALUES ('457', '凉城县', '150925000000', '150900000000');
INSERT INTO `countries` VALUES ('458', '察哈尔右翼前旗', '150926000000', '150900000000');
INSERT INTO `countries` VALUES ('459', '察哈尔右翼中旗', '150927000000', '150900000000');
INSERT INTO `countries` VALUES ('460', '察哈尔右翼后旗', '150928000000', '150900000000');
INSERT INTO `countries` VALUES ('461', '四子王旗', '150929000000', '150900000000');
INSERT INTO `countries` VALUES ('462', '丰镇市', '150981000000', '150900000000');
INSERT INTO `countries` VALUES ('463', '乌兰浩特市', '152201000000', '152200000000');
INSERT INTO `countries` VALUES ('464', '阿尔山市', '152202000000', '152200000000');
INSERT INTO `countries` VALUES ('465', '科尔沁右翼前旗', '152221000000', '152200000000');
INSERT INTO `countries` VALUES ('466', '科尔沁右翼中旗', '152222000000', '152200000000');
INSERT INTO `countries` VALUES ('467', '扎赉特旗', '152223000000', '152200000000');
INSERT INTO `countries` VALUES ('468', '突泉县', '152224000000', '152200000000');
INSERT INTO `countries` VALUES ('469', '二连浩特市', '152501000000', '152500000000');
INSERT INTO `countries` VALUES ('470', '锡林浩特市', '152502000000', '152500000000');
INSERT INTO `countries` VALUES ('471', '阿巴嘎旗', '152522000000', '152500000000');
INSERT INTO `countries` VALUES ('472', '苏尼特左旗', '152523000000', '152500000000');
INSERT INTO `countries` VALUES ('473', '苏尼特右旗', '152524000000', '152500000000');
INSERT INTO `countries` VALUES ('474', '东乌珠穆沁旗', '152525000000', '152500000000');
INSERT INTO `countries` VALUES ('475', '西乌珠穆沁旗', '152526000000', '152500000000');
INSERT INTO `countries` VALUES ('476', '太仆寺旗', '152527000000', '152500000000');
INSERT INTO `countries` VALUES ('477', '镶黄旗', '152528000000', '152500000000');
INSERT INTO `countries` VALUES ('478', '正镶白旗', '152529000000', '152500000000');
INSERT INTO `countries` VALUES ('479', '正蓝旗', '152530000000', '152500000000');
INSERT INTO `countries` VALUES ('480', '多伦县', '152531000000', '152500000000');
INSERT INTO `countries` VALUES ('481', '乌拉盖管委会', '152571000000', '152500000000');
INSERT INTO `countries` VALUES ('482', '阿拉善左旗', '152921000000', '152900000000');
INSERT INTO `countries` VALUES ('483', '阿拉善右旗', '152922000000', '152900000000');
INSERT INTO `countries` VALUES ('484', '额济纳旗', '152923000000', '152900000000');
INSERT INTO `countries` VALUES ('485', '内蒙古阿拉善经济开发区', '152971000000', '152900000000');
INSERT INTO `countries` VALUES ('486', '市辖区', '210101000000', '210100000000');
INSERT INTO `countries` VALUES ('487', '和平区', '210102000000', '210100000000');
INSERT INTO `countries` VALUES ('488', '沈河区', '210103000000', '210100000000');
INSERT INTO `countries` VALUES ('489', '大东区', '210104000000', '210100000000');
INSERT INTO `countries` VALUES ('490', '皇姑区', '210105000000', '210100000000');
INSERT INTO `countries` VALUES ('491', '铁西区', '210106000000', '210100000000');
INSERT INTO `countries` VALUES ('492', '苏家屯区', '210111000000', '210100000000');
INSERT INTO `countries` VALUES ('493', '浑南区', '210112000000', '210100000000');
INSERT INTO `countries` VALUES ('494', '沈北新区', '210113000000', '210100000000');
INSERT INTO `countries` VALUES ('495', '于洪区', '210114000000', '210100000000');
INSERT INTO `countries` VALUES ('496', '辽中区', '210115000000', '210100000000');
INSERT INTO `countries` VALUES ('497', '康平县', '210123000000', '210100000000');
INSERT INTO `countries` VALUES ('498', '法库县', '210124000000', '210100000000');
INSERT INTO `countries` VALUES ('499', '新民市', '210181000000', '210100000000');
INSERT INTO `countries` VALUES ('500', '市辖区', '210201000000', '210200000000');
INSERT INTO `countries` VALUES ('501', '中山区', '210202000000', '210200000000');
INSERT INTO `countries` VALUES ('502', '西岗区', '210203000000', '210200000000');
INSERT INTO `countries` VALUES ('503', '沙河口区', '210204000000', '210200000000');
INSERT INTO `countries` VALUES ('504', '甘井子区', '210211000000', '210200000000');
INSERT INTO `countries` VALUES ('505', '旅顺口区', '210212000000', '210200000000');
INSERT INTO `countries` VALUES ('506', '金州区', '210213000000', '210200000000');
INSERT INTO `countries` VALUES ('507', '普兰店区', '210214000000', '210200000000');
INSERT INTO `countries` VALUES ('508', '长海县', '210224000000', '210200000000');
INSERT INTO `countries` VALUES ('509', '瓦房店市', '210281000000', '210200000000');
INSERT INTO `countries` VALUES ('510', '庄河市', '210283000000', '210200000000');
INSERT INTO `countries` VALUES ('511', '市辖区', '210301000000', '210300000000');
INSERT INTO `countries` VALUES ('512', '铁东区', '210302000000', '210300000000');
INSERT INTO `countries` VALUES ('513', '铁西区', '210303000000', '210300000000');
INSERT INTO `countries` VALUES ('514', '立山区', '210304000000', '210300000000');
INSERT INTO `countries` VALUES ('515', '千山区', '210311000000', '210300000000');
INSERT INTO `countries` VALUES ('516', '台安县', '210321000000', '210300000000');
INSERT INTO `countries` VALUES ('517', '岫岩满族自治县', '210323000000', '210300000000');
INSERT INTO `countries` VALUES ('518', '海城市', '210381000000', '210300000000');
INSERT INTO `countries` VALUES ('519', '市辖区', '210401000000', '210400000000');
INSERT INTO `countries` VALUES ('520', '新抚区', '210402000000', '210400000000');
INSERT INTO `countries` VALUES ('521', '东洲区', '210403000000', '210400000000');
INSERT INTO `countries` VALUES ('522', '望花区', '210404000000', '210400000000');
INSERT INTO `countries` VALUES ('523', '顺城区', '210411000000', '210400000000');
INSERT INTO `countries` VALUES ('524', '抚顺县', '210421000000', '210400000000');
INSERT INTO `countries` VALUES ('525', '新宾满族自治县', '210422000000', '210400000000');
INSERT INTO `countries` VALUES ('526', '清原满族自治县', '210423000000', '210400000000');
INSERT INTO `countries` VALUES ('527', '市辖区', '210501000000', '210500000000');
INSERT INTO `countries` VALUES ('528', '平山区', '210502000000', '210500000000');
INSERT INTO `countries` VALUES ('529', '溪湖区', '210503000000', '210500000000');
INSERT INTO `countries` VALUES ('530', '明山区', '210504000000', '210500000000');
INSERT INTO `countries` VALUES ('531', '南芬区', '210505000000', '210500000000');
INSERT INTO `countries` VALUES ('532', '本溪满族自治县', '210521000000', '210500000000');
INSERT INTO `countries` VALUES ('533', '桓仁满族自治县', '210522000000', '210500000000');
INSERT INTO `countries` VALUES ('534', '市辖区', '210601000000', '210600000000');
INSERT INTO `countries` VALUES ('535', '元宝区', '210602000000', '210600000000');
INSERT INTO `countries` VALUES ('536', '振兴区', '210603000000', '210600000000');
INSERT INTO `countries` VALUES ('537', '振安区', '210604000000', '210600000000');
INSERT INTO `countries` VALUES ('538', '宽甸满族自治县', '210624000000', '210600000000');
INSERT INTO `countries` VALUES ('539', '东港市', '210681000000', '210600000000');
INSERT INTO `countries` VALUES ('540', '凤城市', '210682000000', '210600000000');
INSERT INTO `countries` VALUES ('541', '市辖区', '210701000000', '210700000000');
INSERT INTO `countries` VALUES ('542', '古塔区', '210702000000', '210700000000');
INSERT INTO `countries` VALUES ('543', '凌河区', '210703000000', '210700000000');
INSERT INTO `countries` VALUES ('544', '太和区', '210711000000', '210700000000');
INSERT INTO `countries` VALUES ('545', '黑山县', '210726000000', '210700000000');
INSERT INTO `countries` VALUES ('546', '义县', '210727000000', '210700000000');
INSERT INTO `countries` VALUES ('547', '凌海市', '210781000000', '210700000000');
INSERT INTO `countries` VALUES ('548', '北镇市', '210782000000', '210700000000');
INSERT INTO `countries` VALUES ('549', '市辖区', '210801000000', '210800000000');
INSERT INTO `countries` VALUES ('550', '站前区', '210802000000', '210800000000');
INSERT INTO `countries` VALUES ('551', '西市区', '210803000000', '210800000000');
INSERT INTO `countries` VALUES ('552', '鲅鱼圈区', '210804000000', '210800000000');
INSERT INTO `countries` VALUES ('553', '老边区', '210811000000', '210800000000');
INSERT INTO `countries` VALUES ('554', '盖州市', '210881000000', '210800000000');
INSERT INTO `countries` VALUES ('555', '大石桥市', '210882000000', '210800000000');
INSERT INTO `countries` VALUES ('556', '市辖区', '210901000000', '210900000000');
INSERT INTO `countries` VALUES ('557', '海州区', '210902000000', '210900000000');
INSERT INTO `countries` VALUES ('558', '新邱区', '210903000000', '210900000000');
INSERT INTO `countries` VALUES ('559', '太平区', '210904000000', '210900000000');
INSERT INTO `countries` VALUES ('560', '清河门区', '210905000000', '210900000000');
INSERT INTO `countries` VALUES ('561', '细河区', '210911000000', '210900000000');
INSERT INTO `countries` VALUES ('562', '阜新蒙古族自治县', '210921000000', '210900000000');
INSERT INTO `countries` VALUES ('563', '彰武县', '210922000000', '210900000000');
INSERT INTO `countries` VALUES ('564', '市辖区', '211001000000', '211000000000');
INSERT INTO `countries` VALUES ('565', '白塔区', '211002000000', '211000000000');
INSERT INTO `countries` VALUES ('566', '文圣区', '211003000000', '211000000000');
INSERT INTO `countries` VALUES ('567', '宏伟区', '211004000000', '211000000000');
INSERT INTO `countries` VALUES ('568', '弓长岭区', '211005000000', '211000000000');
INSERT INTO `countries` VALUES ('569', '太子河区', '211011000000', '211000000000');
INSERT INTO `countries` VALUES ('570', '辽阳县', '211021000000', '211000000000');
INSERT INTO `countries` VALUES ('571', '灯塔市', '211081000000', '211000000000');
INSERT INTO `countries` VALUES ('572', '市辖区', '211101000000', '211100000000');
INSERT INTO `countries` VALUES ('573', '双台子区', '211102000000', '211100000000');
INSERT INTO `countries` VALUES ('574', '兴隆台区', '211103000000', '211100000000');
INSERT INTO `countries` VALUES ('575', '大洼区', '211104000000', '211100000000');
INSERT INTO `countries` VALUES ('576', '盘山县', '211122000000', '211100000000');
INSERT INTO `countries` VALUES ('577', '市辖区', '211201000000', '211200000000');
INSERT INTO `countries` VALUES ('578', '银州区', '211202000000', '211200000000');
INSERT INTO `countries` VALUES ('579', '清河区', '211204000000', '211200000000');
INSERT INTO `countries` VALUES ('580', '铁岭县', '211221000000', '211200000000');
INSERT INTO `countries` VALUES ('581', '西丰县', '211223000000', '211200000000');
INSERT INTO `countries` VALUES ('582', '昌图县', '211224000000', '211200000000');
INSERT INTO `countries` VALUES ('583', '调兵山市', '211281000000', '211200000000');
INSERT INTO `countries` VALUES ('584', '开原市', '211282000000', '211200000000');
INSERT INTO `countries` VALUES ('585', '市辖区', '211301000000', '211300000000');
INSERT INTO `countries` VALUES ('586', '双塔区', '211302000000', '211300000000');
INSERT INTO `countries` VALUES ('587', '龙城区', '211303000000', '211300000000');
INSERT INTO `countries` VALUES ('588', '朝阳县', '211321000000', '211300000000');
INSERT INTO `countries` VALUES ('589', '建平县', '211322000000', '211300000000');
INSERT INTO `countries` VALUES ('590', '喀喇沁左翼蒙古族自治县', '211324000000', '211300000000');
INSERT INTO `countries` VALUES ('591', '北票市', '211381000000', '211300000000');
INSERT INTO `countries` VALUES ('592', '凌源市', '211382000000', '211300000000');
INSERT INTO `countries` VALUES ('593', '市辖区', '211401000000', '211400000000');
INSERT INTO `countries` VALUES ('594', '连山区', '211402000000', '211400000000');
INSERT INTO `countries` VALUES ('595', '龙港区', '211403000000', '211400000000');
INSERT INTO `countries` VALUES ('596', '南票区', '211404000000', '211400000000');
INSERT INTO `countries` VALUES ('597', '绥中县', '211421000000', '211400000000');
INSERT INTO `countries` VALUES ('598', '建昌县', '211422000000', '211400000000');
INSERT INTO `countries` VALUES ('599', '兴城市', '211481000000', '211400000000');
INSERT INTO `countries` VALUES ('600', '市辖区', '220101000000', '220100000000');
INSERT INTO `countries` VALUES ('601', '南关区', '220102000000', '220100000000');
INSERT INTO `countries` VALUES ('602', '宽城区', '220103000000', '220100000000');
INSERT INTO `countries` VALUES ('603', '朝阳区', '220104000000', '220100000000');
INSERT INTO `countries` VALUES ('604', '二道区', '220105000000', '220100000000');
INSERT INTO `countries` VALUES ('605', '绿园区', '220106000000', '220100000000');
INSERT INTO `countries` VALUES ('606', '双阳区', '220112000000', '220100000000');
INSERT INTO `countries` VALUES ('607', '九台区', '220113000000', '220100000000');
INSERT INTO `countries` VALUES ('608', '农安县', '220122000000', '220100000000');
INSERT INTO `countries` VALUES ('609', '长春经济技术开发区', '220171000000', '220100000000');
INSERT INTO `countries` VALUES ('610', '长春净月高新技术产业开发区', '220172000000', '220100000000');
INSERT INTO `countries` VALUES ('611', '长春高新技术产业开发区', '220173000000', '220100000000');
INSERT INTO `countries` VALUES ('612', '长春汽车经济技术开发区', '220174000000', '220100000000');
INSERT INTO `countries` VALUES ('613', '榆树市', '220182000000', '220100000000');
INSERT INTO `countries` VALUES ('614', '德惠市', '220183000000', '220100000000');
INSERT INTO `countries` VALUES ('615', '市辖区', '220201000000', '220200000000');
INSERT INTO `countries` VALUES ('616', '昌邑区', '220202000000', '220200000000');
INSERT INTO `countries` VALUES ('617', '龙潭区', '220203000000', '220200000000');
INSERT INTO `countries` VALUES ('618', '船营区', '220204000000', '220200000000');
INSERT INTO `countries` VALUES ('619', '丰满区', '220211000000', '220200000000');
INSERT INTO `countries` VALUES ('620', '永吉县', '220221000000', '220200000000');
INSERT INTO `countries` VALUES ('621', '吉林经济开发区', '220271000000', '220200000000');
INSERT INTO `countries` VALUES ('622', '吉林高新技术产业开发区', '220272000000', '220200000000');
INSERT INTO `countries` VALUES ('623', '吉林中国新加坡食品区', '220273000000', '220200000000');
INSERT INTO `countries` VALUES ('624', '蛟河市', '220281000000', '220200000000');
INSERT INTO `countries` VALUES ('625', '桦甸市', '220282000000', '220200000000');
INSERT INTO `countries` VALUES ('626', '舒兰市', '220283000000', '220200000000');
INSERT INTO `countries` VALUES ('627', '磐石市', '220284000000', '220200000000');
INSERT INTO `countries` VALUES ('628', '市辖区', '220301000000', '220300000000');
INSERT INTO `countries` VALUES ('629', '铁西区', '220302000000', '220300000000');
INSERT INTO `countries` VALUES ('630', '铁东区', '220303000000', '220300000000');
INSERT INTO `countries` VALUES ('631', '梨树县', '220322000000', '220300000000');
INSERT INTO `countries` VALUES ('632', '伊通满族自治县', '220323000000', '220300000000');
INSERT INTO `countries` VALUES ('633', '公主岭市', '220381000000', '220300000000');
INSERT INTO `countries` VALUES ('634', '双辽市', '220382000000', '220300000000');
INSERT INTO `countries` VALUES ('635', '市辖区', '220401000000', '220400000000');
INSERT INTO `countries` VALUES ('636', '龙山区', '220402000000', '220400000000');
INSERT INTO `countries` VALUES ('637', '西安区', '220403000000', '220400000000');
INSERT INTO `countries` VALUES ('638', '东丰县', '220421000000', '220400000000');
INSERT INTO `countries` VALUES ('639', '东辽县', '220422000000', '220400000000');
INSERT INTO `countries` VALUES ('640', '市辖区', '220501000000', '220500000000');
INSERT INTO `countries` VALUES ('641', '东昌区', '220502000000', '220500000000');
INSERT INTO `countries` VALUES ('642', '二道江区', '220503000000', '220500000000');
INSERT INTO `countries` VALUES ('643', '通化县', '220521000000', '220500000000');
INSERT INTO `countries` VALUES ('644', '辉南县', '220523000000', '220500000000');
INSERT INTO `countries` VALUES ('645', '柳河县', '220524000000', '220500000000');
INSERT INTO `countries` VALUES ('646', '梅河口市', '220581000000', '220500000000');
INSERT INTO `countries` VALUES ('647', '集安市', '220582000000', '220500000000');
INSERT INTO `countries` VALUES ('648', '市辖区', '220601000000', '220600000000');
INSERT INTO `countries` VALUES ('649', '浑江区', '220602000000', '220600000000');
INSERT INTO `countries` VALUES ('650', '江源区', '220605000000', '220600000000');
INSERT INTO `countries` VALUES ('651', '抚松县', '220621000000', '220600000000');
INSERT INTO `countries` VALUES ('652', '靖宇县', '220622000000', '220600000000');
INSERT INTO `countries` VALUES ('653', '长白朝鲜族自治县', '220623000000', '220600000000');
INSERT INTO `countries` VALUES ('654', '临江市', '220681000000', '220600000000');
INSERT INTO `countries` VALUES ('655', '市辖区', '220701000000', '220700000000');
INSERT INTO `countries` VALUES ('656', '宁江区', '220702000000', '220700000000');
INSERT INTO `countries` VALUES ('657', '前郭尔罗斯蒙古族自治县', '220721000000', '220700000000');
INSERT INTO `countries` VALUES ('658', '长岭县', '220722000000', '220700000000');
INSERT INTO `countries` VALUES ('659', '乾安县', '220723000000', '220700000000');
INSERT INTO `countries` VALUES ('660', '吉林松原经济开发区', '220771000000', '220700000000');
INSERT INTO `countries` VALUES ('661', '扶余市', '220781000000', '220700000000');
INSERT INTO `countries` VALUES ('662', '市辖区', '220801000000', '220800000000');
INSERT INTO `countries` VALUES ('663', '洮北区', '220802000000', '220800000000');
INSERT INTO `countries` VALUES ('664', '镇赉县', '220821000000', '220800000000');
INSERT INTO `countries` VALUES ('665', '通榆县', '220822000000', '220800000000');
INSERT INTO `countries` VALUES ('666', '吉林白城经济开发区', '220871000000', '220800000000');
INSERT INTO `countries` VALUES ('667', '洮南市', '220881000000', '220800000000');
INSERT INTO `countries` VALUES ('668', '大安市', '220882000000', '220800000000');
INSERT INTO `countries` VALUES ('669', '延吉市', '222401000000', '222400000000');
INSERT INTO `countries` VALUES ('670', '图们市', '222402000000', '222400000000');
INSERT INTO `countries` VALUES ('671', '敦化市', '222403000000', '222400000000');
INSERT INTO `countries` VALUES ('672', '珲春市', '222404000000', '222400000000');
INSERT INTO `countries` VALUES ('673', '龙井市', '222405000000', '222400000000');
INSERT INTO `countries` VALUES ('674', '和龙市', '222406000000', '222400000000');
INSERT INTO `countries` VALUES ('675', '汪清县', '222424000000', '222400000000');
INSERT INTO `countries` VALUES ('676', '安图县', '222426000000', '222400000000');
INSERT INTO `countries` VALUES ('677', '市辖区', '230101000000', '230100000000');
INSERT INTO `countries` VALUES ('678', '道里区', '230102000000', '230100000000');
INSERT INTO `countries` VALUES ('679', '南岗区', '230103000000', '230100000000');
INSERT INTO `countries` VALUES ('680', '道外区', '230104000000', '230100000000');
INSERT INTO `countries` VALUES ('681', '平房区', '230108000000', '230100000000');
INSERT INTO `countries` VALUES ('682', '松北区', '230109000000', '230100000000');
INSERT INTO `countries` VALUES ('683', '香坊区', '230110000000', '230100000000');
INSERT INTO `countries` VALUES ('684', '呼兰区', '230111000000', '230100000000');
INSERT INTO `countries` VALUES ('685', '阿城区', '230112000000', '230100000000');
INSERT INTO `countries` VALUES ('686', '双城区', '230113000000', '230100000000');
INSERT INTO `countries` VALUES ('687', '依兰县', '230123000000', '230100000000');
INSERT INTO `countries` VALUES ('688', '方正县', '230124000000', '230100000000');
INSERT INTO `countries` VALUES ('689', '宾县', '230125000000', '230100000000');
INSERT INTO `countries` VALUES ('690', '巴彦县', '230126000000', '230100000000');
INSERT INTO `countries` VALUES ('691', '木兰县', '230127000000', '230100000000');
INSERT INTO `countries` VALUES ('692', '通河县', '230128000000', '230100000000');
INSERT INTO `countries` VALUES ('693', '延寿县', '230129000000', '230100000000');
INSERT INTO `countries` VALUES ('694', '尚志市', '230183000000', '230100000000');
INSERT INTO `countries` VALUES ('695', '五常市', '230184000000', '230100000000');
INSERT INTO `countries` VALUES ('696', '市辖区', '230201000000', '230200000000');
INSERT INTO `countries` VALUES ('697', '龙沙区', '230202000000', '230200000000');
INSERT INTO `countries` VALUES ('698', '建华区', '230203000000', '230200000000');
INSERT INTO `countries` VALUES ('699', '铁锋区', '230204000000', '230200000000');
INSERT INTO `countries` VALUES ('700', '昂昂溪区', '230205000000', '230200000000');
INSERT INTO `countries` VALUES ('701', '富拉尔基区', '230206000000', '230200000000');
INSERT INTO `countries` VALUES ('702', '碾子山区', '230207000000', '230200000000');
INSERT INTO `countries` VALUES ('703', '梅里斯达斡尔族区', '230208000000', '230200000000');
INSERT INTO `countries` VALUES ('704', '龙江县', '230221000000', '230200000000');
INSERT INTO `countries` VALUES ('705', '依安县', '230223000000', '230200000000');
INSERT INTO `countries` VALUES ('706', '泰来县', '230224000000', '230200000000');
INSERT INTO `countries` VALUES ('707', '甘南县', '230225000000', '230200000000');
INSERT INTO `countries` VALUES ('708', '富裕县', '230227000000', '230200000000');
INSERT INTO `countries` VALUES ('709', '克山县', '230229000000', '230200000000');
INSERT INTO `countries` VALUES ('710', '克东县', '230230000000', '230200000000');
INSERT INTO `countries` VALUES ('711', '拜泉县', '230231000000', '230200000000');
INSERT INTO `countries` VALUES ('712', '讷河市', '230281000000', '230200000000');
INSERT INTO `countries` VALUES ('713', '市辖区', '230301000000', '230300000000');
INSERT INTO `countries` VALUES ('714', '鸡冠区', '230302000000', '230300000000');
INSERT INTO `countries` VALUES ('715', '恒山区', '230303000000', '230300000000');
INSERT INTO `countries` VALUES ('716', '滴道区', '230304000000', '230300000000');
INSERT INTO `countries` VALUES ('717', '梨树区', '230305000000', '230300000000');
INSERT INTO `countries` VALUES ('718', '城子河区', '230306000000', '230300000000');
INSERT INTO `countries` VALUES ('719', '麻山区', '230307000000', '230300000000');
INSERT INTO `countries` VALUES ('720', '鸡东县', '230321000000', '230300000000');
INSERT INTO `countries` VALUES ('721', '虎林市', '230381000000', '230300000000');
INSERT INTO `countries` VALUES ('722', '密山市', '230382000000', '230300000000');
INSERT INTO `countries` VALUES ('723', '市辖区', '230401000000', '230400000000');
INSERT INTO `countries` VALUES ('724', '向阳区', '230402000000', '230400000000');
INSERT INTO `countries` VALUES ('725', '工农区', '230403000000', '230400000000');
INSERT INTO `countries` VALUES ('726', '南山区', '230404000000', '230400000000');
INSERT INTO `countries` VALUES ('727', '兴安区', '230405000000', '230400000000');
INSERT INTO `countries` VALUES ('728', '东山区', '230406000000', '230400000000');
INSERT INTO `countries` VALUES ('729', '兴山区', '230407000000', '230400000000');
INSERT INTO `countries` VALUES ('730', '萝北县', '230421000000', '230400000000');
INSERT INTO `countries` VALUES ('731', '绥滨县', '230422000000', '230400000000');
INSERT INTO `countries` VALUES ('732', '市辖区', '230501000000', '230500000000');
INSERT INTO `countries` VALUES ('733', '尖山区', '230502000000', '230500000000');
INSERT INTO `countries` VALUES ('734', '岭东区', '230503000000', '230500000000');
INSERT INTO `countries` VALUES ('735', '四方台区', '230505000000', '230500000000');
INSERT INTO `countries` VALUES ('736', '宝山区', '230506000000', '230500000000');
INSERT INTO `countries` VALUES ('737', '集贤县', '230521000000', '230500000000');
INSERT INTO `countries` VALUES ('738', '友谊县', '230522000000', '230500000000');
INSERT INTO `countries` VALUES ('739', '宝清县', '230523000000', '230500000000');
INSERT INTO `countries` VALUES ('740', '饶河县', '230524000000', '230500000000');
INSERT INTO `countries` VALUES ('741', '市辖区', '230601000000', '230600000000');
INSERT INTO `countries` VALUES ('742', '萨尔图区', '230602000000', '230600000000');
INSERT INTO `countries` VALUES ('743', '龙凤区', '230603000000', '230600000000');
INSERT INTO `countries` VALUES ('744', '让胡路区', '230604000000', '230600000000');
INSERT INTO `countries` VALUES ('745', '红岗区', '230605000000', '230600000000');
INSERT INTO `countries` VALUES ('746', '大同区', '230606000000', '230600000000');
INSERT INTO `countries` VALUES ('747', '肇州县', '230621000000', '230600000000');
INSERT INTO `countries` VALUES ('748', '肇源县', '230622000000', '230600000000');
INSERT INTO `countries` VALUES ('749', '林甸县', '230623000000', '230600000000');
INSERT INTO `countries` VALUES ('750', '杜尔伯特蒙古族自治县', '230624000000', '230600000000');
INSERT INTO `countries` VALUES ('751', '大庆高新技术产业开发区', '230671000000', '230600000000');
INSERT INTO `countries` VALUES ('752', '市辖区', '230701000000', '230700000000');
INSERT INTO `countries` VALUES ('753', '伊春区', '230702000000', '230700000000');
INSERT INTO `countries` VALUES ('754', '南岔区', '230703000000', '230700000000');
INSERT INTO `countries` VALUES ('755', '友好区', '230704000000', '230700000000');
INSERT INTO `countries` VALUES ('756', '西林区', '230705000000', '230700000000');
INSERT INTO `countries` VALUES ('757', '翠峦区', '230706000000', '230700000000');
INSERT INTO `countries` VALUES ('758', '新青区', '230707000000', '230700000000');
INSERT INTO `countries` VALUES ('759', '美溪区', '230708000000', '230700000000');
INSERT INTO `countries` VALUES ('760', '金山屯区', '230709000000', '230700000000');
INSERT INTO `countries` VALUES ('761', '五营区', '230710000000', '230700000000');
INSERT INTO `countries` VALUES ('762', '乌马河区', '230711000000', '230700000000');
INSERT INTO `countries` VALUES ('763', '汤旺河区', '230712000000', '230700000000');
INSERT INTO `countries` VALUES ('764', '带岭区', '230713000000', '230700000000');
INSERT INTO `countries` VALUES ('765', '乌伊岭区', '230714000000', '230700000000');
INSERT INTO `countries` VALUES ('766', '红星区', '230715000000', '230700000000');
INSERT INTO `countries` VALUES ('767', '上甘岭区', '230716000000', '230700000000');
INSERT INTO `countries` VALUES ('768', '嘉荫县', '230722000000', '230700000000');
INSERT INTO `countries` VALUES ('769', '铁力市', '230781000000', '230700000000');
INSERT INTO `countries` VALUES ('770', '市辖区', '230801000000', '230800000000');
INSERT INTO `countries` VALUES ('771', '向阳区', '230803000000', '230800000000');
INSERT INTO `countries` VALUES ('772', '前进区', '230804000000', '230800000000');
INSERT INTO `countries` VALUES ('773', '东风区', '230805000000', '230800000000');
INSERT INTO `countries` VALUES ('774', '郊区', '230811000000', '230800000000');
INSERT INTO `countries` VALUES ('775', '桦南县', '230822000000', '230800000000');
INSERT INTO `countries` VALUES ('776', '桦川县', '230826000000', '230800000000');
INSERT INTO `countries` VALUES ('777', '汤原县', '230828000000', '230800000000');
INSERT INTO `countries` VALUES ('778', '同江市', '230881000000', '230800000000');
INSERT INTO `countries` VALUES ('779', '富锦市', '230882000000', '230800000000');
INSERT INTO `countries` VALUES ('780', '抚远市', '230883000000', '230800000000');
INSERT INTO `countries` VALUES ('781', '市辖区', '230901000000', '230900000000');
INSERT INTO `countries` VALUES ('782', '新兴区', '230902000000', '230900000000');
INSERT INTO `countries` VALUES ('783', '桃山区', '230903000000', '230900000000');
INSERT INTO `countries` VALUES ('784', '茄子河区', '230904000000', '230900000000');
INSERT INTO `countries` VALUES ('785', '勃利县', '230921000000', '230900000000');
INSERT INTO `countries` VALUES ('786', '市辖区', '231001000000', '231000000000');
INSERT INTO `countries` VALUES ('787', '东安区', '231002000000', '231000000000');
INSERT INTO `countries` VALUES ('788', '阳明区', '231003000000', '231000000000');
INSERT INTO `countries` VALUES ('789', '爱民区', '231004000000', '231000000000');
INSERT INTO `countries` VALUES ('790', '西安区', '231005000000', '231000000000');
INSERT INTO `countries` VALUES ('791', '林口县', '231025000000', '231000000000');
INSERT INTO `countries` VALUES ('792', '牡丹江经济技术开发区', '231071000000', '231000000000');
INSERT INTO `countries` VALUES ('793', '绥芬河市', '231081000000', '231000000000');
INSERT INTO `countries` VALUES ('794', '海林市', '231083000000', '231000000000');
INSERT INTO `countries` VALUES ('795', '宁安市', '231084000000', '231000000000');
INSERT INTO `countries` VALUES ('796', '穆棱市', '231085000000', '231000000000');
INSERT INTO `countries` VALUES ('797', '东宁市', '231086000000', '231000000000');
INSERT INTO `countries` VALUES ('798', '市辖区', '231101000000', '231100000000');
INSERT INTO `countries` VALUES ('799', '爱辉区', '231102000000', '231100000000');
INSERT INTO `countries` VALUES ('800', '嫩江县', '231121000000', '231100000000');
INSERT INTO `countries` VALUES ('801', '逊克县', '231123000000', '231100000000');
INSERT INTO `countries` VALUES ('802', '孙吴县', '231124000000', '231100000000');
INSERT INTO `countries` VALUES ('803', '北安市', '231181000000', '231100000000');
INSERT INTO `countries` VALUES ('804', '五大连池市', '231182000000', '231100000000');
INSERT INTO `countries` VALUES ('805', '市辖区', '231201000000', '231200000000');
INSERT INTO `countries` VALUES ('806', '北林区', '231202000000', '231200000000');
INSERT INTO `countries` VALUES ('807', '望奎县', '231221000000', '231200000000');
INSERT INTO `countries` VALUES ('808', '兰西县', '231222000000', '231200000000');
INSERT INTO `countries` VALUES ('809', '青冈县', '231223000000', '231200000000');
INSERT INTO `countries` VALUES ('810', '庆安县', '231224000000', '231200000000');
INSERT INTO `countries` VALUES ('811', '明水县', '231225000000', '231200000000');
INSERT INTO `countries` VALUES ('812', '绥棱县', '231226000000', '231200000000');
INSERT INTO `countries` VALUES ('813', '安达市', '231281000000', '231200000000');
INSERT INTO `countries` VALUES ('814', '肇东市', '231282000000', '231200000000');
INSERT INTO `countries` VALUES ('815', '海伦市', '231283000000', '231200000000');
INSERT INTO `countries` VALUES ('816', '漠河市', '232701000000', '232700000000');
INSERT INTO `countries` VALUES ('817', '呼玛县', '232721000000', '232700000000');
INSERT INTO `countries` VALUES ('818', '塔河县', '232722000000', '232700000000');
INSERT INTO `countries` VALUES ('819', '加格达奇区', '232761000000', '232700000000');
INSERT INTO `countries` VALUES ('820', '松岭区', '232762000000', '232700000000');
INSERT INTO `countries` VALUES ('821', '新林区', '232763000000', '232700000000');
INSERT INTO `countries` VALUES ('822', '呼中区', '232764000000', '232700000000');
INSERT INTO `countries` VALUES ('823', '黄浦区', '310101000000', '310100000000');
INSERT INTO `countries` VALUES ('824', '徐汇区', '310104000000', '310100000000');
INSERT INTO `countries` VALUES ('825', '长宁区', '310105000000', '310100000000');
INSERT INTO `countries` VALUES ('826', '静安区', '310106000000', '310100000000');
INSERT INTO `countries` VALUES ('827', '普陀区', '310107000000', '310100000000');
INSERT INTO `countries` VALUES ('828', '虹口区', '310109000000', '310100000000');
INSERT INTO `countries` VALUES ('829', '杨浦区', '310110000000', '310100000000');
INSERT INTO `countries` VALUES ('830', '闵行区', '310112000000', '310100000000');
INSERT INTO `countries` VALUES ('831', '宝山区', '310113000000', '310100000000');
INSERT INTO `countries` VALUES ('832', '嘉定区', '310114000000', '310100000000');
INSERT INTO `countries` VALUES ('833', '浦东新区', '310115000000', '310100000000');
INSERT INTO `countries` VALUES ('834', '金山区', '310116000000', '310100000000');
INSERT INTO `countries` VALUES ('835', '松江区', '310117000000', '310100000000');
INSERT INTO `countries` VALUES ('836', '青浦区', '310118000000', '310100000000');
INSERT INTO `countries` VALUES ('837', '奉贤区', '310120000000', '310100000000');
INSERT INTO `countries` VALUES ('838', '崇明区', '310151000000', '310100000000');
INSERT INTO `countries` VALUES ('839', '市辖区', '320101000000', '320100000000');
INSERT INTO `countries` VALUES ('840', '玄武区', '320102000000', '320100000000');
INSERT INTO `countries` VALUES ('841', '秦淮区', '320104000000', '320100000000');
INSERT INTO `countries` VALUES ('842', '建邺区', '320105000000', '320100000000');
INSERT INTO `countries` VALUES ('843', '鼓楼区', '320106000000', '320100000000');
INSERT INTO `countries` VALUES ('844', '浦口区', '320111000000', '320100000000');
INSERT INTO `countries` VALUES ('845', '栖霞区', '320113000000', '320100000000');
INSERT INTO `countries` VALUES ('846', '雨花台区', '320114000000', '320100000000');
INSERT INTO `countries` VALUES ('847', '江宁区', '320115000000', '320100000000');
INSERT INTO `countries` VALUES ('848', '六合区', '320116000000', '320100000000');
INSERT INTO `countries` VALUES ('849', '溧水区', '320117000000', '320100000000');
INSERT INTO `countries` VALUES ('850', '高淳区', '320118000000', '320100000000');
INSERT INTO `countries` VALUES ('851', '市辖区', '320201000000', '320200000000');
INSERT INTO `countries` VALUES ('852', '锡山区', '320205000000', '320200000000');
INSERT INTO `countries` VALUES ('853', '惠山区', '320206000000', '320200000000');
INSERT INTO `countries` VALUES ('854', '滨湖区', '320211000000', '320200000000');
INSERT INTO `countries` VALUES ('855', '梁溪区', '320213000000', '320200000000');
INSERT INTO `countries` VALUES ('856', '新吴区', '320214000000', '320200000000');
INSERT INTO `countries` VALUES ('857', '江阴市', '320281000000', '320200000000');
INSERT INTO `countries` VALUES ('858', '宜兴市', '320282000000', '320200000000');
INSERT INTO `countries` VALUES ('859', '市辖区', '320301000000', '320300000000');
INSERT INTO `countries` VALUES ('860', '鼓楼区', '320302000000', '320300000000');
INSERT INTO `countries` VALUES ('861', '云龙区', '320303000000', '320300000000');
INSERT INTO `countries` VALUES ('862', '贾汪区', '320305000000', '320300000000');
INSERT INTO `countries` VALUES ('863', '泉山区', '320311000000', '320300000000');
INSERT INTO `countries` VALUES ('864', '铜山区', '320312000000', '320300000000');
INSERT INTO `countries` VALUES ('865', '丰县', '320321000000', '320300000000');
INSERT INTO `countries` VALUES ('866', '沛县', '320322000000', '320300000000');
INSERT INTO `countries` VALUES ('867', '睢宁县', '320324000000', '320300000000');
INSERT INTO `countries` VALUES ('868', '徐州经济技术开发区', '320371000000', '320300000000');
INSERT INTO `countries` VALUES ('869', '新沂市', '320381000000', '320300000000');
INSERT INTO `countries` VALUES ('870', '邳州市', '320382000000', '320300000000');
INSERT INTO `countries` VALUES ('871', '市辖区', '320401000000', '320400000000');
INSERT INTO `countries` VALUES ('872', '天宁区', '320402000000', '320400000000');
INSERT INTO `countries` VALUES ('873', '钟楼区', '320404000000', '320400000000');
INSERT INTO `countries` VALUES ('874', '新北区', '320411000000', '320400000000');
INSERT INTO `countries` VALUES ('875', '武进区', '320412000000', '320400000000');
INSERT INTO `countries` VALUES ('876', '金坛区', '320413000000', '320400000000');
INSERT INTO `countries` VALUES ('877', '溧阳市', '320481000000', '320400000000');
INSERT INTO `countries` VALUES ('878', '市辖区', '320501000000', '320500000000');
INSERT INTO `countries` VALUES ('879', '虎丘区', '320505000000', '320500000000');
INSERT INTO `countries` VALUES ('880', '吴中区', '320506000000', '320500000000');
INSERT INTO `countries` VALUES ('881', '相城区', '320507000000', '320500000000');
INSERT INTO `countries` VALUES ('882', '姑苏区', '320508000000', '320500000000');
INSERT INTO `countries` VALUES ('883', '吴江区', '320509000000', '320500000000');
INSERT INTO `countries` VALUES ('884', '苏州工业园区', '320571000000', '320500000000');
INSERT INTO `countries` VALUES ('885', '常熟市', '320581000000', '320500000000');
INSERT INTO `countries` VALUES ('886', '张家港市', '320582000000', '320500000000');
INSERT INTO `countries` VALUES ('887', '昆山市', '320583000000', '320500000000');
INSERT INTO `countries` VALUES ('888', '太仓市', '320585000000', '320500000000');
INSERT INTO `countries` VALUES ('889', '市辖区', '320601000000', '320600000000');
INSERT INTO `countries` VALUES ('890', '崇川区', '320602000000', '320600000000');
INSERT INTO `countries` VALUES ('891', '港闸区', '320611000000', '320600000000');
INSERT INTO `countries` VALUES ('892', '通州区', '320612000000', '320600000000');
INSERT INTO `countries` VALUES ('893', '如东县', '320623000000', '320600000000');
INSERT INTO `countries` VALUES ('894', '南通经济技术开发区', '320671000000', '320600000000');
INSERT INTO `countries` VALUES ('895', '启东市', '320681000000', '320600000000');
INSERT INTO `countries` VALUES ('896', '如皋市', '320682000000', '320600000000');
INSERT INTO `countries` VALUES ('897', '海门市', '320684000000', '320600000000');
INSERT INTO `countries` VALUES ('898', '海安市', '320685000000', '320600000000');
INSERT INTO `countries` VALUES ('899', '市辖区', '320701000000', '320700000000');
INSERT INTO `countries` VALUES ('900', '连云区', '320703000000', '320700000000');
INSERT INTO `countries` VALUES ('901', '海州区', '320706000000', '320700000000');
INSERT INTO `countries` VALUES ('902', '赣榆区', '320707000000', '320700000000');
INSERT INTO `countries` VALUES ('903', '东海县', '320722000000', '320700000000');
INSERT INTO `countries` VALUES ('904', '灌云县', '320723000000', '320700000000');
INSERT INTO `countries` VALUES ('905', '灌南县', '320724000000', '320700000000');
INSERT INTO `countries` VALUES ('906', '连云港经济技术开发区', '320771000000', '320700000000');
INSERT INTO `countries` VALUES ('907', '连云港高新技术产业开发区', '320772000000', '320700000000');
INSERT INTO `countries` VALUES ('908', '市辖区', '320801000000', '320800000000');
INSERT INTO `countries` VALUES ('909', '淮安区', '320803000000', '320800000000');
INSERT INTO `countries` VALUES ('910', '淮阴区', '320804000000', '320800000000');
INSERT INTO `countries` VALUES ('911', '清江浦区', '320812000000', '320800000000');
INSERT INTO `countries` VALUES ('912', '洪泽区', '320813000000', '320800000000');
INSERT INTO `countries` VALUES ('913', '涟水县', '320826000000', '320800000000');
INSERT INTO `countries` VALUES ('914', '盱眙县', '320830000000', '320800000000');
INSERT INTO `countries` VALUES ('915', '金湖县', '320831000000', '320800000000');
INSERT INTO `countries` VALUES ('916', '淮安经济技术开发区', '320871000000', '320800000000');
INSERT INTO `countries` VALUES ('917', '市辖区', '320901000000', '320900000000');
INSERT INTO `countries` VALUES ('918', '亭湖区', '320902000000', '320900000000');
INSERT INTO `countries` VALUES ('919', '盐都区', '320903000000', '320900000000');
INSERT INTO `countries` VALUES ('920', '大丰区', '320904000000', '320900000000');
INSERT INTO `countries` VALUES ('921', '响水县', '320921000000', '320900000000');
INSERT INTO `countries` VALUES ('922', '滨海县', '320922000000', '320900000000');
INSERT INTO `countries` VALUES ('923', '阜宁县', '320923000000', '320900000000');
INSERT INTO `countries` VALUES ('924', '射阳县', '320924000000', '320900000000');
INSERT INTO `countries` VALUES ('925', '建湖县', '320925000000', '320900000000');
INSERT INTO `countries` VALUES ('926', '盐城经济技术开发区', '320971000000', '320900000000');
INSERT INTO `countries` VALUES ('927', '东台市', '320981000000', '320900000000');
INSERT INTO `countries` VALUES ('928', '市辖区', '321001000000', '321000000000');
INSERT INTO `countries` VALUES ('929', '广陵区', '321002000000', '321000000000');
INSERT INTO `countries` VALUES ('930', '邗江区', '321003000000', '321000000000');
INSERT INTO `countries` VALUES ('931', '江都区', '321012000000', '321000000000');
INSERT INTO `countries` VALUES ('932', '宝应县', '321023000000', '321000000000');
INSERT INTO `countries` VALUES ('933', '扬州经济技术开发区', '321071000000', '321000000000');
INSERT INTO `countries` VALUES ('934', '仪征市', '321081000000', '321000000000');
INSERT INTO `countries` VALUES ('935', '高邮市', '321084000000', '321000000000');
INSERT INTO `countries` VALUES ('936', '市辖区', '321101000000', '321100000000');
INSERT INTO `countries` VALUES ('937', '京口区', '321102000000', '321100000000');
INSERT INTO `countries` VALUES ('938', '润州区', '321111000000', '321100000000');
INSERT INTO `countries` VALUES ('939', '丹徒区', '321112000000', '321100000000');
INSERT INTO `countries` VALUES ('940', '镇江新区', '321171000000', '321100000000');
INSERT INTO `countries` VALUES ('941', '丹阳市', '321181000000', '321100000000');
INSERT INTO `countries` VALUES ('942', '扬中市', '321182000000', '321100000000');
INSERT INTO `countries` VALUES ('943', '句容市', '321183000000', '321100000000');
INSERT INTO `countries` VALUES ('944', '市辖区', '321201000000', '321200000000');
INSERT INTO `countries` VALUES ('945', '海陵区', '321202000000', '321200000000');
INSERT INTO `countries` VALUES ('946', '高港区', '321203000000', '321200000000');
INSERT INTO `countries` VALUES ('947', '姜堰区', '321204000000', '321200000000');
INSERT INTO `countries` VALUES ('948', '泰州医药高新技术产业开发区', '321271000000', '321200000000');
INSERT INTO `countries` VALUES ('949', '兴化市', '321281000000', '321200000000');
INSERT INTO `countries` VALUES ('950', '靖江市', '321282000000', '321200000000');
INSERT INTO `countries` VALUES ('951', '泰兴市', '321283000000', '321200000000');
INSERT INTO `countries` VALUES ('952', '市辖区', '321301000000', '321300000000');
INSERT INTO `countries` VALUES ('953', '宿城区', '321302000000', '321300000000');
INSERT INTO `countries` VALUES ('954', '宿豫区', '321311000000', '321300000000');
INSERT INTO `countries` VALUES ('955', '沭阳县', '321322000000', '321300000000');
INSERT INTO `countries` VALUES ('956', '泗阳县', '321323000000', '321300000000');
INSERT INTO `countries` VALUES ('957', '泗洪县', '321324000000', '321300000000');
INSERT INTO `countries` VALUES ('958', '宿迁经济技术开发区', '321371000000', '321300000000');
INSERT INTO `countries` VALUES ('959', '市辖区', '330101000000', '330100000000');
INSERT INTO `countries` VALUES ('960', '上城区', '330102000000', '330100000000');
INSERT INTO `countries` VALUES ('961', '下城区', '330103000000', '330100000000');
INSERT INTO `countries` VALUES ('962', '江干区', '330104000000', '330100000000');
INSERT INTO `countries` VALUES ('963', '拱墅区', '330105000000', '330100000000');
INSERT INTO `countries` VALUES ('964', '西湖区', '330106000000', '330100000000');
INSERT INTO `countries` VALUES ('965', '滨江区', '330108000000', '330100000000');
INSERT INTO `countries` VALUES ('966', '萧山区', '330109000000', '330100000000');
INSERT INTO `countries` VALUES ('967', '余杭区', '330110000000', '330100000000');
INSERT INTO `countries` VALUES ('968', '富阳区', '330111000000', '330100000000');
INSERT INTO `countries` VALUES ('969', '临安区', '330112000000', '330100000000');
INSERT INTO `countries` VALUES ('970', '桐庐县', '330122000000', '330100000000');
INSERT INTO `countries` VALUES ('971', '淳安县', '330127000000', '330100000000');
INSERT INTO `countries` VALUES ('972', '建德市', '330182000000', '330100000000');
INSERT INTO `countries` VALUES ('973', '市辖区', '330201000000', '330200000000');
INSERT INTO `countries` VALUES ('974', '海曙区', '330203000000', '330200000000');
INSERT INTO `countries` VALUES ('975', '江北区', '330205000000', '330200000000');
INSERT INTO `countries` VALUES ('976', '北仑区', '330206000000', '330200000000');
INSERT INTO `countries` VALUES ('977', '镇海区', '330211000000', '330200000000');
INSERT INTO `countries` VALUES ('978', '鄞州区', '330212000000', '330200000000');
INSERT INTO `countries` VALUES ('979', '奉化区', '330213000000', '330200000000');
INSERT INTO `countries` VALUES ('980', '象山县', '330225000000', '330200000000');
INSERT INTO `countries` VALUES ('981', '宁海县', '330226000000', '330200000000');
INSERT INTO `countries` VALUES ('982', '余姚市', '330281000000', '330200000000');
INSERT INTO `countries` VALUES ('983', '慈溪市', '330282000000', '330200000000');
INSERT INTO `countries` VALUES ('984', '市辖区', '330301000000', '330300000000');
INSERT INTO `countries` VALUES ('985', '鹿城区', '330302000000', '330300000000');
INSERT INTO `countries` VALUES ('986', '龙湾区', '330303000000', '330300000000');
INSERT INTO `countries` VALUES ('987', '瓯海区', '330304000000', '330300000000');
INSERT INTO `countries` VALUES ('988', '洞头区', '330305000000', '330300000000');
INSERT INTO `countries` VALUES ('989', '永嘉县', '330324000000', '330300000000');
INSERT INTO `countries` VALUES ('990', '平阳县', '330326000000', '330300000000');
INSERT INTO `countries` VALUES ('991', '苍南县', '330327000000', '330300000000');
INSERT INTO `countries` VALUES ('992', '文成县', '330328000000', '330300000000');
INSERT INTO `countries` VALUES ('993', '泰顺县', '330329000000', '330300000000');
INSERT INTO `countries` VALUES ('994', '温州经济技术开发区', '330371000000', '330300000000');
INSERT INTO `countries` VALUES ('995', '瑞安市', '330381000000', '330300000000');
INSERT INTO `countries` VALUES ('996', '乐清市', '330382000000', '330300000000');
INSERT INTO `countries` VALUES ('997', '市辖区', '330401000000', '330400000000');
INSERT INTO `countries` VALUES ('998', '南湖区', '330402000000', '330400000000');
INSERT INTO `countries` VALUES ('999', '秀洲区', '330411000000', '330400000000');
INSERT INTO `countries` VALUES ('1000', '嘉善县', '330421000000', '330400000000');
INSERT INTO `countries` VALUES ('1001', '海盐县', '330424000000', '330400000000');
INSERT INTO `countries` VALUES ('1002', '海宁市', '330481000000', '330400000000');
INSERT INTO `countries` VALUES ('1003', '平湖市', '330482000000', '330400000000');
INSERT INTO `countries` VALUES ('1004', '桐乡市', '330483000000', '330400000000');
INSERT INTO `countries` VALUES ('1005', '市辖区', '330501000000', '330500000000');
INSERT INTO `countries` VALUES ('1006', '吴兴区', '330502000000', '330500000000');
INSERT INTO `countries` VALUES ('1007', '南浔区', '330503000000', '330500000000');
INSERT INTO `countries` VALUES ('1008', '德清县', '330521000000', '330500000000');
INSERT INTO `countries` VALUES ('1009', '长兴县', '330522000000', '330500000000');
INSERT INTO `countries` VALUES ('1010', '安吉县', '330523000000', '330500000000');
INSERT INTO `countries` VALUES ('1011', '市辖区', '330601000000', '330600000000');
INSERT INTO `countries` VALUES ('1012', '越城区', '330602000000', '330600000000');
INSERT INTO `countries` VALUES ('1013', '柯桥区', '330603000000', '330600000000');
INSERT INTO `countries` VALUES ('1014', '上虞区', '330604000000', '330600000000');
INSERT INTO `countries` VALUES ('1015', '新昌县', '330624000000', '330600000000');
INSERT INTO `countries` VALUES ('1016', '诸暨市', '330681000000', '330600000000');
INSERT INTO `countries` VALUES ('1017', '嵊州市', '330683000000', '330600000000');
INSERT INTO `countries` VALUES ('1018', '市辖区', '330701000000', '330700000000');
INSERT INTO `countries` VALUES ('1019', '婺城区', '330702000000', '330700000000');
INSERT INTO `countries` VALUES ('1020', '金东区', '330703000000', '330700000000');
INSERT INTO `countries` VALUES ('1021', '武义县', '330723000000', '330700000000');
INSERT INTO `countries` VALUES ('1022', '浦江县', '330726000000', '330700000000');
INSERT INTO `countries` VALUES ('1023', '磐安县', '330727000000', '330700000000');
INSERT INTO `countries` VALUES ('1024', '兰溪市', '330781000000', '330700000000');
INSERT INTO `countries` VALUES ('1025', '义乌市', '330782000000', '330700000000');
INSERT INTO `countries` VALUES ('1026', '东阳市', '330783000000', '330700000000');
INSERT INTO `countries` VALUES ('1027', '永康市', '330784000000', '330700000000');
INSERT INTO `countries` VALUES ('1028', '市辖区', '330801000000', '330800000000');
INSERT INTO `countries` VALUES ('1029', '柯城区', '330802000000', '330800000000');
INSERT INTO `countries` VALUES ('1030', '衢江区', '330803000000', '330800000000');
INSERT INTO `countries` VALUES ('1031', '常山县', '330822000000', '330800000000');
INSERT INTO `countries` VALUES ('1032', '开化县', '330824000000', '330800000000');
INSERT INTO `countries` VALUES ('1033', '龙游县', '330825000000', '330800000000');
INSERT INTO `countries` VALUES ('1034', '江山市', '330881000000', '330800000000');
INSERT INTO `countries` VALUES ('1035', '市辖区', '330901000000', '330900000000');
INSERT INTO `countries` VALUES ('1036', '定海区', '330902000000', '330900000000');
INSERT INTO `countries` VALUES ('1037', '普陀区', '330903000000', '330900000000');
INSERT INTO `countries` VALUES ('1038', '岱山县', '330921000000', '330900000000');
INSERT INTO `countries` VALUES ('1039', '嵊泗县', '330922000000', '330900000000');
INSERT INTO `countries` VALUES ('1040', '市辖区', '331001000000', '331000000000');
INSERT INTO `countries` VALUES ('1041', '椒江区', '331002000000', '331000000000');
INSERT INTO `countries` VALUES ('1042', '黄岩区', '331003000000', '331000000000');
INSERT INTO `countries` VALUES ('1043', '路桥区', '331004000000', '331000000000');
INSERT INTO `countries` VALUES ('1044', '三门县', '331022000000', '331000000000');
INSERT INTO `countries` VALUES ('1045', '天台县', '331023000000', '331000000000');
INSERT INTO `countries` VALUES ('1046', '仙居县', '331024000000', '331000000000');
INSERT INTO `countries` VALUES ('1047', '温岭市', '331081000000', '331000000000');
INSERT INTO `countries` VALUES ('1048', '临海市', '331082000000', '331000000000');
INSERT INTO `countries` VALUES ('1049', '玉环市', '331083000000', '331000000000');
INSERT INTO `countries` VALUES ('1050', '市辖区', '331101000000', '331100000000');
INSERT INTO `countries` VALUES ('1051', '莲都区', '331102000000', '331100000000');
INSERT INTO `countries` VALUES ('1052', '青田县', '331121000000', '331100000000');
INSERT INTO `countries` VALUES ('1053', '缙云县', '331122000000', '331100000000');
INSERT INTO `countries` VALUES ('1054', '遂昌县', '331123000000', '331100000000');
INSERT INTO `countries` VALUES ('1055', '松阳县', '331124000000', '331100000000');
INSERT INTO `countries` VALUES ('1056', '云和县', '331125000000', '331100000000');
INSERT INTO `countries` VALUES ('1057', '庆元县', '331126000000', '331100000000');
INSERT INTO `countries` VALUES ('1058', '景宁畲族自治县', '331127000000', '331100000000');
INSERT INTO `countries` VALUES ('1059', '龙泉市', '331181000000', '331100000000');
INSERT INTO `countries` VALUES ('1060', '市辖区', '340101000000', '340100000000');
INSERT INTO `countries` VALUES ('1061', '瑶海区', '340102000000', '340100000000');
INSERT INTO `countries` VALUES ('1062', '庐阳区', '340103000000', '340100000000');
INSERT INTO `countries` VALUES ('1063', '蜀山区', '340104000000', '340100000000');
INSERT INTO `countries` VALUES ('1064', '包河区', '340111000000', '340100000000');
INSERT INTO `countries` VALUES ('1065', '长丰县', '340121000000', '340100000000');
INSERT INTO `countries` VALUES ('1066', '肥东县', '340122000000', '340100000000');
INSERT INTO `countries` VALUES ('1067', '肥西县', '340123000000', '340100000000');
INSERT INTO `countries` VALUES ('1068', '庐江县', '340124000000', '340100000000');
INSERT INTO `countries` VALUES ('1069', '合肥高新技术产业开发区', '340171000000', '340100000000');
INSERT INTO `countries` VALUES ('1070', '合肥经济技术开发区', '340172000000', '340100000000');
INSERT INTO `countries` VALUES ('1071', '合肥新站高新技术产业开发区', '340173000000', '340100000000');
INSERT INTO `countries` VALUES ('1072', '巢湖市', '340181000000', '340100000000');
INSERT INTO `countries` VALUES ('1073', '市辖区', '340201000000', '340200000000');
INSERT INTO `countries` VALUES ('1074', '镜湖区', '340202000000', '340200000000');
INSERT INTO `countries` VALUES ('1075', '弋江区', '340203000000', '340200000000');
INSERT INTO `countries` VALUES ('1076', '鸠江区', '340207000000', '340200000000');
INSERT INTO `countries` VALUES ('1077', '三山区', '340208000000', '340200000000');
INSERT INTO `countries` VALUES ('1078', '芜湖县', '340221000000', '340200000000');
INSERT INTO `countries` VALUES ('1079', '繁昌县', '340222000000', '340200000000');
INSERT INTO `countries` VALUES ('1080', '南陵县', '340223000000', '340200000000');
INSERT INTO `countries` VALUES ('1081', '无为县', '340225000000', '340200000000');
INSERT INTO `countries` VALUES ('1082', '芜湖经济技术开发区', '340271000000', '340200000000');
INSERT INTO `countries` VALUES ('1083', '安徽芜湖长江大桥经济开发区', '340272000000', '340200000000');
INSERT INTO `countries` VALUES ('1084', '市辖区', '340301000000', '340300000000');
INSERT INTO `countries` VALUES ('1085', '龙子湖区', '340302000000', '340300000000');
INSERT INTO `countries` VALUES ('1086', '蚌山区', '340303000000', '340300000000');
INSERT INTO `countries` VALUES ('1087', '禹会区', '340304000000', '340300000000');
INSERT INTO `countries` VALUES ('1088', '淮上区', '340311000000', '340300000000');
INSERT INTO `countries` VALUES ('1089', '怀远县', '340321000000', '340300000000');
INSERT INTO `countries` VALUES ('1090', '五河县', '340322000000', '340300000000');
INSERT INTO `countries` VALUES ('1091', '固镇县', '340323000000', '340300000000');
INSERT INTO `countries` VALUES ('1092', '蚌埠市高新技术开发区', '340371000000', '340300000000');
INSERT INTO `countries` VALUES ('1093', '蚌埠市经济开发区', '340372000000', '340300000000');
INSERT INTO `countries` VALUES ('1094', '市辖区', '340401000000', '340400000000');
INSERT INTO `countries` VALUES ('1095', '大通区', '340402000000', '340400000000');
INSERT INTO `countries` VALUES ('1096', '田家庵区', '340403000000', '340400000000');
INSERT INTO `countries` VALUES ('1097', '谢家集区', '340404000000', '340400000000');
INSERT INTO `countries` VALUES ('1098', '八公山区', '340405000000', '340400000000');
INSERT INTO `countries` VALUES ('1099', '潘集区', '340406000000', '340400000000');
INSERT INTO `countries` VALUES ('1100', '凤台县', '340421000000', '340400000000');
INSERT INTO `countries` VALUES ('1101', '寿县', '340422000000', '340400000000');
INSERT INTO `countries` VALUES ('1102', '市辖区', '340501000000', '340500000000');
INSERT INTO `countries` VALUES ('1103', '花山区', '340503000000', '340500000000');
INSERT INTO `countries` VALUES ('1104', '雨山区', '340504000000', '340500000000');
INSERT INTO `countries` VALUES ('1105', '博望区', '340506000000', '340500000000');
INSERT INTO `countries` VALUES ('1106', '当涂县', '340521000000', '340500000000');
INSERT INTO `countries` VALUES ('1107', '含山县', '340522000000', '340500000000');
INSERT INTO `countries` VALUES ('1108', '和县', '340523000000', '340500000000');
INSERT INTO `countries` VALUES ('1109', '市辖区', '340601000000', '340600000000');
INSERT INTO `countries` VALUES ('1110', '杜集区', '340602000000', '340600000000');
INSERT INTO `countries` VALUES ('1111', '相山区', '340603000000', '340600000000');
INSERT INTO `countries` VALUES ('1112', '烈山区', '340604000000', '340600000000');
INSERT INTO `countries` VALUES ('1113', '濉溪县', '340621000000', '340600000000');
INSERT INTO `countries` VALUES ('1114', '市辖区', '340701000000', '340700000000');
INSERT INTO `countries` VALUES ('1115', '铜官区', '340705000000', '340700000000');
INSERT INTO `countries` VALUES ('1116', '义安区', '340706000000', '340700000000');
INSERT INTO `countries` VALUES ('1117', '郊区', '340711000000', '340700000000');
INSERT INTO `countries` VALUES ('1118', '枞阳县', '340722000000', '340700000000');
INSERT INTO `countries` VALUES ('1119', '市辖区', '340801000000', '340800000000');
INSERT INTO `countries` VALUES ('1120', '迎江区', '340802000000', '340800000000');
INSERT INTO `countries` VALUES ('1121', '大观区', '340803000000', '340800000000');
INSERT INTO `countries` VALUES ('1122', '宜秀区', '340811000000', '340800000000');
INSERT INTO `countries` VALUES ('1123', '怀宁县', '340822000000', '340800000000');
INSERT INTO `countries` VALUES ('1124', '太湖县', '340825000000', '340800000000');
INSERT INTO `countries` VALUES ('1125', '宿松县', '340826000000', '340800000000');
INSERT INTO `countries` VALUES ('1126', '望江县', '340827000000', '340800000000');
INSERT INTO `countries` VALUES ('1127', '岳西县', '340828000000', '340800000000');
INSERT INTO `countries` VALUES ('1128', '安徽安庆经济开发区', '340871000000', '340800000000');
INSERT INTO `countries` VALUES ('1129', '桐城市', '340881000000', '340800000000');
INSERT INTO `countries` VALUES ('1130', '潜山市', '340882000000', '340800000000');
INSERT INTO `countries` VALUES ('1131', '市辖区', '341001000000', '341000000000');
INSERT INTO `countries` VALUES ('1132', '屯溪区', '341002000000', '341000000000');
INSERT INTO `countries` VALUES ('1133', '黄山区', '341003000000', '341000000000');
INSERT INTO `countries` VALUES ('1134', '徽州区', '341004000000', '341000000000');
INSERT INTO `countries` VALUES ('1135', '歙县', '341021000000', '341000000000');
INSERT INTO `countries` VALUES ('1136', '休宁县', '341022000000', '341000000000');
INSERT INTO `countries` VALUES ('1137', '黟县', '341023000000', '341000000000');
INSERT INTO `countries` VALUES ('1138', '祁门县', '341024000000', '341000000000');
INSERT INTO `countries` VALUES ('1139', '市辖区', '341101000000', '341100000000');
INSERT INTO `countries` VALUES ('1140', '琅琊区', '341102000000', '341100000000');
INSERT INTO `countries` VALUES ('1141', '南谯区', '341103000000', '341100000000');
INSERT INTO `countries` VALUES ('1142', '来安县', '341122000000', '341100000000');
INSERT INTO `countries` VALUES ('1143', '全椒县', '341124000000', '341100000000');
INSERT INTO `countries` VALUES ('1144', '定远县', '341125000000', '341100000000');
INSERT INTO `countries` VALUES ('1145', '凤阳县', '341126000000', '341100000000');
INSERT INTO `countries` VALUES ('1146', '苏滁现代产业园', '341171000000', '341100000000');
INSERT INTO `countries` VALUES ('1147', '滁州经济技术开发区', '341172000000', '341100000000');
INSERT INTO `countries` VALUES ('1148', '天长市', '341181000000', '341100000000');
INSERT INTO `countries` VALUES ('1149', '明光市', '341182000000', '341100000000');
INSERT INTO `countries` VALUES ('1150', '市辖区', '341201000000', '341200000000');
INSERT INTO `countries` VALUES ('1151', '颍州区', '341202000000', '341200000000');
INSERT INTO `countries` VALUES ('1152', '颍东区', '341203000000', '341200000000');
INSERT INTO `countries` VALUES ('1153', '颍泉区', '341204000000', '341200000000');
INSERT INTO `countries` VALUES ('1154', '临泉县', '341221000000', '341200000000');
INSERT INTO `countries` VALUES ('1155', '太和县', '341222000000', '341200000000');
INSERT INTO `countries` VALUES ('1156', '阜南县', '341225000000', '341200000000');
INSERT INTO `countries` VALUES ('1157', '颍上县', '341226000000', '341200000000');
INSERT INTO `countries` VALUES ('1158', '阜阳合肥现代产业园区', '341271000000', '341200000000');
INSERT INTO `countries` VALUES ('1159', '阜阳经济技术开发区', '341272000000', '341200000000');
INSERT INTO `countries` VALUES ('1160', '界首市', '341282000000', '341200000000');
INSERT INTO `countries` VALUES ('1161', '市辖区', '341301000000', '341300000000');
INSERT INTO `countries` VALUES ('1162', '埇桥区', '341302000000', '341300000000');
INSERT INTO `countries` VALUES ('1163', '砀山县', '341321000000', '341300000000');
INSERT INTO `countries` VALUES ('1164', '萧县', '341322000000', '341300000000');
INSERT INTO `countries` VALUES ('1165', '灵璧县', '341323000000', '341300000000');
INSERT INTO `countries` VALUES ('1166', '泗县', '341324000000', '341300000000');
INSERT INTO `countries` VALUES ('1167', '宿州马鞍山现代产业园区', '341371000000', '341300000000');
INSERT INTO `countries` VALUES ('1168', '宿州经济技术开发区', '341372000000', '341300000000');
INSERT INTO `countries` VALUES ('1169', '市辖区', '341501000000', '341500000000');
INSERT INTO `countries` VALUES ('1170', '金安区', '341502000000', '341500000000');
INSERT INTO `countries` VALUES ('1171', '裕安区', '341503000000', '341500000000');
INSERT INTO `countries` VALUES ('1172', '叶集区', '341504000000', '341500000000');
INSERT INTO `countries` VALUES ('1173', '霍邱县', '341522000000', '341500000000');
INSERT INTO `countries` VALUES ('1174', '舒城县', '341523000000', '341500000000');
INSERT INTO `countries` VALUES ('1175', '金寨县', '341524000000', '341500000000');
INSERT INTO `countries` VALUES ('1176', '霍山县', '341525000000', '341500000000');
INSERT INTO `countries` VALUES ('1177', '市辖区', '341601000000', '341600000000');
INSERT INTO `countries` VALUES ('1178', '谯城区', '341602000000', '341600000000');
INSERT INTO `countries` VALUES ('1179', '涡阳县', '341621000000', '341600000000');
INSERT INTO `countries` VALUES ('1180', '蒙城县', '341622000000', '341600000000');
INSERT INTO `countries` VALUES ('1181', '利辛县', '341623000000', '341600000000');
INSERT INTO `countries` VALUES ('1182', '市辖区', '341701000000', '341700000000');
INSERT INTO `countries` VALUES ('1183', '贵池区', '341702000000', '341700000000');
INSERT INTO `countries` VALUES ('1184', '东至县', '341721000000', '341700000000');
INSERT INTO `countries` VALUES ('1185', '石台县', '341722000000', '341700000000');
INSERT INTO `countries` VALUES ('1186', '青阳县', '341723000000', '341700000000');
INSERT INTO `countries` VALUES ('1187', '市辖区', '341801000000', '341800000000');
INSERT INTO `countries` VALUES ('1188', '宣州区', '341802000000', '341800000000');
INSERT INTO `countries` VALUES ('1189', '郎溪县', '341821000000', '341800000000');
INSERT INTO `countries` VALUES ('1190', '广德县', '341822000000', '341800000000');
INSERT INTO `countries` VALUES ('1191', '泾县', '341823000000', '341800000000');
INSERT INTO `countries` VALUES ('1192', '绩溪县', '341824000000', '341800000000');
INSERT INTO `countries` VALUES ('1193', '旌德县', '341825000000', '341800000000');
INSERT INTO `countries` VALUES ('1194', '宣城市经济开发区', '341871000000', '341800000000');
INSERT INTO `countries` VALUES ('1195', '宁国市', '341881000000', '341800000000');
INSERT INTO `countries` VALUES ('1196', '市辖区', '350101000000', '350100000000');
INSERT INTO `countries` VALUES ('1197', '鼓楼区', '350102000000', '350100000000');
INSERT INTO `countries` VALUES ('1198', '台江区', '350103000000', '350100000000');
INSERT INTO `countries` VALUES ('1199', '仓山区', '350104000000', '350100000000');
INSERT INTO `countries` VALUES ('1200', '马尾区', '350105000000', '350100000000');
INSERT INTO `countries` VALUES ('1201', '晋安区', '350111000000', '350100000000');
INSERT INTO `countries` VALUES ('1202', '长乐区', '350112000000', '350100000000');
INSERT INTO `countries` VALUES ('1203', '闽侯县', '350121000000', '350100000000');
INSERT INTO `countries` VALUES ('1204', '连江县', '350122000000', '350100000000');
INSERT INTO `countries` VALUES ('1205', '罗源县', '350123000000', '350100000000');
INSERT INTO `countries` VALUES ('1206', '闽清县', '350124000000', '350100000000');
INSERT INTO `countries` VALUES ('1207', '永泰县', '350125000000', '350100000000');
INSERT INTO `countries` VALUES ('1208', '平潭县', '350128000000', '350100000000');
INSERT INTO `countries` VALUES ('1209', '福清市', '350181000000', '350100000000');
INSERT INTO `countries` VALUES ('1210', '市辖区', '350201000000', '350200000000');
INSERT INTO `countries` VALUES ('1211', '思明区', '350203000000', '350200000000');
INSERT INTO `countries` VALUES ('1212', '海沧区', '350205000000', '350200000000');
INSERT INTO `countries` VALUES ('1213', '湖里区', '350206000000', '350200000000');
INSERT INTO `countries` VALUES ('1214', '集美区', '350211000000', '350200000000');
INSERT INTO `countries` VALUES ('1215', '同安区', '350212000000', '350200000000');
INSERT INTO `countries` VALUES ('1216', '翔安区', '350213000000', '350200000000');
INSERT INTO `countries` VALUES ('1217', '市辖区', '350301000000', '350300000000');
INSERT INTO `countries` VALUES ('1218', '城厢区', '350302000000', '350300000000');
INSERT INTO `countries` VALUES ('1219', '涵江区', '350303000000', '350300000000');
INSERT INTO `countries` VALUES ('1220', '荔城区', '350304000000', '350300000000');
INSERT INTO `countries` VALUES ('1221', '秀屿区', '350305000000', '350300000000');
INSERT INTO `countries` VALUES ('1222', '仙游县', '350322000000', '350300000000');
INSERT INTO `countries` VALUES ('1223', '市辖区', '350401000000', '350400000000');
INSERT INTO `countries` VALUES ('1224', '梅列区', '350402000000', '350400000000');
INSERT INTO `countries` VALUES ('1225', '三元区', '350403000000', '350400000000');
INSERT INTO `countries` VALUES ('1226', '明溪县', '350421000000', '350400000000');
INSERT INTO `countries` VALUES ('1227', '清流县', '350423000000', '350400000000');
INSERT INTO `countries` VALUES ('1228', '宁化县', '350424000000', '350400000000');
INSERT INTO `countries` VALUES ('1229', '大田县', '350425000000', '350400000000');
INSERT INTO `countries` VALUES ('1230', '尤溪县', '350426000000', '350400000000');
INSERT INTO `countries` VALUES ('1231', '沙县', '350427000000', '350400000000');
INSERT INTO `countries` VALUES ('1232', '将乐县', '350428000000', '350400000000');
INSERT INTO `countries` VALUES ('1233', '泰宁县', '350429000000', '350400000000');
INSERT INTO `countries` VALUES ('1234', '建宁县', '350430000000', '350400000000');
INSERT INTO `countries` VALUES ('1235', '永安市', '350481000000', '350400000000');
INSERT INTO `countries` VALUES ('1236', '市辖区', '350501000000', '350500000000');
INSERT INTO `countries` VALUES ('1237', '鲤城区', '350502000000', '350500000000');
INSERT INTO `countries` VALUES ('1238', '丰泽区', '350503000000', '350500000000');
INSERT INTO `countries` VALUES ('1239', '洛江区', '350504000000', '350500000000');
INSERT INTO `countries` VALUES ('1240', '泉港区', '350505000000', '350500000000');
INSERT INTO `countries` VALUES ('1241', '惠安县', '350521000000', '350500000000');
INSERT INTO `countries` VALUES ('1242', '安溪县', '350524000000', '350500000000');
INSERT INTO `countries` VALUES ('1243', '永春县', '350525000000', '350500000000');
INSERT INTO `countries` VALUES ('1244', '德化县', '350526000000', '350500000000');
INSERT INTO `countries` VALUES ('1245', '金门县', '350527000000', '350500000000');
INSERT INTO `countries` VALUES ('1246', '石狮市', '350581000000', '350500000000');
INSERT INTO `countries` VALUES ('1247', '晋江市', '350582000000', '350500000000');
INSERT INTO `countries` VALUES ('1248', '南安市', '350583000000', '350500000000');
INSERT INTO `countries` VALUES ('1249', '市辖区', '350601000000', '350600000000');
INSERT INTO `countries` VALUES ('1250', '芗城区', '350602000000', '350600000000');
INSERT INTO `countries` VALUES ('1251', '龙文区', '350603000000', '350600000000');
INSERT INTO `countries` VALUES ('1252', '云霄县', '350622000000', '350600000000');
INSERT INTO `countries` VALUES ('1253', '漳浦县', '350623000000', '350600000000');
INSERT INTO `countries` VALUES ('1254', '诏安县', '350624000000', '350600000000');
INSERT INTO `countries` VALUES ('1255', '长泰县', '350625000000', '350600000000');
INSERT INTO `countries` VALUES ('1256', '东山县', '350626000000', '350600000000');
INSERT INTO `countries` VALUES ('1257', '南靖县', '350627000000', '350600000000');
INSERT INTO `countries` VALUES ('1258', '平和县', '350628000000', '350600000000');
INSERT INTO `countries` VALUES ('1259', '华安县', '350629000000', '350600000000');
INSERT INTO `countries` VALUES ('1260', '龙海市', '350681000000', '350600000000');
INSERT INTO `countries` VALUES ('1261', '市辖区', '350701000000', '350700000000');
INSERT INTO `countries` VALUES ('1262', '延平区', '350702000000', '350700000000');
INSERT INTO `countries` VALUES ('1263', '建阳区', '350703000000', '350700000000');
INSERT INTO `countries` VALUES ('1264', '顺昌县', '350721000000', '350700000000');
INSERT INTO `countries` VALUES ('1265', '浦城县', '350722000000', '350700000000');
INSERT INTO `countries` VALUES ('1266', '光泽县', '350723000000', '350700000000');
INSERT INTO `countries` VALUES ('1267', '松溪县', '350724000000', '350700000000');
INSERT INTO `countries` VALUES ('1268', '政和县', '350725000000', '350700000000');
INSERT INTO `countries` VALUES ('1269', '邵武市', '350781000000', '350700000000');
INSERT INTO `countries` VALUES ('1270', '武夷山市', '350782000000', '350700000000');
INSERT INTO `countries` VALUES ('1271', '建瓯市', '350783000000', '350700000000');
INSERT INTO `countries` VALUES ('1272', '市辖区', '350801000000', '350800000000');
INSERT INTO `countries` VALUES ('1273', '新罗区', '350802000000', '350800000000');
INSERT INTO `countries` VALUES ('1274', '永定区', '350803000000', '350800000000');
INSERT INTO `countries` VALUES ('1275', '长汀县', '350821000000', '350800000000');
INSERT INTO `countries` VALUES ('1276', '上杭县', '350823000000', '350800000000');
INSERT INTO `countries` VALUES ('1277', '武平县', '350824000000', '350800000000');
INSERT INTO `countries` VALUES ('1278', '连城县', '350825000000', '350800000000');
INSERT INTO `countries` VALUES ('1279', '漳平市', '350881000000', '350800000000');
INSERT INTO `countries` VALUES ('1280', '市辖区', '350901000000', '350900000000');
INSERT INTO `countries` VALUES ('1281', '蕉城区', '350902000000', '350900000000');
INSERT INTO `countries` VALUES ('1282', '霞浦县', '350921000000', '350900000000');
INSERT INTO `countries` VALUES ('1283', '古田县', '350922000000', '350900000000');
INSERT INTO `countries` VALUES ('1284', '屏南县', '350923000000', '350900000000');
INSERT INTO `countries` VALUES ('1285', '寿宁县', '350924000000', '350900000000');
INSERT INTO `countries` VALUES ('1286', '周宁县', '350925000000', '350900000000');
INSERT INTO `countries` VALUES ('1287', '柘荣县', '350926000000', '350900000000');
INSERT INTO `countries` VALUES ('1288', '福安市', '350981000000', '350900000000');
INSERT INTO `countries` VALUES ('1289', '福鼎市', '350982000000', '350900000000');
INSERT INTO `countries` VALUES ('1290', '市辖区', '360101000000', '360100000000');
INSERT INTO `countries` VALUES ('1291', '东湖区', '360102000000', '360100000000');
INSERT INTO `countries` VALUES ('1292', '西湖区', '360103000000', '360100000000');
INSERT INTO `countries` VALUES ('1293', '青云谱区', '360104000000', '360100000000');
INSERT INTO `countries` VALUES ('1294', '湾里区', '360105000000', '360100000000');
INSERT INTO `countries` VALUES ('1295', '青山湖区', '360111000000', '360100000000');
INSERT INTO `countries` VALUES ('1296', '新建区', '360112000000', '360100000000');
INSERT INTO `countries` VALUES ('1297', '南昌县', '360121000000', '360100000000');
INSERT INTO `countries` VALUES ('1298', '安义县', '360123000000', '360100000000');
INSERT INTO `countries` VALUES ('1299', '进贤县', '360124000000', '360100000000');
INSERT INTO `countries` VALUES ('1300', '市辖区', '360201000000', '360200000000');
INSERT INTO `countries` VALUES ('1301', '昌江区', '360202000000', '360200000000');
INSERT INTO `countries` VALUES ('1302', '珠山区', '360203000000', '360200000000');
INSERT INTO `countries` VALUES ('1303', '浮梁县', '360222000000', '360200000000');
INSERT INTO `countries` VALUES ('1304', '乐平市', '360281000000', '360200000000');
INSERT INTO `countries` VALUES ('1305', '市辖区', '360301000000', '360300000000');
INSERT INTO `countries` VALUES ('1306', '安源区', '360302000000', '360300000000');
INSERT INTO `countries` VALUES ('1307', '湘东区', '360313000000', '360300000000');
INSERT INTO `countries` VALUES ('1308', '莲花县', '360321000000', '360300000000');
INSERT INTO `countries` VALUES ('1309', '上栗县', '360322000000', '360300000000');
INSERT INTO `countries` VALUES ('1310', '芦溪县', '360323000000', '360300000000');
INSERT INTO `countries` VALUES ('1311', '市辖区', '360401000000', '360400000000');
INSERT INTO `countries` VALUES ('1312', '濂溪区', '360402000000', '360400000000');
INSERT INTO `countries` VALUES ('1313', '浔阳区', '360403000000', '360400000000');
INSERT INTO `countries` VALUES ('1314', '柴桑区', '360404000000', '360400000000');
INSERT INTO `countries` VALUES ('1315', '武宁县', '360423000000', '360400000000');
INSERT INTO `countries` VALUES ('1316', '修水县', '360424000000', '360400000000');
INSERT INTO `countries` VALUES ('1317', '永修县', '360425000000', '360400000000');
INSERT INTO `countries` VALUES ('1318', '德安县', '360426000000', '360400000000');
INSERT INTO `countries` VALUES ('1319', '都昌县', '360428000000', '360400000000');
INSERT INTO `countries` VALUES ('1320', '湖口县', '360429000000', '360400000000');
INSERT INTO `countries` VALUES ('1321', '彭泽县', '360430000000', '360400000000');
INSERT INTO `countries` VALUES ('1322', '瑞昌市', '360481000000', '360400000000');
INSERT INTO `countries` VALUES ('1323', '共青城市', '360482000000', '360400000000');
INSERT INTO `countries` VALUES ('1324', '庐山市', '360483000000', '360400000000');
INSERT INTO `countries` VALUES ('1325', '市辖区', '360501000000', '360500000000');
INSERT INTO `countries` VALUES ('1326', '渝水区', '360502000000', '360500000000');
INSERT INTO `countries` VALUES ('1327', '分宜县', '360521000000', '360500000000');
INSERT INTO `countries` VALUES ('1328', '市辖区', '360601000000', '360600000000');
INSERT INTO `countries` VALUES ('1329', '月湖区', '360602000000', '360600000000');
INSERT INTO `countries` VALUES ('1330', '余江区', '360603000000', '360600000000');
INSERT INTO `countries` VALUES ('1331', '贵溪市', '360681000000', '360600000000');
INSERT INTO `countries` VALUES ('1332', '市辖区', '360701000000', '360700000000');
INSERT INTO `countries` VALUES ('1333', '章贡区', '360702000000', '360700000000');
INSERT INTO `countries` VALUES ('1334', '南康区', '360703000000', '360700000000');
INSERT INTO `countries` VALUES ('1335', '赣县区', '360704000000', '360700000000');
INSERT INTO `countries` VALUES ('1336', '信丰县', '360722000000', '360700000000');
INSERT INTO `countries` VALUES ('1337', '大余县', '360723000000', '360700000000');
INSERT INTO `countries` VALUES ('1338', '上犹县', '360724000000', '360700000000');
INSERT INTO `countries` VALUES ('1339', '崇义县', '360725000000', '360700000000');
INSERT INTO `countries` VALUES ('1340', '安远县', '360726000000', '360700000000');
INSERT INTO `countries` VALUES ('1341', '龙南县', '360727000000', '360700000000');
INSERT INTO `countries` VALUES ('1342', '定南县', '360728000000', '360700000000');
INSERT INTO `countries` VALUES ('1343', '全南县', '360729000000', '360700000000');
INSERT INTO `countries` VALUES ('1344', '宁都县', '360730000000', '360700000000');
INSERT INTO `countries` VALUES ('1345', '于都县', '360731000000', '360700000000');
INSERT INTO `countries` VALUES ('1346', '兴国县', '360732000000', '360700000000');
INSERT INTO `countries` VALUES ('1347', '会昌县', '360733000000', '360700000000');
INSERT INTO `countries` VALUES ('1348', '寻乌县', '360734000000', '360700000000');
INSERT INTO `countries` VALUES ('1349', '石城县', '360735000000', '360700000000');
INSERT INTO `countries` VALUES ('1350', '瑞金市', '360781000000', '360700000000');
INSERT INTO `countries` VALUES ('1351', '市辖区', '360801000000', '360800000000');
INSERT INTO `countries` VALUES ('1352', '吉州区', '360802000000', '360800000000');
INSERT INTO `countries` VALUES ('1353', '青原区', '360803000000', '360800000000');
INSERT INTO `countries` VALUES ('1354', '吉安县', '360821000000', '360800000000');
INSERT INTO `countries` VALUES ('1355', '吉水县', '360822000000', '360800000000');
INSERT INTO `countries` VALUES ('1356', '峡江县', '360823000000', '360800000000');
INSERT INTO `countries` VALUES ('1357', '新干县', '360824000000', '360800000000');
INSERT INTO `countries` VALUES ('1358', '永丰县', '360825000000', '360800000000');
INSERT INTO `countries` VALUES ('1359', '泰和县', '360826000000', '360800000000');
INSERT INTO `countries` VALUES ('1360', '遂川县', '360827000000', '360800000000');
INSERT INTO `countries` VALUES ('1361', '万安县', '360828000000', '360800000000');
INSERT INTO `countries` VALUES ('1362', '安福县', '360829000000', '360800000000');
INSERT INTO `countries` VALUES ('1363', '永新县', '360830000000', '360800000000');
INSERT INTO `countries` VALUES ('1364', '井冈山市', '360881000000', '360800000000');
INSERT INTO `countries` VALUES ('1365', '市辖区', '360901000000', '360900000000');
INSERT INTO `countries` VALUES ('1366', '袁州区', '360902000000', '360900000000');
INSERT INTO `countries` VALUES ('1367', '奉新县', '360921000000', '360900000000');
INSERT INTO `countries` VALUES ('1368', '万载县', '360922000000', '360900000000');
INSERT INTO `countries` VALUES ('1369', '上高县', '360923000000', '360900000000');
INSERT INTO `countries` VALUES ('1370', '宜丰县', '360924000000', '360900000000');
INSERT INTO `countries` VALUES ('1371', '靖安县', '360925000000', '360900000000');
INSERT INTO `countries` VALUES ('1372', '铜鼓县', '360926000000', '360900000000');
INSERT INTO `countries` VALUES ('1373', '丰城市', '360981000000', '360900000000');
INSERT INTO `countries` VALUES ('1374', '樟树市', '360982000000', '360900000000');
INSERT INTO `countries` VALUES ('1375', '高安市', '360983000000', '360900000000');
INSERT INTO `countries` VALUES ('1376', '市辖区', '361001000000', '361000000000');
INSERT INTO `countries` VALUES ('1377', '临川区', '361002000000', '361000000000');
INSERT INTO `countries` VALUES ('1378', '东乡区', '361003000000', '361000000000');
INSERT INTO `countries` VALUES ('1379', '南城县', '361021000000', '361000000000');
INSERT INTO `countries` VALUES ('1380', '黎川县', '361022000000', '361000000000');
INSERT INTO `countries` VALUES ('1381', '南丰县', '361023000000', '361000000000');
INSERT INTO `countries` VALUES ('1382', '崇仁县', '361024000000', '361000000000');
INSERT INTO `countries` VALUES ('1383', '乐安县', '361025000000', '361000000000');
INSERT INTO `countries` VALUES ('1384', '宜黄县', '361026000000', '361000000000');
INSERT INTO `countries` VALUES ('1385', '金溪县', '361027000000', '361000000000');
INSERT INTO `countries` VALUES ('1386', '资溪县', '361028000000', '361000000000');
INSERT INTO `countries` VALUES ('1387', '广昌县', '361030000000', '361000000000');
INSERT INTO `countries` VALUES ('1388', '市辖区', '361101000000', '361100000000');
INSERT INTO `countries` VALUES ('1389', '信州区', '361102000000', '361100000000');
INSERT INTO `countries` VALUES ('1390', '广丰区', '361103000000', '361100000000');
INSERT INTO `countries` VALUES ('1391', '上饶县', '361121000000', '361100000000');
INSERT INTO `countries` VALUES ('1392', '玉山县', '361123000000', '361100000000');
INSERT INTO `countries` VALUES ('1393', '铅山县', '361124000000', '361100000000');
INSERT INTO `countries` VALUES ('1394', '横峰县', '361125000000', '361100000000');
INSERT INTO `countries` VALUES ('1395', '弋阳县', '361126000000', '361100000000');
INSERT INTO `countries` VALUES ('1396', '余干县', '361127000000', '361100000000');
INSERT INTO `countries` VALUES ('1397', '鄱阳县', '361128000000', '361100000000');
INSERT INTO `countries` VALUES ('1398', '万年县', '361129000000', '361100000000');
INSERT INTO `countries` VALUES ('1399', '婺源县', '361130000000', '361100000000');
INSERT INTO `countries` VALUES ('1400', '德兴市', '361181000000', '361100000000');
INSERT INTO `countries` VALUES ('1401', '市辖区', '370101000000', '370100000000');
INSERT INTO `countries` VALUES ('1402', '历下区', '370102000000', '370100000000');
INSERT INTO `countries` VALUES ('1403', '市中区', '370103000000', '370100000000');
INSERT INTO `countries` VALUES ('1404', '槐荫区', '370104000000', '370100000000');
INSERT INTO `countries` VALUES ('1405', '天桥区', '370105000000', '370100000000');
INSERT INTO `countries` VALUES ('1406', '历城区', '370112000000', '370100000000');
INSERT INTO `countries` VALUES ('1407', '长清区', '370113000000', '370100000000');
INSERT INTO `countries` VALUES ('1408', '章丘区', '370114000000', '370100000000');
INSERT INTO `countries` VALUES ('1409', '济阳区', '370115000000', '370100000000');
INSERT INTO `countries` VALUES ('1410', '平阴县', '370124000000', '370100000000');
INSERT INTO `countries` VALUES ('1411', '商河县', '370126000000', '370100000000');
INSERT INTO `countries` VALUES ('1412', '济南高新技术产业开发区', '370171000000', '370100000000');
INSERT INTO `countries` VALUES ('1413', '市辖区', '370201000000', '370200000000');
INSERT INTO `countries` VALUES ('1414', '市南区', '370202000000', '370200000000');
INSERT INTO `countries` VALUES ('1415', '市北区', '370203000000', '370200000000');
INSERT INTO `countries` VALUES ('1416', '黄岛区', '370211000000', '370200000000');
INSERT INTO `countries` VALUES ('1417', '崂山区', '370212000000', '370200000000');
INSERT INTO `countries` VALUES ('1418', '李沧区', '370213000000', '370200000000');
INSERT INTO `countries` VALUES ('1419', '城阳区', '370214000000', '370200000000');
INSERT INTO `countries` VALUES ('1420', '即墨区', '370215000000', '370200000000');
INSERT INTO `countries` VALUES ('1421', '青岛高新技术产业开发区', '370271000000', '370200000000');
INSERT INTO `countries` VALUES ('1422', '胶州市', '370281000000', '370200000000');
INSERT INTO `countries` VALUES ('1423', '平度市', '370283000000', '370200000000');
INSERT INTO `countries` VALUES ('1424', '莱西市', '370285000000', '370200000000');
INSERT INTO `countries` VALUES ('1425', '市辖区', '370301000000', '370300000000');
INSERT INTO `countries` VALUES ('1426', '淄川区', '370302000000', '370300000000');
INSERT INTO `countries` VALUES ('1427', '张店区', '370303000000', '370300000000');
INSERT INTO `countries` VALUES ('1428', '博山区', '370304000000', '370300000000');
INSERT INTO `countries` VALUES ('1429', '临淄区', '370305000000', '370300000000');
INSERT INTO `countries` VALUES ('1430', '周村区', '370306000000', '370300000000');
INSERT INTO `countries` VALUES ('1431', '桓台县', '370321000000', '370300000000');
INSERT INTO `countries` VALUES ('1432', '高青县', '370322000000', '370300000000');
INSERT INTO `countries` VALUES ('1433', '沂源县', '370323000000', '370300000000');
INSERT INTO `countries` VALUES ('1434', '市辖区', '370401000000', '370400000000');
INSERT INTO `countries` VALUES ('1435', '市中区', '370402000000', '370400000000');
INSERT INTO `countries` VALUES ('1436', '薛城区', '370403000000', '370400000000');
INSERT INTO `countries` VALUES ('1437', '峄城区', '370404000000', '370400000000');
INSERT INTO `countries` VALUES ('1438', '台儿庄区', '370405000000', '370400000000');
INSERT INTO `countries` VALUES ('1439', '山亭区', '370406000000', '370400000000');
INSERT INTO `countries` VALUES ('1440', '滕州市', '370481000000', '370400000000');
INSERT INTO `countries` VALUES ('1441', '市辖区', '370501000000', '370500000000');
INSERT INTO `countries` VALUES ('1442', '东营区', '370502000000', '370500000000');
INSERT INTO `countries` VALUES ('1443', '河口区', '370503000000', '370500000000');
INSERT INTO `countries` VALUES ('1444', '垦利区', '370505000000', '370500000000');
INSERT INTO `countries` VALUES ('1445', '利津县', '370522000000', '370500000000');
INSERT INTO `countries` VALUES ('1446', '广饶县', '370523000000', '370500000000');
INSERT INTO `countries` VALUES ('1447', '东营经济技术开发区', '370571000000', '370500000000');
INSERT INTO `countries` VALUES ('1448', '东营港经济开发区', '370572000000', '370500000000');
INSERT INTO `countries` VALUES ('1449', '市辖区', '370601000000', '370600000000');
INSERT INTO `countries` VALUES ('1450', '芝罘区', '370602000000', '370600000000');
INSERT INTO `countries` VALUES ('1451', '福山区', '370611000000', '370600000000');
INSERT INTO `countries` VALUES ('1452', '牟平区', '370612000000', '370600000000');
INSERT INTO `countries` VALUES ('1453', '莱山区', '370613000000', '370600000000');
INSERT INTO `countries` VALUES ('1454', '长岛县', '370634000000', '370600000000');
INSERT INTO `countries` VALUES ('1455', '烟台高新技术产业开发区', '370671000000', '370600000000');
INSERT INTO `countries` VALUES ('1456', '烟台经济技术开发区', '370672000000', '370600000000');
INSERT INTO `countries` VALUES ('1457', '龙口市', '370681000000', '370600000000');
INSERT INTO `countries` VALUES ('1458', '莱阳市', '370682000000', '370600000000');
INSERT INTO `countries` VALUES ('1459', '莱州市', '370683000000', '370600000000');
INSERT INTO `countries` VALUES ('1460', '蓬莱市', '370684000000', '370600000000');
INSERT INTO `countries` VALUES ('1461', '招远市', '370685000000', '370600000000');
INSERT INTO `countries` VALUES ('1462', '栖霞市', '370686000000', '370600000000');
INSERT INTO `countries` VALUES ('1463', '海阳市', '370687000000', '370600000000');
INSERT INTO `countries` VALUES ('1464', '市辖区', '370701000000', '370700000000');
INSERT INTO `countries` VALUES ('1465', '潍城区', '370702000000', '370700000000');
INSERT INTO `countries` VALUES ('1466', '寒亭区', '370703000000', '370700000000');
INSERT INTO `countries` VALUES ('1467', '坊子区', '370704000000', '370700000000');
INSERT INTO `countries` VALUES ('1468', '奎文区', '370705000000', '370700000000');
INSERT INTO `countries` VALUES ('1469', '临朐县', '370724000000', '370700000000');
INSERT INTO `countries` VALUES ('1470', '昌乐县', '370725000000', '370700000000');
INSERT INTO `countries` VALUES ('1471', '潍坊滨海经济技术开发区', '370772000000', '370700000000');
INSERT INTO `countries` VALUES ('1472', '青州市', '370781000000', '370700000000');
INSERT INTO `countries` VALUES ('1473', '诸城市', '370782000000', '370700000000');
INSERT INTO `countries` VALUES ('1474', '寿光市', '370783000000', '370700000000');
INSERT INTO `countries` VALUES ('1475', '安丘市', '370784000000', '370700000000');
INSERT INTO `countries` VALUES ('1476', '高密市', '370785000000', '370700000000');
INSERT INTO `countries` VALUES ('1477', '昌邑市', '370786000000', '370700000000');
INSERT INTO `countries` VALUES ('1478', '市辖区', '370801000000', '370800000000');
INSERT INTO `countries` VALUES ('1479', '任城区', '370811000000', '370800000000');
INSERT INTO `countries` VALUES ('1480', '兖州区', '370812000000', '370800000000');
INSERT INTO `countries` VALUES ('1481', '微山县', '370826000000', '370800000000');
INSERT INTO `countries` VALUES ('1482', '鱼台县', '370827000000', '370800000000');
INSERT INTO `countries` VALUES ('1483', '金乡县', '370828000000', '370800000000');
INSERT INTO `countries` VALUES ('1484', '嘉祥县', '370829000000', '370800000000');
INSERT INTO `countries` VALUES ('1485', '汶上县', '370830000000', '370800000000');
INSERT INTO `countries` VALUES ('1486', '泗水县', '370831000000', '370800000000');
INSERT INTO `countries` VALUES ('1487', '梁山县', '370832000000', '370800000000');
INSERT INTO `countries` VALUES ('1488', '济宁高新技术产业开发区', '370871000000', '370800000000');
INSERT INTO `countries` VALUES ('1489', '曲阜市', '370881000000', '370800000000');
INSERT INTO `countries` VALUES ('1490', '邹城市', '370883000000', '370800000000');
INSERT INTO `countries` VALUES ('1491', '市辖区', '370901000000', '370900000000');
INSERT INTO `countries` VALUES ('1492', '泰山区', '370902000000', '370900000000');
INSERT INTO `countries` VALUES ('1493', '岱岳区', '370911000000', '370900000000');
INSERT INTO `countries` VALUES ('1494', '宁阳县', '370921000000', '370900000000');
INSERT INTO `countries` VALUES ('1495', '东平县', '370923000000', '370900000000');
INSERT INTO `countries` VALUES ('1496', '新泰市', '370982000000', '370900000000');
INSERT INTO `countries` VALUES ('1497', '肥城市', '370983000000', '370900000000');
INSERT INTO `countries` VALUES ('1498', '市辖区', '371001000000', '371000000000');
INSERT INTO `countries` VALUES ('1499', '环翠区', '371002000000', '371000000000');
INSERT INTO `countries` VALUES ('1500', '文登区', '371003000000', '371000000000');
INSERT INTO `countries` VALUES ('1501', '威海火炬高技术产业开发区', '371071000000', '371000000000');
INSERT INTO `countries` VALUES ('1502', '威海经济技术开发区', '371072000000', '371000000000');
INSERT INTO `countries` VALUES ('1503', '威海临港经济技术开发区', '371073000000', '371000000000');
INSERT INTO `countries` VALUES ('1504', '荣成市', '371082000000', '371000000000');
INSERT INTO `countries` VALUES ('1505', '乳山市', '371083000000', '371000000000');
INSERT INTO `countries` VALUES ('1506', '市辖区', '371101000000', '371100000000');
INSERT INTO `countries` VALUES ('1507', '东港区', '371102000000', '371100000000');
INSERT INTO `countries` VALUES ('1508', '岚山区', '371103000000', '371100000000');
INSERT INTO `countries` VALUES ('1509', '五莲县', '371121000000', '371100000000');
INSERT INTO `countries` VALUES ('1510', '莒县', '371122000000', '371100000000');
INSERT INTO `countries` VALUES ('1511', '日照经济技术开发区', '371171000000', '371100000000');
INSERT INTO `countries` VALUES ('1512', '市辖区', '371201000000', '371200000000');
INSERT INTO `countries` VALUES ('1513', '莱城区', '371202000000', '371200000000');
INSERT INTO `countries` VALUES ('1514', '钢城区', '371203000000', '371200000000');
INSERT INTO `countries` VALUES ('1515', '市辖区', '371301000000', '371300000000');
INSERT INTO `countries` VALUES ('1516', '兰山区', '371302000000', '371300000000');
INSERT INTO `countries` VALUES ('1517', '罗庄区', '371311000000', '371300000000');
INSERT INTO `countries` VALUES ('1518', '河东区', '371312000000', '371300000000');
INSERT INTO `countries` VALUES ('1519', '沂南县', '371321000000', '371300000000');
INSERT INTO `countries` VALUES ('1520', '郯城县', '371322000000', '371300000000');
INSERT INTO `countries` VALUES ('1521', '沂水县', '371323000000', '371300000000');
INSERT INTO `countries` VALUES ('1522', '兰陵县', '371324000000', '371300000000');
INSERT INTO `countries` VALUES ('1523', '费县', '371325000000', '371300000000');
INSERT INTO `countries` VALUES ('1524', '平邑县', '371326000000', '371300000000');
INSERT INTO `countries` VALUES ('1525', '莒南县', '371327000000', '371300000000');
INSERT INTO `countries` VALUES ('1526', '蒙阴县', '371328000000', '371300000000');
INSERT INTO `countries` VALUES ('1527', '临沭县', '371329000000', '371300000000');
INSERT INTO `countries` VALUES ('1528', '临沂高新技术产业开发区', '371371000000', '371300000000');
INSERT INTO `countries` VALUES ('1529', '临沂经济技术开发区', '371372000000', '371300000000');
INSERT INTO `countries` VALUES ('1530', '临沂临港经济开发区', '371373000000', '371300000000');
INSERT INTO `countries` VALUES ('1531', '市辖区', '371401000000', '371400000000');
INSERT INTO `countries` VALUES ('1532', '德城区', '371402000000', '371400000000');
INSERT INTO `countries` VALUES ('1533', '陵城区', '371403000000', '371400000000');
INSERT INTO `countries` VALUES ('1534', '宁津县', '371422000000', '371400000000');
INSERT INTO `countries` VALUES ('1535', '庆云县', '371423000000', '371400000000');
INSERT INTO `countries` VALUES ('1536', '临邑县', '371424000000', '371400000000');
INSERT INTO `countries` VALUES ('1537', '齐河县', '371425000000', '371400000000');
INSERT INTO `countries` VALUES ('1538', '平原县', '371426000000', '371400000000');
INSERT INTO `countries` VALUES ('1539', '夏津县', '371427000000', '371400000000');
INSERT INTO `countries` VALUES ('1540', '武城县', '371428000000', '371400000000');
INSERT INTO `countries` VALUES ('1541', '德州经济技术开发区', '371471000000', '371400000000');
INSERT INTO `countries` VALUES ('1542', '德州运河经济开发区', '371472000000', '371400000000');
INSERT INTO `countries` VALUES ('1543', '乐陵市', '371481000000', '371400000000');
INSERT INTO `countries` VALUES ('1544', '禹城市', '371482000000', '371400000000');
INSERT INTO `countries` VALUES ('1545', '市辖区', '371501000000', '371500000000');
INSERT INTO `countries` VALUES ('1546', '东昌府区', '371502000000', '371500000000');
INSERT INTO `countries` VALUES ('1547', '阳谷县', '371521000000', '371500000000');
INSERT INTO `countries` VALUES ('1548', '莘县', '371522000000', '371500000000');
INSERT INTO `countries` VALUES ('1549', '茌平县', '371523000000', '371500000000');
INSERT INTO `countries` VALUES ('1550', '东阿县', '371524000000', '371500000000');
INSERT INTO `countries` VALUES ('1551', '冠县', '371525000000', '371500000000');
INSERT INTO `countries` VALUES ('1552', '高唐县', '371526000000', '371500000000');
INSERT INTO `countries` VALUES ('1553', '临清市', '371581000000', '371500000000');
INSERT INTO `countries` VALUES ('1554', '市辖区', '371601000000', '371600000000');
INSERT INTO `countries` VALUES ('1555', '滨城区', '371602000000', '371600000000');
INSERT INTO `countries` VALUES ('1556', '沾化区', '371603000000', '371600000000');
INSERT INTO `countries` VALUES ('1557', '惠民县', '371621000000', '371600000000');
INSERT INTO `countries` VALUES ('1558', '阳信县', '371622000000', '371600000000');
INSERT INTO `countries` VALUES ('1559', '无棣县', '371623000000', '371600000000');
INSERT INTO `countries` VALUES ('1560', '博兴县', '371625000000', '371600000000');
INSERT INTO `countries` VALUES ('1561', '邹平市', '371681000000', '371600000000');
INSERT INTO `countries` VALUES ('1562', '市辖区', '371701000000', '371700000000');
INSERT INTO `countries` VALUES ('1563', '牡丹区', '371702000000', '371700000000');
INSERT INTO `countries` VALUES ('1564', '定陶区', '371703000000', '371700000000');
INSERT INTO `countries` VALUES ('1565', '曹县', '371721000000', '371700000000');
INSERT INTO `countries` VALUES ('1566', '单县', '371722000000', '371700000000');
INSERT INTO `countries` VALUES ('1567', '成武县', '371723000000', '371700000000');
INSERT INTO `countries` VALUES ('1568', '巨野县', '371724000000', '371700000000');
INSERT INTO `countries` VALUES ('1569', '郓城县', '371725000000', '371700000000');
INSERT INTO `countries` VALUES ('1570', '鄄城县', '371726000000', '371700000000');
INSERT INTO `countries` VALUES ('1571', '东明县', '371728000000', '371700000000');
INSERT INTO `countries` VALUES ('1572', '菏泽经济技术开发区', '371771000000', '371700000000');
INSERT INTO `countries` VALUES ('1573', '菏泽高新技术开发区', '371772000000', '371700000000');
INSERT INTO `countries` VALUES ('1574', '市辖区', '410101000000', '410100000000');
INSERT INTO `countries` VALUES ('1575', '中原区', '410102000000', '410100000000');
INSERT INTO `countries` VALUES ('1576', '二七区', '410103000000', '410100000000');
INSERT INTO `countries` VALUES ('1577', '管城回族区', '410104000000', '410100000000');
INSERT INTO `countries` VALUES ('1578', '金水区', '410105000000', '410100000000');
INSERT INTO `countries` VALUES ('1579', '上街区', '410106000000', '410100000000');
INSERT INTO `countries` VALUES ('1580', '惠济区', '410108000000', '410100000000');
INSERT INTO `countries` VALUES ('1581', '中牟县', '410122000000', '410100000000');
INSERT INTO `countries` VALUES ('1582', '郑州经济技术开发区', '410171000000', '410100000000');
INSERT INTO `countries` VALUES ('1583', '郑州高新技术产业开发区', '410172000000', '410100000000');
INSERT INTO `countries` VALUES ('1584', '郑州航空港经济综合实验区', '410173000000', '410100000000');
INSERT INTO `countries` VALUES ('1585', '巩义市', '410181000000', '410100000000');
INSERT INTO `countries` VALUES ('1586', '荥阳市', '410182000000', '410100000000');
INSERT INTO `countries` VALUES ('1587', '新密市', '410183000000', '410100000000');
INSERT INTO `countries` VALUES ('1588', '新郑市', '410184000000', '410100000000');
INSERT INTO `countries` VALUES ('1589', '登封市', '410185000000', '410100000000');
INSERT INTO `countries` VALUES ('1590', '市辖区', '410201000000', '410200000000');
INSERT INTO `countries` VALUES ('1591', '龙亭区', '410202000000', '410200000000');
INSERT INTO `countries` VALUES ('1592', '顺河回族区', '410203000000', '410200000000');
INSERT INTO `countries` VALUES ('1593', '鼓楼区', '410204000000', '410200000000');
INSERT INTO `countries` VALUES ('1594', '禹王台区', '410205000000', '410200000000');
INSERT INTO `countries` VALUES ('1595', '祥符区', '410212000000', '410200000000');
INSERT INTO `countries` VALUES ('1596', '杞县', '410221000000', '410200000000');
INSERT INTO `countries` VALUES ('1597', '通许县', '410222000000', '410200000000');
INSERT INTO `countries` VALUES ('1598', '尉氏县', '410223000000', '410200000000');
INSERT INTO `countries` VALUES ('1599', '兰考县', '410225000000', '410200000000');
INSERT INTO `countries` VALUES ('1600', '市辖区', '410301000000', '410300000000');
INSERT INTO `countries` VALUES ('1601', '老城区', '410302000000', '410300000000');
INSERT INTO `countries` VALUES ('1602', '西工区', '410303000000', '410300000000');
INSERT INTO `countries` VALUES ('1603', '瀍河回族区', '410304000000', '410300000000');
INSERT INTO `countries` VALUES ('1604', '涧西区', '410305000000', '410300000000');
INSERT INTO `countries` VALUES ('1605', '吉利区', '410306000000', '410300000000');
INSERT INTO `countries` VALUES ('1606', '洛龙区', '410311000000', '410300000000');
INSERT INTO `countries` VALUES ('1607', '孟津县', '410322000000', '410300000000');
INSERT INTO `countries` VALUES ('1608', '新安县', '410323000000', '410300000000');
INSERT INTO `countries` VALUES ('1609', '栾川县', '410324000000', '410300000000');
INSERT INTO `countries` VALUES ('1610', '嵩县', '410325000000', '410300000000');
INSERT INTO `countries` VALUES ('1611', '汝阳县', '410326000000', '410300000000');
INSERT INTO `countries` VALUES ('1612', '宜阳县', '410327000000', '410300000000');
INSERT INTO `countries` VALUES ('1613', '洛宁县', '410328000000', '410300000000');
INSERT INTO `countries` VALUES ('1614', '伊川县', '410329000000', '410300000000');
INSERT INTO `countries` VALUES ('1615', '洛阳高新技术产业开发区', '410371000000', '410300000000');
INSERT INTO `countries` VALUES ('1616', '偃师市', '410381000000', '410300000000');
INSERT INTO `countries` VALUES ('1617', '市辖区', '410401000000', '410400000000');
INSERT INTO `countries` VALUES ('1618', '新华区', '410402000000', '410400000000');
INSERT INTO `countries` VALUES ('1619', '卫东区', '410403000000', '410400000000');
INSERT INTO `countries` VALUES ('1620', '石龙区', '410404000000', '410400000000');
INSERT INTO `countries` VALUES ('1621', '湛河区', '410411000000', '410400000000');
INSERT INTO `countries` VALUES ('1622', '宝丰县', '410421000000', '410400000000');
INSERT INTO `countries` VALUES ('1623', '叶县', '410422000000', '410400000000');
INSERT INTO `countries` VALUES ('1624', '鲁山县', '410423000000', '410400000000');
INSERT INTO `countries` VALUES ('1625', '郏县', '410425000000', '410400000000');
INSERT INTO `countries` VALUES ('1626', '平顶山高新技术产业开发区', '410471000000', '410400000000');
INSERT INTO `countries` VALUES ('1627', '平顶山市新城区', '410472000000', '410400000000');
INSERT INTO `countries` VALUES ('1628', '舞钢市', '410481000000', '410400000000');
INSERT INTO `countries` VALUES ('1629', '汝州市', '410482000000', '410400000000');
INSERT INTO `countries` VALUES ('1630', '市辖区', '410501000000', '410500000000');
INSERT INTO `countries` VALUES ('1631', '文峰区', '410502000000', '410500000000');
INSERT INTO `countries` VALUES ('1632', '北关区', '410503000000', '410500000000');
INSERT INTO `countries` VALUES ('1633', '殷都区', '410505000000', '410500000000');
INSERT INTO `countries` VALUES ('1634', '龙安区', '410506000000', '410500000000');
INSERT INTO `countries` VALUES ('1635', '安阳县', '410522000000', '410500000000');
INSERT INTO `countries` VALUES ('1636', '汤阴县', '410523000000', '410500000000');
INSERT INTO `countries` VALUES ('1637', '滑县', '410526000000', '410500000000');
INSERT INTO `countries` VALUES ('1638', '内黄县', '410527000000', '410500000000');
INSERT INTO `countries` VALUES ('1639', '安阳高新技术产业开发区', '410571000000', '410500000000');
INSERT INTO `countries` VALUES ('1640', '林州市', '410581000000', '410500000000');
INSERT INTO `countries` VALUES ('1641', '市辖区', '410601000000', '410600000000');
INSERT INTO `countries` VALUES ('1642', '鹤山区', '410602000000', '410600000000');
INSERT INTO `countries` VALUES ('1643', '山城区', '410603000000', '410600000000');
INSERT INTO `countries` VALUES ('1644', '淇滨区', '410611000000', '410600000000');
INSERT INTO `countries` VALUES ('1645', '浚县', '410621000000', '410600000000');
INSERT INTO `countries` VALUES ('1646', '淇县', '410622000000', '410600000000');
INSERT INTO `countries` VALUES ('1647', '鹤壁经济技术开发区', '410671000000', '410600000000');
INSERT INTO `countries` VALUES ('1648', '市辖区', '410701000000', '410700000000');
INSERT INTO `countries` VALUES ('1649', '红旗区', '410702000000', '410700000000');
INSERT INTO `countries` VALUES ('1650', '卫滨区', '410703000000', '410700000000');
INSERT INTO `countries` VALUES ('1651', '凤泉区', '410704000000', '410700000000');
INSERT INTO `countries` VALUES ('1652', '牧野区', '410711000000', '410700000000');
INSERT INTO `countries` VALUES ('1653', '新乡县', '410721000000', '410700000000');
INSERT INTO `countries` VALUES ('1654', '获嘉县', '410724000000', '410700000000');
INSERT INTO `countries` VALUES ('1655', '原阳县', '410725000000', '410700000000');
INSERT INTO `countries` VALUES ('1656', '延津县', '410726000000', '410700000000');
INSERT INTO `countries` VALUES ('1657', '封丘县', '410727000000', '410700000000');
INSERT INTO `countries` VALUES ('1658', '长垣县', '410728000000', '410700000000');
INSERT INTO `countries` VALUES ('1659', '新乡高新技术产业开发区', '410771000000', '410700000000');
INSERT INTO `countries` VALUES ('1660', '新乡经济技术开发区', '410772000000', '410700000000');
INSERT INTO `countries` VALUES ('1661', '新乡市平原城乡一体化示范区', '410773000000', '410700000000');
INSERT INTO `countries` VALUES ('1662', '卫辉市', '410781000000', '410700000000');
INSERT INTO `countries` VALUES ('1663', '辉县市', '410782000000', '410700000000');
INSERT INTO `countries` VALUES ('1664', '市辖区', '410801000000', '410800000000');
INSERT INTO `countries` VALUES ('1665', '解放区', '410802000000', '410800000000');
INSERT INTO `countries` VALUES ('1666', '中站区', '410803000000', '410800000000');
INSERT INTO `countries` VALUES ('1667', '马村区', '410804000000', '410800000000');
INSERT INTO `countries` VALUES ('1668', '山阳区', '410811000000', '410800000000');
INSERT INTO `countries` VALUES ('1669', '修武县', '410821000000', '410800000000');
INSERT INTO `countries` VALUES ('1670', '博爱县', '410822000000', '410800000000');
INSERT INTO `countries` VALUES ('1671', '武陟县', '410823000000', '410800000000');
INSERT INTO `countries` VALUES ('1672', '温县', '410825000000', '410800000000');
INSERT INTO `countries` VALUES ('1673', '焦作城乡一体化示范区', '410871000000', '410800000000');
INSERT INTO `countries` VALUES ('1674', '沁阳市', '410882000000', '410800000000');
INSERT INTO `countries` VALUES ('1675', '孟州市', '410883000000', '410800000000');
INSERT INTO `countries` VALUES ('1676', '市辖区', '410901000000', '410900000000');
INSERT INTO `countries` VALUES ('1677', '华龙区', '410902000000', '410900000000');
INSERT INTO `countries` VALUES ('1678', '清丰县', '410922000000', '410900000000');
INSERT INTO `countries` VALUES ('1679', '南乐县', '410923000000', '410900000000');
INSERT INTO `countries` VALUES ('1680', '范县', '410926000000', '410900000000');
INSERT INTO `countries` VALUES ('1681', '台前县', '410927000000', '410900000000');
INSERT INTO `countries` VALUES ('1682', '濮阳县', '410928000000', '410900000000');
INSERT INTO `countries` VALUES ('1683', '河南濮阳工业园区', '410971000000', '410900000000');
INSERT INTO `countries` VALUES ('1684', '濮阳经济技术开发区', '410972000000', '410900000000');
INSERT INTO `countries` VALUES ('1685', '市辖区', '411001000000', '411000000000');
INSERT INTO `countries` VALUES ('1686', '魏都区', '411002000000', '411000000000');
INSERT INTO `countries` VALUES ('1687', '建安区', '411003000000', '411000000000');
INSERT INTO `countries` VALUES ('1688', '鄢陵县', '411024000000', '411000000000');
INSERT INTO `countries` VALUES ('1689', '襄城县', '411025000000', '411000000000');
INSERT INTO `countries` VALUES ('1690', '许昌经济技术开发区', '411071000000', '411000000000');
INSERT INTO `countries` VALUES ('1691', '禹州市', '411081000000', '411000000000');
INSERT INTO `countries` VALUES ('1692', '长葛市', '411082000000', '411000000000');
INSERT INTO `countries` VALUES ('1693', '市辖区', '411101000000', '411100000000');
INSERT INTO `countries` VALUES ('1694', '源汇区', '411102000000', '411100000000');
INSERT INTO `countries` VALUES ('1695', '郾城区', '411103000000', '411100000000');
INSERT INTO `countries` VALUES ('1696', '召陵区', '411104000000', '411100000000');
INSERT INTO `countries` VALUES ('1697', '舞阳县', '411121000000', '411100000000');
INSERT INTO `countries` VALUES ('1698', '临颍县', '411122000000', '411100000000');
INSERT INTO `countries` VALUES ('1699', '漯河经济技术开发区', '411171000000', '411100000000');
INSERT INTO `countries` VALUES ('1700', '市辖区', '411201000000', '411200000000');
INSERT INTO `countries` VALUES ('1701', '湖滨区', '411202000000', '411200000000');
INSERT INTO `countries` VALUES ('1702', '陕州区', '411203000000', '411200000000');
INSERT INTO `countries` VALUES ('1703', '渑池县', '411221000000', '411200000000');
INSERT INTO `countries` VALUES ('1704', '卢氏县', '411224000000', '411200000000');
INSERT INTO `countries` VALUES ('1705', '河南三门峡经济开发区', '411271000000', '411200000000');
INSERT INTO `countries` VALUES ('1706', '义马市', '411281000000', '411200000000');
INSERT INTO `countries` VALUES ('1707', '灵宝市', '411282000000', '411200000000');
INSERT INTO `countries` VALUES ('1708', '市辖区', '411301000000', '411300000000');
INSERT INTO `countries` VALUES ('1709', '宛城区', '411302000000', '411300000000');
INSERT INTO `countries` VALUES ('1710', '卧龙区', '411303000000', '411300000000');
INSERT INTO `countries` VALUES ('1711', '南召县', '411321000000', '411300000000');
INSERT INTO `countries` VALUES ('1712', '方城县', '411322000000', '411300000000');
INSERT INTO `countries` VALUES ('1713', '西峡县', '411323000000', '411300000000');
INSERT INTO `countries` VALUES ('1714', '镇平县', '411324000000', '411300000000');
INSERT INTO `countries` VALUES ('1715', '内乡县', '411325000000', '411300000000');
INSERT INTO `countries` VALUES ('1716', '淅川县', '411326000000', '411300000000');
INSERT INTO `countries` VALUES ('1717', '社旗县', '411327000000', '411300000000');
INSERT INTO `countries` VALUES ('1718', '唐河县', '411328000000', '411300000000');
INSERT INTO `countries` VALUES ('1719', '新野县', '411329000000', '411300000000');
INSERT INTO `countries` VALUES ('1720', '桐柏县', '411330000000', '411300000000');
INSERT INTO `countries` VALUES ('1721', '南阳高新技术产业开发区', '411371000000', '411300000000');
INSERT INTO `countries` VALUES ('1722', '南阳市城乡一体化示范区', '411372000000', '411300000000');
INSERT INTO `countries` VALUES ('1723', '邓州市', '411381000000', '411300000000');
INSERT INTO `countries` VALUES ('1724', '市辖区', '411401000000', '411400000000');
INSERT INTO `countries` VALUES ('1725', '梁园区', '411402000000', '411400000000');
INSERT INTO `countries` VALUES ('1726', '睢阳区', '411403000000', '411400000000');
INSERT INTO `countries` VALUES ('1727', '民权县', '411421000000', '411400000000');
INSERT INTO `countries` VALUES ('1728', '睢县', '411422000000', '411400000000');
INSERT INTO `countries` VALUES ('1729', '宁陵县', '411423000000', '411400000000');
INSERT INTO `countries` VALUES ('1730', '柘城县', '411424000000', '411400000000');
INSERT INTO `countries` VALUES ('1731', '虞城县', '411425000000', '411400000000');
INSERT INTO `countries` VALUES ('1732', '夏邑县', '411426000000', '411400000000');
INSERT INTO `countries` VALUES ('1733', '豫东综合物流产业聚集区', '411471000000', '411400000000');
INSERT INTO `countries` VALUES ('1734', '河南商丘经济开发区', '411472000000', '411400000000');
INSERT INTO `countries` VALUES ('1735', '永城市', '411481000000', '411400000000');
INSERT INTO `countries` VALUES ('1736', '市辖区', '411501000000', '411500000000');
INSERT INTO `countries` VALUES ('1737', '浉河区', '411502000000', '411500000000');
INSERT INTO `countries` VALUES ('1738', '平桥区', '411503000000', '411500000000');
INSERT INTO `countries` VALUES ('1739', '罗山县', '411521000000', '411500000000');
INSERT INTO `countries` VALUES ('1740', '光山县', '411522000000', '411500000000');
INSERT INTO `countries` VALUES ('1741', '新县', '411523000000', '411500000000');
INSERT INTO `countries` VALUES ('1742', '商城县', '411524000000', '411500000000');
INSERT INTO `countries` VALUES ('1743', '固始县', '411525000000', '411500000000');
INSERT INTO `countries` VALUES ('1744', '潢川县', '411526000000', '411500000000');
INSERT INTO `countries` VALUES ('1745', '淮滨县', '411527000000', '411500000000');
INSERT INTO `countries` VALUES ('1746', '息县', '411528000000', '411500000000');
INSERT INTO `countries` VALUES ('1747', '信阳高新技术产业开发区', '411571000000', '411500000000');
INSERT INTO `countries` VALUES ('1748', '市辖区', '411601000000', '411600000000');
INSERT INTO `countries` VALUES ('1749', '川汇区', '411602000000', '411600000000');
INSERT INTO `countries` VALUES ('1750', '扶沟县', '411621000000', '411600000000');
INSERT INTO `countries` VALUES ('1751', '西华县', '411622000000', '411600000000');
INSERT INTO `countries` VALUES ('1752', '商水县', '411623000000', '411600000000');
INSERT INTO `countries` VALUES ('1753', '沈丘县', '411624000000', '411600000000');
INSERT INTO `countries` VALUES ('1754', '郸城县', '411625000000', '411600000000');
INSERT INTO `countries` VALUES ('1755', '淮阳县', '411626000000', '411600000000');
INSERT INTO `countries` VALUES ('1756', '太康县', '411627000000', '411600000000');
INSERT INTO `countries` VALUES ('1757', '鹿邑县', '411628000000', '411600000000');
INSERT INTO `countries` VALUES ('1758', '河南周口经济开发区', '411671000000', '411600000000');
INSERT INTO `countries` VALUES ('1759', '项城市', '411681000000', '411600000000');
INSERT INTO `countries` VALUES ('1760', '市辖区', '411701000000', '411700000000');
INSERT INTO `countries` VALUES ('1761', '驿城区', '411702000000', '411700000000');
INSERT INTO `countries` VALUES ('1762', '西平县', '411721000000', '411700000000');
INSERT INTO `countries` VALUES ('1763', '上蔡县', '411722000000', '411700000000');
INSERT INTO `countries` VALUES ('1764', '平舆县', '411723000000', '411700000000');
INSERT INTO `countries` VALUES ('1765', '正阳县', '411724000000', '411700000000');
INSERT INTO `countries` VALUES ('1766', '确山县', '411725000000', '411700000000');
INSERT INTO `countries` VALUES ('1767', '泌阳县', '411726000000', '411700000000');
INSERT INTO `countries` VALUES ('1768', '汝南县', '411727000000', '411700000000');
INSERT INTO `countries` VALUES ('1769', '遂平县', '411728000000', '411700000000');
INSERT INTO `countries` VALUES ('1770', '新蔡县', '411729000000', '411700000000');
INSERT INTO `countries` VALUES ('1771', '河南驻马店经济开发区', '411771000000', '411700000000');
INSERT INTO `countries` VALUES ('1772', '济源市', '419001000000', '419000000000');
INSERT INTO `countries` VALUES ('1773', '市辖区', '420101000000', '420100000000');
INSERT INTO `countries` VALUES ('1774', '江岸区', '420102000000', '420100000000');
INSERT INTO `countries` VALUES ('1775', '江汉区', '420103000000', '420100000000');
INSERT INTO `countries` VALUES ('1776', '硚口区', '420104000000', '420100000000');
INSERT INTO `countries` VALUES ('1777', '汉阳区', '420105000000', '420100000000');
INSERT INTO `countries` VALUES ('1778', '武昌区', '420106000000', '420100000000');
INSERT INTO `countries` VALUES ('1779', '青山区', '420107000000', '420100000000');
INSERT INTO `countries` VALUES ('1780', '洪山区', '420111000000', '420100000000');
INSERT INTO `countries` VALUES ('1781', '东西湖区', '420112000000', '420100000000');
INSERT INTO `countries` VALUES ('1782', '汉南区', '420113000000', '420100000000');
INSERT INTO `countries` VALUES ('1783', '蔡甸区', '420114000000', '420100000000');
INSERT INTO `countries` VALUES ('1784', '江夏区', '420115000000', '420100000000');
INSERT INTO `countries` VALUES ('1785', '黄陂区', '420116000000', '420100000000');
INSERT INTO `countries` VALUES ('1786', '新洲区', '420117000000', '420100000000');
INSERT INTO `countries` VALUES ('1787', '市辖区', '420201000000', '420200000000');
INSERT INTO `countries` VALUES ('1788', '黄石港区', '420202000000', '420200000000');
INSERT INTO `countries` VALUES ('1789', '西塞山区', '420203000000', '420200000000');
INSERT INTO `countries` VALUES ('1790', '下陆区', '420204000000', '420200000000');
INSERT INTO `countries` VALUES ('1791', '铁山区', '420205000000', '420200000000');
INSERT INTO `countries` VALUES ('1792', '阳新县', '420222000000', '420200000000');
INSERT INTO `countries` VALUES ('1793', '大冶市', '420281000000', '420200000000');
INSERT INTO `countries` VALUES ('1794', '市辖区', '420301000000', '420300000000');
INSERT INTO `countries` VALUES ('1795', '茅箭区', '420302000000', '420300000000');
INSERT INTO `countries` VALUES ('1796', '张湾区', '420303000000', '420300000000');
INSERT INTO `countries` VALUES ('1797', '郧阳区', '420304000000', '420300000000');
INSERT INTO `countries` VALUES ('1798', '郧西县', '420322000000', '420300000000');
INSERT INTO `countries` VALUES ('1799', '竹山县', '420323000000', '420300000000');
INSERT INTO `countries` VALUES ('1800', '竹溪县', '420324000000', '420300000000');
INSERT INTO `countries` VALUES ('1801', '房县', '420325000000', '420300000000');
INSERT INTO `countries` VALUES ('1802', '丹江口市', '420381000000', '420300000000');
INSERT INTO `countries` VALUES ('1803', '市辖区', '420501000000', '420500000000');
INSERT INTO `countries` VALUES ('1804', '西陵区', '420502000000', '420500000000');
INSERT INTO `countries` VALUES ('1805', '伍家岗区', '420503000000', '420500000000');
INSERT INTO `countries` VALUES ('1806', '点军区', '420504000000', '420500000000');
INSERT INTO `countries` VALUES ('1807', '猇亭区', '420505000000', '420500000000');
INSERT INTO `countries` VALUES ('1808', '夷陵区', '420506000000', '420500000000');
INSERT INTO `countries` VALUES ('1809', '远安县', '420525000000', '420500000000');
INSERT INTO `countries` VALUES ('1810', '兴山县', '420526000000', '420500000000');
INSERT INTO `countries` VALUES ('1811', '秭归县', '420527000000', '420500000000');
INSERT INTO `countries` VALUES ('1812', '长阳土家族自治县', '420528000000', '420500000000');
INSERT INTO `countries` VALUES ('1813', '五峰土家族自治县', '420529000000', '420500000000');
INSERT INTO `countries` VALUES ('1814', '宜都市', '420581000000', '420500000000');
INSERT INTO `countries` VALUES ('1815', '当阳市', '420582000000', '420500000000');
INSERT INTO `countries` VALUES ('1816', '枝江市', '420583000000', '420500000000');
INSERT INTO `countries` VALUES ('1817', '市辖区', '420601000000', '420600000000');
INSERT INTO `countries` VALUES ('1818', '襄城区', '420602000000', '420600000000');
INSERT INTO `countries` VALUES ('1819', '樊城区', '420606000000', '420600000000');
INSERT INTO `countries` VALUES ('1820', '襄州区', '420607000000', '420600000000');
INSERT INTO `countries` VALUES ('1821', '南漳县', '420624000000', '420600000000');
INSERT INTO `countries` VALUES ('1822', '谷城县', '420625000000', '420600000000');
INSERT INTO `countries` VALUES ('1823', '保康县', '420626000000', '420600000000');
INSERT INTO `countries` VALUES ('1824', '老河口市', '420682000000', '420600000000');
INSERT INTO `countries` VALUES ('1825', '枣阳市', '420683000000', '420600000000');
INSERT INTO `countries` VALUES ('1826', '宜城市', '420684000000', '420600000000');
INSERT INTO `countries` VALUES ('1827', '市辖区', '420701000000', '420700000000');
INSERT INTO `countries` VALUES ('1828', '梁子湖区', '420702000000', '420700000000');
INSERT INTO `countries` VALUES ('1829', '华容区', '420703000000', '420700000000');
INSERT INTO `countries` VALUES ('1830', '鄂城区', '420704000000', '420700000000');
INSERT INTO `countries` VALUES ('1831', '市辖区', '420801000000', '420800000000');
INSERT INTO `countries` VALUES ('1832', '东宝区', '420802000000', '420800000000');
INSERT INTO `countries` VALUES ('1833', '掇刀区', '420804000000', '420800000000');
INSERT INTO `countries` VALUES ('1834', '沙洋县', '420822000000', '420800000000');
INSERT INTO `countries` VALUES ('1835', '钟祥市', '420881000000', '420800000000');
INSERT INTO `countries` VALUES ('1836', '京山市', '420882000000', '420800000000');
INSERT INTO `countries` VALUES ('1837', '市辖区', '420901000000', '420900000000');
INSERT INTO `countries` VALUES ('1838', '孝南区', '420902000000', '420900000000');
INSERT INTO `countries` VALUES ('1839', '孝昌县', '420921000000', '420900000000');
INSERT INTO `countries` VALUES ('1840', '大悟县', '420922000000', '420900000000');
INSERT INTO `countries` VALUES ('1841', '云梦县', '420923000000', '420900000000');
INSERT INTO `countries` VALUES ('1842', '应城市', '420981000000', '420900000000');
INSERT INTO `countries` VALUES ('1843', '安陆市', '420982000000', '420900000000');
INSERT INTO `countries` VALUES ('1844', '汉川市', '420984000000', '420900000000');
INSERT INTO `countries` VALUES ('1845', '市辖区', '421001000000', '421000000000');
INSERT INTO `countries` VALUES ('1846', '沙市区', '421002000000', '421000000000');
INSERT INTO `countries` VALUES ('1847', '荆州区', '421003000000', '421000000000');
INSERT INTO `countries` VALUES ('1848', '公安县', '421022000000', '421000000000');
INSERT INTO `countries` VALUES ('1849', '监利县', '421023000000', '421000000000');
INSERT INTO `countries` VALUES ('1850', '江陵县', '421024000000', '421000000000');
INSERT INTO `countries` VALUES ('1851', '荆州经济技术开发区', '421071000000', '421000000000');
INSERT INTO `countries` VALUES ('1852', '石首市', '421081000000', '421000000000');
INSERT INTO `countries` VALUES ('1853', '洪湖市', '421083000000', '421000000000');
INSERT INTO `countries` VALUES ('1854', '松滋市', '421087000000', '421000000000');
INSERT INTO `countries` VALUES ('1855', '市辖区', '421101000000', '421100000000');
INSERT INTO `countries` VALUES ('1856', '黄州区', '421102000000', '421100000000');
INSERT INTO `countries` VALUES ('1857', '团风县', '421121000000', '421100000000');
INSERT INTO `countries` VALUES ('1858', '红安县', '421122000000', '421100000000');
INSERT INTO `countries` VALUES ('1859', '罗田县', '421123000000', '421100000000');
INSERT INTO `countries` VALUES ('1860', '英山县', '421124000000', '421100000000');
INSERT INTO `countries` VALUES ('1861', '浠水县', '421125000000', '421100000000');
INSERT INTO `countries` VALUES ('1862', '蕲春县', '421126000000', '421100000000');
INSERT INTO `countries` VALUES ('1863', '黄梅县', '421127000000', '421100000000');
INSERT INTO `countries` VALUES ('1864', '龙感湖管理区', '421171000000', '421100000000');
INSERT INTO `countries` VALUES ('1865', '麻城市', '421181000000', '421100000000');
INSERT INTO `countries` VALUES ('1866', '武穴市', '421182000000', '421100000000');
INSERT INTO `countries` VALUES ('1867', '市辖区', '421201000000', '421200000000');
INSERT INTO `countries` VALUES ('1868', '咸安区', '421202000000', '421200000000');
INSERT INTO `countries` VALUES ('1869', '嘉鱼县', '421221000000', '421200000000');
INSERT INTO `countries` VALUES ('1870', '通城县', '421222000000', '421200000000');
INSERT INTO `countries` VALUES ('1871', '崇阳县', '421223000000', '421200000000');
INSERT INTO `countries` VALUES ('1872', '通山县', '421224000000', '421200000000');
INSERT INTO `countries` VALUES ('1873', '赤壁市', '421281000000', '421200000000');
INSERT INTO `countries` VALUES ('1874', '市辖区', '421301000000', '421300000000');
INSERT INTO `countries` VALUES ('1875', '曾都区', '421303000000', '421300000000');
INSERT INTO `countries` VALUES ('1876', '随县', '421321000000', '421300000000');
INSERT INTO `countries` VALUES ('1877', '广水市', '421381000000', '421300000000');
INSERT INTO `countries` VALUES ('1878', '恩施市', '422801000000', '422800000000');
INSERT INTO `countries` VALUES ('1879', '利川市', '422802000000', '422800000000');
INSERT INTO `countries` VALUES ('1880', '建始县', '422822000000', '422800000000');
INSERT INTO `countries` VALUES ('1881', '巴东县', '422823000000', '422800000000');
INSERT INTO `countries` VALUES ('1882', '宣恩县', '422825000000', '422800000000');
INSERT INTO `countries` VALUES ('1883', '咸丰县', '422826000000', '422800000000');
INSERT INTO `countries` VALUES ('1884', '来凤县', '422827000000', '422800000000');
INSERT INTO `countries` VALUES ('1885', '鹤峰县', '422828000000', '422800000000');
INSERT INTO `countries` VALUES ('1886', '仙桃市', '429004000000', '429000000000');
INSERT INTO `countries` VALUES ('1887', '潜江市', '429005000000', '429000000000');
INSERT INTO `countries` VALUES ('1888', '天门市', '429006000000', '429000000000');
INSERT INTO `countries` VALUES ('1889', '神农架林区', '429021000000', '429000000000');
INSERT INTO `countries` VALUES ('1890', '市辖区', '430101000000', '430100000000');
INSERT INTO `countries` VALUES ('1891', '芙蓉区', '430102000000', '430100000000');
INSERT INTO `countries` VALUES ('1892', '天心区', '430103000000', '430100000000');
INSERT INTO `countries` VALUES ('1893', '岳麓区', '430104000000', '430100000000');
INSERT INTO `countries` VALUES ('1894', '开福区', '430105000000', '430100000000');
INSERT INTO `countries` VALUES ('1895', '雨花区', '430111000000', '430100000000');
INSERT INTO `countries` VALUES ('1896', '望城区', '430112000000', '430100000000');
INSERT INTO `countries` VALUES ('1897', '长沙县', '430121000000', '430100000000');
INSERT INTO `countries` VALUES ('1898', '浏阳市', '430181000000', '430100000000');
INSERT INTO `countries` VALUES ('1899', '宁乡市', '430182000000', '430100000000');
INSERT INTO `countries` VALUES ('1900', '市辖区', '430201000000', '430200000000');
INSERT INTO `countries` VALUES ('1901', '荷塘区', '430202000000', '430200000000');
INSERT INTO `countries` VALUES ('1902', '芦淞区', '430203000000', '430200000000');
INSERT INTO `countries` VALUES ('1903', '石峰区', '430204000000', '430200000000');
INSERT INTO `countries` VALUES ('1904', '天元区', '430211000000', '430200000000');
INSERT INTO `countries` VALUES ('1905', '渌口区', '430212000000', '430200000000');
INSERT INTO `countries` VALUES ('1906', '攸县', '430223000000', '430200000000');
INSERT INTO `countries` VALUES ('1907', '茶陵县', '430224000000', '430200000000');
INSERT INTO `countries` VALUES ('1908', '炎陵县', '430225000000', '430200000000');
INSERT INTO `countries` VALUES ('1909', '云龙示范区', '430271000000', '430200000000');
INSERT INTO `countries` VALUES ('1910', '醴陵市', '430281000000', '430200000000');
INSERT INTO `countries` VALUES ('1911', '市辖区', '430301000000', '430300000000');
INSERT INTO `countries` VALUES ('1912', '雨湖区', '430302000000', '430300000000');
INSERT INTO `countries` VALUES ('1913', '岳塘区', '430304000000', '430300000000');
INSERT INTO `countries` VALUES ('1914', '湘潭县', '430321000000', '430300000000');
INSERT INTO `countries` VALUES ('1915', '湖南湘潭高新技术产业园区', '430371000000', '430300000000');
INSERT INTO `countries` VALUES ('1916', '湘潭昭山示范区', '430372000000', '430300000000');
INSERT INTO `countries` VALUES ('1917', '湘潭九华示范区', '430373000000', '430300000000');
INSERT INTO `countries` VALUES ('1918', '湘乡市', '430381000000', '430300000000');
INSERT INTO `countries` VALUES ('1919', '韶山市', '430382000000', '430300000000');
INSERT INTO `countries` VALUES ('1920', '市辖区', '430401000000', '430400000000');
INSERT INTO `countries` VALUES ('1921', '珠晖区', '430405000000', '430400000000');
INSERT INTO `countries` VALUES ('1922', '雁峰区', '430406000000', '430400000000');
INSERT INTO `countries` VALUES ('1923', '石鼓区', '430407000000', '430400000000');
INSERT INTO `countries` VALUES ('1924', '蒸湘区', '430408000000', '430400000000');
INSERT INTO `countries` VALUES ('1925', '南岳区', '430412000000', '430400000000');
INSERT INTO `countries` VALUES ('1926', '衡阳县', '430421000000', '430400000000');
INSERT INTO `countries` VALUES ('1927', '衡南县', '430422000000', '430400000000');
INSERT INTO `countries` VALUES ('1928', '衡山县', '430423000000', '430400000000');
INSERT INTO `countries` VALUES ('1929', '衡东县', '430424000000', '430400000000');
INSERT INTO `countries` VALUES ('1930', '祁东县', '430426000000', '430400000000');
INSERT INTO `countries` VALUES ('1931', '衡阳综合保税区', '430471000000', '430400000000');
INSERT INTO `countries` VALUES ('1932', '湖南衡阳高新技术产业园区', '430472000000', '430400000000');
INSERT INTO `countries` VALUES ('1933', '湖南衡阳松木经济开发区', '430473000000', '430400000000');
INSERT INTO `countries` VALUES ('1934', '耒阳市', '430481000000', '430400000000');
INSERT INTO `countries` VALUES ('1935', '常宁市', '430482000000', '430400000000');
INSERT INTO `countries` VALUES ('1936', '市辖区', '430501000000', '430500000000');
INSERT INTO `countries` VALUES ('1937', '双清区', '430502000000', '430500000000');
INSERT INTO `countries` VALUES ('1938', '大祥区', '430503000000', '430500000000');
INSERT INTO `countries` VALUES ('1939', '北塔区', '430511000000', '430500000000');
INSERT INTO `countries` VALUES ('1940', '邵东县', '430521000000', '430500000000');
INSERT INTO `countries` VALUES ('1941', '新邵县', '430522000000', '430500000000');
INSERT INTO `countries` VALUES ('1942', '邵阳县', '430523000000', '430500000000');
INSERT INTO `countries` VALUES ('1943', '隆回县', '430524000000', '430500000000');
INSERT INTO `countries` VALUES ('1944', '洞口县', '430525000000', '430500000000');
INSERT INTO `countries` VALUES ('1945', '绥宁县', '430527000000', '430500000000');
INSERT INTO `countries` VALUES ('1946', '新宁县', '430528000000', '430500000000');
INSERT INTO `countries` VALUES ('1947', '城步苗族自治县', '430529000000', '430500000000');
INSERT INTO `countries` VALUES ('1948', '武冈市', '430581000000', '430500000000');
INSERT INTO `countries` VALUES ('1949', '市辖区', '430601000000', '430600000000');
INSERT INTO `countries` VALUES ('1950', '岳阳楼区', '430602000000', '430600000000');
INSERT INTO `countries` VALUES ('1951', '云溪区', '430603000000', '430600000000');
INSERT INTO `countries` VALUES ('1952', '君山区', '430611000000', '430600000000');
INSERT INTO `countries` VALUES ('1953', '岳阳县', '430621000000', '430600000000');
INSERT INTO `countries` VALUES ('1954', '华容县', '430623000000', '430600000000');
INSERT INTO `countries` VALUES ('1955', '湘阴县', '430624000000', '430600000000');
INSERT INTO `countries` VALUES ('1956', '平江县', '430626000000', '430600000000');
INSERT INTO `countries` VALUES ('1957', '岳阳市屈原管理区', '430671000000', '430600000000');
INSERT INTO `countries` VALUES ('1958', '汨罗市', '430681000000', '430600000000');
INSERT INTO `countries` VALUES ('1959', '临湘市', '430682000000', '430600000000');
INSERT INTO `countries` VALUES ('1960', '市辖区', '430701000000', '430700000000');
INSERT INTO `countries` VALUES ('1961', '武陵区', '430702000000', '430700000000');
INSERT INTO `countries` VALUES ('1962', '鼎城区', '430703000000', '430700000000');
INSERT INTO `countries` VALUES ('1963', '安乡县', '430721000000', '430700000000');
INSERT INTO `countries` VALUES ('1964', '汉寿县', '430722000000', '430700000000');
INSERT INTO `countries` VALUES ('1965', '澧县', '430723000000', '430700000000');
INSERT INTO `countries` VALUES ('1966', '临澧县', '430724000000', '430700000000');
INSERT INTO `countries` VALUES ('1967', '桃源县', '430725000000', '430700000000');
INSERT INTO `countries` VALUES ('1968', '石门县', '430726000000', '430700000000');
INSERT INTO `countries` VALUES ('1969', '常德市西洞庭管理区', '430771000000', '430700000000');
INSERT INTO `countries` VALUES ('1970', '津市市', '430781000000', '430700000000');
INSERT INTO `countries` VALUES ('1971', '市辖区', '430801000000', '430800000000');
INSERT INTO `countries` VALUES ('1972', '永定区', '430802000000', '430800000000');
INSERT INTO `countries` VALUES ('1973', '武陵源区', '430811000000', '430800000000');
INSERT INTO `countries` VALUES ('1974', '慈利县', '430821000000', '430800000000');
INSERT INTO `countries` VALUES ('1975', '桑植县', '430822000000', '430800000000');
INSERT INTO `countries` VALUES ('1976', '市辖区', '430901000000', '430900000000');
INSERT INTO `countries` VALUES ('1977', '资阳区', '430902000000', '430900000000');
INSERT INTO `countries` VALUES ('1978', '赫山区', '430903000000', '430900000000');
INSERT INTO `countries` VALUES ('1979', '南县', '430921000000', '430900000000');
INSERT INTO `countries` VALUES ('1980', '桃江县', '430922000000', '430900000000');
INSERT INTO `countries` VALUES ('1981', '安化县', '430923000000', '430900000000');
INSERT INTO `countries` VALUES ('1982', '益阳市大通湖管理区', '430971000000', '430900000000');
INSERT INTO `countries` VALUES ('1983', '湖南益阳高新技术产业园区', '430972000000', '430900000000');
INSERT INTO `countries` VALUES ('1984', '沅江市', '430981000000', '430900000000');
INSERT INTO `countries` VALUES ('1985', '市辖区', '431001000000', '431000000000');
INSERT INTO `countries` VALUES ('1986', '北湖区', '431002000000', '431000000000');
INSERT INTO `countries` VALUES ('1987', '苏仙区', '431003000000', '431000000000');
INSERT INTO `countries` VALUES ('1988', '桂阳县', '431021000000', '431000000000');
INSERT INTO `countries` VALUES ('1989', '宜章县', '431022000000', '431000000000');
INSERT INTO `countries` VALUES ('1990', '永兴县', '431023000000', '431000000000');
INSERT INTO `countries` VALUES ('1991', '嘉禾县', '431024000000', '431000000000');
INSERT INTO `countries` VALUES ('1992', '临武县', '431025000000', '431000000000');
INSERT INTO `countries` VALUES ('1993', '汝城县', '431026000000', '431000000000');
INSERT INTO `countries` VALUES ('1994', '桂东县', '431027000000', '431000000000');
INSERT INTO `countries` VALUES ('1995', '安仁县', '431028000000', '431000000000');
INSERT INTO `countries` VALUES ('1996', '资兴市', '431081000000', '431000000000');
INSERT INTO `countries` VALUES ('1997', '市辖区', '431101000000', '431100000000');
INSERT INTO `countries` VALUES ('1998', '零陵区', '431102000000', '431100000000');
INSERT INTO `countries` VALUES ('1999', '冷水滩区', '431103000000', '431100000000');
INSERT INTO `countries` VALUES ('2000', '祁阳县', '431121000000', '431100000000');
INSERT INTO `countries` VALUES ('2001', '东安县', '431122000000', '431100000000');
INSERT INTO `countries` VALUES ('2002', '双牌县', '431123000000', '431100000000');
INSERT INTO `countries` VALUES ('2003', '道县', '431124000000', '431100000000');
INSERT INTO `countries` VALUES ('2004', '江永县', '431125000000', '431100000000');
INSERT INTO `countries` VALUES ('2005', '宁远县', '431126000000', '431100000000');
INSERT INTO `countries` VALUES ('2006', '蓝山县', '431127000000', '431100000000');
INSERT INTO `countries` VALUES ('2007', '新田县', '431128000000', '431100000000');
INSERT INTO `countries` VALUES ('2008', '江华瑶族自治县', '431129000000', '431100000000');
INSERT INTO `countries` VALUES ('2009', '永州经济技术开发区', '431171000000', '431100000000');
INSERT INTO `countries` VALUES ('2010', '永州市金洞管理区', '431172000000', '431100000000');
INSERT INTO `countries` VALUES ('2011', '永州市回龙圩管理区', '431173000000', '431100000000');
INSERT INTO `countries` VALUES ('2012', '市辖区', '431201000000', '431200000000');
INSERT INTO `countries` VALUES ('2013', '鹤城区', '431202000000', '431200000000');
INSERT INTO `countries` VALUES ('2014', '中方县', '431221000000', '431200000000');
INSERT INTO `countries` VALUES ('2015', '沅陵县', '431222000000', '431200000000');
INSERT INTO `countries` VALUES ('2016', '辰溪县', '431223000000', '431200000000');
INSERT INTO `countries` VALUES ('2017', '溆浦县', '431224000000', '431200000000');
INSERT INTO `countries` VALUES ('2018', '会同县', '431225000000', '431200000000');
INSERT INTO `countries` VALUES ('2019', '麻阳苗族自治县', '431226000000', '431200000000');
INSERT INTO `countries` VALUES ('2020', '新晃侗族自治县', '431227000000', '431200000000');
INSERT INTO `countries` VALUES ('2021', '芷江侗族自治县', '431228000000', '431200000000');
INSERT INTO `countries` VALUES ('2022', '靖州苗族侗族自治县', '431229000000', '431200000000');
INSERT INTO `countries` VALUES ('2023', '通道侗族自治县', '431230000000', '431200000000');
INSERT INTO `countries` VALUES ('2024', '怀化市洪江管理区', '431271000000', '431200000000');
INSERT INTO `countries` VALUES ('2025', '洪江市', '431281000000', '431200000000');
INSERT INTO `countries` VALUES ('2026', '市辖区', '431301000000', '431300000000');
INSERT INTO `countries` VALUES ('2027', '娄星区', '431302000000', '431300000000');
INSERT INTO `countries` VALUES ('2028', '双峰县', '431321000000', '431300000000');
INSERT INTO `countries` VALUES ('2029', '新化县', '431322000000', '431300000000');
INSERT INTO `countries` VALUES ('2030', '冷水江市', '431381000000', '431300000000');
INSERT INTO `countries` VALUES ('2031', '涟源市', '431382000000', '431300000000');
INSERT INTO `countries` VALUES ('2032', '吉首市', '433101000000', '433100000000');
INSERT INTO `countries` VALUES ('2033', '泸溪县', '433122000000', '433100000000');
INSERT INTO `countries` VALUES ('2034', '凤凰县', '433123000000', '433100000000');
INSERT INTO `countries` VALUES ('2035', '花垣县', '433124000000', '433100000000');
INSERT INTO `countries` VALUES ('2036', '保靖县', '433125000000', '433100000000');
INSERT INTO `countries` VALUES ('2037', '古丈县', '433126000000', '433100000000');
INSERT INTO `countries` VALUES ('2038', '永顺县', '433127000000', '433100000000');
INSERT INTO `countries` VALUES ('2039', '龙山县', '433130000000', '433100000000');
INSERT INTO `countries` VALUES ('2040', '湖南吉首经济开发区', '433172000000', '433100000000');
INSERT INTO `countries` VALUES ('2041', '湖南永顺经济开发区', '433173000000', '433100000000');
INSERT INTO `countries` VALUES ('2042', '市辖区', '440101000000', '440100000000');
INSERT INTO `countries` VALUES ('2043', '荔湾区', '440103000000', '440100000000');
INSERT INTO `countries` VALUES ('2044', '越秀区', '440104000000', '440100000000');
INSERT INTO `countries` VALUES ('2045', '海珠区', '440105000000', '440100000000');
INSERT INTO `countries` VALUES ('2046', '天河区', '440106000000', '440100000000');
INSERT INTO `countries` VALUES ('2047', '白云区', '440111000000', '440100000000');
INSERT INTO `countries` VALUES ('2048', '黄埔区', '440112000000', '440100000000');
INSERT INTO `countries` VALUES ('2049', '番禺区', '440113000000', '440100000000');
INSERT INTO `countries` VALUES ('2050', '花都区', '440114000000', '440100000000');
INSERT INTO `countries` VALUES ('2051', '南沙区', '440115000000', '440100000000');
INSERT INTO `countries` VALUES ('2052', '从化区', '440117000000', '440100000000');
INSERT INTO `countries` VALUES ('2053', '增城区', '440118000000', '440100000000');
INSERT INTO `countries` VALUES ('2054', '市辖区', '440201000000', '440200000000');
INSERT INTO `countries` VALUES ('2055', '武江区', '440203000000', '440200000000');
INSERT INTO `countries` VALUES ('2056', '浈江区', '440204000000', '440200000000');
INSERT INTO `countries` VALUES ('2057', '曲江区', '440205000000', '440200000000');
INSERT INTO `countries` VALUES ('2058', '始兴县', '440222000000', '440200000000');
INSERT INTO `countries` VALUES ('2059', '仁化县', '440224000000', '440200000000');
INSERT INTO `countries` VALUES ('2060', '翁源县', '440229000000', '440200000000');
INSERT INTO `countries` VALUES ('2061', '乳源瑶族自治县', '440232000000', '440200000000');
INSERT INTO `countries` VALUES ('2062', '新丰县', '440233000000', '440200000000');
INSERT INTO `countries` VALUES ('2063', '乐昌市', '440281000000', '440200000000');
INSERT INTO `countries` VALUES ('2064', '南雄市', '440282000000', '440200000000');
INSERT INTO `countries` VALUES ('2065', '市辖区', '440301000000', '440300000000');
INSERT INTO `countries` VALUES ('2066', '罗湖区', '440303000000', '440300000000');
INSERT INTO `countries` VALUES ('2067', '福田区', '440304000000', '440300000000');
INSERT INTO `countries` VALUES ('2068', '南山区', '440305000000', '440300000000');
INSERT INTO `countries` VALUES ('2069', '宝安区', '440306000000', '440300000000');
INSERT INTO `countries` VALUES ('2070', '龙岗区', '440307000000', '440300000000');
INSERT INTO `countries` VALUES ('2071', '盐田区', '440308000000', '440300000000');
INSERT INTO `countries` VALUES ('2072', '龙华区', '440309000000', '440300000000');
INSERT INTO `countries` VALUES ('2073', '坪山区', '440310000000', '440300000000');
INSERT INTO `countries` VALUES ('2074', '光明区', '440311000000', '440300000000');
INSERT INTO `countries` VALUES ('2075', '市辖区', '440401000000', '440400000000');
INSERT INTO `countries` VALUES ('2076', '香洲区', '440402000000', '440400000000');
INSERT INTO `countries` VALUES ('2077', '斗门区', '440403000000', '440400000000');
INSERT INTO `countries` VALUES ('2078', '金湾区', '440404000000', '440400000000');
INSERT INTO `countries` VALUES ('2079', '市辖区', '440501000000', '440500000000');
INSERT INTO `countries` VALUES ('2080', '龙湖区', '440507000000', '440500000000');
INSERT INTO `countries` VALUES ('2081', '金平区', '440511000000', '440500000000');
INSERT INTO `countries` VALUES ('2082', '濠江区', '440512000000', '440500000000');
INSERT INTO `countries` VALUES ('2083', '潮阳区', '440513000000', '440500000000');
INSERT INTO `countries` VALUES ('2084', '潮南区', '440514000000', '440500000000');
INSERT INTO `countries` VALUES ('2085', '澄海区', '440515000000', '440500000000');
INSERT INTO `countries` VALUES ('2086', '南澳县', '440523000000', '440500000000');
INSERT INTO `countries` VALUES ('2087', '市辖区', '440601000000', '440600000000');
INSERT INTO `countries` VALUES ('2088', '禅城区', '440604000000', '440600000000');
INSERT INTO `countries` VALUES ('2089', '南海区', '440605000000', '440600000000');
INSERT INTO `countries` VALUES ('2090', '顺德区', '440606000000', '440600000000');
INSERT INTO `countries` VALUES ('2091', '三水区', '440607000000', '440600000000');
INSERT INTO `countries` VALUES ('2092', '高明区', '440608000000', '440600000000');
INSERT INTO `countries` VALUES ('2093', '市辖区', '440701000000', '440700000000');
INSERT INTO `countries` VALUES ('2094', '蓬江区', '440703000000', '440700000000');
INSERT INTO `countries` VALUES ('2095', '江海区', '440704000000', '440700000000');
INSERT INTO `countries` VALUES ('2096', '新会区', '440705000000', '440700000000');
INSERT INTO `countries` VALUES ('2097', '台山市', '440781000000', '440700000000');
INSERT INTO `countries` VALUES ('2098', '开平市', '440783000000', '440700000000');
INSERT INTO `countries` VALUES ('2099', '鹤山市', '440784000000', '440700000000');
INSERT INTO `countries` VALUES ('2100', '恩平市', '440785000000', '440700000000');
INSERT INTO `countries` VALUES ('2101', '市辖区', '440801000000', '440800000000');
INSERT INTO `countries` VALUES ('2102', '赤坎区', '440802000000', '440800000000');
INSERT INTO `countries` VALUES ('2103', '霞山区', '440803000000', '440800000000');
INSERT INTO `countries` VALUES ('2104', '坡头区', '440804000000', '440800000000');
INSERT INTO `countries` VALUES ('2105', '麻章区', '440811000000', '440800000000');
INSERT INTO `countries` VALUES ('2106', '遂溪县', '440823000000', '440800000000');
INSERT INTO `countries` VALUES ('2107', '徐闻县', '440825000000', '440800000000');
INSERT INTO `countries` VALUES ('2108', '廉江市', '440881000000', '440800000000');
INSERT INTO `countries` VALUES ('2109', '雷州市', '440882000000', '440800000000');
INSERT INTO `countries` VALUES ('2110', '吴川市', '440883000000', '440800000000');
INSERT INTO `countries` VALUES ('2111', '市辖区', '440901000000', '440900000000');
INSERT INTO `countries` VALUES ('2112', '茂南区', '440902000000', '440900000000');
INSERT INTO `countries` VALUES ('2113', '电白区', '440904000000', '440900000000');
INSERT INTO `countries` VALUES ('2114', '高州市', '440981000000', '440900000000');
INSERT INTO `countries` VALUES ('2115', '化州市', '440982000000', '440900000000');
INSERT INTO `countries` VALUES ('2116', '信宜市', '440983000000', '440900000000');
INSERT INTO `countries` VALUES ('2117', '市辖区', '441201000000', '441200000000');
INSERT INTO `countries` VALUES ('2118', '端州区', '441202000000', '441200000000');
INSERT INTO `countries` VALUES ('2119', '鼎湖区', '441203000000', '441200000000');
INSERT INTO `countries` VALUES ('2120', '高要区', '441204000000', '441200000000');
INSERT INTO `countries` VALUES ('2121', '广宁县', '441223000000', '441200000000');
INSERT INTO `countries` VALUES ('2122', '怀集县', '441224000000', '441200000000');
INSERT INTO `countries` VALUES ('2123', '封开县', '441225000000', '441200000000');
INSERT INTO `countries` VALUES ('2124', '德庆县', '441226000000', '441200000000');
INSERT INTO `countries` VALUES ('2125', '四会市', '441284000000', '441200000000');
INSERT INTO `countries` VALUES ('2126', '市辖区', '441301000000', '441300000000');
INSERT INTO `countries` VALUES ('2127', '惠城区', '441302000000', '441300000000');
INSERT INTO `countries` VALUES ('2128', '惠阳区', '441303000000', '441300000000');
INSERT INTO `countries` VALUES ('2129', '博罗县', '441322000000', '441300000000');
INSERT INTO `countries` VALUES ('2130', '惠东县', '441323000000', '441300000000');
INSERT INTO `countries` VALUES ('2131', '龙门县', '441324000000', '441300000000');
INSERT INTO `countries` VALUES ('2132', '市辖区', '441401000000', '441400000000');
INSERT INTO `countries` VALUES ('2133', '梅江区', '441402000000', '441400000000');
INSERT INTO `countries` VALUES ('2134', '梅县区', '441403000000', '441400000000');
INSERT INTO `countries` VALUES ('2135', '大埔县', '441422000000', '441400000000');
INSERT INTO `countries` VALUES ('2136', '丰顺县', '441423000000', '441400000000');
INSERT INTO `countries` VALUES ('2137', '五华县', '441424000000', '441400000000');
INSERT INTO `countries` VALUES ('2138', '平远县', '441426000000', '441400000000');
INSERT INTO `countries` VALUES ('2139', '蕉岭县', '441427000000', '441400000000');
INSERT INTO `countries` VALUES ('2140', '兴宁市', '441481000000', '441400000000');
INSERT INTO `countries` VALUES ('2141', '市辖区', '441501000000', '441500000000');
INSERT INTO `countries` VALUES ('2142', '城区', '441502000000', '441500000000');
INSERT INTO `countries` VALUES ('2143', '海丰县', '441521000000', '441500000000');
INSERT INTO `countries` VALUES ('2144', '陆河县', '441523000000', '441500000000');
INSERT INTO `countries` VALUES ('2145', '陆丰市', '441581000000', '441500000000');
INSERT INTO `countries` VALUES ('2146', '市辖区', '441601000000', '441600000000');
INSERT INTO `countries` VALUES ('2147', '源城区', '441602000000', '441600000000');
INSERT INTO `countries` VALUES ('2148', '紫金县', '441621000000', '441600000000');
INSERT INTO `countries` VALUES ('2149', '龙川县', '441622000000', '441600000000');
INSERT INTO `countries` VALUES ('2150', '连平县', '441623000000', '441600000000');
INSERT INTO `countries` VALUES ('2151', '和平县', '441624000000', '441600000000');
INSERT INTO `countries` VALUES ('2152', '东源县', '441625000000', '441600000000');
INSERT INTO `countries` VALUES ('2153', '市辖区', '441701000000', '441700000000');
INSERT INTO `countries` VALUES ('2154', '江城区', '441702000000', '441700000000');
INSERT INTO `countries` VALUES ('2155', '阳东区', '441704000000', '441700000000');
INSERT INTO `countries` VALUES ('2156', '阳西县', '441721000000', '441700000000');
INSERT INTO `countries` VALUES ('2157', '阳春市', '441781000000', '441700000000');
INSERT INTO `countries` VALUES ('2158', '市辖区', '441801000000', '441800000000');
INSERT INTO `countries` VALUES ('2159', '清城区', '441802000000', '441800000000');
INSERT INTO `countries` VALUES ('2160', '清新区', '441803000000', '441800000000');
INSERT INTO `countries` VALUES ('2161', '佛冈县', '441821000000', '441800000000');
INSERT INTO `countries` VALUES ('2162', '阳山县', '441823000000', '441800000000');
INSERT INTO `countries` VALUES ('2163', '连山壮族瑶族自治县', '441825000000', '441800000000');
INSERT INTO `countries` VALUES ('2164', '连南瑶族自治县', '441826000000', '441800000000');
INSERT INTO `countries` VALUES ('2165', '英德市', '441881000000', '441800000000');
INSERT INTO `countries` VALUES ('2166', '连州市', '441882000000', '441800000000');
INSERT INTO `countries` VALUES ('2167', '市辖区', '445101000000', '445100000000');
INSERT INTO `countries` VALUES ('2168', '湘桥区', '445102000000', '445100000000');
INSERT INTO `countries` VALUES ('2169', '潮安区', '445103000000', '445100000000');
INSERT INTO `countries` VALUES ('2170', '饶平县', '445122000000', '445100000000');
INSERT INTO `countries` VALUES ('2171', '市辖区', '445201000000', '445200000000');
INSERT INTO `countries` VALUES ('2172', '榕城区', '445202000000', '445200000000');
INSERT INTO `countries` VALUES ('2173', '揭东区', '445203000000', '445200000000');
INSERT INTO `countries` VALUES ('2174', '揭西县', '445222000000', '445200000000');
INSERT INTO `countries` VALUES ('2175', '惠来县', '445224000000', '445200000000');
INSERT INTO `countries` VALUES ('2176', '普宁市', '445281000000', '445200000000');
INSERT INTO `countries` VALUES ('2177', '市辖区', '445301000000', '445300000000');
INSERT INTO `countries` VALUES ('2178', '云城区', '445302000000', '445300000000');
INSERT INTO `countries` VALUES ('2179', '云安区', '445303000000', '445300000000');
INSERT INTO `countries` VALUES ('2180', '新兴县', '445321000000', '445300000000');
INSERT INTO `countries` VALUES ('2181', '郁南县', '445322000000', '445300000000');
INSERT INTO `countries` VALUES ('2182', '罗定市', '445381000000', '445300000000');
INSERT INTO `countries` VALUES ('2183', '市辖区', '450101000000', '450100000000');
INSERT INTO `countries` VALUES ('2184', '兴宁区', '450102000000', '450100000000');
INSERT INTO `countries` VALUES ('2185', '青秀区', '450103000000', '450100000000');
INSERT INTO `countries` VALUES ('2186', '江南区', '450105000000', '450100000000');
INSERT INTO `countries` VALUES ('2187', '西乡塘区', '450107000000', '450100000000');
INSERT INTO `countries` VALUES ('2188', '良庆区', '450108000000', '450100000000');
INSERT INTO `countries` VALUES ('2189', '邕宁区', '450109000000', '450100000000');
INSERT INTO `countries` VALUES ('2190', '武鸣区', '450110000000', '450100000000');
INSERT INTO `countries` VALUES ('2191', '隆安县', '450123000000', '450100000000');
INSERT INTO `countries` VALUES ('2192', '马山县', '450124000000', '450100000000');
INSERT INTO `countries` VALUES ('2193', '上林县', '450125000000', '450100000000');
INSERT INTO `countries` VALUES ('2194', '宾阳县', '450126000000', '450100000000');
INSERT INTO `countries` VALUES ('2195', '横县', '450127000000', '450100000000');
INSERT INTO `countries` VALUES ('2196', '市辖区', '450201000000', '450200000000');
INSERT INTO `countries` VALUES ('2197', '城中区', '450202000000', '450200000000');
INSERT INTO `countries` VALUES ('2198', '鱼峰区', '450203000000', '450200000000');
INSERT INTO `countries` VALUES ('2199', '柳南区', '450204000000', '450200000000');
INSERT INTO `countries` VALUES ('2200', '柳北区', '450205000000', '450200000000');
INSERT INTO `countries` VALUES ('2201', '柳江区', '450206000000', '450200000000');
INSERT INTO `countries` VALUES ('2202', '柳城县', '450222000000', '450200000000');
INSERT INTO `countries` VALUES ('2203', '鹿寨县', '450223000000', '450200000000');
INSERT INTO `countries` VALUES ('2204', '融安县', '450224000000', '450200000000');
INSERT INTO `countries` VALUES ('2205', '融水苗族自治县', '450225000000', '450200000000');
INSERT INTO `countries` VALUES ('2206', '三江侗族自治县', '450226000000', '450200000000');
INSERT INTO `countries` VALUES ('2207', '市辖区', '450301000000', '450300000000');
INSERT INTO `countries` VALUES ('2208', '秀峰区', '450302000000', '450300000000');
INSERT INTO `countries` VALUES ('2209', '叠彩区', '450303000000', '450300000000');
INSERT INTO `countries` VALUES ('2210', '象山区', '450304000000', '450300000000');
INSERT INTO `countries` VALUES ('2211', '七星区', '450305000000', '450300000000');
INSERT INTO `countries` VALUES ('2212', '雁山区', '450311000000', '450300000000');
INSERT INTO `countries` VALUES ('2213', '临桂区', '450312000000', '450300000000');
INSERT INTO `countries` VALUES ('2214', '阳朔县', '450321000000', '450300000000');
INSERT INTO `countries` VALUES ('2215', '灵川县', '450323000000', '450300000000');
INSERT INTO `countries` VALUES ('2216', '全州县', '450324000000', '450300000000');
INSERT INTO `countries` VALUES ('2217', '兴安县', '450325000000', '450300000000');
INSERT INTO `countries` VALUES ('2218', '永福县', '450326000000', '450300000000');
INSERT INTO `countries` VALUES ('2219', '灌阳县', '450327000000', '450300000000');
INSERT INTO `countries` VALUES ('2220', '龙胜各族自治县', '450328000000', '450300000000');
INSERT INTO `countries` VALUES ('2221', '资源县', '450329000000', '450300000000');
INSERT INTO `countries` VALUES ('2222', '平乐县', '450330000000', '450300000000');
INSERT INTO `countries` VALUES ('2223', '恭城瑶族自治县', '450332000000', '450300000000');
INSERT INTO `countries` VALUES ('2224', '荔浦市', '450381000000', '450300000000');
INSERT INTO `countries` VALUES ('2225', '市辖区', '450401000000', '450400000000');
INSERT INTO `countries` VALUES ('2226', '万秀区', '450403000000', '450400000000');
INSERT INTO `countries` VALUES ('2227', '长洲区', '450405000000', '450400000000');
INSERT INTO `countries` VALUES ('2228', '龙圩区', '450406000000', '450400000000');
INSERT INTO `countries` VALUES ('2229', '苍梧县', '450421000000', '450400000000');
INSERT INTO `countries` VALUES ('2230', '藤县', '450422000000', '450400000000');
INSERT INTO `countries` VALUES ('2231', '蒙山县', '450423000000', '450400000000');
INSERT INTO `countries` VALUES ('2232', '岑溪市', '450481000000', '450400000000');
INSERT INTO `countries` VALUES ('2233', '市辖区', '450501000000', '450500000000');
INSERT INTO `countries` VALUES ('2234', '海城区', '450502000000', '450500000000');
INSERT INTO `countries` VALUES ('2235', '银海区', '450503000000', '450500000000');
INSERT INTO `countries` VALUES ('2236', '铁山港区', '450512000000', '450500000000');
INSERT INTO `countries` VALUES ('2237', '合浦县', '450521000000', '450500000000');
INSERT INTO `countries` VALUES ('2238', '市辖区', '450601000000', '450600000000');
INSERT INTO `countries` VALUES ('2239', '港口区', '450602000000', '450600000000');
INSERT INTO `countries` VALUES ('2240', '防城区', '450603000000', '450600000000');
INSERT INTO `countries` VALUES ('2241', '上思县', '450621000000', '450600000000');
INSERT INTO `countries` VALUES ('2242', '东兴市', '450681000000', '450600000000');
INSERT INTO `countries` VALUES ('2243', '市辖区', '450701000000', '450700000000');
INSERT INTO `countries` VALUES ('2244', '钦南区', '450702000000', '450700000000');
INSERT INTO `countries` VALUES ('2245', '钦北区', '450703000000', '450700000000');
INSERT INTO `countries` VALUES ('2246', '灵山县', '450721000000', '450700000000');
INSERT INTO `countries` VALUES ('2247', '浦北县', '450722000000', '450700000000');
INSERT INTO `countries` VALUES ('2248', '市辖区', '450801000000', '450800000000');
INSERT INTO `countries` VALUES ('2249', '港北区', '450802000000', '450800000000');
INSERT INTO `countries` VALUES ('2250', '港南区', '450803000000', '450800000000');
INSERT INTO `countries` VALUES ('2251', '覃塘区', '450804000000', '450800000000');
INSERT INTO `countries` VALUES ('2252', '平南县', '450821000000', '450800000000');
INSERT INTO `countries` VALUES ('2253', '桂平市', '450881000000', '450800000000');
INSERT INTO `countries` VALUES ('2254', '市辖区', '450901000000', '450900000000');
INSERT INTO `countries` VALUES ('2255', '玉州区', '450902000000', '450900000000');
INSERT INTO `countries` VALUES ('2256', '福绵区', '450903000000', '450900000000');
INSERT INTO `countries` VALUES ('2257', '容县', '450921000000', '450900000000');
INSERT INTO `countries` VALUES ('2258', '陆川县', '450922000000', '450900000000');
INSERT INTO `countries` VALUES ('2259', '博白县', '450923000000', '450900000000');
INSERT INTO `countries` VALUES ('2260', '兴业县', '450924000000', '450900000000');
INSERT INTO `countries` VALUES ('2261', '北流市', '450981000000', '450900000000');
INSERT INTO `countries` VALUES ('2262', '市辖区', '451001000000', '451000000000');
INSERT INTO `countries` VALUES ('2263', '右江区', '451002000000', '451000000000');
INSERT INTO `countries` VALUES ('2264', '田阳县', '451021000000', '451000000000');
INSERT INTO `countries` VALUES ('2265', '田东县', '451022000000', '451000000000');
INSERT INTO `countries` VALUES ('2266', '平果县', '451023000000', '451000000000');
INSERT INTO `countries` VALUES ('2267', '德保县', '451024000000', '451000000000');
INSERT INTO `countries` VALUES ('2268', '那坡县', '451026000000', '451000000000');
INSERT INTO `countries` VALUES ('2269', '凌云县', '451027000000', '451000000000');
INSERT INTO `countries` VALUES ('2270', '乐业县', '451028000000', '451000000000');
INSERT INTO `countries` VALUES ('2271', '田林县', '451029000000', '451000000000');
INSERT INTO `countries` VALUES ('2272', '西林县', '451030000000', '451000000000');
INSERT INTO `countries` VALUES ('2273', '隆林各族自治县', '451031000000', '451000000000');
INSERT INTO `countries` VALUES ('2274', '靖西市', '451081000000', '451000000000');
INSERT INTO `countries` VALUES ('2275', '市辖区', '451101000000', '451100000000');
INSERT INTO `countries` VALUES ('2276', '八步区', '451102000000', '451100000000');
INSERT INTO `countries` VALUES ('2277', '平桂区', '451103000000', '451100000000');
INSERT INTO `countries` VALUES ('2278', '昭平县', '451121000000', '451100000000');
INSERT INTO `countries` VALUES ('2279', '钟山县', '451122000000', '451100000000');
INSERT INTO `countries` VALUES ('2280', '富川瑶族自治县', '451123000000', '451100000000');
INSERT INTO `countries` VALUES ('2281', '市辖区', '451201000000', '451200000000');
INSERT INTO `countries` VALUES ('2282', '金城江区', '451202000000', '451200000000');
INSERT INTO `countries` VALUES ('2283', '宜州区', '451203000000', '451200000000');
INSERT INTO `countries` VALUES ('2284', '南丹县', '451221000000', '451200000000');
INSERT INTO `countries` VALUES ('2285', '天峨县', '451222000000', '451200000000');
INSERT INTO `countries` VALUES ('2286', '凤山县', '451223000000', '451200000000');
INSERT INTO `countries` VALUES ('2287', '东兰县', '451224000000', '451200000000');
INSERT INTO `countries` VALUES ('2288', '罗城仫佬族自治县', '451225000000', '451200000000');
INSERT INTO `countries` VALUES ('2289', '环江毛南族自治县', '451226000000', '451200000000');
INSERT INTO `countries` VALUES ('2290', '巴马瑶族自治县', '451227000000', '451200000000');
INSERT INTO `countries` VALUES ('2291', '都安瑶族自治县', '451228000000', '451200000000');
INSERT INTO `countries` VALUES ('2292', '大化瑶族自治县', '451229000000', '451200000000');
INSERT INTO `countries` VALUES ('2293', '市辖区', '451301000000', '451300000000');
INSERT INTO `countries` VALUES ('2294', '兴宾区', '451302000000', '451300000000');
INSERT INTO `countries` VALUES ('2295', '忻城县', '451321000000', '451300000000');
INSERT INTO `countries` VALUES ('2296', '象州县', '451322000000', '451300000000');
INSERT INTO `countries` VALUES ('2297', '武宣县', '451323000000', '451300000000');
INSERT INTO `countries` VALUES ('2298', '金秀瑶族自治县', '451324000000', '451300000000');
INSERT INTO `countries` VALUES ('2299', '合山市', '451381000000', '451300000000');
INSERT INTO `countries` VALUES ('2300', '市辖区', '451401000000', '451400000000');
INSERT INTO `countries` VALUES ('2301', '江州区', '451402000000', '451400000000');
INSERT INTO `countries` VALUES ('2302', '扶绥县', '451421000000', '451400000000');
INSERT INTO `countries` VALUES ('2303', '宁明县', '451422000000', '451400000000');
INSERT INTO `countries` VALUES ('2304', '龙州县', '451423000000', '451400000000');
INSERT INTO `countries` VALUES ('2305', '大新县', '451424000000', '451400000000');
INSERT INTO `countries` VALUES ('2306', '天等县', '451425000000', '451400000000');
INSERT INTO `countries` VALUES ('2307', '凭祥市', '451481000000', '451400000000');
INSERT INTO `countries` VALUES ('2308', '市辖区', '460101000000', '460100000000');
INSERT INTO `countries` VALUES ('2309', '秀英区', '460105000000', '460100000000');
INSERT INTO `countries` VALUES ('2310', '龙华区', '460106000000', '460100000000');
INSERT INTO `countries` VALUES ('2311', '琼山区', '460107000000', '460100000000');
INSERT INTO `countries` VALUES ('2312', '美兰区', '460108000000', '460100000000');
INSERT INTO `countries` VALUES ('2313', '市辖区', '460201000000', '460200000000');
INSERT INTO `countries` VALUES ('2314', '海棠区', '460202000000', '460200000000');
INSERT INTO `countries` VALUES ('2315', '吉阳区', '460203000000', '460200000000');
INSERT INTO `countries` VALUES ('2316', '天涯区', '460204000000', '460200000000');
INSERT INTO `countries` VALUES ('2317', '崖州区', '460205000000', '460200000000');
INSERT INTO `countries` VALUES ('2318', '西沙群岛', '460321000000', '460300000000');
INSERT INTO `countries` VALUES ('2319', '南沙群岛', '460322000000', '460300000000');
INSERT INTO `countries` VALUES ('2320', '中沙群岛的岛礁及其海域', '460323000000', '460300000000');
INSERT INTO `countries` VALUES ('2321', '五指山市', '469001000000', '469000000000');
INSERT INTO `countries` VALUES ('2322', '琼海市', '469002000000', '469000000000');
INSERT INTO `countries` VALUES ('2323', '文昌市', '469005000000', '469000000000');
INSERT INTO `countries` VALUES ('2324', '万宁市', '469006000000', '469000000000');
INSERT INTO `countries` VALUES ('2325', '东方市', '469007000000', '469000000000');
INSERT INTO `countries` VALUES ('2326', '定安县', '469021000000', '469000000000');
INSERT INTO `countries` VALUES ('2327', '屯昌县', '469022000000', '469000000000');
INSERT INTO `countries` VALUES ('2328', '澄迈县', '469023000000', '469000000000');
INSERT INTO `countries` VALUES ('2329', '临高县', '469024000000', '469000000000');
INSERT INTO `countries` VALUES ('2330', '白沙黎族自治县', '469025000000', '469000000000');
INSERT INTO `countries` VALUES ('2331', '昌江黎族自治县', '469026000000', '469000000000');
INSERT INTO `countries` VALUES ('2332', '乐东黎族自治县', '469027000000', '469000000000');
INSERT INTO `countries` VALUES ('2333', '陵水黎族自治县', '469028000000', '469000000000');
INSERT INTO `countries` VALUES ('2334', '保亭黎族苗族自治县', '469029000000', '469000000000');
INSERT INTO `countries` VALUES ('2335', '琼中黎族苗族自治县', '469030000000', '469000000000');
INSERT INTO `countries` VALUES ('2336', '万州区', '500101000000', '500100000000');
INSERT INTO `countries` VALUES ('2337', '涪陵区', '500102000000', '500100000000');
INSERT INTO `countries` VALUES ('2338', '渝中区', '500103000000', '500100000000');
INSERT INTO `countries` VALUES ('2339', '大渡口区', '500104000000', '500100000000');
INSERT INTO `countries` VALUES ('2340', '江北区', '500105000000', '500100000000');
INSERT INTO `countries` VALUES ('2341', '沙坪坝区', '500106000000', '500100000000');
INSERT INTO `countries` VALUES ('2342', '九龙坡区', '500107000000', '500100000000');
INSERT INTO `countries` VALUES ('2343', '南岸区', '500108000000', '500100000000');
INSERT INTO `countries` VALUES ('2344', '北碚区', '500109000000', '500100000000');
INSERT INTO `countries` VALUES ('2345', '綦江区', '500110000000', '500100000000');
INSERT INTO `countries` VALUES ('2346', '大足区', '500111000000', '500100000000');
INSERT INTO `countries` VALUES ('2347', '渝北区', '500112000000', '500100000000');
INSERT INTO `countries` VALUES ('2348', '巴南区', '500113000000', '500100000000');
INSERT INTO `countries` VALUES ('2349', '黔江区', '500114000000', '500100000000');
INSERT INTO `countries` VALUES ('2350', '长寿区', '500115000000', '500100000000');
INSERT INTO `countries` VALUES ('2351', '江津区', '500116000000', '500100000000');
INSERT INTO `countries` VALUES ('2352', '合川区', '500117000000', '500100000000');
INSERT INTO `countries` VALUES ('2353', '永川区', '500118000000', '500100000000');
INSERT INTO `countries` VALUES ('2354', '南川区', '500119000000', '500100000000');
INSERT INTO `countries` VALUES ('2355', '璧山区', '500120000000', '500100000000');
INSERT INTO `countries` VALUES ('2356', '铜梁区', '500151000000', '500100000000');
INSERT INTO `countries` VALUES ('2357', '潼南区', '500152000000', '500100000000');
INSERT INTO `countries` VALUES ('2358', '荣昌区', '500153000000', '500100000000');
INSERT INTO `countries` VALUES ('2359', '开州区', '500154000000', '500100000000');
INSERT INTO `countries` VALUES ('2360', '梁平区', '500155000000', '500100000000');
INSERT INTO `countries` VALUES ('2361', '武隆区', '500156000000', '500100000000');
INSERT INTO `countries` VALUES ('2362', '城口县', '500229000000', '500200000000');
INSERT INTO `countries` VALUES ('2363', '丰都县', '500230000000', '500200000000');
INSERT INTO `countries` VALUES ('2364', '垫江县', '500231000000', '500200000000');
INSERT INTO `countries` VALUES ('2365', '忠县', '500233000000', '500200000000');
INSERT INTO `countries` VALUES ('2366', '云阳县', '500235000000', '500200000000');
INSERT INTO `countries` VALUES ('2367', '奉节县', '500236000000', '500200000000');
INSERT INTO `countries` VALUES ('2368', '巫山县', '500237000000', '500200000000');
INSERT INTO `countries` VALUES ('2369', '巫溪县', '500238000000', '500200000000');
INSERT INTO `countries` VALUES ('2370', '石柱土家族自治县', '500240000000', '500200000000');
INSERT INTO `countries` VALUES ('2371', '秀山土家族苗族自治县', '500241000000', '500200000000');
INSERT INTO `countries` VALUES ('2372', '酉阳土家族苗族自治县', '500242000000', '500200000000');
INSERT INTO `countries` VALUES ('2373', '彭水苗族土家族自治县', '500243000000', '500200000000');
INSERT INTO `countries` VALUES ('2374', '市辖区', '510101000000', '510100000000');
INSERT INTO `countries` VALUES ('2375', '锦江区', '510104000000', '510100000000');
INSERT INTO `countries` VALUES ('2376', '青羊区', '510105000000', '510100000000');
INSERT INTO `countries` VALUES ('2377', '金牛区', '510106000000', '510100000000');
INSERT INTO `countries` VALUES ('2378', '武侯区', '510107000000', '510100000000');
INSERT INTO `countries` VALUES ('2379', '成华区', '510108000000', '510100000000');
INSERT INTO `countries` VALUES ('2380', '龙泉驿区', '510112000000', '510100000000');
INSERT INTO `countries` VALUES ('2381', '青白江区', '510113000000', '510100000000');
INSERT INTO `countries` VALUES ('2382', '新都区', '510114000000', '510100000000');
INSERT INTO `countries` VALUES ('2383', '温江区', '510115000000', '510100000000');
INSERT INTO `countries` VALUES ('2384', '双流区', '510116000000', '510100000000');
INSERT INTO `countries` VALUES ('2385', '郫都区', '510117000000', '510100000000');
INSERT INTO `countries` VALUES ('2386', '金堂县', '510121000000', '510100000000');
INSERT INTO `countries` VALUES ('2387', '大邑县', '510129000000', '510100000000');
INSERT INTO `countries` VALUES ('2388', '蒲江县', '510131000000', '510100000000');
INSERT INTO `countries` VALUES ('2389', '新津县', '510132000000', '510100000000');
INSERT INTO `countries` VALUES ('2390', '都江堰市', '510181000000', '510100000000');
INSERT INTO `countries` VALUES ('2391', '彭州市', '510182000000', '510100000000');
INSERT INTO `countries` VALUES ('2392', '邛崃市', '510183000000', '510100000000');
INSERT INTO `countries` VALUES ('2393', '崇州市', '510184000000', '510100000000');
INSERT INTO `countries` VALUES ('2394', '简阳市', '510185000000', '510100000000');
INSERT INTO `countries` VALUES ('2395', '市辖区', '510301000000', '510300000000');
INSERT INTO `countries` VALUES ('2396', '自流井区', '510302000000', '510300000000');
INSERT INTO `countries` VALUES ('2397', '贡井区', '510303000000', '510300000000');
INSERT INTO `countries` VALUES ('2398', '大安区', '510304000000', '510300000000');
INSERT INTO `countries` VALUES ('2399', '沿滩区', '510311000000', '510300000000');
INSERT INTO `countries` VALUES ('2400', '荣县', '510321000000', '510300000000');
INSERT INTO `countries` VALUES ('2401', '富顺县', '510322000000', '510300000000');
INSERT INTO `countries` VALUES ('2402', '市辖区', '510401000000', '510400000000');
INSERT INTO `countries` VALUES ('2403', '东区', '510402000000', '510400000000');
INSERT INTO `countries` VALUES ('2404', '西区', '510403000000', '510400000000');
INSERT INTO `countries` VALUES ('2405', '仁和区', '510411000000', '510400000000');
INSERT INTO `countries` VALUES ('2406', '米易县', '510421000000', '510400000000');
INSERT INTO `countries` VALUES ('2407', '盐边县', '510422000000', '510400000000');
INSERT INTO `countries` VALUES ('2408', '市辖区', '510501000000', '510500000000');
INSERT INTO `countries` VALUES ('2409', '江阳区', '510502000000', '510500000000');
INSERT INTO `countries` VALUES ('2410', '纳溪区', '510503000000', '510500000000');
INSERT INTO `countries` VALUES ('2411', '龙马潭区', '510504000000', '510500000000');
INSERT INTO `countries` VALUES ('2412', '泸县', '510521000000', '510500000000');
INSERT INTO `countries` VALUES ('2413', '合江县', '510522000000', '510500000000');
INSERT INTO `countries` VALUES ('2414', '叙永县', '510524000000', '510500000000');
INSERT INTO `countries` VALUES ('2415', '古蔺县', '510525000000', '510500000000');
INSERT INTO `countries` VALUES ('2416', '市辖区', '510601000000', '510600000000');
INSERT INTO `countries` VALUES ('2417', '旌阳区', '510603000000', '510600000000');
INSERT INTO `countries` VALUES ('2418', '罗江区', '510604000000', '510600000000');
INSERT INTO `countries` VALUES ('2419', '中江县', '510623000000', '510600000000');
INSERT INTO `countries` VALUES ('2420', '广汉市', '510681000000', '510600000000');
INSERT INTO `countries` VALUES ('2421', '什邡市', '510682000000', '510600000000');
INSERT INTO `countries` VALUES ('2422', '绵竹市', '510683000000', '510600000000');
INSERT INTO `countries` VALUES ('2423', '市辖区', '510701000000', '510700000000');
INSERT INTO `countries` VALUES ('2424', '涪城区', '510703000000', '510700000000');
INSERT INTO `countries` VALUES ('2425', '游仙区', '510704000000', '510700000000');
INSERT INTO `countries` VALUES ('2426', '安州区', '510705000000', '510700000000');
INSERT INTO `countries` VALUES ('2427', '三台县', '510722000000', '510700000000');
INSERT INTO `countries` VALUES ('2428', '盐亭县', '510723000000', '510700000000');
INSERT INTO `countries` VALUES ('2429', '梓潼县', '510725000000', '510700000000');
INSERT INTO `countries` VALUES ('2430', '北川羌族自治县', '510726000000', '510700000000');
INSERT INTO `countries` VALUES ('2431', '平武县', '510727000000', '510700000000');
INSERT INTO `countries` VALUES ('2432', '江油市', '510781000000', '510700000000');
INSERT INTO `countries` VALUES ('2433', '市辖区', '510801000000', '510800000000');
INSERT INTO `countries` VALUES ('2434', '利州区', '510802000000', '510800000000');
INSERT INTO `countries` VALUES ('2435', '昭化区', '510811000000', '510800000000');
INSERT INTO `countries` VALUES ('2436', '朝天区', '510812000000', '510800000000');
INSERT INTO `countries` VALUES ('2437', '旺苍县', '510821000000', '510800000000');
INSERT INTO `countries` VALUES ('2438', '青川县', '510822000000', '510800000000');
INSERT INTO `countries` VALUES ('2439', '剑阁县', '510823000000', '510800000000');
INSERT INTO `countries` VALUES ('2440', '苍溪县', '510824000000', '510800000000');
INSERT INTO `countries` VALUES ('2441', '市辖区', '510901000000', '510900000000');
INSERT INTO `countries` VALUES ('2442', '船山区', '510903000000', '510900000000');
INSERT INTO `countries` VALUES ('2443', '安居区', '510904000000', '510900000000');
INSERT INTO `countries` VALUES ('2444', '蓬溪县', '510921000000', '510900000000');
INSERT INTO `countries` VALUES ('2445', '射洪县', '510922000000', '510900000000');
INSERT INTO `countries` VALUES ('2446', '大英县', '510923000000', '510900000000');
INSERT INTO `countries` VALUES ('2447', '市辖区', '511001000000', '511000000000');
INSERT INTO `countries` VALUES ('2448', '市中区', '511002000000', '511000000000');
INSERT INTO `countries` VALUES ('2449', '东兴区', '511011000000', '511000000000');
INSERT INTO `countries` VALUES ('2450', '威远县', '511024000000', '511000000000');
INSERT INTO `countries` VALUES ('2451', '资中县', '511025000000', '511000000000');
INSERT INTO `countries` VALUES ('2452', '内江经济开发区', '511071000000', '511000000000');
INSERT INTO `countries` VALUES ('2453', '隆昌市', '511083000000', '511000000000');
INSERT INTO `countries` VALUES ('2454', '市辖区', '511101000000', '511100000000');
INSERT INTO `countries` VALUES ('2455', '市中区', '511102000000', '511100000000');
INSERT INTO `countries` VALUES ('2456', '沙湾区', '511111000000', '511100000000');
INSERT INTO `countries` VALUES ('2457', '五通桥区', '511112000000', '511100000000');
INSERT INTO `countries` VALUES ('2458', '金口河区', '511113000000', '511100000000');
INSERT INTO `countries` VALUES ('2459', '犍为县', '511123000000', '511100000000');
INSERT INTO `countries` VALUES ('2460', '井研县', '511124000000', '511100000000');
INSERT INTO `countries` VALUES ('2461', '夹江县', '511126000000', '511100000000');
INSERT INTO `countries` VALUES ('2462', '沐川县', '511129000000', '511100000000');
INSERT INTO `countries` VALUES ('2463', '峨边彝族自治县', '511132000000', '511100000000');
INSERT INTO `countries` VALUES ('2464', '马边彝族自治县', '511133000000', '511100000000');
INSERT INTO `countries` VALUES ('2465', '峨眉山市', '511181000000', '511100000000');
INSERT INTO `countries` VALUES ('2466', '市辖区', '511301000000', '511300000000');
INSERT INTO `countries` VALUES ('2467', '顺庆区', '511302000000', '511300000000');
INSERT INTO `countries` VALUES ('2468', '高坪区', '511303000000', '511300000000');
INSERT INTO `countries` VALUES ('2469', '嘉陵区', '511304000000', '511300000000');
INSERT INTO `countries` VALUES ('2470', '南部县', '511321000000', '511300000000');
INSERT INTO `countries` VALUES ('2471', '营山县', '511322000000', '511300000000');
INSERT INTO `countries` VALUES ('2472', '蓬安县', '511323000000', '511300000000');
INSERT INTO `countries` VALUES ('2473', '仪陇县', '511324000000', '511300000000');
INSERT INTO `countries` VALUES ('2474', '西充县', '511325000000', '511300000000');
INSERT INTO `countries` VALUES ('2475', '阆中市', '511381000000', '511300000000');
INSERT INTO `countries` VALUES ('2476', '市辖区', '511401000000', '511400000000');
INSERT INTO `countries` VALUES ('2477', '东坡区', '511402000000', '511400000000');
INSERT INTO `countries` VALUES ('2478', '彭山区', '511403000000', '511400000000');
INSERT INTO `countries` VALUES ('2479', '仁寿县', '511421000000', '511400000000');
INSERT INTO `countries` VALUES ('2480', '洪雅县', '511423000000', '511400000000');
INSERT INTO `countries` VALUES ('2481', '丹棱县', '511424000000', '511400000000');
INSERT INTO `countries` VALUES ('2482', '青神县', '511425000000', '511400000000');
INSERT INTO `countries` VALUES ('2483', '市辖区', '511501000000', '511500000000');
INSERT INTO `countries` VALUES ('2484', '翠屏区', '511502000000', '511500000000');
INSERT INTO `countries` VALUES ('2485', '南溪区', '511503000000', '511500000000');
INSERT INTO `countries` VALUES ('2486', '叙州区', '511504000000', '511500000000');
INSERT INTO `countries` VALUES ('2487', '江安县', '511523000000', '511500000000');
INSERT INTO `countries` VALUES ('2488', '长宁县', '511524000000', '511500000000');
INSERT INTO `countries` VALUES ('2489', '高县', '511525000000', '511500000000');
INSERT INTO `countries` VALUES ('2490', '珙县', '511526000000', '511500000000');
INSERT INTO `countries` VALUES ('2491', '筠连县', '511527000000', '511500000000');
INSERT INTO `countries` VALUES ('2492', '兴文县', '511528000000', '511500000000');
INSERT INTO `countries` VALUES ('2493', '屏山县', '511529000000', '511500000000');
INSERT INTO `countries` VALUES ('2494', '市辖区', '511601000000', '511600000000');
INSERT INTO `countries` VALUES ('2495', '广安区', '511602000000', '511600000000');
INSERT INTO `countries` VALUES ('2496', '前锋区', '511603000000', '511600000000');
INSERT INTO `countries` VALUES ('2497', '岳池县', '511621000000', '511600000000');
INSERT INTO `countries` VALUES ('2498', '武胜县', '511622000000', '511600000000');
INSERT INTO `countries` VALUES ('2499', '邻水县', '511623000000', '511600000000');
INSERT INTO `countries` VALUES ('2500', '华蓥市', '511681000000', '511600000000');
INSERT INTO `countries` VALUES ('2501', '市辖区', '511701000000', '511700000000');
INSERT INTO `countries` VALUES ('2502', '通川区', '511702000000', '511700000000');
INSERT INTO `countries` VALUES ('2503', '达川区', '511703000000', '511700000000');
INSERT INTO `countries` VALUES ('2504', '宣汉县', '511722000000', '511700000000');
INSERT INTO `countries` VALUES ('2505', '开江县', '511723000000', '511700000000');
INSERT INTO `countries` VALUES ('2506', '大竹县', '511724000000', '511700000000');
INSERT INTO `countries` VALUES ('2507', '渠县', '511725000000', '511700000000');
INSERT INTO `countries` VALUES ('2508', '达州经济开发区', '511771000000', '511700000000');
INSERT INTO `countries` VALUES ('2509', '万源市', '511781000000', '511700000000');
INSERT INTO `countries` VALUES ('2510', '市辖区', '511801000000', '511800000000');
INSERT INTO `countries` VALUES ('2511', '雨城区', '511802000000', '511800000000');
INSERT INTO `countries` VALUES ('2512', '名山区', '511803000000', '511800000000');
INSERT INTO `countries` VALUES ('2513', '荥经县', '511822000000', '511800000000');
INSERT INTO `countries` VALUES ('2514', '汉源县', '511823000000', '511800000000');
INSERT INTO `countries` VALUES ('2515', '石棉县', '511824000000', '511800000000');
INSERT INTO `countries` VALUES ('2516', '天全县', '511825000000', '511800000000');
INSERT INTO `countries` VALUES ('2517', '芦山县', '511826000000', '511800000000');
INSERT INTO `countries` VALUES ('2518', '宝兴县', '511827000000', '511800000000');
INSERT INTO `countries` VALUES ('2519', '市辖区', '511901000000', '511900000000');
INSERT INTO `countries` VALUES ('2520', '巴州区', '511902000000', '511900000000');
INSERT INTO `countries` VALUES ('2521', '恩阳区', '511903000000', '511900000000');
INSERT INTO `countries` VALUES ('2522', '通江县', '511921000000', '511900000000');
INSERT INTO `countries` VALUES ('2523', '南江县', '511922000000', '511900000000');
INSERT INTO `countries` VALUES ('2524', '平昌县', '511923000000', '511900000000');
INSERT INTO `countries` VALUES ('2525', '巴中经济开发区', '511971000000', '511900000000');
INSERT INTO `countries` VALUES ('2526', '市辖区', '512001000000', '512000000000');
INSERT INTO `countries` VALUES ('2527', '雁江区', '512002000000', '512000000000');
INSERT INTO `countries` VALUES ('2528', '安岳县', '512021000000', '512000000000');
INSERT INTO `countries` VALUES ('2529', '乐至县', '512022000000', '512000000000');
INSERT INTO `countries` VALUES ('2530', '马尔康市', '513201000000', '513200000000');
INSERT INTO `countries` VALUES ('2531', '汶川县', '513221000000', '513200000000');
INSERT INTO `countries` VALUES ('2532', '理县', '513222000000', '513200000000');
INSERT INTO `countries` VALUES ('2533', '茂县', '513223000000', '513200000000');
INSERT INTO `countries` VALUES ('2534', '松潘县', '513224000000', '513200000000');
INSERT INTO `countries` VALUES ('2535', '九寨沟县', '513225000000', '513200000000');
INSERT INTO `countries` VALUES ('2536', '金川县', '513226000000', '513200000000');
INSERT INTO `countries` VALUES ('2537', '小金县', '513227000000', '513200000000');
INSERT INTO `countries` VALUES ('2538', '黑水县', '513228000000', '513200000000');
INSERT INTO `countries` VALUES ('2539', '壤塘县', '513230000000', '513200000000');
INSERT INTO `countries` VALUES ('2540', '阿坝县', '513231000000', '513200000000');
INSERT INTO `countries` VALUES ('2541', '若尔盖县', '513232000000', '513200000000');
INSERT INTO `countries` VALUES ('2542', '红原县', '513233000000', '513200000000');
INSERT INTO `countries` VALUES ('2543', '康定市', '513301000000', '513300000000');
INSERT INTO `countries` VALUES ('2544', '泸定县', '513322000000', '513300000000');
INSERT INTO `countries` VALUES ('2545', '丹巴县', '513323000000', '513300000000');
INSERT INTO `countries` VALUES ('2546', '九龙县', '513324000000', '513300000000');
INSERT INTO `countries` VALUES ('2547', '雅江县', '513325000000', '513300000000');
INSERT INTO `countries` VALUES ('2548', '道孚县', '513326000000', '513300000000');
INSERT INTO `countries` VALUES ('2549', '炉霍县', '513327000000', '513300000000');
INSERT INTO `countries` VALUES ('2550', '甘孜县', '513328000000', '513300000000');
INSERT INTO `countries` VALUES ('2551', '新龙县', '513329000000', '513300000000');
INSERT INTO `countries` VALUES ('2552', '德格县', '513330000000', '513300000000');
INSERT INTO `countries` VALUES ('2553', '白玉县', '513331000000', '513300000000');
INSERT INTO `countries` VALUES ('2554', '石渠县', '513332000000', '513300000000');
INSERT INTO `countries` VALUES ('2555', '色达县', '513333000000', '513300000000');
INSERT INTO `countries` VALUES ('2556', '理塘县', '513334000000', '513300000000');
INSERT INTO `countries` VALUES ('2557', '巴塘县', '513335000000', '513300000000');
INSERT INTO `countries` VALUES ('2558', '乡城县', '513336000000', '513300000000');
INSERT INTO `countries` VALUES ('2559', '稻城县', '513337000000', '513300000000');
INSERT INTO `countries` VALUES ('2560', '得荣县', '513338000000', '513300000000');
INSERT INTO `countries` VALUES ('2561', '西昌市', '513401000000', '513400000000');
INSERT INTO `countries` VALUES ('2562', '木里藏族自治县', '513422000000', '513400000000');
INSERT INTO `countries` VALUES ('2563', '盐源县', '513423000000', '513400000000');
INSERT INTO `countries` VALUES ('2564', '德昌县', '513424000000', '513400000000');
INSERT INTO `countries` VALUES ('2565', '会理县', '513425000000', '513400000000');
INSERT INTO `countries` VALUES ('2566', '会东县', '513426000000', '513400000000');
INSERT INTO `countries` VALUES ('2567', '宁南县', '513427000000', '513400000000');
INSERT INTO `countries` VALUES ('2568', '普格县', '513428000000', '513400000000');
INSERT INTO `countries` VALUES ('2569', '布拖县', '513429000000', '513400000000');
INSERT INTO `countries` VALUES ('2570', '金阳县', '513430000000', '513400000000');
INSERT INTO `countries` VALUES ('2571', '昭觉县', '513431000000', '513400000000');
INSERT INTO `countries` VALUES ('2572', '喜德县', '513432000000', '513400000000');
INSERT INTO `countries` VALUES ('2573', '冕宁县', '513433000000', '513400000000');
INSERT INTO `countries` VALUES ('2574', '越西县', '513434000000', '513400000000');
INSERT INTO `countries` VALUES ('2575', '甘洛县', '513435000000', '513400000000');
INSERT INTO `countries` VALUES ('2576', '美姑县', '513436000000', '513400000000');
INSERT INTO `countries` VALUES ('2577', '雷波县', '513437000000', '513400000000');
INSERT INTO `countries` VALUES ('2578', '市辖区', '520101000000', '520100000000');
INSERT INTO `countries` VALUES ('2579', '南明区', '520102000000', '520100000000');
INSERT INTO `countries` VALUES ('2580', '云岩区', '520103000000', '520100000000');
INSERT INTO `countries` VALUES ('2581', '花溪区', '520111000000', '520100000000');
INSERT INTO `countries` VALUES ('2582', '乌当区', '520112000000', '520100000000');
INSERT INTO `countries` VALUES ('2583', '白云区', '520113000000', '520100000000');
INSERT INTO `countries` VALUES ('2584', '观山湖区', '520115000000', '520100000000');
INSERT INTO `countries` VALUES ('2585', '开阳县', '520121000000', '520100000000');
INSERT INTO `countries` VALUES ('2586', '息烽县', '520122000000', '520100000000');
INSERT INTO `countries` VALUES ('2587', '修文县', '520123000000', '520100000000');
INSERT INTO `countries` VALUES ('2588', '清镇市', '520181000000', '520100000000');
INSERT INTO `countries` VALUES ('2589', '钟山区', '520201000000', '520200000000');
INSERT INTO `countries` VALUES ('2590', '六枝特区', '520203000000', '520200000000');
INSERT INTO `countries` VALUES ('2591', '水城县', '520221000000', '520200000000');
INSERT INTO `countries` VALUES ('2592', '盘州市', '520281000000', '520200000000');
INSERT INTO `countries` VALUES ('2593', '市辖区', '520301000000', '520300000000');
INSERT INTO `countries` VALUES ('2594', '红花岗区', '520302000000', '520300000000');
INSERT INTO `countries` VALUES ('2595', '汇川区', '520303000000', '520300000000');
INSERT INTO `countries` VALUES ('2596', '播州区', '520304000000', '520300000000');
INSERT INTO `countries` VALUES ('2597', '桐梓县', '520322000000', '520300000000');
INSERT INTO `countries` VALUES ('2598', '绥阳县', '520323000000', '520300000000');
INSERT INTO `countries` VALUES ('2599', '正安县', '520324000000', '520300000000');
INSERT INTO `countries` VALUES ('2600', '道真仡佬族苗族自治县', '520325000000', '520300000000');
INSERT INTO `countries` VALUES ('2601', '务川仡佬族苗族自治县', '520326000000', '520300000000');
INSERT INTO `countries` VALUES ('2602', '凤冈县', '520327000000', '520300000000');
INSERT INTO `countries` VALUES ('2603', '湄潭县', '520328000000', '520300000000');
INSERT INTO `countries` VALUES ('2604', '余庆县', '520329000000', '520300000000');
INSERT INTO `countries` VALUES ('2605', '习水县', '520330000000', '520300000000');
INSERT INTO `countries` VALUES ('2606', '赤水市', '520381000000', '520300000000');
INSERT INTO `countries` VALUES ('2607', '仁怀市', '520382000000', '520300000000');
INSERT INTO `countries` VALUES ('2608', '市辖区', '520401000000', '520400000000');
INSERT INTO `countries` VALUES ('2609', '西秀区', '520402000000', '520400000000');
INSERT INTO `countries` VALUES ('2610', '平坝区', '520403000000', '520400000000');
INSERT INTO `countries` VALUES ('2611', '普定县', '520422000000', '520400000000');
INSERT INTO `countries` VALUES ('2612', '镇宁布依族苗族自治县', '520423000000', '520400000000');
INSERT INTO `countries` VALUES ('2613', '关岭布依族苗族自治县', '520424000000', '520400000000');
INSERT INTO `countries` VALUES ('2614', '紫云苗族布依族自治县', '520425000000', '520400000000');
INSERT INTO `countries` VALUES ('2615', '市辖区', '520501000000', '520500000000');
INSERT INTO `countries` VALUES ('2616', '七星关区', '520502000000', '520500000000');
INSERT INTO `countries` VALUES ('2617', '大方县', '520521000000', '520500000000');
INSERT INTO `countries` VALUES ('2618', '黔西县', '520522000000', '520500000000');
INSERT INTO `countries` VALUES ('2619', '金沙县', '520523000000', '520500000000');
INSERT INTO `countries` VALUES ('2620', '织金县', '520524000000', '520500000000');
INSERT INTO `countries` VALUES ('2621', '纳雍县', '520525000000', '520500000000');
INSERT INTO `countries` VALUES ('2622', '威宁彝族回族苗族自治县', '520526000000', '520500000000');
INSERT INTO `countries` VALUES ('2623', '赫章县', '520527000000', '520500000000');
INSERT INTO `countries` VALUES ('2624', '市辖区', '520601000000', '520600000000');
INSERT INTO `countries` VALUES ('2625', '碧江区', '520602000000', '520600000000');
INSERT INTO `countries` VALUES ('2626', '万山区', '520603000000', '520600000000');
INSERT INTO `countries` VALUES ('2627', '江口县', '520621000000', '520600000000');
INSERT INTO `countries` VALUES ('2628', '玉屏侗族自治县', '520622000000', '520600000000');
INSERT INTO `countries` VALUES ('2629', '石阡县', '520623000000', '520600000000');
INSERT INTO `countries` VALUES ('2630', '思南县', '520624000000', '520600000000');
INSERT INTO `countries` VALUES ('2631', '印江土家族苗族自治县', '520625000000', '520600000000');
INSERT INTO `countries` VALUES ('2632', '德江县', '520626000000', '520600000000');
INSERT INTO `countries` VALUES ('2633', '沿河土家族自治县', '520627000000', '520600000000');
INSERT INTO `countries` VALUES ('2634', '松桃苗族自治县', '520628000000', '520600000000');
INSERT INTO `countries` VALUES ('2635', '兴义市', '522301000000', '522300000000');
INSERT INTO `countries` VALUES ('2636', '兴仁市', '522302000000', '522300000000');
INSERT INTO `countries` VALUES ('2637', '普安县', '522323000000', '522300000000');
INSERT INTO `countries` VALUES ('2638', '晴隆县', '522324000000', '522300000000');
INSERT INTO `countries` VALUES ('2639', '贞丰县', '522325000000', '522300000000');
INSERT INTO `countries` VALUES ('2640', '望谟县', '522326000000', '522300000000');
INSERT INTO `countries` VALUES ('2641', '册亨县', '522327000000', '522300000000');
INSERT INTO `countries` VALUES ('2642', '安龙县', '522328000000', '522300000000');
INSERT INTO `countries` VALUES ('2643', '凯里市', '522601000000', '522600000000');
INSERT INTO `countries` VALUES ('2644', '黄平县', '522622000000', '522600000000');
INSERT INTO `countries` VALUES ('2645', '施秉县', '522623000000', '522600000000');
INSERT INTO `countries` VALUES ('2646', '三穗县', '522624000000', '522600000000');
INSERT INTO `countries` VALUES ('2647', '镇远县', '522625000000', '522600000000');
INSERT INTO `countries` VALUES ('2648', '岑巩县', '522626000000', '522600000000');
INSERT INTO `countries` VALUES ('2649', '天柱县', '522627000000', '522600000000');
INSERT INTO `countries` VALUES ('2650', '锦屏县', '522628000000', '522600000000');
INSERT INTO `countries` VALUES ('2651', '剑河县', '522629000000', '522600000000');
INSERT INTO `countries` VALUES ('2652', '台江县', '522630000000', '522600000000');
INSERT INTO `countries` VALUES ('2653', '黎平县', '522631000000', '522600000000');
INSERT INTO `countries` VALUES ('2654', '榕江县', '522632000000', '522600000000');
INSERT INTO `countries` VALUES ('2655', '从江县', '522633000000', '522600000000');
INSERT INTO `countries` VALUES ('2656', '雷山县', '522634000000', '522600000000');
INSERT INTO `countries` VALUES ('2657', '麻江县', '522635000000', '522600000000');
INSERT INTO `countries` VALUES ('2658', '丹寨县', '522636000000', '522600000000');
INSERT INTO `countries` VALUES ('2659', '都匀市', '522701000000', '522700000000');
INSERT INTO `countries` VALUES ('2660', '福泉市', '522702000000', '522700000000');
INSERT INTO `countries` VALUES ('2661', '荔波县', '522722000000', '522700000000');
INSERT INTO `countries` VALUES ('2662', '贵定县', '522723000000', '522700000000');
INSERT INTO `countries` VALUES ('2663', '瓮安县', '522725000000', '522700000000');
INSERT INTO `countries` VALUES ('2664', '独山县', '522726000000', '522700000000');
INSERT INTO `countries` VALUES ('2665', '平塘县', '522727000000', '522700000000');
INSERT INTO `countries` VALUES ('2666', '罗甸县', '522728000000', '522700000000');
INSERT INTO `countries` VALUES ('2667', '长顺县', '522729000000', '522700000000');
INSERT INTO `countries` VALUES ('2668', '龙里县', '522730000000', '522700000000');
INSERT INTO `countries` VALUES ('2669', '惠水县', '522731000000', '522700000000');
INSERT INTO `countries` VALUES ('2670', '三都水族自治县', '522732000000', '522700000000');
INSERT INTO `countries` VALUES ('2671', '市辖区', '530101000000', '530100000000');
INSERT INTO `countries` VALUES ('2672', '五华区', '530102000000', '530100000000');
INSERT INTO `countries` VALUES ('2673', '盘龙区', '530103000000', '530100000000');
INSERT INTO `countries` VALUES ('2674', '官渡区', '530111000000', '530100000000');
INSERT INTO `countries` VALUES ('2675', '西山区', '530112000000', '530100000000');
INSERT INTO `countries` VALUES ('2676', '东川区', '530113000000', '530100000000');
INSERT INTO `countries` VALUES ('2677', '呈贡区', '530114000000', '530100000000');
INSERT INTO `countries` VALUES ('2678', '晋宁区', '530115000000', '530100000000');
INSERT INTO `countries` VALUES ('2679', '富民县', '530124000000', '530100000000');
INSERT INTO `countries` VALUES ('2680', '宜良县', '530125000000', '530100000000');
INSERT INTO `countries` VALUES ('2681', '石林彝族自治县', '530126000000', '530100000000');
INSERT INTO `countries` VALUES ('2682', '嵩明县', '530127000000', '530100000000');
INSERT INTO `countries` VALUES ('2683', '禄劝彝族苗族自治县', '530128000000', '530100000000');
INSERT INTO `countries` VALUES ('2684', '寻甸回族彝族自治县', '530129000000', '530100000000');
INSERT INTO `countries` VALUES ('2685', '安宁市', '530181000000', '530100000000');
INSERT INTO `countries` VALUES ('2686', '市辖区', '530301000000', '530300000000');
INSERT INTO `countries` VALUES ('2687', '麒麟区', '530302000000', '530300000000');
INSERT INTO `countries` VALUES ('2688', '沾益区', '530303000000', '530300000000');
INSERT INTO `countries` VALUES ('2689', '马龙区', '530304000000', '530300000000');
INSERT INTO `countries` VALUES ('2690', '陆良县', '530322000000', '530300000000');
INSERT INTO `countries` VALUES ('2691', '师宗县', '530323000000', '530300000000');
INSERT INTO `countries` VALUES ('2692', '罗平县', '530324000000', '530300000000');
INSERT INTO `countries` VALUES ('2693', '富源县', '530325000000', '530300000000');
INSERT INTO `countries` VALUES ('2694', '会泽县', '530326000000', '530300000000');
INSERT INTO `countries` VALUES ('2695', '宣威市', '530381000000', '530300000000');
INSERT INTO `countries` VALUES ('2696', '市辖区', '530401000000', '530400000000');
INSERT INTO `countries` VALUES ('2697', '红塔区', '530402000000', '530400000000');
INSERT INTO `countries` VALUES ('2698', '江川区', '530403000000', '530400000000');
INSERT INTO `countries` VALUES ('2699', '澄江县', '530422000000', '530400000000');
INSERT INTO `countries` VALUES ('2700', '通海县', '530423000000', '530400000000');
INSERT INTO `countries` VALUES ('2701', '华宁县', '530424000000', '530400000000');
INSERT INTO `countries` VALUES ('2702', '易门县', '530425000000', '530400000000');
INSERT INTO `countries` VALUES ('2703', '峨山彝族自治县', '530426000000', '530400000000');
INSERT INTO `countries` VALUES ('2704', '新平彝族傣族自治县', '530427000000', '530400000000');
INSERT INTO `countries` VALUES ('2705', '元江哈尼族彝族傣族自治县', '530428000000', '530400000000');
INSERT INTO `countries` VALUES ('2706', '市辖区', '530501000000', '530500000000');
INSERT INTO `countries` VALUES ('2707', '隆阳区', '530502000000', '530500000000');
INSERT INTO `countries` VALUES ('2708', '施甸县', '530521000000', '530500000000');
INSERT INTO `countries` VALUES ('2709', '龙陵县', '530523000000', '530500000000');
INSERT INTO `countries` VALUES ('2710', '昌宁县', '530524000000', '530500000000');
INSERT INTO `countries` VALUES ('2711', '腾冲市', '530581000000', '530500000000');
INSERT INTO `countries` VALUES ('2712', '市辖区', '530601000000', '530600000000');
INSERT INTO `countries` VALUES ('2713', '昭阳区', '530602000000', '530600000000');
INSERT INTO `countries` VALUES ('2714', '鲁甸县', '530621000000', '530600000000');
INSERT INTO `countries` VALUES ('2715', '巧家县', '530622000000', '530600000000');
INSERT INTO `countries` VALUES ('2716', '盐津县', '530623000000', '530600000000');
INSERT INTO `countries` VALUES ('2717', '大关县', '530624000000', '530600000000');
INSERT INTO `countries` VALUES ('2718', '永善县', '530625000000', '530600000000');
INSERT INTO `countries` VALUES ('2719', '绥江县', '530626000000', '530600000000');
INSERT INTO `countries` VALUES ('2720', '镇雄县', '530627000000', '530600000000');
INSERT INTO `countries` VALUES ('2721', '彝良县', '530628000000', '530600000000');
INSERT INTO `countries` VALUES ('2722', '威信县', '530629000000', '530600000000');
INSERT INTO `countries` VALUES ('2723', '水富市', '530681000000', '530600000000');
INSERT INTO `countries` VALUES ('2724', '市辖区', '530701000000', '530700000000');
INSERT INTO `countries` VALUES ('2725', '古城区', '530702000000', '530700000000');
INSERT INTO `countries` VALUES ('2726', '玉龙纳西族自治县', '530721000000', '530700000000');
INSERT INTO `countries` VALUES ('2727', '永胜县', '530722000000', '530700000000');
INSERT INTO `countries` VALUES ('2728', '华坪县', '530723000000', '530700000000');
INSERT INTO `countries` VALUES ('2729', '宁蒗彝族自治县', '530724000000', '530700000000');
INSERT INTO `countries` VALUES ('2730', '市辖区', '530801000000', '530800000000');
INSERT INTO `countries` VALUES ('2731', '思茅区', '530802000000', '530800000000');
INSERT INTO `countries` VALUES ('2732', '宁洱哈尼族彝族自治县', '530821000000', '530800000000');
INSERT INTO `countries` VALUES ('2733', '墨江哈尼族自治县', '530822000000', '530800000000');
INSERT INTO `countries` VALUES ('2734', '景东彝族自治县', '530823000000', '530800000000');
INSERT INTO `countries` VALUES ('2735', '景谷傣族彝族自治县', '530824000000', '530800000000');
INSERT INTO `countries` VALUES ('2736', '镇沅彝族哈尼族拉祜族自治县', '530825000000', '530800000000');
INSERT INTO `countries` VALUES ('2737', '江城哈尼族彝族自治县', '530826000000', '530800000000');
INSERT INTO `countries` VALUES ('2738', '孟连傣族拉祜族佤族自治县', '530827000000', '530800000000');
INSERT INTO `countries` VALUES ('2739', '澜沧拉祜族自治县', '530828000000', '530800000000');
INSERT INTO `countries` VALUES ('2740', '西盟佤族自治县', '530829000000', '530800000000');
INSERT INTO `countries` VALUES ('2741', '市辖区', '530901000000', '530900000000');
INSERT INTO `countries` VALUES ('2742', '临翔区', '530902000000', '530900000000');
INSERT INTO `countries` VALUES ('2743', '凤庆县', '530921000000', '530900000000');
INSERT INTO `countries` VALUES ('2744', '云县', '530922000000', '530900000000');
INSERT INTO `countries` VALUES ('2745', '永德县', '530923000000', '530900000000');
INSERT INTO `countries` VALUES ('2746', '镇康县', '530924000000', '530900000000');
INSERT INTO `countries` VALUES ('2747', '双江拉祜族佤族布朗族傣族自治县', '530925000000', '530900000000');
INSERT INTO `countries` VALUES ('2748', '耿马傣族佤族自治县', '530926000000', '530900000000');
INSERT INTO `countries` VALUES ('2749', '沧源佤族自治县', '530927000000', '530900000000');
INSERT INTO `countries` VALUES ('2750', '楚雄市', '532301000000', '532300000000');
INSERT INTO `countries` VALUES ('2751', '双柏县', '532322000000', '532300000000');
INSERT INTO `countries` VALUES ('2752', '牟定县', '532323000000', '532300000000');
INSERT INTO `countries` VALUES ('2753', '南华县', '532324000000', '532300000000');
INSERT INTO `countries` VALUES ('2754', '姚安县', '532325000000', '532300000000');
INSERT INTO `countries` VALUES ('2755', '大姚县', '532326000000', '532300000000');
INSERT INTO `countries` VALUES ('2756', '永仁县', '532327000000', '532300000000');
INSERT INTO `countries` VALUES ('2757', '元谋县', '532328000000', '532300000000');
INSERT INTO `countries` VALUES ('2758', '武定县', '532329000000', '532300000000');
INSERT INTO `countries` VALUES ('2759', '禄丰县', '532331000000', '532300000000');
INSERT INTO `countries` VALUES ('2760', '个旧市', '532501000000', '532500000000');
INSERT INTO `countries` VALUES ('2761', '开远市', '532502000000', '532500000000');
INSERT INTO `countries` VALUES ('2762', '蒙自市', '532503000000', '532500000000');
INSERT INTO `countries` VALUES ('2763', '弥勒市', '532504000000', '532500000000');
INSERT INTO `countries` VALUES ('2764', '屏边苗族自治县', '532523000000', '532500000000');
INSERT INTO `countries` VALUES ('2765', '建水县', '532524000000', '532500000000');
INSERT INTO `countries` VALUES ('2766', '石屏县', '532525000000', '532500000000');
INSERT INTO `countries` VALUES ('2767', '泸西县', '532527000000', '532500000000');
INSERT INTO `countries` VALUES ('2768', '元阳县', '532528000000', '532500000000');
INSERT INTO `countries` VALUES ('2769', '红河县', '532529000000', '532500000000');
INSERT INTO `countries` VALUES ('2770', '金平苗族瑶族傣族自治县', '532530000000', '532500000000');
INSERT INTO `countries` VALUES ('2771', '绿春县', '532531000000', '532500000000');
INSERT INTO `countries` VALUES ('2772', '河口瑶族自治县', '532532000000', '532500000000');
INSERT INTO `countries` VALUES ('2773', '文山市', '532601000000', '532600000000');
INSERT INTO `countries` VALUES ('2774', '砚山县', '532622000000', '532600000000');
INSERT INTO `countries` VALUES ('2775', '西畴县', '532623000000', '532600000000');
INSERT INTO `countries` VALUES ('2776', '麻栗坡县', '532624000000', '532600000000');
INSERT INTO `countries` VALUES ('2777', '马关县', '532625000000', '532600000000');
INSERT INTO `countries` VALUES ('2778', '丘北县', '532626000000', '532600000000');
INSERT INTO `countries` VALUES ('2779', '广南县', '532627000000', '532600000000');
INSERT INTO `countries` VALUES ('2780', '富宁县', '532628000000', '532600000000');
INSERT INTO `countries` VALUES ('2781', '景洪市', '532801000000', '532800000000');
INSERT INTO `countries` VALUES ('2782', '勐海县', '532822000000', '532800000000');
INSERT INTO `countries` VALUES ('2783', '勐腊县', '532823000000', '532800000000');
INSERT INTO `countries` VALUES ('2784', '大理市', '532901000000', '532900000000');
INSERT INTO `countries` VALUES ('2785', '漾濞彝族自治县', '532922000000', '532900000000');
INSERT INTO `countries` VALUES ('2786', '祥云县', '532923000000', '532900000000');
INSERT INTO `countries` VALUES ('2787', '宾川县', '532924000000', '532900000000');
INSERT INTO `countries` VALUES ('2788', '弥渡县', '532925000000', '532900000000');
INSERT INTO `countries` VALUES ('2789', '南涧彝族自治县', '532926000000', '532900000000');
INSERT INTO `countries` VALUES ('2790', '巍山彝族回族自治县', '532927000000', '532900000000');
INSERT INTO `countries` VALUES ('2791', '永平县', '532928000000', '532900000000');
INSERT INTO `countries` VALUES ('2792', '云龙县', '532929000000', '532900000000');
INSERT INTO `countries` VALUES ('2793', '洱源县', '532930000000', '532900000000');
INSERT INTO `countries` VALUES ('2794', '剑川县', '532931000000', '532900000000');
INSERT INTO `countries` VALUES ('2795', '鹤庆县', '532932000000', '532900000000');
INSERT INTO `countries` VALUES ('2796', '瑞丽市', '533102000000', '533100000000');
INSERT INTO `countries` VALUES ('2797', '芒市', '533103000000', '533100000000');
INSERT INTO `countries` VALUES ('2798', '梁河县', '533122000000', '533100000000');
INSERT INTO `countries` VALUES ('2799', '盈江县', '533123000000', '533100000000');
INSERT INTO `countries` VALUES ('2800', '陇川县', '533124000000', '533100000000');
INSERT INTO `countries` VALUES ('2801', '泸水市', '533301000000', '533300000000');
INSERT INTO `countries` VALUES ('2802', '福贡县', '533323000000', '533300000000');
INSERT INTO `countries` VALUES ('2803', '贡山独龙族怒族自治县', '533324000000', '533300000000');
INSERT INTO `countries` VALUES ('2804', '兰坪白族普米族自治县', '533325000000', '533300000000');
INSERT INTO `countries` VALUES ('2805', '香格里拉市', '533401000000', '533400000000');
INSERT INTO `countries` VALUES ('2806', '德钦县', '533422000000', '533400000000');
INSERT INTO `countries` VALUES ('2807', '维西傈僳族自治县', '533423000000', '533400000000');
INSERT INTO `countries` VALUES ('2808', '市辖区', '540101000000', '540100000000');
INSERT INTO `countries` VALUES ('2809', '城关区', '540102000000', '540100000000');
INSERT INTO `countries` VALUES ('2810', '堆龙德庆区', '540103000000', '540100000000');
INSERT INTO `countries` VALUES ('2811', '达孜区', '540104000000', '540100000000');
INSERT INTO `countries` VALUES ('2812', '林周县', '540121000000', '540100000000');
INSERT INTO `countries` VALUES ('2813', '当雄县', '540122000000', '540100000000');
INSERT INTO `countries` VALUES ('2814', '尼木县', '540123000000', '540100000000');
INSERT INTO `countries` VALUES ('2815', '曲水县', '540124000000', '540100000000');
INSERT INTO `countries` VALUES ('2816', '墨竹工卡县', '540127000000', '540100000000');
INSERT INTO `countries` VALUES ('2817', '格尔木藏青工业园区', '540171000000', '540100000000');
INSERT INTO `countries` VALUES ('2818', '拉萨经济技术开发区', '540172000000', '540100000000');
INSERT INTO `countries` VALUES ('2819', '西藏文化旅游创意园区', '540173000000', '540100000000');
INSERT INTO `countries` VALUES ('2820', '达孜工业园区', '540174000000', '540100000000');
INSERT INTO `countries` VALUES ('2821', '桑珠孜区', '540202000000', '540200000000');
INSERT INTO `countries` VALUES ('2822', '南木林县', '540221000000', '540200000000');
INSERT INTO `countries` VALUES ('2823', '江孜县', '540222000000', '540200000000');
INSERT INTO `countries` VALUES ('2824', '定日县', '540223000000', '540200000000');
INSERT INTO `countries` VALUES ('2825', '萨迦县', '540224000000', '540200000000');
INSERT INTO `countries` VALUES ('2826', '拉孜县', '540225000000', '540200000000');
INSERT INTO `countries` VALUES ('2827', '昂仁县', '540226000000', '540200000000');
INSERT INTO `countries` VALUES ('2828', '谢通门县', '540227000000', '540200000000');
INSERT INTO `countries` VALUES ('2829', '白朗县', '540228000000', '540200000000');
INSERT INTO `countries` VALUES ('2830', '仁布县', '540229000000', '540200000000');
INSERT INTO `countries` VALUES ('2831', '康马县', '540230000000', '540200000000');
INSERT INTO `countries` VALUES ('2832', '定结县', '540231000000', '540200000000');
INSERT INTO `countries` VALUES ('2833', '仲巴县', '540232000000', '540200000000');
INSERT INTO `countries` VALUES ('2834', '亚东县', '540233000000', '540200000000');
INSERT INTO `countries` VALUES ('2835', '吉隆县', '540234000000', '540200000000');
INSERT INTO `countries` VALUES ('2836', '聂拉木县', '540235000000', '540200000000');
INSERT INTO `countries` VALUES ('2837', '萨嘎县', '540236000000', '540200000000');
INSERT INTO `countries` VALUES ('2838', '岗巴县', '540237000000', '540200000000');
INSERT INTO `countries` VALUES ('2839', '卡若区', '540302000000', '540300000000');
INSERT INTO `countries` VALUES ('2840', '江达县', '540321000000', '540300000000');
INSERT INTO `countries` VALUES ('2841', '贡觉县', '540322000000', '540300000000');
INSERT INTO `countries` VALUES ('2842', '类乌齐县', '540323000000', '540300000000');
INSERT INTO `countries` VALUES ('2843', '丁青县', '540324000000', '540300000000');
INSERT INTO `countries` VALUES ('2844', '察雅县', '540325000000', '540300000000');
INSERT INTO `countries` VALUES ('2845', '八宿县', '540326000000', '540300000000');
INSERT INTO `countries` VALUES ('2846', '左贡县', '540327000000', '540300000000');
INSERT INTO `countries` VALUES ('2847', '芒康县', '540328000000', '540300000000');
INSERT INTO `countries` VALUES ('2848', '洛隆县', '540329000000', '540300000000');
INSERT INTO `countries` VALUES ('2849', '边坝县', '540330000000', '540300000000');
INSERT INTO `countries` VALUES ('2850', '巴宜区', '540402000000', '540400000000');
INSERT INTO `countries` VALUES ('2851', '工布江达县', '540421000000', '540400000000');
INSERT INTO `countries` VALUES ('2852', '米林县', '540422000000', '540400000000');
INSERT INTO `countries` VALUES ('2853', '墨脱县', '540423000000', '540400000000');
INSERT INTO `countries` VALUES ('2854', '波密县', '540424000000', '540400000000');
INSERT INTO `countries` VALUES ('2855', '察隅县', '540425000000', '540400000000');
INSERT INTO `countries` VALUES ('2856', '朗县', '540426000000', '540400000000');
INSERT INTO `countries` VALUES ('2857', '市辖区', '540501000000', '540500000000');
INSERT INTO `countries` VALUES ('2858', '乃东区', '540502000000', '540500000000');
INSERT INTO `countries` VALUES ('2859', '扎囊县', '540521000000', '540500000000');
INSERT INTO `countries` VALUES ('2860', '贡嘎县', '540522000000', '540500000000');
INSERT INTO `countries` VALUES ('2861', '桑日县', '540523000000', '540500000000');
INSERT INTO `countries` VALUES ('2862', '琼结县', '540524000000', '540500000000');
INSERT INTO `countries` VALUES ('2863', '曲松县', '540525000000', '540500000000');
INSERT INTO `countries` VALUES ('2864', '措美县', '540526000000', '540500000000');
INSERT INTO `countries` VALUES ('2865', '洛扎县', '540527000000', '540500000000');
INSERT INTO `countries` VALUES ('2866', '加查县', '540528000000', '540500000000');
INSERT INTO `countries` VALUES ('2867', '隆子县', '540529000000', '540500000000');
INSERT INTO `countries` VALUES ('2868', '错那县', '540530000000', '540500000000');
INSERT INTO `countries` VALUES ('2869', '浪卡子县', '540531000000', '540500000000');
INSERT INTO `countries` VALUES ('2870', '色尼区', '540602000000', '540600000000');
INSERT INTO `countries` VALUES ('2871', '嘉黎县', '540621000000', '540600000000');
INSERT INTO `countries` VALUES ('2872', '比如县', '540622000000', '540600000000');
INSERT INTO `countries` VALUES ('2873', '聂荣县', '540623000000', '540600000000');
INSERT INTO `countries` VALUES ('2874', '安多县', '540624000000', '540600000000');
INSERT INTO `countries` VALUES ('2875', '申扎县', '540625000000', '540600000000');
INSERT INTO `countries` VALUES ('2876', '索县', '540626000000', '540600000000');
INSERT INTO `countries` VALUES ('2877', '班戈县', '540627000000', '540600000000');
INSERT INTO `countries` VALUES ('2878', '巴青县', '540628000000', '540600000000');
INSERT INTO `countries` VALUES ('2879', '尼玛县', '540629000000', '540600000000');
INSERT INTO `countries` VALUES ('2880', '双湖县', '540630000000', '540600000000');
INSERT INTO `countries` VALUES ('2881', '普兰县', '542521000000', '542500000000');
INSERT INTO `countries` VALUES ('2882', '札达县', '542522000000', '542500000000');
INSERT INTO `countries` VALUES ('2883', '噶尔县', '542523000000', '542500000000');
INSERT INTO `countries` VALUES ('2884', '日土县', '542524000000', '542500000000');
INSERT INTO `countries` VALUES ('2885', '革吉县', '542525000000', '542500000000');
INSERT INTO `countries` VALUES ('2886', '改则县', '542526000000', '542500000000');
INSERT INTO `countries` VALUES ('2887', '措勤县', '542527000000', '542500000000');
INSERT INTO `countries` VALUES ('2888', '市辖区', '610101000000', '610100000000');
INSERT INTO `countries` VALUES ('2889', '新城区', '610102000000', '610100000000');
INSERT INTO `countries` VALUES ('2890', '碑林区', '610103000000', '610100000000');
INSERT INTO `countries` VALUES ('2891', '莲湖区', '610104000000', '610100000000');
INSERT INTO `countries` VALUES ('2892', '灞桥区', '610111000000', '610100000000');
INSERT INTO `countries` VALUES ('2893', '未央区', '610112000000', '610100000000');
INSERT INTO `countries` VALUES ('2894', '雁塔区', '610113000000', '610100000000');
INSERT INTO `countries` VALUES ('2895', '阎良区', '610114000000', '610100000000');
INSERT INTO `countries` VALUES ('2896', '临潼区', '610115000000', '610100000000');
INSERT INTO `countries` VALUES ('2897', '长安区', '610116000000', '610100000000');
INSERT INTO `countries` VALUES ('2898', '高陵区', '610117000000', '610100000000');
INSERT INTO `countries` VALUES ('2899', '鄠邑区', '610118000000', '610100000000');
INSERT INTO `countries` VALUES ('2900', '蓝田县', '610122000000', '610100000000');
INSERT INTO `countries` VALUES ('2901', '周至县', '610124000000', '610100000000');
INSERT INTO `countries` VALUES ('2902', '市辖区', '610201000000', '610200000000');
INSERT INTO `countries` VALUES ('2903', '王益区', '610202000000', '610200000000');
INSERT INTO `countries` VALUES ('2904', '印台区', '610203000000', '610200000000');
INSERT INTO `countries` VALUES ('2905', '耀州区', '610204000000', '610200000000');
INSERT INTO `countries` VALUES ('2906', '宜君县', '610222000000', '610200000000');
INSERT INTO `countries` VALUES ('2907', '市辖区', '610301000000', '610300000000');
INSERT INTO `countries` VALUES ('2908', '渭滨区', '610302000000', '610300000000');
INSERT INTO `countries` VALUES ('2909', '金台区', '610303000000', '610300000000');
INSERT INTO `countries` VALUES ('2910', '陈仓区', '610304000000', '610300000000');
INSERT INTO `countries` VALUES ('2911', '凤翔县', '610322000000', '610300000000');
INSERT INTO `countries` VALUES ('2912', '岐山县', '610323000000', '610300000000');
INSERT INTO `countries` VALUES ('2913', '扶风县', '610324000000', '610300000000');
INSERT INTO `countries` VALUES ('2914', '眉县', '610326000000', '610300000000');
INSERT INTO `countries` VALUES ('2915', '陇县', '610327000000', '610300000000');
INSERT INTO `countries` VALUES ('2916', '千阳县', '610328000000', '610300000000');
INSERT INTO `countries` VALUES ('2917', '麟游县', '610329000000', '610300000000');
INSERT INTO `countries` VALUES ('2918', '凤县', '610330000000', '610300000000');
INSERT INTO `countries` VALUES ('2919', '太白县', '610331000000', '610300000000');
INSERT INTO `countries` VALUES ('2920', '市辖区', '610401000000', '610400000000');
INSERT INTO `countries` VALUES ('2921', '秦都区', '610402000000', '610400000000');
INSERT INTO `countries` VALUES ('2922', '杨陵区', '610403000000', '610400000000');
INSERT INTO `countries` VALUES ('2923', '渭城区', '610404000000', '610400000000');
INSERT INTO `countries` VALUES ('2924', '三原县', '610422000000', '610400000000');
INSERT INTO `countries` VALUES ('2925', '泾阳县', '610423000000', '610400000000');
INSERT INTO `countries` VALUES ('2926', '乾县', '610424000000', '610400000000');
INSERT INTO `countries` VALUES ('2927', '礼泉县', '610425000000', '610400000000');
INSERT INTO `countries` VALUES ('2928', '永寿县', '610426000000', '610400000000');
INSERT INTO `countries` VALUES ('2929', '长武县', '610428000000', '610400000000');
INSERT INTO `countries` VALUES ('2930', '旬邑县', '610429000000', '610400000000');
INSERT INTO `countries` VALUES ('2931', '淳化县', '610430000000', '610400000000');
INSERT INTO `countries` VALUES ('2932', '武功县', '610431000000', '610400000000');
INSERT INTO `countries` VALUES ('2933', '兴平市', '610481000000', '610400000000');
INSERT INTO `countries` VALUES ('2934', '彬州市', '610482000000', '610400000000');
INSERT INTO `countries` VALUES ('2935', '市辖区', '610501000000', '610500000000');
INSERT INTO `countries` VALUES ('2936', '临渭区', '610502000000', '610500000000');
INSERT INTO `countries` VALUES ('2937', '华州区', '610503000000', '610500000000');
INSERT INTO `countries` VALUES ('2938', '潼关县', '610522000000', '610500000000');
INSERT INTO `countries` VALUES ('2939', '大荔县', '610523000000', '610500000000');
INSERT INTO `countries` VALUES ('2940', '合阳县', '610524000000', '610500000000');
INSERT INTO `countries` VALUES ('2941', '澄城县', '610525000000', '610500000000');
INSERT INTO `countries` VALUES ('2942', '蒲城县', '610526000000', '610500000000');
INSERT INTO `countries` VALUES ('2943', '白水县', '610527000000', '610500000000');
INSERT INTO `countries` VALUES ('2944', '富平县', '610528000000', '610500000000');
INSERT INTO `countries` VALUES ('2945', '韩城市', '610581000000', '610500000000');
INSERT INTO `countries` VALUES ('2946', '华阴市', '610582000000', '610500000000');
INSERT INTO `countries` VALUES ('2947', '市辖区', '610601000000', '610600000000');
INSERT INTO `countries` VALUES ('2948', '宝塔区', '610602000000', '610600000000');
INSERT INTO `countries` VALUES ('2949', '安塞区', '610603000000', '610600000000');
INSERT INTO `countries` VALUES ('2950', '延长县', '610621000000', '610600000000');
INSERT INTO `countries` VALUES ('2951', '延川县', '610622000000', '610600000000');
INSERT INTO `countries` VALUES ('2952', '子长县', '610623000000', '610600000000');
INSERT INTO `countries` VALUES ('2953', '志丹县', '610625000000', '610600000000');
INSERT INTO `countries` VALUES ('2954', '吴起县', '610626000000', '610600000000');
INSERT INTO `countries` VALUES ('2955', '甘泉县', '610627000000', '610600000000');
INSERT INTO `countries` VALUES ('2956', '富县', '610628000000', '610600000000');
INSERT INTO `countries` VALUES ('2957', '洛川县', '610629000000', '610600000000');
INSERT INTO `countries` VALUES ('2958', '宜川县', '610630000000', '610600000000');
INSERT INTO `countries` VALUES ('2959', '黄龙县', '610631000000', '610600000000');
INSERT INTO `countries` VALUES ('2960', '黄陵县', '610632000000', '610600000000');
INSERT INTO `countries` VALUES ('2961', '市辖区', '610701000000', '610700000000');
INSERT INTO `countries` VALUES ('2962', '汉台区', '610702000000', '610700000000');
INSERT INTO `countries` VALUES ('2963', '南郑区', '610703000000', '610700000000');
INSERT INTO `countries` VALUES ('2964', '城固县', '610722000000', '610700000000');
INSERT INTO `countries` VALUES ('2965', '洋县', '610723000000', '610700000000');
INSERT INTO `countries` VALUES ('2966', '西乡县', '610724000000', '610700000000');
INSERT INTO `countries` VALUES ('2967', '勉县', '610725000000', '610700000000');
INSERT INTO `countries` VALUES ('2968', '宁强县', '610726000000', '610700000000');
INSERT INTO `countries` VALUES ('2969', '略阳县', '610727000000', '610700000000');
INSERT INTO `countries` VALUES ('2970', '镇巴县', '610728000000', '610700000000');
INSERT INTO `countries` VALUES ('2971', '留坝县', '610729000000', '610700000000');
INSERT INTO `countries` VALUES ('2972', '佛坪县', '610730000000', '610700000000');
INSERT INTO `countries` VALUES ('2973', '市辖区', '610801000000', '610800000000');
INSERT INTO `countries` VALUES ('2974', '榆阳区', '610802000000', '610800000000');
INSERT INTO `countries` VALUES ('2975', '横山区', '610803000000', '610800000000');
INSERT INTO `countries` VALUES ('2976', '府谷县', '610822000000', '610800000000');
INSERT INTO `countries` VALUES ('2977', '靖边县', '610824000000', '610800000000');
INSERT INTO `countries` VALUES ('2978', '定边县', '610825000000', '610800000000');
INSERT INTO `countries` VALUES ('2979', '绥德县', '610826000000', '610800000000');
INSERT INTO `countries` VALUES ('2980', '米脂县', '610827000000', '610800000000');
INSERT INTO `countries` VALUES ('2981', '佳县', '610828000000', '610800000000');
INSERT INTO `countries` VALUES ('2982', '吴堡县', '610829000000', '610800000000');
INSERT INTO `countries` VALUES ('2983', '清涧县', '610830000000', '610800000000');
INSERT INTO `countries` VALUES ('2984', '子洲县', '610831000000', '610800000000');
INSERT INTO `countries` VALUES ('2985', '神木市', '610881000000', '610800000000');
INSERT INTO `countries` VALUES ('2986', '市辖区', '610901000000', '610900000000');
INSERT INTO `countries` VALUES ('2987', '汉滨区', '610902000000', '610900000000');
INSERT INTO `countries` VALUES ('2988', '汉阴县', '610921000000', '610900000000');
INSERT INTO `countries` VALUES ('2989', '石泉县', '610922000000', '610900000000');
INSERT INTO `countries` VALUES ('2990', '宁陕县', '610923000000', '610900000000');
INSERT INTO `countries` VALUES ('2991', '紫阳县', '610924000000', '610900000000');
INSERT INTO `countries` VALUES ('2992', '岚皋县', '610925000000', '610900000000');
INSERT INTO `countries` VALUES ('2993', '平利县', '610926000000', '610900000000');
INSERT INTO `countries` VALUES ('2994', '镇坪县', '610927000000', '610900000000');
INSERT INTO `countries` VALUES ('2995', '旬阳县', '610928000000', '610900000000');
INSERT INTO `countries` VALUES ('2996', '白河县', '610929000000', '610900000000');
INSERT INTO `countries` VALUES ('2997', '市辖区', '611001000000', '611000000000');
INSERT INTO `countries` VALUES ('2998', '商州区', '611002000000', '611000000000');
INSERT INTO `countries` VALUES ('2999', '洛南县', '611021000000', '611000000000');
INSERT INTO `countries` VALUES ('3000', '丹凤县', '611022000000', '611000000000');
INSERT INTO `countries` VALUES ('3001', '商南县', '611023000000', '611000000000');
INSERT INTO `countries` VALUES ('3002', '山阳县', '611024000000', '611000000000');
INSERT INTO `countries` VALUES ('3003', '镇安县', '611025000000', '611000000000');
INSERT INTO `countries` VALUES ('3004', '柞水县', '611026000000', '611000000000');
INSERT INTO `countries` VALUES ('3005', '市辖区', '620101000000', '620100000000');
INSERT INTO `countries` VALUES ('3006', '城关区', '620102000000', '620100000000');
INSERT INTO `countries` VALUES ('3007', '七里河区', '620103000000', '620100000000');
INSERT INTO `countries` VALUES ('3008', '西固区', '620104000000', '620100000000');
INSERT INTO `countries` VALUES ('3009', '安宁区', '620105000000', '620100000000');
INSERT INTO `countries` VALUES ('3010', '红古区', '620111000000', '620100000000');
INSERT INTO `countries` VALUES ('3011', '永登县', '620121000000', '620100000000');
INSERT INTO `countries` VALUES ('3012', '皋兰县', '620122000000', '620100000000');
INSERT INTO `countries` VALUES ('3013', '榆中县', '620123000000', '620100000000');
INSERT INTO `countries` VALUES ('3014', '兰州新区', '620171000000', '620100000000');
INSERT INTO `countries` VALUES ('3015', '市辖区', '620201000000', '620200000000');
INSERT INTO `countries` VALUES ('3016', '市辖区', '620301000000', '620300000000');
INSERT INTO `countries` VALUES ('3017', '金川区', '620302000000', '620300000000');
INSERT INTO `countries` VALUES ('3018', '永昌县', '620321000000', '620300000000');
INSERT INTO `countries` VALUES ('3019', '市辖区', '620401000000', '620400000000');
INSERT INTO `countries` VALUES ('3020', '白银区', '620402000000', '620400000000');
INSERT INTO `countries` VALUES ('3021', '平川区', '620403000000', '620400000000');
INSERT INTO `countries` VALUES ('3022', '靖远县', '620421000000', '620400000000');
INSERT INTO `countries` VALUES ('3023', '会宁县', '620422000000', '620400000000');
INSERT INTO `countries` VALUES ('3024', '景泰县', '620423000000', '620400000000');
INSERT INTO `countries` VALUES ('3025', '市辖区', '620501000000', '620500000000');
INSERT INTO `countries` VALUES ('3026', '秦州区', '620502000000', '620500000000');
INSERT INTO `countries` VALUES ('3027', '麦积区', '620503000000', '620500000000');
INSERT INTO `countries` VALUES ('3028', '清水县', '620521000000', '620500000000');
INSERT INTO `countries` VALUES ('3029', '秦安县', '620522000000', '620500000000');
INSERT INTO `countries` VALUES ('3030', '甘谷县', '620523000000', '620500000000');
INSERT INTO `countries` VALUES ('3031', '武山县', '620524000000', '620500000000');
INSERT INTO `countries` VALUES ('3032', '张家川回族自治县', '620525000000', '620500000000');
INSERT INTO `countries` VALUES ('3033', '市辖区', '620601000000', '620600000000');
INSERT INTO `countries` VALUES ('3034', '凉州区', '620602000000', '620600000000');
INSERT INTO `countries` VALUES ('3035', '民勤县', '620621000000', '620600000000');
INSERT INTO `countries` VALUES ('3036', '古浪县', '620622000000', '620600000000');
INSERT INTO `countries` VALUES ('3037', '天祝藏族自治县', '620623000000', '620600000000');
INSERT INTO `countries` VALUES ('3038', '市辖区', '620701000000', '620700000000');
INSERT INTO `countries` VALUES ('3039', '甘州区', '620702000000', '620700000000');
INSERT INTO `countries` VALUES ('3040', '肃南裕固族自治县', '620721000000', '620700000000');
INSERT INTO `countries` VALUES ('3041', '民乐县', '620722000000', '620700000000');
INSERT INTO `countries` VALUES ('3042', '临泽县', '620723000000', '620700000000');
INSERT INTO `countries` VALUES ('3043', '高台县', '620724000000', '620700000000');
INSERT INTO `countries` VALUES ('3044', '山丹县', '620725000000', '620700000000');
INSERT INTO `countries` VALUES ('3045', '市辖区', '620801000000', '620800000000');
INSERT INTO `countries` VALUES ('3046', '崆峒区', '620802000000', '620800000000');
INSERT INTO `countries` VALUES ('3047', '泾川县', '620821000000', '620800000000');
INSERT INTO `countries` VALUES ('3048', '灵台县', '620822000000', '620800000000');
INSERT INTO `countries` VALUES ('3049', '崇信县', '620823000000', '620800000000');
INSERT INTO `countries` VALUES ('3050', '庄浪县', '620825000000', '620800000000');
INSERT INTO `countries` VALUES ('3051', '静宁县', '620826000000', '620800000000');
INSERT INTO `countries` VALUES ('3052', '华亭市', '620881000000', '620800000000');
INSERT INTO `countries` VALUES ('3053', '市辖区', '620901000000', '620900000000');
INSERT INTO `countries` VALUES ('3054', '肃州区', '620902000000', '620900000000');
INSERT INTO `countries` VALUES ('3055', '金塔县', '620921000000', '620900000000');
INSERT INTO `countries` VALUES ('3056', '瓜州县', '620922000000', '620900000000');
INSERT INTO `countries` VALUES ('3057', '肃北蒙古族自治县', '620923000000', '620900000000');
INSERT INTO `countries` VALUES ('3058', '阿克塞哈萨克族自治县', '620924000000', '620900000000');
INSERT INTO `countries` VALUES ('3059', '玉门市', '620981000000', '620900000000');
INSERT INTO `countries` VALUES ('3060', '敦煌市', '620982000000', '620900000000');
INSERT INTO `countries` VALUES ('3061', '市辖区', '621001000000', '621000000000');
INSERT INTO `countries` VALUES ('3062', '西峰区', '621002000000', '621000000000');
INSERT INTO `countries` VALUES ('3063', '庆城县', '621021000000', '621000000000');
INSERT INTO `countries` VALUES ('3064', '环县', '621022000000', '621000000000');
INSERT INTO `countries` VALUES ('3065', '华池县', '621023000000', '621000000000');
INSERT INTO `countries` VALUES ('3066', '合水县', '621024000000', '621000000000');
INSERT INTO `countries` VALUES ('3067', '正宁县', '621025000000', '621000000000');
INSERT INTO `countries` VALUES ('3068', '宁县', '621026000000', '621000000000');
INSERT INTO `countries` VALUES ('3069', '镇原县', '621027000000', '621000000000');
INSERT INTO `countries` VALUES ('3070', '市辖区', '621101000000', '621100000000');
INSERT INTO `countries` VALUES ('3071', '安定区', '621102000000', '621100000000');
INSERT INTO `countries` VALUES ('3072', '通渭县', '621121000000', '621100000000');
INSERT INTO `countries` VALUES ('3073', '陇西县', '621122000000', '621100000000');
INSERT INTO `countries` VALUES ('3074', '渭源县', '621123000000', '621100000000');
INSERT INTO `countries` VALUES ('3075', '临洮县', '621124000000', '621100000000');
INSERT INTO `countries` VALUES ('3076', '漳县', '621125000000', '621100000000');
INSERT INTO `countries` VALUES ('3077', '岷县', '621126000000', '621100000000');
INSERT INTO `countries` VALUES ('3078', '市辖区', '621201000000', '621200000000');
INSERT INTO `countries` VALUES ('3079', '武都区', '621202000000', '621200000000');
INSERT INTO `countries` VALUES ('3080', '成县', '621221000000', '621200000000');
INSERT INTO `countries` VALUES ('3081', '文县', '621222000000', '621200000000');
INSERT INTO `countries` VALUES ('3082', '宕昌县', '621223000000', '621200000000');
INSERT INTO `countries` VALUES ('3083', '康县', '621224000000', '621200000000');
INSERT INTO `countries` VALUES ('3084', '西和县', '621225000000', '621200000000');
INSERT INTO `countries` VALUES ('3085', '礼县', '621226000000', '621200000000');
INSERT INTO `countries` VALUES ('3086', '徽县', '621227000000', '621200000000');
INSERT INTO `countries` VALUES ('3087', '两当县', '621228000000', '621200000000');
INSERT INTO `countries` VALUES ('3088', '临夏市', '622901000000', '622900000000');
INSERT INTO `countries` VALUES ('3089', '临夏县', '622921000000', '622900000000');
INSERT INTO `countries` VALUES ('3090', '康乐县', '622922000000', '622900000000');
INSERT INTO `countries` VALUES ('3091', '永靖县', '622923000000', '622900000000');
INSERT INTO `countries` VALUES ('3092', '广河县', '622924000000', '622900000000');
INSERT INTO `countries` VALUES ('3093', '和政县', '622925000000', '622900000000');
INSERT INTO `countries` VALUES ('3094', '东乡族自治县', '622926000000', '622900000000');
INSERT INTO `countries` VALUES ('3095', '积石山保安族东乡族撒拉族自治县', '622927000000', '622900000000');
INSERT INTO `countries` VALUES ('3096', '合作市', '623001000000', '623000000000');
INSERT INTO `countries` VALUES ('3097', '临潭县', '623021000000', '623000000000');
INSERT INTO `countries` VALUES ('3098', '卓尼县', '623022000000', '623000000000');
INSERT INTO `countries` VALUES ('3099', '舟曲县', '623023000000', '623000000000');
INSERT INTO `countries` VALUES ('3100', '迭部县', '623024000000', '623000000000');
INSERT INTO `countries` VALUES ('3101', '玛曲县', '623025000000', '623000000000');
INSERT INTO `countries` VALUES ('3102', '碌曲县', '623026000000', '623000000000');
INSERT INTO `countries` VALUES ('3103', '夏河县', '623027000000', '623000000000');
INSERT INTO `countries` VALUES ('3104', '市辖区', '630101000000', '630100000000');
INSERT INTO `countries` VALUES ('3105', '城东区', '630102000000', '630100000000');
INSERT INTO `countries` VALUES ('3106', '城中区', '630103000000', '630100000000');
INSERT INTO `countries` VALUES ('3107', '城西区', '630104000000', '630100000000');
INSERT INTO `countries` VALUES ('3108', '城北区', '630105000000', '630100000000');
INSERT INTO `countries` VALUES ('3109', '大通回族土族自治县', '630121000000', '630100000000');
INSERT INTO `countries` VALUES ('3110', '湟中县', '630122000000', '630100000000');
INSERT INTO `countries` VALUES ('3111', '湟源县', '630123000000', '630100000000');
INSERT INTO `countries` VALUES ('3112', '乐都区', '630202000000', '630200000000');
INSERT INTO `countries` VALUES ('3113', '平安区', '630203000000', '630200000000');
INSERT INTO `countries` VALUES ('3114', '民和回族土族自治县', '630222000000', '630200000000');
INSERT INTO `countries` VALUES ('3115', '互助土族自治县', '630223000000', '630200000000');
INSERT INTO `countries` VALUES ('3116', '化隆回族自治县', '630224000000', '630200000000');
INSERT INTO `countries` VALUES ('3117', '循化撒拉族自治县', '630225000000', '630200000000');
INSERT INTO `countries` VALUES ('3118', '门源回族自治县', '632221000000', '632200000000');
INSERT INTO `countries` VALUES ('3119', '祁连县', '632222000000', '632200000000');
INSERT INTO `countries` VALUES ('3120', '海晏县', '632223000000', '632200000000');
INSERT INTO `countries` VALUES ('3121', '刚察县', '632224000000', '632200000000');
INSERT INTO `countries` VALUES ('3122', '同仁县', '632321000000', '632300000000');
INSERT INTO `countries` VALUES ('3123', '尖扎县', '632322000000', '632300000000');
INSERT INTO `countries` VALUES ('3124', '泽库县', '632323000000', '632300000000');
INSERT INTO `countries` VALUES ('3125', '河南蒙古族自治县', '632324000000', '632300000000');
INSERT INTO `countries` VALUES ('3126', '共和县', '632521000000', '632500000000');
INSERT INTO `countries` VALUES ('3127', '同德县', '632522000000', '632500000000');
INSERT INTO `countries` VALUES ('3128', '贵德县', '632523000000', '632500000000');
INSERT INTO `countries` VALUES ('3129', '兴海县', '632524000000', '632500000000');
INSERT INTO `countries` VALUES ('3130', '贵南县', '632525000000', '632500000000');
INSERT INTO `countries` VALUES ('3131', '玛沁县', '632621000000', '632600000000');
INSERT INTO `countries` VALUES ('3132', '班玛县', '632622000000', '632600000000');
INSERT INTO `countries` VALUES ('3133', '甘德县', '632623000000', '632600000000');
INSERT INTO `countries` VALUES ('3134', '达日县', '632624000000', '632600000000');
INSERT INTO `countries` VALUES ('3135', '久治县', '632625000000', '632600000000');
INSERT INTO `countries` VALUES ('3136', '玛多县', '632626000000', '632600000000');
INSERT INTO `countries` VALUES ('3137', '玉树市', '632701000000', '632700000000');
INSERT INTO `countries` VALUES ('3138', '杂多县', '632722000000', '632700000000');
INSERT INTO `countries` VALUES ('3139', '称多县', '632723000000', '632700000000');
INSERT INTO `countries` VALUES ('3140', '治多县', '632724000000', '632700000000');
INSERT INTO `countries` VALUES ('3141', '囊谦县', '632725000000', '632700000000');
INSERT INTO `countries` VALUES ('3142', '曲麻莱县', '632726000000', '632700000000');
INSERT INTO `countries` VALUES ('3143', '格尔木市', '632801000000', '632800000000');
INSERT INTO `countries` VALUES ('3144', '德令哈市', '632802000000', '632800000000');
INSERT INTO `countries` VALUES ('3145', '茫崖市', '632803000000', '632800000000');
INSERT INTO `countries` VALUES ('3146', '乌兰县', '632821000000', '632800000000');
INSERT INTO `countries` VALUES ('3147', '都兰县', '632822000000', '632800000000');
INSERT INTO `countries` VALUES ('3148', '天峻县', '632823000000', '632800000000');
INSERT INTO `countries` VALUES ('3149', '大柴旦行政委员会', '632857000000', '632800000000');
INSERT INTO `countries` VALUES ('3150', '市辖区', '640101000000', '640100000000');
INSERT INTO `countries` VALUES ('3151', '兴庆区', '640104000000', '640100000000');
INSERT INTO `countries` VALUES ('3152', '西夏区', '640105000000', '640100000000');
INSERT INTO `countries` VALUES ('3153', '金凤区', '640106000000', '640100000000');
INSERT INTO `countries` VALUES ('3154', '永宁县', '640121000000', '640100000000');
INSERT INTO `countries` VALUES ('3155', '贺兰县', '640122000000', '640100000000');
INSERT INTO `countries` VALUES ('3156', '灵武市', '640181000000', '640100000000');
INSERT INTO `countries` VALUES ('3157', '市辖区', '640201000000', '640200000000');
INSERT INTO `countries` VALUES ('3158', '大武口区', '640202000000', '640200000000');
INSERT INTO `countries` VALUES ('3159', '惠农区', '640205000000', '640200000000');
INSERT INTO `countries` VALUES ('3160', '平罗县', '640221000000', '640200000000');
INSERT INTO `countries` VALUES ('3161', '市辖区', '640301000000', '640300000000');
INSERT INTO `countries` VALUES ('3162', '利通区', '640302000000', '640300000000');
INSERT INTO `countries` VALUES ('3163', '红寺堡区', '640303000000', '640300000000');
INSERT INTO `countries` VALUES ('3164', '盐池县', '640323000000', '640300000000');
INSERT INTO `countries` VALUES ('3165', '同心县', '640324000000', '640300000000');
INSERT INTO `countries` VALUES ('3166', '青铜峡市', '640381000000', '640300000000');
INSERT INTO `countries` VALUES ('3167', '市辖区', '640401000000', '640400000000');
INSERT INTO `countries` VALUES ('3168', '原州区', '640402000000', '640400000000');
INSERT INTO `countries` VALUES ('3169', '西吉县', '640422000000', '640400000000');
INSERT INTO `countries` VALUES ('3170', '隆德县', '640423000000', '640400000000');
INSERT INTO `countries` VALUES ('3171', '泾源县', '640424000000', '640400000000');
INSERT INTO `countries` VALUES ('3172', '彭阳县', '640425000000', '640400000000');
INSERT INTO `countries` VALUES ('3173', '市辖区', '640501000000', '640500000000');
INSERT INTO `countries` VALUES ('3174', '沙坡头区', '640502000000', '640500000000');
INSERT INTO `countries` VALUES ('3175', '中宁县', '640521000000', '640500000000');
INSERT INTO `countries` VALUES ('3176', '海原县', '640522000000', '640500000000');
INSERT INTO `countries` VALUES ('3177', '市辖区', '650101000000', '650100000000');
INSERT INTO `countries` VALUES ('3178', '天山区', '650102000000', '650100000000');
INSERT INTO `countries` VALUES ('3179', '沙依巴克区', '650103000000', '650100000000');
INSERT INTO `countries` VALUES ('3180', '新市区', '650104000000', '650100000000');
INSERT INTO `countries` VALUES ('3181', '水磨沟区', '650105000000', '650100000000');
INSERT INTO `countries` VALUES ('3182', '头屯河区', '650106000000', '650100000000');
INSERT INTO `countries` VALUES ('3183', '达坂城区', '650107000000', '650100000000');
INSERT INTO `countries` VALUES ('3184', '米东区', '650109000000', '650100000000');
INSERT INTO `countries` VALUES ('3185', '乌鲁木齐县', '650121000000', '650100000000');
INSERT INTO `countries` VALUES ('3186', '乌鲁木齐经济技术开发区', '650171000000', '650100000000');
INSERT INTO `countries` VALUES ('3187', '乌鲁木齐高新技术产业开发区', '650172000000', '650100000000');
INSERT INTO `countries` VALUES ('3188', '市辖区', '650201000000', '650200000000');
INSERT INTO `countries` VALUES ('3189', '独山子区', '650202000000', '650200000000');
INSERT INTO `countries` VALUES ('3190', '克拉玛依区', '650203000000', '650200000000');
INSERT INTO `countries` VALUES ('3191', '白碱滩区', '650204000000', '650200000000');
INSERT INTO `countries` VALUES ('3192', '乌尔禾区', '650205000000', '650200000000');
INSERT INTO `countries` VALUES ('3193', '高昌区', '650402000000', '650400000000');
INSERT INTO `countries` VALUES ('3194', '鄯善县', '650421000000', '650400000000');
INSERT INTO `countries` VALUES ('3195', '托克逊县', '650422000000', '650400000000');
INSERT INTO `countries` VALUES ('3196', '伊州区', '650502000000', '650500000000');
INSERT INTO `countries` VALUES ('3197', '巴里坤哈萨克自治县', '650521000000', '650500000000');
INSERT INTO `countries` VALUES ('3198', '伊吾县', '650522000000', '650500000000');
INSERT INTO `countries` VALUES ('3199', '昌吉市', '652301000000', '652300000000');
INSERT INTO `countries` VALUES ('3200', '阜康市', '652302000000', '652300000000');
INSERT INTO `countries` VALUES ('3201', '呼图壁县', '652323000000', '652300000000');
INSERT INTO `countries` VALUES ('3202', '玛纳斯县', '652324000000', '652300000000');
INSERT INTO `countries` VALUES ('3203', '奇台县', '652325000000', '652300000000');
INSERT INTO `countries` VALUES ('3204', '吉木萨尔县', '652327000000', '652300000000');
INSERT INTO `countries` VALUES ('3205', '木垒哈萨克自治县', '652328000000', '652300000000');
INSERT INTO `countries` VALUES ('3206', '博乐市', '652701000000', '652700000000');
INSERT INTO `countries` VALUES ('3207', '阿拉山口市', '652702000000', '652700000000');
INSERT INTO `countries` VALUES ('3208', '精河县', '652722000000', '652700000000');
INSERT INTO `countries` VALUES ('3209', '温泉县', '652723000000', '652700000000');
INSERT INTO `countries` VALUES ('3210', '库尔勒市', '652801000000', '652800000000');
INSERT INTO `countries` VALUES ('3211', '轮台县', '652822000000', '652800000000');
INSERT INTO `countries` VALUES ('3212', '尉犁县', '652823000000', '652800000000');
INSERT INTO `countries` VALUES ('3213', '若羌县', '652824000000', '652800000000');
INSERT INTO `countries` VALUES ('3214', '且末县', '652825000000', '652800000000');
INSERT INTO `countries` VALUES ('3215', '焉耆回族自治县', '652826000000', '652800000000');
INSERT INTO `countries` VALUES ('3216', '和静县', '652827000000', '652800000000');
INSERT INTO `countries` VALUES ('3217', '和硕县', '652828000000', '652800000000');
INSERT INTO `countries` VALUES ('3218', '博湖县', '652829000000', '652800000000');
INSERT INTO `countries` VALUES ('3219', '库尔勒经济技术开发区', '652871000000', '652800000000');
INSERT INTO `countries` VALUES ('3220', '阿克苏市', '652901000000', '652900000000');
INSERT INTO `countries` VALUES ('3221', '温宿县', '652922000000', '652900000000');
INSERT INTO `countries` VALUES ('3222', '库车县', '652923000000', '652900000000');
INSERT INTO `countries` VALUES ('3223', '沙雅县', '652924000000', '652900000000');
INSERT INTO `countries` VALUES ('3224', '新和县', '652925000000', '652900000000');
INSERT INTO `countries` VALUES ('3225', '拜城县', '652926000000', '652900000000');
INSERT INTO `countries` VALUES ('3226', '乌什县', '652927000000', '652900000000');
INSERT INTO `countries` VALUES ('3227', '阿瓦提县', '652928000000', '652900000000');
INSERT INTO `countries` VALUES ('3228', '柯坪县', '652929000000', '652900000000');
INSERT INTO `countries` VALUES ('3229', '阿图什市', '653001000000', '653000000000');
INSERT INTO `countries` VALUES ('3230', '阿克陶县', '653022000000', '653000000000');
INSERT INTO `countries` VALUES ('3231', '阿合奇县', '653023000000', '653000000000');
INSERT INTO `countries` VALUES ('3232', '乌恰县', '653024000000', '653000000000');
INSERT INTO `countries` VALUES ('3233', '喀什市', '653101000000', '653100000000');
INSERT INTO `countries` VALUES ('3234', '疏附县', '653121000000', '653100000000');
INSERT INTO `countries` VALUES ('3235', '疏勒县', '653122000000', '653100000000');
INSERT INTO `countries` VALUES ('3236', '英吉沙县', '653123000000', '653100000000');
INSERT INTO `countries` VALUES ('3237', '泽普县', '653124000000', '653100000000');
INSERT INTO `countries` VALUES ('3238', '莎车县', '653125000000', '653100000000');
INSERT INTO `countries` VALUES ('3239', '叶城县', '653126000000', '653100000000');
INSERT INTO `countries` VALUES ('3240', '麦盖提县', '653127000000', '653100000000');
INSERT INTO `countries` VALUES ('3241', '岳普湖县', '653128000000', '653100000000');
INSERT INTO `countries` VALUES ('3242', '伽师县', '653129000000', '653100000000');
INSERT INTO `countries` VALUES ('3243', '巴楚县', '653130000000', '653100000000');
INSERT INTO `countries` VALUES ('3244', '塔什库尔干塔吉克自治县', '653131000000', '653100000000');
INSERT INTO `countries` VALUES ('3245', '和田市', '653201000000', '653200000000');
INSERT INTO `countries` VALUES ('3246', '和田县', '653221000000', '653200000000');
INSERT INTO `countries` VALUES ('3247', '墨玉县', '653222000000', '653200000000');
INSERT INTO `countries` VALUES ('3248', '皮山县', '653223000000', '653200000000');
INSERT INTO `countries` VALUES ('3249', '洛浦县', '653224000000', '653200000000');
INSERT INTO `countries` VALUES ('3250', '策勒县', '653225000000', '653200000000');
INSERT INTO `countries` VALUES ('3251', '于田县', '653226000000', '653200000000');
INSERT INTO `countries` VALUES ('3252', '民丰县', '653227000000', '653200000000');
INSERT INTO `countries` VALUES ('3253', '伊宁市', '654002000000', '654000000000');
INSERT INTO `countries` VALUES ('3254', '奎屯市', '654003000000', '654000000000');
INSERT INTO `countries` VALUES ('3255', '霍尔果斯市', '654004000000', '654000000000');
INSERT INTO `countries` VALUES ('3256', '伊宁县', '654021000000', '654000000000');
INSERT INTO `countries` VALUES ('3257', '察布查尔锡伯自治县', '654022000000', '654000000000');
INSERT INTO `countries` VALUES ('3258', '霍城县', '654023000000', '654000000000');
INSERT INTO `countries` VALUES ('3259', '巩留县', '654024000000', '654000000000');
INSERT INTO `countries` VALUES ('3260', '新源县', '654025000000', '654000000000');
INSERT INTO `countries` VALUES ('3261', '昭苏县', '654026000000', '654000000000');
INSERT INTO `countries` VALUES ('3262', '特克斯县', '654027000000', '654000000000');
INSERT INTO `countries` VALUES ('3263', '尼勒克县', '654028000000', '654000000000');
INSERT INTO `countries` VALUES ('3264', '塔城市', '654201000000', '654200000000');
INSERT INTO `countries` VALUES ('3265', '乌苏市', '654202000000', '654200000000');
INSERT INTO `countries` VALUES ('3266', '额敏县', '654221000000', '654200000000');
INSERT INTO `countries` VALUES ('3267', '沙湾县', '654223000000', '654200000000');
INSERT INTO `countries` VALUES ('3268', '托里县', '654224000000', '654200000000');
INSERT INTO `countries` VALUES ('3269', '裕民县', '654225000000', '654200000000');
INSERT INTO `countries` VALUES ('3270', '和布克赛尔蒙古自治县', '654226000000', '654200000000');
INSERT INTO `countries` VALUES ('3271', '阿勒泰市', '654301000000', '654300000000');
INSERT INTO `countries` VALUES ('3272', '布尔津县', '654321000000', '654300000000');
INSERT INTO `countries` VALUES ('3273', '富蕴县', '654322000000', '654300000000');
INSERT INTO `countries` VALUES ('3274', '福海县', '654323000000', '654300000000');
INSERT INTO `countries` VALUES ('3275', '哈巴河县', '654324000000', '654300000000');
INSERT INTO `countries` VALUES ('3276', '青河县', '654325000000', '654300000000');
INSERT INTO `countries` VALUES ('3277', '吉木乃县', '654326000000', '654300000000');
INSERT INTO `countries` VALUES ('3278', '石河子市', '659001000000', '659000000000');
INSERT INTO `countries` VALUES ('3279', '阿拉尔市', '659002000000', '659000000000');
INSERT INTO `countries` VALUES ('3280', '图木舒克市', '659003000000', '659000000000');
INSERT INTO `countries` VALUES ('3281', '五家渠市', '659004000000', '659000000000');
INSERT INTO `countries` VALUES ('3282', '铁门关市', '659006000000', '659000000000');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `product_user_id` int(11) NOT NULL COMMENT '产品游戏ID',
  `credit_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '信用等级',
  `star_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '星级等级',
  `priority_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩家属性',
  `customer_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 会员 2 代理',
  `ip` varchar(255) NOT NULL DEFAULT '0.0.0.0' COMMENT '玩家访问IP',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 删除',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', '1', '1', '0', '0', '0', '1', '0.0.0.0', '1', '2019-08-16 13:23:46', '2019-08-16 13:23:44');
INSERT INTO `customers` VALUES ('4', '1', '2067768', '3', '1', '0', '1', '0.0.0.0', '1', '2019-08-19 01:48:57', '2019-08-19 01:48:57');

-- ----------------------------
-- Table structure for customer_banks
-- ----------------------------
DROP TABLE IF EXISTS `customer_banks`;
CREATE TABLE `customer_banks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `customer_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 I 普通银行卡 1 VND银行卡',
  `bank_account_name` varchar(100) NOT NULL COMMENT '银行账户姓名',
  `bank_account_no` varchar(100) NOT NULL COMMENT '银行账号',
  `bank_name` varchar(100) NOT NULL COMMENT '银行名称',
  `bank_province` varchar(100) NOT NULL COMMENT '开户省',
  `bank_cities` varchar(100) NOT NULL COMMENT '开户市',
  `bank_countries` varchar(100) NOT NULL COMMENT '区域',
  `branch_name` varchar(100) NOT NULL DEFAULT '' COMMENT '支行名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 禁用 1可用',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_customer_id` (`customer_id`) USING HASH COMMENT '客户ID唯一'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_banks
-- ----------------------------
INSERT INTO `customer_banks` VALUES ('3', '1', '0', '信心呵呵', '82067760677682067768', 'ACT', '130000000000', '130200000000', '130121000000', '', '1', '2019-09-02 06:30:45', '2019-09-02 06:30:45');

-- ----------------------------
-- Table structure for deposit_channels
-- ----------------------------
DROP TABLE IF EXISTS `deposit_channels`;
CREATE TABLE `deposit_channels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `code` varchar(10) NOT NULL COMMENT '渠道标识',
  `channel` varchar(25) NOT NULL DEFAULT '' COMMENT 'T 存款标识',
  `name` varchar(25) NOT NULL COMMENT '名称',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐',
  `min_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '最小限额',
  `max_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '最大限额',
  `exchange_rate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '汇率',
  `category` varchar(255) DEFAULT '0' COMMENT '支付类别 0 在线支付 1 手工存款 2 虚拟货币',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付货币类型  0 CNY 1 BTC 2 USDT 3 VND',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='存款渠道表';

-- ----------------------------
-- Records of deposit_channels
-- ----------------------------
INSERT INTO `deposit_channels` VALUES ('1', '1', '1', '1', '', 'bq', '0', '100.00', '3000.00', '0.00', '0', '0', '0', '2019-08-20 10:32:29', '2019-08-20 10:32:31');
INSERT INTO `deposit_channels` VALUES ('2', '1', '1', '6', '', 'online', '0', '100.00', '3000.00', '0.00', '0', '0', '0', '2019-08-20 10:32:29', '2019-08-20 10:32:31');
INSERT INTO `deposit_channels` VALUES ('3', '2', '1', '101', 'AliPay', 'online', '0', '100.00', '3000.00', '0.00', '0', '0', '0', '2019-08-20 10:32:29', '2019-08-20 10:32:31');

-- ----------------------------
-- Table structure for deposit_records
-- ----------------------------
DROP TABLE IF EXISTS `deposit_records`;
CREATE TABLE `deposit_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `customer_id` int(11) NOT NULL COMMENT '客户ID',
  `currency_type` varchar(10) NOT NULL COMMENT '货币类型',
  `amount` decimal(11,2) NOT NULL COMMENT '金额',
  `real_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际金额',
  `order_sn` varchar(35) NOT NULL COMMENT '订单号',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `depositor` varchar(15) NOT NULL COMMENT '存款人',
  `receipt_bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收款银行名称',
  `receipt_account` varchar(50) NOT NULL DEFAULT '' COMMENT '收款账号',
  `receipt_depositor` varchar(50) NOT NULL DEFAULT '' COMMENT '收款人',
  `deposit_type` varchar(1) NOT NULL COMMENT '存款类型',
  `merchant_order_sn` varchar(35) NOT NULL DEFAULT '' COMMENT '商户订单号',
  `merchant_notification_time` datetime NOT NULL DEFAULT '2001-01-01 00:00:00' COMMENT '上游商户回调时间',
  `merchant_notification_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '上游商户回调金额',
  `merchant_notification_mark` varchar(255) NOT NULL DEFAULT '' COMMENT '上游商户回调备注',
  `product_order_sn` varchar(35) NOT NULL DEFAULT '' COMMENT '产品订单号',
  `deposit_channel_code` int(11) NOT NULL COMMENT '存款渠道类型',
  `notification_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '通知游戏状态',
  `notification_message` varchar(35) NOT NULL DEFAULT '' COMMENT '回调游戏信息',
  `notification_time` datetime DEFAULT NULL COMMENT '通知游戏时间',
  `original_currency_type` varchar(10) NOT NULL DEFAULT 'CNY' COMMENT '原币种类型',
  `original_currency_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '原币种金额',
  `original_currency_exchange_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原币种到现币种到汇率',
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_order_sn` (`order_sn`) USING HASH COMMENT '订单号唯一'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of deposit_records
-- ----------------------------
INSERT INTO `deposit_records` VALUES ('1', '1', '1', 'CNY', '8888.00', '0.00', 'A92EP19081915344743', '0', '订单', '中国农业银行', '6228480148852090676', '周洁莉', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-08-19 10:00:03', '2019-08-19 10:00:03');
INSERT INTO `deposit_records` VALUES ('2', '1', '1', 'CNY', '8888.00', '0.00', 'A92EP19081918195935', '0', '订单', '中国农业银行', '6228480148853011572', '李林清', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-08-19 10:20:02', '2019-08-19 10:20:02');
INSERT INTO `deposit_records` VALUES ('3', '1', '1', 'CNY', '88.00', '0.00', 'A92EP19082010264165', '0', 'TEST', '中国邮政储蓄银行', '6217995950006529090', '陈卫双', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-08-20 02:26:42', '2019-08-20 02:26:42');
INSERT INTO `deposit_records` VALUES ('4', '1', '1', 'CNY', '88.00', '0.00', 'A92EP19082010290172', '0', 'TEST', '中国邮政储蓄银行', '6217995950006529090', '陈卫双', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-08-20 02:29:02', '2019-08-20 02:29:02');
INSERT INTO `deposit_records` VALUES ('5', '1', '1', 'CNY', '88.00', '0.00', 'A92EP19082010373894', '4', 'TEST', '中国邮政储蓄银行', '6217995950006529090', '陈卫双', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-11 07:14:30', '2019-08-20 02:37:38');
INSERT INTO `deposit_records` VALUES ('6', '1', '4', 'CNY', '300.00', '0.00', 'A92EP19090416521993', '0', 'LAV', '中国农业银行', '6228480148849032872', '蒋毅', '0', '', '0000-00-00 00:00:00', '0.00', '', '', '1', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-04 08:52:19', '2019-09-04 08:52:19');
INSERT INTO `deposit_records` VALUES ('7', '1', '4', 'CNY', '688.00', '0.00', 'A9219091110020496', '2', '2067768', '', '', '', '0', '', '2019-09-11 05:56:04', '688.00', 'N/A', '', '6', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-11 05:56:04', '2019-09-04 09:43:29');
INSERT INTO `deposit_records` VALUES ('8', '1', '4', 'CNY', '688.00', '0.00', 'A9219091110020496_1', '2', '2067768', '', '', '', '0', '', '2001-01-01 00:00:00', '0.00', '', '', '6', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-11 06:57:36', '2019-09-11 06:57:36');
INSERT INTO `deposit_records` VALUES ('22', '1', '4', 'CNY', '688.00', '0.00', 'A9219091110077486_1', '2', '2067768', '', '', '', '0', '', '2001-01-01 00:00:00', '0.00', '', '', '6', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-11 07:14:01', '2019-09-11 07:14:01');
INSERT INTO `deposit_records` VALUES ('24', '1', '4', 'CNY', '688.00', '0.00', 'A92EP19082010373894_1', '2', '2067768', '', '', '', '0', '', '2001-01-01 00:00:00', '0.00', '', '', '6', '0', '', null, 'CNY', '0.00', '0.00', '1', '2019-09-11 07:14:30', '2019-09-11 07:14:30');

-- ----------------------------
-- Table structure for merchants
-- ----------------------------
DROP TABLE IF EXISTS `merchants`;
CREATE TABLE `merchants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `platform_id` int(11) NOT NULL COMMENT '平台ID',
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `code` varchar(25) NOT NULL COMMENT '标识',
  `account` varchar(25) DEFAULT NULL COMMENT '账号',
  `password` varchar(25) DEFAULT NULL COMMENT '密码',
  `league_id` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'T 联盟ID',
  `club_id` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'T 俱乐部ID',
  `key` varchar(50) NOT NULL COMMENT 'key',
  `domain` varchar(50) NOT NULL COMMENT '请求域名',
  `callback_url` varchar(50) NOT NULL COMMENT '回调域名',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='商户表';

-- ----------------------------
-- Records of merchants
-- ----------------------------
INSERT INTO `merchants` VALUES ('1', '1', '1', 'A92', 'adminfromfunding', 'Fz09feaj9alepv', '1', '1', 'a92yui124', 'http://pay.apap8.com', 'http://api.aspk8.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `merchants` VALUES ('2', '1', '1', '103', 'adminfromfunding', 'Fz09feaj9alepv', '1', '1', 'a92yui124', 'http://officeapi.telfapay.com', 'sss', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for merchant_tokens
-- ----------------------------
DROP TABLE IF EXISTS `merchant_tokens`;
CREATE TABLE `merchant_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_code` varchar(25) NOT NULL COMMENT '商户标识',
  `account` varchar(35) NOT NULL COMMENT '账号',
  `iat` int(11) NOT NULL COMMENT '生效时间戳',
  `exp` int(11) NOT NULL COMMENT '过期时间戳',
  `ip` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_tokens
-- ----------------------------
INSERT INTO `merchant_tokens` VALUES ('1', 'A92', 'adminfromfunding', '1567748248', '1567748428', '127.0.0.1', '004aaa9f4c9aaa8f1923b18a2b348c3d5ed2f6b1');
INSERT INTO `merchant_tokens` VALUES ('2', 'A92', 'adminfromfunding', '1567748699', '1567748879', '127.0.0.1', '5267be5433aecfdf1720c333096d928fa04703c3');
INSERT INTO `merchant_tokens` VALUES ('3', 'A92', 'adminfromfunding', '1567748772', '1567748952', '127.0.0.1', 'c6bab18f29f4c190c6b68e09552b79180222965a');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `name` varchar(15) NOT NULL COMMENT '产品名称',
  `domain` varchar(50) NOT NULL COMMENT '产品的域名',
  `key` varchar(50) NOT NULL COMMENT '密钥',
  `deposit_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '存款状态',
  `withdraw_status` tinyint(1) NOT NULL COMMENT '取款状态',
  `deposit_callback` varchar(30) NOT NULL,
  `withdraw_callback` varchar(30) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='产品表';

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'dy', 'www.baidu.com', 'xxxxxxxxxxxx', '1', '1', 'callback', 'callback', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `province_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1', '北京市', '110000000000');
INSERT INTO `provinces` VALUES ('2', '天津市', '120000000000');
INSERT INTO `provinces` VALUES ('3', '河北省', '130000000000');
INSERT INTO `provinces` VALUES ('4', '山西省', '140000000000');
INSERT INTO `provinces` VALUES ('5', '内蒙古自治区', '150000000000');
INSERT INTO `provinces` VALUES ('6', '辽宁省', '210000000000');
INSERT INTO `provinces` VALUES ('7', '吉林省', '220000000000');
INSERT INTO `provinces` VALUES ('8', '黑龙江省', '230000000000');
INSERT INTO `provinces` VALUES ('9', '上海市', '310000000000');
INSERT INTO `provinces` VALUES ('10', '江苏省', '320000000000');
INSERT INTO `provinces` VALUES ('11', '浙江省', '330000000000');
INSERT INTO `provinces` VALUES ('12', '安徽省', '340000000000');
INSERT INTO `provinces` VALUES ('13', '福建省', '350000000000');
INSERT INTO `provinces` VALUES ('14', '江西省', '360000000000');
INSERT INTO `provinces` VALUES ('15', '山东省', '370000000000');
INSERT INTO `provinces` VALUES ('16', '河南省', '410000000000');
INSERT INTO `provinces` VALUES ('17', '湖北省', '420000000000');
INSERT INTO `provinces` VALUES ('18', '湖南省', '430000000000');
INSERT INTO `provinces` VALUES ('19', '广东省', '440000000000');
INSERT INTO `provinces` VALUES ('20', '广西壮族自治区', '450000000000');
INSERT INTO `provinces` VALUES ('21', '海南省', '460000000000');
INSERT INTO `provinces` VALUES ('22', '重庆市', '500000000000');
INSERT INTO `provinces` VALUES ('23', '四川省', '510000000000');
INSERT INTO `provinces` VALUES ('24', '贵州省', '520000000000');
INSERT INTO `provinces` VALUES ('25', '云南省', '530000000000');
INSERT INTO `provinces` VALUES ('26', '西藏自治区', '540000000000');
INSERT INTO `provinces` VALUES ('27', '陕西省', '610000000000');
INSERT INTO `provinces` VALUES ('28', '甘肃省', '620000000000');
INSERT INTO `provinces` VALUES ('29', '青海省', '630000000000');
INSERT INTO `provinces` VALUES ('30', '宁夏回族自治区', '640000000000');
INSERT INTO `provinces` VALUES ('31', '新疆维吾尔自治区', '650000000000');

-- ----------------------------
-- Table structure for receipt_banks
-- ----------------------------
DROP TABLE IF EXISTS `receipt_banks`;
CREATE TABLE `receipt_banks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `merchant_code` varchar(100) NOT NULL COMMENT '商户ID',
  `bank_code` varchar(15) NOT NULL COMMENT '银行编码',
  `star_level` varchar(100) NOT NULL DEFAULT '0' COMMENT '星级等级',
  `credit_level` varchar(100) NOT NULL DEFAULT '0' COMMENT '信用等级',
  `account_name` varchar(100) NOT NULL DEFAULT '' COMMENT '账号姓名',
  `account_no` varchar(100) NOT NULL DEFAULT '' COMMENT '银行账号',
  `branch` varchar(100) NOT NULL DEFAULT '' COMMENT '分行',
  `limit_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '收款限额',
  `bank_name` varchar(100) NOT NULL DEFAULT '' COMMENT '银行名称',
  `province` varchar(100) NOT NULL DEFAULT '' COMMENT '省份',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '城市',
  `area_limit` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT '' COMMENT '创建人',
  `ip_address` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL DEFAULT '' COMMENT '备注信息',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否前端显示(0是1否)',
  `currency` varchar(10) NOT NULL DEFAULT 'CNY' COMMENT '币种(CNY)',
  `special_member` varchar(100) NOT NULL DEFAULT '' COMMENT '特殊账号',
  `type` tinyint(1) NOT NULL COMMENT '1 人工存款 2 BQ存款',
  `updated_at` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `created_at` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receipt_banks
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for withdraw_channels
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_channels`;
CREATE TABLE `withdraw_channels` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `code` varchar(10) NOT NULL COMMENT '渠道标识',
  `channel` varchar(25) DEFAULT NULL COMMENT 'T 取款标识',
  `name` varchar(25) NOT NULL COMMENT '名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0 关闭 1开启',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0 不推荐 1推荐',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `min_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '最小限额',
  `max_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '最大限额',
  `max_total_amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '渠道总限额',
  `exchange_rate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '汇率',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '货币类型',
  `updated_at` datetime NOT NULL,
  `created_at` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw_channels
-- ----------------------------
INSERT INTO `withdraw_channels` VALUES ('1', '1', '1', '1', null, '银行卡', '1', '0', '0', '100.00', '10000.00', '0.00', '0.00', '0', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for withdraw_records
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_records`;
CREATE TABLE `withdraw_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` int(11) NOT NULL COMMENT '产品ID',
  `merchant_id` int(11) NOT NULL COMMENT '平台ID',
  `withdraw_channel_code` varchar(10) NOT NULL COMMENT '渠道ID',
  `customer_id` int(11) NOT NULL,
  `billno` varchar(35) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 等待 1已审批 2已出款 -1 拒绝',
  `amount` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `currency_type` varchar(15) NOT NULL DEFAULT '0' COMMENT '0 CNY 1BTC 2USDT 3VND ',
  `customer_bank_id` int(11) NOT NULL COMMENT '取款银行卡ID',
  `approved_person` varchar(25) DEFAULT NULL COMMENT '审核人',
  `approved_time` datetime DEFAULT NULL COMMENT '审核时间',
  `approved_remark` varchar(25) DEFAULT NULL COMMENT '审核备注',
  `product_billno` varchar(50) DEFAULT '' COMMENT '游戏订单号',
  `product_notify_status` tinyint(1) DEFAULT NULL COMMENT '产品通知状态',
  `product_notify_remark` varchar(25) DEFAULT NULL COMMENT '产品通知备注',
  `bank_account_no` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw_records
-- ----------------------------
INSERT INTO `withdraw_records` VALUES ('1', '1', '1', '1', '1', 'A92dz190910152357342629', '1', '555.00', '0', '3', null, null, null, 'A2525225145', null, null, null, '2019-09-04 08:03:12', '2019-09-11 03:09:59');
