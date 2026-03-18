/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : asm

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 25/07/2022 17:21:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for campus
-- ----------------------------
DROP TABLE IF EXISTS `campus`;
CREATE TABLE `campus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of campus
-- ----------------------------
BEGIN;
INSERT INTO `campus` VALUES (1, 'Toàn quốc', '2021-11-14 16:00:16', '2021-11-14 16:00:16');
INSERT INTO `campus` VALUES (2, 'Hà Nội', '2021-11-14 16:00:17', '2021-11-14 16:00:17');
INSERT INTO `campus` VALUES (3, 'Đà Nẵng', '2021-11-14 16:00:17', '2021-11-14 16:00:17');
INSERT INTO `campus` VALUES (4, 'Tây Nguyên', '2021-11-14 16:00:17', '2021-11-14 16:00:17');
INSERT INTO `campus` VALUES (5, 'Hồ Chí Minh', '2021-11-14 16:00:17', '2021-11-14 16:00:17');
INSERT INTO `campus` VALUES (6, 'Cần Thơ', '2021-11-14 16:00:17', '2021-11-14 16:00:17');
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES (1, 9, 'Dự án này của bạn rất là tuyệt vời !', 26, '2021-11-25 14:24:50', '2021-11-25 14:24:50');
INSERT INTO `comments` VALUES (2, 2, 'Dự án này thật tuyệt vời. Tôi rất cảm động khi đọc được phần mô tả này', 26, '2021-11-25 14:26:27', '2021-11-25 14:26:27');
INSERT INTO `comments` VALUES (3, 9, 'Dự án này rất tuyệt vời', 32, '2021-11-25 14:27:41', '2021-11-25 14:27:41');
INSERT INTO `comments` VALUES (4, 2, 'Bài làm này thật tuyệt vời', 32, '2021-11-25 14:28:15', '2021-11-25 14:28:15');
INSERT INTO `comments` VALUES (5, 9, 'Dự án này của bạn rất là tuyệt vời !', 2, '2021-11-25 14:31:38', '2021-11-25 14:31:38');
INSERT INTO `comments` VALUES (6, 25, 'Bài hay', 32, '2021-11-25 15:43:47', '2021-11-25 15:43:47');
INSERT INTO `comments` VALUES (7, 22, 'alo alo', 2, '2021-11-25 15:44:12', '2021-11-25 15:44:12');
INSERT INTO `comments` VALUES (8, 25, 'Bài cần thêm những cảnh đẹp', 32, '2021-11-25 15:44:24', '2021-11-25 15:44:24');
INSERT INTO `comments` VALUES (9, 19, 'aloalo', 2, '2021-11-25 15:45:08', '2021-11-25 15:45:08');
INSERT INTO `comments` VALUES (10, 25, 'gà', 2, '2021-11-25 15:46:08', '2021-11-25 15:46:08');
INSERT INTO `comments` VALUES (11, 19, 'ádasda', 26, '2021-11-25 15:58:05', '2021-11-25 15:58:05');
INSERT INTO `comments` VALUES (12, 2, 'oke', 2, '2021-11-25 16:40:29', '2021-11-25 16:40:29');
INSERT INTO `comments` VALUES (13, 2, 't5esst2', 2, '2021-11-25 16:43:36', '2021-11-25 16:43:36');
INSERT INTO `comments` VALUES (14, 3, 'xấu quá', 32, '2021-11-25 16:45:22', '2021-11-25 16:45:22');
INSERT INTO `comments` VALUES (15, 3, 'cánh đồng nhiều màu sắc quá', 32, '2021-11-25 16:45:42', '2021-11-25 16:45:42');
INSERT INTO `comments` VALUES (16, 11, 'oke', 26, '2021-11-25 17:38:11', '2021-11-25 17:38:11');
INSERT INTO `comments` VALUES (17, 11, 'Sản phẩm tuyệt vời', 26, '2021-11-25 19:02:10', '2021-11-25 19:02:10');
INSERT INTO `comments` VALUES (18, 11, 'Rất tuyệt', 26, '2021-11-25 19:02:29', '2021-11-25 19:02:29');
INSERT INTO `comments` VALUES (19, 11, 'Bài này rất hay', 26, '2021-11-25 19:02:37', '2021-11-25 19:02:37');
INSERT INTO `comments` VALUES (20, 11, 'Tôi đã khóc khi đọc bài này', 26, '2021-11-25 19:02:47', '2021-11-25 19:02:47');
INSERT INTO `comments` VALUES (21, 28, 'Bài viết hay', 32, '2021-11-25 21:03:12', '2021-11-25 21:03:12');
INSERT INTO `comments` VALUES (22, 64, 'Bài hay', 32, '2021-11-27 10:59:34', '2021-11-27 10:59:34');
INSERT INTO `comments` VALUES (23, 67, 'Ok', 26, '2021-11-30 20:24:12', '2021-11-30 20:24:12');
INSERT INTO `comments` VALUES (24, 16, 'oke', 32, '2021-12-07 10:06:06', '2021-12-07 10:06:06');
INSERT INTO `comments` VALUES (25, 78, 'ok', 26, '2021-12-14 16:03:24', '2021-12-14 16:03:24');
INSERT INTO `comments` VALUES (26, 79, 'Sản phẩm rất hay và bổ ích', 32, '2021-12-14 17:33:58', '2021-12-14 17:33:58');
INSERT INTO `comments` VALUES (27, 82, 'Ok', 26, '2022-01-01 15:13:58', '2022-01-01 15:13:58');
INSERT INTO `comments` VALUES (28, 82, 'Oke', 26, '2022-01-01 15:14:07', '2022-01-01 15:14:07');
INSERT INTO `comments` VALUES (29, 82, 'ok', 26, '2022-01-01 15:14:22', '2022-01-01 15:14:22');
INSERT INTO `comments` VALUES (30, 17, 'ok', 26, '2022-01-13 11:05:08', '2022-01-13 11:05:08');
INSERT INTO `comments` VALUES (31, 12, 'Ok', 26, '2022-02-06 17:19:46', '2022-02-06 17:19:46');
INSERT INTO `comments` VALUES (32, 78, 'Sản phẩm tốt, cảm ơn nhóm đã cập nhật thông tin lên hệ thống', 12, '2022-05-26 14:00:03', '2022-05-26 14:00:03');
COMMIT;

-- ----------------------------
-- Table structure for excel_details
-- ----------------------------
DROP TABLE IF EXISTS `excel_details`;
CREATE TABLE `excel_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `excel_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_send` int NOT NULL DEFAULT '0',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` double(8,2) NOT NULL,
  `semester_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of excel_details
