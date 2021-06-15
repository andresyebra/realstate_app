/*

 Navicat Premium Data Transfer



 Source Server         : localhost-mysql

 Source Server Type    : MySQL

 Source Server Version : 50733

 Source Host           : localhost:3306

 Source Schema         : realestate_db



 Target Server Type    : MySQL

 Target Server Version : 50733

 File Encoding         : 65001



 Date: 15/06/2021 02:41:47

*/

CREATE DATABASE realestate_db;
USE realestate_db;

SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;



-- ----------------------------

-- Table structure for ar_internal_metadata

-- ----------------------------

DROP TABLE IF EXISTS `ar_internal_metadata`;

CREATE TABLE `ar_internal_metadata`  (

                                         `key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,

                                         `value` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                         `created_at` datetime(6) NOT NULL,

                                         `updated_at` datetime(6) NOT NULL,

                                         PRIMARY KEY (`key`) USING BTREE

) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;



-- ----------------------------

-- Records of ar_internal_metadata

-- ----------------------------

INSERT INTO `ar_internal_metadata` VALUES ('environment', 'development', '2021-06-15 05:29:47.049374', '2021-06-15 05:29:47.049374');



-- ----------------------------

-- Table structure for real_estates

-- ----------------------------

DROP TABLE IF EXISTS `real_estates`;

CREATE TABLE `real_estates`  (

                                 `id` int(11) NOT NULL AUTO_INCREMENT,

                                 `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `type` int(11) NULL DEFAULT NULL,

                                 `street` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `external_number` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `internal_number` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `neighborhood` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `city` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `country` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `rooms` int(11) NULL DEFAULT NULL,

                                 `bathrooms` int(11) NULL DEFAULT NULL,

                                 `comments` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,

                                 `created_at` datetime(6) NOT NULL,

                                 `updated_at` datetime(6) NOT NULL,

                                 PRIMARY KEY (`id`) USING BTREE

) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;



-- ----------------------------

-- Table structure for schema_migrations

-- ----------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations`  (

                                      `version` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,

                                      PRIMARY KEY (`version`) USING BTREE

) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;



-- ----------------------------

-- Records of schema_migrations

-- ----------------------------

INSERT INTO `schema_migrations` VALUES ('20210615021532');



SET FOREIGN_KEY_CHECKS = 1;