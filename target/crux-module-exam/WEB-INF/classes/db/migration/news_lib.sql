/*
 Navicat MySQL Data Transfer

 Source Server         : shenqingwen
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : news_lib

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 12/09/2020 19:47:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for news_author
-- ----------------------------
DROP TABLE IF EXISTS `news_author`;
CREATE TABLE `news_author`  (
  `authorid` int NOT NULL,
  `authorname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authorid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_author
-- ----------------------------
INSERT INTO `news_author` VALUES (100, '张三');
INSERT INTO `news_author` VALUES (101, '李四');
INSERT INTO `news_author` VALUES (102, '王五');

-- ----------------------------
-- Table structure for news_info
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info`  (
  `newsno` int NOT NULL,
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `news_author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `news_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`newsno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES (1, '美媒评印度阵风服役：价格比F35还贵 性能不如歼16', '1', '1');
INSERT INTO `news_info` VALUES (2, '印媒：与中巴关系紧张之际 印度在拉达克测试新武直', '3', '1');
INSERT INTO `news_info` VALUES (3, '黑龙江自贸区创新对俄经贸模式 打造沿边合作新样板', '2', '2');
INSERT INTO `news_info` VALUES (4, '让人脑连接电脑 有些问题应未雨绸缪', '4', '4');

-- ----------------------------
-- Table structure for news_type
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type`  (
  `news_typeid` int NOT NULL,
  `news_typename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`news_typeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES (1, '军事');
INSERT INTO `news_type` VALUES (2, '经济');
INSERT INTO `news_type` VALUES (3, '政治');
INSERT INTO `news_type` VALUES (4, '科技');
INSERT INTO `news_type` VALUES (5, '体育');

SET FOREIGN_KEY_CHECKS = 1;
