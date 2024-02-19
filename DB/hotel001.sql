/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : hotel001

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 19/02/2024 18:55:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '管理员姓名',
  `passwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'sdj');
INSERT INTO `admin` VALUES (3, 'sss', 'abc');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `ms_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主题',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `mailbox` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `phone` int(20) NOT NULL COMMENT '手机',
  `content` varchar(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  PRIMARY KEY (`ms_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (12, '搜索', '搜索', '1251662462@qq.com', 2147483647, 'ss');
INSERT INTO `message` VALUES (13, '啊啊', '搜索', '1161942111@qq.com', 2147483647, 'ss');
INSERT INTO `message` VALUES (14, '森森', '森森', '1251662462@qq.com', 2147483647, '试试');
INSERT INTO `message` VALUES (15, '森森', '森森', '1251662462@qq.com', 2147483647, '试试');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片标题',
  `spic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小图片',
  `bpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大图片',
  `describes` varchar(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '夜幕降临时的休闲厅', 's1.jpg', 'l1.jpg', '位于大厅中部的休闲是一个不错停驻休闲的好地方');
INSERT INTO `news` VALUES (3, '宾馆休闲亭与湖', 's3.jpg', 'l3.jpg', '坐在休闲厅中观看湖中美景');
INSERT INTO `news` VALUES (4, '舌尖上的美食', '0425035522.jpg', '04250355222.jpg', '美食不可辜负');
INSERT INTO `news` VALUES (5, '宾馆休闲喝茶区', 's5.jpg', 'l5.jpg', '喝茶观景');
INSERT INTO `news` VALUES (6, '干净整洁的卫生间', '0425035622.jpg', '04250356222.jpg', '美好体验无烦恼');
INSERT INTO `news` VALUES (8, '便利的停车场', '0425035714.jpg', '04250357142.jpg', '给你的爱车一个更好的环境');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(15) NOT NULL COMMENT '订单流水号',
  `roomid` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '房间编号',
  `cardid` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户身份证',
  `entertime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '入住时间',
  `days` int(3) NOT NULL DEFAULT 1 COMMENT '住宿天数',
  `typeid` int(4) NOT NULL COMMENT '房间类型',
  `linkman` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '联系电话',
  `ostatus` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '否' COMMENT '是否网上预订',
  `oremarks` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '否' COMMENT '订单是否完成',
  `monetary` decimal(8, 2) NOT NULL COMMENT '消费金额',
  `messages` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '无备注信息' COMMENT '订单备注信息',
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `FK_ORDER`(`typeid`) USING BTREE,
  CONSTRAINT `FK_ORDER` FOREIGN KEY (`typeid`) REFERENCES `roomtype` (`typeid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单入住表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (13351, '102', '130281188412150313', '2024-01-28', 1, 1001, '啊啊', '18473481958', '是', '是', 288.00, '22');
INSERT INTO `orders` VALUES (13502, '103', '430281199412150312', '2024-01-27', 2, 1005, '哦哦', '18419581245', '否', '是', 640.00, '');
INSERT INTO `orders` VALUES (15321, '101', '142154874456211003', '2024-03-01', 5, 1000, '姓名', '15697548134', '是', '否', 940.00, '');
INSERT INTO `orders` VALUES (94036, '104', '430281199412150111', '2024-01-15', 2, 1003, '森森', '18473481922', '否', '是', 540.00, '试试');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `orderid` int(15) NOT NULL COMMENT '订单流水号',
  `roomid` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '房间编号',
  `cardid` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户身份证',
  `entertime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '入住时间',
  `days` int(3) NOT NULL DEFAULT 1 COMMENT '住宿天数',
  `typeid` int(4) NOT NULL COMMENT '房间类型',
  `linkman` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '客户姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '联系电话',
  `ostatus` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '否' COMMENT '是否网上预订',
  `oremarks` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '否' COMMENT '订单是否完成',
  `monetary` decimal(8, 2) NOT NULL COMMENT '消费金额',
  `messages` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '无备注信息' COMMENT '订单备注信息',
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `FK_ORDER`(`typeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单入住历史表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (31214, '102', '430281199412150313', '2024-01-25', 2, 1001, '森森', '18473481922', '否', '是', 576.00, '森森');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `roomid` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '房间编号',
  `typeid` int(4) NOT NULL COMMENT '类型标识',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否入住',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '房间描述',
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '房间图片',
  PRIMARY KEY (`roomid`) USING BTREE,
  UNIQUE INDEX `roomid`(`roomid`) USING BTREE,
  INDEX `FK_ID`(`typeid`) USING BTREE,
  CONSTRAINT `FK_ID` FOREIGN KEY (`typeid`) REFERENCES `roomtype` (`typeid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('101', 1000, '否', '一张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...', 'd1.jpg');
INSERT INTO `room` VALUES ('102', 1001, '是', '两张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...', 'a1.jpg');
INSERT INTO `room` VALUES ('103', 1005, '是', '商务两床房，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、...', 'a3.jpg');
INSERT INTO `room` VALUES ('104', 1003, '是', '商务单床房，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、...', 'd3.jpg');
INSERT INTO `room` VALUES ('105', 1000, '否', '一张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...', 'd2.jpg');
INSERT INTO `room` VALUES ('106', 1001, '否', '两张床，房间配套设施——牙刷、牙膏、肥皂、梳子、一次性拖鞋等一套，风筒、空调、热水...', 'a2.jpg');

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype`  (
  `typeid` int(4) NOT NULL AUTO_INCREMENT COMMENT '类型标识',
  `typename` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类型名称',
  `area` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '房间面积',
  `hasNet` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '有' COMMENT '网络',
  `hasTV` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '有' COMMENT '有线电视',
  `price` decimal(8, 2) NOT NULL COMMENT '价格',
  `totalnum` int(4) NOT NULL COMMENT '房间数量',
  `leftnum` int(4) NOT NULL COMMENT '剩余数量',
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '房间类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES (1000, '标准间【单人】', '40', '有', '有', 188.00, 2, 1);
INSERT INTO `roomtype` VALUES (1001, '标准间【双人】', '70', '有', '有', 288.00, 2, 1);
INSERT INTO `roomtype` VALUES (1003, '商务间【单人】', '50', '有', '有', 270.00, 1, 0);
INSERT INTO `roomtype` VALUES (1005, '商务间【双人】', '80', '有', '有', 320.00, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
