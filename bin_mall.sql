/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : bin_mall

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 13/08/2020 23:07:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for a
-- ----------------------------
DROP TABLE IF EXISTS `a`;
CREATE TABLE `a`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` json NULL,
  `sex` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of a
-- ----------------------------
INSERT INTO `a` VALUES (47, NULL, NULL, NULL);
INSERT INTO `a` VALUES (48, NULL, NULL, 1);
INSERT INTO `a` VALUES (49, NULL, NULL, 1);
INSERT INTO `a` VALUES (50, NULL, NULL, 1);

-- ----------------------------
-- Table structure for b
-- ----------------------------
DROP TABLE IF EXISTS `b`;
CREATE TABLE `b`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b
-- ----------------------------
INSERT INTO `b` VALUES (2, 'b1');
INSERT INTO `b` VALUES (3, 'b1');
INSERT INTO `b` VALUES (4, 'b3');
INSERT INTO `b` VALUES (5, 'b4');
INSERT INTO `b` VALUES (9, 'b6');
INSERT INTO `b` VALUES (14, 'b6');
INSERT INTO `b` VALUES (18, 'b7');
INSERT INTO `b` VALUES (21, 'b8');
INSERT INTO `b` VALUES (27, 'b10');

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES (2, 'c1');
INSERT INTO `c` VALUES (3, 'c1');
INSERT INTO `c` VALUES (4, 'c3');
INSERT INTO `c` VALUES (5, 'c4');
INSERT INTO `c` VALUES (9, 'c6');
INSERT INTO `c` VALUES (18, 'c6');
INSERT INTO `c` VALUES (22, 'c7');
INSERT INTO `c` VALUES (25, 'c8');
INSERT INTO `c` VALUES (31, 'c10');

-- ----------------------------
-- Table structure for mall_activity
-- ----------------------------
DROP TABLE IF EXISTS `mall_activity`;
CREATE TABLE `mall_activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `rule` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动规则',
  `start_time` datetime(0) NOT NULL COMMENT '活动开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '活动结束时间',
  `online` tinyint(1) NOT NULL COMMENT '活动状态 1 - 上线 0 - 下线',
  `enter_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '首页活动展示图，也是进入图',
  `head_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动头图',
  `background_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动背景色',
  `share` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动分享相关设置  json 字符串',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `user_id` bigint(11) NOT NULL COMMENT '活动创建人',
  `rule_color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则字体颜色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_activity
-- ----------------------------
INSERT INTO `mall_activity` VALUES (4, '新手注册送优惠券', '1. 新手注册送优惠券\n2. 活动时间7月10日 -  7月12日', '2020-07-10 00:00:00', '2020-07-12 00:00:00', 1, 'other/user_coupon.jpg', 'other/ceb7ba5.png', ' #9AB9C3', '{\"onShare\":true,\"title\":\"赶紧邀请好朋友送金券\",\"description\":\"1. 邀请一个朋友注册则送一张价值10元的全场通用优惠券\\n2. 邀请的朋友每消费一笔则返钱10%\\n3. 活动时间7月10日 -  7月12日\",\"image\":\"other/f43d920.png\"}', '2020-07-09 11:12:50', '2020-07-24 22:44:16', NULL, 50, '#FFFFFF');
INSERT INTO `mall_activity` VALUES (5, '优惠券减100', '1. 活动规则测试\n2. 活动规则测试\n3. 活动规则测试\n4. 活动规则测试', '2020-07-16 00:00:00', '2020-07-22 00:00:00', 1, 'other/2a65b61.png', 'other/77be6cf.png', ' #9AB9C3', '{\"onShare\":true,\"title\":\"满减100可分享\",\"description\":\"1. 活动规则测试\\n2. 活动规则测试\\n3. 活动规则测试\\n4. 活动规则测试\",\"image\":\"other/e6c4aaa.png\"}', '2020-07-15 15:47:58', '2020-07-24 22:44:19', NULL, 50, '#FFFFFF');
INSERT INTO `mall_activity` VALUES (6, '测试活动', '<p>1. 此次活动为测试活动</p>\n\n<p>2. 活动有效期 2020-07-27 至 2020-02-29</p>\n\n<p>3. 我是真诚的希望各位玩家优越的参与此次活动，真的，不说什么，我就是想测试哈，我这个有没有问题，你举得呢，歇息</p>\n', '2020-07-26 00:00:00', '2020-07-31 00:00:00', 1, 'other/cc5137d.png', 'other/ab47752.png', '#FFFFFF', '{\"onShare\":true,\"title\":\"测试分享\",\"description\":\"<p>1. 此次活动为测试分享文案</p>\\n\\n<p>2. 活动有效期 2020-07-27 至 2020-02-29</p>\\n\\n<p>3. 注册多多，优惠多多</p>\\n\",\"image\":\"other/ad9eff9.png\"}', '2020-07-25 10:02:22', '2020-07-25 10:02:22', NULL, 50, NULL);

-- ----------------------------
-- Table structure for mall_activity_coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `mall_activity_coupon_template`;
CREATE TABLE `mall_activity_coupon_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `coupon_template_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_activity_coupon_template
-- ----------------------------
INSERT INTO `mall_activity_coupon_template` VALUES (1, 4, 26);
INSERT INTO `mall_activity_coupon_template` VALUES (2, 4, 24);
INSERT INTO `mall_activity_coupon_template` VALUES (3, 4, 25);

