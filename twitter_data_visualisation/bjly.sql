/*
MySQL Data Transfer
Source Host: localhost
Source Database: bjly
Target Host: localhost
Target Database: bjly
Date: 2012-06-17 13:51:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `creattime` datetime default NULL,
  `flag` int(4) default NULL,
  `isuse` int(4) default NULL,
  `logintimes` int(4) default NULL,
  `quanxian` varchar(1000) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
CREATE TABLE `adminlog` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `logintime` datetime default NULL,
  `loginip` varchar(50) default NULL,
  `useros` varchar(50) default NULL,
  `ok` varchar(50) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for affiche
-- ----------------------------
CREATE TABLE `affiche` (
  `id` int(4) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `content` varchar(200) default NULL,
  `addtime` varchar(30) default NULL,
  `adder` varchar(50) default NULL,
  `ifhide` int(4) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
CREATE TABLE `friendlink` (
  `id` int(4) NOT NULL auto_increment,
  `linkname` varchar(50) default NULL,
  `linkurl` varchar(50) default NULL,
  `linkpic` varchar(200) default NULL,
  `intero` varchar(300) default NULL,
  `ifhide` int(4) default NULL,
  `ordervalue` int(4) default NULL,
  `addtime` datetime default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
CREATE TABLE `guestbook` (
  `id` int(4) NOT NULL auto_increment,
  `nickname` varchar(100) default NULL,
  `pic` varchar(100) default NULL,
  `email` varchar(50) default NULL,
  `qq` varchar(50) default NULL,
  `weburl` varchar(50) default NULL,
  `blogurl` varchar(50) default NULL,
  `expressions` varchar(50) default NULL,
  `content` varchar(200) default NULL,
  `addtime` datetime default NULL,
  `ip` varchar(50) default NULL,
  `replay` int(4) default NULL,
  `ifhide` int(4) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for guestvisit
-- ----------------------------
CREATE TABLE `guestvisit` (
  `id` int(4) NOT NULL auto_increment,
  `ip` varchar(50) default NULL,
  `vtime` varchar(50) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for member
-- ----------------------------
CREATE TABLE `member` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `regtime` varchar(50) default NULL,
  `ifuse` int(4) default NULL,
  `logintimes` int(4) default NULL,
  `lasttime` datetime default NULL,
  `lastip` varchar(50) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for news
-- ----------------------------
CREATE TABLE `news` (
  `id` int(4) NOT NULL auto_increment,
  `title` varchar(150) default NULL,
  `fenlei` varchar(50) default NULL,
  `content` text,
  `addtime` varchar(50) default NULL,
  `adder` varchar(50) default NULL,
  `visit` int(4) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for pmember
-- ----------------------------
CREATE TABLE `pmember` (
  `id` int(4) NOT NULL auto_increment,
  `mid` int(4) default NULL,
  `realname` varchar(100) default NULL,
  `sex` varchar(50) default NULL,
  `bir` varchar(50) default NULL,
  `sheng` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `telphone` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `question` varchar(100) default NULL,
  `answer` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for prep
-- ----------------------------
CREATE TABLE `prep` (
  `id` int(4) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `rs` varchar(50) default NULL,
  `sj` varchar(50) default NULL,
  `ts` varchar(50) default NULL,
  `lxr` varchar(50) default NULL,
  `lxfs` varchar(50) default NULL,
  `addtime` varchar(50) default NULL,
  `member` varchar(50) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for replay
-- ----------------------------
CREATE TABLE `replay` (
  `id` int(4) NOT NULL auto_increment,
  `mid` int(4) default NULL,
  `replay` varchar(200) default NULL,
  `replayer` varchar(50) default NULL,
  `replaytime` datetime default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for sale
-- ----------------------------
CREATE TABLE `sale` (
  `id` int(4) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `url` varchar(200) default NULL,
  `dz` varchar(50) default NULL,
  `yb` varchar(50) default NULL,
  `dh` varchar(50) default NULL,
  `jd` varchar(50) default NULL,
  `content` text,
  `addtime` varchar(50) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for system
-- ----------------------------
CREATE TABLE `system` (
  `id` int(4) NOT NULL auto_increment,
  `sitename` varchar(100) default NULL,
  `url` varchar(100) default NULL,
  `keyword` varchar(100) default NULL,
  `description` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `reasons` varchar(100) default NULL,
  `dir` varchar(100) default NULL,
  `record` varchar(100) default NULL,
  `copyright` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '0000-00-00 00:00:00', '1', '1', '53', '1');
INSERT INTO `adminlog` VALUES ('43', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 02:26:21', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('44', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 02:33:17', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('45', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 02:33:21', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('46', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 03:14:13', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('47', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 13:45:52', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('48', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 22:30:35', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('49', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 23:14:10', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('50', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-03-04 23:23:15', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('51', 'a', 'a', '2012-05-29 21:53:18', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES ('52', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2012-05-29 21:53:25', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES ('53', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2012-06-17 13:46:09', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES ('54', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2012-06-17 13:50:23', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `affiche` VALUES ('4', '欢迎光临旅游网！', '欢迎光临旅游网，查询旅游信息，预定酒店！', '2011-03-04 00:35:10', 'admin', '1');
INSERT INTO `member` VALUES ('1', 'xiaoqiang', '96e79218965eb72c92a549dd5a330112', 'person', '2011-03-07 17:51:48', '1', '12', '2011-03-04 13:42:22', '127.0.0.1');
INSERT INTO `member` VALUES ('2', 'liusan', '670b14728ad9902aecba32e22fa4f6bd', 'person', '2012-06-17 13:49:19', '1', '1', '2012-06-17 13:49:28', '0:0:0:0:0:0:0:1');
INSERT INTO `news` VALUES ('22', '极地海洋世界旅游信息', '景点介绍', '<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">青岛极地海洋世界坐落于石老人旅游度假区南面的青岛极地海洋世界背靠青山，三面临海，风光秀美，交通便利。它是在原青岛海豚表演馆的基础上投资兴建的集吃、住、行、游、购、娱为一体，以海洋公园为主题的大型开放式旅游项目，也是青岛为迎接2008年奥运会而开发的 《奥运行动规划－旅游专项规划》七大项目之一。</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">青岛极地海洋世界有限公司系中外合作企业，其主要投资方大连海昌集团有限公司是以石油贸易和海上油品运输为主业、房地产和旅游产业为辅、集IT业、文化教育业、餐饮娱乐等产业在内国际化集团公司。</div>\r\n<p><span style=\"font-size: 11pt\">青岛极地海洋世界项目是一个集休闲、娱乐、购物、文化为一体的大型旅游度假综合服务设施。东起雕塑园，西至海洋娱乐城，占地</span><span style=\"font-size: 11pt\">320</span><span style=\"font-size: 11pt\">亩，总建筑面积达</span><span style=\"font-size: 11pt\">14</span><span style=\"font-size: 11pt\">万平方米，计划总投资</span><span style=\"font-size: 11pt\">2</span><span style=\"font-size: 11pt\">亿美元。除将改扩建现有的青岛海豚表演馆外，另将兴建目前国内最大的海洋极地馆、海洋科技馆、海洋娱乐大道、渔人码头等项目</span></p>\r\n<p>&nbsp;</p>', '2012-05-29 22:08:23', 'admin', '4');
INSERT INTO `news` VALUES ('23', '青岛中山公园', '景点介绍', '<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">\r\n<p>中山公园与汇泉广场一路之隔，是青岛最大的综合性公园。公园三面环山，南向大海，天然造就了这处风景佳地。园内林木繁茂，枝叶葳蕤，是青岛市区植被景观最有特色的风景区。公园东傍太平山，北接青岛动物园，山南麓的青岛植物园内，近百种林木与公园的四时花木连为一体，树海茫茫，郁郁葱葱，游览其中，给人以清新悦目、欣欣向荣的感觉。公园一年一度的夏季灯会和深秋菊展，是最受游人欢迎的活动。</p>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">门票：免费</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">开放时间：全天</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">建议游玩时间： 1小时左右</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">花费： 免费</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">地址： 山东省青岛市市南区汇泉角东部</div>\r\n</div>', '2012-05-29 22:09:59', 'admin', '1');
INSERT INTO `news` VALUES ('24', '青岛海云海上乐园', '景点介绍', '<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">门票:20元/人</div>\r\n<div style=\"line-height: 11pt; margin: 0cm 0cm 10pt\">景点信息:</div>\r\n<div style=\"line-height: 18pt; margin: auto 0cm; background: white\"><span style=\"color: #333333\">娱乐场所青岛海云海上乐园是由青岛海云旅游有限公司投资兴建的大型海上乐园。位于青岛经济技术开发区唐岛湾滨海公园，唐岛湾滨海公园地处青岛开发区行政商务中心区，拥有10平方公里的海域和10公里的海岸线，公园东西纵横4.5公里，里面到处小桥流水、花开朵朵，让人在大海旁边体会海滨公园江南水乡式的时尚休闲。公园以&ldquo;航海、运河、爱情、运动&rdquo;为主题，把文化、时尚和体验相互融合，有码头休闲娱乐村、航海广场、市民广场、运河广场、滨海伊甸园、滨海运动休闲娱乐中心、生态休闲公园等主题游览区，并建有唐岛海战纪念浮雕。唐岛湾海质洁净、碧波荡漾、四季皆宜旅游。无风时，如同镜面，极具水上运动优势。漫天飞舞的海鸥，更使这里的风光绚丽多姿。怡人的风景、优美的环境、新鲜的空气、适中的温度、便捷的交通，为渴望回归自然的人们创造和提供了良好的周末休闲度假好去处。</span></div>', '2012-05-29 22:10:32', 'admin', '1');
INSERT INTO `news` VALUES ('25', '青岛海军博物馆', '景点介绍', '<p style=\"line-height: 18pt; margin: auto 0cm; background: white\" class=\"text-p\"><span style=\"color: #333333\"><font size=\"3\"><font face=\"宋体\">门票<span lang=\"EN-US\">:</span>旺季<span lang=\"EN-US\">60</span>元<span lang=\"EN-US\">/</span>人<span lang=\"EN-US\">,</span>淡季<span lang=\"EN-US\">40</span>元<span lang=\"EN-US\">/</span>人<span lang=\"EN-US\"><o:p></o:p></span></font></font></span></p>\r\n<p style=\"line-height: 18pt; margin: auto 0cm; background: white\" class=\"text-p\"><span style=\"color: #333333\"><font size=\"3\"><font face=\"宋体\">博物馆信息<span lang=\"EN-US\"><o:p></o:p></span></font></font></span></p>\r\n<p style=\"line-height: 18pt; margin: auto 0cm; background: white\" class=\"text-p\"><span style=\"color: #333333\"><font size=\"3\"><font face=\"宋体\">海军博物馆由海军创建。是中国唯一的一座全面反映中国海军发展的军事博物馆。座落于青岛市莱阳路八号，东邻鲁迅公园、西接小青岛公园、南濒一望无际的大海、北与栈桥隔水相望。占地四万多平方米。<span lang=\"EN-US\">1989</span>年<span lang=\"EN-US\">10</span>月<span lang=\"EN-US\">1</span>日正式对外开放。<span lang=\"EN-US\"><o:p></o:p></span></font></font></span></p>\r\n<p style=\"line-height: 18pt; margin: auto 0cm; background: white\" class=\"text-p\"><span style=\"color: #333333\"><font size=\"3\"><font face=\"宋体\">博物馆设室内展厅、武器装备展区和海上展舰区。室内展厅主要展出古代、近代中国海军、人民海军历史资料图片<span lang=\"EN-US\">1200</span>余幅，人民海军各时期的制式服装、衔章、徽章、装具和人民海军与世界各国友好交往中接受的<span lang=\"EN-US\">230</span>多件珍贵礼品等；武器装备展区和海上展舰区主要陈列退出海军战斗序列的中小型舰艇、飞机、导弹、舰（岸）炮、水中兵器、观通设备、水陆坦克等。其中重要展品有：敬爱的周总理检阅驻青岛海军舰艇部队时乘坐过的鱼雷快艇、军委主席邓小平检阅过的<span lang=\"EN-US\">&ldquo;</span>巨浪一号<span lang=\"EN-US\">&rdquo;</span>潜地导弹、海军首任司令员肖劲光大将乘坐过的飞机和红旗轿车、独闯国民党舰艇巢穴的炮艇<span lang=\"EN-US\">&ldquo;</span>解放<span lang=\"EN-US\">&rdquo;</span>号、海军第一代水上飞机；海上展舰区设在小青岛港区，展出了人民海军第一代驱逐舰<span lang=\"EN-US\">&ldquo;</span>鞍山<span lang=\"EN-US\">&rdquo;</span>号，我国<span lang=\"EN-US\">01</span>型舰舰导弹护卫舰<span lang=\"EN-US\">&ldquo;</span>成都<span lang=\"EN-US\">&rdquo;</span>号和首次公开对外展出的<span lang=\"EN-US\">33</span>型常规潜艇<span lang=\"EN-US\">&ldquo;</span>长城<span lang=\"EN-US\">&rdquo;</span>号。<span lang=\"EN-US\"><o:p></o:p></span></font></font></span></p>\r\n<p style=\"line-height: 18pt; margin: auto 0cm; background: white\" class=\"text-p\"><span style=\"color: #333333\"><font size=\"3\"><font face=\"宋体\">海军博物馆是增强全民海洋意识，进行爱国主义教育的好课堂。先后被青岛市、山东省定为爱国主义教育基地，并入选国家教委和共青团中央在全国确定的<span lang=\"EN-US\">100</span>个爱国主义教育基地之一。通过参观，人们将会看到人民海军在中国共产党的领导下，在艰苦创业、在战斗中成长、在曲折中前进，不断发展壮大的光辉历程<span lang=\"EN-US\"><o:p></o:p></span></font></font></span></p>', '2012-05-29 22:11:01', 'admin', '0');
INSERT INTO `news` VALUES ('26', '青岛春秋国际旅行社', '旅行社', '<p>青岛春秋国际旅行社很好的旅行社</p>\r\n<p>地址：东海西路566#，联系电话0532-89563214</p>', '2012-05-29 22:12:20', 'admin', '2');
INSERT INTO `news` VALUES ('27', '青岛京苑128商务酒店', '酒店信息', '<div style=\"line-height: 13.5pt; margin: 0cm 0cm 7.5pt; layout-grid-mode: both\"><span style=\"color: #333333; font-size: 12pt\">地址:青岛市市南区江西路28号 </span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">简介:</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">青岛京苑</span><span style=\"color: #333333; font-size: 12pt\">128</span><span style=\"color: #333333; font-size: 12pt\">商务酒店位于青岛市市南区江西路</span><span style=\"color: #333333; font-size: 12pt\">28</span><span style=\"color: #333333; font-size: 12pt\">号，坐落在繁华的东部城区。毗邻音乐广场、五四广场、湛山寺等著名风景区，</span><span style=\"color: #333333; font-size: 12pt\">&ldquo;</span><span style=\"color: #333333; font-size: 12pt\">红瓦绿树、碧海篮天、海鸥翱翔</span><span style=\"color: #333333; font-size: 12pt\">&rdquo;</span><span style=\"color: #333333; font-size: 12pt\">的胜景一览无遗。青岛京苑</span><span style=\"color: #333333; font-size: 12pt\">128</span><span style=\"color: #333333; font-size: 12pt\">商务酒店距高档购物中心海信巴黎春天仅需步行</span><span style=\"color: #333333; font-size: 12pt\">5</span><span style=\"color: #333333; font-size: 12pt\">分钟，而距</span><span style=\"color: #333333; font-size: 12pt\">CBD</span><span style=\"color: #333333; font-size: 12pt\">中心香港中路仅需车程</span><span style=\"color: #333333; font-size: 12pt\">5</span><span style=\"color: #333333; font-size: 12pt\">分钟，佳世客、家乐福、阳光百货、麦凯乐等著名商厦位于其中，台东商业步行街也仅需车程</span><span style=\"color: #333333; font-size: 12pt\">10</span><span style=\"color: #333333; font-size: 12pt\">分钟，是客人来青商旅、观光、购物的理想首选。周围有十余条公交线路。我店优质的服务，简约时尚的设计风格是繁忙的商务客人及休闲旅游度假客人温馨舒适的理想家园。</span><span style=\"color: #333333; font-size: 12pt\"> <br />\r\n</span><span style=\"color: #333333; font-size: 12pt\">青岛京苑</span><span style=\"color: #333333; font-size: 12pt\">128</span><span style=\"color: #333333; font-size: 12pt\">商务酒店是一家极具特色的经济型酒店，内置温馨的家庭房、复式房、标准房、大床房、商务房等各种类房型共</span><span style=\"color: #333333; font-size: 12pt\">43</span><span style=\"color: #333333; font-size: 12pt\">间。客房内提供免费光纤上网、</span><span style=\"color: #333333; font-size: 12pt\">24</span><span style=\"color: #333333; font-size: 12pt\">小时热水淋浴、空调、电视、电话、高档席梦思床具及配套家具。酒店内外的设计风格时尚、别致令人耳目一新，过目难忘，设施齐全舒适，打造</span><span style=\"color: #333333; font-size: 12pt\">&ldquo;</span><span style=\"color: #333333; font-size: 12pt\">干净、温馨、优雅</span><span style=\"color: #333333; font-size: 12pt\">&rdquo;</span><span style=\"color: #333333; font-size: 12pt\">的住宿环境。</span></div>\r\n<div style=\"margin: auto auto 0pt\">&nbsp;</div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">房型</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">宽带</span><span style=\"color: #333333; font-size: 12pt\"> <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"color: #333333; font-size: 12pt\">床型</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">均价</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">大床房</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">免费</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">大</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 168</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">温馨家庭房</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">免费</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">双</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 218</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">豪华复式房</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">免费</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">双</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 238</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">标准间</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">免费</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">双</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;168</span></div>\r\n<div style=\"margin: auto auto 0pt\"><span style=\"color: #333333; font-size: 12pt\">特价房</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">免费</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: #333333; font-size: 12pt\">双</span><span style=\"color: #333333; font-size: 12pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 128</span></div>', '2012-05-29 22:14:11', 'admin', '4');
INSERT INTO `news` VALUES ('28', '青岛圣地亚哥大酒店', '酒店信息', '<div><strong>青岛圣地亚哥大酒店</strong></div>\r\n<div><strong>简介：</strong><span style=\"font-size: 9pt\">青岛圣地亚哥大酒店是一家涉外三星级酒店，座落于青岛著名的旅游观光区，是岛城海岸线上的一处点睛极品。</span><span style=\"font-size: 9pt\">居可观海览盛景、食尽珍肴配美酒、乐有阿密长相伴、浴如出水芙蓉娇。浪漫与简约的天堂，经典与激情的圣地</span><span style=\"font-size: 9pt\">!</span><span style=\"font-size: 9pt\">圣地亚哥大酒店以最优质的服务欢迎您的到来</span><span style=\"font-size: 9pt\">! </span><span style=\"font-size: 9pt\">青岛圣地亚哥大酒店是一座集客房、餐饮、娱乐为一体的涉外三星级酒店，是一座外形独特、环境幽雅的欧式建筑，拥有各类客房、中餐厅及多种娱乐设施。酒店座落于青岛著名的旅游观光区莱阳路，是岛城海岸线上的一处点睛极品</span><span style=\"font-size: 9pt\">! </span><span style=\"font-size: 9pt\">居可观海览盛景、食尽珍肴配美酒、乐有阿密长相伴、浴如出水芙蓉娇。浪漫与简约的天堂，经典与激情的圣地</span><span style=\"font-size: 9pt\">!</span><span style=\"font-size: 9pt\">圣地亚哥大酒店以最优质的服务欢迎您的到来</span><span style=\"font-size: 9pt\">! </span><span style=\"font-size: 9pt\">酒店开业时间</span><span style=\"font-size: 9pt\">2000</span><span style=\"font-size: 9pt\">年</span><span style=\"font-size: 9pt\">7</span><span style=\"font-size: 9pt\">月，新近局部装修时间</span><span style=\"font-size: 9pt\">2005</span><span style=\"font-size: 9pt\">年</span><span style=\"font-size: 9pt\">12</span><span style=\"font-size: 9pt\">月。</span></div>\r\n<div><strong><span style=\"font-size: 9pt\">经济商务大床房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">无窗</span><span style=\"font-size: 9pt\"> <strong>235 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">经济商务双床房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">部分有窗</span><span style=\"font-size: 9pt\">&nbsp;<strong>235 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">背海标准双床房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">无窗</span><span style=\"font-size: 9pt\">&nbsp;&nbsp; <strong>295 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">侧海标准双床房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">&nbsp;&nbsp; <strong>325 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">豪华海景标准间</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">&nbsp;<strong>355 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">豪华小套房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">&nbsp;<strong>500 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div><strong><span style=\"font-size: 9pt\">豪华大套房</span></strong><span style=\"font-size: 9pt\">含二份早餐</span><span style=\"font-size: 9pt\">&nbsp;<strong>775 </strong></span><strong><span style=\"font-size: 9pt\">元</span></strong></div>\r\n<div style=\"text-align: left; line-height: 12.25pt\" align=\"left\"><strong><span style=\"color: black\">青岛圣地亚哥大酒店客房介绍：</span></strong></div>\r\n<div><span style=\"color: black; font-size: 9pt\"><br />\r\n</span><span style=\"color: black; font-size: 9pt\">共1.2万平方米，香港装饰公司设计装修，具备豪华海景标准间、普通标准间、夫妻间共58套，大型宴会厅、贵宾厅1000平方，可以接待各种大型会议、宴会、团队入住就餐，另有豪华气派的夜总会、桑拿浴供宾客休闲娱乐</span></div>', '2012-05-29 22:15:06', 'admin', '1');
INSERT INTO `pmember` VALUES ('1', '2', '刘三', 'm', '2012-06-06', '青海', '西宁', '13555555555', 'liusan@yahoo.cn', '1222df', 'gddddd', '北京路');
INSERT INTO `prep` VALUES ('1', '青岛圣地亚哥大酒店', '2', '2012-07-14', '3', '刘三', '13999999999', '2012-06-17 13:49:58', 'liusan');
INSERT INTO `sale` VALUES ('20', '青岛圣地亚哥大酒店', '/upload_file/sale/1338301091489.jpg', '青岛市市南区太平角三路2号甲（香港西路22号）', '456321', '13888888888', '小鱼山公园，栈桥等', '<p><span style=\"font-family: 宋体; color: #333333; font-size: 9pt; mso-bidi-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-font-kerning: 0pt\">如家快捷酒店（青岛太平角店）位于青岛商务和旅游的中心地带，毗邻八大关风景区、第三海水浴场，周边还有浮山湾奥运比赛场馆、五四广场、香港中路商业街、中山公园、海军博<span lang=\"EN-US\">...</span></span></p>', '2012-05-29 22:18:11');
INSERT INTO `system` VALUES ('1', '旅游网站', '旅游网站', '旅游网站', '旅游网站', '旅游网站', 'open', '旅游网站', 'admin', '旅游网站', '旅游网站');
