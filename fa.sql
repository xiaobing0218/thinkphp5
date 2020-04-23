/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fa

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-04-21 23:52:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fa_admin`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '1275286afa64a94e183d161e7142c4a4', 'e851c3', '/assets/img/avatar.png', 'admin@admin.com', '0', '1587471734', '127.0.0.1', '1492186163', '1587471734', '47599e78-530f-4206-9e3c-d167c09ed65e', 'normal');

-- ----------------------------
-- Table structure for `fa_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '1', 'admin', '/bXEdKISVGQ.php/index/login?url=%2FbXEdKISVGQ.php', '登录', '{\"url\":\"\\/bXEdKISVGQ.php\",\"__token__\":\"223dfeaf6493c86547e1a5028118a3ba\",\"username\":\"admin\",\"captcha\":\"nfzd\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587382827');
INSERT INTO `fa_admin_log` VALUES ('2', '1', 'admin', '/bXEdKISVGQ.php/general/attachment/edit/ids/1?dialog=1', '常规管理 附件管理 编辑', '{\"dialog\":\"1\",\"row\":{\"url\":\"\\/assets\\/img\\/qrcode.png\",\"imagewidth\":\"150\",\"imageheight\":\"150\",\"imagetype\":\"png\",\"imageframes\":\"0\",\"filesize\":\"21859\",\"mimetype\":\"image\\/png\",\"extparam\":\"\",\"uploadtime\":\"2017-07-10 18:17:28\",\"storage\":\"local\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587383100');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"7ca5c7ed1aec03e8b343db32c7e0f4ab\",\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.qq.com\",\"mail_smtp_port\":\"465\",\"mail_smtp_user\":\"10000\",\"mail_smtp_pass\":\"password\",\"mail_verify_type\":\"2\",\"mail_from\":\"10000@qq.com\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587384852');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"b5a6b27c8e2476a314dc5486e2f3dec6\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587385317');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"5bb137e4b081f1b0998653d1a48f47c4\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386124');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"18779b6fdf5a75eef6afc05abf8bf6b2\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad91\",\"beian\":\"\\u5907\\u6848\\u53f71\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386131');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"7b49faa5acceb0570b0da0da56845021\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"book\",\"title\":\"\\u9884\\u7ea6\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386324');
INSERT INTO `fa_admin_log` VALUES ('8', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386324');
INSERT INTO `fa_admin_log` VALUES ('9', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"6fe7e37336d9cdff1d8a2d809c91eeec\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"general\\/book\",\"title\":\"\\u9884\\u7ea6\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386693');
INSERT INTO `fa_admin_log` VALUES ('10', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587386693');
INSERT INTO `fa_admin_log` VALUES ('11', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"400bba65b656c96a7c56cb5045c0fa6c\",\"row\":{\"name\":\"1000\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388345');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"0ca093e632c1a71767b2fe701b0edb58\",\"row\":{\"name\":\"5000\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388729');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"66cadb8aabf0b219618a7c08e11aef24\",\"row\":{\"name\":\"500\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388815');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"3ae73abec60e813e744d5b693670598c\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad91\",\"beian\":\"\\u5907\\u6848\\u53f71\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388825');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"601415e78cc208b67cf351dd2b81d018\",\"row\":{\"name\":\"1000\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388896');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"53e25495f30b73c10c7746adaefcbd43\",\"row\":{\"name\":\"1000\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587388934');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"c289dcfebfc6f86fe362816179ade94d\",\"row\":{\"name\":\"1000\",\"number\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587389274');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"33087b6388c016406317ca6c7044ff64\",\"row\":{\"name\":\"500\",\"number\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587389311');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"a5ceb1d1b26001f69148f73103d8991b\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"booker\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587389651');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587389652');
INSERT INTO `fa_admin_log` VALUES ('21', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/edit/ids/86?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"1b4fe3aa1781754e874916a4f30b43f4\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"booker\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"115\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"86\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587390150');
INSERT INTO `fa_admin_log` VALUES ('22', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587390150');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/bXEdKISVGQ.php/general.profile/update', '常规管理 个人资料 更新个人信息', '{\"__token__\":\"7ebc2071b234d7d32e9987827ca7ab00\",\"row\":{\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587390410');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/edit/ids/86?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"aea52d05f8c648394d626a90f2099ccf\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"setting\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"115\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"86\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587390517');
INSERT INTO `fa_admin_log` VALUES ('25', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587390517');
INSERT INTO `fa_admin_log` VALUES ('26', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"e029f91102d4e00db57b7f3556ccc5eb\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"cate\",\"title\":\"\\u5206\\u7c7b1\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587391433');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587391434');
INSERT INTO `fa_admin_log` VALUES ('28', '0', 'Unknown', '/bXEdKISVGQ.php/index/login?url=%2FbXEdKISVGQ.php', '', '{\"url\":\"\\/bXEdKISVGQ.php\",\"__token__\":\"2c62d7fefbb44059d616586d99c0b4a9\",\"username\":\"admin\",\"captcha\":\"1uos\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587471729');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/bXEdKISVGQ.php/index/login?url=%2FbXEdKISVGQ.php', '登录', '{\"url\":\"\\/bXEdKISVGQ.php\",\"__token__\":\"23c6879a5585db92761613989ebbf9cc\",\"username\":\"admin\",\"captcha\":\"mmyc\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587471734');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/bXEdKISVGQ.php/general/config/check', '常规管理 系统配置', '{\"row\":{\"name\":\"{$site.name}\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587472091');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/bXEdKISVGQ.php/general/config/check', '常规管理 系统配置', '{\"row\":{\"name\":\"{$site.reserve}\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587472100');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/bXEdKISVGQ.php/general.config/add', '常规管理 系统配置 添加', '{\"__token__\":\"6a62b16dda832916be6ab9c6e585d920\",\"row\":{\"type\":\"string\",\"group\":\"basic\",\"name\":\"{$site.reserve}\",\"title\":\"\\u9884\\u5b9a\",\"value\":\"5000\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587472123');
INSERT INTO `fa_admin_log` VALUES ('33', '1', 'admin', '/bXEdKISVGQ.php/general/config/check', '常规管理 系统配置', '{\"row\":{\"name\":\"time\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587472198');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/bXEdKISVGQ.php/general.config/add', '常规管理 系统配置 添加', '{\"__token__\":\"922c257d01591c46835ef493ed817239\",\"row\":{\"type\":\"string\",\"group\":\"basic\",\"name\":\"time\",\"title\":\"\\u65f6\\u95f4\",\"value\":\"30\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587472244');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/bXEdKISVGQ.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"a8f112c640bb4439ab9f83a970f6da4e\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"reserve\",\"title\":\"\\u8bbe\\u7f6e\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587473527');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/bXEdKISVGQ.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587473527');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"04dd9b34ddf4c755a5e0fcd6fd36c16e\",\"row\":{\"name\":\"500\",\"number\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587475360');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"35ec432d43b67a6da62f69f3126d6c43\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476432');
INSERT INTO `fa_admin_log` VALUES ('39', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"03ef55666d7a2add6da569dad2da9551\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476696');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"22986d4d01a468f297c6e205cd5ad529\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476727');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"1532e32007a995c2fe9d843f233ea105\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476745');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"1abcfd0ec9ed300c42b810b07a17afe5\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476921');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"6e0d7b6cd456dc02b115c977b026bb7f\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587476925');
INSERT INTO `fa_admin_log` VALUES ('44', '1', 'admin', '/bXEdKISVGQ.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"eb6c0db090cb5ab550a62bbdd8bc7798\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587477053');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"3339da71b95c38109e51998215dc8fb7\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587477233');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"27c23049199ada9fbe22158cfde32ea8\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587478785');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"5ac4b4917f99940a7550d9c36b5b1072\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587478793');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"141c3da08ba36571172b39a6e77b28a2\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587479661');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"46bc69224652ed6c3058fe2b3e804773\",\"row\":{\"name\":\"\\u6211\\u7684\\u7f51\\u7ad9\",\"beian\":\"\\u5907\\u6848\\u53f7\",\"cdnurl\":\"\",\"version\":\"1.0.11\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\",\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587479692');
INSERT INTO `fa_admin_log` VALUES ('50', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"588f2f6f4451adce73870274d0fae8c1\",\"row\":{\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587480383');
INSERT INTO `fa_admin_log` VALUES ('51', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"9af142e1b27600ad30f8cf058b282ae3\",\"row\":{\"reserve\":\"5000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587480429');
INSERT INTO `fa_admin_log` VALUES ('52', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"4d9b68760f57d7f3ecc1e64a3f888471\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587480509');
INSERT INTO `fa_admin_log` VALUES ('53', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"576de5f51a6201f2fe1cc41643d42948\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587481765');
INSERT INTO `fa_admin_log` VALUES ('54', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"91c9e75dffee4f948601e9a3171af1fc\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483081');
INSERT INTO `fa_admin_log` VALUES ('55', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"6b38650f01429f784a2429e521c92440\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483105');
INSERT INTO `fa_admin_log` VALUES ('56', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"7f5f66e8ffeae62055151101e8c8a708\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483121');
INSERT INTO `fa_admin_log` VALUES ('57', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"be80b27961e44bf923b7965d511bd4fd\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483148');
INSERT INTO `fa_admin_log` VALUES ('58', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"0f4837cf4d4e39889df62532f7384711\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483261');
INSERT INTO `fa_admin_log` VALUES ('59', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"b695d6f6cabb82f32e3fd8ff91be00f8\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483284');
INSERT INTO `fa_admin_log` VALUES ('60', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"75dc7ed0346b183dadb297dbbdd1afc2\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483432');
INSERT INTO `fa_admin_log` VALUES ('61', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"6cdda6361f6d20b14f1578637778d0c8\",\"row\":{\"reserve\":\"50001\",\"time\":\"301\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483472');
INSERT INTO `fa_admin_log` VALUES ('62', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"0f341552d5a93adb47b4d5f614703149\",\"row\":{\"reserve\":\"111\",\"time\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483697');
INSERT INTO `fa_admin_log` VALUES ('63', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"92807b3efdf154b7f7bdba5bf1ea8b90\",\"row\":{\"reserve\":\"111\",\"time\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483713');
INSERT INTO `fa_admin_log` VALUES ('64', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"504abf178e6d689c6c7ed774ad903dcc\",\"row\":{\"reserve\":\"111\",\"time\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483788');
INSERT INTO `fa_admin_log` VALUES ('65', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"7e5a23377984a295fdfd3b81c19d4e13\",\"row\":{\"reserve\":\"111\",\"time\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587483907');
INSERT INTO `fa_admin_log` VALUES ('66', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"d1fb4e6e6d15c38bd5db8979c19dd353\",\"row\":{\"reserve\":\"111\",\"time\":\"22\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587484257');
INSERT INTO `fa_admin_log` VALUES ('67', '1', 'admin', '/bXEdKISVGQ.php/general.book/edit', '常规管理 预约设置', '{\"__token__\":\"c5fe0f855b2ab9402221417181dcaa05\",\"row\":{\"reserve\":\"3000\",\"time\":\"30\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', '1587484273');

-- ----------------------------
-- Table structure for `fa_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1587383100', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for `fa_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for `fa_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `fa_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-leaf', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('85', 'file', '2', 'general/book', '预约设置', 'fa fa-circle-o', '', '', '1', '1587386324', '1587386693', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('86', 'file', '0', 'setting', '设置', 'fa fa-circle-o', '', '', '1', '1587389651', '1587390517', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('87', 'file', '0', 'cate', '分类1', 'fa fa-circle-o', '', '', '1', '1587391433', '1587391433', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('88', 'file', '2', 'reserve', '设置', 'fa fa-circle-o', '', '', '1', '1587473527', '1587473527', '0', 'normal');

-- ----------------------------
-- Table structure for `fa_book`
-- ----------------------------
DROP TABLE IF EXISTS `fa_book`;
CREATE TABLE `fa_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_book
-- ----------------------------
INSERT INTO `fa_book` VALUES ('10', 'configgroup1', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\"}', '', '', '');
INSERT INTO `fa_book` VALUES ('18', 'reserve', 'basic', 'Reserve setting', '开放预约数量，请输入正确数量', 'string', '50001', '', '', '');
INSERT INTO `fa_book` VALUES ('19', 'time', 'basic', 'Reserve time', '失效时间，请设置正确数量', 'string', '301', '', '', '');

-- ----------------------------
-- Table structure for `fa_book1`
-- ----------------------------
DROP TABLE IF EXISTS `fa_book1`;
CREATE TABLE `fa_book1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_book1
-- ----------------------------
INSERT INTO `fa_book1` VALUES ('1', 'name', 'basic', 'Reserve number', '请填写站点名称', 'string', '500', '', 'required', '');
INSERT INTO `fa_book1` VALUES ('18', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\"}', '', '', '');
INSERT INTO `fa_book1` VALUES ('21', 'number', 'basic', 'Reserved number', '', 'number', '0', '', '', '');
INSERT INTO `fa_book1` VALUES ('22', 'reserve', 'basic', 'Reserve setting', '', 'string', '5000', '', '', '');
INSERT INTO `fa_book1` VALUES ('23', 'time', 'basic', 'Reserve time', '', 'string', '30', '', '', '');
INSERT INTO `fa_book1` VALUES ('24', '', 'basic', 'Reserve setting', '', 'string', '5000', '', '', '');

-- ----------------------------
-- Table structure for `fa_booker`
-- ----------------------------
DROP TABLE IF EXISTS `fa_booker`;
CREATE TABLE `fa_booker` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `reserve_number` int(11) DEFAULT '0' COMMENT '预约数量',
  `reserved_number` int(11) DEFAULT '0' COMMENT '剩余数量',
  `add_time` int(10) DEFAULT NULL COMMENT '设置时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_booker
-- ----------------------------
INSERT INTO `fa_booker` VALUES ('1', '500', '5', null);

-- ----------------------------
-- Table structure for `fa_category`
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `hr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal', 'recommend');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal', 'hot');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal', 'index');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal', 'index');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal', 'index');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal', 'recommend');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal', 'hot');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal', 'hot');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal', 'recommend');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal', 'recommend');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal', 'index');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal', 'recommend');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal', 'recommend');

-- ----------------------------
-- Table structure for `fa_config`
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '我的网站', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '备案号', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.11', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('18', 'reserve', 'basic', 'Reserve setting', '开放预约数量，请输入正确数量', 'string', '3000', '', '', '');
INSERT INTO `fa_config` VALUES ('19', 'time', 'basic', 'Reserve time', '失效时间，请设置正确数量', 'string', '30', '', '', '');

-- ----------------------------
-- Table structure for `fa_ems`
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_reserve`
-- ----------------------------
DROP TABLE IF EXISTS `fa_reserve`;
CREATE TABLE `fa_reserve` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_reserve
-- ----------------------------
INSERT INTO `fa_reserve` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '我的网站', '', 'required', '');
INSERT INTO `fa_reserve` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '备案号', '', '', '');
INSERT INTO `fa_reserve` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_reserve` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.11', '', 'required', '');
INSERT INTO `fa_reserve` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_reserve` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_reserve` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_reserve` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_reserve` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_reserve` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_reserve` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_reserve` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_reserve` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_reserve` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_reserve` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_reserve` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_reserve` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for `fa_setting`
-- ----------------------------
DROP TABLE IF EXISTS `fa_setting`;
CREATE TABLE `fa_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `reserve_number` int(11) DEFAULT '0' COMMENT '预约数量',
  `reserved_number` int(11) DEFAULT '0' COMMENT '剩余数量',
  `add_time` int(10) DEFAULT NULL COMMENT '设置时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_setting
-- ----------------------------
INSERT INTO `fa_setting` VALUES ('1', '3000', '3000', '1587484273');

-- ----------------------------
-- Table structure for `fa_sms`
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_test`
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', null, '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for `fa_user`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  `states` varchar(30) DEFAULT NULL,
  `pping` int(11) DEFAULT NULL COMMENT '1',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', '0', '1', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '', 'hidden', '1');

-- ----------------------------
-- Table structure for `fa_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for `fa_user_money_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员余额变动表';

-- ----------------------------
-- Records of fa_user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for `fa_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------
