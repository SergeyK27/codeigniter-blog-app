/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : ciblog

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 21/04/2021 18:57:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 3, 'Technology', '2017-03-04 21:03:18');
INSERT INTO `categories` VALUES (2, 3, 'Business', '2017-03-04 21:14:40');
INSERT INTO `categories` VALUES (3, 3, 'Techs', '2021-04-19 11:12:27');
INSERT INTO `categories` VALUES (4, 0, 'Techs', '2021-04-19 11:29:27');
INSERT INTO `categories` VALUES (5, 0, 'admin', '2021-04-21 18:36:20');
INSERT INTO `categories` VALUES (7, 0, 'test', '2021-04-21 18:54:11');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 21:57:29');
INSERT INTO `comments` VALUES (2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 22:05:58');
INSERT INTO `comments` VALUES (3, 14, 'dfd', 'James@gmail.com', 'djdjd', '2021-04-20 10:23:42');
INSERT INTO `comments` VALUES (4, 14, 'Thanks for this', 'James@gmail.com', 'DJD', '2021-04-20 10:48:15');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `body` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `post_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (12, 2, 0, '111', '111', '<p>33</p>\r\n', 'noimage.jpg', '2021-04-09 13:07:06');
INSERT INTO `posts` VALUES (13, 2, 0, 'dfd', 'dfd', '<p>dfd</p>\r\n', 'angular.png', '2021-04-09 13:10:01');
INSERT INTO `posts` VALUES (14, 1, 0, 'First', 'First', '<p>dfdfdfdfd</p>\r\n', 'noimage.jpg', '2021-04-19 11:42:39');
INSERT INTO `posts` VALUES (15, 2, 4, 'dddd', 'dddd', '<p>dfddfdfd</p>\r\n', 'noimage.jpg', '2021-04-21 10:56:54');
INSERT INTO `posts` VALUES (16, 2, 4, 'Four', 'Four', '<p>dfdfdfdfd</p>\r\n', 'noimage.jpg', '2021-04-21 17:39:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `register_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Brad Traversy', '01913', 'brad@gmail.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 21:14:31');
INSERT INTO `users` VALUES (2, 'John Doe', '90210', 'jdoe@gmail.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 22:12:14');
INSERT INTO `users` VALUES (3, 'dfd', '34343', 'James@gmail.com', 'dfd34', '21232f297a57a5a743894a0e4a801fc3', '2021-04-20 18:35:31');
INSERT INTO `users` VALUES (4, 'dfd', '343', 'James@gmail.com', 'dfd', '21232f297a57a5a743894a0e4a801fc3', '2021-04-20 18:49:48');

SET FOREIGN_KEY_CHECKS = 1;
