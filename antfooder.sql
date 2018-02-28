/*
Navicat MySQL Data Transfer

Source Server         : MySql-本机
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : antfooder

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-02-28 12:03:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `address_province` char(20) DEFAULT NULL,
  `address_city` char(20) DEFAULT NULL,
  `address_area` char(20) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `addressf_status` char(10) DEFAULT NULL,
  `address_recipients` char(20) DEFAULT NULL,
  `address_phone` char(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('23223e73ab5d49b5a236997c2f484dd3', '05d929698b67452db2d369dd21ca928f', '广东省', '梅州市', '丰顺县', '111111', null, '1111', '11111111');
INSERT INTO `address` VALUES ('2332ae6c214c4d4cb16025dd2a289428', '063b4a7994fe11e6bf04281904cae933', '安徽省', '亳州市', '城关镇', '小县城', null, '张大凯', '18772383543');
INSERT INTO `address` VALUES ('2483fa75fcda442a9eda45896c4f20dd', '063b4a7994fe11e6bf04281904cae933', '重庆市', '重庆市', '沙坪坝区', '大县城', null, '张小凯', '18772383543');
INSERT INTO `address` VALUES ('3931bc6da9cb4b6294c3308348bad4bc', '5bef94b0bafa43e29dc379cb93f4538f', '北京市', '北京市', '西城区', 'ada', null, 'dad', '18772383543');
INSERT INTO `address` VALUES ('529c4005a26811e6931379f356d21b12', '063b4a7994fe11e6bf04281904cae934', '湖北省', '黄冈市', '黄州区', '陶店乡', '0', '张大凯', '110');
INSERT INTO `address` VALUES ('5dd6ca46a3814b218f320999854b402d', '063b4a7994fe11e6bf04281904cae934', '上海市', '上海市', '虹口区', '11111', null, '1111', '11111');
INSERT INTO `address` VALUES ('5f3be291bce94a2fa7c964bfd73c4c53', '063b4a7994fe11e6bf04281904cae933', '河北省', '唐山市', '古冶区', 'ceshi', null, 'cehsi', '111111');
INSERT INTO `address` VALUES ('8ecd3e34ad4246dcb6cb879037681207', 'cfc7210dd2f24867850834578757b7cc', '重庆市', '重庆市', '渝中区', '111', null, '123', '12312312');
INSERT INTO `address` VALUES ('91c92dfb490b4544a0ecf0c8fb2c690f', '05d929698b67452db2d369dd21ca928f', '河北省', '秦皇岛市', '抚宁县', '111111', null, '111', '11111111');
INSERT INTO `address` VALUES ('d26106c15dfa44ecbca1cce2babe4e33', '063b4a7994fe11e6bf04281904cae933', '内蒙古', '呼和浩特市', '赛罕区', '地方', null, '陈真', '12341234123');
INSERT INTO `address` VALUES ('e493c8af7ee74193bc06719051941d3e', '063b4a7994fe11e6bf04281904cae934', '北京市', '北京市', '朝阳区', '11111', null, '1111', '1111111');
INSERT INTO `address` VALUES ('e8ed061ffe9b48dba8cc910682f54246', '063b4a7994fe11e6bf04281904cae933', '湖北省', '黄冈市', '黄州区', '黄冈师范学院', null, '程晓望', '15697136169');
INSERT INTO `address` VALUES ('e9ee2aff38574c99857e436859d1263e', 'cfc7210dd2f24867850834578757b7cc', '湖北省', '黄冈市', '麻城市', '麻城街道', null, '阵阵', '15688523654');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` char(32) NOT NULL,
  `food_id` char(32) DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `comment_date` varchar(255) DEFAULT NULL COMMENT '评论时间',
  `comment` varchar(500) DEFAULT NULL COMMENT '评论',
  `re_comment` varchar(500) DEFAULT NULL COMMENT '追加评论',
  `comment_others` varchar(500) DEFAULT NULL,
  `comment_status` char(4) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('01d69a02a8a311e680f63242b4c1ad1c', '03e271b1a4d811e683de3ffa28d9c658', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 14:41:20', '14:41ceshijieguo', null, null, '2');
INSERT INTO `comment` VALUES ('0574af3ea8a711e680f63242b4c1ad1c', '03c8abf3a4d711e683de3ffa28d9c658', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 15:10:04', 'asdfasdfasdf', null, null, '2');
INSERT INTO `comment` VALUES ('1170a01da58211e6842e40fc330890bs', '1170a01da58211e6842e40fc330890ba', '063b4a7994fe11e6bf04281904cae933', '2016-10-08 15:57:05', '很棒的书！超喜欢！', null, null, '2');
INSERT INTO `comment` VALUES ('1170a01da58211e6842e40fc330890bx', '1170a01da58211e6842e40fc330890ba', 'cfc7210dd2f24867850834578757b7cc', '2016-10-10 15:57:05', '很好看的书，有趣。', null, null, '2');
INSERT INTO `comment` VALUES ('163b4a7994fe11e6bf04281904cae444', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae933', '2016-06-04 16:53:55', '这本书好好看', '这本书好好看', '这本书好好看', '2');
INSERT INTO `comment` VALUES ('163b4a7994fe11e6bf04281904cae445', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae933', '2016-11-08 15:57:05', '我是来搞事情的', null, null, '2');
INSERT INTO `comment` VALUES ('45776f93a7e011e68bc65d7948fd1e9a', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-11 15:27:16', '啦啦啦', null, null, '2');
INSERT INTO `comment` VALUES ('55b82771a7b811e68bc65d7948fd1e9a', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-11 10:41:23', '一二三四五六七八九有意义有意义有意义有意义有意义一', null, null, '2');
INSERT INTO `comment` VALUES ('729eec5aa57711e6842e40fc330890ba', '163b4a7994fe11e6bf04281904cae444', '3a0afea2ff744e3c97dcf100a248dc22', '2016-11-08 13:51:51', '还可以，就这样吧', '纸质有点差', null, '2');
INSERT INTO `comment` VALUES ('74ee90d9a8a811e680f63242b4c1ad1c', '03c8abf3a4d711e683de3ffa28d9c658', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 15:20:20', 'dsfasdfasdfsdfasdfasdf', null, null, '2');
INSERT INTO `comment` VALUES ('7c09221ba7b711e68bc65d7948fd1e9a', '1170a01da58211e6842e40fc330890ba', '9d6e6cbea0ec11e6ae33e43b78a8e173', '2016-11-11 10:35:18', '嘿嘿', null, null, '2');
INSERT INTO `comment` VALUES ('7c34d02fa57811e6842e40fc330890ba', '163b4a7994fe11e6bf04281904cae444', '3a0afea2ff744e3c97dcf100a248dc22', '2016-11-08 13:59:17', '啦啦', '战术目镜启动', null, '2');
INSERT INTO `comment` VALUES ('80c494f7a7b711e68bc65d7948fd1e9a', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-11 10:35:26', '啊啊啊啊啊', null, null, '2');
INSERT INTO `comment` VALUES ('8cf9d374a8a311e680f63242b4c1ad1c', '66b3d3b6a71d11e6a0f2b2a522bd4c45', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 14:45:13', '开始评论啦 啊的的 额个阿斯蒂芬是否为是打发干撒订单干啥地方撒的发生的噶啥地方地方阿斯蒂芬阿斯蒂芬阿斯蒂芬', null, null, '2');
INSERT INTO `comment` VALUES ('924c5c89a7b811e68bc65d7948fd1e9a', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-11 10:43:05', 'a\r\n啊\r\n1\r\n\r\n\r\n\r\n\r\n\r\naaa\r\na', null, null, '2');
INSERT INTO `comment` VALUES ('9d2c59cfa71e11e6a0f2b2a522bd4c45', '0835d503a4d711e683de3ffa28d9c658', '9d6e6cbea0ec11e6ae33e43b78a8e173', '2016-11-10 16:21:00', '很满意的一次购物！', null, null, '2');
INSERT INTO `comment` VALUES ('adf2522ea8a011e680f63242b4c1ad1c', '03e271b1a4d811e683de3ffa28d9c658', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 14:24:40', 'zheshiceshihuanjing', null, null, '2');
INSERT INTO `comment` VALUES ('afe17330a8a411e680f63242b4c1ad1c', 'd2e88bbba71c11e6a0f2b2a522bd4c45', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 14:53:21', '测试的', null, null, '2');
INSERT INTO `comment` VALUES ('aff6f05ca6f711e6a0f2b2a522bd4c45', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-10 11:42:21', '我是来搞事情的搞事情高高哦啊宫傲高宫傲高高宫傲公安宫傲公安宫傲公安爱的世界看到了空间来刷卡机打发了盛大放假了多少房间爱死了的是对方家里快圣诞节福利卡上的记录反馈就打算离开房间都洒了开发', '', null, '2');
INSERT INTO `comment` VALUES ('aff6f05ca6f711e6a0f2b2a522bd4c48', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-10 11:42:21', '<font color=\"#990000\">lala</font>', '', '', '2');
INSERT INTO `comment` VALUES ('ba249fb3a8a411e680f63242b4c1ad1c', '05d2ee1ca71d11e6a0f2b2a522bd4c45', '063b4a7994fe11e6bf04281904cae933', '2016-11-12 14:53:39', '我有来了哦', null, null, '2');
INSERT INTO `comment` VALUES ('cabb5032a89411e680f63242b4c1ad1c', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae934', '2016-11-12 12:59:29', 'r阿斯顿撒旦', null, null, '2');
INSERT INTO `comment` VALUES ('dba16e6ea71d11e6a0f2b2a522bd4c43', '1170a01da58211e6842e40fc330890ba', '9d6e6cbea0ec11e6ae33e43b78a8e173', '2016-10-10 10:57:05', '还可以，下次再来', null, null, '2');
INSERT INTO `comment` VALUES ('dba16e6ea71d11e6a0f2b2a522bd4c45', '9d6e6cbea0ec11e6ae33e43b78a8e173', 'cfc7210dd2f24867850834578757b7cc', '2016-11-10 16:15:35', '书店老板人很好，很热情，好棒的书', null, null, '2');
INSERT INTO `comment` VALUES ('f01315b5aa0911e686244286dcbb132e', '03c8abf3a4d711e683de3ffa28d9c658', '063b4a7994fe11e6bf04281904cae933', '2016-11-14 09:30:45', '张凯，你妈妈喊你回家吃饭', null, null, '2');
INSERT INTO `comment` VALUES ('f06f43c7a58811e6842e40fc330890ba', '163b4a7994fe11e6bf04281904cae444', '063b4a7994fe11e6bf04281904cae933', '2016-11-08 15:57:05', 'asdas', 'asdasd', null, '2');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `food_id` char(32) NOT NULL,
  `menu_id` char(32) DEFAULT NULL,
  `food_name` varchar(50) DEFAULT NULL,
  `food_price` double(10,2) DEFAULT NULL,
  `food_describe` varchar(500) DEFAULT NULL,
  `food_photo` varchar(255) DEFAULT NULL,
  `supply_begin_date` varchar(50) DEFAULT NULL,
  `supply_end_date` varchar(50) DEFAULT NULL,
  `supply_begin_time` varchar(50) DEFAULT NULL,
  `supply_end_time` varchar(50) DEFAULT NULL,
  `food_state` int(255) DEFAULT NULL,
  `food_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('0a944eff4256438ba9018f4e8f684184', '6fe6173fd6984afba525c03d2a4aa1c6', '酸菜卤肉饭', '18.50', '酸菜卤肉饭酸菜卤肉饭酸菜卤肉饭酸菜卤肉饭', 'resource/img/酸菜卤肉饭.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('1', 'c8', '排骨套饭', '21.50', '排骨套饭排骨套饭', 'resource/img/排骨套饭.jpg', null, null, null, null, '1', null);
INSERT INTO `food` VALUES ('1bbb3a38d24b4f55bf825d3f054bcac3', 'cf264dc1eab742bc95ad59500f429a13', '香辣焗翅', '8.00', '香辣焗翅   香辣焗翅香辣焗翅', 'resource/img/香辣焗翅.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('2', 'c8', '排骨饮料套餐', '29.50', '排骨饮料套餐排骨饮料套餐', 'resource/img/排骨饮料套餐.jpg', null, null, null, null, '1', null);
INSERT INTO `food` VALUES ('20f0022fd6df4c4a9ba2281df0f3c029', '6fe6173fd6984afba525c03d2a4aa1c6', '卤肉套饭', '20.50', '卤肉套饭卤肉套饭卤肉套饭', 'resource/img/卤肉套饭.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('27520629e6144252bb8c4ea86fb4acfd', '5e205a0be82741ccb940d250302a3e49', '新香干炒肉双人套', '58.80', '新香干炒肉双人套新香干炒肉双人套', 'resource/img/新香干炒肉双人套.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('2e1760a4c4b5496b8e8c61264a7bd07f', 'a2ce87ea5c304ff2b4e5c032f26a2484', '辣骨套饭', '21.50', '辣骨套饭辣骨套饭', 'resource/img/20150326151210_3926辣骨套饭.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('3', 'c8', '香汁排骨菜', '22.50', '香汁排骨菜香汁排骨菜', 'resource/img/香汁排骨菜.jpg', null, null, null, null, '1', null);
INSERT INTO `food` VALUES ('3885cacdfc8d4bd0ad3369a774fa55b3', 'f19d4fd9702f44ffb736fa2a81f3b25f', '花卷+小红枣露', '9.05', '花卷+小红枣露   花卷+小红枣露', 'resource/img/花卷+小红枣露.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('4', 'c8', '香汁排骨套饭', '17.50', '香汁排骨套饭香汁排骨套饭', 'resource/img/香汁排骨套饭.jpg', null, null, null, null, '1', null);
INSERT INTO `food` VALUES ('5736062b28614c9da59ba0aaabbd2af3', 'a2ce87ea5c304ff2b4e5c032f26a2484', '鲜辣排骨菜', '16.50', '鲜辣排骨菜   鲜辣排骨菜', 'resource/img/9a12a3d1580393b25113fa678e5c060c_20150326151308_1417鲜辣排骨菜.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('5cfee577db014c0b8f5141ea156c7c28', 'cf264dc1eab742bc95ad59500f429a13', '香滑蒸蛋', '6.50', '香滑蒸蛋香滑蒸蛋香滑蒸蛋', 'resource/img/香滑蒸蛋.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('5dfff0457d774ca18c65233028b7bf64', '5e205a0be82741ccb940d250302a3e49', '排骨鸡腿双人套', '62.80', '排骨鸡腿双人套排骨鸡腿双人套', 'resource/img/排骨鸡腿双人套.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('5f7b7f580d924a27901476a53451c27c', 'a2ce87ea5c304ff2b4e5c032f26a2484', '辣骨饮料套餐', '29.50', '辣骨饮料套餐  辣骨饮料套餐', 'resource/img/20150326151226_8944辣骨饮料套餐.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('8ad4c86da8004775a55d00bf0dcd23e4', 'f19d4fd9702f44ffb736fa2a81f3b25f', '蒸米粉白粥卤蛋', '12.00', '蒸米粉白粥卤蛋蒸米粉白粥卤蛋', 'resource/img/蒸米粉白粥卤蛋.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('9454139e252842ada2c1d7175d3d665a', 'cf264dc1eab742bc95ad59500f429a13', 'Q弹鱼饼', '6.00', 'Q弹鱼饼Q弹鱼饼Q弹鱼饼', 'resource/img/0a97478215bd96f057cfaf7ac2910f60_Q弹鱼饼.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('a84accd051ed41d4b5a1e0ac5a53259a', '0596fa39557f495eaa849ebf4576527c', '新枸杞红枣露', '8.50', '新枸杞红枣露新枸杞红枣露', 'resource/img/新枸杞红枣露.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('a8cd214646664c46a2e4809b1c322d8f', '904b713e5c294c88b30be9eb07c80d64', '茄子汤套', '22.00', '茄子汤套茄子汤套', 'resource/img/茄子汤套.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('ba35aac0c22144f8a83900b1c9380fcf', 'f19d4fd9702f44ffb736fa2a81f3b25f', '猪肉包+小红枣露', '11.00', '猪肉包+小红枣露猪肉包+小红枣露', 'resource/img/猪肉包+小红枣露.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('c930b2080d034aa3b6dfe1dcb708c438', '6fe6173fd6984afba525c03d2a4aa1c6', '卤肉汤套', '28.50', '卤肉汤套   卤肉汤套', 'resource/img/卤肉汤套.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('e852e32aba20466ca50c18e5c6f115fd', 'cf264dc1eab742bc95ad59500f429a13', '外婆菜', '4.00', '外婆菜  外婆菜外婆菜', 'resource/img/外婆菜.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('e8a09d43c6bb454ebeb56394c77461b4', 'a2ce87ea5c304ff2b4e5c032f26a2484', '鲜辣排骨饭', '19.50', '鲜辣排骨饭鲜辣排骨饭鲜辣排骨饭', 'resource/img/20150326151205_6797鲜辣排骨饭.jpg', '', '', '', '', '1', null);
INSERT INTO `food` VALUES ('fa418ee636ec4a228f710e81354a019a', '0596fa39557f495eaa849ebf4576527c', '新枸杞红枣露（小）', '7.50', '新枸杞红枣露（小）  新枸杞红枣露（小）', 'resource/img/新枸杞红枣露（小）.jpg', '', '', '', '', '1', null);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` char(32) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_photo` varchar(100) DEFAULT NULL,
  `menu_type` char(4) DEFAULT NULL COMMENT '热卖   早   中   晚',
  `menu_state` int(255) DEFAULT NULL,
  `menu_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0596fa39557f495eaa849ebf4576527c', '新品-特惠饮料', 'resource/img/新枸杞红枣露_3.jpg', '1', '1', '新品-特惠饮 料 新品-特惠饮料');
INSERT INTO `menu` VALUES ('5e205a0be82741ccb940d250302a3e49', '超值双人餐', 'resource/img/新枸杞红枣露_5.jpg', '1', '1', '超值双人餐超值双人餐超值双人餐');
INSERT INTO `menu` VALUES ('6fe6173fd6984afba525c03d2a4aa1c6', '酸菜卤肉饭', 'resource/img/酸菜卤肉.jpg', '3', '1', '酸菜卤肉饭   酸菜卤肉饭');
INSERT INTO `menu` VALUES ('904b713e5c294c88b30be9eb07c80d64', '鱼香茄子饭', 'resource/img/鱼香茄子饭.jpg', '3', '1', '鱼香茄子饭鱼香茄子饭');
INSERT INTO `menu` VALUES ('a2ce87ea5c304ff2b4e5c032f26a2484', '鲜辣排骨饭', 'resource/img/鲜辣排骨饭.jpg', '3', '1', '鲜辣排骨饭鲜辣排骨饭');
INSERT INTO `menu` VALUES ('b2', '套餐营养配', null, '2', '1', null);
INSERT INTO `menu` VALUES ('b3', '包点', null, '2', '1', null);
INSERT INTO `menu` VALUES ('b4', '米粉、米线', null, '2', '1', null);
INSERT INTO `menu` VALUES ('b5', '粥', null, '2', '1', null);
INSERT INTO `menu` VALUES ('b6', '饮品', null, '2', '1', null);
INSERT INTO `menu` VALUES ('c1', '新品-香干炒肉饭', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c10', '鲜辣排骨饭', null, '3', '0', null);
INSERT INTO `menu` VALUES ('c11', '米粉、米线', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c12', '蒸汤', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c13', '小吃/配菜/米饭', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c14', '饮品', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c2', '虫草花蒸土鸡饭', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c3', '超值双人餐', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c4', '排骨拼鸡腿肉饭', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c5', '特惠饮料', null, '3', '1', null);
INSERT INTO `menu` VALUES ('c7', '热辣排骨饭', null, '3', '0', null);
INSERT INTO `menu` VALUES ('c8', '香汁排骨饭', 'resource/img/香汁排骨含汤套餐1.0.jpg', '3', '1', '香汁排骨饭香汁排骨饭香汁排骨饭');
INSERT INTO `menu` VALUES ('c9', '冬（香）菇鸡腿肉饭', null, '3', '1', null);
INSERT INTO `menu` VALUES ('cf264dc1eab742bc95ad59500f429a13', '小吃', 'resource/img/小吃.jpg', '4', '1', '小吃小吃小吃小吃小吃');
INSERT INTO `menu` VALUES ('d1', '套餐', null, '4', '1', null);
INSERT INTO `menu` VALUES ('d2', '小吃', null, '4', '0', null);
INSERT INTO `menu` VALUES ('f19d4fd9702f44ffb736fa2a81f3b25f', '新品-早餐', 'resource/img/新品-早餐 鲜香肉酱蒸米粉.jpg', '2', '1', '新品-早餐新品-早餐新品-早餐');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` char(32) NOT NULL COMMENT '订单id',
  `user_id` char(32) NOT NULL COMMENT '用户id',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `total_money` double(255,2) DEFAULT NULL COMMENT '总价',
  `order_time` varchar(255) DEFAULT NULL COMMENT '下单时间',
  `order_status` char(6) DEFAULT NULL COMMENT '订单状态(未处理0，发货1，收货2,拒绝3)',
  `accept_time` varchar(255) DEFAULT NULL COMMENT '收货时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1c5b57ffd885427fb573f7967372f87e', '5bef94b0bafa43e29dc379cb93f4538f', '北京市 北京市 西城区 ada dad 18772383543', null, '54.00', '2016-11-11 17:22:37', '1', null);
INSERT INTO `order` VALUES ('4f9a20737944483ab3f638fa88fa112e', '5bef94b0bafa43e29dc379cb93f4538f', '北京市 北京市 西城区 ada dad 18772383543', null, '293.60', '2016-11-11 14:58:13', '2', null);
INSERT INTO `order` VALUES ('5265e5a0acaf4800a88ac3f9c91cce8c', '063b4a7994fe11e6bf04281904cae933', '湖北省 黄冈市 黄州区 黄冈师范学院 程晓望 15697136169', null, '171.80', '2016-11-14 14:46:36', '3', null);
INSERT INTO `order` VALUES ('75e4c0218453478eb01ea28bb70e330a', 'cfc7210dd2f24867850834578757b7cc', '湖北省 黄冈市 麻城市 麻城街道 阵阵 15688523654', null, '105.80', '2016-11-11 10:17:52', '1', null);
INSERT INTO `order` VALUES ('acdd426addad4a2da1c5e6f7be24bff1', '05d929698b67452db2d369dd21ca928f', '河北省 秦皇岛市 抚宁县 111111 111 11111111', null, '43.20', '2016-11-15 11:37:51', '1', null);
INSERT INTO `order` VALUES ('c2f7d4216e2d4d1e8310d8a7d32688ae', '5bef94b0bafa43e29dc379cb93f4538f', '北京市 北京市 西城区 ada dad 18772383543', null, '109.50', '2016-11-11 17:02:23', '0', null);
INSERT INTO `order` VALUES ('c5ca831416e443dd9aa1587f327e6e89', '5bef94b0bafa43e29dc379cb93f4538f', '北京市 北京市 西城区 ada dad 18772383543', null, '821.50', '2016-11-11 09:20:57', '1', null);

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `detail_id` char(32) NOT NULL COMMENT '详情表id',
  `order_id` char(32) DEFAULT NULL COMMENT '订单id',
  `book_id` char(32) DEFAULT NULL COMMENT '书籍id',
  `buy_num` int(11) DEFAULT NULL COMMENT '书籍数量',
  `restatus` char(4) DEFAULT NULL,
  `user_msg` varchar(255) DEFAULT NULL COMMENT '用户购买商品的留言',
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('07deb53b2b6b43059ba5601a4dacf66a', 'e7c504aad36546f89e367e32999e4af5', '03c8abf3a4d711e683de3ffa28d9c658', '3', '0', null);
INSERT INTO `orderdetail` VALUES ('08991bb1ac4243a8ad45ef802902f372', 'c5ca831416e443dd9aa1587f327e6e89', '03e271b1a4d811e683de3ffa28d9c658', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('0d7a89051b9e4a909285b0817fd4fd45', '5265e5a0acaf4800a88ac3f9c91cce8c', '03e271b1a4d811e683de3ffa28d9c658', '2', '0', null);
INSERT INTO `orderdetail` VALUES ('0f4dd014030e4c8794d3369f35867d92', 'd4bda41fb2784ba0862925ad0b68d768', '03c8abf3a4d711e683de3ffa28d9c658', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('11078895cbff4fecbbe61b3ea2e9d127', '75e4c0218453478eb01ea28bb70e330a', '0835d503a4d711e683de3ffa28d9c658', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('12184f69bbb741b4957ce69ab2bba057', 'c5ca831416e443dd9aa1587f327e6e89', '8e77f00fa71e11e6a0f2b2a522bd4c45', '3', '0', null);
INSERT INTO `orderdetail` VALUES ('12fa61f28973477f98cf79bffea341fb', 'e7c504aad36546f89e367e32999e4af5', '9d6e6cbea0ec11e6ae33e43b78a8e173', '3', '0', null);
INSERT INTO `orderdetail` VALUES ('28c57667eb4e4c9f963aa8e140af7b1d', '97c37c4b2203460db6e8e22ad5cc1c8e', '03c8abf3a4d711e683de3ffa28d9c658', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('482cc801cebb4ee486bb0a46e45b2a8f', '44b736697a1c4b20b8492a950528d6ea', '518f68f5a4d711e683de3ffa28d9c658', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('54742ba645624122be3486f62b9317e4', 'd27aefd7aa7a4dbaac1b197cad3d0a10', '05d2ee1ca71d11e6a0f2b2a522bd4c45', '4', '3', null);
INSERT INTO `orderdetail` VALUES ('56cf0ed63d4c46e6ad95d26828dce975', '44b736697a1c4b20b8492a950528d6ea', '2f9902e7a4d911e683de3ffa28d9c658', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('654d0f2bec12423e9cff4192326dce7d', 'acdd426addad4a2da1c5e6f7be24bff1', '518f68f5a4d711e683de3ffa28d9c658', '2', '1', null);
INSERT INTO `orderdetail` VALUES ('6ab22d6a9d4f46d1b2d9275ee140c61c', 'c2f7d4216e2d4d1e8310d8a7d32688ae', '03c8abf3a4d711e683de3ffa28d9c658', '5', '1', null);
INSERT INTO `orderdetail` VALUES ('8acfeb2bb1994910adf1f180e3ee19ce', '75e4c0218453478eb01ea28bb70e330a', '129c39fda71a11e6a0f2b2a522bd4c45', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('8e38247195304c56972cda03b484e8a7', '25cf25890c684bd6b26d9fcf07057a4f', '03e271b1a4d811e683de3ffa28d9c658', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('9a773bc25abf46ceb54e93765fe086be', '5b230ddaf36c43749ddceb49c3d91b7e', 'd2e88bbba71c11e6a0f2b2a522bd4c45', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('9e37ffeb122f493dbf32637a033a13f2', 'c5ca831416e443dd9aa1587f327e6e89', '66b3d3b6a71d11e6a0f2b2a522bd4c45', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('a807298ee1eb4b9cb2f1cd10acfe72cc', '5b230ddaf36c43749ddceb49c3d91b7e', '05d2ee1ca71d11e6a0f2b2a522bd4c45', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('ba780829c90b44cc8ccad7a4b4e9dba4', '44b736697a1c4b20b8492a950528d6ea', '1170a01da58211e6842e40fc330890ba', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('cfeb4a7325cb4e88ba627007b0d21ab0', '7958e7de60e64802a405455ce64fb2e7', '03e271b1a4d811e683de3ffa28d9c658', '1', '2', null);
INSERT INTO `orderdetail` VALUES ('d3ece59dc1924b97bec16d94ee8655e7', '7958e7de60e64802a405455ce64fb2e7', '66b3d3b6a71d11e6a0f2b2a522bd4c45', '1', '2', null);
INSERT INTO `orderdetail` VALUES ('d45a5706175a4e1f8d1a5dacf8111890', '7bf32cd5aa034cb7b33b520a08d2102f', 'd2e88bbba71c11e6a0f2b2a522bd4c45', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('d47641d2fa8742d5bbc27856f047fe95', '1c5b57ffd885427fb573f7967372f87e', '1170a01da58211e6842e40fc330890ba', '2', '0', null);
INSERT INTO `orderdetail` VALUES ('d9cff306965e4e7a8239de2d9220e7a5', '5265e5a0acaf4800a88ac3f9c91cce8c', '66b3d3b6a71d11e6a0f2b2a522bd4c45', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('dcae648e8d024304adaa92b6247776c8', 'c5ca831416e443dd9aa1587f327e6e89', '83ad162fa71811e6a0f2b2a522bd4c45', '2', '0', null);
INSERT INTO `orderdetail` VALUES ('ddcf3b072714437bb0b23bf529b7ab9c', 'da06e04e84c44eebb4ce5cdfbc7b54b0', '518f68f5a4d711e683de3ffa28d9c658', '1', '1', null);
INSERT INTO `orderdetail` VALUES ('e0dc6405206043f39884989ccaea171f', '7f02661dc5704b53933d3bc5e71d34b1', '03c8abf3a4d711e683de3ffa28d9c658', '2', '4', null);
INSERT INTO `orderdetail` VALUES ('e260c9a6d47e4a1a88212e26f704175c', '4f9a20737944483ab3f638fa88fa112e', '03e271b1a4d811e683de3ffa28d9c658', '8', '1', null);
INSERT INTO `orderdetail` VALUES ('f182100540e84605bb98e0755347b9c6', '75e4c0218453478eb01ea28bb70e330a', '25537b94a4d611e683de3ffa28d9c658', '1', '0', null);
INSERT INTO `orderdetail` VALUES ('f38e432abb88493f809837abdd4381ae', '7a7e8c03932f42ceb8824457b35573bc', '66b3d3b6a71d11e6a0f2b2a522bd4c45', '1', '4', null);
INSERT INTO `orderdetail` VALUES ('f9f00a4fc3eb4850b02c51fb4faf1624', '44b736697a1c4b20b8492a950528d6ea', '8e77f00fa71e11e6a0f2b2a522bd4c45', '3', '0', null);

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `shop_id` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `food_id` char(32) DEFAULT NULL,
  `food_num` int(11) DEFAULT NULL,
  `total_money` double(255,2) DEFAULT NULL,
  `food_status` int(255) DEFAULT NULL,
  `shop_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('095bf700b91746dea1a5a460acec7396', '37464bbff74e11e6802fe03f493116b5', '5cfee577db014c0b8f5141ea156c7c28', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('0993f4eb9ac24f7fbeea5cb25889786e', '37464bbff74e11e6802fe03f493116b5', '0a944eff4256438ba9018f4e8f684184', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('1a510866dca340bebe0dd13c990befdd', '37464bbff74e11e6802fe03f493116b5', 'a84accd051ed41d4b5a1e0ac5a53259a', '1', '8.50', '1', null);
INSERT INTO `shopcar` VALUES ('27a8adfa88ae4f62a5d4da58f3a53f21', '37464bbff74e11e6802fe03f493116b5', 'c930b2080d034aa3b6dfe1dcb708c438', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('28785f0873214e4f93c1e21c4b7d7cbb', '37464bbff74e11e6802fe03f493116b5', '5dfff0457d774ca18c65233028b7bf64', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('33f472b182f0402d9e8d171d71c04387', '37464bbff74e11e6802fe03f493116b5', 'ba35aac0c22144f8a83900b1c9380fcf', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('3c3a65447c6d43cd987df05ccbb1c221', '37464bbff74e11e6802fe03f493116b5', '2', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('3e5eb49a2bd744feab8bb2cd2ba316f2', '37464bbff74e11e6802fe03f493116b5', '1', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('4f49d9c2d6084a23ab64a725d8a551a0', '37464bbff74e11e6802fe03f493116b5', '4', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('76faab2cf8ba4b528dc3612948a3dc52', '37464bbff74e11e6802fe03f493116b5', 'e8a09d43c6bb454ebeb56394c77461b4', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('8613e6c187d64f69a7013791ae03a0d5', '37464bbff74e11e6802fe03f493116b5', '8ad4c86da8004775a55d00bf0dcd23e4', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('98b7e8eb360d41eab1669789a55bdb08', '37464bbff74e11e6802fe03f493116b5', '20f0022fd6df4c4a9ba2281df0f3c029', '1', null, '1', null);
INSERT INTO `shopcar` VALUES ('a4a886682b674fa88697c7d9c41f8d40', '37464bbff74e11e6802fe03f493116b5', '5736062b28614c9da59ba0aaabbd2af3', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('b5260a9ba46f4d39b5923850e7a398e0', '37464bbff74e11e6802fe03f493116b5', '27520629e6144252bb8c4ea86fb4acfd', '1', '58.80', '1', null);
INSERT INTO `shopcar` VALUES ('b5fd857a73654b6fb2506dd19fe63963', '37464bbff74e11e6802fe03f493116b5', '1bbb3a38d24b4f55bf825d3f054bcac3', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('c8cf9d334fe54c2a8263817a7a45848e', '37464bbff74e11e6802fe03f493116b5', '3', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('d60c4a8d03344e87b1800fe81d8d3d49', '37464bbff74e11e6802fe03f493116b5', '3885cacdfc8d4bd0ad3369a774fa55b3', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('d7a6cc0f150946fa936bcfd314e1ed97', '37464bbff74e11e6802fe03f493116b5', 'fa418ee636ec4a228f710e81354a019a', '1', '7.50', '1', null);
INSERT INTO `shopcar` VALUES ('ed0886574d8b4b6ba07fa5d972402461', '37464bbff74e11e6802fe03f493116b5', '20f0022fd6df4c4a9ba2281df0f3c029', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('f8f36c55654e4e409c3cf2206807b77a', '37464bbff74e11e6802fe03f493116b5', 'e852e32aba20466ca50c18e5c6f115fd', '0', '0.00', '0', null);
INSERT INTO `shopcar` VALUES ('ff7540bbc72840998e1ba63f167f062c', '37464bbff74e11e6802fe03f493116b5', '9454139e252842ada2c1d7175d3d665a', '0', '0.00', '0', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` char(32) NOT NULL,
  `user_account` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_status` char(1) DEFAULT NULL COMMENT '0 用户注销，1 普通用户  , 2后台管理员  ，',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `index_status` (`user_phone`,`user_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('37464bbff74e11e6802fe03f493116b5', 'sdll', 'Daywan', '111111', '15697136169', 'chengxwang0622@163.com', '1');
INSERT INTO `user` VALUES ('374e11e6802fe03f493116b5', 'admin', 'administrator', '111111', '18771636169', '97420622@163.com', '2');
