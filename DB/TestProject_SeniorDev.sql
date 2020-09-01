/*
 Navicat MySQL Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : 127.0.0.1:3306
 Source Schema         : TestProject_SeniorDev

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 12/03/2020 20:38:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_statement` tinyint(1) DEFAULT 1 COMMENT 'true means from signal statement',
  `financial_instrument_code` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'gbpeur',
  `action` enum('buy','sell') COLLATE utf8mb4_unicode_ci DEFAULT 'buy',
  `entry_price` decimal(19,8) DEFAULT NULL,
  `closed_price` decimal(19,8) DEFAULT NULL,
  `take_profit_1` decimal(19,8) DEFAULT NULL,
  `stop_loss_1` decimal(19,8) DEFAULT NULL,
  `signal_result` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `statement_batch` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pen_taken
-- ----------------------------
DROP TABLE IF EXISTS `pen_taken`;
CREATE TABLE `pen_taken` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(5) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pen_taken
-- ----------------------------
BEGIN;
INSERT INTO `pen_taken` VALUES (1, 3, 7);
INSERT INTO `pen_taken` VALUES (2, 2, 5);
INSERT INTO `pen_taken` VALUES (3, 5, 6);
INSERT INTO `pen_taken` VALUES (4, 4, 7);
INSERT INTO `pen_taken` VALUES (5, 5, 5);
INSERT INTO `pen_taken` VALUES (6, 1, 3);
INSERT INTO `pen_taken` VALUES (7, 2, 4);
INSERT INTO `pen_taken` VALUES (8, 4, 2);
INSERT INTO `pen_taken` VALUES (9, 1, 7);
INSERT INTO `pen_taken` VALUES (10, 3, 8);
INSERT INTO `pen_taken` VALUES (11, 2, 9);
INSERT INTO `pen_taken` VALUES (12, 1, 4);
INSERT INTO `pen_taken` VALUES (13, 3, 6);
COMMIT;

-- ----------------------------
-- Table structure for diary_taken
-- ----------------------------
DROP TABLE IF EXISTS `diary_taken`;
CREATE TABLE `diary_taken` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(5) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diary_taken
-- ----------------------------
BEGIN;
INSERT INTO `diary_taken` VALUES (1, 1, 2);
INSERT INTO `diary_taken` VALUES (2, 3, 3);
INSERT INTO `diary_taken` VALUES (3, 5, 8);
INSERT INTO `diary_taken` VALUES (4, 2, 1);
INSERT INTO `diary_taken` VALUES (5, 1, 6);
INSERT INTO `diary_taken` VALUES (6, 5, 5);
INSERT INTO `diary_taken` VALUES (7, 3, 1);
INSERT INTO `diary_taken` VALUES (8, 2, 4);
INSERT INTO `diary_taken` VALUES (9, 1, 6);
INSERT INTO `diary_taken` VALUES (10, 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for eraser_taken
-- ----------------------------
DROP TABLE IF EXISTS `eraser_taken`;
CREATE TABLE `eraser_taken` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(5) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eraser_taken
-- ----------------------------
BEGIN;
INSERT INTO `eraser_taken` VALUES (1, 3, 2);
INSERT INTO `eraser_taken` VALUES (2, 5, 3);
INSERT INTO `eraser_taken` VALUES (3, 2, 5);
INSERT INTO `eraser_taken` VALUES (4, 1, 1);
INSERT INTO `eraser_taken` VALUES (5, 4, 4);
INSERT INTO `eraser_taken` VALUES (6, 3, 6);
INSERT INTO `eraser_taken` VALUES (7, 2, 8);
INSERT INTO `eraser_taken` VALUES (8, 1, 7);
INSERT INTO `eraser_taken` VALUES (9, 4, 4);
INSERT INTO `eraser_taken` VALUES (10, 3, 2);
INSERT INTO `eraser_taken` VALUES (11, 2, 5);
INSERT INTO `eraser_taken` VALUES (12, 1, 8);
COMMIT;

-- ----------------------------
-- Table structure for buyers
-- ----------------------------
DROP TABLE IF EXISTS `buyers`;
CREATE TABLE `buyers` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status` enum('Active','Incative') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyers
-- ----------------------------
BEGIN;
INSERT INTO `buyers` VALUES (1, 'Sakib Khan', 'Active');
INSERT INTO `buyers` VALUES (2, 'Arefin Shuvo', 'Active');
INSERT INTO `buyers` VALUES (3, 'Tom Cruise', 'Active');
INSERT INTO `buyers` VALUES (4, 'Shahrukh Khan', 'Active');
INSERT INTO `buyers` VALUES (5, 'Katappa', 'Active');
INSERT INTO `buyers` VALUES (6, 'Bahubali', 'Active');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