-- ----------------------------
-- Table structure for mall_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `mall_activity_relation`;
CREATE TABLE `mall_activity_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL COMMENT 'mall_activity 的主键',
  `relation_id` int(11) NOT NULL COMMENT '关联的表的主键',
  `relation_table` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关联的表描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_activity_relation
-- ----------------------------
INSERT INTO `mall_activity_relation` VALUES (17, 4, 26, 'mall_coupon');
INSERT INTO `mall_activity_relation` VALUES (18, 4, 24, 'mall_coupon');

-- ----------------------------
-- Table structure for mall_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_group`;
CREATE TABLE `mall_admin_group`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shop_no` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '0 - 平台所属 ； 非0 店铺所属',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组编码',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分组名称，例如：搬砖者',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分组信息：例如：搬砖的人',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_admin_group
-- ----------------------------
INSERT INTO `mall_admin_group` VALUES (31, '0', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-21 01:26:53.100', '2020-06-21 01:26:53.100', NULL);
INSERT INTO `mall_admin_group` VALUES (32, '0', '02515458', '测试角色', '只有账号管理权限', '2020-06-23 19:35:47.301', '2020-06-23 19:35:47.301', NULL);
INSERT INTO `mall_admin_group` VALUES (33, '0', '84668628', '账号管理角色', '账号管理角色', '2020-06-23 20:10:59.706', '2020-06-23 20:10:59.706', NULL);
INSERT INTO `mall_admin_group` VALUES (38, '47049355', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 02:37:35.617', '2020-06-24 02:37:35.617', NULL);
INSERT INTO `mall_admin_group` VALUES (39, '79606189', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 02:45:48.291', '2020-06-24 02:45:48.291', NULL);
INSERT INTO `mall_admin_group` VALUES (40, '05882805', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 02:53:51.565', '2020-06-24 02:53:51.565', NULL);
INSERT INTO `mall_admin_group` VALUES (41, '01746601', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 02:57:43.286', '2020-06-24 02:57:43.286', NULL);
INSERT INTO `mall_admin_group` VALUES (42, '12112073', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 03:02:48.404', '2020-06-24 03:02:48.404', NULL);
INSERT INTO `mall_admin_group` VALUES (44, '38270086', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:29:09.362', '2020-06-24 13:29:09.362', NULL);
INSERT INTO `mall_admin_group` VALUES (45, '77705283', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:31:00.418', '2020-06-24 13:31:00.418', NULL);
INSERT INTO `mall_admin_group` VALUES (46, '75909841', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:31:56.456', '2020-06-24 13:31:56.456', NULL);
INSERT INTO `mall_admin_group` VALUES (47, '56956220', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:32:55.541', '2020-06-24 13:32:55.541', NULL);
INSERT INTO `mall_admin_group` VALUES (48, '88264883', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:34:15.374', '2020-06-24 13:34:15.374', NULL);
INSERT INTO `mall_admin_group` VALUES (49, '94771118', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 13:51:04.981', '2020-06-24 13:51:04.981', NULL);
INSERT INTO `mall_admin_group` VALUES (50, '18057493', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 11:32:36.543', '2020-06-24 11:32:36.543', NULL);
INSERT INTO `mall_admin_group` VALUES (52, '10889087', 'super_admin', '超级管理员', '超级管理员分组', '2020-06-24 17:21:29.698', '2020-06-24 17:21:29.698', NULL);
INSERT INTO `mall_admin_group` VALUES (55, '10889087', '06090390', '测试', '测试使用', '2020-06-25 15:19:19.413', '2020-06-25 15:19:19.413', NULL);

-- ----------------------------
-- Table structure for mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_user`;
CREATE TABLE `mall_admin_user`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名，唯一',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像url',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `rela_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `status` int(4) NOT NULL COMMENT '状态',
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺编号',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_admin_user
-- ----------------------------
INSERT INTO `mall_admin_user` VALUES (50, 'superAdmin', 'platform super admin', NULL, NULL, NULL, '平台超级管理员', 1, '0', '2020-06-21 01:26:53.201', '2020-06-21 01:26:53.201', NULL);
INSERT INTO `mall_admin_user` VALUES (51, 'cs', 'test', NULL, '123456@qq.com', '18428324016', '测试', 1, '0', '2020-06-23 20:16:24.789', '2020-06-23 20:16:24.789', NULL);
INSERT INTO `mall_admin_user` VALUES (57, 'sp', 'admin', NULL, NULL, '18428324016', '张三', 1, '47049355', '2020-06-24 02:37:35.721', '2020-06-24 02:37:35.721', NULL);
INSERT INTO `mall_admin_user` VALUES (58, 'ls', 'admin', NULL, NULL, '18428324588', '李四', 1, '79606189', '2020-06-24 02:45:48.391', '2020-06-24 02:45:48.391', NULL);
INSERT INTO `mall_admin_user` VALUES (59, 'uu', 'admin', NULL, NULL, '18428324544', '小小', 1, '75909841', '2020-06-24 13:31:56.561', '2020-06-24 13:31:56.561', NULL);
INSERT INTO `mall_admin_user` VALUES (61, 'tt', 'admin', NULL, NULL, '18428324544', '小小', 1, '88264883', '2020-06-24 13:34:15.470', '2020-06-24 13:34:15.470', NULL);
INSERT INTO `mall_admin_user` VALUES (62, 'yy', 'admin', NULL, NULL, '18428324544', '小小', 1, '94771118', '2020-06-24 13:51:05.078', '2020-06-24 13:51:05.078', NULL);
INSERT INTO `mall_admin_user` VALUES (63, 'yiyi', 'admin', NULL, NULL, '18458254587', '茵茵测试', 1, '18057493', '2020-06-24 11:32:36.641', '2020-06-24 11:32:36.641', NULL);
INSERT INTO `mall_admin_user` VALUES (65, 'xm', 'admin', NULL, NULL, '18425654258', '徐小明', 1, '10889087', '2020-06-24 17:21:29.797', '2020-06-24 17:21:29.797', NULL);
INSERT INTO `mall_admin_user` VALUES (66, 'xh', '小红', NULL, '1548789@qq.ocm', '18425325425', '小红红', 1, '10889087', '2020-06-25 15:09:10.166', '2020-06-25 15:12:24.432', NULL);
INSERT INTO `mall_admin_user` VALUES (68, 'dt', '等大头', NULL, '12345sd6@qq.com', '18428652154', '大大头', 1, '10889087', '2020-06-25 15:11:34.189', '2020-06-25 15:12:27.069', NULL);

-- ----------------------------
-- Table structure for mall_admin_user_group
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_user_group`;
CREATE TABLE `mall_admin_user_group`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) UNSIGNED NOT NULL COMMENT '用户id',
  `group_id` bigint(11) UNSIGNED NOT NULL COMMENT '分组id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id_group_id`(`user_id`, `group_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_admin_user_group
-- ----------------------------
INSERT INTO `mall_admin_user_group` VALUES (23, 50, 31);
INSERT INTO `mall_admin_user_group` VALUES (24, 51, 33);
INSERT INTO `mall_admin_user_group` VALUES (25, 52, 34);
INSERT INTO `mall_admin_user_group` VALUES (26, 57, 38);
INSERT INTO `mall_admin_user_group` VALUES (27, 58, 39);
INSERT INTO `mall_admin_user_group` VALUES (28, 59, 46);
INSERT INTO `mall_admin_user_group` VALUES (29, 61, 48);
INSERT INTO `mall_admin_user_group` VALUES (30, 62, 49);
INSERT INTO `mall_admin_user_group` VALUES (31, 63, 50);
INSERT INTO `mall_admin_user_group` VALUES (33, 65, 52);
INSERT INTO `mall_admin_user_group` VALUES (34, 66, 52);
INSERT INTO `mall_admin_user_group` VALUES (35, 68, 52);

