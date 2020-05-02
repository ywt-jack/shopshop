/*
 Navicat Premium Data Transfer

 Source Server         : 毕业设计
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 01/05/2020 00:29:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a_admin
-- ----------------------------
DROP TABLE IF EXISTS `a_admin`;
CREATE TABLE `a_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL COMMENT '加入时间',
  `is_ban` smallint(2) NULL DEFAULT NULL COMMENT '是否被禁 1、是 2、否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_admin
-- ----------------------------
INSERT INTO `a_admin` VALUES (1, 'admin', '$2a$10$uf81yjt.jk6Oz6e/V7Gs8eEeWJ9/2Q9IgiWHMxMv9wYP1l3P.R6jm', '1', '2020-04-20 20:36:52', 2);
INSERT INTO `a_admin` VALUES (5, 'jimmy', '$2a$10$gKkR/MQ0VHXUdK/PLICekOMafazY49muQBA.yucrFjZ.nGqfymRim', '2', '2020-04-23 19:33:06', 2);
INSERT INTO `a_admin` VALUES (7, 'Vincent', '$2a$10$2LQQpeRKoVQYerofZ0VAnuTb.AOkvU2st/nU/.vEwvhQfWtWy87a.', '3', '2020-04-23 19:37:38', 2);

-- ----------------------------
-- Table structure for a_nav
-- ----------------------------
DROP TABLE IF EXISTS `a_nav`;
CREATE TABLE `a_nav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导航栏选项名称（**管理之类的）',
  `parent` int(11) NULL DEFAULT NULL COMMENT '导航类的父类（如果没有就为0）',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_roles
-- ----------------------------
DROP TABLE IF EXISTS `a_roles`;
CREATE TABLE `a_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a_roles
-- ----------------------------
INSERT INTO `a_roles` VALUES (1, 'ADMIN');
INSERT INTO `a_roles` VALUES (2, 'MANAGER');
INSERT INTO `a_roles` VALUES (3, 'SELLER');
INSERT INTO `a_roles` VALUES (4, 'USER');

-- ----------------------------
-- Table structure for u_comment
-- ----------------------------
DROP TABLE IF EXISTS `u_comment`;
CREATE TABLE `u_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `replyid` int(11) NULL DEFAULT NULL COMMENT '回复某人的信息（id为那个人的id）如果是层主或者楼主的话就为0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for u_goods
-- ----------------------------
DROP TABLE IF EXISTS `u_goods`;
CREATE TABLE `u_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  `discount` decimal(10, 0) NULL DEFAULT NULL COMMENT '打折后价格（无折扣时与price价格一样）',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  `thumb_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `big_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情页的详情图(可有多张，用逗号隔开)',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commentid` int(100) NULL DEFAULT NULL COMMENT '评论id',
  `inventory` int(100) NULL DEFAULT NULL,
  `clicked` int(255) NULL DEFAULT NULL COMMENT '商品点击次数（用于做热门商品）',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家地址',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '上架时间',
  `is_recommend` smallint(2) NULL DEFAULT NULL COMMENT '是否被推荐商品（1、是   2、否）',
  `month_sellid` int(10) NULL DEFAULT NULL COMMENT '月销',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_goods
-- ----------------------------
INSERT INTO `u_goods` VALUES (4, 'pants', 2, 99, 99.00, 'sadc', 'b21a919c-9619-44be-ac95-c8211ac601cb.jpg_220x220.jpg', 'fcf018b9-4990-45ea-9a5b-ea304ce144fb20200425.jpg', 'eda23299-19bd-42f1-bb52-95c4636b39be.jpg_220x220.jpg', 'sdcasd', NULL, 99, NULL, 'asdcasd', '2020-04-25 08:59:50', 2, NULL);
INSERT INTO `u_goods` VALUES (5, 'dfv', 2, 77, 77.00, 'gngfh', 'aa35f1c3-b9b6-4d20-9d41-0b9acbae059f.jpg', 'd03dc94a-3637-4b72-9d01-8163aa95030420200426.jpg', '097b1a80-7f1c-42cb-8c8e-b6e98f024c8f.jpg', 'ghnfgh', NULL, 88, NULL, 'fghngh', '2020-04-26 19:37:03', 2, NULL);

-- ----------------------------
-- Table structure for u_goodssell
-- ----------------------------
DROP TABLE IF EXISTS `u_goodssell`;
CREATE TABLE `u_goodssell`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL COMMENT '时间（平均每日或每月算一次）',
  `sell` int(20) NULL DEFAULT NULL COMMENT '销量\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for u_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `u_goodstype`;
CREATE TABLE `u_goodstype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent` int(11) NULL DEFAULT NULL COMMENT '此种类的父类（如果是最大父类就为0）',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用于导航栏点击',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of u_goodstype
-- ----------------------------
INSERT INTO `u_goodstype` VALUES (2, '裤子', NULL, '/pants');

-- ----------------------------
-- Table structure for u_orders
-- ----------------------------
DROP TABLE IF EXISTS `u_orders`;
CREATE TABLE `u_orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `goodsid` int(11) NULL DEFAULT NULL,
  `order_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `is_cart` smallint(2) NULL DEFAULT NULL COMMENT '是否在购物车中 1、是  0、否',
  `is_paid` smallint(2) NULL DEFAULT NULL COMMENT '是否已付款 1、已付 0、未付',
  `is_cancel` smallint(2) NULL DEFAULT NULL COMMENT '订单是否已取消 1、是  0、否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for u_users
-- ----------------------------
DROP TABLE IF EXISTS `u_users`;
CREATE TABLE `u_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` smallint(2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SELLER:商家  USER:用户',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '加入时间',
  `is_ban` smallint(2) NULL DEFAULT NULL COMMENT '是否被禁 1、是 2、否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