-- ----------------------------
BEGIN;
INSERT INTO `excel_details` VALUES (1, 1, 'hoangvlhph13091', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:08');
INSERT INTO `excel_details` VALUES (2, 1, 'dinhvvph13024', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:12');
INSERT INTO `excel_details` VALUES (3, 1, 'duongdvph11568', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:17');
INSERT INTO `excel_details` VALUES (4, 1, 'hantvph10714', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:22');
INSERT INTO `excel_details` VALUES (5, 1, 'longbtph10446', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:27');
INSERT INTO `excel_details` VALUES (6, 1, 'bichdtph18289', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:31');
INSERT INTO `excel_details` VALUES (7, 1, 'tamtttph12001', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:36');
INSERT INTO `excel_details` VALUES (8, 1, 'thanhptph12609', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:40');
INSERT INTO `excel_details` VALUES (9, 2, 'tamtttph12001', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 14:49:49', '2021-11-25 14:50:43');
INSERT INTO `excel_details` VALUES (10, 2, 'thanhptph12609', 'PRO1014', 'thienth', 1, NULL, 10.00, 3, '2021-11-25 14:49:49', '2021-11-25 14:50:47');
INSERT INTO `excel_details` VALUES (11, 3, 'bichdtph18289', '2', 'thienth', 1, NULL, 9.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:04');
INSERT INTO `excel_details` VALUES (12, 3, 'cuonghmph16667', '3', 'thienth', 1, NULL, 9.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:06');
INSERT INTO `excel_details` VALUES (13, 3, 'duongdvph11568', '4', 'sontv', 1, NULL, 9.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:09');
INSERT INTO `excel_details` VALUES (14, 3, 'longbtph10446', '2', 'thaynaodo', 1, NULL, 10.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:11');
INSERT INTO `excel_details` VALUES (15, 3, 'tientph12974', '1', 'thaynaodo', 1, NULL, 8.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:14');
INSERT INTO `excel_details` VALUES (16, 3, 'datnvph13011', '2', 'thaynaodo', 1, NULL, 9.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:16');
INSERT INTO `excel_details` VALUES (17, 3, 'anhttph13025', '3', 'thaynaodo', 1, NULL, 10.00, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:19');
INSERT INTO `excel_details` VALUES (18, 4, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:17:03', '2021-11-25 15:18:04');
INSERT INTO `excel_details` VALUES (19, 4, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:17:03', '2021-11-25 15:18:07');
INSERT INTO `excel_details` VALUES (20, 4, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:17:03', '2021-11-25 15:18:09');
INSERT INTO `excel_details` VALUES (21, 5, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:26:32', '2021-11-25 15:27:04');
INSERT INTO `excel_details` VALUES (22, 5, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:26:33', '2021-11-25 15:27:06');
INSERT INTO `excel_details` VALUES (23, 5, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:26:33', '2021-11-25 15:27:09');
INSERT INTO `excel_details` VALUES (24, 6, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:35:08', '2021-11-25 15:35:10');
INSERT INTO `excel_details` VALUES (25, 6, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:35:08', '2021-11-25 15:35:13');
INSERT INTO `excel_details` VALUES (26, 6, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:35:08', '2021-11-25 15:35:15');
INSERT INTO `excel_details` VALUES (27, 7, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:57:28', '2021-11-25 15:58:04');
INSERT INTO `excel_details` VALUES (28, 7, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:57:28', '2021-11-25 15:58:07');
INSERT INTO `excel_details` VALUES (29, 7, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 15:57:28', '2021-11-25 15:58:09');
INSERT INTO `excel_details` VALUES (30, 8, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:16:39', '2021-11-25 18:17:05');
INSERT INTO `excel_details` VALUES (31, 8, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:16:39', '2021-11-25 18:17:07');
INSERT INTO `excel_details` VALUES (32, 8, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:16:39', '2021-11-25 18:17:09');
INSERT INTO `excel_details` VALUES (33, 9, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:23:02', '2021-11-25 18:23:04');
INSERT INTO `excel_details` VALUES (34, 9, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:23:02', '2021-11-25 18:23:07');
INSERT INTO `excel_details` VALUES (35, 9, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 18:23:02', '2021-11-25 18:23:09');
INSERT INTO `excel_details` VALUES (36, 10, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:20:48', '2021-11-25 20:21:04');
INSERT INTO `excel_details` VALUES (37, 10, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:20:49', '2021-11-25 20:21:07');
INSERT INTO `excel_details` VALUES (38, 10, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:20:49', '2021-11-25 20:21:09');
INSERT INTO `excel_details` VALUES (39, 11, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:57:05', '2021-11-25 20:58:05');
INSERT INTO `excel_details` VALUES (40, 11, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:57:06', '2021-11-25 20:58:07');
INSERT INTO `excel_details` VALUES (41, 11, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-25 20:57:06', '2021-11-25 20:58:10');
INSERT INTO `excel_details` VALUES (42, 12, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 09:33:23', '2021-11-26 09:34:04');
INSERT INTO `excel_details` VALUES (43, 13, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 10:05:39', '2021-11-26 10:06:05');
INSERT INTO `excel_details` VALUES (44, 14, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 10:07:17', '2021-11-26 10:08:05');
INSERT INTO `excel_details` VALUES (45, 16, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 10:11:09', '2021-11-26 10:12:04');
INSERT INTO `excel_details` VALUES (46, 17, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 10:17:29', '2021-11-26 10:18:05');
INSERT INTO `excel_details` VALUES (47, 18, 'hoangvlhph13091', 'PRO1014', 'hoangvlhph13091', 1, NULL, 10.00, 3, '2021-11-26 10:21:25', '2021-11-26 10:22:04');
INSERT INTO `excel_details` VALUES (48, 19, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:13:49', '2021-11-26 14:14:05');
INSERT INTO `excel_details` VALUES (49, 19, 'tamtttph12001', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:13:50', '2021-11-26 14:14:07');
INSERT INTO `excel_details` VALUES (50, 19, 'thanhptph12609', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:13:50', '2021-11-26 14:14:09');
INSERT INTO `excel_details` VALUES (51, 20, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:23:54', '2021-11-26 14:24:05');
INSERT INTO `excel_details` VALUES (52, 21, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:27:15', '2021-11-26 14:28:04');
INSERT INTO `excel_details` VALUES (53, 22, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:27:32', '2021-11-26 14:28:09');
INSERT INTO `excel_details` VALUES (54, 23, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 14:36:25', '2021-11-26 14:37:04');
INSERT INTO `excel_details` VALUES (55, 24, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 15:40:51', '2021-11-26 16:10:05');
INSERT INTO `excel_details` VALUES (56, 25, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 15:42:46', '2021-11-26 16:10:10');
INSERT INTO `excel_details` VALUES (57, 26, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 15:48:16', '2021-11-26 16:10:16');
INSERT INTO `excel_details` VALUES (58, 27, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 15:56:12', '2021-11-26 16:10:21');
INSERT INTO `excel_details` VALUES (59, 28, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 16:59:14', '2021-11-26 17:00:05');
INSERT INTO `excel_details` VALUES (60, 29, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-26 17:00:17', '2021-11-26 17:01:04');
INSERT INTO `excel_details` VALUES (61, 30, 'hoangvlhph13091', 'PRO1041', 'namnt', 1, NULL, 10.00, 3, '2021-11-27 09:42:24', '2021-11-27 09:43:04');
INSERT INTO `excel_details` VALUES (62, 31, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 09:53:56', '2021-11-27 09:54:05');
INSERT INTO `excel_details` VALUES (63, 32, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 10:33:25', '2021-11-27 10:34:05');
INSERT INTO `excel_details` VALUES (64, 33, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 16:09:54', '2021-11-27 16:10:06');
INSERT INTO `excel_details` VALUES (65, 34, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 16:18:09', '2021-11-27 16:19:04');
INSERT INTO `excel_details` VALUES (66, 34, 'bichdtph18289', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-11-27 16:18:09', '2021-11-27 16:19:07');
INSERT INTO `excel_details` VALUES (67, 35, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 17:46:55', '2021-11-27 17:47:05');
INSERT INTO `excel_details` VALUES (68, 35, 'bichdtph18289', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-11-27 17:46:55', '2021-11-27 17:47:07');
INSERT INTO `excel_details` VALUES (69, 36, 'longbtph10446', 'PRO1041', 'bichdtph18289', 1, NULL, 10.00, 3, '2021-11-27 22:45:31', '2021-11-27 22:46:05');
INSERT INTO `excel_details` VALUES (70, 36, 'tamtttph12001', 'PRO1041', 'thanhptph12609', 1, NULL, 10.00, 3, '2021-11-27 22:45:31', '2021-11-27 22:46:07');
INSERT INTO `excel_details` VALUES (71, 37, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-11-27 23:08:47', '2021-11-27 23:09:04');
INSERT INTO `excel_details` VALUES (72, 37, 'tamtttph12001', 'PRO1041', 'thanhptph12609', 1, NULL, 10.00, 3, '2021-11-27 23:08:47', '2021-11-27 23:09:07');
INSERT INTO `excel_details` VALUES (73, 38, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-03 17:48:47', '2021-12-03 17:49:04');
INSERT INTO `excel_details` VALUES (74, 39, 'hantvph10714', 'PRO1041', 'longbtph10446', 1, NULL, 10.00, 3, '2021-12-04 15:15:55', '2021-12-04 15:16:04');
INSERT INTO `excel_details` VALUES (75, 40, 'hantvph10714', 'PRO1041', 'longbtph10446', 1, NULL, 10.00, 3, '2021-12-04 15:58:26', '2021-12-04 15:59:05');
INSERT INTO `excel_details` VALUES (76, 41, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-06 00:02:18', '2021-12-06 00:03:04');
INSERT INTO `excel_details` VALUES (77, 42, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-08 09:41:22', '2021-12-08 09:42:04');
INSERT INTO `excel_details` VALUES (78, 43, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-14 17:16:07', '2021-12-14 17:17:04');
INSERT INTO `excel_details` VALUES (79, 44, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-15 21:08:52', '2021-12-15 21:09:08');
INSERT INTO `excel_details` VALUES (80, 45, 'longbtph10446', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-15 21:47:26', '2021-12-15 21:48:11');
INSERT INTO `excel_details` VALUES (81, 46, 'dinhvvph13024', 'PRO1041', 'hantvph10714', 1, NULL, 10.00, 3, '2021-12-15 22:34:08', '2021-12-15 22:35:06');
INSERT INTO `excel_details` VALUES (82, 47, 'dinhvvph13024', 'PRO1014', 'thienth', 1, NULL, 9.00, 6, '2022-05-10 21:15:09', '2022-05-10 21:16:05');
INSERT INTO `excel_details` VALUES (83, 48, 'diephtbph13471', 'PRO2016', 'tuannda3', 1, NULL, 9.00, 4, '2022-06-09 09:35:23', '2022-06-09 09:36:06');
INSERT INTO `excel_details` VALUES (84, 48, 'linhvbph13980', 'PRO1014', 'thienth', 1, NULL, 10.00, 4, '2022-06-09 09:35:23', '2022-06-09 09:36:10');
INSERT INTO `excel_details` VALUES (85, 49, 'diephtbph13471', 'PRO2016', 'tuannda3', 1, NULL, 9.00, 4, '2022-06-14 15:55:14', '2022-06-14 15:56:04');
INSERT INTO `excel_details` VALUES (86, 49, 'linhvbph13980', 'PRO1014', 'thienth', 1, NULL, 10.00, 4, '2022-06-14 15:55:14', '2022-06-14 15:56:07');
INSERT INTO `excel_details` VALUES (87, 50, 'diephtbph13471', 'PRO2016', 'tuannda3', 1, NULL, 9.00, 6, '2022-06-14 15:56:41', '2022-06-14 15:57:04');
INSERT INTO `excel_details` VALUES (88, 50, 'dinhvdph13024', 'PRO1014', 'thienth', 1, NULL, 10.00, 6, '2022-06-14 15:56:41', '2022-06-14 15:57:06');
INSERT INTO `excel_details` VALUES (89, 51, 'diephtbph13471', 'PRO2016', 'tuannda3', 1, NULL, 9.00, 4, '2022-06-15 22:24:23', '2022-06-15 22:25:06');
INSERT INTO `excel_details` VALUES (90, 51, 'dinhvvph13024', 'PRO1014', 'thienth', 1, NULL, 10.00, 4, '2022-06-15 22:24:23', '2022-06-15 22:25:09');
INSERT INTO `excel_details` VALUES (91, 52, 'hantvph10714', 'PRO2016', 'sontv8', 1, NULL, 9.00, 4, '2022-06-16 00:06:39', '2022-06-16 00:07:04');
INSERT INTO `excel_details` VALUES (92, 52, 'dinhvvph13024', 'PRO220', 'sontv8', 1, NULL, 9.00, 4, '2022-06-16 00:06:39', '2022-06-16 00:07:06');
INSERT INTO `excel_details` VALUES (93, 53, 'hantvph10714', 'PRO2062', 'datlt34', 1, NULL, 9.00, 4, '2022-06-16 00:44:23', '2022-06-16 00:45:04');
INSERT INTO `excel_details` VALUES (94, 53, 'dinhvvph13024', 'PRO2062', 'datlt34', 1, NULL, 9.00, 4, '2022-06-16 00:44:23', '2022-06-16 00:45:07');
COMMIT;

-- ----------------------------
-- Table structure for excel_imports
-- ----------------------------
DROP TABLE IF EXISTS `excel_imports`;
CREATE TABLE `excel_imports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int NOT NULL,
  `campus_id` int NOT NULL,
  `status` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of excel_imports
-- ----------------------------
BEGIN;
INSERT INTO `excel_imports` VALUES (1, 2, 2, 3, '2021-11-25 13:49:02', '2021-11-25 14:01:40');
INSERT INTO `excel_imports` VALUES (2, 2, 2, 3, '2021-11-25 14:49:49', '2021-11-25 14:50:47');
INSERT INTO `excel_imports` VALUES (3, 2, 2, 3, '2021-11-25 14:53:21', '2021-11-25 14:54:19');
INSERT INTO `excel_imports` VALUES (4, 2, 2, 3, '2021-11-25 15:17:03', '2021-11-25 15:18:09');
INSERT INTO `excel_imports` VALUES (5, 2, 2, 3, '2021-11-25 15:26:32', '2021-11-25 15:27:09');
INSERT INTO `excel_imports` VALUES (6, 2, 2, 3, '2021-11-25 15:35:08', '2021-11-25 15:35:15');
INSERT INTO `excel_imports` VALUES (7, 2, 2, 3, '2021-11-25 15:57:28', '2021-11-25 15:58:09');
INSERT INTO `excel_imports` VALUES (8, 2, 2, 3, '2021-11-25 18:16:39', '2021-11-25 18:17:09');
INSERT INTO `excel_imports` VALUES (9, 2, 2, 3, '2021-11-25 18:23:02', '2021-11-25 18:23:09');
INSERT INTO `excel_imports` VALUES (10, 2, 2, 3, '2021-11-25 20:20:48', '2021-11-25 20:21:09');
INSERT INTO `excel_imports` VALUES (11, 2, 2, 3, '2021-11-25 20:57:05', '2021-11-25 20:58:10');
INSERT INTO `excel_imports` VALUES (12, 2, 2, 3, '2021-11-26 09:33:23', '2021-11-26 09:34:04');
INSERT INTO `excel_imports` VALUES (13, 2, 2, 3, '2021-11-26 10:05:38', '2021-11-26 10:06:05');
INSERT INTO `excel_imports` VALUES (14, 2, 2, 3, '2021-11-26 10:07:17', '2021-11-26 10:08:05');
INSERT INTO `excel_imports` VALUES (16, 2, 2, 3, '2021-11-26 10:11:08', '2021-11-26 10:12:04');
INSERT INTO `excel_imports` VALUES (17, 2, 2, 3, '2021-11-26 10:17:29', '2021-11-26 10:18:05');
INSERT INTO `excel_imports` VALUES (18, 2, 2, 3, '2021-11-26 10:21:25', '2021-11-26 10:22:04');
INSERT INTO `excel_imports` VALUES (19, 2, 2, 3, '2021-11-26 14:13:49', '2021-11-26 14:14:09');
INSERT INTO `excel_imports` VALUES (20, 2, 2, 3, '2021-11-26 14:23:54', '2021-11-26 14:24:05');
INSERT INTO `excel_imports` VALUES (21, 2, 2, 3, '2021-11-26 14:27:15', '2021-11-26 14:28:04');
INSERT INTO `excel_imports` VALUES (22, 2, 2, 3, '2021-11-26 14:27:31', '2021-11-26 14:28:09');
INSERT INTO `excel_imports` VALUES (23, 2, 2, 3, '2021-11-26 14:36:25', '2021-11-26 14:37:04');
INSERT INTO `excel_imports` VALUES (24, 2, 2, 3, '2021-11-26 15:40:51', '2021-11-26 16:10:05');
INSERT INTO `excel_imports` VALUES (25, 2, 2, 3, '2021-11-26 15:42:46', '2021-11-26 16:10:10');
INSERT INTO `excel_imports` VALUES (26, 2, 2, 3, '2021-11-26 15:48:16', '2021-11-26 16:10:16');
INSERT INTO `excel_imports` VALUES (27, 2, 2, 3, '2021-11-26 15:56:12', '2021-11-26 16:10:21');
INSERT INTO `excel_imports` VALUES (28, 2, 2, 3, '2021-11-26 16:59:14', '2021-11-26 17:00:05');
INSERT INTO `excel_imports` VALUES (29, 2, 2, 3, '2021-11-26 17:00:17', '2021-11-26 17:01:04');
INSERT INTO `excel_imports` VALUES (30, 2, 2, 3, '2021-11-27 09:42:24', '2021-11-27 09:43:04');
INSERT INTO `excel_imports` VALUES (31, 2, 2, 3, '2021-11-27 09:53:56', '2021-11-27 09:54:05');
INSERT INTO `excel_imports` VALUES (32, 2, 2, 3, '2021-11-27 10:33:25', '2021-11-27 10:34:05');
INSERT INTO `excel_imports` VALUES (33, 2, 2, 3, '2021-11-27 16:09:54', '2021-11-27 16:10:06');
INSERT INTO `excel_imports` VALUES (34, 2, 2, 3, '2021-11-27 16:18:09', '2021-11-27 16:19:07');
INSERT INTO `excel_imports` VALUES (35, 2, 2, 3, '2021-11-27 17:46:55', '2021-11-27 17:47:07');
INSERT INTO `excel_imports` VALUES (36, 2, 2, 3, '2021-11-27 22:45:31', '2021-11-27 22:46:07');
INSERT INTO `excel_imports` VALUES (37, 2, 2, 3, '2021-11-27 23:08:47', '2021-11-27 23:09:07');
INSERT INTO `excel_imports` VALUES (38, 32, 2, 3, '2021-12-03 17:48:47', '2021-12-03 17:49:04');
INSERT INTO `excel_imports` VALUES (39, 32, 2, 3, '2021-12-04 15:15:55', '2021-12-04 15:16:04');
INSERT INTO `excel_imports` VALUES (40, 32, 2, 3, '2021-12-04 15:58:26', '2021-12-04 15:59:05');
INSERT INTO `excel_imports` VALUES (41, 2, 2, 3, '2021-12-06 00:02:18', '2021-12-06 00:03:04');
INSERT INTO `excel_imports` VALUES (42, 2, 2, 3, '2021-12-08 09:41:22', '2021-12-08 09:42:04');
INSERT INTO `excel_imports` VALUES (43, 26, 2, 3, '2021-12-14 17:16:07', '2021-12-14 17:17:04');
INSERT INTO `excel_imports` VALUES (44, 26, 2, 3, '2021-12-15 21:08:52', '2021-12-15 21:09:08');
INSERT INTO `excel_imports` VALUES (45, 26, 2, 3, '2021-12-15 21:47:26', '2021-12-15 21:48:11');
INSERT INTO `excel_imports` VALUES (46, 26, 2, 3, '2021-12-15 22:34:08', '2021-12-15 22:35:06');
INSERT INTO `excel_imports` VALUES (47, 123, 2, 3, '2022-05-10 21:15:08', '2022-05-10 21:16:05');
INSERT INTO `excel_imports` VALUES (48, 124, 1, 3, '2022-06-09 09:35:23', '2022-06-09 09:36:10');
INSERT INTO `excel_imports` VALUES (49, 123, 2, 3, '2022-06-14 15:55:14', '2022-06-14 15:56:07');
INSERT INTO `excel_imports` VALUES (50, 123, 2, 3, '2022-06-14 15:56:41', '2022-06-14 15:57:06');
INSERT INTO `excel_imports` VALUES (51, 12, 1, 3, '2022-06-15 22:24:23', '2022-06-15 22:25:09');
INSERT INTO `excel_imports` VALUES (52, 12, 2, 3, '2022-06-16 00:06:39', '2022-06-16 00:07:06');
INSERT INTO `excel_imports` VALUES (53, 12, 2, 3, '2022-06-16 00:44:23', '2022-06-16 00:45:07');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for main_majors
-- ----------------------------
DROP TABLE IF EXISTS `main_majors`;
CREATE TABLE `main_majors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of main_majors
-- ----------------------------
BEGIN;
INSERT INTO `main_majors` VALUES (1, 'Công nghệ thông tin', '2021-12-11 00:15:51', '2021-12-11 00:15:54');
INSERT INTO `main_majors` VALUES (2, 'Thiết kế đồ họa', '2021-12-11 00:17:15', '2021-12-11 00:17:19');
INSERT INTO `main_majors` VALUES (3, 'Du lịch - Nhà hàng - khách sạn', '2021-12-11 00:17:56', '2021-12-11 00:17:59');
INSERT INTO `main_majors` VALUES (4, 'Kinh tế - Kinh doanh ', '2021-12-11 00:18:50', '2021-12-11 00:18:53');
INSERT INTO `main_majors` VALUES (5, 'Thẩm mỹ - Làm đẹp', '2021-12-11 00:19:09', '2021-12-11 00:19:12');
INSERT INTO `main_majors` VALUES (6, 'Cơ khí, (Điện) tự động hóa', '2021-12-11 00:19:36', '2021-12-11 00:19:38');
COMMIT;

-- ----------------------------
-- Table structure for majors
-- ----------------------------
DROP TABLE IF EXISTS `majors`;
CREATE TABLE `majors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `show_name` int NOT NULL DEFAULT '1',
  `main_major_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of majors
-- ----------------------------
BEGIN;
INSERT INTO `majors` VALUES (1, 'Công Nghệ Thông Tin', 'CNTT', '2021-11-08 11:20:13', '2021-11-08 11:20:13', 1, 1);
INSERT INTO `majors` VALUES (2, 'Kinh Tế', 'KT', '2021-11-08 11:20:13', '2021-11-08 11:20:13', 1, 4);
INSERT INTO `majors` VALUES (3, 'Du Lịch-Nhà Hàng-Khách Sạn', 'DL', '2021-11-08 11:20:13', '2021-11-08 11:20:13', 1, 3);
INSERT INTO `majors` VALUES (4, 'Cơ Khí,Tự Động Hóa', 'CK', '2021-11-08 11:20:13', '2021-11-08 11:20:13', 1, 6);
INSERT INTO `majors` VALUES (18, 'Tự động hóa', 'TD01', '2021-11-27 10:34:00', '2021-11-27 10:34:00', 1, 6);
INSERT INTO `majors` VALUES (19, 'Ứng dụng phần mềm', 'UDPM', '2021-12-08 09:58:55', '2021-12-08 09:58:55', 1, 1);
INSERT INTO `majors` VALUES (20, 'Lập trình máy tính', 'MOB', '2021-12-08 10:04:06', '2021-12-08 10:04:06', 1, 1);
INSERT INTO `majors` VALUES (21, 'Thiết kế trang web', 'WEB', '2021-12-08 10:07:19', '2021-12-08 10:07:19', 1, 1);
INSERT INTO `majors` VALUES (22, 'Thiết kế đồ họa', 'MUL', '2021-12-08 10:09:56', '2021-12-08 10:09:56', 1, 2);
INSERT INTO `majors` VALUES (23, 'Quan hệ công chúng', 'QHCC', '2021-12-08 10:12:58', '2021-12-08 10:12:58', 1, 4);
INSERT INTO `majors` VALUES (24, 'Quản trị doanh nghiệp', 'QTDN', '2021-12-08 10:15:47', '2021-12-08 10:15:47', 1, 4);
INSERT INTO `majors` VALUES (25, 'Quản trị khách sạn', 'HOS', '2021-12-08 10:18:29', '2021-12-08 10:18:29', 1, 3);
INSERT INTO `majors` VALUES (26, 'Quản trị nhà hàng', 'QTNH', '2021-12-08 10:21:02', '2021-12-08 10:21:02', 1, 3);
INSERT INTO `majors` VALUES (27, 'Hướng dẫn du lịch', 'TOU', '2021-12-08 10:22:35', '2021-12-08 10:22:35', 1, 3);
INSERT INTO `majors` VALUES (28, 'Thương mại điện tử', 'DOM', '2021-12-08 10:24:24', '2021-12-08 10:24:24', 1, 4);
INSERT INTO `majors` VALUES (29, 'Điện Công nghiệp', 'INE', '2021-12-08 10:29:06', '2021-12-08 10:29:06', 1, 6);
INSERT INTO `majors` VALUES (30, 'Điện- Điện tử', 'Đ-ĐT', '2021-12-08 10:31:20', '2021-12-08 10:31:20', 1, 6);
INSERT INTO `majors` VALUES (31, 'Công nghệ kỹ thuật cơ khí', 'MEC', '2021-12-08 10:35:09', '2021-12-08 10:35:09', 1, 6);
INSERT INTO `majors` VALUES (32, 'Công nghệ kỹ thuật điều khiển và tự động hóa', 'AUT', '2021-12-08 10:36:20', '2021-12-08 10:36:20', 1, 6);
COMMIT;

-- ----------------------------
-- Table structure for majors_head_teacher
-- ----------------------------
DROP TABLE IF EXISTS `majors_head_teacher`;
CREATE TABLE `majors_head_teacher` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `major_id` bigint unsigned NOT NULL,
  `campus_id` bigint unsigned NOT NULL,
  `teacher` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of majors_head_teacher
-- ----------------------------
BEGIN;
INSERT INTO `majors_head_teacher` VALUES (26, 18, 2, 12, '2021-11-27 10:34:00', '2021-11-27 10:34:00');
INSERT INTO `majors_head_teacher` VALUES (61, 20, 2, 12, '2021-12-08 10:04:06', '2021-12-08 10:04:06');
INSERT INTO `majors_head_teacher` VALUES (62, 20, 3, 53, '2021-12-08 10:04:06', '2021-12-08 10:04:06');
INSERT INTO `majors_head_teacher` VALUES (63, 20, 4, 105, '2021-12-08 10:04:06', '2021-12-08 10:04:06');
INSERT INTO `majors_head_teacher` VALUES (64, 20, 5, 57, '2021-12-08 10:04:06', '2021-12-08 10:04:06');
INSERT INTO `majors_head_teacher` VALUES (65, 20, 6, 49, '2021-12-08 10:04:06', '2021-12-08 10:04:06');
INSERT INTO `majors_head_teacher` VALUES (66, 21, 2, 12, '2021-12-08 10:07:20', '2021-12-08 10:07:20');
INSERT INTO `majors_head_teacher` VALUES (67, 21, 3, 112, '2021-12-08 10:07:20', '2021-12-08 10:07:20');
INSERT INTO `majors_head_teacher` VALUES (68, 21, 4, 105, '2021-12-08 10:07:20', '2021-12-08 10:07:20');
INSERT INTO `majors_head_teacher` VALUES (69, 21, 5, 57, '2021-12-08 10:07:20', '2021-12-08 10:07:20');
INSERT INTO `majors_head_teacher` VALUES (70, 21, 6, 49, '2021-12-08 10:07:20', '2021-12-08 10:07:20');
INSERT INTO `majors_head_teacher` VALUES (81, 24, 2, 67, '2021-12-08 10:15:47', '2021-12-08 10:15:47');
INSERT INTO `majors_head_teacher` VALUES (82, 24, 3, 55, '2021-12-08 10:15:47', '2021-12-08 10:15:47');
INSERT INTO `majors_head_teacher` VALUES (83, 24, 4, 103, '2021-12-08 10:15:47', '2021-12-08 10:15:47');
INSERT INTO `majors_head_teacher` VALUES (84, 24, 5, 59, '2021-12-08 10:15:47', '2021-12-08 10:15:47');
INSERT INTO `majors_head_teacher` VALUES (85, 24, 6, 52, '2021-12-08 10:15:47', '2021-12-08 10:15:47');
INSERT INTO `majors_head_teacher` VALUES (86, 25, 2, 67, '2021-12-08 10:18:29', '2021-12-08 10:18:29');
INSERT INTO `majors_head_teacher` VALUES (87, 25, 3, 98, '2021-12-08 10:18:29', '2021-12-08 10:18:29');
INSERT INTO `majors_head_teacher` VALUES (88, 25, 5, 60, '2021-12-08 10:18:29', '2021-12-08 10:18:29');
INSERT INTO `majors_head_teacher` VALUES (89, 25, 6, 51, '2021-12-08 10:18:29', '2021-12-08 10:18:29');
INSERT INTO `majors_head_teacher` VALUES (90, 26, 2, 67, '2021-12-08 10:21:02', '2021-12-08 10:21:02');
INSERT INTO `majors_head_teacher` VALUES (91, 26, 3, 98, '2021-12-08 10:21:02', '2021-12-08 10:21:02');
INSERT INTO `majors_head_teacher` VALUES (92, 26, 5, 60, '2021-12-08 10:21:02', '2021-12-08 10:21:02');
INSERT INTO `majors_head_teacher` VALUES (93, 26, 6, 51, '2021-12-08 10:21:02', '2021-12-08 10:21:02');
INSERT INTO `majors_head_teacher` VALUES (94, 27, 2, 67, '2021-12-08 10:22:35', '2021-12-08 10:22:35');
INSERT INTO `majors_head_teacher` VALUES (95, 27, 3, 98, '2021-12-08 10:22:35', '2021-12-08 10:22:35');
INSERT INTO `majors_head_teacher` VALUES (96, 27, 5, 60, '2021-12-08 10:22:35', '2021-12-08 10:22:35');
INSERT INTO `majors_head_teacher` VALUES (97, 27, 6, 51, '2021-12-08 10:22:35', '2021-12-08 10:22:35');
INSERT INTO `majors_head_teacher` VALUES (98, 28, 2, 67, '2021-12-08 10:24:24', '2021-12-08 10:24:24');
INSERT INTO `majors_head_teacher` VALUES (99, 28, 3, 100, '2021-12-08 10:24:24', '2021-12-08 10:24:24');
INSERT INTO `majors_head_teacher` VALUES (100, 28, 4, 103, '2021-12-08 10:24:24', '2021-12-08 10:24:24');
INSERT INTO `majors_head_teacher` VALUES (101, 28, 5, 59, '2021-12-08 10:24:24', '2021-12-08 10:24:24');
INSERT INTO `majors_head_teacher` VALUES (102, 28, 6, 52, '2021-12-08 10:24:24', '2021-12-08 10:24:24');
INSERT INTO `majors_head_teacher` VALUES (106, 30, 2, 102, '2021-12-08 10:31:20', '2021-12-08 10:31:20');
INSERT INTO `majors_head_teacher` VALUES (107, 30, 5, 64, '2021-12-08 10:31:20', '2021-12-08 10:31:20');
INSERT INTO `majors_head_teacher` VALUES (108, 29, 2, 102, '2021-12-08 10:31:50', '2021-12-08 10:31:50');
INSERT INTO `majors_head_teacher` VALUES (109, 29, 5, 64, '2021-12-08 10:31:50', '2021-12-08 10:31:50');
INSERT INTO `majors_head_teacher` VALUES (110, 31, 2, 102, '2021-12-08 10:35:09', '2021-12-08 10:35:09');
INSERT INTO `majors_head_teacher` VALUES (111, 31, 5, 64, '2021-12-08 10:35:09', '2021-12-08 10:35:09');
INSERT INTO `majors_head_teacher` VALUES (112, 31, 6, 96, '2021-12-08 10:35:09', '2021-12-08 10:35:09');
INSERT INTO `majors_head_teacher` VALUES (113, 32, 2, 102, '2021-12-08 10:36:20', '2021-12-08 10:36:20');
INSERT INTO `majors_head_teacher` VALUES (114, 32, 5, 64, '2021-12-08 10:36:20', '2021-12-08 10:36:20');
INSERT INTO `majors_head_teacher` VALUES (115, 32, 6, 97, '2021-12-08 10:36:20', '2021-12-08 10:36:20');
INSERT INTO `majors_head_teacher` VALUES (138, 1, 2, 12, '2022-06-15 23:28:34', '2022-06-15 23:28:34');
INSERT INTO `majors_head_teacher` VALUES (139, 1, 3, 53, '2022-06-15 23:28:34', '2022-06-15 23:28:34');
INSERT INTO `majors_head_teacher` VALUES (140, 1, 4, 105, '2022-06-15 23:28:34', '2022-06-15 23:28:34');
INSERT INTO `majors_head_teacher` VALUES (141, 1, 5, 57, '2022-06-15 23:28:34', '2022-06-15 23:28:34');
INSERT INTO `majors_head_teacher` VALUES (142, 1, 6, 49, '2022-06-15 23:28:34', '2022-06-15 23:28:34');
INSERT INTO `majors_head_teacher` VALUES (143, 2, 2, 12, '2022-06-15 23:41:42', '2022-06-15 23:41:42');
INSERT INTO `majors_head_teacher` VALUES (144, 2, 3, 55, '2022-06-15 23:41:42', '2022-06-15 23:41:42');
INSERT INTO `majors_head_teacher` VALUES (145, 2, 4, 103, '2022-06-15 23:41:42', '2022-06-15 23:41:42');
INSERT INTO `majors_head_teacher` VALUES (146, 2, 5, 59, '2022-06-15 23:41:42', '2022-06-15 23:41:42');
INSERT INTO `majors_head_teacher` VALUES (147, 2, 6, 52, '2022-06-15 23:41:42', '2022-06-15 23:41:42');
INSERT INTO `majors_head_teacher` VALUES (148, 4, 2, 12, '2022-06-15 23:41:53', '2022-06-15 23:41:53');
INSERT INTO `majors_head_teacher` VALUES (149, 4, 4, 29, '2022-06-15 23:41:53', '2022-06-15 23:41:53');
INSERT INTO `majors_head_teacher` VALUES (150, 3, 2, 12, '2022-06-15 23:42:01', '2022-06-15 23:42:01');
INSERT INTO `majors_head_teacher` VALUES (151, 3, 3, 98, '2022-06-15 23:42:01', '2022-06-15 23:42:01');
INSERT INTO `majors_head_teacher` VALUES (152, 3, 5, 60, '2022-06-15 23:42:01', '2022-06-15 23:42:01');
INSERT INTO `majors_head_teacher` VALUES (153, 3, 6, 51, '2022-06-15 23:42:01', '2022-06-15 23:42:01');
INSERT INTO `majors_head_teacher` VALUES (154, 19, 2, 12, '2022-06-15 23:42:07', '2022-06-15 23:42:07');
INSERT INTO `majors_head_teacher` VALUES (155, 19, 3, 101, '2022-06-15 23:42:07', '2022-06-15 23:42:07');
INSERT INTO `majors_head_teacher` VALUES (156, 19, 5, 56, '2022-06-15 23:42:07', '2022-06-15 23:42:07');
INSERT INTO `majors_head_teacher` VALUES (157, 23, 2, 12, '2022-06-15 23:42:19', '2022-06-15 23:42:19');
INSERT INTO `majors_head_teacher` VALUES (158, 23, 3, 55, '2022-06-15 23:42:19', '2022-06-15 23:42:19');
INSERT INTO `majors_head_teacher` VALUES (159, 23, 4, 103, '2022-06-15 23:42:19', '2022-06-15 23:42:19');
INSERT INTO `majors_head_teacher` VALUES (160, 23, 5, 59, '2022-06-15 23:42:19', '2022-06-15 23:42:19');
INSERT INTO `majors_head_teacher` VALUES (161, 23, 6, 52, '2022-06-15 23:42:19', '2022-06-15 23:42:19');
INSERT INTO `majors_head_teacher` VALUES (162, 22, 2, 123, '2022-06-16 00:43:37', '2022-06-16 00:43:37');
INSERT INTO `majors_head_teacher` VALUES (163, 22, 3, 54, '2022-06-16 00:43:37', '2022-06-16 00:43:37');
INSERT INTO `majors_head_teacher` VALUES (164, 22, 4, 106, '2022-06-16 00:43:37', '2022-06-16 00:43:37');
INSERT INTO `majors_head_teacher` VALUES (165, 22, 5, 58, '2022-06-16 00:43:37', '2022-06-16 00:43:37');
INSERT INTO `majors_head_teacher` VALUES (166, 22, 6, 95, '2022-06-16 00:43:37', '2022-06-16 00:43:37');
COMMIT;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of members
-- ----------------------------
BEGIN;
INSERT INTO `members` VALUES (1, 9, 'Võ Văn Định', 'PH13024', '2021-11-25 14:14:50', '2021-11-25 14:14:50');
INSERT INTO `members` VALUES (2, 9, 'Vũ Lê Huy Hoàng', 'PH13025', '2021-11-25 14:14:50', '2021-11-25 14:14:50');
INSERT INTO `members` VALUES (3, 9, 'Trần Tiến', 'PH13020', '2021-11-25 14:14:50', '2021-11-25 14:14:50');
INSERT INTO `members` VALUES (4, 9, 'Trần Trọng Anh', 'PH13054', '2021-11-25 14:14:50', '2021-11-25 14:14:50');
INSERT INTO `members` VALUES (5, 2, 'Vũ Lê Huy Hoàng', 'PH13091', '2021-11-25 14:18:52', '2021-11-25 14:18:52');
INSERT INTO `members` VALUES (6, 2, 'Trần Trọng Anh', 'PH13092', '2021-11-25 14:18:52', '2021-11-25 14:18:52');
INSERT INTO `members` VALUES (7, 3, 'Võ Văn Định', 'PH13024', '2021-11-25 14:23:28', '2021-11-25 14:23:28');
INSERT INTO `members` VALUES (8, 3, 'Lê Văn Lưu', 'PH12004', '2021-11-25 14:23:28', '2021-11-25 14:23:28');
INSERT INTO `members` VALUES (9, 3, 'Trần Trọng Anh', 'Ph1032', '2021-11-25 14:23:28', '2021-11-25 14:23:28');
INSERT INTO `members` VALUES (10, 6, 'Võ Văn Định', 'PH13024', '2021-11-25 14:44:52', '2021-11-25 14:44:52');
INSERT INTO `members` VALUES (11, 6, 'Lê Văn Lưu', 'PH12035', '2021-11-25 14:44:52', '2021-11-25 14:44:52');
INSERT INTO `members` VALUES (12, 6, 'Trần Thành Long', 'PH22014', '2021-11-25 14:44:52', '2021-11-25 14:44:52');
INSERT INTO `members` VALUES (13, 10, '@', 'Ph12001      ', '2021-11-25 15:01:13', '2021-11-25 15:09:58');
INSERT INTO `members` VALUES (14, 19, 'Bùi Thị Long', 'Ph10446', '2021-11-25 15:20:27', '2021-11-25 15:20:27');
INSERT INTO `members` VALUES (15, 22, 'Đỗ Thị Bích', 'Ph18289', '2021-11-25 15:30:33', '2021-11-25 15:30:33');
INSERT INTO `members` VALUES (16, 22, 'Bùi Thị Long', 'Ph10245', '2021-11-25 15:30:33', '2021-11-25 15:30:33');
INSERT INTO `members` VALUES (17, 22, ' Trương Văn Hân', 'Ph10446', '2021-11-25 15:30:33', '2021-11-25 15:30:33');
INSERT INTO `members` VALUES (18, 15, 'Đỗ Thị Bích', 'PH13025', '2021-11-25 15:33:02', '2021-11-25 15:33:02');
INSERT INTO `members` VALUES (19, 15, 'Trần Trọng Hoàng', 'PH12201', '2021-11-25 15:33:02', '2021-11-25 15:33:02');
INSERT INTO `members` VALUES (20, 15, 'Trần Thị Long', 'PH13094', '2021-11-25 15:33:02', '2021-11-25 15:33:02');
INSERT INTO `members` VALUES (21, 25, 'Bùi Thị Long', 'Ph10245', '2021-11-25 15:41:00', '2021-11-25 15:41:00');
INSERT INTO `members` VALUES (22, 25, 'Đỗ Thị Bích', 'Ph10446', '2021-11-25 15:41:00', '2021-11-25 15:41:00');
INSERT INTO `members` VALUES (23, 28, 'Võ Văn Định', 'Ph112211', '2021-11-25 16:03:52', '2021-11-25 16:03:52');
INSERT INTO `members` VALUES (24, 12, 'Vũ Lê Huy Hoàng', 'PH13091', '2021-11-25 17:28:48', '2021-11-25 17:28:48');
INSERT INTO `members` VALUES (25, 12, 'Trần Trọng Anh', 'PH13092', '2021-11-25 17:28:48', '2021-11-25 17:28:48');
INSERT INTO `members` VALUES (26, 11, 'longbtph10446', 'ph10446', '2021-11-25 17:29:33', '2021-11-25 17:29:33');
INSERT INTO `members` VALUES (27, 16, 'Đỗ Thị Bích', 'ph18289', '2021-11-25 17:33:21', '2021-11-25 17:33:21');
INSERT INTO `members` VALUES (28, 17, 'Võ Văn Định', 'PH13024', '2021-11-25 17:33:53', '2021-11-25 17:33:53');
INSERT INTO `members` VALUES (29, 17, 'Trần Hữu Thiện', 'PH13025', '2021-11-25 17:33:53', '2021-11-25 17:33:53');
INSERT INTO `members` VALUES (30, 14, 'Vũ Lê Huy Hoàng', 'PH13091', '2021-11-25 17:36:37', '2021-11-25 17:36:37');
INSERT INTO `members` VALUES (32, 34, 'Võ Văn Định', 'Ph112211', '2021-11-25 18:24:57', '2021-11-25 18:24:57');
INSERT INTO `members` VALUES (33, 18, 'Võ Văn Hoàng', 'PH13024', '2021-11-26 13:55:06', '2021-11-26 13:55:06');
INSERT INTO `members` VALUES (34, 21, 'Võ Văn Định', 'PH13024', '2021-11-26 14:01:06', '2021-11-26 14:01:06');
INSERT INTO `members` VALUES (35, 21, 'Võ Văn Định A', 'PH13024A', '2021-11-26 14:02:31', '2021-11-26 14:02:31');
INSERT INTO `members` VALUES (36, 63, 'Bùi Thị Long', 'Ph10446', '2021-11-27 09:56:42', '2021-11-27 09:56:42');
INSERT INTO `members` VALUES (37, 63, 'Đỗ Thị Bích', 'Ph10245', '2021-11-27 09:56:42', '2021-11-27 09:56:42');
INSERT INTO `members` VALUES (38, 63, 'Võ Văn Định', 'Ph18289', '2021-11-27 09:56:42', '2021-11-27 09:56:42');
INSERT INTO `members` VALUES (39, 63, ' Trương Văn Hân', 'Ph112211', '2021-11-27 10:00:04', '2021-11-27 10:00:04');
INSERT INTO `members` VALUES (40, 64, 'Bùi Thị Long', 'PH11111', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `members` VALUES (41, 64, ' Trương Văn Hân', 'PH121212', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `members` VALUES (42, 64, 'Đỗ Thị Bích', 'PH12342', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `members` VALUES (43, 64, 'Võ Văn Định', 'PH17273', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `members` VALUES (44, 64, 'Vũ Lê Huy Hoàng', 'Ph17263', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `members` VALUES (45, 64, 'Hán Văn Hu', 'PH19283', '2021-11-27 10:42:38', '2021-11-27 10:56:19');
INSERT INTO `members` VALUES (47, 67, 'Đỗ Thị Bích', 'PH1', '2021-11-27 17:24:39', '2021-11-27 17:24:39');
INSERT INTO `members` VALUES (50, 71, 'Phạm Thị Thanh', 'ph12069', '2021-11-27 22:47:09', '2021-11-27 22:47:09');
INSERT INTO `members` VALUES (51, 70, 'Đỗ Thị Bích', 'Ph18289', '2021-11-27 23:10:10', '2021-11-27 23:10:10');
INSERT INTO `members` VALUES (54, 37, 'Phạm Thị Thanh', 'ph12069', '2021-11-27 23:40:38', '2021-11-27 23:40:38');
INSERT INTO `members` VALUES (55, 38, 'Phạm Thị Thanh', 'ph12069', '2021-11-27 23:44:29', '2021-11-27 23:44:29');
INSERT INTO `members` VALUES (56, 40, 'Phạm Thị Thanh', 'ph12069', '2021-11-28 10:43:17', '2021-11-28 10:43:17');
INSERT INTO `members` VALUES (57, 74, 'Bùi Thị Long', 'PH11111', '2021-12-03 17:58:31', '2021-12-03 17:58:31');
INSERT INTO `members` VALUES (58, 37, 'Trương Văn Hân', 'PH10714', '2021-12-04 16:36:02', '2021-12-04 16:36:02');
INSERT INTO `members` VALUES (59, 77, 'Bùi Thị Long', 'PH11111', '2021-12-06 11:09:20', '2021-12-06 11:09:20');
INSERT INTO `members` VALUES (60, 76, 'Võ Văn Định', 'PH13024', '2021-12-07 09:09:38', '2021-12-07 09:09:38');
INSERT INTO `members` VALUES (61, 75, 'Trương Văn Hân', 'PH10714', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (62, 75, 'Ngô Văn Trọng', 'PH10981', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (63, 75, 'Hoàng Văn Nam', 'PH78971', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (64, 75, 'Dương Đức Anh', 'PH12345', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (65, 75, 'Nguyễn Văn Huy', 'PH89172', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (66, 75, 'Trần Văn Trường', 'PH12378', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (67, 75, 'Phan Văn Hải', 'PH12365', '2021-12-07 09:35:43', '2021-12-07 09:35:43');
INSERT INTO `members` VALUES (68, 78, 'Trương Văn Hân', 'PH10714', '2021-12-11 16:22:52', '2021-12-11 16:22:52');
INSERT INTO `members` VALUES (69, 78, 'Phạm Văn Thành', 'PH12345', '2021-12-11 16:22:52', '2021-12-11 16:22:52');
INSERT INTO `members` VALUES (70, 78, 'Hoàng Văn Nam', 'PH09888', '2021-12-11 16:22:52', '2021-12-11 16:22:52');
INSERT INTO `members` VALUES (71, 79, 'Đỗ Thị Bích', 'Ph18289', '2021-12-14 17:20:41', '2021-12-14 17:20:41');
INSERT INTO `members` VALUES (72, 79, 'Võ Văn Định', 'Ph10245', '2021-12-14 17:20:41', '2021-12-14 17:20:41');
INSERT INTO `members` VALUES (73, 82, 'Võ Văn Định', 'PH13024', '2021-12-15 22:41:08', '2021-12-15 22:41:08');
INSERT INTO `members` VALUES (74, 83, 'Phạm Văn Hiếu', 'PH24901', '2022-05-10 23:15:05', '2022-05-10 23:15:05');
INSERT INTO `members` VALUES (75, 83, 'Trương Văn Hân', 'PH10714', '2022-05-10 23:15:05', '2022-05-10 23:15:05');
INSERT INTO `members` VALUES (76, 91, 'Bùi Minh Tiến', 'PH05304', '2022-06-15 23:01:34', '2022-06-15 23:01:34');
INSERT INTO `members` VALUES (77, 91, 'Phạm Văn Hiếu', 'PH12651', '2022-06-15 23:01:34', '2022-06-15 23:01:34');
INSERT INTO `members` VALUES (78, 91, 'Lã Quang Đức', 'PH11414', '2022-06-15 23:01:34', '2022-06-15 23:01:34');
INSERT INTO `members` VALUES (79, 91, 'Mai Đức Khiêm', 'PH11447', '2022-06-15 23:01:34', '2022-06-15 23:01:34');
INSERT INTO `members` VALUES (80, 91, 'Hồ Thích Huy', 'PH07087', '2022-06-15 23:01:34', '2022-06-15 23:01:34');
INSERT INTO `members` VALUES (81, 92, 'Vương Văn Chung', 'PH12364', '2022-06-16 00:20:08', '2022-06-16 00:20:08');
INSERT INTO `members` VALUES (82, 92, 'Vũ Ngọc Tùng', 'PH11579', '2022-06-16 00:20:08', '2022-06-16 00:20:08');
INSERT INTO `members` VALUES (83, 92, 'Đào Mạnh Cường', 'PH09856', '2022-06-16 00:20:08', '2022-06-16 00:20:08');
INSERT INTO `members` VALUES (84, 92, 'Đinh Quốc Khánh', 'PH10545', '2022-06-16 00:20:08', '2022-06-16 00:20:08');
INSERT INTO `members` VALUES (85, 93, 'Trần Anh Quang', 'PH12673', '2022-06-16 00:34:23', '2022-06-16 00:34:23');
INSERT INTO `members` VALUES (86, 93, 'Dương Đức Anh', 'PH10755', '2022-06-16 00:34:23', '2022-06-16 00:34:23');
INSERT INTO `members` VALUES (87, 93, 'Hồ Phi', 'PH12890', '2022-06-16 00:34:23', '2022-06-16 00:34:23');
INSERT INTO `members` VALUES (88, 93, 'Nguyễn Thùy Dương', 'PH12768', '2022-06-16 00:34:23', '2022-06-16 00:34:23');
INSERT INTO `members` VALUES (89, 94, 'Kiều Thành Long', 'PH11710', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (90, 94, 'Kiều Bá Việt', 'PH09948', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (91, 94, 'Phạm Thành Trung', 'PH10027', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (92, 94, 'Nguyễn Hoàng Anh', 'PH09878', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (93, 94, 'Nguyễn Hồng Tuấn', 'PH10743', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (94, 94, 'Trương Đình Thái', 'PH12849', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
INSERT INTO `members` VALUES (95, 94, 'Nguyễn Huy Hoàng', 'PH19262', '2022-06-16 01:11:49', '2022-06-16 01:11:49');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_10_22_074444_alter_table_users_add_avatar', 1);
INSERT INTO `migrations` VALUES (6, '2021_10_23_104213_create_subjects_table', 1);
INSERT INTO `migrations` VALUES (7, '2021_10_25_035858_create_excel_import_table', 1);
INSERT INTO `migrations` VALUES (8, '2021_10_25_040357_create_excel_detail_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_10_26_104045_create_semester_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_10_27_084357_create_table_products', 1);
INSERT INTO `migrations` VALUES (11, '2021_10_27_111646_alter_table_add_document_driver', 1);
INSERT INTO `migrations` VALUES (12, '2021_10_31_004317_create_product_galleries_table', 1);
INSERT INTO `migrations` VALUES (13, '2021_10_31_005032_create_members_table', 1);
INSERT INTO `migrations` VALUES (14, '2021_10_31_020255_create_campus_table', 2);
INSERT INTO `migrations` VALUES (15, '2021_10_28_105126_create_table_product_types', 3);
INSERT INTO `migrations` VALUES (16, '2021_10_30_144226_alter_table_excel_details_change_subject_id_collume', 4);
INSERT INTO `migrations` VALUES (20, '2021_11_01_101402_create_permission_tables', 5);
INSERT INTO `migrations` VALUES (21, '2021_11_01_103739_alter_table_user_add_collumn_role', 5);
INSERT INTO `migrations` VALUES (22, '2021_11_03_084957_alter_table_excel_details_change_subject_id_collumn_name', 6);
INSERT INTO `migrations` VALUES (26, '2021_11_08_094410_create_majors_table', 7);
INSERT INTO `migrations` VALUES (28, '2021_11_08_114123_create_majors_head_teacher_table', 8);
INSERT INTO `migrations` VALUES (29, '2021_11_09_162635_alter_table_subjects_add_major_id_collumn', 9);
INSERT INTO `migrations` VALUES (30, '2021_11_11_130248_alter_table_products_change_semester_collumn', 10);
INSERT INTO `migrations` VALUES (31, '2015_05_06_194030_create_youtube_access_tokens_table', 11);
INSERT INTO `migrations` VALUES (32, '2021_11_14_155748_create_campus_table_new', 12);
INSERT INTO `migrations` VALUES (33, '2021_11_15_112030_create_table__speciallize', 13);
INSERT INTO `migrations` VALUES (34, '2021_11_18_141040_create_table_stars', 14);
INSERT INTO `migrations` VALUES (35, '2021_11_18_141701_create_table_stars', 15);
INSERT INTO `migrations` VALUES (36, '2021_11_18_170132_create_comments_table', 16);
INSERT INTO `migrations` VALUES (37, '2021_11_19_144712_alter_product_types_add_display_home_column', 17);
INSERT INTO `migrations` VALUES (38, '2021_11_24_165418_alter_products_add_reason_column', 18);
INSERT INTO `migrations` VALUES (39, '2021_11_27_164041_alter_majors_rename_columns', 19);
INSERT INTO `migrations` VALUES (40, '2021_11_28_093428_alter_majors_table', 19);
INSERT INTO `migrations` VALUES (41, '2021_12_01_091125_alter_table_products_add_document_url_collumn', 20);
INSERT INTO `migrations` VALUES (42, '2021_12_10_144815_alter_majors_table_add_main_major_id_collumn', 21);
INSERT INTO `migrations` VALUES (43, '2021_12_10_145157_create_table_main_majors', 21);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 12);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 24);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 26);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 28);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 30);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 31);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 32);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 35);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 36);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 37);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 40);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 41);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 42);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 43);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 44);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 45);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 47);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 47);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 48);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 48);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 49);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 49);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 51);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 52);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 53);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 54);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 55);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 56);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 56);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 57);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 57);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 58);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 58);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 59);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 60);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 64);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 65);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 66);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 67);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 70);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 71);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 72);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 73);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 74);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 75);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 76);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 77);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 78);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 79);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 80);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 95);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 95);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 96);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 96);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 97);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 98);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 100);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 101);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 101);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 102);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 103);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 105);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 105);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 106);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 106);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 107);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 108);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 109);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 110);
INSERT INTO `model_has_roles` VALUES (5, 'App\\Models\\User', 111);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 112);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 114);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 115);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 116);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 117);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 118);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 119);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 120);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 121);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 122);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 123);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 123);
INSERT INTO `model_has_roles` VALUES (6, 'App\\Models\\User', 123);
INSERT INTO `model_has_roles` VALUES (3, 'App\\Models\\User', 124);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 125);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 126);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 127);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'create product', 'web', '2021-11-01 11:05:22', '2021-11-01 11:05:22');
INSERT INTO `permissions` VALUES (2, 'veiw admin page', 'web', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_evaluations
-- ----------------------------
DROP TABLE IF EXISTS `product_evaluations`;
CREATE TABLE `product_evaluations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `attribute_id` int DEFAULT NULL,
  `evaluate_score` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_evaluations
-- ----------------------------
BEGIN;
INSERT INTO `product_evaluations` VALUES (6, 91, 13, 1, '2022-07-23 10:48:24', '2022-07-23 10:48:25');
INSERT INTO `product_evaluations` VALUES (7, 91, 5, 2, '2022-07-23 10:48:42', '2022-07-23 10:49:03');
INSERT INTO `product_evaluations` VALUES (8, 91, 14, 1, '2022-07-24 11:01:31', '2022-07-24 11:43:36');
INSERT INTO `product_evaluations` VALUES (9, 91, 15, 2, '2022-07-24 11:01:31', '2022-07-24 11:45:26');
INSERT INTO `product_evaluations` VALUES (10, 91, 16, 1, '2022-07-24 11:01:31', '2022-07-24 11:45:21');
INSERT INTO `product_evaluations` VALUES (11, 91, 17, 3, '2022-07-24 11:01:31', '2022-07-24 11:45:33');
COMMIT;

-- ----------------------------
-- Table structure for product_galleries
-- ----------------------------
DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `url_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_image_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_galleries
-- ----------------------------
BEGIN;
INSERT INTO `product_galleries` VALUES (1, 9, 'https://docs.google.com/uc?id=1DDlbrOFu_BpVyaNXIof7wJNGw7C1V1V9', 'https://docs.google.com/uc?id=1NKsI2EZgZImGVIfjbVDyZgdwjoFfQpdj', '2021-11-25 14:13:42', '2021-11-25 14:13:42');
INSERT INTO `product_galleries` VALUES (2, 9, 'https://docs.google.com/uc?id=1ZAHIP1NcYfSJXVQ9k8zYL9E5IOgau6tl', 'https://docs.google.com/uc?id=1tYIf5l-7LAHJQGVU0Tlo3OZAkOJLXoX-', '2021-11-25 14:13:55', '2021-11-25 14:13:55');
INSERT INTO `product_galleries` VALUES (3, 9, 'https://docs.google.com/uc?id=11sYWF4Ye6Itd8NePcfUGFR2ZdDKvsmOA', 'https://docs.google.com/uc?id=1bbXnbjIEFJd9I1QRoDYnIxwCZLlkzx5V', '2021-11-25 14:14:09', '2021-11-25 14:14:09');
INSERT INTO `product_galleries` VALUES (5, 9, 'https://docs.google.com/uc?id=1H5_DlTEr9g_yVllJO-oR3g1qqqIJVuf1', 'https://docs.google.com/uc?id=1a2TGu8NHqR0vfBQXfAEYcpPWZABgSZTv', '2021-11-25 14:14:23', '2021-11-25 14:14:23');
INSERT INTO `product_galleries` VALUES (7, 9, 'https://docs.google.com/uc?id=1FWubM3BU-jwNvmTtqYNhCgVvOmcmWQBY', 'https://docs.google.com/uc?id=1UbHGw-7paL4D7_BpZkzqodClsDZ8YPfS', '2021-11-25 14:14:36', '2021-11-25 14:14:36');
INSERT INTO `product_galleries` VALUES (9, 9, 'https://docs.google.com/uc?id=1HXqjL-649w7kUqFIJ7CTu5K0Nd4993YH', 'https://docs.google.com/uc?id=19h1oiD_HcS8sfOMeE4WsFZqGCjWJsXVF', '2021-11-25 14:14:50', '2021-11-25 14:14:50');
INSERT INTO `product_galleries` VALUES (11, 2, 'https://docs.google.com/uc?id=1BkkKepg2_v0TlD5f7QC8wRNZY_1B_YOE', 'https://docs.google.com/uc?id=17M5vvakzwiMzCjodIxjXS2WF9Rt0jnt5', '2021-11-25 14:17:56', '2021-11-25 14:17:56');
INSERT INTO `product_galleries` VALUES (12, 2, 'https://docs.google.com/uc?id=1xxn28Ysx3OOzyZiMvWavhkDQsBYsIn1q', 'https://docs.google.com/uc?id=1TH6ZvajwHmD3NWsd7ioiikScGrXxoXSr', '2021-11-25 14:18:10', '2021-11-25 14:18:10');
INSERT INTO `product_galleries` VALUES (13, 2, 'https://docs.google.com/uc?id=1RJLp5TQSs_zamzPag33JW61huBAvxdDg', 'https://docs.google.com/uc?id=1wMSI8o8B3h4QWcrFHIUgdb5PafNJLl02', '2021-11-25 14:18:24', '2021-11-25 14:18:24');
INSERT INTO `product_galleries` VALUES (14, 2, 'https://docs.google.com/uc?id=1InGqexCUKtbFrCOCY3Ykf9HbxjfML_g9', 'https://docs.google.com/uc?id=1j1EN6zm7cs7mkuw9dIe76USbPjEovFcu', '2021-11-25 14:18:38', '2021-11-25 14:18:38');
INSERT INTO `product_galleries` VALUES (15, 2, 'https://docs.google.com/uc?id=1pTfhtL1NbCqAgfXKJP_OxnPCaxeHtPrz', 'https://docs.google.com/uc?id=1ijfZ4v2kJkPbrGokZqPDjex3MKFoomiq', '2021-11-25 14:18:52', '2021-11-25 14:18:52');
INSERT INTO `product_galleries` VALUES (16, 3, 'https://docs.google.com/uc?id=1gKy6wE3tWFyuCwirE9muaE42mX2ALprR', 'https://docs.google.com/uc?id=1BPsVkliC4JLv_anHAvgSdKk2KRpVZD1D', '2021-11-25 14:22:14', '2021-11-25 14:22:14');
INSERT INTO `product_galleries` VALUES (17, 3, 'https://docs.google.com/uc?id=1F35qDrnQKM_U29fwRMMLEevcsf932yzT', 'https://docs.google.com/uc?id=15Oz9e30eZkU0FvAYtl7hzJvpgXNm6Uf2', '2021-11-25 14:22:33', '2021-11-25 14:22:33');
INSERT INTO `product_galleries` VALUES (18, 3, 'https://docs.google.com/uc?id=1rHl9pblVLn1dcrvVwzoEy_dCz8B3PusT', 'https://docs.google.com/uc?id=1LIrZF1HQB0Qt9XqdhQBZ92xUzvADG_Qx', '2021-11-25 14:22:46', '2021-11-25 14:22:46');
INSERT INTO `product_galleries` VALUES (19, 3, 'https://docs.google.com/uc?id=1_ENyxMLXakiR0MkLVa2jYoE56CaWzSan', 'https://docs.google.com/uc?id=1B6YA0uqvMxyxxZfe0LlmLQHcuExjvVEe', '2021-11-25 14:23:01', '2021-11-25 14:23:01');
INSERT INTO `product_galleries` VALUES (20, 3, 'https://docs.google.com/uc?id=17JO7tSe35zYOn6aBkr4fzAxbe6UDltIi', 'https://docs.google.com/uc?id=1EzGfHbJqgsfwSRxs2AIrDDHTswCXhlq4', '2021-11-25 14:23:14', '2021-11-25 14:23:14');
INSERT INTO `product_galleries` VALUES (21, 3, 'https://docs.google.com/uc?id=1zQWPRlsur76iYE2pSVeLouLsoVvx7v3r', 'https://docs.google.com/uc?id=18p9Ls8v4u_aZ702g_yxT2K14lRBHs9f1', '2021-11-25 14:23:28', '2021-11-25 14:23:28');
INSERT INTO `product_galleries` VALUES (22, 6, 'https://docs.google.com/uc?id=1NOcNb4ojZ8K-r0Mmgb_IWs0nuCocODin', 'https://docs.google.com/uc?id=16hfDhQeIcyenGxp8ueJSMZGcqamcgaJW', '2021-11-25 14:43:56', '2021-11-25 14:43:56');
INSERT INTO `product_galleries` VALUES (23, 6, 'https://docs.google.com/uc?id=1ILSgWasHNzT4vBnx6IlNJxPTf1_ob9gt', 'https://docs.google.com/uc?id=1nIHUnnOr0QAcB-UxRYepASZC4soJ4qr6', '2021-11-25 14:44:10', '2021-11-25 14:44:10');
INSERT INTO `product_galleries` VALUES (24, 6, 'https://docs.google.com/uc?id=1sYrZ0Ghb0OW8MRE4Eknc4HbteqJ0lQoK', 'https://docs.google.com/uc?id=1gAoVUE__0oR_kvZaZ0qZj_QmZ4w2UvMt', '2021-11-25 14:44:25', '2021-11-25 14:44:25');
INSERT INTO `product_galleries` VALUES (25, 6, 'https://docs.google.com/uc?id=1ImdGNMHC4fpJ8NBm-R9lYNGszxL_UZTh', 'https://docs.google.com/uc?id=16kiOZe9pHnpaPF7zbnA3dUUtCAZCTaS7', '2021-11-25 14:44:39', '2021-11-25 14:44:39');
INSERT INTO `product_galleries` VALUES (26, 6, 'https://docs.google.com/uc?id=1kExLiQnC7fRlSOmbK8P4ssACczgJB4l-', 'https://docs.google.com/uc?id=1dJ36fiYgzVkcpSE4z7mE-5hiHG5DoT8X', '2021-11-25 14:44:52', '2021-11-25 14:44:52');
INSERT INTO `product_galleries` VALUES (27, 10, 'https://docs.google.com/uc?id=19mCAR6OuZikJjWJQShUARdBmrxQDczoJ', 'https://docs.google.com/uc?id=1peI08sIGGJ6itwiIPIiT2jEXr2uciFp2', '2021-11-25 15:01:13', '2021-11-25 15:01:13');
INSERT INTO `product_galleries` VALUES (28, 19, 'https://docs.google.com/uc?id=1M1pjT_QST6zlu66UYyY4tXFGnR9D7g7E', 'https://docs.google.com/uc?id=1XBXUeO7n8CZ0rXjAroCpHetS0tHV-zqM', '2021-11-25 15:19:17', '2021-11-25 15:19:17');
INSERT INTO `product_galleries` VALUES (29, 19, 'https://docs.google.com/uc?id=1b5O5lexr9UcK5xmPfD6lZ2veDa7w5P-Q', 'https://docs.google.com/uc?id=1EDcLXPDW0T__BCwS0G-iy_Pm3_7XwPzB', '2021-11-25 15:19:31', '2021-11-25 15:19:31');
INSERT INTO `product_galleries` VALUES (30, 19, 'https://docs.google.com/uc?id=1C5UB17ki5FIyIRZs7KoZBwwug2UfYZ96', 'https://docs.google.com/uc?id=1C9rC9cBbgx0IePHPwVkRhjBPU0e5d2k3', '2021-11-25 15:19:45', '2021-11-25 15:19:45');
INSERT INTO `product_galleries` VALUES (31, 19, 'https://docs.google.com/uc?id=1ZUPCbmKHyD80Xd11SiNp-RfDMDyXcSg4', 'https://docs.google.com/uc?id=1Fql6NqSdu6WHF9FNH5OeFNAbl_dOcO8H', '2021-11-25 15:19:59', '2021-11-25 15:19:59');
INSERT INTO `product_galleries` VALUES (32, 19, 'https://docs.google.com/uc?id=10J_bx0ThgLNoEjC_zTxUiSAwcIL2F9Xn', 'https://docs.google.com/uc?id=1RvTKWL9gipBfaaRBwnxOya5zAfetoJMF', '2021-11-25 15:20:13', '2021-11-25 15:20:13');
INSERT INTO `product_galleries` VALUES (33, 19, 'https://docs.google.com/uc?id=1MqGRFwS_TryXxj2Bv463dwNKbY7XrbpY', 'https://docs.google.com/uc?id=1cam-EOOrxuCfd702vfgBXBhIS-1iY4XW', '2021-11-25 15:20:27', '2021-11-25 15:20:27');
INSERT INTO `product_galleries` VALUES (34, 22, 'https://docs.google.com/uc?id=1IMakWReezodlrf4DBLFte6yrpnOtZD1y', 'https://docs.google.com/uc?id=1hI3LIxpUxIchyt0nAsTmxJVolo4G0bSt', '2021-11-25 15:29:23', '2021-11-25 15:29:23');
INSERT INTO `product_galleries` VALUES (35, 22, 'https://docs.google.com/uc?id=1vP6s-hxWyLoUpgU83ProanlPVemS8Rgy', 'https://docs.google.com/uc?id=1ohBJNxNQ8qVO72oRjcp0rlkdaAPDsLu9', '2021-11-25 15:29:37', '2021-11-25 15:29:37');
INSERT INTO `product_galleries` VALUES (36, 22, 'https://docs.google.com/uc?id=14mflsNs8XZoHb0Raa-GsxcHdNpEez74s', 'https://docs.google.com/uc?id=1SN9vlbOHkSLIjU6FhbPpw3wGPYJxaf7_', '2021-11-25 15:29:51', '2021-11-25 15:29:51');
INSERT INTO `product_galleries` VALUES (37, 22, 'https://docs.google.com/uc?id=1Vvy9-CbXMeEn-n4cFe39fFnMTMXFop36', 'https://docs.google.com/uc?id=1XKcEXWkmUp25_4u2xuUIfWK7JYI0WMw_', '2021-11-25 15:30:05', '2021-11-25 15:30:05');
INSERT INTO `product_galleries` VALUES (38, 22, 'https://docs.google.com/uc?id=1N0tNdYfCmhLV-fBMXnbShwFBUFm8-L-b', 'https://docs.google.com/uc?id=1lR8pDvQtexE8jyS477eZX2ipAs8PAJjg', '2021-11-25 15:30:19', '2021-11-25 15:30:19');
INSERT INTO `product_galleries` VALUES (39, 22, 'https://docs.google.com/uc?id=1uR0UJDfuRLfpdRKXK3cThicJoqPzBqAo', 'https://docs.google.com/uc?id=1Tw17JwMqCJapjFI3JImc7_UHxs7CChzH', '2021-11-25 15:30:33', '2021-11-25 15:30:33');
INSERT INTO `product_galleries` VALUES (40, 15, 'https://docs.google.com/uc?id=1j9EiSZqtQw0eARWIP-MRUNgiLrWR0_Z3', 'https://docs.google.com/uc?id=1GiqELv3XovNTK2Mr0lZe3q95B9IvFxjy', '2021-11-25 15:32:02', '2021-11-25 15:32:02');
INSERT INTO `product_galleries` VALUES (41, 15, 'https://docs.google.com/uc?id=16yGa90oXPcOH4e7bVzpKKSYdHCFHRhtz', 'https://docs.google.com/uc?id=15hXtG9jOlnyh1wPVVNEskPHqmiHZ2WN5', '2021-11-25 15:32:16', '2021-11-25 15:32:16');
INSERT INTO `product_galleries` VALUES (42, 15, 'https://docs.google.com/uc?id=1ThQWo9QLEWF2Jlyf8oo_SKBaAUOn5RQJ', 'https://docs.google.com/uc?id=1BSYzksb_HZW7YEawm4lKJKh7uxHv7CrQ', '2021-11-25 15:32:30', '2021-11-25 15:32:30');
INSERT INTO `product_galleries` VALUES (43, 15, 'https://docs.google.com/uc?id=11aDBZV-GBiU9OVxfzePPRsUjt0lxk1js', 'https://docs.google.com/uc?id=1iZh4jqfDNNqg5onBjqKjN_P5Cu3FwzZ5', '2021-11-25 15:32:48', '2021-11-25 15:32:48');
INSERT INTO `product_galleries` VALUES (44, 15, 'https://docs.google.com/uc?id=1y2J6maKRX66K-hIgRh63uW4FkqGZp9rj', 'https://docs.google.com/uc?id=1Sv31OF48PwRtJMuMF_YZBNqU4K-Cxh2q', '2021-11-25 15:33:02', '2021-11-25 15:33:02');
INSERT INTO `product_galleries` VALUES (45, 25, 'https://docs.google.com/uc?id=1bDYp8emLi8VsJ3o96C75onKwXTBUEqDk', 'https://docs.google.com/uc?id=1D_Ul9H9ttT29tFU3et5ptL3XHXbNEhdt', '2021-11-25 15:39:45', '2021-11-25 15:39:45');
INSERT INTO `product_galleries` VALUES (46, 25, 'https://docs.google.com/uc?id=1wcnuDplpdhPMBIkvv6EeQj2YH6uGGJab', 'https://docs.google.com/uc?id=1TM8rJBVM0AJMtnVeGk0UEOmqj6iXSahM', '2021-11-25 15:39:58', '2021-11-25 15:39:58');
INSERT INTO `product_galleries` VALUES (47, 25, 'https://docs.google.com/uc?id=1j9rdoode8p2--zEkP97yUr8i098o7G-g', 'https://docs.google.com/uc?id=1CKqPaNQHGoL14yFQ5YU1Vx7eZZ0aymxm', '2021-11-25 15:40:14', '2021-11-25 15:40:14');
INSERT INTO `product_galleries` VALUES (48, 25, 'https://docs.google.com/uc?id=1zaDaVA-7aiEFftQCk1YF6j-f8RzT41lF', 'https://docs.google.com/uc?id=1YyZCVbXHXrs5NhE2-AVvw9RssCureYlm', '2021-11-25 15:40:28', '2021-11-25 15:40:28');
INSERT INTO `product_galleries` VALUES (49, 25, 'https://docs.google.com/uc?id=1yitTHP2sfQJ9SFD5k9eNKm9NWwgRhO66', 'https://docs.google.com/uc?id=1yspXgFw7HvazfhdNwQI35dT9RLWQvFF2', '2021-11-25 15:40:42', '2021-11-25 15:40:42');
INSERT INTO `product_galleries` VALUES (50, 25, 'https://docs.google.com/uc?id=16rEeyOfhQY_cNZUtROP_NPr_mJSUhz9r', 'https://docs.google.com/uc?id=1qPGkWHv4SA3XYWT6h8IV7CIEVZMhphL7', '2021-11-25 15:41:00', '2021-11-25 15:41:00');
INSERT INTO `product_galleries` VALUES (51, 28, 'https://docs.google.com/uc?id=1ctAdmQT7Sb6-CR4_iHDgTBPFitfFE-jy', 'https://docs.google.com/uc?id=1AlSX1eSq2Sk9sgOZhmk8F1Uxvy4UKuNC', '2021-11-25 16:02:42', '2021-11-25 16:02:42');
INSERT INTO `product_galleries` VALUES (52, 28, 'https://docs.google.com/uc?id=1ny91ODIvWWlzWqIfEyDR4rHIkkPXZeL9', 'https://docs.google.com/uc?id=1yMo1396sTqwNhLdsJYrcPgh9n2OHFpuT', '2021-11-25 16:02:57', '2021-11-25 16:02:57');
INSERT INTO `product_galleries` VALUES (53, 28, 'https://docs.google.com/uc?id=1No1k1oJ--rIxmbZd2lWqdl-OfKVneyEx', 'https://docs.google.com/uc?id=1xf19gAe-sFRNvWGuxRsKn-lYA5TYgbwY', '2021-11-25 16:03:12', '2021-11-25 16:03:12');
INSERT INTO `product_galleries` VALUES (54, 28, 'https://docs.google.com/uc?id=12ZSS297oqrU2pyWOl21d4pT1kuVBxTdd', 'https://docs.google.com/uc?id=1hmR9UpLaomF90-t7mGnp2JnMgCV37I26', '2021-11-25 16:03:33', '2021-11-25 16:03:33');
INSERT INTO `product_galleries` VALUES (55, 28, 'https://docs.google.com/uc?id=1ofN5R_x_F_Bj-OXKLC-rTVa69p3uBSWS', 'https://docs.google.com/uc?id=1uz9Z7m6KGc0PJbh8V8jIHA5kTAuXldEC', '2021-11-25 16:03:51', '2021-11-25 16:03:51');
INSERT INTO `product_galleries` VALUES (56, 12, 'https://docs.google.com/uc?id=1vC5NTzv5kSEljK6dknLVRL5IDhHgTklU', 'https://docs.google.com/uc?id=1Gg8fSdhEWN14K97FcKBWhneHaEQ1h3DM', '2021-11-25 17:27:30', '2021-11-25 17:27:30');
INSERT INTO `product_galleries` VALUES (57, 12, 'https://docs.google.com/uc?id=17NHKAQmmd4fAOTbJrd8ylHQlP77MOjy_', 'https://docs.google.com/uc?id=1fmcSf6EXOP52kZtsyGOQkC-eOqS3jP1h', '2021-11-25 17:27:45', '2021-11-25 17:27:45');
INSERT INTO `product_galleries` VALUES (58, 12, 'https://docs.google.com/uc?id=1CKHVnPGEKhU5_BeQ9p_6DcYDhKyes5mI', 'https://docs.google.com/uc?id=1PyqJQDUZU2PA5fdgwpTkuYC8OmORuq9q', '2021-11-25 17:28:00', '2021-11-25 17:28:00');
INSERT INTO `product_galleries` VALUES (59, 11, 'https://docs.google.com/uc?id=1NFoXxTkupxzJr9-xjp7_0LMyx_zlFb67', 'https://docs.google.com/uc?id=16glsaNimXNvh0lQhBIbcoEOyWjLwRHA5', '2021-11-25 17:28:07', '2021-11-25 17:28:07');
INSERT INTO `product_galleries` VALUES (60, 12, 'https://docs.google.com/uc?id=1mGN2eojEKVk_2vjMgu6YUwIFJQpHgoDd', 'https://docs.google.com/uc?id=1l8p7Iv1y7pmjrz_PeV9o14WXSugCHDL9', '2021-11-25 17:28:17', '2021-11-25 17:28:17');
INSERT INTO `product_galleries` VALUES (61, 11, 'https://docs.google.com/uc?id=1yMLSY2ZEnuVSEPSswDMIr5pA8mah_luu', 'https://docs.google.com/uc?id=1eNjJGO2LTKQxGDnl5ZVfsrJyjhk42M7U', '2021-11-25 17:28:25', '2021-11-25 17:28:25');
INSERT INTO `product_galleries` VALUES (62, 12, 'https://docs.google.com/uc?id=1a9_uTKT05_89qDROb6zaA16fpB4Hgggc', 'https://docs.google.com/uc?id=1-HhIfnu7zvp4DX8BVFsm_KQI_CyAgKVg', '2021-11-25 17:28:33', '2021-11-25 17:28:33');
INSERT INTO `product_galleries` VALUES (63, 11, 'https://docs.google.com/uc?id=17-3yAc1E1WC4RynuhEp5cAWgO6U-FSXA', 'https://docs.google.com/uc?id=1A1oABoodt-CNrlyzfX-fYG-uPsJ8J5jh', '2021-11-25 17:28:43', '2021-11-25 17:28:43');
INSERT INTO `product_galleries` VALUES (64, 12, 'https://docs.google.com/uc?id=1ComdM-TdO21M647KPzb8w3bXcSzfFjoZ', 'https://docs.google.com/uc?id=1lC41RiXLaSDAAHyRn7oC7PM8U4AL7njP', '2021-11-25 17:28:48', '2021-11-25 17:28:48');
INSERT INTO `product_galleries` VALUES (65, 11, 'https://docs.google.com/uc?id=1TM0c2boC6S-e65xiy8bSzuY7lMnrSjWX', 'https://docs.google.com/uc?id=1vYVHtEqt--y5qYk7gefwzTWtpEDZpB9A', '2021-11-25 17:29:00', '2021-11-25 17:29:00');
INSERT INTO `product_galleries` VALUES (66, 11, 'https://docs.google.com/uc?id=127kbZbwvyRoRDyHwg51V0DPwp9f463iN', 'https://docs.google.com/uc?id=1GTl_U388MmiQesBaWyMcwtRapIRukH5A', '2021-11-25 17:29:16', '2021-11-25 17:29:16');
INSERT INTO `product_galleries` VALUES (67, 11, 'https://docs.google.com/uc?id=190JILiJ-8MEPsQr5Px9W2Lw_FGnbuwTQ', 'https://docs.google.com/uc?id=1urwY1GAe1-rFbKABoiCeJ3x74P-q1dnZ', '2021-11-25 17:29:33', '2021-11-25 17:29:33');
INSERT INTO `product_galleries` VALUES (68, 16, 'https://docs.google.com/uc?id=1b_5Azww9BVJhDTlLZ_QkIDG3ZOxnjxGm', 'https://docs.google.com/uc?id=1quwb8-0OXlvVUdcoLpq3z__S_F4oDBNG', '2021-11-25 17:31:54', '2021-11-25 17:31:54');
INSERT INTO `product_galleries` VALUES (69, 16, 'https://docs.google.com/uc?id=1QIE32PVgPb_6O1Jvb8y7MXO5sjj4lcP8', 'https://docs.google.com/uc?id=1Slq6yPDqfuuvlMbEb4wE9YemS_5cXM-9', '2021-11-25 17:32:14', '2021-11-25 17:32:14');
INSERT INTO `product_galleries` VALUES (72, 16, 'https://docs.google.com/uc?id=1XOmeedY60LpDp5kmNKDDs_dDtS_xvikR', 'https://docs.google.com/uc?id=1w-vuA_NnuknhM1MY4THGc5c3Gu197-gT', '2021-11-25 17:32:34', '2021-11-25 17:32:34');
INSERT INTO `product_galleries` VALUES (73, 17, 'https://docs.google.com/uc?id=1N8kBbyCQYKlzPbwymREVh4f4B3yZCmvn', 'https://docs.google.com/uc?id=1wrbqqtT7BEpTdH4wekRfAZhokRGjXdzW', '2021-11-25 17:32:35', '2021-11-25 17:32:35');
INSERT INTO `product_galleries` VALUES (74, 16, 'https://docs.google.com/uc?id=1qymAOm-kxQakYe0XuGFxyuMLKc7WBb7d', 'https://docs.google.com/uc?id=1YWR-HHabMhFqFnx9RC_JB1tA5LlpW06G', '2021-11-25 17:32:48', '2021-11-25 17:32:48');
INSERT INTO `product_galleries` VALUES (76, 17, 'https://docs.google.com/uc?id=1JO0fl81T9cafwhp2EMKUQDeVLb23_CTQ', 'https://docs.google.com/uc?id=1wd1Dj9cYsa7DfN3CsFifidKjjkLwe255', '2021-11-25 17:32:51', '2021-11-25 17:32:51');
INSERT INTO `product_galleries` VALUES (77, 16, 'https://docs.google.com/uc?id=13R7CGA_Wt8tdDQR3X99fA7OE7sex3bAI', 'https://docs.google.com/uc?id=1g8UdhjL7-hDO5qVWQfS7x-lX1sENM4eo', '2021-11-25 17:33:03', '2021-11-25 17:33:03');
INSERT INTO `product_galleries` VALUES (79, 17, 'https://docs.google.com/uc?id=1mWanTBjjc50PV5S4vxlAVBi0_HZk0KSR', 'https://docs.google.com/uc?id=1nVDEUHANOpTi-85Tc1xZ1HsYjrICtXOe', '2021-11-25 17:33:06', '2021-11-25 17:33:06');
INSERT INTO `product_galleries` VALUES (81, 16, 'https://docs.google.com/uc?id=1_HrGWbjo52aYJ4GkpbKmrpbT7iWzku1N', 'https://docs.google.com/uc?id=1vIdfFJ08wOrED5jLyUXNZ0kU5i9dq6Lz', '2021-11-25 17:33:21', '2021-11-25 17:33:21');
INSERT INTO `product_galleries` VALUES (82, 17, 'https://docs.google.com/uc?id=1Cwbm04PZ0DzqXxhc3-oVw2m55YgbDu1E', 'https://docs.google.com/uc?id=1EOICOjYZ5pFmLQgrvbCmLmqzeMmoWCNa', '2021-11-25 17:33:22', '2021-11-25 17:33:22');
INSERT INTO `product_galleries` VALUES (83, 17, 'https://docs.google.com/uc?id=1ISNT35V0hErM4VUhM7I5KBmtdxxLeKZF', 'https://docs.google.com/uc?id=14zP5mcod63df9R793lmjuJReVXeg_L8H', '2021-11-25 17:33:38', '2021-11-25 17:33:38');
INSERT INTO `product_galleries` VALUES (84, 17, 'https://docs.google.com/uc?id=1eYC2YMk5bD-TK6cnATtkqYoEbrK41rSW', 'https://docs.google.com/uc?id=1W1gT5MjhnEleqizyjzrE49ZxHpsY4Ca9', '2021-11-25 17:33:52', '2021-11-25 17:33:52');
INSERT INTO `product_galleries` VALUES (85, 14, 'https://docs.google.com/uc?id=1ikC49nIRggkLO7zk9pbljS3DKhXYmHne', 'https://docs.google.com/uc?id=1AZpwY5uM5VOY8phYdd0kOguBo-o46f1B', '2021-11-25 17:35:38', '2021-11-25 17:35:38');
INSERT INTO `product_galleries` VALUES (86, 14, 'https://docs.google.com/uc?id=1f-RAseBy_GyRHZ5hJ0hhbSIAQjP2fpTo', 'https://docs.google.com/uc?id=1EFfGUjmQz5i8n7gW-hgOVhQdLlTosc5_', '2021-11-25 17:35:53', '2021-11-25 17:35:53');
INSERT INTO `product_galleries` VALUES (87, 14, 'https://docs.google.com/uc?id=1JRFUo3jFkuXMmNLABKwNbP5q5RyQj87X', 'https://docs.google.com/uc?id=1QzFLKygyGirDttxbaoFZ0qcIzGMqRf6k', '2021-11-25 17:36:07', '2021-11-25 17:36:07');
INSERT INTO `product_galleries` VALUES (88, 14, 'https://docs.google.com/uc?id=1PsXoaVwgkyjkW91IIs4WH_oSXSoVai2_', 'https://docs.google.com/uc?id=14HkCIgP3QEij7hwNBPBOtWmXcYxNhWUH', '2021-11-25 17:36:22', '2021-11-25 17:36:22');
INSERT INTO `product_galleries` VALUES (89, 14, 'https://docs.google.com/uc?id=1iZAJ9u5N4EWf9fn2hRVfRVtysAUr4ias', 'https://docs.google.com/uc?id=1rPBSaj1Xcr-_z-g9z6iqEab5Vv40-Fby', '2021-11-25 17:36:37', '2021-11-25 17:36:37');
INSERT INTO `product_galleries` VALUES (90, 10, 'https://docs.google.com/uc?id=1e0flklQOsc_VA1LFwSPC91n33ZV82s3K', 'https://docs.google.com/uc?id=1GTCS2QLcUDkEUrF8HmAcWlL7Wv71YOHL', '2021-11-25 17:59:44', '2021-11-25 17:59:44');
INSERT INTO `product_galleries` VALUES (91, 10, 'https://docs.google.com/uc?id=1oOm28HVGfas6gwhSHCqPSv8eQBUGYFvq', 'https://docs.google.com/uc?id=1_wRjGwXfuBq2XzON7j0yu9nxo6iJouu3', '2021-11-25 18:05:35', '2021-11-25 18:05:35');
INSERT INTO `product_galleries` VALUES (92, 10, 'https://docs.google.com/uc?id=1pRa-L2pr9Q0PfLGkQBLwl4R1-oMqPB1S', 'https://docs.google.com/uc?id=1vUQQgzzQXWIKntnVFcj1gLysTIzdWtUh', '2021-11-25 18:05:50', '2021-11-25 18:05:50');
INSERT INTO `product_galleries` VALUES (93, 10, 'https://docs.google.com/uc?id=1Uk0Lij-vQXj32IpIjEu832LUVl7ewslj', 'https://docs.google.com/uc?id=1PvtgTgH62eSgxJyw8Q0_0-PiTbX86JGl', '2021-11-25 18:06:05', '2021-11-25 18:06:05');
INSERT INTO `product_galleries` VALUES (94, 10, 'https://docs.google.com/uc?id=1QHLaHJl5bsvx-Pwy6-48C5EnOjfJ0o-M', 'https://docs.google.com/uc?id=1-HJSOMOB3L2pL7dbdKdJ4h7gsMdBfuBi', '2021-11-25 18:06:42', '2021-11-25 18:06:42');
INSERT INTO `product_galleries` VALUES (102, 34, 'https://docs.google.com/uc?id=1RAP9P1lhE-9Ph3BGMJKWIvTPS7stst3B', 'https://docs.google.com/uc?id=1jRtchrrqWmpeXTGx5PceLvyN7wHBUkBN', '2021-11-25 18:24:05', '2021-11-25 18:24:05');
INSERT INTO `product_galleries` VALUES (103, 34, 'https://docs.google.com/uc?id=13iunIkrcCUAYxrZwtjiv2sMWRFHG1zdB', 'https://docs.google.com/uc?id=1BfstUaaPnVjX8HUttk5E_HknFEpqpV90', '2021-11-25 18:24:21', '2021-11-25 18:24:21');
INSERT INTO `product_galleries` VALUES (104, 34, 'https://docs.google.com/uc?id=14nwuTT3iIjroWOCQSdLEod4YFkQM-gz6', 'https://docs.google.com/uc?id=15obvux6nk4MMwAxJfffb8muosXBkiw4G', '2021-11-25 18:24:40', '2021-11-25 18:24:40');
INSERT INTO `product_galleries` VALUES (105, 34, 'https://docs.google.com/uc?id=1791Jiub2R22PC0POypZTfD5QLtNgJIhO', 'https://docs.google.com/uc?id=1yLIPIbDGTlm372RqxJPi3GLhv5PSY_WY', '2021-11-25 18:24:56', '2021-11-25 18:24:56');
INSERT INTO `product_galleries` VALUES (152, 18, 'https://docs.google.com/uc?id=1t5XDAdaMUpudFvZUJ333jhFHEGh4Nq99', 'https://docs.google.com/uc?id=1Ino8A__eJvk0rBg8viTfVqcr6rTbgwQb', '2021-11-26 13:53:32', '2021-11-26 13:53:32');
INSERT INTO `product_galleries` VALUES (153, 18, 'https://docs.google.com/uc?id=12u8fzKzyibrmYpt8gwi83zsntkkN452W', 'https://docs.google.com/uc?id=1g1-1tbVVSX9hzYGy0BprjevNreVFsjcF', '2021-11-26 13:53:50', '2021-11-26 13:53:50');
INSERT INTO `product_galleries` VALUES (154, 18, 'https://docs.google.com/uc?id=1LcP-udIs1DWNB8kmz5hbiEXfb2BVvGue', 'https://docs.google.com/uc?id=1ZZN50Ymtt7ETvzlOqRkNlQgkZM5os4vo', '2021-11-26 13:54:08', '2021-11-26 13:54:08');
INSERT INTO `product_galleries` VALUES (155, 18, 'https://docs.google.com/uc?id=1tOK6dgdvmlVRdIkfHofKB0_eQ66vF_Ky', 'https://docs.google.com/uc?id=1hq8t3jHzIRidQsmBaBK6zb_r2hMwbj20', '2021-11-26 13:54:26', '2021-11-26 13:54:26');
INSERT INTO `product_galleries` VALUES (156, 18, 'https://docs.google.com/uc?id=1cOtKo8S6Q5HwIbwc0KYwjvCvehEHqLSH', 'https://docs.google.com/uc?id=1GBIutemJ--MgLxPdXa4lQ1bwr-iehYAO', '2021-11-26 13:54:47', '2021-11-26 13:54:47');
INSERT INTO `product_galleries` VALUES (158, 21, 'https://docs.google.com/uc?id=1A5XbYNmad0oZ5sdC2mqUPuxmCsHCM90T', 'https://docs.google.com/uc?id=1HIaR7kvS-hOT1iozhHuG8IrC5XenRm4g', '2021-11-26 13:59:46', '2021-11-26 13:59:46');
INSERT INTO `product_galleries` VALUES (159, 21, 'https://docs.google.com/uc?id=1iEcfub8idTPG7BFeRZIpilaxq7K4xMiU', 'https://docs.google.com/uc?id=1mFDurGFR1gQnpcwt3GSejClWwQMk1NEp', '2021-11-26 14:00:05', '2021-11-26 14:00:05');
INSERT INTO `product_galleries` VALUES (160, 21, 'https://docs.google.com/uc?id=1OFRoZFZUnOlsPM4URdLojex0YNTkgiqS', 'https://docs.google.com/uc?id=1l_3EMEKAyYlaOemzhQUpHPSzoOtZbQqt', '2021-11-26 14:00:24', '2021-11-26 14:00:24');
INSERT INTO `product_galleries` VALUES (161, 21, 'https://docs.google.com/uc?id=1KupcjQ9HMh1iB20148E5OHF2KgVuAVFc', 'https://docs.google.com/uc?id=1EsZaNPkO7VXgpKu15WyorJXDR_-sByN1', '2021-11-26 14:00:45', '2021-11-26 14:00:45');
INSERT INTO `product_galleries` VALUES (162, 21, 'https://docs.google.com/uc?id=1P6CC_GagN1DkxJbi7EHSELDlOXma3gam', 'https://docs.google.com/uc?id=1qLeQE2Y_7UY33-EFpShsRAMFDnOSQZT8', '2021-11-26 14:01:05', '2021-11-26 14:01:05');
INSERT INTO `product_galleries` VALUES (163, 21, 'https://docs.google.com/uc?id=1niXUbXN6--hI4UFVbgIYqWZfLsz8UwdB', 'https://docs.google.com/uc?id=1Do2VVdJJVx7zCmfGN0aHg00NFbY50WAL', '2021-11-26 14:02:30', '2021-11-26 14:02:30');
INSERT INTO `product_galleries` VALUES (164, 18, 'https://docs.google.com/uc?id=1xJEHof62Buuuj3nJNwiQQZExZdBM1hs8', 'https://docs.google.com/uc?id=1TsFRce913QRi3Knzpp7aIujBSL1lPWtn', '2021-11-26 16:35:46', '2021-11-26 16:35:46');
INSERT INTO `product_galleries` VALUES (165, 63, 'https://docs.google.com/uc?id=1E13tOlgsA3MUzwc9cGtzkupRfuziVvr_', 'https://asm.poly.edu.vn/images/2021-11-27-61a19e3ba8b1d.jpg', '2021-11-27 09:56:07', '2021-11-27 09:56:07');
INSERT INTO `product_galleries` VALUES (166, 63, 'https://docs.google.com/uc?id=1YeKImadCAlYYZQkb0IuPHu6YK7MLJhTy', 'https://asm.poly.edu.vn/images/2021-11-27-61a19e4737b11.jpg', '2021-11-27 09:56:15', '2021-11-27 09:56:15');
INSERT INTO `product_galleries` VALUES (167, 63, 'https://docs.google.com/uc?id=1vipWSDUL1tTPWxoi576-nbBiJtkgKOry', 'https://asm.poly.edu.vn/images/2021-11-27-61a19e4fe65d6.jpg', '2021-11-27 09:56:24', '2021-11-27 09:56:24');
INSERT INTO `product_galleries` VALUES (168, 63, 'https://docs.google.com/uc?id=19k9sVOuHwcP323v_IEDPHqYMx2u2A-Ar', 'https://asm.poly.edu.vn/images/2021-11-27-61a19e58bd212.jpg', '2021-11-27 09:56:33', '2021-11-27 09:56:33');
INSERT INTO `product_galleries` VALUES (169, 63, 'https://docs.google.com/uc?id=1cRUeI13k1n3pR6Gsrz9fR8R2olcoff9E', 'https://asm.poly.edu.vn/images/2021-11-27-61a19e615bf25.jpg', '2021-11-27 09:56:42', '2021-11-27 09:56:42');
INSERT INTO `product_galleries` VALUES (170, 64, 'https://docs.google.com/uc?id=1BCMfpfySuuzLGPCKSAa2D_viG3sS-8zv', 'https://asm.poly.edu.vn/images/2021-11-27-61a1a8fac4682.jpg', '2021-11-27 10:41:56', '2021-11-27 10:41:56');
INSERT INTO `product_galleries` VALUES (171, 64, 'https://docs.google.com/uc?id=1MHR_n3QcmA_5tvUBtFiEGLloCV0bBwM6', 'https://asm.poly.edu.vn/images/2021-11-27-61a1a90439671.jpg', '2021-11-27 10:42:04', '2021-11-27 10:42:04');
INSERT INTO `product_galleries` VALUES (172, 64, 'https://docs.google.com/uc?id=1vdR3zLbg8ObNKaJ_8hREAsL_0Yu2ErT3', 'https://asm.poly.edu.vn/images/2021-11-27-61a1a90c957d2.jpg', '2021-11-27 10:42:13', '2021-11-27 10:42:13');
INSERT INTO `product_galleries` VALUES (173, 64, 'https://docs.google.com/uc?id=1x9KD_ktju-A5Vcop1TGC2eGf5zGunt7V', 'https://asm.poly.edu.vn/images/2021-11-27-61a1a91534bdc.jpg', '2021-11-27 10:42:21', '2021-11-27 10:42:21');
INSERT INTO `product_galleries` VALUES (175, 64, 'https://docs.google.com/uc?id=1E_JtSuyi1siIAEE34NHlic4BGnfT1nSG', 'https://asm.poly.edu.vn/images/2021-11-27-61a1a9263ef49.jpg', '2021-11-27 10:42:38', '2021-11-27 10:42:38');
INSERT INTO `product_galleries` VALUES (176, 67, 'https://docs.google.com/uc?id=1diwhVKVvRhk9JerBcTF0yjhWk8fEmUfF', 'https://asm.poly.edu.vn/images/2021-11-27-61a2075dd5b22.jpg', '2021-11-27 17:24:39', '2021-11-27 17:24:39');
INSERT INTO `product_galleries` VALUES (181, 71, 'https://docs.google.com/uc?id=1sXzgaUQ-py8E-kQx3oddr97ItxS0aS3G', 'https://asm.poly.edu.vn/images/2021-11-27-61a252f2c9f3f.jpg', '2021-11-27 22:47:08', '2021-11-27 22:47:08');
INSERT INTO `product_galleries` VALUES (182, 70, 'https://docs.google.com/uc?id=1hlq0wopVS58BVzFZ--zXat82_Kb48Qmu', 'https://asm.poly.edu.vn/images/2021-11-27-61a258588e5d7.jpg', '2021-11-27 23:10:10', '2021-11-27 23:10:10');
INSERT INTO `product_galleries` VALUES (195, 38, 'https://docs.google.com/uc?id=1aMPmTh7BtuyrKQ4Ut8L6AbpYmbRvjW3g', 'https://asm.poly.edu.vn/images/2021-11-27-61a2606428cf1.jpg', '2021-11-27 23:44:29', '2021-11-27 23:44:29');
INSERT INTO `product_galleries` VALUES (197, 37, 'https://docs.google.com/uc?id=16ZmL9zMqk3aDICYzp5G2wZxFK31ygiuo', 'https://asm.poly.edu.vn/images/2021-11-28-61a2f9b8616d5.jpg', '2021-11-28 10:38:42', '2021-11-28 10:38:42');
INSERT INTO `product_galleries` VALUES (198, 40, 'https://docs.google.com/uc?id=1jdT5F6oENBDGgA4AWxi6Eq1Cn7m_VaDI', 'https://asm.poly.edu.vn/images/2021-11-28-61a2facb36aa6.jpg', '2021-11-28 10:43:17', '2021-11-28 10:43:17');
INSERT INTO `product_galleries` VALUES (201, 74, 'https://docs.google.com/uc?id=1aeY_XhzX8o-avuZJxZcq0Vzh6B1SjWEJ', 'https://asm.poly.edu.vn/images/2021-12-03-61a9f7d41a102.jpg', '2021-12-03 17:56:24', '2021-12-03 17:56:24');
INSERT INTO `product_galleries` VALUES (202, 74, 'https://docs.google.com/uc?id=1izsKIR7Yw8gffQLPheSITvReY0OFjgi7', 'https://asm.poly.edu.vn/images/2021-12-03-61a9f7d8cdb97.jpg', '2021-12-03 17:56:27', '2021-12-03 17:56:27');
INSERT INTO `product_galleries` VALUES (203, 74, 'https://docs.google.com/uc?id=1ntwZRrei50cVk6jWxfyRb7kh1gCCnNyO', 'https://asm.poly.edu.vn/images/2021-12-03-61a9f7db63249.jpg', '2021-12-03 17:56:30', '2021-12-03 17:56:30');
INSERT INTO `product_galleries` VALUES (204, 74, 'https://docs.google.com/uc?id=182VCx-GGYBL91LfH393Uyc_akEq_L--Z', 'https://asm.poly.edu.vn/images/2021-12-03-61a9f7de7e058.jpg', '2021-12-03 17:56:33', '2021-12-03 17:56:33');
INSERT INTO `product_galleries` VALUES (206, 77, 'https://docs.google.com/uc?id=1ABiL84aOa4_CugtDLHbdvyuhOo5HBEPe', 'https://asm.poly.edu.vn/images/2021-12-06-61ad8ceb31858.jpg', '2021-12-06 11:09:18', '2021-12-06 11:09:18');
INSERT INTO `product_galleries` VALUES (207, 76, 'https://docs.google.com/uc?id=1RlejWWi8M34fYkLwlX_4E39yww-pSElb', 'https://asm.poly.edu.vn/images/2021-12-07-61aec24ddee81.jpg', '2021-12-07 09:09:21', '2021-12-07 09:09:21');
INSERT INTO `product_galleries` VALUES (208, 76, 'https://docs.google.com/uc?id=1_dPB0dz2NoRQznOt3Nsne_IGCjj3Wxsh', 'https://asm.poly.edu.vn/images/2021-12-07-61aec251b48e3.jpg', '2021-12-07 09:09:24', '2021-12-07 09:09:24');
INSERT INTO `product_galleries` VALUES (209, 76, 'https://docs.google.com/uc?id=1BY86ksVXiIjOwCaOOW2T5vMwGpcDrN5x', 'https://asm.poly.edu.vn/images/2021-12-07-61aec254ee78a.jpg', '2021-12-07 09:09:28', '2021-12-07 09:09:28');
INSERT INTO `product_galleries` VALUES (210, 76, 'https://docs.google.com/uc?id=1SBY4USfqn0PxbsmX4czL6Uw71T9kcXDy', 'https://asm.poly.edu.vn/images/2021-12-07-61aec2580f04b.jpg', '2021-12-07 09:09:31', '2021-12-07 09:09:31');
INSERT INTO `product_galleries` VALUES (211, 76, 'https://docs.google.com/uc?id=1WhAOAJCQEDAwkgyuZDSnlSsK5IfNYvb8', 'https://asm.poly.edu.vn/images/small-2021-12-07-61aec25bca514.jpg', '2021-12-07 09:09:34', '2021-12-07 09:09:34');
INSERT INTO `product_galleries` VALUES (212, 75, 'https://docs.google.com/uc?id=1bnGnJ3gwbFz1v1fyjcoinX_c_xjuoBww', 'https://asm.poly.edu.vn/images/2021-12-07-61aec86946979.jpg', '2021-12-07 09:35:24', '2021-12-07 09:35:24');
INSERT INTO `product_galleries` VALUES (213, 75, 'https://docs.google.com/uc?id=115nmE6CgGho2nHIem9euATeICpP1ZnHc', 'https://asm.poly.edu.vn/images/2021-12-07-61aec86cc2bc5.jpg', '2021-12-07 09:35:28', '2021-12-07 09:35:28');
INSERT INTO `product_galleries` VALUES (214, 75, 'https://docs.google.com/uc?id=1x-FpuExq1NFwoazY5_hxSQOyO-SL_yZ4', 'https://asm.poly.edu.vn/images/2021-12-07-61aec870666a3.jpg', '2021-12-07 09:35:31', '2021-12-07 09:35:31');
INSERT INTO `product_galleries` VALUES (215, 75, 'https://docs.google.com/uc?id=1c0KeS8VxSBqdvdxnpotHBVzI9laIR6jv', 'https://asm.poly.edu.vn/images/2021-12-07-61aec87324565.jpg', '2021-12-07 09:35:34', '2021-12-07 09:35:34');
INSERT INTO `product_galleries` VALUES (216, 75, 'https://docs.google.com/uc?id=15OUypENcu4PXtXuOum2yl31n40Q-SW5Q', 'https://asm.poly.edu.vn/images/2021-12-07-61aec8763aba9.jpg', '2021-12-07 09:35:37', '2021-12-07 09:35:37');
INSERT INTO `product_galleries` VALUES (217, 75, 'https://docs.google.com/uc?id=1Q6d7QbmqvpnL7N7NgOdpRcBXgsmCWx8F', 'https://asm.poly.edu.vn/images/2021-12-07-61aec8794e1c3.jpg', '2021-12-07 09:35:40', '2021-12-07 09:35:40');
INSERT INTO `product_galleries` VALUES (218, 78, 'https://docs.google.com/uc?id=1McPJOYLPcG3Ji54xazh4yduG5cL7Hf4l', 'https://asm.poly.edu.vn/images/2021-12-11-61b46ddca7756.jpg', '2021-12-11 16:22:39', '2021-12-11 16:22:39');
INSERT INTO `product_galleries` VALUES (219, 78, 'https://docs.google.com/uc?id=1zuZHOStr_-4GkTADTC4DAk1nGVVz1Ww0', 'https://asm.poly.edu.vn/images/2021-12-11-61b46ddff2dd6.jpg', '2021-12-11 16:22:43', '2021-12-11 16:22:43');
INSERT INTO `product_galleries` VALUES (220, 78, 'https://docs.google.com/uc?id=1rq0jcPwOS2MF8drFXvVOUwt76nvGpvNm', 'https://asm.poly.edu.vn/images/2021-12-11-61b46de327ab6.jpg', '2021-12-11 16:22:46', '2021-12-11 16:22:46');
INSERT INTO `product_galleries` VALUES (221, 78, 'https://docs.google.com/uc?id=1TqZRG1v6t6N-2qXiRRmNP7CHL17dHRpk', 'https://asm.poly.edu.vn/images/2021-12-11-61b46de64711d.jpg', '2021-12-11 16:22:49', '2021-12-11 16:22:49');
INSERT INTO `product_galleries` VALUES (222, 79, 'https://docs.google.com/uc?id=1UmNbmwPuieYBrR3etx4XqN-DUtvtAFfm', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fbae1bf9.jpg', '2021-12-14 17:19:42', '2021-12-14 17:19:42');
INSERT INTO `product_galleries` VALUES (223, 79, 'https://docs.google.com/uc?id=1a_WqeB7iXOZGJfhGlAr37s_060VjVvrL', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fbe9971a.jpg', '2021-12-14 17:19:45', '2021-12-14 17:19:45');
INSERT INTO `product_galleries` VALUES (224, 79, 'https://docs.google.com/uc?id=1XvQ3FXPMFqWKE5sVUrWyicPyPBc9P3UK', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fc16511f.jpg', '2021-12-14 17:19:48', '2021-12-14 17:19:48');
INSERT INTO `product_galleries` VALUES (225, 79, 'https://docs.google.com/uc?id=1QU0zt9Tu1Xn-aQKnDyDkbdYoxwPwt0Ep', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fc436e36.jpg', '2021-12-14 17:19:51', '2021-12-14 17:19:51');
INSERT INTO `product_galleries` VALUES (226, 79, 'https://docs.google.com/uc?id=1Hmg95CzI06NCjQQTz-NqjQEcAZV70HTd', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fc71d3ec.jpg', '2021-12-14 17:19:54', '2021-12-14 17:19:54');
INSERT INTO `product_galleries` VALUES (227, 79, 'https://docs.google.com/uc?id=1trQIsHowDGtnRZ9DLF62slTbn6PR2XfA', 'https://asm.poly.edu.vn/images/2021-12-14-61b86fca32e03.jpg', '2021-12-14 17:19:57', '2021-12-14 17:19:57');
INSERT INTO `product_galleries` VALUES (245, 82, 'https://docs.google.com/uc?id=18-Xe09hzMCfpKUlj02GVDFW2WZRvv1Fa', 'https://asm.poly.edu.vn/images/small-2021-12-15-61ba0c7d7c47d.jpg', '2021-12-15 22:40:49', '2021-12-15 22:40:49');
INSERT INTO `product_galleries` VALUES (246, 82, 'https://docs.google.com/uc?id=1L4qJlF3Ozr4S50epo2HnBJeeTRNEnzRh', 'https://asm.poly.edu.vn/images/2021-12-15-61ba0c811b1bb.jpg', '2021-12-15 22:40:52', '2021-12-15 22:40:52');
INSERT INTO `product_galleries` VALUES (247, 82, 'https://docs.google.com/uc?id=1JAOuQDUIa4949lV4pwYPaPZd3M5J8HaI', 'https://asm.poly.edu.vn/images/2021-12-15-61ba0c84db8f1.jpg', '2021-12-15 22:40:56', '2021-12-15 22:40:56');
INSERT INTO `product_galleries` VALUES (248, 82, 'https://docs.google.com/uc?id=1V-lMydq4byjAfmkrXcgNl5mvTdkNdIed', 'https://asm.poly.edu.vn/images/2021-12-15-61ba0c88245d8.jpg', '2021-12-15 22:40:59', '2021-12-15 22:40:59');
INSERT INTO `product_galleries` VALUES (249, 82, 'https://docs.google.com/uc?id=1nSXsMRaw-0k7EOJxHCJUZxyjqr6mbBq4', 'https://asm.poly.edu.vn/images/2021-12-15-61ba0c8b631b4.jpg', '2021-12-15 22:41:02', '2021-12-15 22:41:02');
INSERT INTO `product_galleries` VALUES (250, 82, 'https://docs.google.com/uc?id=18I7XQF06_oX61vF-fEdtglrC6aqHSqq3', 'https://asm.poly.edu.vn/images/2021-12-15-61ba0c8e71410.jpg', '2021-12-15 22:41:05', '2021-12-15 22:41:05');
INSERT INTO `product_galleries` VALUES (251, 83, 'https://docs.google.com/uc?id=1y8IZPprJEWrIqMy6JjJko7YSniQ-urBj', 'https://asm.poly.edu.vn/images/small-2022-05-10-627a8f731e2d7.jpg', '2022-05-10 23:14:47', '2022-05-10 23:14:47');
INSERT INTO `product_galleries` VALUES (252, 83, 'https://docs.google.com/uc?id=1bhKy2Mka5Bj0I6IvmoV_SpTpdqWfHpw0', 'https://asm.poly.edu.vn/images/2022-05-10-627a8f778c7ff.jpg', '2022-05-10 23:14:51', '2022-05-10 23:14:51');
INSERT INTO `product_galleries` VALUES (253, 91, 'https://docs.google.com/uc?id=1ibFcW0jw2pPaHTe-zJ6v-ckLE3AuVjdM', 'https://asm.poly.edu.vn/images/2022-06-15-62aa023ed8028.jpg', '2022-06-15 23:01:07', '2022-06-15 23:01:07');
INSERT INTO `product_galleries` VALUES (254, 91, 'https://docs.google.com/uc?id=1EYSlhumbAw2cIj-iFfm9DvKfHbkFKN-R', 'https://asm.poly.edu.vn/images/2022-06-15-62aa02432e02c.jpg', '2022-06-15 23:01:10', '2022-06-15 23:01:10');
INSERT INTO `product_galleries` VALUES (255, 91, 'https://docs.google.com/uc?id=1UHAB6xjJ5yxPtMul6w5hJBgBxUAmfbTo', 'https://asm.poly.edu.vn/images/2022-06-15-62aa024691336.jpg', '2022-06-15 23:01:13', '2022-06-15 23:01:13');
INSERT INTO `product_galleries` VALUES (256, 91, 'https://docs.google.com/uc?id=1Aa5kIX28Vnj1HkNgRAmCOFmXeDh09aCn', 'https://asm.poly.edu.vn/images/2022-06-15-62aa024968081.jpg', '2022-06-15 23:01:16', '2022-06-15 23:01:16');
INSERT INTO `product_galleries` VALUES (257, 91, 'https://docs.google.com/uc?id=19XJcgXxOdpT-seBdlZa3KNo04crVeMAH', 'https://asm.poly.edu.vn/images/2022-06-15-62aa024c744f6.jpg', '2022-06-15 23:01:19', '2022-06-15 23:01:19');
INSERT INTO `product_galleries` VALUES (258, 92, 'https://docs.google.com/uc?id=1JKodzuADLkk0Z42dKj9ZxqbYOQkUPHQR', 'https://asm.poly.edu.vn/images/2022-06-16-62aa1491dabf5.jpg', '2022-06-16 00:19:22', '2022-06-16 00:19:22');
INSERT INTO `product_galleries` VALUES (259, 92, 'https://docs.google.com/uc?id=13-497Zqa4445Y3xLgGeGM29mhURcSKFl', 'https://asm.poly.edu.vn/images/2022-06-16-62aa149b00506.jpg', '2022-06-16 00:19:26', '2022-06-16 00:19:26');
INSERT INTO `product_galleries` VALUES (260, 92, 'https://docs.google.com/uc?id=1QA7NqjkcG-xCCC4amakoBUJon5d02uM_', 'https://asm.poly.edu.vn/images/2022-06-16-62aa149e832db.jpg', '2022-06-16 00:19:30', '2022-06-16 00:19:30');
INSERT INTO `product_galleries` VALUES (261, 92, 'https://docs.google.com/uc?id=1tKVQkt9VL0hjfjiSAP4ChVXVn3JuzWLg', 'https://asm.poly.edu.vn/images/2022-06-16-62aa14a25cc68.jpg', '2022-06-16 00:19:34', '2022-06-16 00:19:34');
INSERT INTO `product_galleries` VALUES (262, 92, 'https://docs.google.com/uc?id=1dUXWoJqMqatBYSDa-T006LHe0BrDCCTd', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa14a6c3e9d.jpg', '2022-06-16 00:19:38', '2022-06-16 00:19:38');
INSERT INTO `product_galleries` VALUES (263, 92, 'https://docs.google.com/uc?id=1NtlAwu_ipR1T-7LwM-H1oO5ZndtCAS2O', 'https://asm.poly.edu.vn/images/2022-06-16-62aa14aa4fefb.jpg', '2022-06-16 00:19:42', '2022-06-16 00:19:42');
INSERT INTO `product_galleries` VALUES (264, 93, 'https://docs.google.com/uc?id=13maf-hds0xwrKCMc4Ao2wI7HMLaKk5al', 'https://asm.poly.edu.vn/images/2022-06-16-62aa17f49ea34.jpg', '2022-06-16 00:33:44', '2022-06-16 00:33:44');
INSERT INTO `product_galleries` VALUES (265, 93, 'https://docs.google.com/uc?id=1HiGtu5EMsQFcZANxYbc9ugIHNoYyGN7X', 'https://asm.poly.edu.vn/images/2022-06-16-62aa17f8b8ca1.jpg', '2022-06-16 00:33:48', '2022-06-16 00:33:48');
INSERT INTO `product_galleries` VALUES (266, 93, 'https://docs.google.com/uc?id=1AopICn9PD43s2DORKZ7XFjUcBOO0IVqg', 'https://asm.poly.edu.vn/images/2022-06-16-62aa17fc49100.jpg', '2022-06-16 00:33:52', '2022-06-16 00:33:52');
INSERT INTO `product_galleries` VALUES (267, 93, 'https://docs.google.com/uc?id=1kaEqs7dz3Dt9wGk8dey4j6uoBjWQhQdI', 'https://asm.poly.edu.vn/images/2022-06-16-62aa18003d978.jpg', '2022-06-16 00:33:55', '2022-06-16 00:33:55');
INSERT INTO `product_galleries` VALUES (268, 93, 'https://docs.google.com/uc?id=19GATQ2qz8ais2S3edwbliSVB_bZwSEhB', 'https://asm.poly.edu.vn/images/2022-06-16-62aa1803b8f8d.jpg', '2022-06-16 00:33:59', '2022-06-16 00:33:59');
INSERT INTO `product_galleries` VALUES (269, 93, 'https://docs.google.com/uc?id=15YBNYHJKhiJ78NVze4klJovZbaNYuus3', 'https://asm.poly.edu.vn/images/2022-06-16-62aa1807aa4a6.jpg', '2022-06-16 00:34:03', '2022-06-16 00:34:03');
INSERT INTO `product_galleries` VALUES (270, 94, 'https://docs.google.com/uc?id=11lq4aMSOPHvdW1URZWDWfljnW5oqiLkS', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20ac1f7bc.jpg', '2022-06-16 01:10:56', '2022-06-16 01:10:56');
INSERT INTO `product_galleries` VALUES (271, 94, 'https://docs.google.com/uc?id=1t-Bb16mso45Oh0mQ4vdvwjOkh63S5GJA', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20b10d23e.jpg', '2022-06-16 01:11:00', '2022-06-16 01:11:00');
INSERT INTO `product_galleries` VALUES (272, 94, 'https://docs.google.com/uc?id=1pj1MShazh2JvH7UOf48fNpgNzWgbVWx1', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20b4caebd.jpg', '2022-06-16 01:11:08', '2022-06-16 01:11:08');
INSERT INTO `product_galleries` VALUES (273, 94, 'https://docs.google.com/uc?id=1W4l-FQsvIZMf91O2yIk9i31Ch8KETj5X', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20bc9c04f.jpg', '2022-06-16 01:11:12', '2022-06-16 01:11:12');
INSERT INTO `product_galleries` VALUES (274, 94, 'https://docs.google.com/uc?id=1EDKUwTLSbIiE5nQ0EBSSG4_FHIdKE310', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20c03d27c.jpg', '2022-06-16 01:11:15', '2022-06-16 01:11:15');
INSERT INTO `product_galleries` VALUES (275, 94, 'https://docs.google.com/uc?id=1-4RuYD12CJFEQpk6DjXPsfgVGB3ksL5n', 'https://asm.poly.edu.vn/images/small-2022-06-16-62aa20c4545ee.jpg', '2022-06-16 01:11:20', '2022-06-16 01:11:20');
COMMIT;

-- ----------------------------
-- Table structure for product_types
-- ----------------------------
DROP TABLE IF EXISTS `product_types`;
CREATE TABLE `product_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_home` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_types
-- ----------------------------
BEGIN;
INSERT INTO `product_types` VALUES (1, 'Website', '2021-10-31 18:17:36', '2021-10-31 18:17:36', 1);
INSERT INTO `product_types` VALUES (2, 'Mobile', '2021-10-31 18:17:37', '2021-10-31 18:17:37', 0);
INSERT INTO `product_types` VALUES (3, 'Phim', '2021-10-31 18:17:37', '2021-10-31 18:17:37', 1);
INSERT INTO `product_types` VALUES (4, 'Ứng Dụng', '2021-11-17 22:40:59', '2021-11-17 22:41:03', 1);
INSERT INTO `product_types` VALUES (5, 'Digital Marketing', '2021-11-25 17:19:28', '2021-11-25 17:19:36', 1);
INSERT INTO `product_types` VALUES (6, 'Photoshop', '2021-11-25 17:19:33', '2021-11-25 17:19:40', 1);
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `campus_id` int NOT NULL DEFAULT '4',
  `semester` bigint NOT NULL,
  `teacher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` double(8,2) NOT NULL,
  `evaluate_status` int DEFAULT '1',
  `status` bigint NOT NULL DEFAULT '1',
  `type_id` bigint DEFAULT NULL,
  `url_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_video` bigint NOT NULL DEFAULT '0',
  `create_by` bigint unsigned DEFAULT NULL,
  `descript_short` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descript_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` bigint DEFAULT '1',
  `reject_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (91, 'e3e3f86a2dc407b28cb95cb74802490ad7af8e47', 'Poly quiz game', 'PRO2016', 2, 5, 'thienth', 10.00, 1, 2, 1, 'https://drive.google.com/file/d/1sQRboNpr_fupvX-_mZsGnNFpr1ANPlOQ/preview', 1, 26, '<div class=\"page\" title=\"Page 7\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p>Trường Cao đẳng FPT Polytechnic thuộc một trong những ngôi trường d&acirc;̃n đ&acirc;̀u đ&ocirc;̉i mới hình thức giảng dạy trực tuy&ecirc;́n thông qua n&ecirc;̀n tảng google meet tại Việt Nam</p>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"page\" title=\"Page 9\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><strong><span style=\"font-size: 16.000000pt; \">Thực trạng </span></strong></p>\r\n<p><span style=\"font-size: 13.000000pt; \">Trường cao đẳng FPT Polytechnic đào tạo đa ngành ngh&ecirc;̀ như</span><span style=\"font-size: 13.000000pt; \">: </span><span style=\"font-size: 13.000000pt; \">công nghệ thông tin, marketing, làm đẹp</span><span style=\"font-size: 13.000000pt; \">, </span><span style=\"font-size: 13.000000pt; \">... Đ&ecirc;̉ đạt được nhi&ecirc;̀u thành tựu và uy tín thì trường đã xây dựng nhi&ecirc;̀u phương pháp giảng dạy, ngoài cách dạy truy&ecirc;̀n th&ocirc;́ng một bu&ocirc;̉i lý thuy&ecirc;́t, một bu&ocirc;̉i thực hành thì trường có thêm các phương pháp như:</span></p>\r\n<p><img style=\" font-size: 17.3333px; text-align: center; display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/26/cms-img.png\" alt=\"\" width=\"400\" height=\"180\" /></p>\r\n<p><span style=\"\"><span style=\"font-size: 17.3333px;\">- Học online CMS: Xây dựng chương trình học các môn lý thuy&ecirc;́t như: Kĩ năng học tập, tin học văn phòng, chính trị và pháp luật, ... nhằm đánh giá ch&acirc;́t lượng sinh viên, cũng là nơi lưu trữ tài liệu học b&ocirc;̉ sung ki&ecirc;́n thức cho sinh viên, giúp sinh viên có th&ecirc;̉ tự tìm hi&ecirc;̉u và học tập thêm nhi&ecirc;̀u ki&ecirc;́n thức cho bản thân.</span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"\"><span style=\"font-size: 17.3333px;\"><img src=\"/storage/photos/26/gg-meet.png\" alt=\"\" width=\"400\" height=\"225\" /></span></span></p>\r\n<p><span style=\"\"><span style=\"font-size: 17.3333px;\">-&nbsp; Học trực tuy&ecirc;́n qua n&ecirc;̀n tảng Google Meet: Do đại dịch covid gây tác động làm thay đ&ocirc;̉i g&acirc;̀n như hoàn toàn các qu&ocirc;́c gia trên th&ecirc;́ giới, với sự sáng tạo và nắm bắt nhanh xu th&ecirc;́ thì trường cao đẳng FPT Polytechnic đã nhanh chóng đưa việc giảng dạy trực tuy&ecirc;́n vào tri&ecirc;̉n khai thực t&ecirc;́ giúp sinh viên bắt kịp chương trình học, dù sinh viên ở nhà v&acirc;̃n có th&ecirc;̉ học tập t&ocirc;́t như sinh viên học trực ti&ecirc;́p tại trường.</span></span></p>\r\n<p><span style=\"\"><span style=\"font-size: 17.3333px;\">-&nbsp; Học theo nhóm: Phương pháp dạy học trong đó giảng viên t&ocirc;̉ chức chia sinh viên thành từng nhóm học tập nhỏ đ&ecirc;̉ sinh viên cùng thảo luận, trao đ&ocirc;̉i ý ki&ecirc;́n, giải quy&ecirc;́t v&acirc;́n đ&ecirc;̀ học tập được đặt ra dưới sự t&ocirc;̉ chức, d&acirc;̃n dắt, hướng d&acirc;̃n của giảng viên.</span></span></p>\r\n<p><span style=\"\"><span style=\"font-size: 17.3333px;\">- Phương pháp dạy học theo dự án: Giảng viên t&ocirc;̉ chức cho sinh viên tự nghiên cứu và vận dụng ki&ecirc;́n thức đ&ecirc;̉ giải quy&ecirc;́t bài tập tình hu&ocirc;́ng gắn li&ecirc;̀n với thực ti&ecirc;̃n, ngh&ecirc;̀ nghiệp tương lai của sinh viên.</span></span></p>\r\n<p><span style=\"\"><span style=\"font-size: 17.3333px;\">-&nbsp; Thường xuyên t&ocirc;̉ chức các sự kiện, hoạt động: Các ban ngành và các câu lạc bộ t&ocirc;̉ chức các sự kiện nhằm nâng cao tinh th&acirc;̀n làm việc nhóm, phát huy tính sáng tạo, rèn luyện kỹ năng m&ecirc;̀m cho sinh viên trong môi trường năng động. Đ&ocirc;̀ng thời nhà trường cũng t&ocirc;̉ chức các cuộc thi, đại hội Happy Bee hàng năm giúp sinh viên giải tỏa căng thẳng. Trong những sự kiện hoạt động đó thì trường FPT Polytechnic còn có các ph&acirc;̀n trò chơi trắc nghiệm trực tuy&ecirc;́n có giải thưởng cho những thành viên tham gia.</span></span></p>\r\n<p>&nbsp;</p>\r\n<div class=\"page\" title=\"Page 10\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><strong><span style=\"font-size: 16.000000pt;  background-color: rgb(100.000000%, 100.000000%, 100.000000%);\">Khảo sát </span></strong></p>\r\n<p><span style=\"font-size: 13.000000pt; \">Nhằm tăng sự hiệu quả trong quá trình </span><span style=\"font-size: 13.000000pt; \">g</span><span style=\"font-size: 13.000000pt; \">iúp sinh viên học thêm ki&ecirc;́n thức mới, ôn tập lại ki&ecirc;́n thức cũ trên lớp</span><span style=\"font-size: 13.000000pt; \">. Các </span><span style=\"font-size: 13.000000pt; \">giảng viên đã sử dụng nhi&ecirc;̀u ứng dụng tạo trò chơi giải trắc nghiệm trực tuy&ecirc;́n như Kahoot, Quizizz</span><span style=\"font-size: 13.000000pt; \">, ..</span><span style=\"font-size: 13.000000pt; \">. Được ti&ecirc;́p xúc, trải nghiệm trong môi trường học tập tại trường Cao Đẳng Thực Hành FPT Polytechnic, nhóm em đã khảo sát xin ý ki&ecirc;́n thực t&ecirc;́ một vài th&acirc;̀y cô giảng viên, anh chị thuộc các phòng ban trong trường, cụ th&ecirc;̉ như:&nbsp;</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \"><strong>Th&acirc;̀y Nguy&ecirc;̃n Thanh Nam - Trưởng ban đào tạo Trường Cao Đẳng FPT</strong> </span><span style=\"font-size: 13pt; \">cho bi&ecirc;́t:</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Phòng ban thường sử dụng Kahoot và Quizizz cho mục đích học tập, đào tạo cho các th&acirc;̀y cô giảng dạy trong trường, đôi khi là các cuộc vui chơi có thưởng.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Do</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">dùng</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">tài</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">khoản</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">mi&ecirc;̃n</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">phí</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">bị</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">hạn</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">ch&ecirc;́</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">loại</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">câu</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">hỏi</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">làm</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">m&acirc;́t</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">đi</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">sự</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">phong</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">phú</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">cho cuộc chơi nên phong ban đã tự lo tài chính mua gói trả phí đ&ecirc;̉ sử dụng.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Trung</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">bình</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">m&ocirc;̃i</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">l&acirc;̀n</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">t&ocirc;̉</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">chức</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">có</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">khoảng</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">100</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">&ndash;</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">500</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">người</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">tham</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">gia.</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">Nhu</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">c&acirc;̀u</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">tương</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">lai hi vọng có khoảng 10.000 người tham gia.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Mong mu&ocirc;́n có n&ecirc;̀n tảng mới tùy chỉnh được hi&ecirc;̉n thị x&ecirc;́p hạng, định danh hoặc không định danh người tham gia, lưu lại các bộ câu hỏi thuận tiện cho các l&acirc;̀n sử dụng sau.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt;  text-align: center;\"><span style=\"font-size: 13pt; \"><img src=\"/storage/photos/26/pv-namnt2.png\" alt=\"\" width=\"400\" height=\"317\" /></span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">Anh Nguy&ecirc;̃n Vi&ecirc;́t Phương - Phòng Công Tác Sinh Viên </span><span style=\"font-size: 13pt; \">cho bi&ecirc;́t:</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Hiện tại các chương trình t&ocirc;̉ chức trong trường đa s&ocirc;́ dành cho sinh viên là chủ y&ecirc;́u, mục đích tạo ra những sân chơi vui vẻ, kích thích động viên tinh th&acirc;̀n cho nhân viên hay sinh viên trong trường, tạo dựng môi trường năng động.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Chỉ sử dụng n&ecirc;̀n tảng Kahoot vì đơn giản, d&ecirc;̃ dùng, tạo được nhi&ecirc;̀u loại đáp án (dạng text, hình ảnh, âm thanh...), xem được x&ecirc;́p hạng từng người chơi sau m&ocirc;̃i câu hỏi, th&ocirc;́ng kê x&ecirc;́p hạng sau khi k&ecirc;́t thúc trò chơi.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Trung</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">bình</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">m&ocirc;̃i</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">l&acirc;̀n</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">t&ocirc;̉</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">chức</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">có</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">khoảng</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">100-200</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">người</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">tham</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">gia,</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">chương</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">trình</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">từng có nhi&ecirc;̀u nh&acirc;́t là hơn 1000 người tham gia.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">N&ecirc;́u dùng tài khoản mi&ecirc;̃n phí thì bị hạn ch&ecirc;́ nhi&ecirc;̀u chức năng, nên phải mua gói trả phí.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> &nbsp;</span><span style=\"font-size: 13pt; \">Mong mu&ocirc;́n có n&ecirc;̀n tảng mới không m&acirc;́t phí và đủ chức năng c&acirc;̀n sử dụng như</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">Kahoot, d&ecirc;̃ sử dụng hơn, có thêm ti&ecirc;́ng việt, x&ecirc;́p hạng có th&ecirc;̉ tùy chỉnh, thay đ&ocirc;̉i được âm thanh.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"\">&nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/26/pv-phuongnv.png\" alt=\"\" width=\"400\" height=\"354\" /></span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><strong><span style=\"font-size: 16pt; \">Xây dựng ý tưởng</span></strong></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">Dựa vào thực trạng và khó khăn trên, nhóm chúng em quy&ecirc;́t định xây dựng hệ th&ocirc;́ng \"</span><span style=\"font-size: 13pt; \">Poly Quiz Game</span><span style=\"font-size: 13pt; \">\", giúp quản lý, vận hành toàn diện và tăng hiệu su&acirc;́t làm việc; giảm t&ocirc;́i đa thời gian và chi phí cho hệ th&ocirc;́ng giải câu hỏi cũng như khách hàng.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt; \">Website nhanh chóng giải quy&ecirc;́t mọi khó khăn và b&acirc;́t cập trong việc vận hành quản lý</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">Quiz.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt; \">Khách hàng d&ecirc;̃ dàng sử dụng hệ th&ocirc;́ng thông qua đăng nhập google (mail</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">@fpt.edu.vn).</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt; \">Không m&acirc;́t phí khi tham gia tạo các loại câu hỏi và tham gia chơi.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt; \">H&ocirc;̃trợngônngữTi&ecirc;́ngViệt.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; \">-</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt; \">Người</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">dùng</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">d&ecirc;̃</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">dàng</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">trong</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">việc</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">quản</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">lý</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">thông</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">tin</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">của</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">những</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">bài</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">test</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">đã</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">làm</span><span style=\"font-size: 13pt; \"> </span><span style=\"font-size: 13pt; \">trước đó.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2022-06-15 22:25:06', '2022-07-25 17:04:49', 45, NULL, 'https://drive.google.com/file/d/1Q-GD64ZDQj9XRsA1u8_SpS2z14l4xgJj/preview');
INSERT INTO `products` VALUES (92, '7e228dcfd926024d55943a9a7cd7207a0e8b02bd', 'Website chợ cư dân chung cư', 'PRO2016', 2, 4, 'sontv8', 9.00, 1, 5, 1, 'https://drive.google.com/file/d/1UTVMH5SIuC97i4ewlpR4KFxXddzd4tQc/preview', 1, 30, '<p>Website chợ cư d&acirc;n chung cư l&agrave; m&ocirc;i trường gi&uacute;p cộng đồng trong khu d&acirc;n cư sinh hoạt mua sắm tại đ&acirc;y, dễ d&agrave;ng tiếp cận sản phẩm dịch vụ m&agrave; m&igrave;nh mong muốn</p>', '<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"\"><strong>Tổng quan</strong></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"\">Những năm gần đ&acirc;y mua h&agrave;ng trực tuyến đang dần phổ biến trong kỷ nguy&ecirc;n chuyển đổi số, c&aacute;c s&agrave;n thương mại điện tử cũng ph&aacute;t triển nhanh ch&oacute;ng để bắt kịp xu hướng mới Theo khảo s&aacute;t do Bain &amp; Company hợp t&aacute;c thực hiện, trong năm 2021 5 hoạt động tr&ecirc;n kh&ocirc;ng gian trực tuyến được người d&ugrave;ng tin d&ugrave;ng Việt d&agrave;nh nhiều thời gian nhất ch&iacute;nh l&agrave; mạng x&atilde; hội, nhắn tin, xem video, thương mại điện tử v&agrave; gmail. Theo đ&oacute; tỉ lệ người d&ugrave;ng internet tham gia mua sắm trực tuyến đ&atilde; tăng từ 77% trong năm 2019 l&ecirc;n 88% trong năm 2020 (theo S&aacute;ch Trắng thương mại điện tử năm 2021)</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/cho-cu-dan-chung-cu/anh-1.png\" alt=\"\" width=\"400\" height=\"196\" /></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"\">&nbsp;Theo đ&aacute;nh gi&aacute; của Cục TMĐT v&agrave; Kinh tế số, giai đoạn 2020-2021 Việt Nam chứng kiến nhiều chuyển biến t&iacute;ch cực từ th&oacute;i quen mua sắm, kinh doanh trực tuyến của cộng đồng người ti&ecirc;u d&ugrave;ng v&agrave; doanh nghiệp trong cả nước, tốc độ tăng trưởng của TMĐT b&aacute;n lẻ năm 2020 ở mức 18%.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><strong>Khảo s&aacute;t kh&aacute;ch h&agrave;ng</strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Đại dịch Covid-19 đ&atilde; g&oacute;p phần thay đổi th&oacute;i quen ti&ecirc;u d&ugrave;ng của nhiều người Việt Nam khi chuyển dịch sang mua sắm trực tuyến.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Trong đ&oacute;, c&aacute;c mặt h&agrave;ng thiết yếu như thực phẩm, đồ d&ugrave;ng gia đ&igrave;nh chiếm tỷ lệ ng&agrave;y c&agrave;ng cao. Số liệu điều tra cho thấy 53% người d&ugrave;ng mua sắm thực phẩm online, chiếm tỷ lệ cao nhất; tiếp theo l&agrave; gi&agrave;y d&eacute;p, quần &aacute;o mỹ phẩm với 43% v&agrave; đồ d&ugrave;ng gia đ&igrave;nh l&agrave; 33%</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/cho-cu-dan-chung-cu/anh-2.png\" alt=\"\" width=\"400\" height=\"211\" /></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Theo khảo s&aacute;t tại c&aacute;c khu chung cư tại H&agrave; Nội, người d&acirc;n phản &aacute;nh rằng:</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Tồn tại rất nhiều nhức nhối trong vấn đề an to&agrave;n thực phẩm.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Sản phẩm kh&ocirc;ng đ&uacute;ng ti&ecirc;u chuẩn, gi&aacute; cao hơn so với thị trường.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Thời gian đi lại g&acirc;y bất tiện</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Thời gian giao h&agrave;ng hạn chế Đối với người b&aacute;n (chủ yếu tr&ecirc;n Facebook)</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Kh&oacute; x&aacute;c định kh&aacute;ch h&agrave;ng</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Tr&ocirc;i b&agrave;i, tr&ocirc;i comment kh&aacute;ch h&agrave;ng</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Cần x&aacute;c thực khi đặt h&agrave;ng</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">- Tiềm ẩn nguy cơ hủy đơn cao</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><strong>X&acirc;y dựng &yacute; tưởng</strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Dựa v&agrave;o thực trạng v&agrave; kh&oacute; khăn như tr&ecirc;n nh&oacute;m ch&uacute;ng em quyết định x&acirc;y dựng Website chợ cư d&acirc;n chung cư (Apartment Residential Market) nhằm mục đ&iacute;ch chia sẻ tạo điều kiện thuận lợi cho khu d&acirc;n cư về vấn đề mua h&agrave;ng online v&agrave; c&aacute;c dịch vụ.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Kh&aacute;ch mua h&agrave;ng c&oacute; thể đăng k&yacute; trở th&agrave;nh shop b&aacute;n h&agrave;ng v&agrave; gi&uacute;p mọi người trao đổi mua b&aacute;n h&agrave;ng h&oacute;a một c&aacute;ch thuận tiện, đ&aacute;p ứng nhu cầu của mọi cư d&acirc;n.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">Website sẽ giải quyết vấn đề an to&agrave;n trong m&ugrave;a dịch Covid-19, mua h&agrave;ng v&agrave; giao h&agrave;ng nhanh ch&oacute;ng ngay trong ng&agrave;y, kh&aacute;ch mua h&agrave;ng c&oacute; nhiều sự lựa chọn, c&oacute; nhiều voucher ưu đ&atilde;i hấp dẫn v&agrave; đặc biệt đảm bảo quyền lợi kh&aacute;ch h&agrave;ng v&agrave; chất lượng sản phẩm.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>', '2022-06-16 00:07:01', '2022-07-24 16:08:19', 51, NULL, 'https://drive.google.com/file/d/17O1Rp3zaFQY6_6_66oqioUneOgcjNvYl/preview');
INSERT INTO `products` VALUES (93, '861cea52208adb188e46e3c1de8fcdcec5a1c68e', 'Website đặt lịch và quản lý Spa', 'PRO220', 2, 4, 'sontv8', 9.00, 1, 5, 1, 'https://drive.google.com/file/d/1heh32KMDzTYSBWpnlqrM-a_YtFp_hvRy/preview', 1, 26, '<div class=\"page\" title=\"Page 6\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p>Trong thời đại ngày nay, công nghệ thông tin ngày càng phát tri&ecirc;̉n, đóng vai trò cưc kỳ quan trọng trong n&ecirc;̀n kinh t&ecirc;́ - văn hóa - xã hội của m&ocirc;̃i qu&ocirc;́c gia.</p>\r\n</div>\r\n</div>\r\n</div>', '<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><strong><span style=\"font-size: 14pt; color: #233d5e;\">Lý do chọn đ&ecirc;̀ tài</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"background: white;\">Lý do chúng tôi chọn đ&ecirc;̀ tài &ldquo;Website đặt lịch và quản lý Spa&rdquo;: Từ khi internet ph&ocirc;̉ bi&ecirc;́n, hay nói đúng hơn, khi thông tin được truy&ecirc;̀n tải nhi&ecirc;̀u hơn trên mạng Internet, chúng ta tận dụng nó như một kênh thông tin hữu hiệu. Không chỉ báo chí truy&ecirc;̀n thông và xã hội phát tri&ecirc;̉n, mà cả các thông tin, ki&ecirc;́n thức chuyên môn cũng được th&ecirc;̉ hi&ecirc;̉n trên website nhằm đưa ki&ecirc;́n thức đ&ecirc;́n g&acirc;̀n với mọi người hơn. </span>Đặc biệt là ngày nay khi nhu c&acirc;̀u làm đẹp và thay đ&ocirc;̉i bản thân đang d&acirc;̀n là một xu hướng của thời kì hiện đại. Song song với nhu c&acirc;̀u làm đẹp tăng cao từ các chị em. Ngày nay đã có r&acirc;́t nhi&ecirc;̀u các trung tâm Spa, làm đẹp được mở ra nhằm đáp ứng nhu c&acirc;̀u và mục đích của mọi người chứ không chỉ riêng phái đẹp. Cùng với đó việc đưa thương hiệu, trung tâm dịch vụ được nâng cao và được nhi&ecirc;̀u người bi&ecirc;́t đ&ecirc;́n thì internet sẽ thay th&ecirc;́ công sức thủ công của con người đ&ecirc;̉ đảm nhiệm việc quảng bá tới người tiêu dùng cũng như thay th&ecirc;́ các công việc quản lý, gi&acirc;́y tờ thủ công mà trước đây mọi người đang làm.</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"background: white;\">Ứng dụng công nghệ vào công việc kinh doanh luôn là một đi&ecirc;̀u c&acirc;̀n thi&ecirc;́t. Sở hữu một trang web sẽ giúp trung tâm Spa hoạt động bài bản và chuyên nghiệp hơn, d&ecirc;̃ dàng mở rộng công việc kinh doanh mà v&acirc;̃n d&ecirc;̃ dàng ki&ecirc;̉m soát.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"background: white;\">Đ&ecirc;̉ nghiên cứu và khảo sát lĩnh vực quản lý Spa này chúng em đã đưa ra một s&ocirc;́ cuộc khảo sát nhỏ v&ecirc;̀ việc khách hàng có sẵn sàng đ&ecirc;́n trung tâm Spa và ng&ocirc;̀i chờ tới lượt khám của mình từ 15 đ&ecirc;́n 30 phút hay không? Và khảo sát khách hàng có mu&ocirc;́n đặt lịch trước qua website không?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;<img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/26/quan-ly-spa/anh-1.png\" alt=\"\" width=\"400\" height=\"246\" /></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/26/quan-ly-spa/anh-2.png\" alt=\"\" width=\"400\" height=\"249\" /></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><strong><span style=\"font-size: 14pt; color: #233d5e;\">Mục đích làm đ&ecirc;̀ tài</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt; background: white;\">Hiện nay đã có r&acirc;́t nhi&ecirc;̀u trung tâm dịch vụ Spa được mở ra, cũng đã có những nơi tri&ecirc;̉n khai mô hình quản lý và đặt lịch trên website, nhưng mức độ chưa nhi&ecirc;̀u và còn đơn giản, chưa đáp ứng được nhi&ecirc;̀u sự mong mu&ocirc;́n và kì vọng của khách hàng. Chính vì vậy, nắm bắt được những đi&ecirc;̉m mạnh và đi&ecirc;̉m y&ecirc;́u trên xu hướng thị trường ngày nay trong lĩnh vực này, chúng tôi hoàn thiện website &ldquo;Đặt lịch và quản lý Spa&rdquo; có th&ecirc;̉ giúp khách hàng tìm hi&ecirc;̉u v&ecirc;̀ phòng khám, đọc những ki&ecirc;́n thức, tin tức v&ecirc;̀ Spa, đặt lịch hẹn tới khám. Giúp bên phòng khám quảng cáo dịch vụ tại trung tâm Spa, chia sẻ ki&ecirc;́n thức, cải thiện thời gian chờ của khách hàng.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><strong><span style=\"font-size: 14pt; color: #233d5e;\">Đ&ocirc;́i tượng sử dụng hệ th&ocirc;́ng</span></strong></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \">Các đ&ocirc;́i tượng sử dụng hệ th&ocirc;́ng của chúng em:</p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt;\">- &nbsp;Các cá nhân có nhu c&acirc;̀u v&ecirc;̀ làm đẹp, chăm sóc cơ th&ecirc;̉, thư giãn sau m&ocirc;̃i tu&acirc;̀n làm việc căng thẳng nhưng không mu&ocirc;́n đợi khi đ&ecirc;́n trung tâm đ&ecirc;̉ sử dụng dịch vụ.</span></p>\r\n<p style=\"margin-right: 0cm; margin-left: 0cm; font-size: 12pt; \"><span style=\"font-size: 13pt;\">- &nbsp;Các t&ocirc;̉ chức, doanh nghiệp mu&ocirc;́n có một hệ th&ocirc;́ng website hoạt động bài bản, chuyên nghiệp và d&ecirc;̃ dàng quản lý các dịch vụ và quản lý hệ th&ocirc;́ng Spa</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm; font-size: 12pt; \">&nbsp;</p>', '2022-06-16 00:07:04', '2022-07-05 15:38:17', 47, NULL, 'https://drive.google.com/file/d/14Q8Ab-ba0BGL4qzWdlavr41aDC3Kzddo/preview');
INSERT INTO `products` VALUES (94, '1f1f487fe09826b1c3f94d5bc015fc649fc7a3fb', 'Thiết kế nội thất biệt thự Vinhomes Ocean Park', 'PRO2062', 2, 4, 'datlt34', 9.00, 1, 5, 6, 'https://drive.google.com/file/d/19W5QsEBrviDvwC7ECDYQKEcSyw_MCL1f/preview', 1, 30, '<p>&ldquo;Vinhomes Ocean Park Gia L&acirc;m mang tầm v&oacute;c một đại đ&ocirc; thị đồng bộ tiện &iacute;ch như Đảo quốc Singapore. V&agrave; hơn thế nữa, dự &aacute;n sở hữu những đại tiện &iacute;ch v&agrave; cảnh quan quy m&ocirc; tầm cỡ&rdquo;</p>', '<p>Vinhomes Ocean Park được dự kiến sẽ tương tự với c&aacute;c tiện &iacute;ch đ&atilde; c&oacute; trước đ&acirc;y như tiện &iacute;ch trường học, bệnh viện, si&ecirc;u thị, trung t&acirc;m thương mại, trung t&acirc;m mua sắm, si&ecirc;u thị nội thất, đồ d&ugrave;ng, cảnh quan xanh sinh th&aacute;i.... tất cả nhằm mang tới cư d&acirc;n những trải nghiệm cuộc sống trọn vẹn ngay trong khu đ&ocirc; thị, c&oacute; thể dễ d&agrave;ng tiếp cận v&agrave; gi&uacute;p cư d&acirc;n c&oacute; thể vui sống an to&agrave;n, thoải m&aacute;i kết nối với cộng đồng cư d&acirc;n th&acirc;n thiện của m&igrave;nh.</p>\r\n<p>H&agrave; Nội mới của Th&agrave;nh phố ph&iacute;a Đ&ocirc;ng, được v&iacute; như một &ldquo;Quận Ocean\" s&ocirc;i động, hiện đại, ph&oacute;ng kho&aacute;ng v&agrave; rực rỡ sắc m&agrave;u. &ldquo;Quận Biển Ocean&rdquo; ch&iacute;nh thức lộ diện, ch&agrave;o đ&oacute;n bạn tới với h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; miền đất phần hoa, đ&aacute;ng sống bậc nhất Thủ đ&ocirc;!</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-1.png\" alt=\"\" width=\"600\" height=\"446\" /></p>\r\n<p><strong> ĐỊA H&Igrave;NH - M&Ocirc;I TRƯỜNG - KH&Iacute; HẬU</strong></p>\r\n<p>ĐỊA H&Igrave;NH:</p>\r\n<p>V&ugrave;ng đất n&agrave;y trở th&agrave;nh 1 v&ugrave;ng quần cư l&agrave; 1 trong những trọng yếu của Gia L&acirc;m</p>\r\n<p>KH&Iacute; HẬU:</p>\r\n<p>Nhiệt độ trung b&igrave;nh h&agrave;ng năm l&agrave; 23 độ C.&nbsp;</p>\r\n<p>Kh&iacute; hậu rất m&aacute;t mẻ dễ chịu</p>\r\n<p>C&Acirc;Y XANH</p>\r\n<p>C&oacute; nhiều c&acirc;y xanh dễ d&agrave;ng tận dụng để thiết kế cảnh quan</p>\r\n<p><strong>HIỆN TRẠNG</strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-2.png\" alt=\"\" width=\"600\" height=\"133\" /></strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-3.png\" alt=\"\" width=\"600\" height=\"161\" /></strong></p>\r\n<p><strong>PHỐI CẢNH </strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-4.png\" alt=\"\" width=\"800\" height=\"250\" /></strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-5.png\" alt=\"\" width=\"600\" height=\"339\" /></strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-6.png\" alt=\"\" width=\"800\" height=\"294\" /></strong></p>\r\n<p><strong><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/storage/photos/30/biet-thu-ocean-park/anh-7.png\" alt=\"\" width=\"600\" height=\"181\" /></strong></p>\r\n<p>&nbsp;</p>\r\n<div class=\"page\" title=\"Page 6\">\r\n<div class=\"layoutArea\">\r\n<div class=\"column\">\r\n<p><span style=\"font-size: 20.000000pt;  color: rgb(87.000000%, 74.000000%, 28.000000%);\"> </span></p>\r\n</div>\r\n</div>\r\n</div>', '2022-06-16 00:45:01', '2022-07-24 15:10:37', 21, NULL, 'https://drive.google.com/file/d/1cM5jgFImGNKALER3LTSCu_yzz0UKgkuV/preview');
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (2, 2);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'student', 'web', '2021-11-01 10:59:52', '2021-11-01 10:59:52');
INSERT INTO `roles` VALUES (2, 'teacher', 'web', '2021-11-01 10:59:52', '2021-11-01 10:59:52');
INSERT INTO `roles` VALUES (3, 'giao_vu', 'web', NULL, NULL);
INSERT INTO `roles` VALUES (5, 'admin', 'web', NULL, NULL);
INSERT INTO `roles` VALUES (6, 'major_head_teacher', 'web', '2021-11-09 09:17:37', '2021-11-09 09:17:37');
COMMIT;

-- ----------------------------
-- Table structure for semesters
-- ----------------------------
DROP TABLE IF EXISTS `semesters`;
CREATE TABLE `semesters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of semesters
-- ----------------------------
BEGIN;
INSERT INTO `semesters` VALUES (1, 'Spring 2021', '2021-10-31 02:05:42', '2021-10-31 02:05:42');
INSERT INTO `semesters` VALUES (2, 'Summer 2021', '2021-10-31 02:05:43', '2021-10-31 02:05:43');
INSERT INTO `semesters` VALUES (3, 'Fall 2021', '2021-10-31 02:05:43', '2021-10-31 02:05:43');
INSERT INTO `semesters` VALUES (4, 'Spring 2022', '2022-01-01 00:00:02', '2022-01-01 00:00:02');
INSERT INTO `semesters` VALUES (5, 'Summer 2022', '2022-01-01 00:00:02', '2022-01-01 00:00:02');
INSERT INTO `semesters` VALUES (6, 'Fall 2022', '2022-01-01 00:00:02', '2022-01-01 00:00:02');
COMMIT;

-- ----------------------------
-- Table structure for speciallizes
-- ----------------------------
DROP TABLE IF EXISTS `speciallizes`;
CREATE TABLE `speciallizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of speciallizes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for stars
-- ----------------------------
DROP TABLE IF EXISTS `stars`;
CREATE TABLE `stars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `point` int NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of stars
-- ----------------------------
BEGIN;
INSERT INTO `stars` VALUES (1, 9, 5, 26, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (2, 2, 5, 26, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (3, 9, 3, 32, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (4, 2, 3, 32, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (5, 3, 5, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (6, 9, 3, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (7, 19, 4, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (8, 25, 1, 32, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (9, 22, 4, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (10, 25, 2, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (11, 25, 4, 31, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (12, 6, 4, 2, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (13, 9, 4, 31, '2021-10-25 14:24:25', '2021-10-25 14:24:25');
INSERT INTO `stars` VALUES (14, 2, 4, 2, '2021-11-25 16:40:35', '2021-11-25 16:40:35');
INSERT INTO `stars` VALUES (15, 3, 4, 32, '2021-11-25 16:45:17', '2021-11-25 16:45:17');
INSERT INTO `stars` VALUES (16, 11, 5, 26, '2021-11-25 17:38:06', '2021-11-25 17:38:06');
INSERT INTO `stars` VALUES (17, 28, 4, 32, '2021-11-25 21:03:02', '2021-11-25 21:03:02');
INSERT INTO `stars` VALUES (18, 64, 4, 32, '2021-11-27 10:58:50', '2021-11-27 10:58:50');
INSERT INTO `stars` VALUES (19, 19, 4, 32, '2021-11-27 23:29:14', '2021-11-27 23:29:14');
INSERT INTO `stars` VALUES (20, 67, 5, 26, '2021-11-30 16:33:59', '2021-11-30 16:33:59');
INSERT INTO `stars` VALUES (21, 16, 4, 32, '2021-12-07 10:05:57', '2021-12-07 10:05:57');
INSERT INTO `stars` VALUES (22, 25, 4, 26, '2021-12-08 13:20:19', '2021-12-08 13:20:19');
INSERT INTO `stars` VALUES (23, 78, 4, 26, '2021-12-14 16:03:19', '2021-12-14 16:03:19');
INSERT INTO `stars` VALUES (24, 79, 4, 32, '2021-12-14 17:33:37', '2021-12-14 17:33:37');
INSERT INTO `stars` VALUES (25, 82, 5, 26, '2022-01-01 15:14:04', '2022-01-01 15:14:04');
INSERT INTO `stars` VALUES (26, 17, 4, 26, '2022-01-13 11:05:01', '2022-01-13 11:05:01');
INSERT INTO `stars` VALUES (27, 12, 4, 26, '2022-02-06 17:19:21', '2022-02-06 17:19:21');
INSERT INTO `stars` VALUES (28, 34, 4, 12, '2022-02-25 15:12:38', '2022-02-25 15:12:38');
INSERT INTO `stars` VALUES (29, 78, 5, 12, '2022-05-26 13:59:43', '2022-05-26 13:59:43');
COMMIT;

-- ----------------------------
-- Table structure for subject_attributes
-- ----------------------------
DROP TABLE IF EXISTS `subject_attributes`;
CREATE TABLE `subject_attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of subject_attributes
-- ----------------------------
BEGIN;
INSERT INTO `subject_attributes` VALUES (4, 'PHP và Form', 55, '2022-07-21 16:41:31', '2022-07-21 16:41:31');
INSERT INTO `subject_attributes` VALUES (5, 'GET & POST', 55, '2022-07-21 16:41:31', '2022-07-22 18:39:38');
INSERT INTO `subject_attributes` VALUES (10, 'Session & Cookie', 55, '2022-07-22 18:34:53', '2022-07-22 18:34:53');
INSERT INTO `subject_attributes` VALUES (11, 'PHP, MySQL', 55, '2022-07-22 18:51:43', '2022-07-22 18:51:43');
INSERT INTO `subject_attributes` VALUES (12, 'PHP & HTML', 54, '2022-07-23 09:47:25', '2022-07-23 09:47:25');
INSERT INTO `subject_attributes` VALUES (13, 'Khảo sát, phân tích được hiện trạng của doanh nghiệp', 5, '2022-07-23 17:46:32', '2022-07-23 17:46:32');
INSERT INTO `subject_attributes` VALUES (14, 'Thiết kế được giải pháp CNTT cho doanh nghiệp', 5, '2022-07-23 17:46:43', '2022-07-23 17:46:43');
INSERT INTO `subject_attributes` VALUES (15, 'Vận dụng được công nghệ phù hợp vào dự án thực tế', 5, '2022-07-23 17:47:03', '2022-07-23 17:47:03');
INSERT INTO `subject_attributes` VALUES (16, 'Đóng gói và triển khai được sản phẩm', 5, '2022-07-23 17:47:14', '2022-07-23 17:47:14');
INSERT INTO `subject_attributes` VALUES (17, 'Thái độ và kỹ năng làm việc nhóm', 5, '2022-07-23 17:47:43', '2022-07-23 17:47:43');
INSERT INTO `subject_attributes` VALUES (19, 'Khảo sát và phân tích yêu cầu người dùng', 1, '2022-07-24 11:50:12', '2022-07-24 11:50:12');
INSERT INTO `subject_attributes` VALUES (20, 'Thiết kế các chức năng (giao diện và CSDL)', 1, '2022-07-24 11:50:20', '2022-07-24 11:50:20');
INSERT INTO `subject_attributes` VALUES (21, 'Viết mã thực hiện các chức năng', 1, '2022-07-24 11:50:27', '2022-07-24 11:50:27');
INSERT INTO `subject_attributes` VALUES (22, 'Kiểm thử ứng dụng web', 1, '2022-07-24 11:50:34', '2022-07-24 11:50:34');
INSERT INTO `subject_attributes` VALUES (23, 'Đóng gói và triển khai', 1, '2022-07-24 11:50:45', '2022-07-24 11:50:45');
INSERT INTO `subject_attributes` VALUES (24, 'Viết tài liệu dự án', 1, '2022-07-24 11:50:51', '2022-07-24 11:50:51');
COMMIT;

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `major_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `subjects_code_unique` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of subjects
-- ----------------------------
BEGIN;
INSERT INTO `subjects` VALUES (1, 'PRO1014', 'Dự Án 1 (TKW)', '2021-10-31 02:05:18', '2022-06-15 23:42:53', 1);
INSERT INTO `subjects` VALUES (2, 'PRO1041', 'Dự án 1 (UDPM.Java)', '2021-10-31 02:05:19', '2021-12-08 10:40:58', 19);
INSERT INTO `subjects` VALUES (3, 'PRO1121', 'Dự án 1 (LTMT)', '2021-10-31 02:05:19', '2022-06-15 23:43:05', 1);
INSERT INTO `subjects` VALUES (4, 'PRO131', 'Dự án 1 (UDPM.NET)', '2021-10-31 02:05:19', '2021-12-08 10:42:41', 19);
INSERT INTO `subjects` VALUES (5, 'PRO2016', 'Dự án tốt nghiệp (TKW)', '2021-10-31 02:05:19', '2022-06-15 23:41:05', 1);
INSERT INTO `subjects` VALUES (6, 'PRO2052', 'Dự án Tốt nghiệp - LTMT (Mobile)', '2021-10-31 02:05:19', '2022-06-15 23:43:14', 1);
INSERT INTO `subjects` VALUES (7, 'PRO2112', 'Dự án Tốt nghiệp - UDPM (Spring Boot)', '2021-10-31 02:05:20', '2021-12-08 10:46:37', 19);
INSERT INTO `subjects` VALUES (8, 'PRO219', 'Dự án Tốt nghiệp - UDPM (NETCORE)', '2021-10-31 02:05:20', '2021-12-08 10:47:35', 19);
INSERT INTO `subjects` VALUES (9, 'PRO220', 'Dự án Tốt nghiệp - TKTW (SPA)', '2021-10-31 02:05:20', '2022-06-15 23:43:24', 1);
INSERT INTO `subjects` VALUES (10, 'PRO222', 'Dự án Tốt nghiệp - LTMT (IoT)', '2021-10-31 02:05:20', '2022-06-15 23:43:31', 1);
INSERT INTO `subjects` VALUES (11, 'PRO224', 'Dự án TN (TKTW - PHP Framework)', '2021-10-31 02:05:20', '2022-06-15 23:43:38', 1);
INSERT INTO `subjects` VALUES (12, 'PRO125', 'Dự án 1 (Tự động hóa)', '2021-10-31 02:05:20', '2021-12-09 08:43:19', 32);
INSERT INTO `subjects` VALUES (13, 'PRO127', 'Dự án 1 (Điện công nghiệp)', '2021-10-31 02:05:21', '2021-12-09 08:43:52', 29);
INSERT INTO `subjects` VALUES (14, 'PRO1291', 'Dự án 1 (Cơ khí)', '2021-10-31 02:05:21', '2021-12-09 08:44:24', 31);
INSERT INTO `subjects` VALUES (15, 'PRO132', 'Dự án 1(Điện - điện tử)', '2021-10-31 02:05:21', '2021-12-09 08:45:01', 30);
INSERT INTO `subjects` VALUES (16, 'PRO214', 'Dự án TN (Điện - Điện tử', '2021-10-31 02:05:21', '2021-12-09 08:45:31', 30);
INSERT INTO `subjects` VALUES (17, 'PRO215', 'Dự án TN (Tự động hóa)', '2021-10-31 02:05:21', '2021-12-09 08:46:28', 32);
INSERT INTO `subjects` VALUES (18, 'PRO216', 'Dự án TN (Điện công nghiệp)', '2021-10-31 02:05:21', '2021-12-09 08:47:32', 29);
INSERT INTO `subjects` VALUES (19, 'PRO217', 'Dự án 2 (Cơ khí)', '2021-10-31 02:05:21', '2021-12-09 08:48:48', 31);
INSERT INTO `subjects` VALUES (20, 'PRO218', 'Dự án TN (Cơ khí)', '2021-10-31 02:05:22', '2021-12-09 08:49:19', 31);
INSERT INTO `subjects` VALUES (21, 'PRO2071', 'Dự án tôt nghiệp (HDDL)', '2021-10-31 02:05:22', '2021-12-09 08:49:49', 27);
INSERT INTO `subjects` VALUES (22, 'PRO2091', 'Dự án tôt nghiệp (QTKS)', '2021-10-31 02:05:22', '2021-12-09 08:50:03', 25);
INSERT INTO `subjects` VALUES (23, 'PRO2101', 'Dự án tôt nghiệp (QTNH)', '2021-10-31 02:05:22', '2021-12-09 08:50:42', 26);
INSERT INTO `subjects` VALUES (24, 'PRO1024', 'Dự án 1 (QTDNVVN)', '2021-10-31 02:05:22', '2021-12-09 08:51:22', 24);
INSERT INTO `subjects` VALUES (26, 'PRO1131', 'Dự án 1 (TMĐT)', '2021-10-31 02:05:23', '2021-12-09 08:53:29', 28);
INSERT INTO `subjects` VALUES (28, 'PRO1141', 'Dự án 1 (QHCC)', '2021-10-31 02:05:23', '2021-12-09 08:54:30', 23);
INSERT INTO `subjects` VALUES (31, 'PRO2042', 'Dự án tốt nghiệp (QTDNVVN)', '2021-10-31 02:05:23', '2021-12-09 08:58:14', 24);
INSERT INTO `subjects` VALUES (32, 'PRO2121', 'Dự án tốt nghiệp (TMĐT)', '2021-10-31 02:05:24', '2021-12-09 08:59:02', 28);
INSERT INTO `subjects` VALUES (34, 'PRO2131', 'Dự án tốt nghiệp (QHCC)', '2021-10-31 02:05:24', '2021-12-09 08:59:45', 23);
INSERT INTO `subjects` VALUES (35, 'PRO1112', 'Dự án 1 - Mỹ thuật đa phương tiện', '2021-10-31 02:05:24', '2021-12-09 09:01:26', 22);
INSERT INTO `subjects` VALUES (36, 'PRO2062', 'Dự án tốt nghiệp (MTĐPT)', '2021-10-31 02:05:24', '2021-12-09 09:02:33', 22);
INSERT INTO `subjects` VALUES (37, 'PRO221', 'Dự án TN (Phim và quảng cáo)', '2021-10-31 02:05:24', '2021-12-09 09:03:25', 22);
INSERT INTO `subjects` VALUES (38, 'PRO223', 'Dự án TN (Thiết kế Nội - Ngoại thất)', '2021-10-31 02:05:24', '2021-12-09 09:04:01', 22);
INSERT INTO `subjects` VALUES (50, 'MOB2041', 'Dự án mẫu (LTMT)', '2021-12-09 10:56:17', '2021-12-09 10:56:17', 20);
INSERT INTO `subjects` VALUES (51, 'WEB2041', 'Dự án mẫu (TKTW)', '2021-12-09 10:57:01', '2021-12-09 10:57:01', 21);
INSERT INTO `subjects` VALUES (52, 'SOF2041', 'Dự án mẫu (UDPM.Java)', '2021-12-09 10:59:44', '2021-12-09 10:59:44', 19);
INSERT INTO `subjects` VALUES (53, 'SOF205', 'Dự án mẫu (UDPM.NET)', '2021-12-09 11:00:02', '2021-12-09 11:00:02', 19);
INSERT INTO `subjects` VALUES (54, 'WEb5011', 'Lập trình PHP 4', '2022-07-21 14:46:24', '2022-07-21 14:46:24', 1);
INSERT INTO `subjects` VALUES (55, 'WEB6011', 'Lập trình php5', '2022-07-21 16:41:31', '2022-07-21 16:41:31', 1);
COMMIT;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `campus_id` bigint unsigned NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (2, 'Vu Le Huy Hoang (FPL K16)', 'hoangvlhph13091@fpt.edu.vn', NULL, 2, NULL, '2021-10-31 02:09:21', '2021-11-01 08:50:06', 'https://lh3.googleusercontent.com/a-/AOh14Gh0wdWxOX4J885IF-VyyUgc_HyPXKpugL4BtMs5=s96-c', NULL);
INSERT INTO `users` VALUES (12, 'Hữu Thiện Trần', 'thienth@fpt.edu.vn', NULL, 2, NULL, '2021-10-31 02:09:21', '2022-07-20 21:13:26', 'https://lh3.googleusercontent.com/a-/AFdZucrsx7nNuu6YQ9v4BZSy3iST0Wailjb-3aDcD4n0=s96-c', NULL);
INSERT INTO `users` VALUES (26, 'Võ Văn Định P H 1 3 0 2 4', 'dinhvvph13024@fpt.edu.vn', NULL, 2, NULL, '2021-11-02 08:51:34', '2022-03-09 10:14:41', 'https://lh3.googleusercontent.com/a-/AOh14GgK9n0tSeojD3oCXivqrDeBlgpxTB1Njqh55qRt2Q=s96-c', NULL);
INSERT INTO `users` VALUES (29, 'Do Van Duong (FPL HN)', 'duongdvph11568@fpt.edu.vn', NULL, 4, NULL, '2021-11-12 17:41:39', '2021-11-13 10:14:20', 'https://lh3.googleusercontent.com/a-/AOh14GhcSBXMNhLRvmuTzBJ6ltP-oT4JWpaMa4NZsIlf=s96-c', NULL);
INSERT INTO `users` VALUES (30, 'Hân Trương Văn', 'hantvph10714@fpt.edu.vn', NULL, 2, NULL, '2021-11-12 17:41:41', '2022-06-16 00:07:29', 'https://lh3.googleusercontent.com/a-/AOh14GifMPIqlHIjlaTHJHANboc6pQNX-P_AL99U5ik3Qw=s96-c', NULL);
INSERT INTO `users` VALUES (31, 'Bui Tho Long (FPL HN)', 'longbtph10446@fpt.edu.vn', NULL, 2, NULL, '2021-11-12 18:10:45', '2021-11-13 10:08:24', 'https://lh3.googleusercontent.com/a-/AOh14GgH__qRpgGPe0wI5ruywrUQ3M7X0TUgZvm0SKip=s96-c', NULL);
INSERT INTO `users` VALUES (32, 'Đỗ Thị Bích PH 1 8 2 8 9', 'bichdtph18289@fpt.edu.vn', NULL, 2, NULL, '2021-11-13 09:41:14', '2021-11-13 09:42:00', 'https://lh3.googleusercontent.com/a-/AOh14GiZOyKrUz7SFgvH8azHAbkzgtBT-85HAr-Slu_6=s96-c', NULL);
INSERT INTO `users` VALUES (34, 'Trần Trọng Anh PH 1 3 0 2 5', 'anhttph13025@fpt.edu.vn', NULL, 2, NULL, '2021-11-13 14:51:35', '2021-11-13 14:51:47', 'https://lh3.googleusercontent.com/a-/AOh14Gj-4RfuTZhRwRHVae8hTcHnUvm2IQk8lv7S0DZI=s96-c', NULL);
INSERT INTO `users` VALUES (35, 'dduongvph11568', 'dduongvph11568@fpt.edu.vn', NULL, 4, NULL, '2021-11-14 11:08:21', '2021-11-14 11:08:21', NULL, NULL);
INSERT INTO `users` VALUES (36, 'datnvph13011', 'datnvph13011@fpt.edu.vn', NULL, 2, NULL, '2021-11-14 11:08:21', '2021-11-14 11:08:21', NULL, NULL);
INSERT INTO `users` VALUES (37, 'hantvph10711', 'hantvph10711@fpt.edu.vn', NULL, 2, NULL, '2021-11-14 14:07:34', '2021-11-14 14:07:34', NULL, NULL);
INSERT INTO `users` VALUES (38, 'Testps', 'Testtps@fpt.edu.vn', NULL, 2, NULL, '2021-11-15 00:34:51', '2021-11-15 16:15:45', NULL, NULL);
INSERT INTO `users` VALUES (39, 'bichdt', 'bichdt@fpt.edu.vn', NULL, 2, NULL, '2021-11-16 15:44:28', '2021-11-16 15:44:28', NULL, NULL);
INSERT INTO `users` VALUES (40, 'Tong Thi Thanh Tam FPL HN', 'tamtttph12001@fpt.edu.vn', NULL, 2, NULL, '2021-11-24 16:16:53', '2021-11-24 16:17:51', 'https://lh3.googleusercontent.com/a/AATXAJwe2C6QlaBWBXlu75uC0wyR_JZdxOkOaOzhlk5A=s96-c', NULL);
INSERT INTO `users` VALUES (41, 'Pham Thi Thanh (FPL HN)', 'thanhptph12609@fpt.edu.vn', NULL, 2, NULL, '2021-11-24 16:16:53', '2021-11-24 16:18:22', 'https://lh3.googleusercontent.com/a/AATXAJy_a_8X1aaG5sO2oNclNWFSfN5JBN8-xBuHfofi=s96-c', NULL);
INSERT INTO `users` VALUES (42, 'cuonghmph16667', 'cuonghmph16667@fpt.edu.vn', NULL, 2, NULL, '2021-11-25 14:53:21', '2021-11-25 14:53:21', NULL, NULL);
INSERT INTO `users` VALUES (43, 'Tân Văn Sơn (FPL HN)', 'sontv8@fpt.edu.vn', NULL, 2, NULL, '2021-11-25 14:53:21', '2022-06-15 23:18:19', 'https://lh3.googleusercontent.com/a-/AOh14GhWZvITXex6Mdt02gWpg-kVukHdMffv3BR1iWJesw=s96-c', NULL);
INSERT INTO `users` VALUES (44, 'thaynaodo', 'thaynaodo@fpt.edu.vn', NULL, 2, NULL, '2021-11-25 14:53:21', '2021-11-25 14:53:21', NULL, NULL);
INSERT INTO `users` VALUES (45, 'tientph12974', 'tientph12974@fpt.edu.vn', NULL, 2, NULL, '2021-11-25 14:53:21', '2021-11-25 14:53:21', NULL, NULL);
INSERT INTO `users` VALUES (47, 'FPoly_Nguyễn Thanh Nam', 'namnt@fpt.edu.vn', NULL, 2, NULL, '2021-11-27 09:42:24', '2021-11-30 08:52:58', 'https://lh3.googleusercontent.com/a-/AOh14GhCzGM5zjgKAQe4qneAL4x56gA7wLiDeqYpf4BmkA=s96-c', NULL);
INSERT INTO `users` VALUES (48, 'Trần Thị Thu ( FE FPL HO)', 'thutt40@fpt.edu.vn', NULL, 1, NULL, '2021-11-29 16:33:23', '2021-11-29 17:08:18', 'https://lh3.googleusercontent.com/a-/AOh14GjurQjnsRDJwc-npPVmDITCbZ8MVZh3GHtBuxjv=s96-c', NULL);
INSERT INTO `users` VALUES (49, 'Huỳnh Thanh Hoàng', 'hoanght6@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (50, 'Nguyễn Thị Thu Thảo', 'thaoltt71@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (51, 'Nguyễn Trung Thành', 'ThanhNT175@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (52, 'Nguyễn Thị Thanh Thuỳ', 'ThuyNTT117@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (53, 'Vũ Thị Thanh Huyền', 'huyenvtt2@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (54, 'Đặng Quang Vinh', 'vinhdq2@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (55, 'Nguyễn Thị Phương Linh', 'linhntp2@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (56, 'Trần Duy Phong', 'PhongTD@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (57, 'Trần Thị Hường', 'huongTT@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (58, 'Trương Hoàng Anh', 'anhth30@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (59, 'Đoàn Thanh Nghiêm', 'NghiemDT2@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (60, 'Nguyễn Quốc Trung', 'trungnq4@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (61, 'Lê Anh Tuấn', 'TuanLA2@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (62, 'Nguyễn Thị Quỳnh Anh', 'AnhNTQ@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (63, 'Trần Ngọc Sương', 'SuongTN@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (64, 'Nguyễn Văn Nga', 'NgaNV4@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (65, 'Đặng Quang Minh', 'MinhDQ8@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (66, 'Lưu Thị Hiền', 'hienlt@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (67, 'Trần Thị Hải Yến', 'yentth@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (68, 'Tống Ngọc Hoa', 'HoaTN8@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (69, 'Phạm Thị Vân Anh', 'Anhptv2@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (70, 'tramntn', 'tramntn@fpt.edu.vn', NULL, 5, NULL, '2021-11-30 08:49:45', '2021-11-30 08:49:45', NULL, NULL);
INSERT INTO `users` VALUES (71, 'Trangttt84', 'Trangttt84@fpt.edu.vn', NULL, 5, NULL, '2021-11-30 08:50:12', '2021-11-30 08:50:12', NULL, NULL);
INSERT INTO `users` VALUES (72, 'Linhdtk11', 'Linhdtk11@fpt.edu.vn', NULL, 5, NULL, '2021-11-30 08:50:26', '2021-11-30 08:50:26', NULL, NULL);
INSERT INTO `users` VALUES (73, 'Huyenpt', 'Huyenpt@fpt.edu.vn', NULL, 5, NULL, '2021-11-30 08:50:42', '2021-11-30 08:50:42', NULL, NULL);
INSERT INTO `users` VALUES (74, 'anhnh69', 'anhnh69@fpt.edu.vn', NULL, 2, NULL, '2021-11-30 08:51:01', '2021-11-30 08:51:01', NULL, NULL);
INSERT INTO `users` VALUES (75, 'linhnh72', 'linhnh72@fpt.edu.vn', NULL, 2, NULL, '2021-11-30 08:51:23', '2021-11-30 08:51:23', NULL, NULL);
INSERT INTO `users` VALUES (76, 'hungnht', 'hungnht@fpt.edu.vn', NULL, 2, NULL, '2021-11-30 08:51:34', '2021-11-30 08:51:34', NULL, NULL);
INSERT INTO `users` VALUES (77, 'xuannt', 'xuannt@fpt.edu.vn', NULL, 3, NULL, '2021-11-30 08:51:51', '2021-11-30 08:51:51', NULL, NULL);
INSERT INTO `users` VALUES (78, 'cuongnq', 'cuongnq@fpt.edu.vn', NULL, 6, NULL, '2021-11-30 08:52:12', '2021-11-30 08:52:12', NULL, NULL);
INSERT INTO `users` VALUES (79, 'nhatlth', 'nhatlth@fpt.edu.vn', NULL, 6, NULL, '2021-11-30 08:52:27', '2021-11-30 08:52:27', NULL, NULL);
INSERT INTO `users` VALUES (80, 'nuongntn2', 'nuongntn2@fpt.edu.vn', NULL, 4, NULL, '2021-11-30 08:52:46', '2021-11-30 08:52:46', NULL, NULL);
INSERT INTO `users` VALUES (95, 'Nguyễn Thiện Vũ', 'VuNT56@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (96, 'Lâm Hữu Phúc', 'PhucLH25@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (97, 'Trần Văn Thện', 'ThenTV@fpt.edu.vn ', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (98, 'Trương Thị Minh Thảo', 'thaottm@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (99, 'Nguyễn Thị Hồng Ngọc', 'NgocNTH12@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (100, 'Vũ Thị Quỳnh Thư', 'ThuVTQ2@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (101, 'Nguyễn Văn Nam', 'namnv3@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (102, 'Nguyễn Thanh Phong', 'PhongNT59@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (103, 'Trần Minh Thiện', 'ThienTM@fpt.edu.vn', NULL, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (104, 'Võ Thị Cẩm Diệu', 'DieuVTC@fpt.edu.vn', NULL, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (105, 'Đỗ Thị Bích Vân', 'VanDTB2@fpt.edu.vn', NULL, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (106, 'Lê Tuấn Lộc', 'LocLT@fpt.edu.vn', NULL, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (107, 'Trần Minh Hùng', 'HungTM26@fpt.edu.vn', NULL, 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (108, 'Lương Thị Trọng', 'tronglt@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (109, 'Lý Huỳnh Như', 'NhuLH@fpt.edu.vn', NULL, 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (110, 'Lê Hải Yến', 'YenLH@fpt.edu.vn', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (111, 'Nguyễn Phước Cường', 'CuongNP@fpt.edu.vn', NULL, 4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (112, 'Đào Ngọc Tuấn Anh', 'AnhDNT@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (113, 'Mai Thị Đoan Thanh', 'thanhmtd2@fpt.edu.vn', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (114, 'tiennh21', 'tiennh21@fpt.edu.vn', NULL, 2, NULL, '2021-12-04 16:03:03', '2021-12-04 16:03:03', NULL, NULL);
INSERT INTO `users` VALUES (115, 'hoangvlh', 'hoangvlh@fpt.edu.vn', NULL, 1, NULL, '2021-12-13 23:01:12', '2021-12-13 23:01:12', NULL, NULL);
INSERT INTO `users` VALUES (116, 'dssds', 'dssds@fpt.edu.vn', NULL, 2, NULL, '2021-12-13 23:02:35', '2021-12-13 23:02:35', NULL, NULL);
INSERT INTO `users` VALUES (117, 'dsds', 'dsds@fpt.edu.vn', NULL, 3, NULL, '2021-12-13 23:02:35', '2021-12-13 23:02:35', NULL, NULL);
INSERT INTO `users` VALUES (118, 'sd', 'sd@fpt.edu.vn', NULL, 4, NULL, '2021-12-13 23:02:35', '2021-12-13 23:02:35', NULL, NULL);
INSERT INTO `users` VALUES (119, 'wwwww', 'wwwww@fpt.edu.vn', NULL, 5, NULL, '2021-12-13 23:02:35', '2021-12-13 23:02:35', NULL, NULL);
INSERT INTO `users` VALUES (120, 'r3r33', 'r3r33@fpt.edu.vn', NULL, 6, NULL, '2021-12-13 23:02:35', '2021-12-13 23:02:35', NULL, NULL);
INSERT INTO `users` VALUES (121, 'Nguyễn Thị Mai Phương (FE FPL HN)', 'phuongntm@fpt.edu.vn', NULL, 1, NULL, '2022-02-08 16:22:16', '2022-02-16 15:31:43', 'https://lh3.googleusercontent.com/a-/AOh14Gh1vwIrNqrDLpDOUPlMsuSgr2KB6IBKyKXGo3sTjg=s96-c', NULL);
INSERT INTO `users` VALUES (122, '\'\'', '\'\'@fpt.edu.vn', NULL, 2, NULL, '2022-04-12 18:30:11', '2022-04-12 18:30:11', NULL, NULL);
INSERT INTO `users` VALUES (123, 'Lê Trọng Đạt (FPL HN)', 'datlt34@fpt.edu.vn', NULL, 2, NULL, '2022-05-10 21:05:37', '2022-05-10 21:05:44', 'https://lh3.googleusercontent.com/a-/AOh14GiO9gJHF6S0uOfskT1RtrbABe2qPSYpb7XgcHCCPQ=s96-c', NULL);
INSERT INTO `users` VALUES (124, 'Ha Thi Bich Diep PH 1 3 4 7 1', 'diephtbph13471@fpt.edu.vn', NULL, 1, NULL, '2022-06-09 09:28:37', '2022-06-09 09:29:07', 'https://lh3.googleusercontent.com/a/AATXAJxlVcw2BbJKhh4XCJPOAK617h_R9thusM55o1nQ=s96-c', NULL);
INSERT INTO `users` VALUES (125, 'tuannda3', 'tuannda3@fpt.edu.vn', NULL, 1, NULL, '2022-06-09 09:35:23', '2022-06-09 09:35:23', NULL, NULL);
INSERT INTO `users` VALUES (126, 'Vũ Bảo Linh PH 1 3 9 8 0', 'linhvbph13980@fpt.edu.vn', NULL, 1, NULL, '2022-06-09 09:35:23', '2022-06-10 12:42:33', 'https://lh3.googleusercontent.com/a-/AOh14GjDrx_na2Iw5AZURr89XOEU-yxUxUiSjOlZeVi5=s96-c', NULL);
INSERT INTO `users` VALUES (127, 'dinhvdph13024', 'dinhvdph13024@fpt.edu.vn', NULL, 2, NULL, '2022-06-14 15:56:41', '2022-06-14 15:56:41', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for youtube_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `youtube_access_tokens`;
CREATE TABLE `youtube_access_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of youtube_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `youtube_access_tokens` VALUES (11, '{\"access_token\":\"ya29.a0ARrdaM_wbCmoMDKSUQYQd5sVSuu4ReYmKyHufJ01zgnbhyyiFENd1p6veli_KX82b0jMEg4iBQWW-Kk7nQrot5JoJc3d8LfEBcTsI6hKC5NQjh24LsVkqKPOdBF_DtNV-eT5kv7CdzSM6BC4aZBA66mNl6EW\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ebc6Bb0HsaM9CgYIARAAGA4SNwF-L9Irk-bqEvb9BtPgL-xqHC4ihTl6WGDDwwzkEml4jx2xgdxOOBfdiDzMNoHFkRtUKihpeEo\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1636796998}', '2021-11-13 09:49:58');
INSERT INTO `youtube_access_tokens` VALUES (12, '{\"access_token\":\"ya29.a0ARrdaM_PR0yzeO4AV-G1UEXzf2epqTbCZ1L0ve-jSVdSPaAU-mooTdgyYLPg4Tu_yl2v4UeRjCZOM8VP5vrH7IKgyGWIVOk5ToBiN2qEGaUQRvHO3eSoHmZY9km9_Wc50axm2F9mzATb58EQo6f4CRBxFT_z\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eKG-fcGlUVpxCgYIARAAGA4SNwF-L9Ir-AwvDOkLLeYl-f7iwnVa48amjRdCywEmlklnVE359hc5p3XmZaGwl95vjrMXcKgU8VY\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636798733}', '2021-11-13 10:18:53');
INSERT INTO `youtube_access_tokens` VALUES (13, '{\"access_token\":\"ya29.a0ARrdaM9ylCR5fOVHkeJS7pPALPs2xCYA1wq_roBKC4MmMIoB4Qbjw233SNpX2XQe-uuOcN5HcqyDhZUE0oagYGaZmAUFTjj9-T7ZW1R1JcdK_vmMP9m2cY1P9WSaHflNZbEFOEiOyapFLib8V_2jERkTNA0u\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eUlXBtSaS6NHCgYIARAAGA4SNwF-L9IrRwD-qdvL8zlZVK0Doenf73JSakgw82IgmxBS3VU4OmCdzlOPW8RTXCGHNsBNtvu8dsU\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636802361}', '2021-11-13 11:19:21');
INSERT INTO `youtube_access_tokens` VALUES (14, '{\"access_token\":\"ya29.a0ARrdaM-cnUZ38FiuP_8HZp-t3ycFZG5H0SJJCVUWjVlbTJVZbrlqATT1HZhwdxQzUzONiEeRKn-W85ZESXIIZMT8DALC4ByYL7MI6x8eyR8xfRHm5eG9q3628Wqg3BTG-2kBQBxeJCP1sVKgK2s633H4Y_1eWA\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eUlXBtSaS6NHCgYIARAAGA4SNwF-L9IrRwD-qdvL8zlZVK0Doenf73JSakgw82IgmxBS3VU4OmCdzlOPW8RTXCGHNsBNtvu8dsU\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636856462}', '2021-11-14 02:21:02');
INSERT INTO `youtube_access_tokens` VALUES (15, '{\"access_token\":\"ya29.a0ARrdaM9c6IVDF0Z4U1PI0IGVOJewIM0H4elNt30_WsPzlSTw-FF_aI8GUpf7oZ-CibH7RS215sYBD2EPyFHO6AeZSJtKGdy1migBCiAUJxvUuKmwWGlsj19a15_uEg-3DSAYT4hGFVQdUvGuhZOjgkqr_ghu\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-u8S4IKWTR9CgYIARAAGA4SNwF-L9IruefmGv-WUYjwRIyfEbD0efsH9StxpiAV125suJTAt84rFRy1osFE-vn9zvxTZtsRFmo\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636856864}', '2021-11-14 02:27:44');
INSERT INTO `youtube_access_tokens` VALUES (16, '{\"access_token\":\"ya29.a0ARrdaM9mNBvP_v01vudVLgyGMqcWDUpIBrbMBTYmKVPLFLaMlpGACdox5HRr4Dwa3p_mDZm9yrkxOj4QIBfrMdTz2zDjzAp-dv1dZ90LCmztYDbrz9cHXb4oiy3zZUjxIcvepBPD0LQSSUaqHTdd78sR2u9R7g\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-u8S4IKWTR9CgYIARAAGA4SNwF-L9IruefmGv-WUYjwRIyfEbD0efsH9StxpiAV125suJTAt84rFRy1osFE-vn9zvxTZtsRFmo\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636874451}', '2021-11-14 07:20:51');
INSERT INTO `youtube_access_tokens` VALUES (17, '{\"access_token\":\"ya29.a0ARrdaM9_PYf7RWh_pzsl4KmVPDP9uL6dENz97A0zw5UEtDSvNNsnA7VlBN_RPkViyEHAlzwhV6GQISUa-c5eklnu02zZNT7gyBZGoycTJDgso5JXMdGfI6IpoqRcr_ptV89C-0YP9zBse9IaBV4fXLsgn-E2FA\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-u8S4IKWTR9CgYIARAAGA4SNwF-L9IruefmGv-WUYjwRIyfEbD0efsH9StxpiAV125suJTAt84rFRy1osFE-vn9zvxTZtsRFmo\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636883578}', '2021-11-14 09:52:58');
INSERT INTO `youtube_access_tokens` VALUES (18, '{\"access_token\":\"ya29.a0ARrdaM_mRr-frzEtYkgyd2co89-R5g8bmVccyDJL57v-XWZ-PJ-aY1KEN6vS2_Lk1Pn8Wj3WLbQctiUMxK_WL7mxIPZ3EvbmsBxklG1E9RrfdxcWfLwLk73v_8fIP7bveenqgCEe_7x52Fz12eD-p09FncNsTw\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-u8S4IKWTR9CgYIARAAGA4SNwF-L9IruefmGv-WUYjwRIyfEbD0efsH9StxpiAV125suJTAt84rFRy1osFE-vn9zvxTZtsRFmo\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636941436}', '2021-11-15 01:57:16');
INSERT INTO `youtube_access_tokens` VALUES (19, '{\"access_token\":\"ya29.a0ARrdaM9psXNFaC8Ll0ar6_6jjjdXnchJn9eExOBTtzAbcSSV5mQzz0rKC1jPbGpKLPGHNnVy9E2QG6XcAkoXjLKVPgQZhylEjYpTKRYFqLyXOWpy8i8MINvlCZudQTvqd4bgj6u5-hisTHAyJnFoFK9jsaPd\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e7OPa_16xPZjCgYIARAAGA4SNwF-L9IrctEzFwOXDvx_mLC6eRvhqbkXuoZsEcoq2iMvH3RqkrHkjKAXBksRPYq6EqhJnGqFlA0\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636941594}', '2021-11-15 01:59:54');
INSERT INTO `youtube_access_tokens` VALUES (20, '{\"access_token\":\"ya29.a0ARrdaM9ivzrS0ET3mS0dXhXUtZzfmXvXQNDHgRoItcoa4pSFNGhmDQsMrsUbYr8XN91rf_bVRv_IhRhFEbilgbdvbe9jsgypvnnIlDvXQ4Cu0k7D49u44bM8dr7VBZ3R8Ua2ictXgjjg0TDjK-G0ianAkl__\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ejxRZaRJyvzSCgYIARAAGA4SNwF-L9IrUBoBM2eSngXCH93qch9if0cRVnKOKZLT-ZKQn6iSnTpXBbUJ6rOUiOGoQhXVtlNm3qE\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1636941839}', '2021-11-15 02:03:59');
INSERT INTO `youtube_access_tokens` VALUES (21, '{\"access_token\":\"ya29.a0ARrdaM--t-BQ5omLUa7ZHGKh769MnMFq1quPZQSAycGfXofUJmFZqGqAdy7Lf4lMj0rQO5hq3GI9ex1_G7Nf5ccdXXlb5besSzhd00EIfrQbA82KkaRuuSenArTizvF3bTKiCVFeJZTAnNIUtkTTAj4-Q0kk\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eKy_u4jKgGl3CgYIARAAGA4SNwF-L9Ir8G2q7PRyCDh3GWvhNVHcbTxn96U2kLbfFSyKe8O8NEWI79dpHyGFkfQZLjL1OT4dehU\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636941851}', '2021-11-15 02:04:11');
INSERT INTO `youtube_access_tokens` VALUES (22, '{\"access_token\":\"ya29.a0ARrdaM9GqEtW43CQ_-I23vx5dECmBflulFFHu7lSN0oJMH5CPkeG2VCfWw1DA0vQKEfGlatvkuHhjikNG5vVbmE0anefcfF6Bcg-HIlLePjFL-w_HpTo_etVpvETE6GhuhuohCAZxcPPN3uAuxOtZl7yfPic\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ex5uBHVsg4t6CgYIARAAGA4SNwF-L9IrghAGK9na27yozgPL9dnYsB1sI0RXbOIhcs10GcpGMaMhaElg11KNZt_3usmuqip7ZlA\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636941970}', '2021-11-15 02:06:10');
INSERT INTO `youtube_access_tokens` VALUES (23, '{\"access_token\":\"ya29.a0ARrdaM9AnL6A9FnI_-3QRWPZx5yiT5aHh_mgSVW1v9QTrWKJJFi0KrwcFrMqvm6UWtCzu_WT_S5qXlfyVMhFvEoB7R96rg8u2-BBQ2ECrKXetnRoLPqAurtiAq-gePIyN7iNLlst4PjQ49PwIIHt5DoYL72esQ\",\"expires_in\":3598,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636944192}', '2021-11-15 02:43:12');
INSERT INTO `youtube_access_tokens` VALUES (24, '{\"access_token\":\"ya29.a0ARrdaM9gWGMqfZyx_JR97PLd-WFVEZtEe4liJSzOrz2Kg0xRBpUCHj0bfAJqWL4P1q-p6vLoNyDMGzO_WV68V1-DdIMzOgJhL4SIMsBkHLGbqnO22N4RC01AelrPOdURb_PtFBBNMf88-463fmV7EVc1lbah\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ev_Il51Q7DQXCgYIARAAGA4SNwF-L9Ir_PlBhwh_7btipkHqAVRpGnqhM7V_iBhniHoa_BMunZI8enf5GJkxXcOx5djf42kxGyc\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636949090}', '2021-11-15 04:04:50');
INSERT INTO `youtube_access_tokens` VALUES (25, '{\"access_token\":\"ya29.a0ARrdaM9Qo1zNE2ibc8VtHj9bWOyDMcTq6jC1BDf2Rwjl99lZRyJvD_IiBT0rfa450EbxRtDc9cz3e75KwM8YnkFvqPR6aoX9x7aR8VwM2k6UJSgKtgEQMGESkOVdVkneb-hPT19Wgp1jtiAX7h7EmOA7h_7f\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1636950975}', '2021-11-15 04:36:15');
INSERT INTO `youtube_access_tokens` VALUES (26, '{\"access_token\":\"ya29.a0ARrdaM8mKc_zUsB0SWkH8dkrEn80qx490Ts6TyXT8-cGIKsHjOGrVb3CJK5j5XuqJ1D5akq2j5v8Cj5q-l4DFPTFoW5qlg3Biz3p_PEilx0jJMnMQQ1BswF6rxB1_XtPI4wqB4hMi6eQJpncAB9Arx2bOxYA\",\"expires_in\":3598,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636951007}', '2021-11-15 04:36:47');
INSERT INTO `youtube_access_tokens` VALUES (27, '{\"access_token\":\"ya29.a0ARrdaM94mroGYRhM0bsE1kWdsKm6CU6tX68T091E7NwBUQqevxJ86uVjbo6NL2GaCoQBCo5e_lj5k6E1s9pUEmLx6zzQF0PNS1QG0IwOyAKu2JLM-opLukXplCwWJvL8llewM1TzYAgHZrnrYlDNl_pSawcH\",\"expires_in\":3598,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636951045}', '2021-11-15 04:37:25');
INSERT INTO `youtube_access_tokens` VALUES (28, '{\"access_token\":\"ya29.a0ARrdaM_CD41d7U-CPc3VAjg3ift6_Ur_IuQ2YNjhQfeOP1MOSDnQrAsL52_No5EjHDxBabsfUUHd7-qf2a_wdMwDogvL9fzUM4785kGqvcTt_usbfuGXBkUN7hoGLytifF5MEMOlV-ZqWS93HKhWu8a4_C2q\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eiPoCDY255nNCgYIARAAGA4SNwF-L9IrohNia637FQBYOeanQrwuN6hsM0f1jcjHzJUxG7b4bTWtjircZiP7zDS952cyVa9shnM\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636951349}', '2021-11-15 04:42:29');
INSERT INTO `youtube_access_tokens` VALUES (29, '{\"access_token\":\"ya29.a0ARrdaM-ItKPWaz3SUMfrSyfVWUUWztW_ZwU4c9jZIEssU2-50ixT7KqkQKRucqaRRJtDOxtgJDHH_xP4u52ErvYvIXo3eCqBexiadJpPdCsqXGgEA8Ff1dacOj9GHLsMZ4bfxyBtNcBVtCdS2ENt7jO_tGg9\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0efiS6ZqiRD_4CgYIARAAGA4SNwF-L9IryP2JNIkNVJkgqETotCxzAHHZ8UL91BkgqC8WHs2D1xHNaXmP8SafHa3EbH7Ca2tzEOc\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636960262}', '2021-11-15 07:11:02');
INSERT INTO `youtube_access_tokens` VALUES (30, '{\"access_token\":\"ya29.a0ARrdaM9ketUzkWXN58tofALdw-78tveuqFPrb8JcfruWaS13EdvVaJEL1yV8fsV98hZqXNbn9TguHmqhXV53pa8EBabLJCKa2PUB739ED3InbNeoxLcSGleatSmecN_FaCoZ9FZuQIwSHLQeNTWk-6FV4zHU\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0efiS6ZqiRD_4CgYIARAAGA4SNwF-L9IryP2JNIkNVJkgqETotCxzAHHZ8UL91BkgqC8WHs2D1xHNaXmP8SafHa3EbH7Ca2tzEOc\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1636970404}', '2021-11-15 10:00:04');
INSERT INTO `youtube_access_tokens` VALUES (31, '{\"access_token\":\"ya29.a0ARrdaM_A6jPvCNCySlDNXxBCE4Qn0yOGusIxwBGvv9nwVnDm34-9CtWrC3Jmav2JI4yBdKKFKwDwLOjt8GZf9HrLIREdxDgzPr3yc2ph6phaXuQK3ylGjDUUi6F9Ye7pd2QQXQ8rKRFe9t0zxMPxTxLI8W1B\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e2nwJ45Jt9FFCgYIARAAGA4SNwF-L9Iru_ayOs0qLaWVaIRM5C8wNm74Uyl8z5xgproPuxnxEeAwyGzG26nA9dsN9L0blOqNgf4\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1636970676}', '2021-11-15 10:04:36');
INSERT INTO `youtube_access_tokens` VALUES (32, '{\"access_token\":\"ya29.a0ARrdaM94EH42VTF6T3jSH6IDEay7uFKKVc4hreRJkklaSx74oZNgJdUAtjS-SZVPSaihGVCn1SMMY8y78Vk8l55-YSjp5INFTXKqTDzPNzm8G19qlP_yISSHTqxmHLdDhjFvUej4Pf-1034cUKZ9uTSTemOx\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eE_bwfbZ1kjhCgYIARAAGA4SNwF-L9Ir_NxIItXr1Wus78n45hgHge8BnH97T8LWkQk8ARrRm-hC8j4ojmdd8yhJTyzroxo4fBQ\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1636970865}', '2021-11-15 10:07:45');
INSERT INTO `youtube_access_tokens` VALUES (33, '{\"access_token\":\"ya29.a0ARrdaM-HEwPeabL7PraDcoIut6af-ByWwbejK79B7x9AzUJuBzl2YAbFsYNopQMgNpOG9iINVMern5CzIm-Zyr6oVhMPQXxVWXT_EakPLrfnbIgoK9LPgVl_mqBaEoA6OdrJQOUvuo_dZvosPxdqM21xifB7-A\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eE_bwfbZ1kjhCgYIARAAGA4SNwF-L9Ir_NxIItXr1Wus78n45hgHge8BnH97T8LWkQk8ARrRm-hC8j4ojmdd8yhJTyzroxo4fBQ\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637026875}', '2021-11-16 01:41:15');
INSERT INTO `youtube_access_tokens` VALUES (34, '{\"access_token\":\"ya29.a0ARrdaM8ipQWf0Uby9YbuJbCKXtih-FgxYTOik2vIGUMSkjslYH_sNwDV66-trdxNoxm2C6JJhtqKGdi_Tcp81iwRd-juM3H1KLKxV9VQDi2Hmxdf9VTXXivihDKRnG97daS_1oatMaG1NN59_S0DVvKx5vGL\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0emsN1Wzm21oJCgYIARAAGA4SNwF-L9Ir_qFV6WHg02PCs215sL9vIF8EOAPrQXbBXXCbdCTs_uqXmfDKdy3oOJdaRWTLPxc8E3Y\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637026907}', '2021-11-16 01:41:47');
INSERT INTO `youtube_access_tokens` VALUES (35, '{\"access_token\":\"ya29.a0ARrdaM96EY7wDDSgw_FeJYHXtZ6JRkPXSo8kAIhi37z3PXDiYfssRXqGx2nzDU6j1es3jQBfdWqkonYkfDVdnONVPP04_BbuvC5SZFPKsIeaPDBOCxWggVjYJACCkprg3v5aCllUZcoUgNF2Aia2L6CKTVRU\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-aFImOYVk1jCgYIARAAGA4SNwF-L9Ir-49FzD93Y0Bex708MXkPcpRrnUnfzfiwOJ7u4NK9SQtI7cNqp_yckdmrJ8UcXpdemes\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637634143}', '2021-11-23 02:22:23');
INSERT INTO `youtube_access_tokens` VALUES (36, '{\"access_token\":\"ya29.a0ARrdaM_E65ZlISmdAI-QC_TFVAOJrNh4tr2_vx_J_JePOpaMJf5EAi-gWrD3B1_a-Axj7YfR64eF_kHzmx2_6S3Nyx7EqwbRfxpdsyWiiR11mb79ifgic0QavcrqZ3rlM2jsufNViUIyGIFJXDdJSxhFpmxDig\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e-aFImOYVk1jCgYIARAAGA4SNwF-L9Ir-49FzD93Y0Bex708MXkPcpRrnUnfzfiwOJ7u4NK9SQtI7cNqp_yckdmrJ8UcXpdemes\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637719525}', '2021-11-24 02:05:25');
INSERT INTO `youtube_access_tokens` VALUES (37, '{\"access_token\":\"ya29.a0ARrdaM-QZtc_YHuwrPNkXK3cUm6IVGeHO-MvWGEScNFLFYhGUvpXVq-bX2ohxMOG3FBASq59SomRzQ4LoXVbMUYDkrupX5Dy9kpz9uJGnq-pW6TS9yIc-5zQm20yTaOXXPqJvZZZp98NLDv0_OWRqhH4nYAc\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eearVUBTJdC0CgYIARAAGA4SNwF-L9IrQkz9mg7RP_Fb7kjHLKw-jjjst0xyCGEOhLasLUbXFIreMon-3A39ofAB_3eeRyihSxY\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1637726882}', '2021-11-24 04:08:02');
INSERT INTO `youtube_access_tokens` VALUES (38, '{\"access_token\":\"ya29.a0ARrdaM8SmJaDZCg4XwHqGx9QgTEi9AQYLRbb7ugOJ2sNcDH346noW7_W3xWaua2mbU2YtSFprnq6tVKmg0UH7LAlnuDUF7CRihDjwpF2V7VO2BslrU6FQGsxI7fE6h4MbxBc-D0r2oLr8JkxaJlCuEFCemd5\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e4nRMRdrMXjvCgYIARAAGA4SNwF-L9IrsuKRf-jwQr-ik3GRRviVscpCJAgjzitmRq4BsyA1b1br56BeCYDHk1cg8BwvE8BRnHg\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637737597}', '2021-11-24 07:06:37');
INSERT INTO `youtube_access_tokens` VALUES (39, '{\"access_token\":\"ya29.a0ARrdaM_XN5b2OTWBtoD61JXI_UhqdCivPPXUnDpP4pbZpqy6fW-6H-GiQkVh4s7BoNzldjvYMg6UYfBPgNFu1HO2Yi8d7GmtARWY20L8GFGWbWuDBODl1TDfGufe7HBzHAIwt2w1ucqPPNWDaXTc3JmTV297\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e4kV0qzFZTI3CgYIARAAGA4SNwF-L9IrJQVn455sDkiW2kUPJHKv4K-7mfj9bD1MqIjVtAHb4bNiPE43_nrfgomwspBFiP-BTa8\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637743228}', '2021-11-24 08:40:28');
INSERT INTO `youtube_access_tokens` VALUES (40, '{\"access_token\":\"ya29.a0ARrdaM9ulLwlJj7JCkWSmLFDgWgzCsuSjuI-m2-oLJ1G4GA-SYoJetAvPhCvMjtkpCE-vjRp0MGwrHOUSOhe8gFMkXD1d2lfTN-OHOyZxt4MF04odU_UkSmFjAUBs_ZUoXwSL1MgVDiO8KF2ojW3UGsKmmNt\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e1YKZMIN2JOpCgYIARAAGA4SNwF-L9IrYK2o4QlxFlHqLnldKLUF4sCIGvhNvOAkgWnCiiijxudZgPeFJpsdOTLXn608_shWLlM\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637745742}', '2021-11-24 09:22:22');
INSERT INTO `youtube_access_tokens` VALUES (41, '{\"access_token\":\"ya29.a0ARrdaM_anJMrEJ_eHbqtDa0LZ6SD0grumEILkle79QJ3idkULgspbBjPmWPJ3x2F08VBoJpQuXgFVkv6-zPQaUFcTHIk_n-VLskG_UJVCWvuYhT0LP018IlYUjia8BlesShSlXZvoAUMZIsafZqJuBrZjRhb\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eSZk3MYQw6TzCgYIARAAGA4SNwF-L9IritaiBcWWjfvRiK_zcoOchrrOxOIuTy5dK0Oq4YwF-UlEJW-CYf7uiWGSa6HwVLLmisc\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1637763530}', '2021-11-24 14:18:50');
INSERT INTO `youtube_access_tokens` VALUES (42, '{\"access_token\":\"ya29.a0ARrdaM8Se13vA7phxwMx2ktJBmdPqTle_qYNEHmBfTQZHYNEIp86jLFH0WbsCK_1EBkYT4rMhEA8c7YQLo3ctaDdXleTVkMip_TcCclpDH5relYK7nVBTDmsCCNzHNWGQHXnkOtK46twkabnt5xUVo9xht4b\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ePfCYwGsTAU1CgYIARAAGA4SNwF-L9Irh7qY1wMy-BJ0fhSSkrEoCQYASIfadc5k0HrrU-I2V-s49R3jUXbjQMnf88HsuV_3Sik\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637763582}', '2021-11-24 14:19:42');
INSERT INTO `youtube_access_tokens` VALUES (43, '{\"access_token\":\"ya29.a0ARrdaM-TEtn9oznYAY-vb4N_JPpo2khfs_ZxEM7eaIFp7kJKIYKOsck0KjPdgIG-lf_JUalEgw-0oX6rUNyCiH1cAO66aIQ5YZJFxFc1-qphMhjptKjxoimyFi5abmnZIkd8Wo6VCAd1B-QtehOgZvkol1T-\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0ePfCYwGsTAU1CgYIARAAGA4SNwF-L9Irh7qY1wMy-BJ0fhSSkrEoCQYASIfadc5k0HrrU-I2V-s49R3jUXbjQMnf88HsuV_3Sik\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637773170}', '2021-11-24 16:59:30');
INSERT INTO `youtube_access_tokens` VALUES (44, '{\"access_token\":\"ya29.a0ARrdaM9N0DVTdj6WS3pfPEkcyZmORp2desuvtCltUuSKpsvf3O2EIWUfJqcOsdR_JQAjRw5VfWPvsciUpiT5RTo4yNAe3gVnERT0NuJNCZSCeOvKZIUIey00UuZaINAY4urphsl1os83lLgGltWoEjxNulUy\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eDoPsC3Nc_HzCgYIARAAGA4SNwF-L9Ir5tggT5rKSNviBsK3vVvmPzsXOBrSSwE2sEqQ0d5I-lZDvE3IhMG10RsJcoj1gpfU17g\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637811313}', '2021-11-25 03:35:13');
INSERT INTO `youtube_access_tokens` VALUES (45, '{\"access_token\":\"ya29.a0ARrdaM-De-90b5Z5dkMJF5TriL4AGfsSfnpjD-U4_bbxa08LKZwxptzLABhZ4DL2wXHj2mPrxXuYMC5r5QSm1WH8Hx0KQLnIvCzRS1wE6DpvXcJ4c9714rtzpi_op61rOdJIrUDK4IMy1jnt3227XeO9ENZP\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eB0pznLdzGNYCgYIARAAGA4SNwF-L9Irkb4NkZmEtCfMsCf_q5T9g5mo27QvbUHJ6AyrQpS-KjX0ni9tUGfBOZgDkhthJCufB-Q\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637818067}', '2021-11-25 05:27:47');
INSERT INTO `youtube_access_tokens` VALUES (46, '{\"access_token\":\"ya29.a0ARrdaM_3-HqLEMAU5hO6FFiE1ajUvt2fkgZpTCoVl3-1xt5qJzqfvXXp134TF2wMu5WvPcUQGlc4xkccj4uR-Im_ANIJR3cXV4quV_eh0rkePIhlnrtp9FFwCf1BUkpggv0hvz98LiafyYDGF_OW-BhgV_Tg\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eM_V7JoqrNhqCgYIARAAGA4SNwF-L9Ir20uFRnEJT_Hge7y9xOtBYpmKgs9zbPV9aC0zy7-dbSyPuHH1krXL3Y-fLN5HxJok5vk\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1637819201}', '2021-11-25 05:46:41');
INSERT INTO `youtube_access_tokens` VALUES (47, '{\"access_token\":\"ya29.a0ARrdaM8SdIlmEK18o3I3MsGIDoLFFQDb-V3gWmYmhsIK1Nnm9Ht_ItpcUts4ejMIsVncfsGzfLjDRA1MI8QnlBDYR54CdjiCe32oldduOtxOPr3YDVBpXxlu_YuDwzGlQVZE1OxRliFQQ-4ctyIJ-S_LPVg5\",\"expires_in\":3594,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637825779}', '2021-11-25 07:36:19');
INSERT INTO `youtube_access_tokens` VALUES (48, '{\"access_token\":\"ya29.a0ARrdaM-5NxfkBP43ju3nULEmyYfzKcu9lASI2i9KIR3RzL-tftCg25tUMb2hz9foKIWEyLNWsgf5CG-5MrBJRfeWCxRvJXEKRdH9OsmcldZl3bQOR8vhOMF4UXeAbmiTFBHugu489Ad0TTIvv5GeUUisTY2k\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637828958}', '2021-11-25 08:29:18');
INSERT INTO `youtube_access_tokens` VALUES (49, '{\"access_token\":\"ya29.a0ARrdaM_6lg1xUJNjB4SgRb6hSkb-ZMgGEgEpKDyX3m_XICl_JENYN3rw8ABgUTVOVSV4QDY1e2PKcxZVykUygasOsoVfQykE08SUCcbkwMa5WzNHUY03ZRzqIleh9VHE2Q-8blPVA7i-_1hAELR-TY80qfz3\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637829604}', '2021-11-25 08:40:04');
INSERT INTO `youtube_access_tokens` VALUES (50, '{\"access_token\":\"ya29.a0ARrdaM8cK6Ru2J1ppV388YP4AtmXCgPEE29J2H-RNPAVSEeZH68eVuNorLFvr_670oOsTkyavczVCO2wfUMC70TF3Y8kZRqzwT7Q1AU2nJA_VJHVKsM7y4NxqR_AwHdF4SB1vV1chzzOdGPtCeweJULsTzG2\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1637830808}', '2021-11-25 09:00:08');
INSERT INTO `youtube_access_tokens` VALUES (51, '{\"access_token\":\"ya29.a0ARrdaM86wzXWbozABwQA095xURpC3dNf2lchxQ9Fb1pU1vpMmFBzqGHDQZcSTAR358dZ3sMDD4UCg6WZ14znQLmdrPDD1qSXNC0kxRV_cEfBIObadPRWgJ16N0y9IPZsDXROcbsPeLJdAkFPMHCJW8_VHDXH0g\",\"expires_in\":3532,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637840278}', '2021-11-25 11:37:58');
INSERT INTO `youtube_access_tokens` VALUES (52, '{\"access_token\":\"ya29.a0ARrdaM8eh2dyLuQDOCvvX-8xo7wsU2QCeL8IGBiGae2wIVwFczCTsJrvXl8uD294tphq7g5ofwdZ5giksbLP0LsxKN6yHzJ6qauEkEJoLvcU2emzqJa93ORujR0IXKe8k_SspVxEXTptklBfVlxQVaPEinW9-g\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637840287}', '2021-11-25 11:38:07');
INSERT INTO `youtube_access_tokens` VALUES (53, '{\"access_token\":\"ya29.a0ARrdaM9ExTFTehXxntXQz2-Zv9SyFOcgYwx5d3_Y7te5RJF8JY1sKE692tTV2Wjjiyi3CEXu68rRUm4n1h2w-jUk1dGrTbDulU9i494rWIE3RYLajPihHGv22Enj5kPbMGNsTYsym4sD6d1vXDh5bvuSOsgQ\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eaOR9WLnoMXCCgYIARAAGA4SNwF-L9Ir7B-LEvMeQHlEq2bDIhqLfhNYGSBr-9xp3XZiA_BC78Qh0TUkA0e4BKLbyPmg5vkWie8\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1637841289}', '2021-11-25 11:54:49');
INSERT INTO `youtube_access_tokens` VALUES (54, '{\"access_token\":\"ya29.a0ARrdaM85lf2Q9q-fiVlaSI6NgaZ5F-3suEV2_PSzhRjpyP5uMHMstbMUnzylYfy1JxUE-vZpqaHjQta55mJBPEm21DN6j4MTY4qQGGc3QylxEgS2alni8UmO8f03Kh-l69lHgSqiwe7gVNAiQcTsF1hkwuLR\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0e_gDqyzIj_GmCgYIARAAGA4SNwF-L9Irk0S8xqCROvrUpXaTpeufzsb4_wZZFb8O6aBXpi_PzOCKa21oxtdzHm7X2-mf_G5-4eE\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1637841599}', '2021-11-25 11:59:59');
INSERT INTO `youtube_access_tokens` VALUES (55, '{\"access_token\":\"ya29.a0ARrdaM9jxcJhK0xg-lvGKqJbiA8CZVRVFLXOrQejGvNA5KSF3QGnphwuCsacUMYlfoKlzhV7DCj-crY70sYVC1tjTB7UAccc9o9KP02v3Gp9bxfUwNnERkVYwT4HPFbWu53qBUvirlmCJMCAGpJKuLCvQptMLQ\",\"expires_in\":3593,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637842991}', '2021-11-25 12:23:11');
INSERT INTO `youtube_access_tokens` VALUES (56, '{\"access_token\":\"ya29.a0ARrdaM_mRbYPygsF_Y1x65GG99nke0UNm6nzgO01yir_Rh-xm4Vwy9YJHRS8J6qHkf98s8uDT4aFnHkGnsKHnr-UZJq0kUwlzvrkSNbGlq4PTpOZFFCVZltOlSiMRIr_GP5XWF15g6xWDmp4s-WCohTk37s9\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eX7xbY65YcVsCgYIARAAGA4SNwF-L9Ir39JoEamMhDV7z9ul7S9VNy7CxdsDX3K0m1Y0R_8E2cPv2gyneOmu7C3lAfA3Hx9I-_E\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637893914}', '2021-11-26 02:31:54');
INSERT INTO `youtube_access_tokens` VALUES (57, '{\"access_token\":\"ya29.a0ARrdaM-WZXIpDV_EtNrFbAgIH6Q3vlo1xQWVcsfyicLXrfvDUf_r-H3K8GhWMDHWiNqFMm5ZRVxdlR-43ogWnbpiAaxoEPcXahSNNiwlD81A3K2Z7cIBU1qwFQ2bWQWqDlEeQWuc_DKQqc9GOydE6w5COzsEtg\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1637914056}', '2021-11-26 08:07:36');
INSERT INTO `youtube_access_tokens` VALUES (58, '{\"access_token\":\"ya29.a0ARrdaM8IfSa_bGvAh_RA9XOjo2O9r_U3rEZlyuRi8AUZzH-jGQ-fCDFTv1JlXUzO6bmhr23WzIzlHcRu2ZR-sKOqS-pSyYZVlf0dmhJCDc-WlQdCe3b7Z5IyKW6uJL_DaO3rW1KkKa9vBUQMIE_NVhlCHd4n\",\"expires_in\":3599,\"refresh_token\":\"1\\/\\/0eGm0kSmAGIX5CgYIARAAGA4SNwF-L9IrKhYgNI9LlyIQZadf3jhD9POhmJi0ZZ8Qka0t_1Gv0TM1dJcqybH22B0u8lfLNwtrI2k\",\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1637915036}', '2021-11-26 08:23:56');
INSERT INTO `youtube_access_tokens` VALUES (59, '{\"access_token\":\"ya29.a0ARrdaM-MCBXGuMCrazUdnhbjwAUkZXKQTV_GJ6R9fUC4UGkYzb4TugZ5-A8hrCj30NhnAHbebxJZRXV3__YzOInP_GyFJKh97K70qQl5QpMqDqnv7zp2MEFlzYZLtUkCEJWgp77-xGIOUsEOaufrizwiU9i3Qw\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639371812}', '2021-12-13 05:03:32');
INSERT INTO `youtube_access_tokens` VALUES (60, '{\"access_token\":\"ya29.a0ARrdaM-7EGSBMlwYx_SxsaLehw9rmc-DWaOBAIS6K8ahwM3aZi7kUYkb9nCaY0dvUll2rXJhno4k4VXzp5t_uzk_7tIkPm7bsrRYL5Z1J5XdmofUYFsPm5KAkkS-anNtrbMtf84Un9q9HWkOlMjuMwf07JN3Lw\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639372932}', '2021-12-13 05:22:12');
INSERT INTO `youtube_access_tokens` VALUES (61, '{\"access_token\":\"ya29.a0ARrdaM-P6EByWz6EJCCuIe79MBltq8jqAGciH4yNSkZzMYaVzZyinXya7ixj5So1gikaPVedAyMDiOCByaEnKkQYnlLIlXujmnQnWC4MYMuDX9PysNXdNwgd-SXoTR5hOs8ngyFbQiezykZv23iubtk8zKX0iQ\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube\",\"token_type\":\"Bearer\",\"created\":1639390472}', '2021-12-13 10:14:32');
INSERT INTO `youtube_access_tokens` VALUES (62, '{\"access_token\":\"ya29.a0ARrdaM-MWYYa2QU2CuCqzXfl_FjRo3p9hpxh06b49AlrejClhQx8WSMLqvy-X5lf2ivIquw_6kLg9-7oFAHPau92C4QLiyMJwFAgdPw_x04DZDgKD6gFccybruAu46Bwcnu2n3Gbinruj02TS3TJuRHecW36Gg\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639464084}', '2021-12-14 06:41:24');
INSERT INTO `youtube_access_tokens` VALUES (63, '{\"access_token\":\"ya29.a0ARrdaM_PWsOttcEU5u0mNydsBK-SA-pwaQjHLrpKHxq78B1mezX0LAdLO6n7pyCj9urjsVp23JXo2Yve2fGHL-1p2OKBtxkzHOVRNiNiGgHAOG3oDv4zvwl7S-9eClOiQ6ynchv8czYu-MDCHedF-FubIOexSQ\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1639471850}', '2021-12-14 08:50:50');
INSERT INTO `youtube_access_tokens` VALUES (64, '{\"access_token\":\"ya29.a0ARrdaM8CL7UWnnASKxQRKOoqnltQtByJQ9w4Pq1qtqZINu89iSw-beqwfOJ15t_ven_flduGVd-ep_4VnCYZRwgoZdSOTU4opNN1TyMs7fZml3qaaqIxnLbd3wFbl18bwb5LSYRT2_L_6l4z6qS_6ohnIcnqEQ\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639483842}', '2021-12-14 12:10:42');
INSERT INTO `youtube_access_tokens` VALUES (65, '{\"access_token\":\"ya29.A0ARrdaM9jlV34VE5H_xIcrad1mpof61fmGJ4S-bD5rV7hC8m8mlhIjM27y05U7m6-gXe0ljYNbvaNmZQhFgVsg2Fso-6O6uydL2d2dVd7qOnzDa8LVhK8U6X5AClC3P1XZ2nfekyWKYsd9Cb5MpzEGRk8txXfnA\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639528205}', '2021-12-15 00:30:05');
INSERT INTO `youtube_access_tokens` VALUES (66, '{\"access_token\":\"ya29.a0ARrdaM9Z6vTsvDlhtf4QJ0YV3_A2plYjtHVa2X687sQOrImsk-5jOj1r0LEvnE32RgW5YyS3dPDnjfD5R10HW9RymGQ7nMxd07T__3xng-cOsjZVWwV9VQHGBFpjbhm87tgNmZStofWZJlzHuzZTxTJpqxjOUlVIiSmXzw\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639555126}', '2021-12-15 07:58:46');
INSERT INTO `youtube_access_tokens` VALUES (67, '{\"access_token\":\"ya29.a0ARrdaM-BCQMV2vlPDjSsBEQqnmmG3ubI1hXQbYiJY-l1aNNitpI8E6cOPCg39mX0bRvCnLmYOBjb53mlZiKUrZ4fskxAcExg_9HeL_Cy4jruk9tS16_gQ0spEZ42Zly7pFfb5YcX4uXEYFL0K1gW9HotiAgvG8uqw8OlK1I\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly\",\"token_type\":\"Bearer\",\"created\":1639583130}', '2021-12-15 15:45:30');
INSERT INTO `youtube_access_tokens` VALUES (68, '{\"access_token\":\"ya29.a0ARrdaM-g8UfhFHq_gJzew8Gni2zb0ClR8LylLJLtwgkxzdG-j6VyFRG3SUhqaiLYOAW5Vvb-mc6Ab9bLk9wwP1jhaAA6Fc9TXVyLAkMXg4COQHwZhI6BbI5cTUJplSRrkyEtUPwKFRMbFs-YtN6LuBiBZhFQbVcihW9skA\",\"expires_in\":3599,\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/youtube https:\\/\\/www.googleapis.com\\/auth\\/youtube.readonly https:\\/\\/www.googleapis.com\\/auth\\/youtube.upload\",\"token_type\":\"Bearer\",\"created\":1639641262}', '2021-12-16 07:54:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
