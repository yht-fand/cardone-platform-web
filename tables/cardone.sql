/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.10 : Database - cardone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_article` */

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `ARTICLE_ID` varchar(36) NOT NULL COMMENT '文章标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `TITLE` varchar(256) NOT NULL COMMENT '标题',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  `RELEASE_DATE` time DEFAULT NULL COMMENT '发布日期',
  `TYPE_CODE` varchar(36) DEFAULT NULL COMMENT '类别代码',
  `PICTURE_URL` varchar(256) DEFAULT NULL COMMENT '图片路径',
  `INTRO` text COMMENT '简介',
  `RECOM` char(1) DEFAULT NULL COMMENT '推荐',
  PRIMARY KEY (`ARTICLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章';

/*Data for the table `t_article` */

/*Table structure for table `t_department` */

DROP TABLE IF EXISTS `t_department`;

CREATE TABLE `t_department` (
  `DEPARTMENT_ID` varchar(36) NOT NULL COMMENT '部门标识',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `NAME` varchar(256) NOT NULL COMMENT '名称',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树名称',
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `t_department` */

/*Table structure for table `t_department_role` */

DROP TABLE IF EXISTS `t_department_role`;

CREATE TABLE `t_department_role` (
  `DEPARTMENT_ROLE_ID` varchar(36) NOT NULL COMMENT '部门与角色标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  PRIMARY KEY (`DEPARTMENT_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门与角色';

/*Data for the table `t_department_role` */

/*Table structure for table `t_dictionary` */

DROP TABLE IF EXISTS `t_dictionary`;

CREATE TABLE `t_dictionary` (
  `DICTIONARY_ID` varchar(36) NOT NULL COMMENT '字典标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点编号',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `DICTIONARY_CODE` varchar(36) NOT NULL COMMENT '字典代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `VALUE_` varchar(1024) DEFAULT NULL COMMENT '值',
  `ORDER_` bigint(20) DEFAULT '0' COMMENT '排序',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '说明',
  `EXPLAIN_` varchar(512) DEFAULT NULL COMMENT '解释',
  `DICTIONARY_TYPE_CODE` varchar(36) NOT NULL COMMENT '字典类别代码',
  PRIMARY KEY (`DICTIONARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `t_dictionary` */

/*Table structure for table `t_dictionary_type` */

DROP TABLE IF EXISTS `t_dictionary_type`;

CREATE TABLE `t_dictionary_type` (
  `DICTIONARY_TYPE_ID` varchar(36) NOT NULL COMMENT '字典类别标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点编号',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `DICTIONARY_TYPE_CODE` varchar(36) NOT NULL COMMENT '字典类别代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '说明',
  `ORDER_` bigint(20) DEFAULT '0' COMMENT '排序',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树代名称',
  PRIMARY KEY (`DICTIONARY_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类别';

/*Data for the table `t_dictionary_type` */

/*Table structure for table `t_error_info` */

DROP TABLE IF EXISTS `t_error_info`;

CREATE TABLE `t_error_info` (
  `ERROR_INFO_ID` varchar(36) NOT NULL COMMENT '错误信息标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点编号',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ERROR_INFO_CODE` varchar(36) NOT NULL COMMENT '错误信息代码',
  `TYPE_CODE` varchar(36) NOT NULL COMMENT '类别代码',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  PRIMARY KEY (`ERROR_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='错误信息';

/*Data for the table `t_error_info` */

/*Table structure for table `t_i18n_info` */

DROP TABLE IF EXISTS `t_i18n_info`;

CREATE TABLE `t_i18n_info` (
  `I18N_INFO_ID` varchar(36) NOT NULL COMMENT '国际化信息标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点编号',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `I18N_INFO_CODE` varchar(36) NOT NULL COMMENT '国际化信息代码',
  `TYPE_CODE` varchar(36) NOT NULL COMMENT '类别代码',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  PRIMARY KEY (`I18N_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化信息';

/*Data for the table `t_i18n_info` */

/*Table structure for table `t_navigation` */

DROP TABLE IF EXISTS `t_navigation`;

CREATE TABLE `t_navigation` (
  `NAVIGATION_ID` varchar(36) NOT NULL COMMENT '导航标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `NAVIGATION_CODE` varchar(36) NOT NULL COMMENT '导航代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `ORDER_` bigint(20) DEFAULT '0' COMMENT '排序',
  `ICON_STYLE` varchar(256) DEFAULT NULL COMMENT '图标样式',
  `URL` varchar(256) DEFAULT NULL COMMENT 'URL',
  `TARGET` varchar(256) DEFAULT NULL COMMENT '目标',
  `DATA_OPTION` varchar(512) DEFAULT NULL COMMENT '数据选项',
  `TYPE_CODE` varchar(36) DEFAULT NULL COMMENT '类别代码',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树名称',
  PRIMARY KEY (`NAVIGATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导航';

/*Data for the table `t_navigation` */

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `NOTICE_ID` varchar(36) NOT NULL COMMENT '公告标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `TITLE` varchar(256) NOT NULL COMMENT '标题',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  `RELEASE_DATE` time DEFAULT NULL COMMENT '发布日期',
  `TYPE_CODE` varchar(36) DEFAULT NULL COMMENT '类别代码',
  `PICTURE_URL` varchar(256) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`NOTICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `t_notice` */

/*Table structure for table `t_operate_log` */

DROP TABLE IF EXISTS `t_operate_log`;

CREATE TABLE `t_operate_log` (
  `OPERATE_LOG_ID` varchar(36) NOT NULL COMMENT '操作日志标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `OPERATE_LOG_CODE` varchar(36) NOT NULL COMMENT '操作日志代码',
  `TYPE_CODE` varchar(36) NOT NULL COMMENT '类别代码',
  `MESSAGE` varchar(512) DEFAULT NULL COMMENT '消息',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`OPERATE_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `t_operate_log` */

/*Table structure for table `t_org` */

DROP TABLE IF EXISTS `t_org`;

CREATE TABLE `t_org` (
  `ORG_ID` varchar(36) NOT NULL COMMENT '组织标识',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) NOT NULL COMMENT '组织代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树名称',
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织';

/*Data for the table `t_org` */

/*Table structure for table `t_org_role` */

DROP TABLE IF EXISTS `t_org_role`;

CREATE TABLE `t_org_role` (
  `ORG_ROLE_ID` varchar(36) NOT NULL COMMENT '组织与角色标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  PRIMARY KEY (`ORG_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织与角色';

/*Data for the table `t_org_role` */

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `PERMISSION_ID` varchar(36) NOT NULL COMMENT '许可标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `PERMISSION_CODE` varchar(36) NOT NULL COMMENT '许可代码',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树名称',
  PRIMARY KEY (`PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='许可';

/*Data for the table `t_permission` */

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `ROLE_ID` varchar(36) NOT NULL COMMENT '角色标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

/*Data for the table `t_role` */

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `ROLE_PERMISSION_ID` varchar(36) NOT NULL COMMENT '角色与许可标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  `PERMISSION_CODE` varchar(36) NOT NULL COMMENT '许可代码',
  PRIMARY KEY (`ROLE_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与许可';

/*Data for the table `t_role_permission` */

/*Table structure for table `t_site` */

DROP TABLE IF EXISTS `t_site`;

CREATE TABLE `t_site` (
  `SITE_ID` varchar(36) NOT NULL COMMENT '站点标识',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点编号',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  `EXPLAIN_` varchar(512) DEFAULT NULL COMMENT '解释',
  PRIMARY KEY (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点';

/*Data for the table `t_site` */

/*Table structure for table `t_system_info` */

DROP TABLE IF EXISTS `t_system_info`;

CREATE TABLE `t_system_info` (
  `SYSTEM_INFO_ID` varchar(36) NOT NULL COMMENT '系统信息标识',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `SYSTEM_INFO_CODE` varchar(36) NOT NULL COMMENT '系统信息代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  `REMARK` varchar(512) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`SYSTEM_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统信息';

/*Data for the table `t_system_info` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `USER_ID` varchar(36) NOT NULL COMMENT '用户标识',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `PASSWORD_` varchar(256) NOT NULL COMMENT '密码',
  `PASSWORD_SALT` varchar(256) DEFAULT NULL COMMENT '密码盐',
  `EMAIL` varchar(256) DEFAULT NULL COMMENT '邮箱',
  `AGE` int(11) DEFAULT NULL COMMENT '年龄',
  `INTRO` text COMMENT '简介',
  `MOBILE_PHONE` varchar(256) DEFAULT NULL COMMENT '手机',
  `LOCUS` varchar(256) DEFAULT NULL COMMENT '现居住地',
  `COMPANY_NAME` varchar(256) DEFAULT NULL COMMENT '工作单位',
  `TELEPHONE` varchar(256) DEFAULT NULL COMMENT '联系电话',
  `BIRTHDAY` time DEFAULT NULL COMMENT '出生日期',
  `CALL_NAME` varchar(256) DEFAULT NULL COMMENT '昵称',
  `PROFESSION_CODE` varchar(36) DEFAULT NULL COMMENT '职业代码',
  `MARRY_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '婚姻状态代码',
  `FOLK_CODE` varchar(36) DEFAULT NULL COMMENT '民族代码',
  `DIPLOMA_CODE` varchar(36) DEFAULT NULL COMMENT '学历/文凭代码',
  `COUNTRY_CODE` varchar(36) DEFAULT NULL COMMENT '国家代码',
  `PROVINCE_CODE` varchar(36) DEFAULT NULL COMMENT '省代码',
  `CITY_CODE` varchar(36) DEFAULT NULL COMMENT '市代码',
  `AREA_CODE` varchar(36) DEFAULT NULL COMMENT '区域代码',
  `ADDRESS` varchar(256) DEFAULT NULL COMMENT '地址',
  `FLAG_CODE` varchar(36) DEFAULT NULL COMMENT '标记代码',
  `SEX_CODE` varchar(36) DEFAULT NULL COMMENT '性别代码',
  `QQ` varchar(256) DEFAULT NULL COMMENT 'QQ号码',
  `ID_CARD_NO` varchar(256) DEFAULT NULL COMMENT '身份证号码',
  `PRIVATE_PASSWORD` varchar(256) DEFAULT NULL COMMENT '隐私资料查看密码',
  `PRIVATE_PASSWORD_SALT` varchar(256) DEFAULT NULL COMMENT '隐私密码盐',
  `PORTRAIT_URL` varchar(256) DEFAULT NULL COMMENT '肖像路径',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `t_user` */

/*Table structure for table `t_user_department` */

DROP TABLE IF EXISTS `t_user_department`;

CREATE TABLE `t_user_department` (
  `USER_DEPARTMENT_ID` varchar(36) NOT NULL COMMENT '用户与部门标识',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  PRIMARY KEY (`USER_DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与部门';

/*Data for the table `t_user_department` */

/*Table structure for table `t_user_group` */

DROP TABLE IF EXISTS `t_user_group`;

CREATE TABLE `t_user_group` (
  `USER_GROUP_ID` varchar(36) NOT NULL COMMENT '用户组标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `USER_GROUP_CODE` varchar(36) NOT NULL COMMENT '用户组代码',
  `NAME` varchar(256) DEFAULT NULL COMMENT '名称',
  `ORDER_` bigint(20) DEFAULT '0' COMMENT '排序',
  `PARENT_CODE` varchar(36) DEFAULT NULL COMMENT '父级代码',
  `PARENT_TREE_CODE` varchar(1024) DEFAULT NULL COMMENT '父级树代码',
  `PARENT_TREE_NAME` varchar(1024) DEFAULT NULL COMMENT '父级树名称',
  PRIMARY KEY (`USER_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组';

/*Data for the table `t_user_group` */

/*Table structure for table `t_user_group_role` */

DROP TABLE IF EXISTS `t_user_group_role`;

CREATE TABLE `t_user_group_role` (
  `USER_GROUP_ROLE_ID` varchar(36) NOT NULL COMMENT '用户组与角色标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `USER_GROUP_CODE` varchar(36) NOT NULL COMMENT '用户组代码',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  PRIMARY KEY (`USER_GROUP_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组与角色';

/*Data for the table `t_user_group_role` */

/*Table structure for table `t_user_group_user` */

DROP TABLE IF EXISTS `t_user_group_user`;

CREATE TABLE `t_user_group_user` (
  `USER_GROUP_USER_ID` varchar(36) NOT NULL COMMENT '用户组与用户标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `USER_GROUP_CODE` varchar(36) NOT NULL COMMENT '用户组代码',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  PRIMARY KEY (`USER_GROUP_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组与用户';

/*Data for the table `t_user_group_user` */

/*Table structure for table `t_user_permission` */

DROP TABLE IF EXISTS `t_user_permission`;

CREATE TABLE `t_user_permission` (
  `USER_PERMISSION_ID` varchar(36) NOT NULL COMMENT '用户与许可标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  `PERMISSION_CODE` varchar(36) NOT NULL COMMENT '许可代码',
  `FLAG_CODE` varchar(36) DEFAULT NULL COMMENT '标记代码',
  PRIMARY KEY (`USER_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与许可';

/*Data for the table `t_user_permission` */

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `USER_ROLE_ID` varchar(36) NOT NULL COMMENT '用户与角色标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  `ROLE_CODE` varchar(36) NOT NULL COMMENT '角色代码',
  `FLAG_CODE` varchar(36) DEFAULT NULL COMMENT '标记代码',
  PRIMARY KEY (`USER_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色';

/*Data for the table `t_user_role` */

/*Table structure for table `t_wf_variable` */

DROP TABLE IF EXISTS `t_wf_variable`;

CREATE TABLE `t_wf_variable` (
  `WF_VARIABLE_ID` varchar(36) NOT NULL COMMENT '工作流变量标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `WF_KEY` varchar(255) DEFAULT NULL COMMENT '工作流键',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  PRIMARY KEY (`WF_VARIABLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流变量';

/*Data for the table `t_wf_variable` */

/*Table structure for table `t_wf_variable_user` */

DROP TABLE IF EXISTS `t_wf_variable_user`;

CREATE TABLE `t_wf_variable_user` (
  `WF_VARIABLE_USER_ID` varchar(36) NOT NULL COMMENT '工作流变量与用户标识',
  `SYSTEM_INFO_CODE` varchar(36) DEFAULT NULL COMMENT '系统信息代码',
  `SITE_CODE` varchar(36) DEFAULT NULL COMMENT '站点代码',
  `ORG_CODE` varchar(36) DEFAULT NULL COMMENT '组织代码',
  `DEPARTMENT_CODE` varchar(36) DEFAULT NULL COMMENT '部门代码',
  `BEGIN_DATE` time DEFAULT NULL COMMENT '开始时间',
  `END_DATE` time DEFAULT NULL COMMENT '结束时间',
  `CREATED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '创建人代码',
  `CREATED_DATE` time DEFAULT NULL COMMENT '创建时间',
  `LAST_MODIFIED_BY_CODE` varchar(36) DEFAULT NULL COMMENT '最后修改人代码',
  `LAST_MODIFIED_DATE` time DEFAULT NULL COMMENT '最后修改时间',
  `STATE_CODE` varchar(36) DEFAULT NULL COMMENT '状态代码',
  `DATA_STATE_CODE` varchar(36) DEFAULT NULL COMMENT '数据状态代码',
  `VERSION_` int(11) DEFAULT '0' COMMENT '版本',
  `WF_ID` varchar(36) DEFAULT NULL COMMENT '工作流标识',
  `ROLE_CODES` varchar(1024) DEFAULT NULL COMMENT '角色代码集合',
  `PERMISSION_CODES` varchar(1024) DEFAULT NULL COMMENT '许可代码集合',
  `WF_KEY` varchar(255) NOT NULL COMMENT '工作流键',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '正文',
  `USER_CODE` varchar(36) NOT NULL COMMENT '用户代码',
  PRIMARY KEY (`WF_VARIABLE_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流变量与用户';

/*Data for the table `t_wf_variable_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
