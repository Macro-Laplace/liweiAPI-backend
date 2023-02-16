/*
 Navicat Premium Data Transfer

 Source Server         : 华为
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : 124.70.132.46:3306
 Source Schema         : liweiapi

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 16/02/2023 16:32:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for interface_info
-- ----------------------------
DROP TABLE IF EXISTS `interface_info`;
CREATE TABLE `interface_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接口地址',
  `requestHeader` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求头',
  `responseHeader` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '响应头',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '接口状态（0-关闭，1-开启）',
  `method` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求类型',
  `userId` bigint(0) NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除(0-未删, 1-已删)',
  `requestParams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '接口信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_info
-- ----------------------------
INSERT INTO `interface_info` VALUES (1, 'getAddressByPhoneNumber', '获取手机号属地', 'http://43.139.212.49:8123/api/name/user', '{\n\"Content-Type\": \"application/json\"\n}', '{\n\"Content-Type\": \"application/json\"\n}', 1, 'post', 1, '2023-02-08 16:09:30', '2023-02-16 16:26:44', 0, ' {\n\"phoneNumber\": \"string\"\n }\n示例\n{\n\"phoneNumber\": \"18396279786\"\n }\n');
INSERT INTO `interface_info` VALUES (2, 'getWeatherByAddress', '暂未开发，敬请期待', 'http://localhost:8123/api/weather', '{\n\"Content-Type\": \"application/json\"\n}', '{\n\"Content-Type\": \"application/json\"\n}', 0, 'post', 3982575846, '2023-02-08 16:09:30', '2023-02-14 10:36:43', 0, '[\n {\n\"adress\": \"string\"\n }\n]');
INSERT INTO `interface_info` VALUES (3, 'getImageRandom', '暂未开发，尽请期待', 'www.rosaria-kilback.io', '{\n\"Content-Type\": \"application/json\"\n}', '{\n\"Content-Type\": \"application/json\"\n}', 0, 'get', 121776355, '2023-02-08 16:09:30', '2023-02-14 10:38:37', 0, '[\n {\n }\n]');
INSERT INTO `interface_info` VALUES (4, 'getImageRandom', '暂未开发，尽请期待', 'www.norris-bergstrom.biz', '{\n\"Content-Type\": \"application/json\"\n}', '{\n\"Content-Type\": \"application/json\"\n}', 0, '潘擎宇', 740, '2023-02-08 16:09:30', '2023-02-14 10:41:09', 0, '[\n {\n }\n]');
INSERT INTO `interface_info` VALUES (5, 'getImageRandom', '暂未开发，尽请期待', 'www.jordan-reinger.com', '{\n\"Content-Type\": \"application/json\"\n}', '{\n\"Content-Type\": \"application/json\"\n}', 0, '邓睿渊', 35542559, '2023-02-08 16:09:30', '2023-02-14 10:41:14', 0, '[\n {\n }\n]');
INSERT INTO `interface_info` VALUES (6, '吕黎昕', '孔越彬', 'www.fe-okon.info', '万伟宸', '林昊然', 0, '孟荣轩', 1445, '2023-02-08 16:09:30', '2023-02-14 10:39:48', 1, NULL);
INSERT INTO `interface_info` VALUES (7, '夏雪松', '许子骞', 'www.lashawna-legros.co', '蔡昊然', '胡鹏涛', 0, '钟立辉', 34075514, '2023-02-08 16:09:30', '2023-02-14 10:39:48', 1, NULL);
INSERT INTO `interface_info` VALUES (8, '严钰轩', '阎志泽', 'www.kay-funk.biz', '莫皓轩', '郭黎昕', 0, '龚天宇', 70956, '2023-02-08 16:09:30', '2023-02-14 10:39:48', 1, NULL);
INSERT INTO `interface_info` VALUES (9, '萧嘉懿', '曹熠彤', 'www.margarette-lindgren.biz', '田泽洋', '邓睿渊', 0, '梁志强', 98, '2023-02-08 16:09:30', '2023-02-14 10:39:47', 1, NULL);
INSERT INTO `interface_info` VALUES (10, '杜驰', '冯思源', 'www.vashti-auer.org', '黎健柏', '武博文', 0, '李伟宸', 9, '2023-02-08 16:09:30', '2023-02-14 10:39:45', 1, NULL);
INSERT INTO `interface_info` VALUES (11, '史金鑫', '蔡鹏涛', 'www.diann-keebler.org', '徐烨霖', '阎建辉', 0, '李烨伟', 125, '2023-02-08 16:09:30', '2023-02-14 10:39:45', 1, NULL);
INSERT INTO `interface_info` VALUES (12, '林炫明', '贾旭尧', 'www.dotty-kuvalis.io', '梁雨泽', '龙伟泽', 0, '许智渊', 79998, '2023-02-08 16:09:30', '2023-02-14 10:39:44', 1, NULL);
INSERT INTO `interface_info` VALUES (13, '何钰轩', '赖智宸', 'www.andy-adams.net', '崔思淼', '白鸿煊', 0, '邵振家', 7167482751, '2023-02-08 16:09:30', '2023-02-14 10:39:43', 1, NULL);
INSERT INTO `interface_info` VALUES (14, '魏志强', '于立诚', 'www.ione-aufderhar.biz', '朱懿轩', '万智渊', 0, '唐昊强', 741098, '2023-02-08 16:09:30', '2023-02-14 10:39:42', 1, NULL);
INSERT INTO `interface_info` VALUES (15, '严君浩', '金胤祥', 'www.duane-boyle.org', '雷昊焱', '侯思聪', 0, '郝思', 580514, '2023-02-08 16:09:30', '2023-02-14 10:39:51', 1, NULL);
INSERT INTO `interface_info` VALUES (16, '姚皓轩', '金鹏', 'www.lyda-klein.biz', '杜昊强', '邵志泽', 0, '冯鸿涛', 6546, '2023-02-08 16:09:30', '2023-02-14 10:39:41', 1, NULL);
INSERT INTO `interface_info` VALUES (17, '廖驰', '沈泽洋', 'www.consuelo-sipes.info', '彭昊然', '邓耀杰', 0, '周彬', 7761037, '2023-02-08 16:09:30', '2023-02-14 10:39:37', 1, NULL);
INSERT INTO `interface_info` VALUES (18, '赖智渊', '邓志泽', 'www.emerson-mann.co', '熊明哲', '贺哲瀚', 0, '田鹏', 381422, '2023-02-08 16:09:30', '2023-02-14 10:39:39', 1, NULL);
INSERT INTO `interface_info` VALUES (19, '许涛', '陆致远', 'www.vella-ankunding.name', '贾哲瀚', '莫昊焱', 0, '袁越彬', 4218096, '2023-02-08 16:09:30', '2023-02-14 10:39:39', 1, NULL);
INSERT INTO `interface_info` VALUES (20, '吕峻熙', '沈鹏飞', 'www.shari-reichel.org', '郭鸿煊', '覃烨霖', 0, '熊黎昕', 493, '2023-02-08 16:09:30', '2023-02-10 18:53:50', 1, NULL);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `gender` tinyint(0) NOT NULL DEFAULT 0 COMMENT '性别（0-男, 1-女）',
  `education` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `place` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地点',
  `job` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业',
  `contact` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `loveExp` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '感情经历',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容（个人介绍）',
  `photo` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片地址',
  `reviewStatus` int(0) NOT NULL DEFAULT 0 COMMENT '状态（0-待审核, 1-通过, 2-拒绝）',
  `reviewMessage` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核信息',
  `viewNum` int(0) NOT NULL DEFAULT 0 COMMENT '浏览数',
  `thumbNum` int(0) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `userId` bigint(0) NOT NULL COMMENT '创建用户 id',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint(0) NULL DEFAULT NULL COMMENT '性别',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user / admin',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `accessKey` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'accessKey',
  `secretKey` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'secretKey',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_userAccount`(`userAccount`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'liwei', 'liwei', NULL, NULL, 'admin', '677ea56e00dbdccf252ac7ca207c3fcb', 'liwei', '12345678', '2023-02-06 15:45:23', '2023-02-14 11:01:15', 0);
INSERT INTO `user` VALUES (2, NULL, 'lili', NULL, NULL, 'user', '677ea56e00dbdccf252ac7ca207c3fcb', '3a85a53abdc95af2ff6f533947acd695', '01d3e9d1c3b66910f01077f850df4ebf', '2023-02-08 16:55:52', '2023-02-14 09:34:07', 0);

-- ----------------------------
-- Table structure for user_interface_info
-- ----------------------------
DROP TABLE IF EXISTS `user_interface_info`;
CREATE TABLE `user_interface_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint(0) NOT NULL COMMENT '调用用户 id',
  `interfaceInfoId` bigint(0) NOT NULL COMMENT '接口 id',
  `totalNum` int(0) NOT NULL DEFAULT 0 COMMENT '总调用次数',
  `leftNum` int(0) NOT NULL DEFAULT 0 COMMENT '剩余调用次数',
  `status` int(0) NOT NULL DEFAULT 0 COMMENT '0-正常，1-禁用',
  `createTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `isDelete` tinyint(0) NOT NULL DEFAULT 0 COMMENT '是否删除(0-未删, 1-已删)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户调用接口关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_interface_info
-- ----------------------------
INSERT INTO `user_interface_info` VALUES (1, 1, 1, 100, 39, 1, '2023-02-06 15:02:00', '2023-02-16 16:31:45', 0);
INSERT INTO `user_interface_info` VALUES (2, 1, 2, 14, 9, 1, '2023-02-05 19:15:22', '2023-02-14 09:34:39', 0);
INSERT INTO `user_interface_info` VALUES (3, 1, 3, 23, 24, 1, '2023-02-02 19:15:57', '2023-02-14 09:34:39', 0);

SET FOREIGN_KEY_CHECKS = 1;