-- ----------------------------
-- Table structure for mall_admin_user_identity
-- ----------------------------
DROP TABLE IF EXISTS `mall_admin_user_identity`;
CREATE TABLE `mall_admin_user_identity`  (
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) UNSIGNED NOT NULL COMMENT '用户id',
  `identity_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `credential` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_admin_user_identity
-- ----------------------------
INSERT INTO `mall_admin_user_identity` VALUES (29, 50, 'username_password', 'ADMIN_ROOT', '$2a$10$HQ732Gtaz4K4.Wya1QTEq.T7lBWcEPwBEWLUGDuHE16KbjAEVk.1K', '2020-06-21 01:26:53.203', '2020-06-21 01:26:53.203', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (30, 51, 'username_password', 'ADMIN_SUB', '$2a$10$SXR0n/U4lTn37AZZmxx2CeNuS.EZWjHh7wYdJF04bxkv8OV8W2wRC', '2020-06-23 20:16:24.796', '2020-06-23 20:16:24.796', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (31, 52, 'username_password', 'SHOP_ROOT', '$2a$10$ILKmdOSHj/iwujpahnzWt.JvpqCwtsyg2RKh68n7XpFHpnG7LQKt6', '2020-06-24 02:03:37.006', '2020-06-24 02:03:37.006', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (32, 57, 'username_password', 'SHOP_ROOT', '$2a$10$qpW8Sr.qQPgJzBXpm/MzvOPmEI3kW9BkVYKC4pd/eLvKC6AgylQuS', '2020-06-24 02:37:35.726', '2020-06-24 02:37:35.726', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (33, 58, 'username_password', 'SHOP_ROOT', '$2a$10$Pd2ApAamxOYJx4Ds2GReMurqrNMMK3LJfz7MUBqSOP4qzzOx.7hCy', '2020-06-24 02:45:48.395', '2020-06-24 02:45:48.395', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (34, 59, 'username_password', 'SHOP_ROOT', '$2a$10$rBZmdN7Erj13qaNZ13rxSe7OPCndPap7DlRUU5y644s.0u7MhapRq', '2020-06-24 13:31:56.564', '2020-06-24 13:31:56.564', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (35, 61, 'username_password', 'SHOP_ROOT', '$2a$10$pByAtIkjyh8Mk./I4Wr/9eqU47AcGQGfzsC5AOtxJx0bii4wYmCnG', '2020-06-24 13:34:15.474', '2020-06-24 13:34:15.474', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (36, 62, 'username_password', 'SHOP_ROOT', '$2a$10$Gq0MUpphXUraxZjR5UeiJeOHLd7a5/teGp.0HUCsGKxbcpek6PVHi', '2020-06-24 13:51:05.082', '2020-06-24 13:51:05.082', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (37, 63, 'username_password', 'SHOP_ROOT', '$2a$10$PegDL.d6gqy2jlhVX017KeMsP5pQE91rVckChYUbeF4UaJtpaP86a', '2020-06-24 11:32:36.645', '2020-06-24 11:32:36.645', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (39, 65, 'username_password', 'SHOP_ROOT', '$2a$10$wSq2G6MOZ8D3ZSiSA57lWuH/5PNqRVCrwdWoRmgCRWIr5Vr9XF.Uu', '2020-06-24 17:21:29.798', '2020-06-24 17:21:29.798', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (40, 66, 'username_password', 'ADMIN_SUB', '$2a$10$VsVq22c/u0RxslCRgmWz8.dS2uV1CDUHv4ncq5SN5ZbuRlZo0D2RS', '2020-06-25 15:09:10.171', '2020-06-25 15:09:10.171', NULL);
INSERT INTO `mall_admin_user_identity` VALUES (41, 68, 'username_password', 'ADMIN_SUB', '$2a$10$lOQcgjzfll3fo/iVFpEfuOGWePtHTCuRZYbLI0ZPPP4K1JNiHVaii', '2020-06-25 15:11:34.194', '2020-06-25 15:11:34.194', NULL);

-- ----------------------------
-- Table structure for mall_banner
-- ----------------------------
DROP TABLE IF EXISTS `mall_banner`;
CREATE TABLE `mall_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述信息',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'banner图片',
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属商户',
  `link_type` int(2) NOT NULL COMMENT '链接类型 1-多商品 2-单商品',
  `inner_info` json NULL COMMENT 'banne内部详情JSON字符串',
  `online` tinyint(2) NOT NULL COMMENT '0 - 下线状态  1 -上线状态',
  `user_id` bigint(11) NOT NULL COMMENT '创建人',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `tpl_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_banner
-- ----------------------------
INSERT INTO `mall_banner` VALUES (2, '新竹从四大皆空', '新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空新竹从四大皆空', 'other/653e304.jpg', '0', 1, NULL, 1, 50, '2020-07-18 15:34:38.931', '2020-07-27 15:14:22.695', NULL, 'horizontal_one');
INSERT INTO `mall_banner` VALUES (3, '用户banner', '用户banner用户banner', 'other/4ad4df2.jpg', '10889087', 1, NULL, 1, 65, '2020-07-21 16:52:48.673', '2020-07-27 15:14:26.414', NULL, 'horizontal_two');

-- ----------------------------
-- Table structure for mall_banner_spu
-- ----------------------------
DROP TABLE IF EXISTS `mall_banner_spu`;
CREATE TABLE `mall_banner_spu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `spu_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_banner_spu
-- ----------------------------
INSERT INTO `mall_banner_spu` VALUES (1, 3, 18);
INSERT INTO `mall_banner_spu` VALUES (2, 3, 18);

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '类别Id',
  `shop_no` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1' COMMENT '0 - 平台   非0 商家',
  `parent_id` bigint(11) NOT NULL COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类别状态 1-正常 ,0-已废弃',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类别唯一编码',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别展示图',
  `sort` int(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类目ID路径  1#2#3',
  `level` int(2) NOT NULL COMMENT '类目级别  1,2,3',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category
-- ----------------------------
INSERT INTO `mall_category` VALUES (1, '0', 0, '蔬菜', '水电费水电费', 1, NULL, 'category/61a8028.jpg', 0, NULL, 1, '2020-06-21 21:31:44.460', '2020-06-21 21:31:44.460', NULL);
INSERT INTO `mall_category` VALUES (2, '0', 1, '胡萝卜', '胡萝卜胡萝卜胡萝卜', 1, NULL, 'category/db02074.jpg', 0, '1', 2, '2020-06-21 23:10:53.972', '2020-06-21 23:10:53.972', NULL);
INSERT INTO `mall_category` VALUES (3, '0', 1, '白菜', '白菜白菜白菜', 1, NULL, 'category/0716a81.jpg', 0, '1', 2, '2020-06-21 23:13:17.587', '2020-06-21 23:13:17.587', NULL);
INSERT INTO `mall_category` VALUES (4, '0', 1, '青菜', '青菜青菜', 1, NULL, 'category/d132f7b.jpg', 0, '1', 2, '2020-06-21 23:15:35.431', '2020-06-21 23:15:35.431', NULL);
INSERT INTO `mall_category` VALUES (5, '10889087', 0, '新鲜蔬菜', '新鲜蔬菜类目', 1, NULL, 'category/1fc8e34.jpg', 0, NULL, 1, '2020-06-25 18:19:01.937', '2020-06-27 15:13:45.602', NULL);
INSERT INTO `mall_category` VALUES (13, '10889087', 0, '有机水果', '有机水果有机水果', 1, NULL, 'category/9ea3263.jpg', 0, NULL, 1, '2020-06-25 20:25:07.423', '2020-06-27 15:26:48.413', NULL);
INSERT INTO `mall_category` VALUES (14, '10889087', 5, '菜叶类', '各种青菜叶', 1, NULL, 'category/7bc3b1e.jpg', 0, '5', 2, '2020-06-25 20:30:54.856', '2020-06-27 15:24:56.375', NULL);
INSERT INTO `mall_category` VALUES (15, '10889087', 13, '香蕉', '香蕉香蕉香蕉', 1, NULL, 'category/53cf5ff.jpg', 0, '13', 2, '2020-06-25 20:38:21.375', '2020-06-27 15:27:03.989', NULL);
INSERT INTO `mall_category` VALUES (16, '10889087', 5, '青豆类', '青豆类青豆类青豆类', 1, NULL, 'category/0eddbf8.jpg', 0, '5', 2, '2020-06-25 20:52:52.135', '2020-06-27 15:25:23.874', NULL);
INSERT INTO `mall_category` VALUES (17, '10889087', 0, '肉类食品', '肉类食品肉类食品', 1, NULL, 'category/8b183ab.jpg', 0, '5', 1, '2020-06-25 20:52:53.815', '2020-06-27 15:30:38.819', NULL);
INSERT INTO `mall_category` VALUES (18, '10889087', 17, '牛肉', '牛肉牛肉牛肉', 1, NULL, 'category/e5ac4f5.jpg', 0, '17', 2, '2020-06-27 15:31:00.054', '2020-06-27 15:31:00.054', NULL);
INSERT INTO `mall_category` VALUES (20, '10889087', 17, '猪肉', '猪肉猪肉猪肉', 1, NULL, 'category/69887c1.jpg', 0, '17', 2, '2020-06-27 15:31:48.245', '2020-06-27 15:31:48.245', NULL);
INSERT INTO `mall_category` VALUES (21, '10889087', 13, '猕猴桃', '猕猴桃猕猴桃猕猴桃', 1, NULL, 'category/dcfe36f.jpg', 0, '13', 2, '2020-06-27 15:32:18.869', '2020-06-27 15:32:18.869', NULL);
INSERT INTO `mall_category` VALUES (22, '10889087', 13, '殷桃', '殷桃殷桃殷桃', 1, NULL, 'category/dfc6de7.jpg', 0, '13', 2, '2020-06-27 15:32:42.908', '2020-06-27 15:32:42.908', NULL);

-- ----------------------------
-- Table structure for mall_coupon
-- ----------------------------
DROP TABLE IF EXISTS `mall_coupon`;
CREATE TABLE `mall_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `template_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联优惠券模板的主键',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '领取用户',
  `coupon_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券码',
  `assign_time` datetime(0) NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '领取时间',
  `status` int(4) NOT NULL DEFAULT 0 COMMENT '优惠券的状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_template_id`(`template_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券(用户领取的记录)' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_coupon
-- ----------------------------
INSERT INTO `mall_coupon` VALUES (36, 26, 6, '120000207496696110', '2020-08-10 11:32:14', 3);
INSERT INTO `mall_coupon` VALUES (37, 24, 6, '110027004042577643', '2020-08-10 11:42:52', 1);
INSERT INTO `mall_coupon` VALUES (38, 25, 6, '130002047044059231', '2020-08-10 11:43:10', 1);
INSERT INTO `mall_coupon` VALUES (39, 25, 6, '130042007033686990', '2020-08-10 11:44:02', 1);
INSERT INTO `mall_coupon` VALUES (40, 26, 6, '120024007011046053', '2020-08-10 11:46:42', 3);
INSERT INTO `mall_coupon` VALUES (41, 26, 6, '120002700445561927', '2020-08-10 11:47:21', 3);
INSERT INTO `mall_coupon` VALUES (42, 26, 6, '120072004015969040', '2020-08-10 11:47:25', 1);
INSERT INTO `mall_coupon` VALUES (43, 25, 6, '130007200446903677', '2020-08-10 11:51:22', 1);
INSERT INTO `mall_coupon` VALUES (44, 24, 7, '110002070448351618', '2020-08-10 14:16:37', 1);
INSERT INTO `mall_coupon` VALUES (45, 25, 7, '130020704051302105', '2020-08-10 14:16:41', 1);
INSERT INTO `mall_coupon` VALUES (46, 25, 7, '130000247040395505', '2020-08-10 14:16:42', 1);

