/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : ry-soccer

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 10/03/2025 04:54:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'tys_equipment', '装备库存管理表', NULL, NULL, 'TysEquipment', 'crud', '', 'com.ruoyi.system', 'system', 'equipment', '装备库存管理', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (2, 'tys_match_info', '比赛信息表', NULL, NULL, 'TysMatchInfo', 'crud', '', 'com.ruoyi.system', 'system', 'info', '比赛信息', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (3, 'tys_match_stats', '比赛技术统计表', NULL, NULL, 'TysMatchStats', 'crud', '', 'com.ruoyi.system', 'system', 'stats', '比赛技术统计', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'tys_physical_data', '身体素质监测表', NULL, NULL, 'TysPhysicalData', 'crud', '', 'com.ruoyi.system', 'system', 'data', '身体素质监测', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'tys_player', '球员核心档案表', NULL, NULL, 'TysPlayer', 'crud', 'element-plus', 'com.ruoyi.soccer', 'soccer', 'player', '球员管理', 'AlanTan', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57', NULL);
INSERT INTO `gen_table` VALUES (6, 'tys_player_injury', '球员伤病追踪表', NULL, NULL, 'TysPlayerInjury', 'crud', '', 'com.ruoyi.system', 'system', 'injury', '球员伤病追踪', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'tys_team_notification', '球队通知公告表', NULL, NULL, 'TysTeamNotification', 'crud', '', 'com.ruoyi.system', 'system', 'notification', '球队通知公告', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'tys_training_attendance', '训练考勤记录表', NULL, NULL, 'TysTrainingAttendance', 'crud', '', 'com.ruoyi.system', 'system', 'attendance', '训练考勤记录', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (9, 'tys_training_plan', '训练计划表', NULL, NULL, 'TysTrainingPlan', 'crud', 'element-plus', 'com.ruoyi.soccer', 'soccer', 'plan', '训练计划', 'AlanTan', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53', NULL);
INSERT INTO `gen_table` VALUES (10, 'tys_training_players', '训练参与人员表', NULL, NULL, 'TysTrainingPlayers', 'crud', '', 'com.ruoyi.system', 'system', 'players', '训练参与人员', 'ruoyi', '0', '/', NULL, 'admin', '2025-03-09 05:01:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'tys_position_type', '职位大类表', NULL, NULL, 'TysPositionType', 'crud', 'element-plus', 'com.ruoyi.soccer', 'soccer', 'positiontyre', 'PositionTyre', 'AlanTan', '0', '/', '{\"parentMenuId\":\"2014\"}', 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:43:58', NULL);
INSERT INTO `gen_table` VALUES (12, 'tys_sub_position', '子职位表', NULL, NULL, 'TysSubPosition', 'crud', 'element-plus', 'com.ruoyi.soccer', 'soccer', 'subposition', 'SubPosition', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2014\"}', 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:44:11', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'equipment_id', '装备ID', 'bigint', 'Long', 'equipmentId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, 1, 'name', '装备名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, 1, 'type', '装备类型（字典：训练器材/比赛装备）', 'varchar(50)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, 1, 'quantity', '库存数量', 'int', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, 1, 'status', '状态（字典：可用/维修中）', 'varchar(50)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, 1, 'last_maintenance', '最后维护日期', 'date', 'Date', 'lastMaintenance', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, 1, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, 1, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, 1, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, 1, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, 1, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, 2, 'match_id', '比赛ID', 'bigint', 'Long', 'matchId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, 2, 'match_date', '比赛时间', 'datetime', 'Date', 'matchDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, 2, 'opponent', '对手名称', 'varchar(100)', 'String', 'opponent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, 2, 'match_type', '比赛类型（字典：友谊赛/联赛）', 'varchar(50)', 'String', 'matchType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, 2, 'location', '比赛地点', 'varchar(200)', 'String', 'location', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, 2, 'result', '比赛结果（胜/平/负）', 'varchar(50)', 'String', 'result', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, 2, 'score', '比分（格式：3-2）', 'varchar(20)', 'String', 'score', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, 2, 'match_report', '比赛分析报告', 'text', 'String', 'matchReport', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, 2, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, 2, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, 2, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, 2, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, 2, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, 3, 'stat_id', '统计ID', 'bigint', 'Long', 'statId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, 3, 'match_id', '关联比赛ID', 'bigint', 'Long', 'matchId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, 3, 'player_id', '关联球员ID', 'bigint', 'Long', 'playerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, 3, 'minutes_played', '出场时间（分钟）', 'int', 'Long', 'minutesPlayed', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, 3, 'distance_covered', '跑动距离（公里）', 'decimal(5,1)', 'BigDecimal', 'distanceCovered', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, 3, 'pass_attempt', '传球尝试', 'int', 'Long', 'passAttempt', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, 3, 'pass_success', '成功传球', 'int', 'Long', 'passSuccess', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, 3, 'shots_on_target', '射正次数', 'int', 'Long', 'shotsOnTarget', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 3, 'tackles_success', '成功抢断', 'int', 'Long', 'tacklesSuccess', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, 3, 'fouls_committed', '犯规次数', 'int', 'Long', 'foulsCommitted', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 3, 'rating', '比赛评分', 'decimal(3,1)', 'BigDecimal', 'rating', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 3, 'heatmap_data', '热力图数据（JSON）', 'text', 'String', 'heatmapData', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 12, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, 3, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, 4, 'data_id', '身体数据ID', 'bigint', 'Long', 'dataId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, 4, 'player_id', '关联球员ID', 'bigint', 'Long', 'playerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, 4, 'record_date', '记录日期（每月1日）', 'date', 'Date', 'recordDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, 4, 'weight', '体重（kg）', 'decimal(4,1)', 'BigDecimal', 'weight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, 4, 'body_fat', '体脂率（%）', 'decimal(4,1)', 'BigDecimal', 'bodyFat', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, 4, 'muscle_mass', '肌肉量（kg）', 'decimal(4,1)', 'BigDecimal', 'muscleMass', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, 4, 'vo2max', '最大摄氧量', 'decimal(4,1)', 'BigDecimal', 'vo2max', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (45, 4, 'sprint_30m', '30米冲刺（秒）', 'decimal(3,1)', 'BigDecimal', 'sprint30m', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (46, 4, 'vertical_jump', '垂直跳跃（cm）', 'decimal(4,1)', 'BigDecimal', 'verticalJump', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (47, 4, 'bench_press', '卧推重量（kg）', 'int', 'Long', 'benchPress', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (48, 4, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (49, 4, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (50, 4, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (51, 4, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (52, 4, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, 5, 'player_id', '球员唯一标识ID', 'bigint', 'Long', 'playerId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (54, 5, 'user_id', '关联系统用户ID', 'bigint', 'Long', 'userId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (55, 5, 'name', '球员姓名（中文全名）', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (56, 5, 'birth_date', '出生日期（格式：YYYY-MM-DD）', 'date', 'Date', 'birthDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (57, 5, 'height', '身高（单位：厘米，示例：175.5）', 'decimal(4,1)', 'BigDecimal', 'height', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (58, 5, 'weight', '体重（单位：千克，示例：68.5）', 'decimal(4,1)', 'BigDecimal', 'weight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (59, 5, 'position', '场上位置（字典：前锋/中场/后卫/守门员）', 'varchar(20)', 'String', 'position', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'position', 8, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (60, 5, 'jersey_number', '球衣号码（1-99）', 'int', 'Long', 'jerseyNumber', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (61, 5, 'contact_phone', '监护人联系电话', 'varchar(20)', 'String', 'contactPhone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (62, 5, 'guardian_contact', '备用联系人电话', 'varchar(20)', 'String', 'guardianContact', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (63, 5, 'join_date', '入队日期（格式：YYYY-MM-DD）', 'date', 'Date', 'joinDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (64, 5, 'medical_history', '医疗档案（含过敏史、重大伤病史）', 'text', 'String', 'medicalHistory', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'editor', '', 13, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (65, 5, 'del_flag', '删除标志（0-正常 1-已删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'select', 'sys_yes_no', 14, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (66, 5, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, '1', '1', 'EQ', 'input', '', 15, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (67, 5, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (68, 5, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (69, 5, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (70, 6, 'injury_id', '伤病记录ID', 'bigint', 'Long', 'injuryId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, 6, 'player_id', '关联球员ID', 'bigint', 'Long', 'playerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, 6, 'injury_date', '受伤日期', 'date', 'Date', 'injuryDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, 6, 'injury_type', '伤病类型（字典：肌肉拉伤/韧带损伤等）', 'varchar(100)', 'String', 'injuryType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, 6, 'recovery_status', '恢复状态（字典：治疗中/康复中/已恢复）', 'varchar(50)', 'String', 'recoveryStatus', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, 6, 'expected_recovery_date', '预计恢复日期', 'date', 'Date', 'expectedRecoveryDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, 6, 'medical_report', '医疗报告内容', 'text', 'String', 'medicalReport', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, 6, 'rehabilitation_plan', '康复训练计划', 'text', 'String', 'rehabilitationPlan', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, 6, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, 6, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, 6, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, 6, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, 6, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, 7, 'notification_id', '通知ID', 'bigint', 'Long', 'notificationId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, 7, 'title', '通知标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, 7, 'content', '通知内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (86, 7, 'send_time', '发送时间', 'datetime', 'Date', 'sendTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (87, 7, 'recipient_type', '接收类型（全体/指定球员）', 'varchar(20)', 'String', 'recipientType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (88, 7, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (89, 7, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, 7, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, 7, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, 7, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, 8, 'attendance_id', '考勤记录ID', 'bigint', 'Long', 'attendanceId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, 8, 'plan_id', '关联训练计划ID', 'bigint', 'Long', 'planId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, 8, 'player_id', '关联球员ID', 'bigint', 'Long', 'playerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, 8, 'attendance_status', '出勤状态（字典：出勤/请假/缺席）', 'varchar(20)', 'String', 'attendanceStatus', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, 8, 'arrival_time', '实际到场时间', 'datetime', 'Date', 'arrivalTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, 8, 'performance_rating', '表现评分（1-10分，0.5分间隔）', 'decimal(3,1)', 'BigDecimal', 'performanceRating', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, 8, 'technical_notes', '技术观察记录', 'text', 'String', 'technicalNotes', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, 8, 'physical_condition', '身体状态备注', 'varchar(500)', 'String', 'physicalCondition', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, 8, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, 8, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, 8, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, 8, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, 8, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, 9, 'plan_id', '训练计划ID', 'bigint', 'Long', 'planId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (107, 9, 'plan_name', '训练主题（示例：战术配合训练）', 'varchar(100)', 'String', 'planName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (108, 9, 'plan_date', '训练日期（格式：YYYY-MM-DD）', 'date', 'Date', 'planDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (109, 9, 'start_time', '开始时间（格式：HH:mm:ss）', 'time', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (110, 9, 'end_time', '结束时间（格式：HH:mm:ss）', 'time', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (111, 9, 'training_type', '训练类型（字典：技术/战术/体能）', 'varchar(50)', 'String', 'trainingType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'training_type', 6, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (112, 9, 'training_content', '训练内容（结构化大纲）', 'text', 'String', 'trainingContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 7, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (113, 9, 'training_objectives', '训练目标（可量化指标）', 'text', 'String', 'trainingObjectives', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (114, 9, 'location', '训练场地（具体位置）', 'varchar(200)', 'String', 'location', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (115, 9, 'equipment_needs', '所需器材（JSON格式）', 'varchar(500)', 'String', 'equipmentNeeds', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'textarea', '', 10, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (116, 9, 'weather', '天气状况', 'varchar(50)', 'String', 'weather', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (117, 9, 'del_flag', '删除标志', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (118, 9, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (119, 9, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (120, 9, 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (121, 9, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2025-03-09 05:01:58', '', '2025-03-09 06:56:53');
INSERT INTO `gen_table_column` VALUES (122, 10, 'id', '关联记录ID', 'bigint', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, 10, 'plan_id', '训练计划ID', 'bigint', 'Long', 'planId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, 10, 'player_id', '球员ID', 'bigint', 'Long', 'playerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-09 05:01:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, 5, 'photo_url', '球员照片URL（存储图片的访问路径）', 'varchar(255)', 'String', 'photoUrl', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 4, '', '2025-03-09 06:18:26', '', '2025-03-09 06:34:57');
INSERT INTO `gen_table_column` VALUES (126, 11, 'id', '序号', 'bigint', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:43:58');
INSERT INTO `gen_table_column` VALUES (127, 11, 'name', '职位大类名称', 'varchar(50)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:43:58');
INSERT INTO `gen_table_column` VALUES (128, 12, 'id', '主键ID', 'bigint', 'Long', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:44:11');
INSERT INTO `gen_table_column` VALUES (129, 12, 'name', '子职位名称', 'varchar(50)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:44:11');
INSERT INTO `gen_table_column` VALUES (130, 12, 'parent_id', '关联大类ID', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2025-03-10 03:16:43', '', '2025-03-10 03:44:11');
INSERT INTO `gen_table_column` VALUES (131, 11, 'description', '职位大类描述', 'varchar(255)', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'editor', '', 3, '', '2025-03-10 03:33:52', '', '2025-03-10 03:43:58');
INSERT INTO `gen_table_column` VALUES (132, 11, 'abbreviation', '职位大类缩写', 'varchar(20)', 'String', 'abbreviation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2025-03-10 03:33:52', '', '2025-03-10 03:43:58');
INSERT INTO `gen_table_column` VALUES (133, 12, 'description', '子职位描述', 'varchar(255)', 'String', 'description', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'editor', '', 4, '', '2025-03-10 03:33:55', '', '2025-03-10 03:44:11');
INSERT INTO `gen_table_column` VALUES (134, 12, 'abbreviation', '子职位缩写', 'varchar(20)', 'String', 'abbreviation', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2025-03-10 03:33:55', '', '2025-03-10 03:44:11');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2025-03-09 04:41:53', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '前锋', 'Forward', 'position', NULL, 'default', 'N', '0', 'admin', '2025-03-09 05:37:04', 'admin', '2025-03-09 05:46:59', '前锋');
INSERT INTO `sys_dict_data` VALUES (101, 2, '中场', 'midfielder', 'position', NULL, 'default', 'N', '0', 'admin', '2025-03-09 05:46:48', '', NULL, '中场');
INSERT INTO `sys_dict_data` VALUES (102, 0, '后卫', 'defender', 'position', NULL, 'default', 'N', '0', 'admin', '2025-03-09 05:47:24', '', NULL, '后卫');
INSERT INTO `sys_dict_data` VALUES (103, 0, '守门员', 'goalkeeper', 'position', NULL, 'default', 'N', '0', 'admin', '2025-03-09 05:48:30', '', NULL, '守门员');
INSERT INTO `sys_dict_data` VALUES (104, 1, '技术', 'technique', 'training_type', NULL, 'default', 'N', '0', 'admin', '2025-03-09 06:54:41', '', NULL, '技术');
INSERT INTO `sys_dict_data` VALUES (105, 2, '战术', 'tactics', 'training_type', NULL, 'default', 'N', '0', 'admin', '2025-03-09 06:55:17', '', NULL, '战术');
INSERT INTO `sys_dict_data` VALUES (106, 3, '体能', 'physical', 'training_type', NULL, 'default', 'N', '0', 'admin', '2025-03-09 06:55:44', '', NULL, '体能');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '场上位置', 'position', '0', 'admin', '2025-03-09 05:34:41', 'admin', '2025-03-09 06:52:30', '场上位置');
INSERT INTO `sys_dict_type` VALUES (101, '训练类型', 'training_type', '0', 'admin', '2025-03-09 06:52:11', '', NULL, '训练类型');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2025-03-09 04:41:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 04:59:39');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-09 06:32:09');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2025-03-10 03:16:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2052 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 5, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2025-03-09 04:41:53', 'admin', '2025-03-09 07:00:30', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 6, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2025-03-09 04:41:53', 'admin', '2025-03-09 07:00:39', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 7, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2025-03-09 04:41:53', 'admin', '2025-03-09 07:00:49', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 99, 'http://ruoyi.vip', NULL, '', '', 1, 0, 'M', '1', '1', '', 'guide', 'admin', '2025-03-09 04:41:53', 'admin', '2025-03-09 07:01:17', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2025-03-09 04:41:53', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2025-03-09 04:41:53', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2025-03-09 04:41:53', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2025-03-09 04:41:53', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2025-03-09 04:41:53', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2025-03-09 04:41:53', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2025-03-09 04:41:53', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2025-03-09 04:41:53', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2025-03-09 04:41:53', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2025-03-09 04:41:53', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2025-03-09 04:41:53', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2025-03-09 04:41:53', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2025-03-09 04:41:53', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2025-03-09 04:41:53', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2025-03-09 04:41:53', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2025-03-09 04:41:53', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2025-03-09 04:41:53', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2025-03-09 04:41:53', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2025-03-09 04:41:53', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2025-03-09 04:41:53', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '球员管理', 0, 1, 'player', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'button', 'admin', '2025-03-09 05:24:46', 'admin', '2025-03-09 05:26:17', '');
INSERT INTO `sys_menu` VALUES (2001, '球员管理', 2000, 1, 'player', 'soccer/player/index', NULL, '', 1, 0, 'C', '0', '0', 'soccer:player:list', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '球员管理菜单');
INSERT INTO `sys_menu` VALUES (2002, '球员管理查询', 2001, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:player:query', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '球员管理新增', 2001, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:player:add', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '球员管理修改', 2001, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:player:edit', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '球员管理删除', 2001, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:player:remove', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '球员管理导出', 2001, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:player:export', '#', 'admin', '2025-03-09 05:55:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '训练管理', 0, 2, 'training', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'button', 'admin', '2025-03-09 06:47:34', 'admin', '2025-03-09 07:00:04', '');
INSERT INTO `sys_menu` VALUES (2008, '训练计划', 2007, 1, 'plan', 'soccer/plan/index', NULL, '', 1, 0, 'C', '0', '0', 'soccer:plan:list', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '训练计划菜单');
INSERT INTO `sys_menu` VALUES (2009, '训练计划查询', 2008, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:plan:query', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '训练计划新增', 2008, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:plan:add', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '训练计划修改', 2008, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:plan:edit', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '训练计划删除', 2008, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:plan:remove', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '训练计划导出', 2008, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:plan:export', '#', 'admin', '2025-03-09 06:58:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, 'SubPosition', 2051, 2, 'subposition', 'soccer/subposition/index', NULL, '', 1, 0, 'C', '0', '0', 'soccer:subposition:list', '#', 'admin', '2025-03-10 03:45:31', 'admin', '2025-03-10 03:51:38', 'SubPosition菜单');
INSERT INTO `sys_menu` VALUES (2040, 'SubPosition查询', 2039, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:subposition:query', '#', 'admin', '2025-03-10 03:45:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, 'SubPosition新增', 2039, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:subposition:add', '#', 'admin', '2025-03-10 03:45:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, 'SubPosition修改', 2039, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:subposition:edit', '#', 'admin', '2025-03-10 03:45:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, 'SubPosition删除', 2039, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:subposition:remove', '#', 'admin', '2025-03-10 03:45:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, 'SubPosition导出', 2039, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:subposition:export', '#', 'admin', '2025-03-10 03:45:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, 'PositionTyre', 2051, 1, 'positiontyre', 'soccer/positiontyre/index', NULL, '', 1, 0, 'C', '0', '0', 'soccer:positiontyre:list', '#', 'admin', '2025-03-10 03:45:36', 'admin', '2025-03-10 03:51:44', 'PositionTyre菜单');
INSERT INTO `sys_menu` VALUES (2046, 'PositionTyre查询', 2045, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:positiontyre:query', '#', 'admin', '2025-03-10 03:45:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, 'PositionTyre新增', 2045, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:positiontyre:add', '#', 'admin', '2025-03-10 03:45:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, 'PositionTyre修改', 2045, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:positiontyre:edit', '#', 'admin', '2025-03-10 03:45:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, 'PositionTyre删除', 2045, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:positiontyre:remove', '#', 'admin', '2025-03-10 03:45:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, 'PositionTyre导出', 2045, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'soccer:positiontyre:export', '#', 'admin', '2025-03-10 03:45:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, 'Position', 2000, 1, 'position', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'button', 'admin', '2025-03-10 03:49:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tys_equipment,tys_match_info,tys_match_stats,tys_physical_data,tys_player,tys_player_injury,tys_team_notification,tys_training_attendance,tys_training_plan,tys_training_players\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:01:58', 443);
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"班员管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"player\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:24:46', 231);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"球员姓名（中文全名）\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BirthDate\",\"columnComment\":\"出生日期（格式：YYYY-MM-DD）\",\"columnId\":56,\"columnName\":\"birth_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:26:02', 138);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 05:24:46\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"球员管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"player\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:26:17', 22);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:26:02\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:26:02\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:26:02\",\"usableColumn\":false},{\"capJavaField\":\"BirthDate\",\"columnComment\":\"出生日期\",\"columnId\":56,\"columnName\":\"birth_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isE', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:27:21', 63);
INSERT INTO `sys_oper_log` VALUES (105, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"场上位置\",\"dictType\":\"position\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:34:41', 26);
INSERT INTO `sys_oper_log` VALUES (106, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"前锋\",\"dictSort\":1,\"dictType\":\"position\",\"dictValue\":\"Forward\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:37:04', 14);
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"中场\",\"dictSort\":2,\"dictType\":\"position\",\"dictValue\":\"midfielder\",\"listClass\":\"default\",\"params\":{},\"remark\":\"中场\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:46:48', 21);
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:37:04\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"前锋\",\"dictSort\":1,\"dictType\":\"position\",\"dictValue\":\"Forward\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"前锋\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:46:59', 20);
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"后卫\",\"dictSort\":0,\"dictType\":\"position\",\"dictValue\":\"defender\",\"listClass\":\"default\",\"params\":{},\"remark\":\"后卫\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:47:24', 11);
INSERT INTO `sys_oper_log` VALUES (110, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"守门员\",\"dictSort\":0,\"dictType\":\"position\",\"dictValue\":\"goalkeeper\",\"listClass\":\"default\",\"params\":{},\"remark\":\"守门员\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:48:30', 19);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:27:21\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:27:21\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 05:27:21\",\"usableColumn\":false},{\"capJavaField\":\"BirthDate\",\"columnComment\":\"出生日期\",\"columnId\":56,\"columnName\":\"birth_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isE', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 05:54:14', 58);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 05:54:19', 315);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 05:59:54', 359);
INSERT INTO `sys_oper_log` VALUES (114, '球员管理', 1, 'com.ruoyi.soccer.controller.TysPlayerController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/player', '127.0.0.1', '内网IP', '{\"birthDate\":\"2000-01-05\",\"contactPhone\":\"6591234567\",\"createTime\":\"2025-03-09 06:13:24\",\"delFlag\":\"N\",\"guardianContact\":\"6591234567\",\"height\":180.5,\"jerseyNumber\":10,\"joinDate\":\"2025-03-05 00:00:00\",\"medicalHistory\":\"夺在在要圧\",\"name\":\"张三峰\",\"params\":{},\"playerId\":1,\"position\":\"Forward\",\"weight\":80}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:13:24', 41);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tys_player', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:18:26', 130);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:26\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:26\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"球员姓名（中文全名）\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:26\",\"usableColumn\":false},{\"capJavaField\":\"PhotoUrl\",\"columnComment\":\"球员照片URL（存储图片的访问路径）\",\"columnId\":125,\"columnName\":\"photo_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:18:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:18:47', 68);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_physical_data\"}', NULL, 0, NULL, '2025-03-09 06:19:11', 312);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:46\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:46\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"球员姓名（中文全名）\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:18:46\",\"usableColumn\":false},{\"capJavaField\":\"PhotoUrl\",\"columnComment\":\"球员照片URL（存储图片的访问路径）\",\"columnId\":125,\"columnName\":\"photo_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:18:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:20:17', 77);
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 06:20:22', 68);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:17\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"球员姓名（中文全名）\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:17\",\"usableColumn\":false},{\"capJavaField\":\"PhotoUrl\",\"columnComment\":\"球员照片URL（存储图片的访问路径）\",\"columnId\":125,\"columnName\":\"photo_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:18:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:20:30', 39);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 06:20:33', 37);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 06:20:39', 38);
INSERT INTO `sys_oper_log` VALUES (123, '球员管理', 2, 'com.ruoyi.soccer.controller.TysPlayerController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/player', '127.0.0.1', '内网IP', '{\"birthDate\":\"2000-01-05 00:00:00\",\"contactPhone\":\"6591234567\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:13:25\",\"delFlag\":\"N\",\"guardianContact\":\"6591234567\",\"height\":180.5,\"jerseyNumber\":10,\"joinDate\":\"2025-03-05 00:00:00\",\"medicalHistory\":\"夺在在要圧\",\"name\":\"张三峰\",\"params\":{},\"photoUrl\":\"/profile/upload/2025/03/09/tys001.jpg_20250309062335A001.jpeg\",\"playerId\":1,\"position\":\"Forward\",\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:23:37\",\"weight\":80}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:23:37', 14);
INSERT INTO `sys_oper_log` VALUES (124, '球员管理', 2, 'com.ruoyi.soccer.controller.TysPlayerController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/player', '127.0.0.1', '内网IP', '{\"birthDate\":\"2000-01-05 00:00:00\",\"contactPhone\":\"6591234567\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:13:25\",\"delFlag\":\"N\",\"guardianContact\":\"6591234567\",\"height\":180.5,\"jerseyNumber\":10,\"joinDate\":\"2025-03-05 00:00:00\",\"medicalHistory\":\"夺在在要圧\",\"name\":\"张三峰\",\"params\":{},\"photoUrl\":\"/profile/upload/2025/03/09/张三峰头像_20250309062750A002.jpg\",\"playerId\":1,\"position\":\"Forward\",\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:27:51\",\"weight\":80}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:27:51', 15);
INSERT INTO `sys_oper_log` VALUES (125, '球员管理', 2, 'com.ruoyi.soccer.controller.TysPlayerController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/player', '127.0.0.1', '内网IP', '{\"birthDate\":\"2000-01-05 00:00:00\",\"contactPhone\":\"6591234567\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:13:25\",\"delFlag\":\"N\",\"guardianContact\":\"6591234567\",\"height\":180.5,\"jerseyNumber\":10,\"joinDate\":\"2025-03-05 00:00:00\",\"medicalHistory\":\"2023年3月 左 半月板受伤\",\"name\":\"张三峰\",\"params\":{},\"photoUrl\":\"/profile/upload/2025/03/09/张三峰头像_20250309062750A002.jpg\",\"playerId\":1,\"position\":\"Forward\",\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:28:37\",\"weight\":80}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:28:37', 6);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"player\",\"className\":\"TysPlayer\",\"columns\":[{\"capJavaField\":\"PlayerId\",\"columnComment\":\"球员唯一标识ID\",\"columnId\":53,\"columnName\":\"player_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"playerId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:30\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"关联系统用户ID\",\"columnId\":54,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:30\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"球员姓名（中文全名）\",\"columnId\":55,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:20:30\",\"usableColumn\":false},{\"capJavaField\":\"PhotoUrl\",\"columnComment\":\"球员照片URL（存储图片的访问路径）\",\"columnId\":125,\"columnName\":\"photo_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-09 06:18:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:34:58', 70);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_player\"}', NULL, 0, NULL, '2025-03-09 06:35:01', 53);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"训练管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"training\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:47:34', 15);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plan\",\"className\":\"TysTrainingPlan\",\"columns\":[{\"capJavaField\":\"PlanId\",\"columnComment\":\"训练计划ID\",\"columnId\":106,\"columnName\":\"plan_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"planId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PlanName\",\"columnComment\":\"训练主题（示例：战术配合训练）\",\"columnId\":107,\"columnName\":\"plan_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PlanDate\",\"columnComment\":\"训练日期（格式：YYYY-MM-DD）\",\"columnId\":108,\"columnName\":\"plan_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StartTime\",\"columnComment\":\"开始时间（格式：HH:mm:ss）\",\"columnId\":109,\"columnName\":\"start_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:50:28', 37);
INSERT INTO `sys_oper_log` VALUES (130, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"训练类型\",\"dictType\":\"training_type\",\"params\":{},\"remark\":\"训练类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:52:11', 10);
INSERT INTO `sys_oper_log` VALUES (131, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:34:41\",\"dictId\":100,\"dictName\":\"场上位置\",\"dictType\":\"position\",\"params\":{},\"remark\":\"场上位置\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:52:30', 16);
INSERT INTO `sys_oper_log` VALUES (132, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"技术\",\"dictSort\":1,\"dictType\":\"training_type\",\"dictValue\":\"technique\",\"listClass\":\"default\",\"params\":{},\"remark\":\"技术\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:54:41', 9);
INSERT INTO `sys_oper_log` VALUES (133, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"战术\",\"dictSort\":2,\"dictType\":\"training_type\",\"dictValue\":\"tactics\",\"listClass\":\"default\",\"params\":{},\"remark\":\"战术\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:55:17', 18);
INSERT INTO `sys_oper_log` VALUES (134, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"体能\",\"dictSort\":3,\"dictType\":\"training_type\",\"dictValue\":\"physical\",\"listClass\":\"default\",\"params\":{},\"remark\":\"体能\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:55:44', 15);
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plan\",\"className\":\"TysTrainingPlan\",\"columns\":[{\"capJavaField\":\"PlanId\",\"columnComment\":\"训练计划ID\",\"columnId\":106,\"columnName\":\"plan_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"planId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:50:28\",\"usableColumn\":false},{\"capJavaField\":\"PlanName\",\"columnComment\":\"训练主题（示例：战术配合训练）\",\"columnId\":107,\"columnName\":\"plan_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:50:28\",\"usableColumn\":false},{\"capJavaField\":\"PlanDate\",\"columnComment\":\"训练日期（格式：YYYY-MM-DD）\",\"columnId\":108,\"columnName\":\"plan_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:50:28\",\"usableColumn\":false},{\"capJavaField\":\"StartTime\",\"columnComment\":\"开始时间（格式：HH:mm:ss）\",\"columnId\":109,\"columnName\":\"start_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:56:25', 44);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_training_plan\"}', NULL, 0, NULL, '2025-03-09 06:56:30', 54);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plan\",\"className\":\"TysTrainingPlan\",\"columns\":[{\"capJavaField\":\"PlanId\",\"columnComment\":\"训练计划ID\",\"columnId\":106,\"columnName\":\"plan_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"planId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:25\",\"usableColumn\":false},{\"capJavaField\":\"PlanName\",\"columnComment\":\"训练主题（示例：战术配合训练）\",\"columnId\":107,\"columnName\":\"plan_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:25\",\"usableColumn\":false},{\"capJavaField\":\"PlanDate\",\"columnComment\":\"训练日期（格式：YYYY-MM-DD）\",\"columnId\":108,\"columnName\":\"plan_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:25\",\"usableColumn\":false},{\"capJavaField\":\"StartTime\",\"columnComment\":\"开始时间（格式：HH:mm:ss）\",\"columnId\":109,\"columnName\":\"start_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:56:38', 38);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plan\",\"className\":\"TysTrainingPlan\",\"columns\":[{\"capJavaField\":\"PlanId\",\"columnComment\":\"训练计划ID\",\"columnId\":106,\"columnName\":\"plan_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"planId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:38\",\"usableColumn\":false},{\"capJavaField\":\"PlanName\",\"columnComment\":\"训练主题（示例：战术配合训练）\",\"columnId\":107,\"columnName\":\"plan_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:38\",\"usableColumn\":false},{\"capJavaField\":\"PlanDate\",\"columnComment\":\"训练日期（格式：YYYY-MM-DD）\",\"columnId\":108,\"columnName\":\"plan_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"planDate\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2025-03-09 06:56:38\",\"usableColumn\":false},{\"capJavaField\":\"StartTime\",\"columnComment\":\"开始时间（格式：HH:mm:ss）\",\"columnId\":109,\"columnName\":\"start_time\",\"columnType\":\"time\",\"createBy\":\"admin\",\"createTime\":\"2025-03-09 05:01:58\",\"dictType\":\"\",\"edit\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 06:56:54', 39);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_training_plan\"}', NULL, 0, NULL, '2025-03-09 06:57:00', 31);
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 06:47:34\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"训练管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"training\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:00:04', 34);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 04:41:53\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:00:30', 9);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 04:41:53\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:00:39', 16);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 04:41:53\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:00:49', 10);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 04:41:53\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:00:59', 18);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-09 04:41:53\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":99,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-09 07:01:17', 18);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tys_position_type,tys_sub_position\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:16:44', 126);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AlanTan\",\"functionName\":\"PositionTyre\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"职位大类表\",\"tableId\":11,\"tableName\":\"tys_position_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:20:18', 27);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"position\",\"className\":\"TysSubPosition\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":128,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"子职位名称\",\"columnId\":129,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"关联大类ID\",\"columnId\":130,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":true}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"SubPosition\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":2000}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":2000},\"parentMenuId\":\"2000\",\"sub\":false,\"tableComment\":\"子职位表\",\"tableId\":12,\"tableName\":\"tys_sub_position\",\"tplCategory\":\"crud\",\"tplWebType\":\"element', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:21:11', 18);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"PositionSet\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"position\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:22:09', 18);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2025-03-10 03:22:08\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"PositionSet\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"position\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:22:18', 12);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:20:18\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:20:18\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AlanTan\",\"functionName\":\"PositionTyre\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":2014}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":2014},\"parentMenuId\":\"2014\",\"sub\":false,\"tableComment\":\"职位大类表\",\"tableId\":11,\"tableName\":\"tys_position_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:22:50', 24);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"position\",\"className\":\"TysSubPosition\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":128,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:21:11\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"子职位名称\",\"columnId\":129,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:21:11\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"关联大类ID\",\"columnId\":130,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:21:11\",\"usableColumn\":true}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"SubPosition\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":2014}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":2014},\"parentMenuId\":\"2014\",\"sub\":false,\"ta', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:23:01', 25);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:22:50\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:22:50\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AlanTan\",\"functionName\":\"PositionTyre\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":2014}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":2014},\"parentMenuId\":\"2014\",\"sub\":false,\"tableComment\":\"职位大类表\",\"tableId\":11,\"tableName\":\"tys_position_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:23:17', 21);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:23:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:23:17\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"AlanTan\",\"functionName\":\"PositionTyre\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"soccer\",\"options\":\"{\\\"parentMenuId\\\":\\\"2014\\\"}\",\"packageName\":\"com.ruoyi.soccer\",\"params\":{\"parentMenuId\":\"2014\"},\"parentMenuId\":\"2014\",\"sub\":false,\"tableComment\":\"职位大类表\",\"tableId\":11,\"tableName\":\"tys_position_type\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:23:27', 20);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_position_type,tys_sub_position\"}', NULL, 0, NULL, '2025-03-10 03:23:34', 257);
INSERT INTO `sys_oper_log` VALUES (156, 'PositionTyre', 1, 'com.ruoyi.soccer.controller.TysPositionTypeController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/type', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"Goalkeeper\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:29:40', 23);
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tys_position_type', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:33:52', 44);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tys_sub_position', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:33:55', 22);
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:33:52\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:33:52\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"职位大类描述\",\"columnId\":131,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Abbreviation\",\"columnComment\":\"职位大类缩写\",\"columnId\":132,\"columnName\":\"abbreviation\",\"columnType\":\"varchar(20)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:35:17', 21);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"position\",\"className\":\"TysSubPosition\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":128,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:33:55\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"子职位名称\",\"columnId\":129,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:33:55\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"关联大类ID\",\"columnId\":130,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:33:55\",\"usableColumn\":true},{\"capJavaField\":\"Description\",\"columnComment\":\"子职位描述\",\"columnId\":133,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:35:41', 18);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:17\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"职位大类描述\",\"columnId\":131,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:17\",\"usableColumn\":false},{\"capJavaField\":\"Abbreviation\",\"columnComment\":\"职位大类缩写\",\"columnId\":132,\"columnName\":\"abbreviation\",\"columnType\":\"varchar(20)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inse', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:36:02', 15);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_position_type,tys_sub_position\"}', NULL, 0, NULL, '2025-03-10 03:36:06', 71);
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"PositionTyre\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:36:02\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:36:02\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"职位大类描述\",\"columnId\":131,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:36:02\",\"usableColumn\":false},{\"capJavaField\":\"Abbreviation\",\"columnComment\":\"职位大类缩写\",\"columnId\":132,\"columnName\":\"abbreviation\",\"columnType\":\"varchar(20)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:41:23', 47);
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"SubPosition\",\"className\":\"TysSubPosition\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":128,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:41\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"子职位名称\",\"columnId\":129,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:41\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"关联大类ID\",\"columnId\":130,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:35:41\",\"usableColumn\":true},{\"capJavaField\":\"Description\",\"columnComment\":\"子职位描述\",\"columnId\":133,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:41:36', 25);
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"positiontyre\",\"className\":\"TysPositionType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":126,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:23\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"职位大类名称\",\"columnId\":127,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:23\",\"usableColumn\":false},{\"capJavaField\":\"Description\",\"columnComment\":\"职位大类描述\",\"columnId\":131,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"description\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:23\",\"usableColumn\":false},{\"capJavaField\":\"Abbreviation\",\"columnComment\":\"职位大类缩写\",\"columnId\":132,\"columnName\":\"abbreviation\",\"columnType\":\"varchar(20)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:43:58', 23);
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"subposition\",\"className\":\"TysSubPosition\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键ID\",\"columnId\":128,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:36\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"子职位名称\",\"columnId\":129,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:36\",\"usableColumn\":false},{\"capJavaField\":\"ParentId\",\"columnComment\":\"关联大类ID\",\"columnId\":130,\"columnName\":\"parent_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-03-10 03:16:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"parentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":true,\"tableId\":12,\"updateBy\":\"\",\"updateTime\":\"2025-03-10 03:41:36\",\"usableColumn\":true},{\"capJavaField\":\"Description\",\"columnComment\":\"子职位描述\",\"columnId\":133,\"columnName\":\"description\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2025-03-10 03:33:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:44:11', 22);
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tys_position_type,tys_sub_position\"}', NULL, 0, NULL, '2025-03-10 03:44:49', 55);
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"Position\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"position\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:49:55', 45);
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"soccer/subposition/index\",\"createTime\":\"2025-03-10 03:45:31\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2039,\"menuName\":\"SubPosition\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2051,\"path\":\"subposition\",\"perms\":\"soccer:subposition:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:50:19', 14);
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"soccer/positiontyre/index\",\"createTime\":\"2025-03-10 03:45:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2045,\"menuName\":\"PositionTyre\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2051,\"path\":\"positiontyre\",\"perms\":\"soccer:positiontyre:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:50:28', 16);
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"soccer/subposition/index\",\"createTime\":\"2025-03-10 03:45:31\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2039,\"menuName\":\"SubPosition\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2051,\"path\":\"subposition\",\"perms\":\"soccer:subposition:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:51:38', 10);
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"soccer/positiontyre/index\",\"createTime\":\"2025-03-10 03:45:36\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2045,\"menuName\":\"PositionTyre\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2051,\"path\":\"positiontyre\",\"perms\":\"soccer:positiontyre:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:51:44', 10);
INSERT INTO `sys_oper_log` VALUES (173, 'PositionTyre', 2, 'com.ruoyi.soccer.controller.TysPositionTypeController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/positiontyre', '127.0.0.1', '内网IP', '{\"abbreviation\":\"GK\",\"description\":\"<p>守门员</p>\",\"id\":1,\"name\":\"Goalkeeper\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:54:42', 17);
INSERT INTO `sys_oper_log` VALUES (174, 'PositionTyre', 1, 'com.ruoyi.soccer.controller.TysPositionTypeController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/positiontyre', '127.0.0.1', '内网IP', '{\"description\":\"<p>后卫</p>\",\"id\":2,\"name\":\"Defender\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 03:55:58', 20);
INSERT INTO `sys_oper_log` VALUES (175, 'PositionTyre', 1, 'com.ruoyi.soccer.controller.TysPositionTypeController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/positiontyre', '127.0.0.1', '内网IP', '{\"abbreviation\":\"\",\"description\":\"<p>中场</p>\",\"id\":3,\"name\":\"Midfielder\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:07:13', 15);
INSERT INTO `sys_oper_log` VALUES (176, 'PositionTyre', 1, 'com.ruoyi.soccer.controller.TysPositionTypeController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/positiontyre', '127.0.0.1', '内网IP', '{\"description\":\"<p>前锋</p>\",\"id\":4,\"name\":\"Forward\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:07:38', 16);
INSERT INTO `sys_oper_log` VALUES (177, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"CB\",\"description\":\"<p>中后卫：负责防守对方前锋，阻止进球</p>\",\"id\":1,\"name\":\"Center Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:29:06', 19);
INSERT INTO `sys_oper_log` VALUES (178, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"FB\",\"description\":\"<p><span class=\\\"ql-cursor\\\">﻿</span>边后卫</p>\",\"id\":2,\"name\":\"Full Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:32:30', 16);
INSERT INTO `sys_oper_log` VALUES (179, 'SubPosition', 2, 'com.ruoyi.soccer.controller.TysSubPositionController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"FB\",\"description\":\"<p>边后卫</p>\",\"id\":2,\"name\":\"Full Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:33:50', 6);
INSERT INTO `sys_oper_log` VALUES (180, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"LB\",\"description\":\"<p>左后卫</p>\",\"id\":3,\"name\":\"Left Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:34:24', 15);
INSERT INTO `sys_oper_log` VALUES (181, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"RB\",\"description\":\"<p>右后卫</p>\",\"id\":4,\"name\":\"Right Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:35:00', 13);
INSERT INTO `sys_oper_log` VALUES (182, 'SubPosition', 2, 'com.ruoyi.soccer.controller.TysSubPositionController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"FB\",\"description\":\"<p>边后卫 负责边路防守及支援进攻</p>\",\"id\":2,\"name\":\"Full Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:36:01', 14);
INSERT INTO `sys_oper_log` VALUES (183, 'SubPosition', 2, 'com.ruoyi.soccer.controller.TysSubPositionController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"LB\",\"description\":\"<p>左后卫   负责边路防守及支援进攻</p>\",\"id\":3,\"name\":\"Left Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:36:06', 14);
INSERT INTO `sys_oper_log` VALUES (184, 'SubPosition', 2, 'com.ruoyi.soccer.controller.TysSubPositionController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"RB\",\"description\":\"<p>右后卫   负责边路防守及支援进攻</p>\",\"id\":4,\"name\":\"Right Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:36:12', 7);
INSERT INTO `sys_oper_log` VALUES (185, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"WB\",\"description\":\"<p>翼卫：类似全职边后卫，但在进攻时也会前插，参与球队的进攻组织</p>\",\"id\":5,\"name\":\"Wing Back\",\"params\":{},\"parentId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:39:13', 14);
INSERT INTO `sys_oper_log` VALUES (186, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"CM\",\"description\":\"<p>中场中路球员：负责连接防守与进攻，控制比赛节奏。</p>\",\"id\":6,\"name\":\"Central Midfielder\",\"params\":{},\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:39:54', 13);
INSERT INTO `sys_oper_log` VALUES (187, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"DM\",\"description\":\"<p>防守型中场：主要职责是保护防线，抢断并分配球权。</p>\",\"id\":7,\"name\":\"Defensive Midfielder\",\"params\":{},\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:40:46', 6);
INSERT INTO `sys_oper_log` VALUES (188, 'SubPosition', 1, 'com.ruoyi.soccer.controller.TysSubPositionController.add()', 'POST', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"AM\",\"description\":\"<p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(44, 44, 54);\\\">进攻型中场：更侧重于创造得分机会，靠近对方禁区。</span></p>\",\"id\":8,\"name\":\"Attacking Midfielder\",\"params\":{},\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:41:27', 14);
INSERT INTO `sys_oper_log` VALUES (189, 'SubPosition', 2, 'com.ruoyi.soccer.controller.TysSubPositionController.edit()', 'PUT', 1, 'admin', '研发部门', '/soccer/subposition', '127.0.0.1', '内网IP', '{\"abbreviation\":\"AM\",\"description\":\"<p>进攻型中场：更侧重于创造得分机会，靠近对方禁区。</p>\",\"id\":8,\"name\":\"Attacking Midfielder\",\"params\":{},\"parentId\":3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2025-03-10 04:42:19', 15);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2025-03-09 04:41:53', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2025-03-09 04:41:53', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-10 03:16:27', 'admin', '2025-03-09 04:41:53', '', '2025-03-10 03:16:26', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2025-03-09 04:41:53', 'admin', '2025-03-09 04:41:53', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for tys_equipment
-- ----------------------------
DROP TABLE IF EXISTS `tys_equipment`;
CREATE TABLE `tys_equipment`  (
  `equipment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '装备ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '装备名称',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '装备类型（字典：训练器材/比赛装备）',
  `quantity` int NOT NULL COMMENT '库存数量',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'AVAILABLE' COMMENT '状态（字典：可用/维修中）',
  `last_maintenance` date NULL DEFAULT NULL COMMENT '最后维护日期',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`equipment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '装备库存管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for tys_match_info
-- ----------------------------
DROP TABLE IF EXISTS `tys_match_info`;
CREATE TABLE `tys_match_info`  (
  `match_id` bigint NOT NULL AUTO_INCREMENT COMMENT '比赛ID',
  `match_date` datetime NOT NULL COMMENT '比赛时间',
  `opponent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '对手名称',
  `match_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'FRIENDLY' COMMENT '比赛类型（字典：友谊赛/联赛）',
  `location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '比赛地点',
  `result` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '比赛结果（胜/平/负）',
  `score` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '比分（格式：3-2）',
  `match_report` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '比赛分析报告',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`match_id`) USING BTREE,
  INDEX `tys_idx_match_date`(`match_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '比赛信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_match_info
-- ----------------------------

-- ----------------------------
-- Table structure for tys_match_stats
-- ----------------------------
DROP TABLE IF EXISTS `tys_match_stats`;
CREATE TABLE `tys_match_stats`  (
  `stat_id` bigint NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `match_id` bigint NOT NULL COMMENT '关联比赛ID',
  `player_id` bigint NOT NULL COMMENT '关联球员ID',
  `minutes_played` int NULL DEFAULT NULL COMMENT '出场时间（分钟）',
  `distance_covered` decimal(5, 1) NULL DEFAULT NULL COMMENT '跑动距离（公里）',
  `pass_attempt` int NULL DEFAULT 0 COMMENT '传球尝试',
  `pass_success` int NULL DEFAULT 0 COMMENT '成功传球',
  `shots_on_target` int NULL DEFAULT 0 COMMENT '射正次数',
  `tackles_success` int NULL DEFAULT 0 COMMENT '成功抢断',
  `fouls_committed` int NULL DEFAULT 0 COMMENT '犯规次数',
  `rating` decimal(3, 1) NULL DEFAULT NULL COMMENT '比赛评分',
  `heatmap_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '热力图数据（JSON）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`stat_id`) USING BTREE,
  INDEX `tys_idx_ms_match_player`(`match_id` ASC, `player_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '比赛技术统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_match_stats
-- ----------------------------

-- ----------------------------
-- Table structure for tys_physical_data
-- ----------------------------
DROP TABLE IF EXISTS `tys_physical_data`;
CREATE TABLE `tys_physical_data`  (
  `data_id` bigint NOT NULL AUTO_INCREMENT COMMENT '身体数据ID',
  `player_id` bigint NOT NULL COMMENT '关联球员ID',
  `record_date` date NOT NULL COMMENT '记录日期（每月1日）',
  `weight` decimal(4, 1) NULL DEFAULT NULL COMMENT '体重（kg）',
  `body_fat` decimal(4, 1) NULL DEFAULT NULL COMMENT '体脂率（%）',
  `muscle_mass` decimal(4, 1) NULL DEFAULT NULL COMMENT '肌肉量（kg）',
  `vo2max` decimal(4, 1) NULL DEFAULT NULL COMMENT '最大摄氧量',
  `sprint_30m` decimal(3, 1) NULL DEFAULT NULL COMMENT '30米冲刺（秒）',
  `vertical_jump` decimal(4, 1) NULL DEFAULT NULL COMMENT '垂直跳跃（cm）',
  `bench_press` int NULL DEFAULT NULL COMMENT '卧推重量（kg）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`data_id`) USING BTREE,
  INDEX `tys_idx_pd_player_date`(`player_id` ASC, `record_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '身体素质监测表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_physical_data
-- ----------------------------

-- ----------------------------
-- Table structure for tys_player
-- ----------------------------
DROP TABLE IF EXISTS `tys_player`;
CREATE TABLE `tys_player`  (
  `player_id` bigint NOT NULL AUTO_INCREMENT COMMENT '球员唯一标识ID',
  `user_id` bigint NULL DEFAULT NULL COMMENT '关联系统用户ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '球员姓名（中文全名）',
  `photo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '球员照片URL（存储图片的访问路径）',
  `birth_date` date NOT NULL COMMENT '出生日期（格式：YYYY-MM-DD）',
  `height` decimal(4, 1) NULL DEFAULT NULL COMMENT '身高（单位：厘米，示例：175.5）',
  `weight` decimal(4, 1) NULL DEFAULT NULL COMMENT '体重（单位：千克，示例：68.5）',
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '场上位置（字典：前锋/中场/后卫/守门员）',
  `jersey_number` int NULL DEFAULT NULL COMMENT '球衣号码（1-99）',
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '监护人联系电话',
  `guardian_contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备用联系人电话',
  `join_date` date NULL DEFAULT NULL COMMENT '入队日期（格式：YYYY-MM-DD）',
  `medical_history` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '医疗档案（含过敏史、重大伤病史）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0-正常 1-已删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`player_id`) USING BTREE,
  INDEX `tys_idx_player_position`(`position` ASC) USING BTREE,
  INDEX `tys_idx_player_birthdate`(`birth_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '球员核心档案表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_player
-- ----------------------------
INSERT INTO `tys_player` VALUES (1, NULL, '张三峰', '/profile/upload/2025/03/09/张三峰头像_20250309062750A002.jpg', '2000-01-05', 180.5, 80.0, 'Forward', 10, '6591234567', '6591234567', '2025-03-05', '2023年3月 左 半月板受伤', 'N', '', '2025-03-09 06:13:25', '', '2025-03-09 06:28:37');

-- ----------------------------
-- Table structure for tys_player_injury
-- ----------------------------
DROP TABLE IF EXISTS `tys_player_injury`;
CREATE TABLE `tys_player_injury`  (
  `injury_id` bigint NOT NULL AUTO_INCREMENT COMMENT '伤病记录ID',
  `player_id` bigint NOT NULL COMMENT '关联球员ID',
  `injury_date` date NOT NULL COMMENT '受伤日期',
  `injury_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '伤病类型（字典：肌肉拉伤/韧带损伤等）',
  `recovery_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'IN_TREATMENT' COMMENT '恢复状态（字典：治疗中/康复中/已恢复）',
  `expected_recovery_date` date NULL DEFAULT NULL COMMENT '预计恢复日期',
  `medical_report` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '医疗报告内容',
  `rehabilitation_plan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '康复训练计划',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`injury_id`) USING BTREE,
  INDEX `tys_idx_injury_player`(`player_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '球员伤病追踪表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_player_injury
-- ----------------------------

-- ----------------------------
-- Table structure for tys_position_type
-- ----------------------------
DROP TABLE IF EXISTS `tys_position_type`;
CREATE TABLE `tys_position_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位大类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位大类描述',
  `abbreviation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位大类缩写',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '职位大类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_position_type
-- ----------------------------
INSERT INTO `tys_position_type` VALUES (1, 'Goalkeeper', '<p>守门员</p>', 'GK');
INSERT INTO `tys_position_type` VALUES (2, 'Defender', '<p>后卫</p>', NULL);
INSERT INTO `tys_position_type` VALUES (3, 'Midfielder', '<p>中场</p>', '');
INSERT INTO `tys_position_type` VALUES (4, 'Forward', '<p>前锋</p>', NULL);

-- ----------------------------
-- Table structure for tys_sub_position
-- ----------------------------
DROP TABLE IF EXISTS `tys_sub_position`;
CREATE TABLE `tys_sub_position`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '子职位名称',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '关联大类ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '子职位描述',
  `abbreviation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '子职位缩写',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '子职位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_sub_position
-- ----------------------------
INSERT INTO `tys_sub_position` VALUES (1, 'Center Back', 2, '<p>中后卫：负责防守对方前锋，阻止进球</p>', 'CB');
INSERT INTO `tys_sub_position` VALUES (2, 'Full Back', 2, '<p>边后卫 负责边路防守及支援进攻</p>', 'FB');
INSERT INTO `tys_sub_position` VALUES (3, 'Left Back', 2, '<p>左后卫   负责边路防守及支援进攻</p>', 'LB');
INSERT INTO `tys_sub_position` VALUES (4, 'Right Back', 2, '<p>右后卫   负责边路防守及支援进攻</p>', 'RB');
INSERT INTO `tys_sub_position` VALUES (5, 'Wing Back', 2, '<p>翼卫：类似全职边后卫，但在进攻时也会前插，参与球队的进攻组织</p>', 'WB');
INSERT INTO `tys_sub_position` VALUES (6, 'Central Midfielder', 3, '<p>中场中路球员：负责连接防守与进攻，控制比赛节奏。</p>', 'CM');
INSERT INTO `tys_sub_position` VALUES (7, 'Defensive Midfielder', 3, '<p>防守型中场：主要职责是保护防线，抢断并分配球权。</p>', 'DM');
INSERT INTO `tys_sub_position` VALUES (8, 'Attacking Midfielder', 3, '<p>进攻型中场：更侧重于创造得分机会，靠近对方禁区。</p>', 'AM');

-- ----------------------------
-- Table structure for tys_team_notification
-- ----------------------------
DROP TABLE IF EXISTS `tys_team_notification`;
CREATE TABLE `tys_team_notification`  (
  `notification_id` bigint NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '通知标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '通知内容',
  `send_time` datetime NOT NULL COMMENT '发送时间',
  `recipient_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'ALL' COMMENT '接收类型（全体/指定球员）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '球队通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_team_notification
-- ----------------------------

-- ----------------------------
-- Table structure for tys_training_attendance
-- ----------------------------
DROP TABLE IF EXISTS `tys_training_attendance`;
CREATE TABLE `tys_training_attendance`  (
  `attendance_id` bigint NOT NULL AUTO_INCREMENT COMMENT '考勤记录ID',
  `plan_id` bigint NOT NULL COMMENT '关联训练计划ID',
  `player_id` bigint NOT NULL COMMENT '关联球员ID',
  `attendance_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'PRESENT' COMMENT '出勤状态（字典：出勤/请假/缺席）',
  `arrival_time` datetime NULL DEFAULT NULL COMMENT '实际到场时间',
  `performance_rating` decimal(3, 1) NULL DEFAULT NULL COMMENT '表现评分（1-10分，0.5分间隔）',
  `technical_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '技术观察记录',
  `physical_condition` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身体状态备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`attendance_id`) USING BTREE,
  INDEX `tys_idx_ta_plan_player`(`plan_id` ASC, `player_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '训练考勤记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_training_attendance
-- ----------------------------

-- ----------------------------
-- Table structure for tys_training_plan
-- ----------------------------
DROP TABLE IF EXISTS `tys_training_plan`;
CREATE TABLE `tys_training_plan`  (
  `plan_id` bigint NOT NULL AUTO_INCREMENT COMMENT '训练计划ID',
  `plan_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '训练主题（示例：战术配合训练）',
  `plan_date` date NOT NULL COMMENT '训练日期（格式：YYYY-MM-DD）',
  `start_time` time NOT NULL COMMENT '开始时间（格式：HH:mm:ss）',
  `end_time` time NOT NULL COMMENT '结束时间（格式：HH:mm:ss）',
  `training_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '训练类型（字典：技术/战术/体能）',
  `training_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '训练内容（结构化大纲）',
  `training_objectives` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '训练目标（可量化指标）',
  `location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '训练场地（具体位置）',
  `equipment_needs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所需器材（JSON格式）',
  `weather` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '天气状况',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`plan_id`) USING BTREE,
  INDEX `tys_idx_plan_date`(`plan_date` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '训练计划表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_training_plan
-- ----------------------------

-- ----------------------------
-- Table structure for tys_training_players
-- ----------------------------
DROP TABLE IF EXISTS `tys_training_players`;
CREATE TABLE `tys_training_players`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '关联记录ID',
  `plan_id` bigint NOT NULL COMMENT '训练计划ID',
  `player_id` bigint NOT NULL COMMENT '球员ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tys_idx_tp_plan`(`plan_id` ASC) USING BTREE,
  INDEX `tys_idx_tp_player`(`player_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '训练参与人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tys_training_players
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
