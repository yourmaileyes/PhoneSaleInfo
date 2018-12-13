/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : phonesaleinfo

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2018-11-23 19:53:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `likehome`
-- ----------------------------
DROP TABLE IF EXISTS `likehome`;
CREATE TABLE `likehome` (
  `userid` varchar(255) default NULL,
  `phoneid` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likehome
-- ----------------------------
INSERT INTO `likehome` VALUES ('201811181634591819', '29');
INSERT INTO `likehome` VALUES ('201811181634591819', '32');

-- ----------------------------
-- Table structure for `phone`
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneid` varchar(255) NOT NULL default '',
  `phonename` varchar(255) default NULL,
  `phonecontext` varchar(255) default NULL,
  `phonelable` varchar(255) default NULL,
  `phonehref` varchar(255) default NULL,
  `phoneclass` varchar(255) default NULL,
  PRIMARY KEY  (`phoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone
-- ----------------------------
INSERT INTO `phone` VALUES ('1', '三星 Galaxy S 轻奢版', '三星 Galaxy S 轻奢版上得了大场面也走得近生活，深邃沉稳的迷夜黑以及复古优雅的勃艮第红，与其金属光泽想辉映，演绎了时尚的经典之色。', '0', 'https://item.jd.com/7419252.html', 'samsung');
INSERT INTO `phone` VALUES ('10', 'vivo NEX星迹版 零界全面屏AI双摄游戏手机 8GB+128GB 移动联通电信全网通4G手机', null, '0', 'https://item.jd.com/100000377904.html', 'vivo');
INSERT INTO `phone` VALUES ('11', 'vivo Z1 新一代全面屏AI双摄手机 4GB+64GB 炫慕红 移动联通电信全网通4G手机', null, '0', 'https://item.jd.com/7428734.html', 'vivo');
INSERT INTO `phone` VALUES ('12', 'vivo X21 全面屏 双摄拍照游戏手机 6GB+128GB 冰钻黑 移动联通电信全网通4G手机', null, '0', 'https://item.jd.com/6708229.html', 'vivo');
INSERT INTO `phone` VALUES ('13', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待 ', null, '0', 'https://item.jd.com/7437788.html?jd_pop=3ce55b77-738b-4386-b0bd-bfc03712cc02&abt=0', 'xiaomi');
INSERT INTO `phone` VALUES ('14', '小米MIX2S 全面屏游戏手机 6GB+128GB 黑色 全网通4G 陶瓷手机 ', null, '0', 'https://item.jd.com/6735790.html', 'xiaomi');
INSERT INTO `phone` VALUES ('15', '小米Mix3 6GB+128GB黑色 骁龙845 全网通4G 双卡双待 全面屏拍照游戏智能手机 ', null, '0', 'https://item.jd.com/7437564.html?jd_pop=c9e4d79c-ed94-4486-80bd-d1e3d6996a36&abt=0', 'xiaomi');
INSERT INTO `phone` VALUES ('16', '小米6X 全网通 4GB+64GB 樱花粉 移动联通电信4G手机 双卡双待 智能手机 拍照手机 ', null, '0', 'https://item.jd.com/7633911.html', 'xiaomi');
INSERT INTO `phone` VALUES ('17', '索尼（SONY） Xperia XZ3 H9493 HDR OLED显示屏 6GB+64GB 澈黑 新品上市 移动联通双4G手机', null, '2', 'https://item.jd.com/100000766579.html', 'sony');
INSERT INTO `phone` VALUES ('18', '索尼（SONY） Xperia XZ Premium 4+64GB 移动联通双4G XZP手机 炫黑', null, '3', 'https://item.jd.com/30724572608.html', 'sony');
INSERT INTO `phone` VALUES ('19', '索尼（SONY） Xperia XZ2C Compact H8324移动联通双4G港版智能手机 绿色 64GB ', null, '0', 'https://item.jd.hk/26625507008.html', 'sony');
INSERT INTO `phone` VALUES ('2', '三星 Galaxy S8+（SM-G9550）6GB+128GB 谜夜黑 移动联通电信4G手机 双卡双待 ', null, '0', 'https://item.jd.com/4938578.html', 'samsung');
INSERT INTO `phone` VALUES ('20', '索尼（SONY） 现货索尼Xperia XZ2P Premium H8166双卡移动联通双4G手机 黑色 64GB+6GB ', null, '0', 'https://item.jd.hk/30633917513.html', 'sony');
INSERT INTO `phone` VALUES ('21', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待 ', null, '0', 'https://item.jd.com/100000177760.html', 'apple');
INSERT INTO `phone` VALUES ('22', 'Apple iPhone XS Max (A2104) 256GB 深空灰色 移动联通电信4G手机 双卡双待 ', null, '0', 'https://item.jd.com/100000287113.html', 'apple');
INSERT INTO `phone` VALUES ('23', 'Apple iPhone XS (A2100) 64GB 金色 移动联通电信4G手机', null, '0', 'https://item.jd.com/100000287133.html', 'apple');
INSERT INTO `phone` VALUES ('24', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', null, '0', 'https://item.jd.com/6784500.html', 'apple');
INSERT INTO `phone` VALUES ('25', '荣耀9i 4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待', null, '0', 'https://item.jd.com/7694047.html', 'huawei');
INSERT INTO `phone` VALUES ('26', '荣耀 V10 高配版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待', null, '0', 'https://item.jd.com/5853579.html', 'huawei');
INSERT INTO `phone` VALUES ('27', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏手机 双卡双待 ', null, '0', 'https://item.jd.com/8735304.html', 'huawei');
INSERT INTO `phone` VALUES ('28', '荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待 游戏手机', null, '0', 'https://item.jd.com/7348367.html', 'huawei');
INSERT INTO `phone` VALUES ('29', 'meitu/美图M8s 宝贝蓝 4GB+64GB 自拍 云美化 夜景美化 智能 电影人像 电信版 全网通 4G手机 ', null, '0', 'https://item.jd.com/5378697.html', 'meitu');
INSERT INTO `phone` VALUES ('3', '三星 Galaxy Note8（SM-N9500）6GB+128GB 谜夜黑 移动联通电信4G 游戏手机 双卡双待 ', null, '0', 'https://item.jd.com/5424574.html', 'samsung');
INSERT INTO `phone` VALUES ('30', 'Meitu 美图T8s 烈焰红 4GB+128GB 美颜拍照 电影人像 夜间云美化 智能 移动4G+手机 ', null, '0', 'https://item.jd.com/5107323.html', 'meitu');
INSERT INTO `phone` VALUES ('31', 'Meitu 美图T9（MP1710）美少女战士限量版 4+128G 骁龙 全身美型 全面屏 手机 双卡双待 全网通', null, '0', 'https://item.jd.com/100000322934.html', 'meitu');
INSERT INTO `phone` VALUES ('32', 'Meitu 美图V6 墨尔本绿 6GB+128GB 全身美型 美颜 拍照 正品 手机 夜间美颜 双卡双4G 全网通 ', null, '0', 'https://item.jd.com/5489665.html', 'meitu');
INSERT INTO `phone` VALUES ('4', '三星 Galaxy S8（SM-G9500）4GB+64GB 谜夜黑 移动联通电信4G手机 双卡双待 ', null, '0', 'https://item.jd.com/4120319.html', 'samsung');
INSERT INTO `phone` VALUES ('5', '【OPPO全新系列】K1 OPPO首款千元屏幕指纹手机 6G+64G 银光绿 全网通 移动联通电信4G 双卡双待手机 ', null, '0', 'https://item.jd.com/100001613678.html', 'oppo');
INSERT INTO `phone` VALUES ('6', 'OPPO R17 Pro 全面屏拍照手机 8GB+128GB 雾光渐变 全网通移动联通电信4G手机 双卡双待 ', null, '0', 'https://item.jd.com/100001332626.html', 'oppo');
INSERT INTO `phone` VALUES ('7', 'OPPO Find X【6期免息】双曲面全景屏手机 全隐藏式3D摄像头 全网通4G 全新游戏手机 冰珀蓝 8GB+128GB 官方标配 ', null, '0', 'https://item.jd.com/30906175682.html', 'oppo');
INSERT INTO `phone` VALUES ('8', 'OPPO R15x 屏下指纹水滴全面屏 6G+128G手机 星云渐变色 ', null, '0', 'https://item.jd.com/34371096358.html', 'oppo');
INSERT INTO `phone` VALUES ('9', 'vivo X23全息幻彩 6GB+128GB 星夜海洋 水滴屏全面屏 游戏手机 移动联通电信全网通4G手机', null, '0', 'https://item.jd.com/100001464948.html', 'vivo');

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `reviewid` varchar(255) NOT NULL default '',
  `context` varchar(255) default NULL,
  `userid` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`reviewid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('10', '我来扮演孙悟空 keep it real', '201811181634591819', null, '2018-11-19 15:44:55');
INSERT INTO `review` VALUES ('11', '也许不是观点不同 只是甘愿不懂', '201811181634591819', null, '2018-11-19 15:44:57');
INSERT INTO `review` VALUES ('12', '所以我们住的单元不同that\'s for real', '201811181634591819', null, '2018-11-19 15:44:58');
INSERT INTO `review` VALUES ('13', '穴位粘连不通 就像攀岩负重', '201811181634591819', null, '2018-11-19 15:45:00');
INSERT INTO `review` VALUES ('14', '就算牵连祖宗 我也会keep it real', '201811181634591819', null, '2018-11-19 15:45:02');
INSERT INTO `review` VALUES ('2', '我没有存款也没有洋房，生活我过的紧张。', '201811181634591819', null, '2018-11-19 15:42:52');
INSERT INTO `review` VALUES ('3', '心爱的姑娘你不要拒绝我，每天都会把歌给你唱。', '201811181634591819', null, '2018-11-19 15:43:02');
INSERT INTO `review` VALUES ('4', '心爱的姑娘你一定等着我，我骑车带你去环游世界。', '201811181634591819', null, '2018-11-19 15:43:12');
INSERT INTO `review` VALUES ('5', '心爱的姑娘你快来我身旁，我的肩膀就是你的依靠。', '201811181634591819', null, '2018-11-19 15:44:43');
INSERT INTO `review` VALUES ('6', '心爱的姑娘虽然我没有车房，我会把我的一切都给你', '201811181634591819', null, '2018-11-19 15:44:45');
INSERT INTO `review` VALUES ('7', '我跟你的不同 不是观念不同', '201811181634591819', null, '2018-11-19 15:44:48');
INSERT INTO `review` VALUES ('8', '我是上帝繁衍出的反面物种 keep it real', '201811181634591819', null, '2018-11-19 15:44:50');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `useid` varchar(255) NOT NULL default '',
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`useid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2015161', 'admin', 'admin', 'admin');
INSERT INTO `user` VALUES ('201811181634591819', 'ql', '123', null);
