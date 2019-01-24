/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 24/01/2019 21:47:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bids1
-- ----------------------------
DROP TABLE IF EXISTS `bids1`;
CREATE TABLE `bids1`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `utm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bids2
-- ----------------------------
DROP TABLE IF EXISTS `bids2`;
CREATE TABLE `bids2`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `utm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp(0) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_01_24_174839_bids1', 2);
INSERT INTO `migrations` VALUES (4, '2019_01_24_175303_bids2', 2);
INSERT INTO `migrations` VALUES (5, '2019_01_24_180000_posts', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, '2019-01-24 21:36:00', '2019-01-24 21:36:04', 'title1');
INSERT INTO `posts` VALUES (2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title2');
INSERT INTO `posts` VALUES (3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');
INSERT INTO `posts` VALUES (11, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aperiam atque cum cupiditate debitis, deserunt dolores eligendi error fuga, incidunt itaque labore odit optio quos recusandae sunt suscipit temporibus voluptates. Aliquam amet aut corporis ', 'undefined.jpg', NULL, NULL, NULL, 'title');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'studyqa_test@mail.ru', NULL, '$2y$10$jMz/sxKEhYXYvN7NawfvPeISneQxxJa454pgogIjdPFxoCIRNrKHO', 'NA8PkpLhFwQbmCTYDaxRSj5BPGSb9qCVNYu4VfUxeAAAnhUAavnZk9Dxpjr4', '2019-01-24 17:06:20', '2019-01-24 17:06:20', 'admin');
INSERT INTO `users` VALUES (2, 'representative1', 'represantative_1@mail.ru', NULL, '$2y$10$enDeS3Hzj3RUujn1voAjnOjEG1IsIKZgr6bHL6IdVo5S1YOhOl65S', '0Qs876Y3d2g7KfdnfvfOaQCKpkXWnwzbf44ykEXSFhnWMZDrqmUdxmWtwvi7', '2019-01-24 17:10:45', '2019-01-24 17:10:45', 'represantative');
INSERT INTO `users` VALUES (3, 'representative2', 'represantative_2@mail.ru', NULL, '$2y$10$w737ZUMgkDrkVPjfQwttx.XTHjq28Zdq2r8fmUlL2hln1VaYIbHE.', '4wf7X20pkWmQrXElVR7nxNKJnDWIFX3uzTT6DH5K1zbFdqyXFTC5CD3wjHUR', '2019-01-24 17:11:04', '2019-01-24 17:11:04', 'represantative');

SET FOREIGN_KEY_CHECKS = 1;
