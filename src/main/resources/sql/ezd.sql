/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : ezd

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-04-27 20:53:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ezd_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `ezd_advertisement`;
CREATE TABLE `ezd_advertisement` (
  `AdvertisementId` int(11) NOT NULL AUTO_INCREMENT,
  `AdvertisementImg` varchar(300) DEFAULT NULL,
  `AdvertisementTitle` varchar(30) DEFAULT NULL,
  `AdvertisementContent` varchar(300) DEFAULT NULL,
  `AdvertisingUrl` varchar(50) DEFAULT NULL,
  `AdvertisingContact` varchar(20) DEFAULT NULL,
  `AdvertisingPosition` varchar(30) DEFAULT NULL,
  `AdvertisingType` varchar(10) DEFAULT NULL,
  `AdvertisingStatue` int(11) DEFAULT NULL,
  PRIMARY KEY (`AdvertisementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for ezd_article
-- ----------------------------
DROP TABLE IF EXISTS `ezd_article`;
CREATE TABLE `ezd_article` (
  `ArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `mainTitle` varchar(30) NOT NULL,
  `subTitle` varchar(50) NOT NULL,
  `ArticleImg` varchar(300) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `sendDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `sendByUser` int(11) DEFAULT NULL,
  `sendByUser_email` varchar(20) NOT NULL,
  `Article_statue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_article
-- ----------------------------
INSERT INTO `ezd_article` VALUES ('1', '你去玩儿', '你卡住', '/img/c.png', '你去玩儿童与欧普', '2017-04-27 11:17:27', '10', '12345678@qq.com', '0');
INSERT INTO `ezd_article` VALUES ('2', '我破纽约', '我拍了', '/img/c.png', '我阿斯顿飞规划局', '2017-04-27 11:17:27', '11', '12345678@qq.com', '0');
INSERT INTO `ezd_article` VALUES ('3', '我们请问对方根本', '我们阿斯顿飞规划局', '/img/c.png', '我们自行车VB你', '2017-04-27 11:17:27', '12', '12345678@qq.com', '1');
INSERT INTO `ezd_article` VALUES ('4', '你们自行车VB你', '你们中小城市的风格', '/img/c.png', '你们青岛发给你', '2017-04-27 11:17:27', '13', '12345678@qq.com', '1');
INSERT INTO `ezd_article` VALUES ('5', '他七十多分VB', '他自行车哪个喊你们', '/img/c.png', '他请我打副本', '2017-04-27 11:17:27', '14', '12345678@qq.com', '0');
INSERT INTO `ezd_article` VALUES ('6', '他们玩的地方根号', '他们围观好几遍', '/img/c.png', '他们时的法国和', '2017-04-27 11:17:27', '15', '12345678@qq.com', '0');
INSERT INTO `ezd_article` VALUES ('7', '她破黑戈壁', '她魄和昏迷VB隔壁', '/img/c.png', '她我发给你自行车vhj', '2017-04-27 11:17:27', '16', '12345678@qq.com', '1');

-- ----------------------------
-- Table structure for ezd_browse
-- ----------------------------
DROP TABLE IF EXISTS `ezd_browse`;
CREATE TABLE `ezd_browse` (
  `BrowseId` int(11) NOT NULL AUTO_INCREMENT,
  `BrowseArticle` int(11) DEFAULT NULL,
  `BrowsePeople` int(11) DEFAULT NULL,
  PRIMARY KEY (`BrowseId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_browse
-- ----------------------------
INSERT INTO `ezd_browse` VALUES ('1', '1', '11');
INSERT INTO `ezd_browse` VALUES ('2', '1', '14');
INSERT INTO `ezd_browse` VALUES ('3', '7', '15');
INSERT INTO `ezd_browse` VALUES ('4', '2', '12');
INSERT INTO `ezd_browse` VALUES ('5', '1', '13');
INSERT INTO `ezd_browse` VALUES ('6', '4', '16');
INSERT INTO `ezd_browse` VALUES ('7', '6', '10');
INSERT INTO `ezd_browse` VALUES ('8', '5', '15');
INSERT INTO `ezd_browse` VALUES ('9', '4', '13');
INSERT INTO `ezd_browse` VALUES ('10', '2', '11');

-- ----------------------------
-- Table structure for ezd_comments
-- ----------------------------
DROP TABLE IF EXISTS `ezd_comments`;
CREATE TABLE `ezd_comments` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `employmentGuidanceId` int(11) DEFAULT NULL,
  `commentContent` varchar(30) NOT NULL,
  `commentDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Critic` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_comments
-- ----------------------------
INSERT INTO `ezd_comments` VALUES ('1', '1', '还行，我喜欢。', '2017-04-27 11:17:27', '16');
INSERT INTO `ezd_comments` VALUES ('2', '2', '沙发', '2017-04-27 11:17:27', '11');
INSERT INTO `ezd_comments` VALUES ('3', '3', '我只想说', '2017-04-27 11:17:27', '15');
INSERT INTO `ezd_comments` VALUES ('4', '4', '呵呵', '2017-04-27 11:17:27', '16');
INSERT INTO `ezd_comments` VALUES ('5', '5', '胡说八道', '2017-04-27 11:17:27', '14');
INSERT INTO `ezd_comments` VALUES ('6', '6', '666。', '2017-04-27 11:17:27', '12');
INSERT INTO `ezd_comments` VALUES ('7', '7', '像我写的。', '2017-04-27 11:17:27', '13');
INSERT INTO `ezd_comments` VALUES ('8', '7', '不行，我不喜欢。', '2017-04-27 11:17:27', '10');

-- ----------------------------
-- Table structure for ezd_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `ezd_enterprise`;
CREATE TABLE `ezd_enterprise` (
  `enterpriseId` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseName` varchar(30) DEFAULT NULL,
  `enterpriseIcon` varchar(300) DEFAULT NULL,
  `enterpriseAddress` varchar(30) DEFAULT NULL,
  `enterpriseScale` varchar(30) DEFAULT NULL,
  `enterpriseIntroduction` varchar(200) DEFAULT NULL,
  `industry_Name` int(11) DEFAULT NULL,
  `enterpriseTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`enterpriseId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_enterprise
-- ----------------------------
INSERT INTO `ezd_enterprise` VALUES ('1', '上海生物科技有限公司', '/img/b.jpg', '上海市浦东新区', '50000', '有关于生物方面的公司', '33', '14');
INSERT INTO `ezd_enterprise` VALUES ('2', '北京慨念融资有限公司', '/img/b.jpg', '北京市科技新区', '2000', '有关于融资方面的公司', '9', '11');
INSERT INTO `ezd_enterprise` VALUES ('3', '广州集合专职有限公司', '/img/b.jpg', '广州市白云区', '1000', '有关于职位方面的公司', '16', '8');
INSERT INTO `ezd_enterprise` VALUES ('4', '深圳麦克服装有限公司', '/img/b.jpg', '深圳市龙岗区', '10000', '有关于服装方面的公司', '13', '18');
INSERT INTO `ezd_enterprise` VALUES ('5', '珠海万能电脑有限公司', '/img/b.jpg', '珠海市斗门区', '500', '有关于电脑方面的公司', '1', '1');
INSERT INTO `ezd_enterprise` VALUES ('6', '温州简单汽车有限公司', '/img/b.jpg', '浙江温州', '100000', '有关于汽车方面的公司', '30', '17');
INSERT INTO `ezd_enterprise` VALUES ('7', '四川洛克文化有限公司', '/img/b.jpg', '四川汶川', '200', '有关于文化方面的公司', '16', '8');
INSERT INTO `ezd_enterprise` VALUES ('8', '河北立马房产有限公司', '/img/b.jpg', '河北雄安新区', '100', '有关于房产方面的公司', '7', '6');

-- ----------------------------
-- Table structure for ezd_enterprisetype
-- ----------------------------
DROP TABLE IF EXISTS `ezd_enterprisetype`;
CREATE TABLE `ezd_enterprisetype` (
  `enterpriseTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `enterpriseTypeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`enterpriseTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_enterprisetype
-- ----------------------------
INSERT INTO `ezd_enterprisetype` VALUES ('1', 'it/互联网');
INSERT INTO `ezd_enterprisetype` VALUES ('2', '政府/非营业机构');
INSERT INTO `ezd_enterprisetype` VALUES ('3', '电子/通信/硬件');
INSERT INTO `ezd_enterprisetype` VALUES ('4', '农/林、牧 、渔');
INSERT INTO `ezd_enterprisetype` VALUES ('5', '广告/传媒/影视/文化');
INSERT INTO `ezd_enterprisetype` VALUES ('6', '房地产/商业中心');
INSERT INTO `ezd_enterprisetype` VALUES ('7', '房建');
INSERT INTO `ezd_enterprisetype` VALUES ('8', '教育/培训/科研/院校');
INSERT INTO `ezd_enterprisetype` VALUES ('9', '专业服务');
INSERT INTO `ezd_enterprisetype` VALUES ('10', '生活服务');
INSERT INTO `ezd_enterprisetype` VALUES ('11', '金融业');
INSERT INTO `ezd_enterprisetype` VALUES ('12', '贸易/物流/交通/运输');
INSERT INTO `ezd_enterprisetype` VALUES ('13', '快速/耐用消费品');
INSERT INTO `ezd_enterprisetype` VALUES ('14', '医学/生物');
INSERT INTO `ezd_enterprisetype` VALUES ('15', '能源/水利/化工/环保');
INSERT INTO `ezd_enterprisetype` VALUES ('16', '仪器/仪表/工业自动化/电器');
INSERT INTO `ezd_enterprisetype` VALUES ('17', '汽车/摩托车/电动车');
INSERT INTO `ezd_enterprisetype` VALUES ('18', '机械制造物/机电/重工');
INSERT INTO `ezd_enterprisetype` VALUES ('19', '航空/航天研究与制造');

-- ----------------------------
-- Table structure for ezd_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ezd_feedback`;
CREATE TABLE `ezd_feedback` (
  `feedBackId` int(11) NOT NULL AUTO_INCREMENT,
  `feedBackProblem` varchar(100) NOT NULL,
  `opinion` varchar(100) NOT NULL,
  PRIMARY KEY (`feedBackId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_feedback
-- ----------------------------
INSERT INTO `ezd_feedback` VALUES ('1', '菜太闲', '少放盐');
INSERT INTO `ezd_feedback` VALUES ('2', '福利太少', '不少于五种福利');
INSERT INTO `ezd_feedback` VALUES ('3', '网速太慢', '升级宽带');
INSERT INTO `ezd_feedback` VALUES ('4', '交通不便', '开大路');
INSERT INTO `ezd_feedback` VALUES ('5', '薪水太少', '合理加薪');
INSERT INTO `ezd_feedback` VALUES ('6', '妹子太少', '赶快去招');
INSERT INTO `ezd_feedback` VALUES ('7', '郁郁不得志', '跳槽');

-- ----------------------------
-- Table structure for ezd_goodbyarticle
-- ----------------------------
DROP TABLE IF EXISTS `ezd_goodbyarticle`;
CREATE TABLE `ezd_goodbyarticle` (
  `goodByArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `ArticleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `goodByArticle_statue` int(11) DEFAULT NULL,
  PRIMARY KEY (`goodByArticleId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_goodbyarticle
-- ----------------------------
INSERT INTO `ezd_goodbyarticle` VALUES ('1', '1', '16', '0');
INSERT INTO `ezd_goodbyarticle` VALUES ('2', '2', '15', '0');
INSERT INTO `ezd_goodbyarticle` VALUES ('3', '3', '14', '1');
INSERT INTO `ezd_goodbyarticle` VALUES ('4', '4', '13', '1');
INSERT INTO `ezd_goodbyarticle` VALUES ('5', '5', '12', '0');
INSERT INTO `ezd_goodbyarticle` VALUES ('6', '6', '11', '0');
INSERT INTO `ezd_goodbyarticle` VALUES ('7', '7', '10', '0');
INSERT INTO `ezd_goodbyarticle` VALUES ('8', '7', '16', '1');

-- ----------------------------
-- Table structure for ezd_goodbycomments
-- ----------------------------
DROP TABLE IF EXISTS `ezd_goodbycomments`;
CREATE TABLE `ezd_goodbycomments` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `goodByComments_statue` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_goodbycomments
-- ----------------------------
INSERT INTO `ezd_goodbycomments` VALUES ('1', '7', '16', '0');
INSERT INTO `ezd_goodbycomments` VALUES ('2', '7', '15', '0');
INSERT INTO `ezd_goodbycomments` VALUES ('3', '6', '14', '1');
INSERT INTO `ezd_goodbycomments` VALUES ('4', '5', '13', '1');
INSERT INTO `ezd_goodbycomments` VALUES ('5', '4', '12', '0');
INSERT INTO `ezd_goodbycomments` VALUES ('6', '3', '11', '0');
INSERT INTO `ezd_goodbycomments` VALUES ('7', '2', '10', '0');
INSERT INTO `ezd_goodbycomments` VALUES ('8', '1', '16', '1');

-- ----------------------------
-- Table structure for ezd_industry
-- ----------------------------
DROP TABLE IF EXISTS `ezd_industry`;
CREATE TABLE `ezd_industry` (
  `industryId` int(11) NOT NULL AUTO_INCREMENT,
  `industryName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`industryId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_industry
-- ----------------------------
INSERT INTO `ezd_industry` VALUES ('1', '计算机/互联网/通信');
INSERT INTO `ezd_industry` VALUES ('2', '人事/行政/后勤');
INSERT INTO `ezd_industry` VALUES ('3', '餐饮');
INSERT INTO `ezd_industry` VALUES ('4', '销售');
INSERT INTO `ezd_industry` VALUES ('5', '普工/技工');
INSERT INTO `ezd_industry` VALUES ('6', '客服');
INSERT INTO `ezd_industry` VALUES ('7', '房产中介');
INSERT INTO `ezd_industry` VALUES ('8', '财务/审计/统计');
INSERT INTO `ezd_industry` VALUES ('9', '金融/银行/证券/投资');
INSERT INTO `ezd_industry` VALUES ('10', '家政保洁/安保');
INSERT INTO `ezd_industry` VALUES ('11', '超市/百货/零售');
INSERT INTO `ezd_industry` VALUES ('12', '贸易/采购');
INSERT INTO `ezd_industry` VALUES ('13', '服装/纺织/食品');
INSERT INTO `ezd_industry` VALUES ('14', '物流/仓储');
INSERT INTO `ezd_industry` VALUES ('15', '法律');
INSERT INTO `ezd_industry` VALUES ('16', '教育培训');
INSERT INTO `ezd_industry` VALUES ('17', '翻译');
INSERT INTO `ezd_industry` VALUES ('18', '建筑');
INSERT INTO `ezd_industry` VALUES ('19', '物业管理');
INSERT INTO `ezd_industry` VALUES ('20', '农/林/牧/渔业');
INSERT INTO `ezd_industry` VALUES ('21', '生产管理/研发');
INSERT INTO `ezd_industry` VALUES ('22', '娱乐/悠闲');
INSERT INTO `ezd_industry` VALUES ('23', '美容/美发');
INSERT INTO `ezd_industry` VALUES ('24', '机械/仪器仪表');
INSERT INTO `ezd_industry` VALUES ('25', '电子/电气');
INSERT INTO `ezd_industry` VALUES ('26', '保健按摩');
INSERT INTO `ezd_industry` VALUES ('27', '运动健身');
INSERT INTO `ezd_industry` VALUES ('28', '司机');
INSERT INTO `ezd_industry` VALUES ('29', '保险');
INSERT INTO `ezd_industry` VALUES ('30', '汽车制造/服务');
INSERT INTO `ezd_industry` VALUES ('31', '编辑/出版/印刷');
INSERT INTO `ezd_industry` VALUES ('32', '医院/医疗/护理');
INSERT INTO `ezd_industry` VALUES ('33', '制药/生物工程');
INSERT INTO `ezd_industry` VALUES ('34', '环保');
INSERT INTO `ezd_industry` VALUES ('35', '质控/安防');
INSERT INTO `ezd_industry` VALUES ('36', '高级管理');
INSERT INTO `ezd_industry` VALUES ('37', '招聘会');
INSERT INTO `ezd_industry` VALUES ('38', '淘宝职位');

-- ----------------------------
-- Table structure for ezd_interview
-- ----------------------------
DROP TABLE IF EXISTS `ezd_interview`;
CREATE TABLE `ezd_interview` (
  `InterviewId` int(11) NOT NULL AUTO_INCREMENT,
  `resumeId` int(11) DEFAULT NULL,
  `InterviewCompany` int(11) DEFAULT NULL,
  `Interviewer` int(11) DEFAULT NULL,
  `InterviewStatue` int(11) DEFAULT '0',
  `InterviewDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `take_InterviewStatue` int(11) DEFAULT NULL,
  PRIMARY KEY (`InterviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_interview
-- ----------------------------
INSERT INTO `ezd_interview` VALUES ('1', '1', '1', '10', '0', '2017-04-27 11:17:29', '1');
INSERT INTO `ezd_interview` VALUES ('2', '2', '2', '11', '0', '2017-04-27 11:17:29', '1');
INSERT INTO `ezd_interview` VALUES ('3', '3', '3', '12', '0', '2017-04-27 11:17:29', '1');
INSERT INTO `ezd_interview` VALUES ('4', '4', '4', '13', '1', '2017-04-27 11:17:29', '2');
INSERT INTO `ezd_interview` VALUES ('5', '5', '5', '14', '0', '2017-04-27 11:17:29', '0');
INSERT INTO `ezd_interview` VALUES ('6', '6', '6', '15', '1', '2017-04-27 11:17:29', '1');
INSERT INTO `ezd_interview` VALUES ('7', '7', '7', '16', '0', '2017-04-27 11:17:29', '1');

-- ----------------------------
-- Table structure for ezd_permission
-- ----------------------------
DROP TABLE IF EXISTS `ezd_permission`;
CREATE TABLE `ezd_permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `PermissionName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_permission
-- ----------------------------
INSERT INTO `ezd_permission` VALUES ('1', '增删改查');
INSERT INTO `ezd_permission` VALUES ('2', '查');

-- ----------------------------
-- Table structure for ezd_positionname
-- ----------------------------
DROP TABLE IF EXISTS `ezd_positionname`;
CREATE TABLE `ezd_positionname` (
  `PositionNameId` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) DEFAULT NULL,
  `industry_Name` int(11) DEFAULT NULL,
  PRIMARY KEY (`PositionNameId`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_positionname
-- ----------------------------
INSERT INTO `ezd_positionname` VALUES ('1', '软件工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('2', '程序员', '1');
INSERT INTO `ezd_positionname` VALUES ('3', '实施工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('4', '网页设计/制作', '1');
INSERT INTO `ezd_positionname` VALUES ('5', '技术总监/经理', '1');
INSERT INTO `ezd_positionname` VALUES ('6', '新媒体经营', '1');
INSERT INTO `ezd_positionname` VALUES ('7', '项目经理/专员', '1');
INSERT INTO `ezd_positionname` VALUES ('8', '产品经理/专员', '1');
INSERT INTO `ezd_positionname` VALUES ('9', '测试工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('10', '网站运营', '1');
INSERT INTO `ezd_positionname` VALUES ('11', '网站编辑', '1');
INSERT INTO `ezd_positionname` VALUES ('12', '网站策划', '1');
INSERT INTO `ezd_positionname` VALUES ('13', '网络管理员', '1');
INSERT INTO `ezd_positionname` VALUES ('14', '网络与信息安全工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('15', '语音/视频/图形', '1');
INSERT INTO `ezd_positionname` VALUES ('16', '通信技术工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('17', '技术支持/维护', '1');
INSERT INTO `ezd_positionname` VALUES ('18', '技术专员/助理', '1');
INSERT INTO `ezd_positionname` VALUES ('19', '硬件工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('20', '质量工程师', '1');
INSERT INTO `ezd_positionname` VALUES ('21', '系统架构师', '1');
INSERT INTO `ezd_positionname` VALUES ('22', '数据库管理/DBA', '1');
INSERT INTO `ezd_positionname` VALUES ('23', '游戏设计/开发', '1');
INSERT INTO `ezd_positionname` VALUES ('24', '网络推广', '1');
INSERT INTO `ezd_positionname` VALUES ('25', '文员', '2');
INSERT INTO `ezd_positionname` VALUES ('26', '招聘专员/助理', '2');
INSERT INTO `ezd_positionname` VALUES ('27', '培训经理/助理', '2');
INSERT INTO `ezd_positionname` VALUES ('28', '培训专员/助理', '2');
INSERT INTO `ezd_positionname` VALUES ('29', '后勤', '2');
INSERT INTO `ezd_positionname` VALUES ('30', '猎头顾问', '2');
INSERT INTO `ezd_positionname` VALUES ('31', '薪酬/绩效/员工关系', '2');
INSERT INTO `ezd_positionname` VALUES ('32', '经理助理/秘书', '2');
INSERT INTO `ezd_positionname` VALUES ('33', '行政总监', '2');
INSERT INTO `ezd_positionname` VALUES ('34', '行政经理/主管', '2');
INSERT INTO `ezd_positionname` VALUES ('35', '行政专员/助理', '2');
INSERT INTO `ezd_positionname` VALUES ('36', '人事总监', '2');
INSERT INTO `ezd_positionname` VALUES ('37', '人事经理/主管', '2');
INSERT INTO `ezd_positionname` VALUES ('38', '人事专员/助理', '2');
INSERT INTO `ezd_positionname` VALUES ('39', '前台/总机/接待', '2');
INSERT INTO `ezd_positionname` VALUES ('40', '招聘经理/主管', '2');
INSERT INTO `ezd_positionname` VALUES ('41', '服务员', '3');
INSERT INTO `ezd_positionname` VALUES ('42', '咖啡师', '3');
INSERT INTO `ezd_positionname` VALUES ('43', '杂工', '3');
INSERT INTO `ezd_positionname` VALUES ('44', '学徒', '3');
INSERT INTO `ezd_positionname` VALUES ('45', '餐饮管理', '3');
INSERT INTO `ezd_positionname` VALUES ('46', '大堂经理/领班', '3');
INSERT INTO `ezd_positionname` VALUES ('47', '迎宾/接待', '3');
INSERT INTO `ezd_positionname` VALUES ('48', '茶艺师', '3');
INSERT INTO `ezd_positionname` VALUES ('49', '面点师', '3');
INSERT INTO `ezd_positionname` VALUES ('50', '洗碗工', '3');
INSERT INTO `ezd_positionname` VALUES ('51', '配菜/打荷', '3');
INSERT INTO `ezd_positionname` VALUES ('52', '传菜员', '3');
INSERT INTO `ezd_positionname` VALUES ('53', '后厨', '3');
INSERT INTO `ezd_positionname` VALUES ('54', '厨师/厨师长', '3');
INSERT INTO `ezd_positionname` VALUES ('55', '送餐员', '3');
INSERT INTO `ezd_positionname` VALUES ('56', '预定员', '3');
INSERT INTO `ezd_positionname` VALUES ('57', '销售代表', '4');
INSERT INTO `ezd_positionname` VALUES ('58', '团购业务员/经理', '4');
INSERT INTO `ezd_positionname` VALUES ('59', '大客户经理', '4');
INSERT INTO `ezd_positionname` VALUES ('60', '客户经理/主管', '4');
INSERT INTO `ezd_positionname` VALUES ('61', '渠道经理/总监', '4');
INSERT INTO `ezd_positionname` VALUES ('62', '渠道专员', '4');
INSERT INTO `ezd_positionname` VALUES ('63', '区域销售', '4');
INSERT INTO `ezd_positionname` VALUES ('64', '网络销售', '4');
INSERT INTO `ezd_positionname` VALUES ('65', '医疗器械销售', '4');
INSERT INTO `ezd_positionname` VALUES ('66', '医药代表', '4');
INSERT INTO `ezd_positionname` VALUES ('67', '汽车销售', '4');
INSERT INTO `ezd_positionname` VALUES ('68', '销售支持', '4');
INSERT INTO `ezd_positionname` VALUES ('69', '电话销售', '4');
INSERT INTO `ezd_positionname` VALUES ('70', '销售总监', '4');
INSERT INTO `ezd_positionname` VALUES ('71', '销售经理/主管', '4');
INSERT INTO `ezd_positionname` VALUES ('72', '会籍顾问', '4');
INSERT INTO `ezd_positionname` VALUES ('73', '普工', '5');
INSERT INTO `ezd_positionname` VALUES ('74', '操作工', '5');
INSERT INTO `ezd_positionname` VALUES ('75', '包装工', '5');
INSERT INTO `ezd_positionname` VALUES ('76', '手机维修', '5');
INSERT INTO `ezd_positionname` VALUES ('77', '水泥工', '5');
INSERT INTO `ezd_positionname` VALUES ('78', '钢筋工', '5');
INSERT INTO `ezd_positionname` VALUES ('79', '管道工', '5');
INSERT INTO `ezd_positionname` VALUES ('80', '瓦工', '5');
INSERT INTO `ezd_positionname` VALUES ('81', '组装工', '5');
INSERT INTO `ezd_positionname` VALUES ('82', '样衣工', '5');
INSERT INTO `ezd_positionname` VALUES ('83', '染工', '5');
INSERT INTO `ezd_positionname` VALUES ('84', '纺织工', '5');
INSERT INTO `ezd_positionname` VALUES ('85', '印花工', '5');
INSERT INTO `ezd_positionname` VALUES ('86', '电梯工', '5');
INSERT INTO `ezd_positionname` VALUES ('87', '铸造/注塑/模具工', '5');
INSERT INTO `ezd_positionname` VALUES ('88', '综合维修工', '5');
INSERT INTO `ezd_positionname` VALUES ('89', '制冷/水暖工', '5');
INSERT INTO `ezd_positionname` VALUES ('90', '电工', '5');
INSERT INTO `ezd_positionname` VALUES ('91', '木工', '5');
INSERT INTO `ezd_positionname` VALUES ('92', '钳工', '5');
INSERT INTO `ezd_positionname` VALUES ('93', '切割/焊工', '5');
INSERT INTO `ezd_positionname` VALUES ('94', '钣金工', '5');
INSERT INTO `ezd_positionname` VALUES ('95', '油漆工', '5');
INSERT INTO `ezd_positionname` VALUES ('96', '缝纫工', '5');
INSERT INTO `ezd_positionname` VALUES ('97', '锅炉工', '5');
INSERT INTO `ezd_positionname` VALUES ('98', '车工/铣工', '5');
INSERT INTO `ezd_positionname` VALUES ('99', '铲车/叉车工', '5');
INSERT INTO `ezd_positionname` VALUES ('100', '压熨工', '5');
INSERT INTO `ezd_positionname` VALUES ('101', '客服专员/助理', '6');
INSERT INTO `ezd_positionname` VALUES ('102', '客服经理/主管', '6');
INSERT INTO `ezd_positionname` VALUES ('103', '客服总监', '6');
INSERT INTO `ezd_positionname` VALUES ('104', '售前/售后服务', '6');
INSERT INTO `ezd_positionname` VALUES ('105', '电话服务', '6');
INSERT INTO `ezd_positionname` VALUES ('106', '客户关系管理', '6');
INSERT INTO `ezd_positionname` VALUES ('107', '房产经纪人', '7');
INSERT INTO `ezd_positionname` VALUES ('108', '置业顾问', '7');
INSERT INTO `ezd_positionname` VALUES ('109', '房产店长/经理', '7');
INSERT INTO `ezd_positionname` VALUES ('110', '房产店员/助理', '7');
INSERT INTO `ezd_positionname` VALUES ('111', '房产客服', '7');
INSERT INTO `ezd_positionname` VALUES ('112', '房产评估师', '7');
INSERT INTO `ezd_positionname` VALUES ('113', '房产开发/策划', '7');
INSERT INTO `ezd_positionname` VALUES ('114', '其他房产职位', '7');
INSERT INTO `ezd_positionname` VALUES ('115', '财务经理/主管', '8');
INSERT INTO `ezd_positionname` VALUES ('116', '财务分析员', '8');
INSERT INTO `ezd_positionname` VALUES ('117', '税务经理/主管', '8');
INSERT INTO `ezd_positionname` VALUES ('118', '税务专员/助理', '8');
INSERT INTO `ezd_positionname` VALUES ('119', '统计员', '8');
INSERT INTO `ezd_positionname` VALUES ('120', '审计经理/主管', '8');
INSERT INTO `ezd_positionname` VALUES ('121', '审计专员/助理', '8');
INSERT INTO `ezd_positionname` VALUES ('122', '出纳', '8');
INSERT INTO `ezd_positionname` VALUES ('123', '会计/会计师', '8');
INSERT INTO `ezd_positionname` VALUES ('124', '财务总监', '8');
INSERT INTO `ezd_positionname` VALUES ('125', '成本管理员', '8');
INSERT INTO `ezd_positionname` VALUES ('126', '证卷/期货/外汇经纪人', '9');
INSERT INTO `ezd_positionname` VALUES ('127', '风险管理/控制', '9');
INSERT INTO `ezd_positionname` VALUES ('128', '融资经理/总监', '9');
INSERT INTO `ezd_positionname` VALUES ('129', '融资专员', '9');
INSERT INTO `ezd_positionname` VALUES ('130', '投资/理财顾问', '9');
INSERT INTO `ezd_positionname` VALUES ('131', '外汇/基金.国债经理人', '9');
INSERT INTO `ezd_positionname` VALUES ('132', '拍卖师', '9');
INSERT INTO `ezd_positionname` VALUES ('133', '担保/拍卖/典当', '9');
INSERT INTO `ezd_positionname` VALUES ('134', '资产评估', '9');
INSERT INTO `ezd_positionname` VALUES ('135', '信贷管理/资信评估', '9');
INSERT INTO `ezd_positionname` VALUES ('136', '银行会计/主任', '9');
INSERT INTO `ezd_positionname` VALUES ('137', '信用卡/银行卡业务', '9');
INSERT INTO `ezd_positionname` VALUES ('138', '证卷分析/金融研究', '9');
INSERT INTO `ezd_positionname` VALUES ('139', '证卷经理/总监', '9');
INSERT INTO `ezd_positionname` VALUES ('140', '股票交易员', '9');
INSERT INTO `ezd_positionname` VALUES ('141', '保洁', '10');
INSERT INTO `ezd_positionname` VALUES ('142', '保姆', '10');
INSERT INTO `ezd_positionname` VALUES ('143', '月嫂', '10');
INSERT INTO `ezd_positionname` VALUES ('144', '育婴师/保育员', '10');
INSERT INTO `ezd_positionname` VALUES ('145', '洗衣工', '10');
INSERT INTO `ezd_positionname` VALUES ('146', '钟点工', '10');
INSERT INTO `ezd_positionname` VALUES ('147', '保安', '10');
INSERT INTO `ezd_positionname` VALUES ('148', '护工', '10');
INSERT INTO `ezd_positionname` VALUES ('149', '送水工', '10');
INSERT INTO `ezd_positionname` VALUES ('150', '店员/营业员', '11');
INSERT INTO `ezd_positionname` VALUES ('151', '食品加工/处理', '11');
INSERT INTO `ezd_positionname` VALUES ('152', '品类管理', '11');
INSERT INTO `ezd_positionname` VALUES ('153', '奢侈品业务', '11');
INSERT INTO `ezd_positionname` VALUES ('154', '招商经理/主管', '11');
INSERT INTO `ezd_positionname` VALUES ('155', '店长/卖场经理', '11');
INSERT INTO `ezd_positionname` VALUES ('156', '防损员/内保', '11');
INSERT INTO `ezd_positionname` VALUES ('157', '理货员/陈列员', '11');
INSERT INTO `ezd_positionname` VALUES ('158', '促销/导购员', '11');
INSERT INTO `ezd_positionname` VALUES ('159', '收银员', '11');
INSERT INTO `ezd_positionname` VALUES ('160', '替导', '11');
INSERT INTO `ezd_positionname` VALUES ('161', '外贸专员/助理', '12');
INSERT INTO `ezd_positionname` VALUES ('162', '外贸经理/主管', '12');
INSERT INTO `ezd_positionname` VALUES ('163', '采购员', '12');
INSERT INTO `ezd_positionname` VALUES ('164', '采购助理', '12');
INSERT INTO `ezd_positionname` VALUES ('165', '采购经理/主管', '12');
INSERT INTO `ezd_positionname` VALUES ('166', '报关员', '12');
INSERT INTO `ezd_positionname` VALUES ('167', '商务专员/经理', '12');
INSERT INTO `ezd_positionname` VALUES ('168', '买手', '12');
INSERT INTO `ezd_positionname` VALUES ('169', '服装设计师', '13');
INSERT INTO `ezd_positionname` VALUES ('170', '纺织品设计师', '13');
INSERT INTO `ezd_positionname` VALUES ('171', '服装打样/制版', '13');
INSERT INTO `ezd_positionname` VALUES ('172', '生产管理', '13');
INSERT INTO `ezd_positionname` VALUES ('173', '样衣工', '13');
INSERT INTO `ezd_positionname` VALUES ('174', '食品/饮料研发/检验', '13');
INSERT INTO `ezd_positionname` VALUES ('175', '板房/底格出格师', '13');
INSERT INTO `ezd_positionname` VALUES ('176', '电脑放码员', '13');
INSERT INTO `ezd_positionname` VALUES ('177', '纸样师/车板工', '13');
INSERT INTO `ezd_positionname` VALUES ('178', '物流专员/助理', '14');
INSERT INTO `ezd_positionname` VALUES ('179', '单证员', '14');
INSERT INTO `ezd_positionname` VALUES ('180', '供应链管理', '14');
INSERT INTO `ezd_positionname` VALUES ('181', '装卸/搬运工', '14');
INSERT INTO `ezd_positionname` VALUES ('182', '仓库经理/主管', '14');
INSERT INTO `ezd_positionname` VALUES ('183', '仓库管理员', '14');
INSERT INTO `ezd_positionname` VALUES ('184', '快递员', '14');
INSERT INTO `ezd_positionname` VALUES ('185', '调度员', '14');
INSERT INTO `ezd_positionname` VALUES ('186', '物流总监', '14');
INSERT INTO `ezd_positionname` VALUES ('187', '物流经理/主管', '14');
INSERT INTO `ezd_positionname` VALUES ('188', '国际货运', '14');
INSERT INTO `ezd_positionname` VALUES ('189', '律师/法律顾问', '15');
INSERT INTO `ezd_positionname` VALUES ('190', '律师助理', '15');
INSERT INTO `ezd_positionname` VALUES ('191', '法务专员/主管', '15');
INSERT INTO `ezd_positionname` VALUES ('192', '产权/专利顾问', '15');
INSERT INTO `ezd_positionname` VALUES ('193', '合规管理', '15');
INSERT INTO `ezd_positionname` VALUES ('194', '教师/助教', '16');
INSERT INTO `ezd_positionname` VALUES ('195', '校长', '16');
INSERT INTO `ezd_positionname` VALUES ('196', '招生/课程顾问', '16');
INSERT INTO `ezd_positionname` VALUES ('197', '学术研究/科研', '16');
INSERT INTO `ezd_positionname` VALUES ('198', '教育产品开发', '16');
INSERT INTO `ezd_positionname` VALUES ('199', '教学/教务管理', '16');
INSERT INTO `ezd_positionname` VALUES ('200', '培训助理', '16');
INSERT INTO `ezd_positionname` VALUES ('201', '培训策划', '16');
INSERT INTO `ezd_positionname` VALUES ('202', '培训师/讲师', '16');
INSERT INTO `ezd_positionname` VALUES ('203', '幼教/早教', '16');
INSERT INTO `ezd_positionname` VALUES ('204', '家教', '16');
INSERT INTO `ezd_positionname` VALUES ('205', '野外拓展训练', '16');
INSERT INTO `ezd_positionname` VALUES ('206', '英语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('207', '阿拉伯语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('208', '葡萄牙语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('209', '意大利语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('210', '西班牙语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('211', '德语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('212', '日语翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('213', '小语种翻译', '17');
INSERT INTO `ezd_positionname` VALUES ('214', '工程项目管理', '18');
INSERT INTO `ezd_positionname` VALUES ('215', '市政工程师', '18');
INSERT INTO `ezd_positionname` VALUES ('216', '资料员', '18');
INSERT INTO `ezd_positionname` VALUES ('217', '园林/景观设计', '18');
INSERT INTO `ezd_positionname` VALUES ('218', '测绘/测量', '18');
INSERT INTO `ezd_positionname` VALUES ('219', '给排水/制冷/暖通', '18');
INSERT INTO `ezd_positionname` VALUES ('220', '道路桥梁技术', '18');
INSERT INTO `ezd_positionname` VALUES ('221', '安全管理/安全员', '18');
INSERT INTO `ezd_positionname` VALUES ('222', '安防工程师', '18');
INSERT INTO `ezd_positionname` VALUES ('223', '幕墙工程师', '18');
INSERT INTO `ezd_positionname` VALUES ('224', '造价师/预算师', '18');
INSERT INTO `ezd_positionname` VALUES ('225', '土木/土建工程师', '18');
INSERT INTO `ezd_positionname` VALUES ('226', '建筑工程师/总工', '18');
INSERT INTO `ezd_positionname` VALUES ('227', '工程监理', '18');
INSERT INTO `ezd_positionname` VALUES ('228', '综合布线/弱电', '18');
INSERT INTO `ezd_positionname` VALUES ('229', '物业管理员', '19');
INSERT INTO `ezd_positionname` VALUES ('230', '物业维修', '19');
INSERT INTO `ezd_positionname` VALUES ('231', '物业经理/主管', '19');
INSERT INTO `ezd_positionname` VALUES ('232', '合同管理', '19');
INSERT INTO `ezd_positionname` VALUES ('233', '招商经理/主管', '19');
INSERT INTO `ezd_positionname` VALUES ('234', '饲料业务', '20');
INSERT INTO `ezd_positionname` VALUES ('235', '养殖人员', '20');
INSERT INTO `ezd_positionname` VALUES ('236', '农艺师/花艺师', '20');
INSERT INTO `ezd_positionname` VALUES ('237', '畜牧师', '20');
INSERT INTO `ezd_positionname` VALUES ('238', '场长', '20');
INSERT INTO `ezd_positionname` VALUES ('239', '养殖部主管', '20');
INSERT INTO `ezd_positionname` VALUES ('240', '动物营养/饲料研发', '20');
INSERT INTO `ezd_positionname` VALUES ('241', '质量管理', '21');
INSERT INTO `ezd_positionname` VALUES ('242', '技术工程师', '21');
INSERT INTO `ezd_positionname` VALUES ('243', '材料工程师', '21');
INSERT INTO `ezd_positionname` VALUES ('244', '工业工程师', '21');
INSERT INTO `ezd_positionname` VALUES ('245', '维修工程师', '21');
INSERT INTO `ezd_positionname` VALUES ('246', '生产总监', '21');
INSERT INTO `ezd_positionname` VALUES ('247', '厂长/副厂长', '21');
INSERT INTO `ezd_positionname` VALUES ('248', '化验/检验', '21');
INSERT INTO `ezd_positionname` VALUES ('249', '生产计划', '21');
INSERT INTO `ezd_positionname` VALUES ('250', '车间主任', '21');
INSERT INTO `ezd_positionname` VALUES ('251', '工艺设计', '21');
INSERT INTO `ezd_positionname` VALUES ('252', '设备管理维护', '21');
INSERT INTO `ezd_positionname` VALUES ('253', '总工程师/副总工程师', '21');
INSERT INTO `ezd_positionname` VALUES ('254', '生产主管/组长', '21');
INSERT INTO `ezd_positionname` VALUES ('255', '酒店前台', '22');
INSERT INTO `ezd_positionname` VALUES ('256', '签证专员', '22');
INSERT INTO `ezd_positionname` VALUES ('257', '计调', '22');
INSERT INTO `ezd_positionname` VALUES ('258', '导游', '22');
INSERT INTO `ezd_positionname` VALUES ('259', '订票员', '22');
INSERT INTO `ezd_positionname` VALUES ('260', '酒店管理', '22');
INSERT INTO `ezd_positionname` VALUES ('261', '救生员', '22');
INSERT INTO `ezd_positionname` VALUES ('262', '行李员', '22');
INSERT INTO `ezd_positionname` VALUES ('263', '楼面经理', '22');
INSERT INTO `ezd_positionname` VALUES ('264', '客房服务员', '22');
INSERT INTO `ezd_positionname` VALUES ('265', '旅游顾问', '22');
INSERT INTO `ezd_positionname` VALUES ('266', '发型师', '23');
INSERT INTO `ezd_positionname` VALUES ('267', '彩妆培训师', '23');
INSERT INTO `ezd_positionname` VALUES ('268', '美容/瘦身顾问', '23');
INSERT INTO `ezd_positionname` VALUES ('269', '美容店长', '23');
INSERT INTO `ezd_positionname` VALUES ('270', '宠物美容', '23');
INSERT INTO `ezd_positionname` VALUES ('271', '美甲师', '23');
INSERT INTO `ezd_positionname` VALUES ('272', '化妆师', '23');
INSERT INTO `ezd_positionname` VALUES ('273', '美容助理/学徒', '23');
INSERT INTO `ezd_positionname` VALUES ('274', '美容师', '23');
INSERT INTO `ezd_positionname` VALUES ('275', '美容导师', '23');
INSERT INTO `ezd_positionname` VALUES ('276', '洗头工', '23');
INSERT INTO `ezd_positionname` VALUES ('277', '美发助理/学徒', '23');
INSERT INTO `ezd_positionname` VALUES ('278', '美体师', '23');
INSERT INTO `ezd_positionname` VALUES ('279', '机电工程师', '24');
INSERT INTO `ezd_positionname` VALUES ('280', '机械工程师', '24');
INSERT INTO `ezd_positionname` VALUES ('281', '研发工程师', '24');
INSERT INTO `ezd_positionname` VALUES ('282', '测试/可靠性工程师', '24');
INSERT INTO `ezd_positionname` VALUES ('283', '版图设计工程师', '24');
INSERT INTO `ezd_positionname` VALUES ('284', '仪器/仪表/计量', '24');
INSERT INTO `ezd_positionname` VALUES ('285', '自动化工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('286', '研发工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('287', '灯光/照明设计工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('288', '音频/视频工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('289', '产品工艺/规划工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('290', '测试/可靠性工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('291', '无线电工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('292', '电路工程师/技术员', '25');
INSERT INTO `ezd_positionname` VALUES ('293', '电子/电气工程师', '25');
INSERT INTO `ezd_positionname` VALUES ('294', '电子/电器维修', '25');
INSERT INTO `ezd_positionname` VALUES ('295', '按摩师', '26');
INSERT INTO `ezd_positionname` VALUES ('296', '足疗师', '26');
INSERT INTO `ezd_positionname` VALUES ('297', '搓洗工', '26');
INSERT INTO `ezd_positionname` VALUES ('298', '针灸推拿', '26');
INSERT INTO `ezd_positionname` VALUES ('299', '健身教练', '27');
INSERT INTO `ezd_positionname` VALUES ('300', '瑜伽教练', '27');
INSERT INTO `ezd_positionname` VALUES ('301', '舞蹈老师', '27');
INSERT INTO `ezd_positionname` VALUES ('302', '游泳教练', '27');
INSERT INTO `ezd_positionname` VALUES ('303', '台球交流', '27');
INSERT INTO `ezd_positionname` VALUES ('304', '高尔夫球助理', '27');
INSERT INTO `ezd_positionname` VALUES ('305', '商务司机', '28');
INSERT INTO `ezd_positionname` VALUES ('306', '客运司机', '28');
INSERT INTO `ezd_positionname` VALUES ('307', '货运司机', '28');
INSERT INTO `ezd_positionname` VALUES ('308', '出租车司机', '28');
INSERT INTO `ezd_positionname` VALUES ('309', '班车司机', '28');
INSERT INTO `ezd_positionname` VALUES ('310', '特种车司机', '28');
INSERT INTO `ezd_positionname` VALUES ('311', '驾校教练/陪练', '28');
INSERT INTO `ezd_positionname` VALUES ('312', '储备经理人', '29');
INSERT INTO `ezd_positionname` VALUES ('313', '保险精算师', '29');
INSERT INTO `ezd_positionname` VALUES ('314', '保险项目经理', '29');
INSERT INTO `ezd_positionname` VALUES ('315', '保险经纪人', '29');
INSERT INTO `ezd_positionname` VALUES ('316', '保险顾问', '29');
INSERT INTO `ezd_positionname` VALUES ('317', '保险客服', '29');
INSERT INTO `ezd_positionname` VALUES ('318', '保险培训师', '29');
INSERT INTO `ezd_positionname` VALUES ('319', '保险内勤', '29');
INSERT INTO `ezd_positionname` VALUES ('320', '车险专员', '29');
INSERT INTO `ezd_positionname` VALUES ('321', '保险客户经理', '29');
INSERT INTO `ezd_positionname` VALUES ('322', '保险其他职位', '29');
INSERT INTO `ezd_positionname` VALUES ('323', '汽车设计工程师', '30');
INSERT INTO `ezd_positionname` VALUES ('324', '加油站工作员', '30');
INSERT INTO `ezd_positionname` VALUES ('325', '停车管理员', '30');
INSERT INTO `ezd_positionname` VALUES ('326', '洗车工', '30');
INSERT INTO `ezd_positionname` VALUES ('327', '理赔专员/顾问', '30');
INSERT INTO `ezd_positionname` VALUES ('328', '安全性能工程师', '30');
INSERT INTO `ezd_positionname` VALUES ('329', '发动机/总装工程师', '30');
INSERT INTO `ezd_positionname` VALUES ('330', '二手车评估师', '30');
INSERT INTO `ezd_positionname` VALUES ('331', '汽车美容', '30');
INSERT INTO `ezd_positionname` VALUES ('332', '汽车检验/检测', '30');
INSERT INTO `ezd_positionname` VALUES ('333', '4S店管理', '30');
INSERT INTO `ezd_positionname` VALUES ('334', '汽车电子工程师', '30');
INSERT INTO `ezd_positionname` VALUES ('335', '汽车/摩托车修理', '30');
INSERT INTO `ezd_positionname` VALUES ('336', '装备工艺工程师', '30');
INSERT INTO `ezd_positionname` VALUES ('337', '轮胎工', '30');
INSERT INTO `ezd_positionname` VALUES ('338', '总编/副总编/主编', '31');
INSERT INTO `ezd_positionname` VALUES ('339', '编辑/撰稿', '31');
INSERT INTO `ezd_positionname` VALUES ('340', '记者/采编', '31');
INSERT INTO `ezd_positionname` VALUES ('341', '出版/发行', '31');
INSERT INTO `ezd_positionname` VALUES ('342', '排版设计/制作', '31');
INSERT INTO `ezd_positionname` VALUES ('343', '印刷操作', '31');
INSERT INTO `ezd_positionname` VALUES ('344', '装订/烫金', '31');
INSERT INTO `ezd_positionname` VALUES ('345', '医生', '32');
INSERT INTO `ezd_positionname` VALUES ('346', '营养师', '32');
INSERT INTO `ezd_positionname` VALUES ('347', '验光师', '32');
INSERT INTO `ezd_positionname` VALUES ('348', '美容整形师', '32');
INSERT INTO `ezd_positionname` VALUES ('349', '医疗管理', '32');
INSERT INTO `ezd_positionname` VALUES ('350', '医药之间', '32');
INSERT INTO `ezd_positionname` VALUES ('351', '理疗师', '32');
INSERT INTO `ezd_positionname` VALUES ('352', '药剂师', '32');
INSERT INTO `ezd_positionname` VALUES ('353', '导医', '32');
INSERT INTO `ezd_positionname` VALUES ('354', '护理主任/护士长', '32');
INSERT INTO `ezd_positionname` VALUES ('355', '护士/护理', '32');
INSERT INTO `ezd_positionname` VALUES ('356', '心理医生', '32');
INSERT INTO `ezd_positionname` VALUES ('357', '保健医生', '32');
INSERT INTO `ezd_positionname` VALUES ('358', '宠物护理/兽医', '32');
INSERT INTO `ezd_positionname` VALUES ('359', '医药研发/生产/注册', '33');
INSERT INTO `ezd_positionname` VALUES ('360', '临床研究/协调', '33');
INSERT INTO `ezd_positionname` VALUES ('361', '生物工程/生物制药', '33');
INSERT INTO `ezd_positionname` VALUES ('362', '医疗器械研发/维修', '33');
INSERT INTO `ezd_positionname` VALUES ('363', '污水处理工程师', '34');
INSERT INTO `ezd_positionname` VALUES ('364', '环境工程技术', '34');
INSERT INTO `ezd_positionname` VALUES ('365', '环境管理/保护', '34');
INSERT INTO `ezd_positionname` VALUES ('366', '环保技术', '34');
INSERT INTO `ezd_positionname` VALUES ('367', 'EHS管理', '34');
INSERT INTO `ezd_positionname` VALUES ('368', '环保工程师', '34');
INSERT INTO `ezd_positionname` VALUES ('369', '环保检测', '34');
INSERT INTO `ezd_positionname` VALUES ('370', '水质检测员', '34');
INSERT INTO `ezd_positionname` VALUES ('371', '环境绿化', '34');
INSERT INTO `ezd_positionname` VALUES ('372', '质量管理/测试经理', '35');
INSERT INTO `ezd_positionname` VALUES ('373', '质量检验员/测试员', '35');
INSERT INTO `ezd_positionname` VALUES ('374', '测试工程师', '35');
INSERT INTO `ezd_positionname` VALUES ('375', '安全消防', '35');
INSERT INTO `ezd_positionname` VALUES ('376', '认证工程师/审核员', '35');
INSERT INTO `ezd_positionname` VALUES ('377', '安全管理', '35');
INSERT INTO `ezd_positionname` VALUES ('378', 'CEO/总裁/总经理', '36');
INSERT INTO `ezd_positionname` VALUES ('379', '首席运营官COO', '36');
INSERT INTO `ezd_positionname` VALUES ('380', '首席财务官CFO', '36');
INSERT INTO `ezd_positionname` VALUES ('381', '首席技术官CTO', '36');
INSERT INTO `ezd_positionname` VALUES ('382', '副总裁/副总经理', '36');
INSERT INTO `ezd_positionname` VALUES ('383', '总裁助理/总经理助理', '36');
INSERT INTO `ezd_positionname` VALUES ('384', '总监', '36');
INSERT INTO `ezd_positionname` VALUES ('385', '分公司经理', '36');
INSERT INTO `ezd_positionname` VALUES ('386', '合伙人', '36');
INSERT INTO `ezd_positionname` VALUES ('387', '专场招聘会', '37');
INSERT INTO `ezd_positionname` VALUES ('388', '应届生招聘会', '37');
INSERT INTO `ezd_positionname` VALUES ('389', '综合招聘会', '37');
INSERT INTO `ezd_positionname` VALUES ('390', '中高级人才招聘会', '37');
INSERT INTO `ezd_positionname` VALUES ('391', '网店店长', '38');
INSERT INTO `ezd_positionname` VALUES ('392', '淘宝客服', '38');
INSERT INTO `ezd_positionname` VALUES ('393', '淘宝美工', '38');
INSERT INTO `ezd_positionname` VALUES ('394', '店铺文案编辑', '38');
INSERT INTO `ezd_positionname` VALUES ('395', '店铺推广', '38');
INSERT INTO `ezd_positionname` VALUES ('396', '活动策划', '38');

-- ----------------------------
-- Table structure for ezd_post
-- ----------------------------
DROP TABLE IF EXISTS `ezd_post`;
CREATE TABLE `ezd_post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(30) NOT NULL,
  `company` int(11) DEFAULT NULL,
  `sendPostDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `contacts` varchar(30) NOT NULL,
  `contactInformation` varchar(30) NOT NULL,
  `Position_name` int(11) DEFAULT NULL,
  `recruitmentNumber` varchar(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_post
-- ----------------------------
INSERT INTO `ezd_post` VALUES ('1', '是人才你就来', '1', '2017-04-27 11:17:28', '曾先生', '15170748242', '361', '15', '0');
INSERT INTO `ezd_post` VALUES ('2', '非一般的待遇', '2', '2017-04-27 11:17:28', '梁先生', '15170748243', '126', '5', '0');
INSERT INTO `ezd_post` VALUES ('3', '人生我才必有用', '3', '2017-04-27 11:17:28', '林先生', '15170748244', '30', '20', '0');
INSERT INTO `ezd_post` VALUES ('4', '展现你的美', '4', '2017-04-27 11:17:28', '张小姐', '15170748245', '251', '10', '0');
INSERT INTO `ezd_post` VALUES ('5', '招IT老师啦', '5', '2017-04-27 11:17:28', '赖先生', '15170748246', '202', '8', '0');
INSERT INTO `ezd_post` VALUES ('6', '这里成就未来', '6', '2017-04-27 11:17:28', '刘先生', '15170748247', '5', '1', '0');
INSERT INTO `ezd_post` VALUES ('7', '洛克文化学院', '7', '2017-04-27 11:17:28', '庄先生', '15170748248', '25', '10', '0');
INSERT INTO `ezd_post` VALUES ('8', '立马房产', '8', '2017-04-27 11:17:28', '吴先生', '15170748249', '8', '3', '0');

-- ----------------------------
-- Table structure for ezd_postbrowse
-- ----------------------------
DROP TABLE IF EXISTS `ezd_postbrowse`;
CREATE TABLE `ezd_postbrowse` (
  `postBrowseId` int(11) NOT NULL AUTO_INCREMENT,
  `browse_user` int(11) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  PRIMARY KEY (`postBrowseId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_postbrowse
-- ----------------------------
INSERT INTO `ezd_postbrowse` VALUES ('1', '1', '1');
INSERT INTO `ezd_postbrowse` VALUES ('2', '1', '2');
INSERT INTO `ezd_postbrowse` VALUES ('3', '2', '1');
INSERT INTO `ezd_postbrowse` VALUES ('4', '3', '4');
INSERT INTO `ezd_postbrowse` VALUES ('5', '4', '5');
INSERT INTO `ezd_postbrowse` VALUES ('6', '5', '6');
INSERT INTO `ezd_postbrowse` VALUES ('7', '6', '7');
INSERT INTO `ezd_postbrowse` VALUES ('8', '7', '8');
INSERT INTO `ezd_postbrowse` VALUES ('9', '8', '9');
INSERT INTO `ezd_postbrowse` VALUES ('10', '1', '3');
INSERT INTO `ezd_postbrowse` VALUES ('11', '2', '10');

-- ----------------------------
-- Table structure for ezd_recruitmentdetails
-- ----------------------------
DROP TABLE IF EXISTS `ezd_recruitmentdetails`;
CREATE TABLE `ezd_recruitmentdetails` (
  `RecruitmentDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `JobRequirements` varchar(300) NOT NULL,
  `GenderRequirements` varchar(20) NOT NULL,
  `EducationalRequirements` varchar(20) NOT NULL,
  `CompanyBenefits` varchar(300) NOT NULL,
  `JobContent` varchar(300) NOT NULL,
  `experienceRequirements` varchar(300) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `JobType` int(11) DEFAULT NULL,
  `postId` int(11) DEFAULT NULL,
  PRIMARY KEY (`RecruitmentDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_recruitmentdetails
-- ----------------------------
INSERT INTO `ezd_recruitmentdetails` VALUES ('1', '工作要求是科学', '男女不限', '本科以上', '有很多福利', '1、负责研发公司应用软件的模块设计、开发和交付<br>\r\n2、负责编码，单元测试<br>\r\n3、按照功能组件的详细设计<br>\r\n4、对其他软件工程师的代码进行审核<br>\r\n5、参与新知识的学习和培训<br>\r\n6、修复程序BUG<br>\r\n7、参与与其业务相关的需求变更评审<br>\r\n8、完成上级交办的其他事宜<br>\r\n9、编写技术设计文档', '6-7年以上', '7000+', '1', '1');
INSERT INTO `ezd_recruitmentdetails` VALUES ('2', '工作要求是经济', '男女不限', '本科以上', '有很多福利', '1、负责研发公司应用软件的模块设计、开发和交付<br>\r\n2、负责编码，单元测试<br>\r\n3、按照功能组件的详细设计<br>\r\n4、对其他软件工程师的代码进行审核<br>\r\n5、参与新知识的学习和培训<br>\r\n6、修复程序BUG<br>\r\n7、参与与其业务相关的需求变更评审<br>\r\n8、完成上级交办的其他事宜<br>\r\n9、编写技术设计文档', '1-2年以上', '6000+', '1', '2');
INSERT INTO `ezd_recruitmentdetails` VALUES ('3', '工作要求是专业', '男女不限', '大专以上', '有很多福利', '1、负责研发公司应用软件的模块设计、开发和交付<br>\r\n2、负责编码，单元测试<br>\r\n3、按照功能组件的详细设计<br>\r\n4、对其他软件工程师的代码进行审核<br>\r\n5、参与新知识的学习和培训<br>\r\n6、修复程序BUG<br>\r\n7、参与与其业务相关的需求变更评审<br>\r\n8、完成上级交办的其他事宜<br>\r\n9、编写技术设计文档', '2年以上', '5000+', '1', '3');
INSERT INTO `ezd_recruitmentdetails` VALUES ('4', '工作要求是新颖', '女', '本科以上', '有很多福利', '要做关于设计的事', '2年以上', '6000+', '1', '4');
INSERT INTO `ezd_recruitmentdetails` VALUES ('5', '工作要求是精英', '男女不限', '大专以上', '有很多福利', '要做关于电脑的事', '2年以上', '5000+', '1', '5');
INSERT INTO `ezd_recruitmentdetails` VALUES ('6', '工作要求是能力', '男', '本科以上', '有很多福利', '要做关于汽车的事', '不限', '10000+', '1', '6');
INSERT INTO `ezd_recruitmentdetails` VALUES ('7', '工作要求是责任', '男女不限', '大专以上', '有很多福利', '要做关于老师的事', '不限', '5000+', '1', '7');
INSERT INTO `ezd_recruitmentdetails` VALUES ('8', '工作要求是营销', '男女不限', '大专以上', '有很多福利', '要做关于房产的事', '不限', '5000+', '1', '8');

-- ----------------------------
-- Table structure for ezd_recruitmentdetailstype
-- ----------------------------
DROP TABLE IF EXISTS `ezd_recruitmentdetailstype`;
CREATE TABLE `ezd_recruitmentdetailstype` (
  `recruitmentDetailsTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `recruitmentDetailsTypeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`recruitmentDetailsTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_recruitmentdetailstype
-- ----------------------------
INSERT INTO `ezd_recruitmentdetailstype` VALUES ('1', '实习');
INSERT INTO `ezd_recruitmentdetailstype` VALUES ('2', '全职');

-- ----------------------------
-- Table structure for ezd_resume
-- ----------------------------
DROP TABLE IF EXISTS `ezd_resume`;
CREATE TABLE `ezd_resume` (
  `resumeId` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `birthday` datetime NOT NULL,
  `ID_card` char(18) NOT NULL,
  `Placeoforigin` varchar(30) DEFAULT NULL,
  `Workexperience` varchar(200) DEFAULT NULL,
  `Selfevaluation` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`resumeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_resume
-- ----------------------------
INSERT INTO `ezd_resume` VALUES ('1', '王阳明', '1996-05-01 00:00:00', '360731199605018764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉良好');
INSERT INTO `ezd_resume` VALUES ('2', '绿箭侠', '1996-05-02 00:00:00', '360731199605028764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉自己么么哒');
INSERT INTO `ezd_resume` VALUES ('3', '张家辉', '1996-05-03 00:00:00', '360731199605038764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉异棘毛鲶');
INSERT INTO `ezd_resume` VALUES ('4', '刘振华', '1996-05-04 00:00:00', '360731199605048764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉隔壁把你们联盟内部');
INSERT INTO `ezd_resume` VALUES ('5', '刘小光', '1996-05-05 00:00:00', '360731199605058764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉玩儿推');
INSERT INTO `ezd_resume` VALUES ('6', '张美荣', '1996-05-06 00:00:00', '360731199605068764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉阿斯顿法国和健康');
INSERT INTO `ezd_resume` VALUES ('7', '张晓红', '1996-05-07 00:00:00', '360731199605078764', '广东省珠海市斗门区白蕉镇', '应届毕业生', '感觉是的法规和健康');

-- ----------------------------
-- Table structure for ezd_role
-- ----------------------------
DROP TABLE IF EXISTS `ezd_role`;
CREATE TABLE `ezd_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_role
-- ----------------------------
INSERT INTO `ezd_role` VALUES ('1', '管理员');
INSERT INTO `ezd_role` VALUES ('2', '普通用户');

-- ----------------------------
-- Table structure for ezd_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `ezd_role_permission`;
CREATE TABLE `ezd_role_permission` (
  `RolePermissionID` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`RolePermissionID`),
  KEY `fk_PermissionId` (`permissionId`),
  KEY `fk_roleidPermission` (`roleId`),
  CONSTRAINT `fk_PermissionId` FOREIGN KEY (`permissionId`) REFERENCES `ezd_permission` (`permissionId`),
  CONSTRAINT `fk_roleidPermission` FOREIGN KEY (`roleId`) REFERENCES `ezd_role` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_role_permission
-- ----------------------------
INSERT INTO `ezd_role_permission` VALUES ('1', '1', '1');
INSERT INTO `ezd_role_permission` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for ezd_school
-- ----------------------------
DROP TABLE IF EXISTS `ezd_school`;
CREATE TABLE `ezd_school` (
  `schoolId` int(11) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(30) NOT NULL,
  `schoolAddress` varchar(30) NOT NULL,
  `schret_detail` varchar(30) DEFAULT NULL,
  `schoolTypeId` int(11) DEFAULT NULL,
  `schoolCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_school
-- ----------------------------
INSERT INTO `ezd_school` VALUES ('1', '广东科贸职业学院', '广东珠海斗门区', '有关于IT行业的校招会', '2', '56');
INSERT INTO `ezd_school` VALUES ('2', '英国剑桥大学', '广东珠海斗门区', '有关于IT行业的校招会', '1', '56');
INSERT INTO `ezd_school` VALUES ('3', '美国哈佛大学', '广东珠海斗门区', '有关于IT行业的校招会', '2', '5');
INSERT INTO `ezd_school` VALUES ('4', '浙江大学', '广东珠海斗门区', '有关于IT行业的校招会', '1', '6');
INSERT INTO `ezd_school` VALUES ('5', '上海复旦大学', '广东珠海斗门区', '有关于IT行业的校招会', '2', '30');
INSERT INTO `ezd_school` VALUES ('6', '北京清华大学', '广东珠海斗门区', '有关于IT行业的校招会', '1', '5');
INSERT INTO `ezd_school` VALUES ('7', '北京大学', '广东珠海斗门区', '有关于IT行业的校招会', '2', '22');

-- ----------------------------
-- Table structure for ezd_schooltype
-- ----------------------------
DROP TABLE IF EXISTS `ezd_schooltype`;
CREATE TABLE `ezd_schooltype` (
  `schoolTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `schoolTypeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`schoolTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_schooltype
-- ----------------------------
INSERT INTO `ezd_schooltype` VALUES ('1', '本科');
INSERT INTO `ezd_schooltype` VALUES ('2', '专科');

-- ----------------------------
-- Table structure for ezd_theattraction
-- ----------------------------
DROP TABLE IF EXISTS `ezd_theattraction`;
CREATE TABLE `ezd_theattraction` (
  `theAttractionId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) NOT NULL,
  `theAttractionImg` varchar(300) DEFAULT NULL,
  `starttime` datetime DEFAULT CURRENT_TIMESTAMP,
  `contentBytheAttraction` varchar(300) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `applicant` int(11) DEFAULT NULL,
  PRIMARY KEY (`theAttractionId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_theattraction
-- ----------------------------
INSERT INTO `ezd_theattraction` VALUES ('1', '强强联合', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('2', '锋芒毕露', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('3', '毛遂自荐', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('4', '最强王者', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('5', '启明星的指引', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('6', '英雄王的黄金杯', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);
INSERT INTO `ezd_theattraction` VALUES ('7', '名将之兵书', '/img/e.png', '2017-04-27 11:17:29', '这里有很多求贤若渴的公司', '南方IT学院', '2017-05-26 00:00:00', null);

-- ----------------------------
-- Table structure for ezd_theattractionapplicant
-- ----------------------------
DROP TABLE IF EXISTS `ezd_theattractionapplicant`;
CREATE TABLE `ezd_theattractionapplicant` (
  `applicantId` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` int(11) DEFAULT NULL,
  `theAttraction` int(11) DEFAULT NULL,
  PRIMARY KEY (`applicantId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_theattractionapplicant
-- ----------------------------
INSERT INTO `ezd_theattractionapplicant` VALUES ('1', '13', '1');
INSERT INTO `ezd_theattractionapplicant` VALUES ('2', '16', '7');
INSERT INTO `ezd_theattractionapplicant` VALUES ('3', '11', '4');
INSERT INTO `ezd_theattractionapplicant` VALUES ('4', '10', '1');
INSERT INTO `ezd_theattractionapplicant` VALUES ('5', '12', '6');
INSERT INTO `ezd_theattractionapplicant` VALUES ('6', '15', '5');
INSERT INTO `ezd_theattractionapplicant` VALUES ('7', '14', '3');
INSERT INTO `ezd_theattractionapplicant` VALUES ('8', '10', '2');

-- ----------------------------
-- Table structure for ezd_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `ezd_userinfo`;
CREATE TABLE `ezd_userinfo` (
  `userInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `birthday` datetime DEFAULT NULL,
  `Headportrait` varchar(300) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `NickName` varchar(30) NOT NULL,
  `school` varchar(30) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `jobIntention` varchar(50) DEFAULT NULL,
  `feedBackId` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `resumeId` int(11) NOT NULL,
  PRIMARY KEY (`userInfoId`),
  KEY `fk_userid_userInfo` (`userId`),
  KEY `fk_feedBack` (`feedBackId`),
  KEY `fk_Resume` (`resumeId`),
  CONSTRAINT `fk_Resume` FOREIGN KEY (`resumeId`) REFERENCES `ezd_resume` (`resumeId`),
  CONSTRAINT `fk_feedBack` FOREIGN KEY (`feedBackId`) REFERENCES `ezd_feedback` (`feedBackId`),
  CONSTRAINT `fk_userid_userInfo` FOREIGN KEY (`userId`) REFERENCES `ezd_users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_userinfo
-- ----------------------------
INSERT INTO `ezd_userinfo` VALUES ('22', '1996-05-01 00:00:00', '/img/a.png', '15170848242', '无烟煤', '广东科贸职业学院', '0', '前端设计师', '1', '10', '1');
INSERT INTO `ezd_userinfo` VALUES ('23', '1996-05-02 00:00:00', '/img/a.png', '15170848243', '六角星', '英国剑桥大学', '0', 'java工程师', '2', '11', '2');
INSERT INTO `ezd_userinfo` VALUES ('24', '1996-05-03 00:00:00', '/img/a.png', '15170848244', '纸巾盒', '美国哈佛大学', '0', '前端设计师', '3', '12', '3');
INSERT INTO `ezd_userinfo` VALUES ('25', '1996-05-04 00:00:00', '/img/a.png', '15170848245', '离子化合物', '浙江大学', '0', '前端开发师', '4', '13', '4');
INSERT INTO `ezd_userinfo` VALUES ('26', '1996-05-05 00:00:00', '/img/a.png', '15170848246', '理想国', '上海复旦大学', '0', '安卓工程师', '5', '14', '5');
INSERT INTO `ezd_userinfo` VALUES ('27', '1996-05-06 00:00:00', '/img/a.png', '15170848247', '追梦人', '北京清华大学', '1', 'DBA', '6', '15', '6');
INSERT INTO `ezd_userinfo` VALUES ('28', '1996-05-07 00:00:00', '/img/a.png', '15170848248', '再循环', '北京大学', '1', '测试工程师', '7', '16', '7');

-- ----------------------------
-- Table structure for ezd_users
-- ----------------------------
DROP TABLE IF EXISTS `ezd_users`;
CREATE TABLE `ezd_users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `userType` varchar(30) NOT NULL,
  `token` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_users
-- ----------------------------
INSERT INTO `ezd_users` VALUES ('1', '15170564242', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('2', '1367085674', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('3', '1390803479', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('4', 'f@qq.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('5', 'six6@162.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('6', 'seven7@qq.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('7', 'eight8@126.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('8', '1587073342', '12345', '管理员', 'null');
INSERT INTO `ezd_users` VALUES ('9', '1320709946', '12345', '管理员', 'null');
INSERT INTO `ezd_users` VALUES ('10', '15170564242', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('11', '1367085674', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('12', '1390803479', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('13', 'f@qq.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('14', 'six6@162.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('15', 'seven7@qq.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('16', 'eight8@126.com', '12345', '普通用户', 'null');
INSERT INTO `ezd_users` VALUES ('17', '1587073342', '12345', '管理员', 'null');
INSERT INTO `ezd_users` VALUES ('18', '1320709946', '12345', '管理员', 'null');

-- ----------------------------
-- Table structure for ezd_usertotal
-- ----------------------------
DROP TABLE IF EXISTS `ezd_usertotal`;
CREATE TABLE `ezd_usertotal` (
  `UserTotalId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `TotalEnrollment` int(11) DEFAULT NULL,
  `CancellationNumber` int(11) DEFAULT NULL,
  `NumberOfEmployed` int(11) DEFAULT NULL,
  `UserTermination` int(11) DEFAULT NULL,
  `EnterpriseTermination` int(11) DEFAULT NULL,
  `AlreadyCompleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserTotalId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_usertotal
-- ----------------------------
INSERT INTO `ezd_usertotal` VALUES ('1', '10', '10', '2', '1', '3', '5', '0');
INSERT INTO `ezd_usertotal` VALUES ('2', '11', '11', '5', '2', '1', '1', '1');
INSERT INTO `ezd_usertotal` VALUES ('3', '12', '12', '1', '2', '1', '1', '0');
INSERT INTO `ezd_usertotal` VALUES ('4', '13', '13', '0', '3', '2', '1', '1');
INSERT INTO `ezd_usertotal` VALUES ('5', '14', '14', '4', '3', '3', '0', '0');
INSERT INTO `ezd_usertotal` VALUES ('6', '15', '15', '6', '6', '3', '3', '0');
INSERT INTO `ezd_usertotal` VALUES ('7', '16', '16', '3', '5', '3', '1', '1');

-- ----------------------------
-- Table structure for ezd_user_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `ezd_user_enterprise`;
CREATE TABLE `ezd_user_enterprise` (
  `user_enterprise_id` int(11) NOT NULL AUTO_INCREMENT,
  `followCompany` int(11) DEFAULT NULL,
  `ConcernedPeople` int(11) DEFAULT NULL,
  `user_enterprise_statu` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_enterprise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_user_enterprise
-- ----------------------------

-- ----------------------------
-- Table structure for ezd_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ezd_user_role`;
CREATE TABLE `ezd_user_role` (
  `userroleId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userroleId`),
  KEY `fk_userid` (`userId`),
  KEY `fk_roleid` (`roleId`),
  CONSTRAINT `fk_roleid` FOREIGN KEY (`roleId`) REFERENCES `ezd_role` (`roleid`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`userId`) REFERENCES `ezd_users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_user_role
-- ----------------------------
INSERT INTO `ezd_user_role` VALUES ('1', '1', '2');
INSERT INTO `ezd_user_role` VALUES ('2', '2', '2');
INSERT INTO `ezd_user_role` VALUES ('3', '3', '2');
INSERT INTO `ezd_user_role` VALUES ('4', '4', '2');
INSERT INTO `ezd_user_role` VALUES ('5', '5', '2');
INSERT INTO `ezd_user_role` VALUES ('6', '6', '2');
INSERT INTO `ezd_user_role` VALUES ('7', '7', '2');
INSERT INTO `ezd_user_role` VALUES ('8', '8', '1');
INSERT INTO `ezd_user_role` VALUES ('9', '9', '1');

-- ----------------------------
-- Table structure for ezd_verification
-- ----------------------------
DROP TABLE IF EXISTS `ezd_verification`;
CREATE TABLE `ezd_verification` (
  `VerificationId` int(11) NOT NULL AUTO_INCREMENT,
  `RealName` varchar(30) NOT NULL,
  `IDcard` char(18) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `imageFont` varchar(300) DEFAULT NULL,
  `imageBack` varchar(300) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`VerificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ezd_verification
-- ----------------------------
INSERT INTO `ezd_verification` VALUES ('1', '王阳明', '360731199605018764', '15170748242', '/img/g.png', '/img/h.png', '10');
INSERT INTO `ezd_verification` VALUES ('2', '绿箭侠', '360731199605028764', '15170748243', '/img/g.png', '/img/h.png', '11');
INSERT INTO `ezd_verification` VALUES ('3', '张家辉', '360731199605038764', '15170748244', '/img/g.png', '/img/h.png', '12');
INSERT INTO `ezd_verification` VALUES ('4', '刘振华', '360731199605048764', '15170748245', '/img/g.png', '/img/h.png', '13');
INSERT INTO `ezd_verification` VALUES ('5', '刘小光', '360731199605058764', '15170748246', '/img/g.png', '/img/h.png', '14');
INSERT INTO `ezd_verification` VALUES ('6', '张美荣', '360731199605068764', '15170748249', '/img/g.png', '/img/h.png', '15');
INSERT INTO `ezd_verification` VALUES ('7', '张晓红', '360731199605078764', '15170748248', '/img/g.png', '/img/h.png', '16');
