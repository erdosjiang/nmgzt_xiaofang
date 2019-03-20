-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- Server version:               5.7.25 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL 版本:                  10.1.0.5505
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for nmgzt_xiaofang
DROP DATABASE IF EXISTS `nmgzt_xiaofang`;
CREATE DATABASE IF NOT EXISTS `nmgzt_xiaofang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nmgzt_xiaofang`;

-- Dumping structure for table nmgzt_xiaofang.qrtz_blob_triggers
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_blob_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_calendars
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_calendars: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_cron_triggers
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_cron_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_fired_triggers
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_fired_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_job_details
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_job_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_locks
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_locks: ~2 rows (approximately)
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` (`SCHED_NAME`, `LOCK_NAME`) VALUES
	('MyScheduler', 'STATE_ACCESS'),
	('MyScheduler', 'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_paused_trigger_grps
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_paused_trigger_grps: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_scheduler_state
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_scheduler_state: ~1 rows (approximately)
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` (`SCHED_NAME`, `INSTANCE_NAME`, `LAST_CHECKIN_TIME`, `CHECKIN_INTERVAL`) VALUES
	('MyScheduler', 'PC-2018031610031553056424917', 1553070145521, 15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_simple_triggers
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_simple_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_simprop_triggers
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_simprop_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.qrtz_triggers
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.qrtz_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_dept
CREATE TABLE IF NOT EXISTS `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_dept: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` (`DEPT_ID`, `PARENT_ID`, `DEPT_NAME`, `ORDER_NUM`, `CREATE_TIME`) VALUES
	(9, 0, '系统管理', NULL, '2019-03-20 15:30:07');
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_dict
CREATE TABLE IF NOT EXISTS `t_dict` (
  `DICT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典ID',
  `KEYY` bigint(20) NOT NULL COMMENT '键',
  `VALUEE` varchar(100) NOT NULL COMMENT '值',
  `FIELD_NAME` varchar(100) NOT NULL COMMENT '字段名称',
  `TABLE_NAME` varchar(100) NOT NULL COMMENT '表名',
  PRIMARY KEY (`DICT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_dict: ~7 rows (approximately)
/*!40000 ALTER TABLE `t_dict` DISABLE KEYS */;
INSERT INTO `t_dict` (`DICT_ID`, `KEYY`, `VALUEE`, `FIELD_NAME`, `TABLE_NAME`) VALUES
	(1, 0, '男', 'ssex', 't_user'),
	(2, 1, '女', 'ssex', 't_user'),
	(3, 2, '保密', 'ssex', 't_user'),
	(4, 1, '有效', 'status', 't_user'),
	(5, 0, '锁定', 'status', 't_user'),
	(6, 0, '菜单', 'type', 't_menu'),
	(7, 1, '按钮', 'type', 't_menu');
/*!40000 ALTER TABLE `t_dict` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_job
CREATE TABLE IF NOT EXISTS `t_job` (
  `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(100) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_job: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_job_log
CREATE TABLE IF NOT EXISTS `t_job_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(20) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2476 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_job_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_log` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_log
CREATE TABLE IF NOT EXISTS `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1043 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_log: ~8 rows (approximately)
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` (`ID`, `USERNAME`, `OPERATION`, `TIME`, `METHOD`, `PARAMS`, `IP`, `CREATE_TIME`, `location`) VALUES
	(964, 'admin', '获取用户信息', 16, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:28:36', '内网IP|0|0|内网IP|内网IP'),
	(965, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:29:42', '内网IP|0|0|内网IP|内网IP'),
	(966, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:29:44', '内网IP|0|0|内网IP|内网IP'),
	(967, 'admin', '获取系统所有URL', 2, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:29:45', '内网IP|0|0|内网IP|内网IP'),
	(968, 'admin', '获取部门信息', 0, 'cc.mrbird.system.controller.DeptController.index()', '', '127.0.0.1', '2019-03-20 15:29:46', '内网IP|0|0|内网IP|内网IP'),
	(969, 'admin', '新增部门', 73, 'cc.mrbird.system.controller.DeptController.addRole()', 'dept: "cc.mrbird.system.domain.Dept@36205bcc"', '127.0.0.1', '2019-03-20 15:30:07', '内网IP|0|0|内网IP|内网IP'),
	(970, 'admin', '获取用户信息', 7, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:30:21', '内网IP|0|0|内网IP|内网IP'),
	(971, 'admin', '修改用户', 78, 'cc.mrbird.system.controller.UserController.updateUser()', 'user: "User{userId=167, username=\'null\', password=\'null\', deptId=9, deptName=\'null\', email=\'erdosjiang@foxmail.com\', mobile=\'15247270102\', status=\'1\', crateTime=null, modifyTime=Wed Mar 20 15:30:30 CST 2019, lastLoginTime=null, ssex=\'0\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"  rolesSelect: "[Ljava.lang.Long;@cf091f7"', '127.0.0.1', '2019-03-20 15:30:31', '内网IP|0|0|内网IP|内网IP'),
	(972, 'admin', '获取用户信息', 43, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:30:31', '内网IP|0|0|内网IP|内网IP'),
	(973, 'admin', '访问系统', 1, 'cc.mrbird.system.controller.LoginController.index()', 'user: "User{userId=167, username=\'admin\', password=\'1fedc5a36d03c185065dd2b323886aa5\', deptId=null, deptName=\'null\', email=\'erdosjiang@foxmail.com\', mobile=\'15247270102\', status=\'1\', crateTime=Wed Mar 20 15:21:49 CST 2019, modifyTime=null, lastLoginTime=null, ssex=\'0\', theme=\'green\', avatar=\'default.jpg\', description=\'null\', roleName=\'null\'}"  org.springframework.validation.BindingResult.user: "org.springframework.validation.BeanPropertyBindingResult: 0 errors"', '127.0.0.1', '2019-03-20 15:39:08', '内网IP|0|0|内网IP|内网IP'),
	(974, 'admin', '获取用户信息', 5, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:40:04', '内网IP|0|0|内网IP|内网IP'),
	(975, 'admin', '获取用户信息', 8, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:41:18', '内网IP|0|0|内网IP|内网IP'),
	(976, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:41:19', '内网IP|0|0|内网IP|内网IP'),
	(977, 'admin', '获取用户信息', 16, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:41:20', '内网IP|0|0|内网IP|内网IP'),
	(978, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:41:56', '内网IP|0|0|内网IP|内网IP'),
	(979, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:41:58', '内网IP|0|0|内网IP|内网IP'),
	(980, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:00', '内网IP|0|0|内网IP|内网IP'),
	(981, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:01', '内网IP|0|0|内网IP|内网IP'),
	(982, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:09', '内网IP|0|0|内网IP|内网IP'),
	(983, 'admin', '修改用户', 54, 'cc.mrbird.system.controller.UserController.updateUser()', 'user: "User{userId=167, username=\'null\', password=\'null\', deptId=9, deptName=\'null\', email=\'admin@admin.com\', mobile=\'13333333333\', status=\'1\', crateTime=null, modifyTime=Wed Mar 20 15:42:14 CST 2019, lastLoginTime=null, ssex=\'0\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"  rolesSelect: "[Ljava.lang.Long;@1740f395"', '127.0.0.1', '2019-03-20 15:42:15', '内网IP|0|0|内网IP|内网IP'),
	(984, 'admin', '获取用户信息', 18, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:15', '内网IP|0|0|内网IP|内网IP'),
	(985, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:42:17', '内网IP|0|0|内网IP|内网IP'),
	(986, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:18', '内网IP|0|0|内网IP|内网IP'),
	(987, 'admin', '获取用户信息', 2, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:42:18', '内网IP|0|0|内网IP|内网IP'),
	(988, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:43:14', '内网IP|0|0|内网IP|内网IP'),
	(989, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:43:17', '内网IP|0|0|内网IP|内网IP'),
	(990, 'admin', '获取系统所有URL', 2, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:43:18', '内网IP|0|0|内网IP|内网IP'),
	(991, 'admin', '获取部门信息', 0, 'cc.mrbird.system.controller.DeptController.index()', '', '127.0.0.1', '2019-03-20 15:43:26', '内网IP|0|0|内网IP|内网IP'),
	(992, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:43:27', '内网IP|0|0|内网IP|内网IP'),
	(993, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:43:27', '内网IP|0|0|内网IP|内网IP'),
	(994, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:50:19', '内网IP|0|0|内网IP|内网IP'),
	(995, 'admin', '获取菜单信息', 1, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:50:19', '内网IP|0|0|内网IP|内网IP'),
	(996, 'admin', '获取系统所有URL', 146, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:50:21', '内网IP|0|0|内网IP|内网IP'),
	(997, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:50:25', '内网IP|0|0|内网IP|内网IP'),
	(998, 'admin', '获取字典信息', 0, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2019-03-20 15:50:27', '内网IP|0|0|内网IP|内网IP'),
	(999, 'admin', '获取用户信息', 27, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:52:09', '内网IP|0|0|内网IP|内网IP'),
	(1000, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:52:09', '内网IP|0|0|内网IP|内网IP'),
	(1001, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:52:10', '内网IP|0|0|内网IP|内网IP'),
	(1002, 'admin', '获取系统所有URL', 14, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:52:10', '内网IP|0|0|内网IP|内网IP'),
	(1003, 'admin', '获取部门信息', 0, 'cc.mrbird.system.controller.DeptController.index()', '', '127.0.0.1', '2019-03-20 15:52:11', '内网IP|0|0|内网IP|内网IP'),
	(1004, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:52:12', '内网IP|0|0|内网IP|内网IP'),
	(1005, 'admin', '获取系统所有URL', 2, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:52:13', '内网IP|0|0|内网IP|内网IP'),
	(1006, 'admin', '获取字典信息', 12, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2019-03-20 15:52:51', '内网IP|0|0|内网IP|内网IP'),
	(1007, 'admin', '获取用户信息', 3, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:25', '内网IP|0|0|内网IP|内网IP'),
	(1008, 'admin', '获取用户信息', 3, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:31', '内网IP|0|0|内网IP|内网IP'),
	(1009, 'admin', '获取用户信息', 291, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'0\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:34', '内网IP|0|0|内网IP|内网IP'),
	(1010, 'admin', '获取用户信息', 7, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'1\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:37', '内网IP|0|0|内网IP|内网IP'),
	(1011, 'admin', '获取用户信息', 10, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:39', '内网IP|0|0|内网IP|内网IP'),
	(1012, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:40', '内网IP|0|0|内网IP|内网IP'),
	(1013, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:57:42', '内网IP|0|0|内网IP|内网IP'),
	(1014, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:58:17', '内网IP|0|0|内网IP|内网IP'),
	(1015, 'admin', '获取部门信息', 0, 'cc.mrbird.system.controller.DeptController.index()', '', '127.0.0.1', '2019-03-20 15:58:30', '内网IP|0|0|内网IP|内网IP'),
	(1016, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:58:30', '内网IP|0|0|内网IP|内网IP'),
	(1017, 'admin', '获取系统所有URL', 12, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:58:31', '内网IP|0|0|内网IP|内网IP'),
	(1018, 'admin', '获取部门信息', 0, 'cc.mrbird.system.controller.DeptController.index()', '', '127.0.0.1', '2019-03-20 15:58:32', '内网IP|0|0|内网IP|内网IP'),
	(1019, 'admin', '获取字典信息', 0, 'cc.mrbird.system.controller.DictController.index()', '', '127.0.0.1', '2019-03-20 15:58:41', '内网IP|0|0|内网IP|内网IP'),
	(1020, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 15:58:41', '内网IP|0|0|内网IP|内网IP'),
	(1021, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 15:58:42', '内网IP|0|0|内网IP|内网IP'),
	(1022, 'admin', '获取系统所有URL', 2, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 15:58:42', '内网IP|0|0|内网IP|内网IP'),
	(1023, 'admin', '获取在线用户信息', 0, 'cc.mrbird.system.controller.SessionController.online()', '', '127.0.0.1', '2019-03-20 15:58:56', '内网IP|0|0|内网IP|内网IP'),
	(1024, 'admin', '获取天气信息', 1, 'cc.mrbird.web.controller.WeatherController.weather()', '', '127.0.0.1', '2019-03-20 15:59:08', '内网IP|0|0|内网IP|内网IP'),
	(1025, 'admin', '获取热门电影信息', 0, 'cc.mrbird.web.controller.MovieController.movieHot()', '', '127.0.0.1', '2019-03-20 15:59:27', '内网IP|0|0|内网IP|内网IP'),
	(1026, 'admin', '获取即将上映电影信息', 78, 'cc.mrbird.web.controller.MovieController.movieComing()', '', '127.0.0.1', '2019-03-20 15:59:42', '内网IP|0|0|内网IP|内网IP'),
	(1027, 'admin', '获取用户信息', 26, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 15:59:53', '内网IP|0|0|内网IP|内网IP'),
	(1028, 'admin', '更换主题', 343, 'cc.mrbird.system.controller.UserController.updateTheme()', 'user: "User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'red\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:13', '内网IP|0|0|内网IP|内网IP'),
	(1029, 'admin', '更换主题', 124, 'cc.mrbird.system.controller.UserController.updateTheme()', 'user: "User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'blue\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:14', '内网IP|0|0|内网IP|内网IP'),
	(1030, 'admin', '更换主题', 70, 'cc.mrbird.system.controller.UserController.updateTheme()', 'user: "User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'teal\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:17', '内网IP|0|0|内网IP|内网IP'),
	(1031, 'admin', '更换主题', 31, 'cc.mrbird.system.controller.UserController.updateTheme()', 'user: "User{userId=null, username=\'admin\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'1\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'null\', theme=\'green\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:19', '内网IP|0|0|内网IP|内网IP'),
	(1032, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:27', '内网IP|0|0|内网IP|内网IP'),
	(1033, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 16:00:28', '内网IP|0|0|内网IP|内网IP'),
	(1034, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 16:00:29', '内网IP|0|0|内网IP|内网IP'),
	(1035, 'admin', '获取用户信息', 1, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:30', '内网IP|0|0|内网IP|内网IP'),
	(1036, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 16:00:47', '内网IP|0|0|内网IP|内网IP'),
	(1037, 'admin', '获取系统所有URL', 2, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 16:00:48', '内网IP|0|0|内网IP|内网IP'),
	(1038, 'admin', '获取角色信息', 9, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 16:00:48', '内网IP|0|0|内网IP|内网IP'),
	(1039, 'admin', '获取菜单信息', 0, 'cc.mrbird.system.controller.MenuController.index()', '', '127.0.0.1', '2019-03-20 16:00:50', '内网IP|0|0|内网IP|内网IP'),
	(1040, 'admin', '获取系统所有URL', 17, 'cc.mrbird.system.controller.MenuController.getAllUrl()', '', '127.0.0.1', '2019-03-20 16:00:50', '内网IP|0|0|内网IP|内网IP'),
	(1041, 'admin', '获取角色信息', 0, 'cc.mrbird.system.controller.RoleController.index()', '', '127.0.0.1', '2019-03-20 16:00:51', '内网IP|0|0|内网IP|内网IP'),
	(1042, 'admin', '获取用户信息', 2, 'cc.mrbird.system.controller.UserController.userList()', 'request: "QueryRequest{pageSize=10, pageNum=1}"  user: "User{userId=null, username=\'\', password=\'null\', deptId=null, deptName=\'null\', email=\'null\', mobile=\'null\', status=\'\', crateTime=null, modifyTime=null, lastLoginTime=null, ssex=\'\', theme=\'null\', avatar=\'null\', description=\'null\', roleName=\'null\'}"', '127.0.0.1', '2019-03-20 16:00:52', '内网IP|0|0|内网IP|内网IP');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_menu
CREATE TABLE IF NOT EXISTS `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(100) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_menu: ~48 rows (approximately)
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` (`MENU_ID`, `PARENT_ID`, `MENU_NAME`, `URL`, `PERMS`, `ICON`, `TYPE`, `ORDER_NUM`, `CREATE_TIME`, `MODIFY_TIME`) VALUES
	(1, 0, '系统管理', NULL, NULL, 'zmdi zmdi-settings', '0', 1, '2017-12-27 16:39:07', NULL),
	(2, 0, '系统监控', NULL, NULL, 'zmdi zmdi-shield-security', '0', 2, '2017-12-27 16:45:51', '2018-01-17 17:08:28'),
	(3, 1, '用户管理', 'user', 'user:list', '', '0', 1, '2017-12-27 16:47:13', '2018-04-25 09:00:01'),
	(4, 1, '角色管理', 'role', 'role:list', '', '0', 2, '2017-12-27 16:48:09', '2018-04-25 09:01:12'),
	(5, 1, '菜单管理', 'menu', 'menu:list', '', '0', 3, '2017-12-27 16:48:57', '2018-04-25 09:01:30'),
	(6, 1, '部门管理', 'dept', 'dept:list', '', '0', 4, '2017-12-27 16:57:33', '2018-04-25 09:01:40'),
	(8, 2, '在线用户', 'session', 'session:list', '', '0', 1, '2017-12-27 16:59:33', '2018-04-25 09:02:04'),
	(10, 2, '系统日志', 'log', 'log:list', '', '0', 3, '2017-12-27 17:00:50', '2018-04-25 09:02:18'),
	(11, 3, '新增用户', NULL, 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL),
	(12, 3, '修改用户', NULL, 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL),
	(13, 3, '删除用户', NULL, 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL),
	(14, 4, '新增角色', NULL, 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL),
	(15, 4, '修改角色', NULL, 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL),
	(16, 4, '删除角色', NULL, 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL),
	(17, 5, '新增菜单', NULL, 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL),
	(18, 5, '修改菜单', NULL, 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL),
	(19, 5, '删除菜单', NULL, 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL),
	(20, 6, '新增部门', NULL, 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL),
	(21, 6, '修改部门', NULL, 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL),
	(22, 6, '删除部门', NULL, 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL),
	(23, 8, '踢出用户', NULL, 'user:kickout', NULL, '1', NULL, '2017-12-27 17:11:13', NULL),
	(24, 10, '删除日志', NULL, 'log:delete', NULL, '1', NULL, '2017-12-27 17:11:45', NULL),
	(58, 0, '网络资源', NULL, NULL, 'zmdi zmdi-globe-alt', '0', NULL, '2018-01-12 15:28:48', '2018-01-22 19:49:26'),
	(59, 58, '天气查询', 'weather', 'weather:list', '', '0', NULL, '2018-01-12 15:40:02', '2018-04-25 09:02:57'),
	(61, 58, '每日一文', 'article', 'article:list', '', '0', NULL, '2018-01-15 17:17:14', '2018-04-25 09:03:08'),
	(64, 1, '字典管理', 'dict', 'dict:list', '', '0', NULL, '2018-01-18 10:38:25', '2018-04-25 09:01:50'),
	(65, 64, '新增字典', NULL, 'dict:add', NULL, '1', NULL, '2018-01-18 19:10:08', NULL),
	(66, 64, '修改字典', NULL, 'dict:update', NULL, '1', NULL, '2018-01-18 19:10:27', NULL),
	(67, 64, '删除字典', NULL, 'dict:delete', NULL, '1', NULL, '2018-01-18 19:10:47', NULL),
	(81, 58, '影视资讯', NULL, NULL, NULL, '0', NULL, '2018-01-22 14:12:59', NULL),
	(82, 81, '正在热映', 'movie/hot', 'movie:hot', '', '0', NULL, '2018-01-22 14:13:47', '2018-04-25 09:03:48'),
	(83, 81, '即将上映', 'movie/coming', 'movie:coming', '', '0', NULL, '2018-01-22 14:14:36', '2018-04-25 09:04:05'),
	(86, 58, 'One 一个', NULL, NULL, NULL, '0', NULL, '2018-01-26 09:42:41', '2018-01-26 09:43:46'),
	(87, 86, '绘画', 'one/painting', 'one:painting', '', '0', NULL, '2018-01-26 09:47:14', '2018-04-25 09:04:17'),
	(88, 86, '语文', 'one/yuwen', 'one:yuwen', '', '0', NULL, '2018-01-26 09:47:40', '2018-04-25 09:04:30'),
	(89, 86, '散文', 'one/essay', 'one:essay', '', '0', NULL, '2018-01-26 09:48:05', '2018-04-25 09:04:42'),
	(101, 0, '任务调度', NULL, NULL, 'zmdi zmdi-alarm', '0', NULL, '2018-02-24 15:52:57', NULL),
	(102, 101, '定时任务', 'job', 'job:list', '', '0', NULL, '2018-02-24 15:53:53', '2018-04-25 09:05:12'),
	(103, 102, '新增任务', NULL, 'job:add', NULL, '1', NULL, '2018-02-24 15:55:10', NULL),
	(104, 102, '修改任务', NULL, 'job:update', NULL, '1', NULL, '2018-02-24 15:55:53', NULL),
	(105, 102, '删除任务', NULL, 'job:delete', NULL, '1', NULL, '2018-02-24 15:56:18', NULL),
	(106, 102, '暂停任务', NULL, 'job:pause', NULL, '1', NULL, '2018-02-24 15:57:08', NULL),
	(107, 102, '恢复任务', NULL, 'job:resume', NULL, '1', NULL, '2018-02-24 15:58:21', NULL),
	(108, 102, '立即执行任务', NULL, 'job:run', NULL, '1', NULL, '2018-02-24 15:59:45', NULL),
	(109, 101, '调度日志', 'jobLog', 'jobLog:list', '', '0', NULL, '2018-02-24 16:00:45', '2018-04-25 09:05:25'),
	(110, 109, '删除日志', NULL, 'jobLog:delete', NULL, '1', NULL, '2018-02-24 16:01:21', NULL),
	(113, 2, 'Redis监控', 'redis/info', 'redis:list', '', '0', NULL, '2018-06-28 14:29:42', NULL),
	(114, 2, 'Redis终端', 'redis/terminal', 'redis:terminal', '', '0', NULL, '2018-06-28 15:35:21', NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_role
CREATE TABLE IF NOT EXISTS `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` (`ROLE_ID`, `ROLE_NAME`, `REMARK`, `CREATE_TIME`, `MODIFY_TIME`) VALUES
	(1, '管理员', '管理员', '2017-12-27 16:23:11', '2018-02-24 16:01:45');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_role_menu
CREATE TABLE IF NOT EXISTS `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_role_menu: ~48 rows (approximately)
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` (`ROLE_ID`, `MENU_ID`) VALUES
	(1, 59),
	(1, 2),
	(1, 3),
	(1, 67),
	(1, 1),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 10),
	(1, 8),
	(1, 58),
	(1, 66),
	(1, 11),
	(1, 12),
	(1, 64),
	(1, 13),
	(1, 14),
	(1, 65),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 23),
	(1, 81),
	(1, 82),
	(1, 83),
	(1, 19),
	(1, 24),
	(1, 61),
	(1, 86),
	(1, 87),
	(1, 88),
	(1, 89),
	(1, 101),
	(1, 102),
	(1, 103),
	(1, 104),
	(1, 105),
	(1, 106),
	(1, 107),
	(1, 108),
	(1, 109),
	(1, 110),
	(1, 113),
	(1, 114);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_user
CREATE TABLE IF NOT EXISTS `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CRATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`USER_ID`, `USERNAME`, `PASSWORD`, `DEPT_ID`, `EMAIL`, `MOBILE`, `STATUS`, `CRATE_TIME`, `MODIFY_TIME`, `LAST_LOGIN_TIME`, `SSEX`, `THEME`, `AVATAR`, `DESCRIPTION`) VALUES
	(167, 'admin', '1fedc5a36d03c185065dd2b323886aa5', 9, 'erdosjiang@foxmail.com', '15247270102', '1', '2019-03-20 15:21:49', '2019-03-20 15:42:15', '2019-03-20 15:22:11', '0', 'green', 'default.jpg', '');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

-- Dumping structure for table nmgzt_xiaofang.t_user_role
CREATE TABLE IF NOT EXISTS `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table nmgzt_xiaofang.t_user_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` (`USER_ID`, `ROLE_ID`) VALUES
	(167, 1);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