-- ----------------------------
-- Table structure for mall_coupon_template
-- ----------------------------
DROP TABLE IF EXISTS `mall_coupon_template`;
CREATE TABLE `mall_coupon_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `available` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否是可用状态; true: 可用, false: 不可用',
  `expired` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否过期; true: 是, false: 否',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券标题',
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '优惠券 logo',
  `subtitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券副标题',
  `instructions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券使用说明',
  `category` int(2) NOT NULL COMMENT '优惠券分类',
  `product_line` int(2) NOT NULL DEFAULT 0 COMMENT '产品线',
  `coupon_count` int(11) NOT NULL DEFAULT 0 COMMENT '总数',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建用户',
  `template_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券模板的编码',
  `target` int(2) NOT NULL DEFAULT 0 COMMENT '目标用户',
  `rule` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券规则: TemplateRule 的 json 表示',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE,
  INDEX `idx_category`(`category`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_coupon_template
-- ----------------------------
INSERT INTO `mall_coupon_template` VALUES (24, 1, 0, '满100减50', NULL, '全商品可用', '1. 全品类商品可用\n2. 有效期 7 天', 100, 1, 200, 50, '110020200704', 2, '{\"expiration\":{\"period\":2,\"gaps\":7,\"start_time\":null,\"deadline\":null},\"discount\":{\"base\":100,\"quota\":50},\"usage\":{\"province\":null,\"city\":null},\"limitation\":1,\"url_link\":null,\"weight\":null}', '2020-07-04 10:28:23.000', '2020-07-04 10:28:24.000', NULL);
INSERT INTO `mall_coupon_template` VALUES (25, 1, 0, '全品类立减30', NULL, '券商可用', '1. 全品类可用', 300, 1, 200, 50, '130020200704', 2, '{\"expiration\":{\"period\":2,\"gaps\":15,\"start_time\":null,\"deadline\":null},\"discount\":{\"base\":0,\"quota\":30},\"usage\":{\"province\":null,\"city\":null},\"limitation\":2,\"url_link\":null,\"weight\":null}', '2020-07-04 10:37:18.000', '2020-08-10 11:43:44.000', NULL);
INSERT INTO `mall_coupon_template` VALUES (26, 1, 0, '全品类折扣85%', NULL, '85折扣', '1.全品类可用', 200, 1, 100, 50, '120020200704', 2, '{\"expiration\":{\"period\":1,\"gaps\":null,\"start_time\":null,\"deadline\":1596956688000},\"discount\":{\"base\":0,\"quota\":85},\"usage\":{\"province\":null,\"city\":null},\"limitation\":1,\"url_link\":null,\"weight\":null}', '2020-07-04 10:38:42.000', '2020-08-10 11:46:03.000', NULL);

-- ----------------------------
-- Table structure for mall_permission
-- ----------------------------
DROP TABLE IF EXISTS `mall_permission`;
CREATE TABLE `mall_permission`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限名称，例如：访问首页',
  `module_id` int(11) NOT NULL COMMENT 'permission_moudle 主键',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限所属模块，例如：人员管理',
  `parent_id` bigint(11) NULL DEFAULT NULL,
  `pType` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限类型 page  or  button',
  `http_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'http 请求类型  post  get ...',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `origin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限来源  plat  shop ',
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_permission
-- ----------------------------
INSERT INTO `mall_permission` VALUES (17, '权限管理页面', 8, NULL, NULL, 'page', '', '/accountUser/permission/list', 'plat', '2020-06-23 18:45:42.890', '2020-06-23 18:45:42.890', NULL);
INSERT INTO `mall_permission` VALUES (18, '管理员列表页面', 8, NULL, NULL, 'page', '', '/accountUser/mgr/list', 'plat', '2020-06-23 18:57:08.946', '2020-06-23 18:57:08.946', NULL);
INSERT INTO `mall_permission` VALUES (19, '角色列表页面', 8, NULL, NULL, 'page', '', '/accountUser/role/list', 'plat', '2020-06-23 18:57:44.333', '2020-06-23 18:57:44.333', NULL);
INSERT INTO `mall_permission` VALUES (20, '查看权限分组列表', 8, NULL, 17, 'button', 'get', '/permission/module/add', 'plat', '2020-06-23 19:00:20.490', '2020-06-23 19:00:20.490', NULL);
INSERT INTO `mall_permission` VALUES (21, '新增权限', 8, NULL, 17, 'button', 'post', '/permission/add', 'plat', '2020-06-23 19:00:53.467', '2020-06-23 19:00:53.467', NULL);

-- ----------------------------
-- Table structure for mall_permission_group
-- ----------------------------
DROP TABLE IF EXISTS `mall_permission_group`;
CREATE TABLE `mall_permission_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` bigint(11) UNSIGNED NOT NULL COMMENT '分组id',
  `permission_id` bigint(11) UNSIGNED NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id_permission_id`(`group_id`, `permission_id`) USING BTREE COMMENT '联合索引'
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_permission_group
-- ----------------------------
INSERT INTO `mall_permission_group` VALUES (40, 32, 17);
INSERT INTO `mall_permission_group` VALUES (41, 32, 20);
INSERT INTO `mall_permission_group` VALUES (42, 32, 21);
INSERT INTO `mall_permission_group` VALUES (43, 33, 17);
INSERT INTO `mall_permission_group` VALUES (44, 33, 18);
INSERT INTO `mall_permission_group` VALUES (45, 33, 19);
INSERT INTO `mall_permission_group` VALUES (46, 33, 20);
INSERT INTO `mall_permission_group` VALUES (47, 33, 21);

-- ----------------------------
-- Table structure for mall_permission_module
-- ----------------------------
DROP TABLE IF EXISTS `mall_permission_module`;
CREATE TABLE `mall_permission_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `origin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_permission_module
-- ----------------------------
INSERT INTO `mall_permission_module` VALUES (8, '账号管理', 'plat');
INSERT INTO `mall_permission_module` VALUES (9, '店铺管理', 'plat');

-- ----------------------------
-- Table structure for mall_shop
-- ----------------------------
DROP TABLE IF EXISTS `mall_shop`;
CREATE TABLE `mall_shop`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `boss_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店主姓名',
  `phonenumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `license` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请注册码',
  `latitude` double(9, 6) NULL DEFAULT NULL COMMENT '维度',
  `longitude` double(9, 6) NULL DEFAULT NULL COMMENT '经度',
  `geo_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'geohash编码',
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0 - 待审核  1 - 经营中  2 - 停用中',
  `create_time` datetime(3) NULL DEFAULT NULL,
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `shop_geo_code_idx`(`geo_code`) USING BTREE,
  INDEX `shop_no`(`shop_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_shop
-- ----------------------------
INSERT INTO `mall_shop` VALUES (1, '张三店铺', '四川省成都市郫都区王景峰一号7705', '你想要的，这都有，你想要什么？？？', NULL, '18428324016', '/shop/15e3337.jpg', '47049355', NULL, NULL, NULL, NULL, 1, '2020-06-23 22:37:35.000', '2020-06-24 02:37:35.606', NULL);
INSERT INTO `mall_shop` VALUES (2, '李四店铺', '测试测试测试', '测试测试', NULL, '18428324587', '/shop/c33c4de.jpg', '46245757', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-24 02:42:44.973', NULL);
INSERT INTO `mall_shop` VALUES (3, '王五店铺', '测试测试测试', '测试测试', NULL, '18428324588', '/shop/2b75ba7.jpg', '79606189', NULL, NULL, NULL, NULL, 1, '2020-06-23 22:45:48.000', '2020-06-24 02:45:48.279', NULL);
INSERT INTO `mall_shop` VALUES (4, '散散店铺', '散散散散测试测试测试', '散散散散测试测试', NULL, '18428324577', '/shop/5e421e5.jpeg', '05882805', NULL, NULL, NULL, NULL, 1, '2020-06-23 22:53:51.000', '2020-06-24 02:53:51.552', NULL);
INSERT INTO `mall_shop` VALUES (5, '开开店铺', '开开店铺开开店铺开开店铺', '开开店铺开开店铺', NULL, '18428324555', '/shop/8fa9e89.jpg', '01746601', NULL, NULL, NULL, NULL, 1, '2020-06-23 22:57:43.000', '2020-06-24 02:57:43.272', NULL);
INSERT INTO `mall_shop` VALUES (6, '12开开店铺', '12开开店铺开开店铺开开店铺', '12开开店铺开开店铺', NULL, '18428324544', '/shop/f0ca8ee.jpg', '12112073', NULL, NULL, NULL, NULL, 1, '2020-06-23 23:02:48.000', '2020-06-24 03:02:48.393', NULL);
INSERT INTO `mall_shop` VALUES (7, '嗨嗨开开店铺', '嗨嗨开开店铺开开店铺开开店铺', '嗨嗨开开店铺开开店铺', NULL, '18428324544', '/shop/00a9c64.jpg', '97906939', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-24 13:16:28.996', NULL);
INSERT INTO `mall_shop` VALUES (8, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '77705283', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:31:00.000', '2020-06-24 13:31:00.396', NULL);
INSERT INTO `mall_shop` VALUES (9, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '38270086', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:29:09.000', '2020-06-24 13:29:09.344', NULL);
INSERT INTO `mall_shop` VALUES (10, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '75909841', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:31:56.000', '2020-06-24 13:31:56.441', NULL);
INSERT INTO `mall_shop` VALUES (11, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '56956220', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:32:55.000', '2020-06-24 13:32:55.526', NULL);
INSERT INTO `mall_shop` VALUES (12, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '94771118', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:51:04.000', '2020-06-24 13:51:04.974', NULL);
INSERT INTO `mall_shop` VALUES (13, '小小开开店铺', '小小开开店铺开开店铺开开店铺', '小小开开店铺开开店铺', NULL, '18428324544', '/shop/634f8a5.jpg', '88264883', NULL, NULL, NULL, NULL, 1, '2020-06-24 09:34:15.000', '2020-06-24 13:34:15.368', NULL);
INSERT INTO `mall_shop` VALUES (14, '茵茵测试', '茵茵测试', '茵茵测试', NULL, '18458254587', '/shop/7bdea41.jpg', '18057493', NULL, NULL, NULL, NULL, 1, '2020-06-24 11:32:36.000', '2020-06-24 11:32:36.531', NULL);
INSERT INTO `mall_shop` VALUES (15, '茵茵测试', '茵茵测试', '茵茵测试', NULL, '18458254587', '/shop/7bdea41.jpg', '72443366', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-24 11:33:41.959', NULL);
INSERT INTO `mall_shop` VALUES (16, '小明店铺', '四川省-成都市-万景峰二期-1105号', '小明店铺，主营 蔬菜，水果等日常用品', '徐小明', '18425654258', '/shop/26b334f.jpg', '10889087', NULL, NULL, NULL, NULL, 1, '2020-06-24 17:21:29.000', '2020-06-24 17:21:57.102', NULL);
INSERT INTO `mall_shop` VALUES (18, '宋丹店铺', '四川省-成都市-万景峰二期-1106号', '宋丹明店铺，主营 蔬菜，水果等日常用品', '宋丹', '18425654257', '/shop/3c6e7af.jpg', '99318136', NULL, NULL, NULL, NULL, 0, NULL, '2020-06-24 17:24:39.619', NULL);

-- ----------------------------
-- Table structure for mall_shop_audit
-- ----------------------------
DROP TABLE IF EXISTS `mall_shop_audit`;
CREATE TABLE `mall_shop_audit`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply_time` datetime(0) NULL DEFAULT NULL,
  `audit_time` datetime(0) NULL DEFAULT NULL,
  `audit_status` tinyint(3) NULL DEFAULT NULL,
  `audit_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audit_user` bigint(11) NULL DEFAULT NULL,
  `apply_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply_real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_shop_audit
-- ----------------------------
INSERT INTO `mall_shop_audit` VALUES (1, '47049355', '2020-06-23 17:27:02', '2020-06-23 22:37:35', 1, 'audit pass', 50, 'sp', '张三');
INSERT INTO `mall_shop_audit` VALUES (2, '46245757', '2020-06-23 22:41:28', '2020-06-23 22:43:16', 0, '审核拒绝，原因： 填写资料信息有误，请重新申请', 50, 'ls', '李四');
INSERT INTO `mall_shop_audit` VALUES (3, '79606189', '2020-06-23 22:44:09', '2020-06-23 22:45:48', 1, 'audit pass', 50, 'ls', '李四');
INSERT INTO `mall_shop_audit` VALUES (4, '05882805', '2020-06-23 22:53:18', '2020-06-23 22:53:51', 1, 'audit pass', 50, 'ss', '散散');
INSERT INTO `mall_shop_audit` VALUES (5, '01746601', '2020-06-23 22:55:32', '2020-06-23 22:57:43', 1, 'audit pass', 50, 'kk', '开开');
INSERT INTO `mall_shop_audit` VALUES (6, '12112073', '2020-06-23 23:02:39', '2020-06-23 23:02:48', 1, 'audit pass', 50, 'sdsd', '开开');
INSERT INTO `mall_shop_audit` VALUES (7, '97906939', '2020-06-24 09:16:29', '2020-06-24 09:19:54', 1, 'audit pass', 50, 'op', '嗨嗨');
INSERT INTO `mall_shop_audit` VALUES (8, '77705283', '2020-06-24 09:28:58', '2020-06-24 09:31:00', 1, 'audit pass', 50, 'uu', '小小');
INSERT INTO `mall_shop_audit` VALUES (9, '38270086', '2020-06-24 09:29:00', '2020-06-24 09:29:09', 1, 'audit pass', 50, 'uu', '小小');
INSERT INTO `mall_shop_audit` VALUES (10, '75909841', '2020-06-24 09:31:51', '2020-06-24 09:31:56', 1, 'audit pass', 50, 'uu', '小小');
INSERT INTO `mall_shop_audit` VALUES (11, '56956220', '2020-06-24 09:31:51', '2020-06-24 09:32:55', 1, 'audit pass', 50, 'uu', '小小');
INSERT INTO `mall_shop_audit` VALUES (12, '94771118', '2020-06-24 09:33:57', '2020-06-24 09:51:04', 1, 'audit pass', 50, 'yy', '小小');
INSERT INTO `mall_shop_audit` VALUES (13, '88264883', '2020-06-24 09:34:00', '2020-06-24 09:34:15', 1, 'audit pass', 50, 'tt', '小小');
INSERT INTO `mall_shop_audit` VALUES (14, '18057493', '2020-06-24 11:32:14', '2020-06-24 11:32:36', 1, 'audit pass', 50, 'yiyi', '茵茵测试');
INSERT INTO `mall_shop_audit` VALUES (15, '72443366', '2020-06-24 11:33:41', '2020-06-24 16:37:09', 0, '审核拒绝，原因： 重新提交', 50, 'rr', '茵茵测试');
INSERT INTO `mall_shop_audit` VALUES (16, '10889087', '2020-06-24 17:04:40', '2020-06-24 17:21:29', 1, 'audit pass', 50, 'xm', '徐小明');
INSERT INTO `mall_shop_audit` VALUES (18, '99318136', '2020-06-24 17:24:39', NULL, NULL, NULL, NULL, 'sd', '宋丹');

-- ----------------------------
-- Table structure for mall_shop_business_info
-- ----------------------------
DROP TABLE IF EXISTS `mall_shop_business_info`;
CREATE TABLE `mall_shop_business_info`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `open_time` datetime(0) NULL DEFAULT NULL,
  `close_time` datetime(0) NULL DEFAULT NULL,
  `delivery_low_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配送最低价',
  `delivery_distance` int(4) NOT NULL DEFAULT 5 COMMENT '配送距离',
  `delivery_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '配送费用',
  `rebate` decimal(4, 2) NOT NULL DEFAULT 5.00 COMMENT '抽成百分比',
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_shop_business_info
-- ----------------------------
INSERT INTO `mall_shop_business_info` VALUES (10, '47049355', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 02:37:35.610', '2020-06-24 02:37:35.610', NULL);
INSERT INTO `mall_shop_business_info` VALUES (11, '79606189', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 02:45:48.282', '2020-06-24 02:45:48.282', NULL);
INSERT INTO `mall_shop_business_info` VALUES (12, '05882805', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 02:53:51.555', '2020-06-24 02:53:51.555', NULL);
INSERT INTO `mall_shop_business_info` VALUES (13, '01746601', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 02:57:43.276', '2020-06-24 02:57:43.276', NULL);
INSERT INTO `mall_shop_business_info` VALUES (15, '38270086', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:29:09.352', '2020-06-24 13:29:09.352', NULL);
INSERT INTO `mall_shop_business_info` VALUES (16, '77705283', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:31:00.402', '2020-06-24 13:31:00.402', NULL);
INSERT INTO `mall_shop_business_info` VALUES (17, '75909841', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:31:56.445', '2020-06-24 13:31:56.445', NULL);
INSERT INTO `mall_shop_business_info` VALUES (18, '56956220', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:32:55.531', '2020-06-24 13:32:55.531', NULL);
INSERT INTO `mall_shop_business_info` VALUES (19, '88264883', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:34:15.371', '2020-06-24 13:34:15.371', NULL);
INSERT INTO `mall_shop_business_info` VALUES (20, '94771118', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 13:51:04.978', '2020-06-24 13:51:04.978', NULL);
INSERT INTO `mall_shop_business_info` VALUES (21, '18057493', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 11:32:36.535', '2020-06-24 11:32:36.535', NULL);
INSERT INTO `mall_shop_business_info` VALUES (23, '10889087', '2020-01-01 09:00:00', '2020-01-01 22:00:00', 30.00, 5, 5.00, 5.00, '2020-06-24 17:21:29.690', '2020-06-24 17:21:29.690', NULL);

-- ----------------------------
-- Table structure for mall_sku
-- ----------------------------
DROP TABLE IF EXISTS `mall_sku`;
CREATE TABLE `mall_sku`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spu_id` bigint(11) NOT NULL,
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `purchase_price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `discount_price` decimal(11, 2) NOT NULL DEFAULT 0.00,
  `category_id` bigint(10) UNSIGNED NULL DEFAULT NULL,
  `root_category_id` bigint(10) UNSIGNED NULL DEFAULT NULL,
  `sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `warn_stock` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `extend_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '扩展使用',
  `spec` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `spec_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '格式:   1$1-2#1-3     spu_id$spec_key_id - spec_value_id # spec_key_id - spec_value_id       ',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku  展示图',
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_sku
-- ----------------------------
INSERT INTO `mall_sku` VALUES (4, '测试才睡', '测试才睡测试才睡测试才睡', 18, '10889087', 11.55, 101.00, 22.55, 16, 5, '6426296087759535', 1011, 11, 1, NULL, '[{\"key\":\"s颜色\",\"keyId\":3,\"value\":\"s深紫色\",\"valueId\":52},{\"key\":\"s重量\",\"keyId\":4,\"value\":\"s高\",\"valueId\":57},{\"key\":\"size\",\"keyId\":5,\"value\":\"s中\",\"valueId\":62}]', '18$3-52#4-57#5-62#5-62', 'product/257952248968/23d2084.png', '2020-06-27 11:40:38.210', '2020-08-07 21:16:24.909', NULL);
INSERT INTO `mall_sku` VALUES (5, '发发斯蒂芬', 'SDK分手快乐', 18, '10889087', 20.00, 10.00, 22.00, 16, 5, '6426296087759952', 1000, 10, 1, NULL, '[{\"key\":\"s颜色\",\"keyId\":3,\"value\":\"s白色\",\"valueId\":50},{\"key\":\"s重量\",\"keyId\":4,\"value\":\"s高\",\"valueId\":57},{\"key\":\"size\",\"keyId\":5,\"value\":\"s小\",\"valueId\":61}]', '18$3-50#4-57#5-61#5-61', 'product/257952248968/23d2084.png', '2020-06-27 11:40:46.989', '2020-08-07 21:16:25.799', NULL);
INSERT INTO `mall_sku` VALUES (6, '发发斯蒂芬', 'SDK分手快乐', 18, '10889087', 20.00, 10.00, 22.00, 16, 5, '6426296087755449', 1000, 10, 0, NULL, '[{\"key\":\"s颜色\",\"keyId\":3,\"value\":\"s深紫色\",\"valueId\":52},{\"key\":\"s重量\",\"keyId\":4,\"value\":\"s中\",\"valueId\":58},{\"key\":\"size\",\"keyId\":5,\"value\":\"s小\",\"valueId\":61}]', '18$3-52#4-58#5-61#5-61', 'product/257952248968/23d2084.png', '2020-06-27 11:40:52.674', '2020-08-07 21:16:26.626', '2020-06-27 14:46:13.000');
INSERT INTO `mall_sku` VALUES (7, '发发斯蒂芬', 'SDK分手快乐', 18, '10889087', 20.00, 10.00, 22.00, 16, 5, '6426296087753283', 1000, 10, 0, NULL, '[{\"key\":\"s颜色\",\"keyId\":3,\"value\":\"s深紫色\",\"valueId\":52},{\"key\":\"s重量\",\"keyId\":4,\"value\":\"s中\",\"valueId\":58},{\"key\":\"size\",\"keyId\":5,\"value\":\"s大\",\"valueId\":60}]', '18$3-52#4-58#5-60#5-60', 'product/257952248968/23d2084.png', '2020-06-27 11:40:58.215', '2020-08-07 21:16:27.356', '2020-06-27 14:47:08.000');
INSERT INTO `mall_sku` VALUES (8, '新鲜澳洲牛肉（5斤装）', '新鲜澳洲牛肉，5斤满装，你值得拥有', 78, '10889087', 150.00, 60.00, 0.00, 18, 17, '2579522489682801', 20, 10, 1, NULL, '[{\"key\":\"成熟度\",\"keyId\":6,\"value\":\"非常熟\",\"valueId\":63},{\"key\":\"斤两数\",\"keyId\":7,\"value\":\"5斤\",\"valueId\":68}]', '78$6-63#7-68', 'product/257952248968/23d2084.png', '2020-08-04 12:08:28.158', '2020-08-07 21:20:40.501', NULL);
INSERT INTO `mall_sku` VALUES (9, '新鲜澳洲牛肉（一斤装）', '新鲜澳洲牛肉（一斤装），现在折扣中', 78, '10889087', 50.00, 20.00, 45.00, 18, 17, '2579522489681842', 1, 10, 1, NULL, '[{\"key\":\"成熟度\",\"keyId\":6,\"value\":\"还未熟\",\"valueId\":65},{\"key\":\"斤两数\",\"keyId\":7,\"value\":\"一斤\",\"valueId\":66}]', '78$6-65#7-66', 'product/257952248968/23d2084.png', '2020-08-04 12:13:17.463', '2020-08-07 21:18:25.200', NULL);

-- ----------------------------
-- Table structure for mall_spec_key
-- ----------------------------
DROP TABLE IF EXISTS `mall_spec_key`;
CREATE TABLE `mall_spec_key`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '-1',
  `sort` int(5) NOT NULL DEFAULT 0,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_spec_key
-- ----------------------------
INSERT INTO `mall_spec_key` VALUES (1, '颜色', NULL, NULL, '0', 2, '2020-06-22 16:22:11', '2020-06-22 19:05:45', NULL);
INSERT INTO `mall_spec_key` VALUES (2, '重量', NULL, NULL, '0', 1, '2020-06-22 16:24:05', '2020-06-22 19:05:40', NULL);
INSERT INTO `mall_spec_key` VALUES (6, '成熟度', NULL, NULL, '10889087', 0, '2020-06-27 15:33:58', '2020-06-27 15:33:58', NULL);
INSERT INTO `mall_spec_key` VALUES (7, '斤两数', NULL, NULL, '10889087', 0, '2020-06-27 15:34:14', '2020-06-27 15:34:14', NULL);

-- ----------------------------
-- Table structure for mall_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `mall_spec_value`;
CREATE TABLE `mall_spec_value`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `spec_id` bigint(11) UNSIGNED NOT NULL,
  `sort` int(4) NOT NULL DEFAULT 0,
  `shop_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_spec_value
-- ----------------------------
INSERT INTO `mall_spec_value` VALUES (46, '红色', 1, 0, '0', '2020-06-22 18:45:53.803', '2020-06-22 18:45:53.803', NULL);
INSERT INTO `mall_spec_value` VALUES (47, '蓝色', 1, 0, '0', '2020-06-22 18:48:33.086', '2020-06-22 18:48:33.086', NULL);
INSERT INTO `mall_spec_value` VALUES (48, '赞紫色', 1, 0, '0', '2020-06-22 18:48:50.098', '2020-06-22 18:48:50.098', NULL);
INSERT INTO `mall_spec_value` VALUES (49, 's红色', 3, 0, '10889087', '2020-06-27 11:16:59.409', '2020-06-27 11:16:59.409', NULL);
INSERT INTO `mall_spec_value` VALUES (50, 's白色', 3, 0, '10889087', '2020-06-27 11:17:07.032', '2020-06-27 11:17:07.032', NULL);
INSERT INTO `mall_spec_value` VALUES (51, 's黑色', 3, 0, '10889087', '2020-06-27 11:17:12.465', '2020-06-27 11:17:12.465', NULL);
INSERT INTO `mall_spec_value` VALUES (52, 's深紫色', 3, 0, '10889087', '2020-06-27 11:17:17.725', '2020-06-27 11:17:17.725', NULL);
INSERT INTO `mall_spec_value` VALUES (53, 's灰色', 3, 0, '10889087', '2020-06-27 11:17:21.973', '2020-06-27 11:17:21.973', NULL);
INSERT INTO `mall_spec_value` VALUES (54, 's深灰色', 3, 0, '10889087', '2020-06-27 11:17:28.304', '2020-06-27 11:17:28.304', NULL);
INSERT INTO `mall_spec_value` VALUES (55, 's蓝色', 3, 0, '10889087', '2020-06-27 11:17:32.868', '2020-06-27 11:17:32.868', NULL);
INSERT INTO `mall_spec_value` VALUES (56, 's赞蓝色', 3, 0, '10889087', '2020-06-27 11:17:38.055', '2020-06-27 11:17:38.055', NULL);
INSERT INTO `mall_spec_value` VALUES (57, 's高', 4, 0, '10889087', '2020-06-27 11:18:04.758', '2020-06-27 11:18:04.758', NULL);
INSERT INTO `mall_spec_value` VALUES (58, 's中', 4, 0, '10889087', '2020-06-27 11:18:10.774', '2020-06-27 11:18:10.774', NULL);
INSERT INTO `mall_spec_value` VALUES (59, 's低', 4, 0, '10889087', '2020-06-27 11:18:16.254', '2020-06-27 11:18:16.254', NULL);
INSERT INTO `mall_spec_value` VALUES (60, 's大', 5, 0, '10889087', '2020-06-27 11:18:33.992', '2020-06-27 11:18:33.992', NULL);
INSERT INTO `mall_spec_value` VALUES (61, 's小', 5, 0, '10889087', '2020-06-27 11:18:38.535', '2020-06-27 11:18:38.535', NULL);
INSERT INTO `mall_spec_value` VALUES (62, 's中', 5, 0, '10889087', '2020-06-27 11:18:43.126', '2020-06-27 11:18:43.126', NULL);
INSERT INTO `mall_spec_value` VALUES (63, '非常熟', 6, 0, '10889087', '2020-06-27 15:34:57.592', '2020-06-27 15:34:57.592', NULL);
INSERT INTO `mall_spec_value` VALUES (64, '一般熟', 6, 0, '10889087', '2020-06-27 15:35:04.420', '2020-06-27 15:35:04.420', NULL);
INSERT INTO `mall_spec_value` VALUES (65, '还未熟', 6, 0, '10889087', '2020-06-27 15:35:13.332', '2020-06-27 15:35:13.332', NULL);
INSERT INTO `mall_spec_value` VALUES (66, '一斤', 7, 0, '10889087', '2020-06-27 15:35:35.791', '2020-06-27 15:35:35.791', NULL);
INSERT INTO `mall_spec_value` VALUES (67, '二斤', 7, 0, '10889087', '2020-06-27 15:35:42.748', '2020-06-27 15:35:42.748', NULL);
INSERT INTO `mall_spec_value` VALUES (68, '5斤', 7, 0, '10889087', '2020-06-27 15:35:46.924', '2020-06-27 15:35:46.924', NULL);
INSERT INTO `mall_spec_value` VALUES (69, '整箱', 7, 0, '10889087', '2020-06-27 15:35:52.452', '2020-06-27 15:35:52.452', NULL);

-- ----------------------------
-- Table structure for mall_spu
-- ----------------------------
DROP TABLE IF EXISTS `mall_spu`;
CREATE TABLE `mall_spu`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(11) NOT NULL COMMENT '分类id',
  `root_category_id` bigint(11) NULL DEFAULT NULL,
  `sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示图',
  `extend_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '扩展图片',
  `online` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `spec` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格信息',
  `tags` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `default_sku_id` bigint(11) NULL DEFAULT NULL,
  `sketch_spec_id` int(11) NULL DEFAULT NULL COMMENT '某种规格可以直接附加单品图片',
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00' COMMENT '文本型价格，有时候SPU需要展示的是一个范围，或者自定义平均价格',
  `discount_price` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_spu
-- ----------------------------
INSERT INTO `mall_spu` VALUES (18, 16, 5, '6426296087751', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-06-26 16:34:04.603', '2020-07-28 19:53:18.803', NULL);
INSERT INTO `mall_spu` VALUES (19, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:47.399', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (20, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:51.718', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (21, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:51.915', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (22, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.075', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (23, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.247', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (24, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.405', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (25, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.573', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (26, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.724', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (27, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:52.916', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (28, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:53.060', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (29, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:53.222', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (30, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:53.388', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (31, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:53.875', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (32, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.069', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (33, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.246', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (34, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.405', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (35, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.564', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (36, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.736', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (37, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:54.909', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (38, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:55.078', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (39, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:55.765', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (40, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:55.959', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (41, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:56.136', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (42, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:56.317', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (43, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:56.507', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (44, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:56.668', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (45, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '10', '2020-07-28 14:31:56.837', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (46, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:56.991', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (47, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '50.00', '2020-07-28 14:31:57.161', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (48, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:57.321', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (49, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:57.473', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (50, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '22.03', '2020-07-28 14:31:57.645', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (51, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:57.814', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (52, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:57.957', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (53, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '25.55', '2020-07-28 14:31:58.125', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (54, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:58.302', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (55, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:58.468', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (56, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:58.796', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (57, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:58.989', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (58, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:59.150', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (59, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:59.310', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (60, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:59.484', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (61, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:59.656', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (62, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:31:59.862', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (63, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.029', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (64, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.222', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (65, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.398', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (66, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.558', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (67, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.749', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (68, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:00.941', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (69, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:01.143', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (70, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:01.324', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (71, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:01.500', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (72, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:01.679', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (73, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:01.856', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (74, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:02.029', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (75, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '33.66', '2020-07-28 14:32:02.205', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (76, 16, 5, '642629608775', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', NULL, '2020-07-28 14:32:02.368', '2020-07-28 19:45:57.587', NULL);
INSERT INTO `mall_spu` VALUES (77, 16, 5, '6426296087752', '沙发士大夫', '水电费啊', '457c5cb.jpg', '{\"detailImg\":[\"ca0bf26.jpg\",\"5475e37.jpg\",\"9efab05.jpg\",\"90e05a9.jpg\",\"c9c4140.jpg\"],\"path\":\"product/642629608775/\",\"slideImg\":[\"457c5cb.jpg\",\"b477905.jpg\",\"bec1811.jpg\"]}', 1, '[{\"id\":3,\"name\":\"s颜色\"},{\"id\":4,\"name\":\"s重量\"},{\"id\":5,\"name\":\"size\"}]', '[\"撒旦 \",\"水电费\"]', 5, 3, '10889087', '15-105', '55.00', '2020-07-28 14:32:02.543', '2020-07-28 19:53:30.317', NULL);
INSERT INTO `mall_spu` VALUES (78, 18, 17, '257952248968', '新鲜澳洲牛肉', '精选上等澳洲特供牛肉，值得你品尝', '23d2084.png', '{\"detailImg\":[\"d3f0f61.jpg\",\"9c1fef3.jpg\",\"a6d62f7.jpg\",\"b1befeb.jpg\",\"84ef538.jpg\"],\"path\":\"product/257952248968/\",\"slideImg\":[\"23d2084.png\",\"4d4a017.png\",\"f3d8734.png\",\"a2a551d.png\",\"9556e77.png\"]}', 1, '[{\"id\":6,\"name\":\"成熟度\"},{\"id\":7,\"name\":\"斤两数\"}]', '[\"上等\",\"特供\"]', 9, NULL, '10889087', '55 ~ 100', NULL, '2020-08-04 12:05:06.241', '2020-08-04 15:18:58.579', NULL);

-- ----------------------------
-- Table structure for mall_theme
-- ----------------------------
DROP TABLE IF EXISTS `mall_theme`;
CREATE TABLE `mall_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inner_top_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(2) NULL DEFAULT NULL,
  `online` tinyint(2) NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  `tpl_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_theme
-- ----------------------------
INSERT INTO `mall_theme` VALUES (2, '周五送优惠', '周五送优惠周五送优惠周五送优惠周五送优惠', '10889087', '', '', '', 1, 0, 't_1', '2020-07-21 14:10:56.506', '2020-08-04 19:08:14.688', NULL, 'horizontal_one');
INSERT INTO `mall_theme` VALUES (3, '每周上新', '每周上新每周上新每周上新每周上新', '10889087', 'other/feacf77.png', 'other/f02ec45.png', 'other/37722bf.png', 2, 1, 't_2_1', '2020-07-21 14:53:23.550', '2020-07-26 16:52:39.208', NULL, 'horizontal_two');
INSERT INTO `mall_theme` VALUES (4, 'banner right top', 'banner right topbanner right top', '10889087', 'other/', 'other/08526cf.png', 'other/', 3, 1, 't_2_2', '2020-07-23 15:57:45.722', '2020-08-04 19:08:09.000', NULL, 'horizontal_one');
INSERT INTO `mall_theme` VALUES (5, 'banner right bottom', 'banner right bottombanner right bottom', '10889087', 'other/', 'other/0314be0.png', 'other/', 4, 1, 't_2_3', '2020-07-23 15:58:14.301', '2020-08-04 19:08:08.750', NULL, 'horizontal_one');
INSERT INTO `mall_theme` VALUES (6, 'single view', 'single viewsingle view', '10889087', 'other/', 'other/6528a84.png', 'other/', 7, 0, 't_4', '2020-07-23 15:59:01.550', '2020-08-04 19:08:04.487', NULL, 'horizontal_one');
INSERT INTO `mall_theme` VALUES (7, '时令水果', '解暑水果，超甜上线', '10889087', 'other/', 'other/28eb347.jpg', 'other/37722bf.png', 5, 0, 't_3', '2020-07-23 22:04:54.446', '2020-08-04 19:08:00.622', NULL, 'horizontal_one');
INSERT INTO `mall_theme` VALUES (8, '安心肉脯', '安心肉脯安心肉脯', '10889087', 'other/', 'other/e0686e1.jpg', 'other/37722bf.png', 5, 0, 't_3', '2020-07-23 22:48:08.469', '2020-08-04 19:08:01.296', NULL, 'horizontal_two');
INSERT INTO `mall_theme` VALUES (9, '新鲜蔬菜', '新鲜蔬菜新鲜蔬菜', '10889087', 'other/', 'other/21f4a2a.jpg', 'other/37722bf.png', 5, 0, 't_3', '2020-07-23 22:51:39.311', '2020-08-04 19:07:59.513', NULL, 'grid');

-- ----------------------------
-- Table structure for mall_theme_spu
-- ----------------------------
DROP TABLE IF EXISTS `mall_theme_spu`;
CREATE TABLE `mall_theme_spu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) NOT NULL,
  `spu_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_theme_spu
-- ----------------------------
INSERT INTO `mall_theme_spu` VALUES (1, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (2, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (3, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (4, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (5, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (6, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (7, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (8, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (9, 7, 18);
INSERT INTO `mall_theme_spu` VALUES (10, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (11, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (12, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (13, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (14, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (15, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (16, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (17, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (18, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (19, 8, 18);
INSERT INTO `mall_theme_spu` VALUES (20, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (21, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (22, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (23, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (24, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (25, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (26, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (27, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (28, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (29, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (30, 9, 18);
INSERT INTO `mall_theme_spu` VALUES (31, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (32, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (33, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (34, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (35, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (36, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (37, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (38, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (39, 2, 18);
INSERT INTO `mall_theme_spu` VALUES (40, 2, 18);

-- ----------------------------
-- Table structure for mall_wx_device_info
-- ----------------------------
DROP TABLE IF EXISTS `mall_wx_device_info`;
CREATE TABLE `mall_wx_device_info`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `wx_user_id` bigint(11) NOT NULL,
  `brand` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pixel_ratio` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `screen_width` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `screen_height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `window_width` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `window_height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status_bar_height` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `platform` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `font_size_setting` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sdkversion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_wx_device_info
-- ----------------------------
INSERT INTO `mall_wx_device_info` VALUES (1, 5, 'devtools', 'iPhone X', '3', '375', '812', '375', '642', '44', 'zh_CN', '7.0.4', 'iOS 10.0.1', 'devtools', '16', NULL);
INSERT INTO `mall_wx_device_info` VALUES (2, 6, 'devtools', 'iPhone X', '3', '375', '812', '375', '642', '44', 'zh_CN', '7.0.4', 'iOS 10.0.1', 'devtools', '16', '2.11.1');
INSERT INTO `mall_wx_device_info` VALUES (3, 7, 'HUAWEI', 'SEA-AL10', NULL, NULL, NULL, NULL, NULL, NULL, 'zh_CN', '7.0.17', 'Android 10', 'android', NULL, NULL);

-- ----------------------------
-- Table structure for mall_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `mall_wx_user`;
CREATE TABLE `mall_wx_user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(2) NULL DEFAULT NULL,
  `union_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `delete_time` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_wx_user
-- ----------------------------
INSERT INTO `mall_wx_user` VALUES (6, 'ofFMJ0fzPBQwPxU4YoOvi6WMqpW8', '好先生', 1, NULL, NULL, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIoxrTKgdTmBDCicEbVxjckcPwu8QPT8I3fIR00qrl2xpia1phUic24C7X4MF9gyOhwhysGNCHbPZibeQ/132', '2020-08-07 17:18:47.816', '2020-08-07 17:18:47.816', NULL);
INSERT INTO `mall_wx_user` VALUES (7, 'ofFMJ0ToE9m03Qo8dWaLMV70JRTo', '啊乘', 2, NULL, NULL, 'https://wx.qlogo.cn/mmopen/vi_32/TlZr6spnhlZgiac0LZFuM74iavHkfXdsHxcX5kNZBHEDObh7ZfIibhK7YANUUmPAWVFCHbx6BoiaAf8Y05JYJK2auA/132', '2020-08-10 14:15:06.993', '2020-08-10 14:15:06.993', NULL);

-- ----------------------------
-- Table structure for markers
-- ----------------------------
DROP TABLE IF EXISTS `markers`;
CREATE TABLE `markers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lat` float(10, 6) NOT NULL,
  `lng` float(10, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of markers
-- ----------------------------
INSERT INTO `markers` VALUES (1, 'Heir Apparel', 'Crowea Pl, Frenchs Forest NSW 2086', -33.737885, 151.235260);
INSERT INTO `markers` VALUES (2, 'BeeYourself Clothing', 'Thalia St, Hassall Grove NSW 2761', -33.729752, 150.836090);
INSERT INTO `markers` VALUES (3, 'Dress Code', 'Glenview Avenue, Revesby, NSW 2212', -33.949448, 151.008591);
INSERT INTO `markers` VALUES (4, 'The Legacy', 'Charlotte Ln, Chatswood NSW 2067', -33.796669, 151.183609);
INSERT INTO `markers` VALUES (5, 'Fashiontasia', 'Braidwood Dr, Prestons NSW 2170', -33.944489, 150.854706);
INSERT INTO `markers` VALUES (6, 'Trish & Tash', 'Lincoln St, Lane Cove West NSW 2066', -33.812222, 151.143707);
INSERT INTO `markers` VALUES (7, 'Perfect Fit', 'Darley Rd, Randwick NSW 2031', -33.903557, 151.237732);
INSERT INTO `markers` VALUES (8, 'Buena Ropa!', 'Brodie St, Rydalmere NSW 2116', -33.815521, 151.026642);
INSERT INTO `markers` VALUES (9, 'Coxcomb and Lily Boutique', 'Ferrers Rd, Horsley Park NSW 2175', -33.829525, 150.873764);
INSERT INTO `markers` VALUES (10, 'Moda Couture', 'Northcote Rd, Glebe NSW 2037', -33.873882, 151.177460);

SET FOREIGN_KEY_CHECKS = 1;
