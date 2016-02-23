/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : frame

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2015-11-27 14:01:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `menu_code` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `open` tinyint(1) DEFAULT '0',
  `isParent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'M01', '系统设置', '#menu', '0', '1', '1');
INSERT INTO `sys_menu` VALUES ('2', 'M0101', '用户管理', '#user', '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('3', 'M0102', '角色管理', '#role', '1', '0', '0');
INSERT INTO `sys_menu` VALUES ('4', 'M0103', '权限管理', '#permission', '1', '0', '0');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL,
  `permission_code` varchar(255) DEFAULT NULL,
  `permission_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', 'M01', '菜单管理', '0');
INSERT INTO `sys_permission` VALUES ('2', 'M0101', '菜单增加', '1');
INSERT INTO `sys_permission` VALUES ('3', 'M0102', '菜单删除', '1');
INSERT INTO `sys_permission` VALUES ('4', 'M0103', '菜单修改', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'R_SPRADMIN', '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '平台管理员', 'R_SYSADMIN', '平台管理员');
INSERT INTO `sys_role` VALUES ('3', '基本角色', 'R_BASICUSR', '基本角色');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '超级管理员');
INSERT INTO `sys_user` VALUES ('2', 'zhangsan', '21232f297a57a5a743894a0e4a801fc3', '普通管理员');
INSERT INTO `sys_user` VALUES ('3', 'wangwu', '21232f297a57a5a743894a0e4a801fc3', '普通管理员');
INSERT INTO `sys_user` VALUES ('4', 'ssw2ee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('5', 'ss3wee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('6', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('7', 'ss2wee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('8', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('9', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('10', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('11', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('12', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('13', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('14', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('15', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('16', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('17', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('18', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('19', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('20', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('21', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('22', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('23', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('24', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('25', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('26', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('27', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('28', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('29', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('30', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('31', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('32', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('33', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('34', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('35', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('36', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('37', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('38', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('39', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('40', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('41', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('42', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('43', 'sswee', '21232f297a57a5a743894a0e4a801fc3', '普通用户');
INSERT INTO `sys_user` VALUES ('772093441', 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'bbbb');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
