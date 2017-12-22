/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : db_ding

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-23 00:13:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'dingxs', '123456');
INSERT INTO `admin` VALUES ('2', 'linda', '123456');

-- ----------------------------
-- Table structure for infor_hengzhi
-- ----------------------------
DROP TABLE IF EXISTS `infor_hengzhi`;
CREATE TABLE `infor_hengzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `work` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `edit` varchar(255) DEFAULT NULL,
  `delete` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of infor_hengzhi
-- ----------------------------
INSERT INTO `infor_hengzhi` VALUES ('1', '丁小帅', '女', '19', '19981019', '小白', '1000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('2', '丁帅', '男', '18', '19981019', '大白', '2000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('3', '小帅', '女', '20', '19981019', '菜鸟', '3000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('4', '丁大帅', '男', '18', '19981019', '老菜鸟', '4000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('5', '大帅', '女', '25', '19981019', 'PM', '5000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('6', '丁帅帅', '女', '22', '19981019', '程序媛', '6000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('7', '小大帅', '男', '21', '19981019', '程序猿', '7000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('8', '大小帅', '女', '20', '19981019', '老总', '8000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('9', '大丁帅', '女', '23', '19981019', '大经理', '9000', '编辑', '删除');
INSERT INTO `infor_hengzhi` VALUES ('26', 'null', 'null', 'null', 'null', 'null', 'null', null, null);
INSERT INTO `infor_hengzhi` VALUES ('29', '', '', '', '', '', '', null, null);
INSERT INTO `infor_hengzhi` VALUES ('30', '', '', '', '', '', '', null, null);
