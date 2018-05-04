# Host: localhost  (Version 5.5.5-10.1.29-MariaDB)
# Date: 2018-05-04 11:47:08
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "t_admin_info"
#

DROP TABLE IF EXISTS `t_admin_info`;
CREATE TABLE `t_admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `phonenum` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `type` tinyint(1) DEFAULT '0' COMMENT '管理员类型（0：普通管理员；1：超级管理员）',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

#
# Data for table "t_admin_info"
#

INSERT INTO `t_admin_info` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','13912345678',NULL,1,'2018-01-26 09:33:58','2018-01-26 09:21:10',NULL),(2,'Amy','21232f297a57a5a743894a0e4a801fc3','13012345678',NULL,1,'2018-01-26 10:01:02','2018-01-25 17:36:17',NULL),(3,'Aileen','afdd0b4ad2ec172c586e2150770fbf9e','13712345678',NULL,0,'2018-01-26 10:02:35','2018-01-26 10:00:21',NULL),(4,'小胖','afdd0b4ad2ec172c586e2150770fbf9e','13612345678',NULL,0,'2018-01-26 10:32:03','2018-01-26 10:02:49',NULL),(5,'TerryQi','afdd0b4ad2ec172c586e2150770fbf9e','15840345959',NULL,1,NULL,NULL,NULL),(6,'myz','afdd0b4ad2ec172c586e2150770fbf9e','15640309805',NULL,1,'2018-03-17 15:18:16','2018-03-17 15:18:16',NULL);

#
# Structure for table "t_goods_case_info"
#

DROP TABLE IF EXISTS `t_goods_case_info`;
CREATE TABLE `t_goods_case_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品编号（t_goods_info->id）',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `sort` int(11) DEFAULT '0' COMMENT '排序（正常排序）',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='商品案例表';

#
# Data for table "t_goods_case_info"
#

INSERT INTO `t_goods_case_info` VALUES (1,18,'测试','http://dsyy.isart.me/o_1c6ut2eqa1lhq191db83j9s8gdr.jpg',1,'2018-01-31 15:34:15','2018-01-31 15:15:35',NULL),(2,18,'例子','http://dsyy.isart.me/o_1c6ut480m6l210uopb819vn1v0ur.jpg',0,'2018-01-31 15:34:12','2018-01-31 15:16:49',NULL),(4,27,'例子','http://dsyy.isart.me/o_1c6uqc3fn138o42i15ij15ftbvhr.jpg',1,'2018-02-22 21:39:43','2018-02-22 21:13:54',NULL),(5,27,'例子2','http://dsyy.isart.me/o_1c6ur5cvltb0ecmt8v19bmsgcr.jpg',0,'2018-02-22 21:40:02','2018-02-22 21:27:56',NULL),(6,27,'例子3','http://dsyy.isart.me/o_1c6ur9c971brq10dr1auu1ctdgksr.png',2,'2018-02-22 21:30:04','2018-02-22 21:30:04',NULL),(7,27,'测试','http://dsyy.isart.me/o_1c6ussvmefve41tdko4o128hr.jpg',3,'2018-02-22 21:58:11','2018-02-22 21:58:11',NULL),(8,16,'龙','http://dsyy.isart.me/o_1c6ut2eqa1lhq191db83j9s8gdr.jpg',1,'2018-02-22 22:01:10','2018-02-22 22:01:10',NULL),(9,16,'蝴蝶','http://dsyy.isart.me/o_1c6ut480m6l210uopb819vn1v0ur.jpg',2,'2018-02-22 22:02:07','2018-02-22 22:02:07',NULL),(10,16,'镂空雕花','http://dsyy.isart.me/o_1c6utk0ek1pjp10rj17kfotf14upr.jpg',2,'2018-02-22 22:10:48','2018-02-22 22:10:48',NULL),(11,16,'镂空圆盘','http://dsyy.isart.me/o_1c6utkmkh1s97vbn16io114i1n0q10.jpg',3,'2018-02-22 22:11:15','2018-02-22 22:11:15',NULL),(12,16,'哈哈哈','http://dsyy.isart.me/o_1ccie1ujr1rs5106h6uf1ome9n61h.png',4,'2018-05-03 15:29:09','2018-05-03 15:22:08','2018-05-03 15:29:09');

#
# Structure for table "t_goods_detail_info"
#

DROP TABLE IF EXISTS `t_goods_detail_info`;
CREATE TABLE `t_goods_detail_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品编号（t_goods_info->id）',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型（0:文字；1：图片；2：视频）',
  `sort` int(11) DEFAULT '0' COMMENT '排序（正常排序）',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品详情表';

#
# Data for table "t_goods_detail_info"
#

INSERT INTO `t_goods_detail_info` VALUES (1,1,'【辽宁·大孤山】大孤山：杏花季<br/><br/>每年四月中下旬，是辽宁省丹东市东港大孤山杏花绽放的季节。届时，各地游者纷至踏来，观赏杏花。为此，东港市文联主席王广舟先生赋词一首，以表情境。“花苞和蓓蕾的窃窃私语，也许事关一棵古树的永生之谜。行人与风试图窥视，不得而知。我在树下，听蜜蜂的汇报，感受春潮的气息。双眼一闭一睁，一瓣花开。”下面，就看看游者镜头下的杏花季。',0,1,'2018-05-04 11:04:48','2018-05-04 10:41:10',NULL),(2,1,'古堰画乡的美有许多种，<br/><br/>是层峦叠翠，是画乡烟雨，是碧水白帆；<br/><br/>记录古堰画乡的方式有许多种， <br/><br/>是摄影师用光影描绘的风景，<br/><br/>是画家笔下的时光，<br/><br/>是偶有所感的小记。',0,3,'2018-05-04 11:05:22','2018-05-04 11:03:08',NULL),(3,1,'http://dsyy.isart.me/o_1cckhlaafoc11q2jbdd1a1jlvf.jpg',1,0,'2018-05-04 11:41:03','2018-05-04 11:03:26','2018-05-04 11:41:03'),(4,1,'http://dsyy.isart.me/o_1cckhltmvq3b1rou1p6r1o4e1g9ak.mp4',2,2,'2018-05-04 11:04:51','2018-05-04 11:03:45',NULL),(5,1,'走进临江边远望，诗画江南，水色澄碧，白帆点点，等一场最美的日落。',0,4,'2018-05-04 11:38:58','2018-05-04 11:10:09','2018-05-04 11:38:58'),(6,1,'123',0,5,'2018-05-04 11:27:36','2018-05-04 11:10:25','2018-05-04 11:27:36'),(7,1,'123',0,6,'2018-05-04 11:28:56','2018-05-04 11:12:09','2018-05-04 11:28:56'),(8,1,'654',0,7,'2018-05-04 11:29:37','2018-05-04 11:12:22','2018-05-04 11:29:37'),(9,1,'4444',0,8,'2018-05-04 11:13:13','2018-05-04 11:13:09','2018-05-04 11:13:13'),(10,1,'6666',0,8,'2018-05-04 11:32:09','2018-05-04 11:13:18','2018-05-04 11:32:09'),(11,1,'http://dsyy.isart.me/o_1ccki7k131kei1mkm13021alrsq5f.jpg',1,9,'2018-05-04 11:40:33','2018-05-04 11:13:25','2018-05-04 11:40:33'),(12,1,'123',0,10,'2018-05-04 11:32:22','2018-05-04 11:14:26','2018-05-04 11:32:22'),(13,1,'321',0,11,'2018-05-04 11:32:51','2018-05-04 11:16:06','2018-05-04 11:32:51'),(14,1,'秀山丽水<br/><br/>诗画田园<br/><br/>养生福地<br/><br/>长寿之乡',0,3,'2018-05-04 11:44:04','2018-05-04 11:43:34',NULL);

#
# Structure for table "t_goods_explain_info"
#

DROP TABLE IF EXISTS `t_goods_explain_info`;
CREATE TABLE `t_goods_explain_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品编号（t_goods_info->id）',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型（0:文字；1：图片；2：视频）',
  `sort` int(11) DEFAULT '0' COMMENT '排序（正常排序）',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT COMMENT='开发和收费详情表';

#
# Data for table "t_goods_explain_info"
#

INSERT INTO `t_goods_explain_info` VALUES (19,3,'桑皮峪林下生态蛋，是截止目前，本平台考察确认的最优质的鸡蛋。<br/><br/>一、原生态林下散养<br/><br/>桑皮峪林下生态蛋的蛋鸡不是笼养，不是规模室内立体养殖，也不是圈养，而是林下散养。晚上，鸡在树叉上休息，而不是归于窝中。除有人工补食外，其他如同山野中的野鸡。鸡的品种也是本地传统品种。在当下，林下鸡平均三天半一蛋。运动与汲取自然食物的鸡，远比其他形式喂养的鸡要健康的多，因而为生态蛋的生成奠定了可靠的基础。',0,0,'2018-05-03 14:30:29','2018-05-03 14:30:29',NULL),(20,3,'二、中草药防疫<br/><br/>桑皮峪林下生态蛋的蛋鸡的防疫不是用市场上的防疫针剂与药剂，而是纯本地野生中草药材。该林下鸡的经营者长期从事中药草对家禽的防疫研究，长年坚持夏、秋季采集各种药材，如榆树叶、艾蒿、蒲公英等，晾干，储存。并根据其药理，按比例熬制取液，添加于自制的鸡饲料之中，定期、适时按不同配方喂食，有效预防了各种疫病。',0,2,'2018-05-03 14:33:55','2018-05-03 14:33:13',NULL),(21,3,'http://dsyy.isart.me/o_1ccib9u6j1p749jl26a1iteh3o11.jpg',1,1,'2018-05-03 14:33:55','2018-05-03 14:33:52',NULL),(22,3,'http://dsyy.isart.me/o_1ccibakod22k1qek1clu45bso16.mp4',2,3,'2018-05-03 14:34:16','2018-05-03 14:34:16',NULL),(23,3,'http://dsyy.isart.me/o_1ccibhjo9rlc15sj1f6517ek12e911.mp4',2,4,'2018-05-03 14:38:09','2018-05-03 14:38:04','2018-05-03 14:38:09'),(24,16,'康源饮品企业联合展示平台展示的蔬菜均为无公害蔬菜。<br/><br/>1.生产地标准。生产环境无公害。土地为新开垦地或独块地并三年内没有用过农药的土地。土地土质符合绿色有机蔬菜生产标准。<br/><br/>2.病虫害防治通过非农药方法解决。<br/><br/>3.浇灌水源为山泉水水源，无污染。<br/><br/>4.土壤自然渗水水源无污染。<br/><br/>5.经过专业部门检测，达到绿色有机蔬菜质量标准。<br/><br/>以上标准，环境部分由本平台聘请专家现场查验，质量由具有检测资质的专业权威部门检测，并出具检测报告。',0,1,'2018-05-03 15:19:24','2018-05-03 15:16:42',NULL),(25,16,'http://dsyy.isart.me/o_1ccidt76c1ll61ldb11c1bf71otl17.jpg',1,0,'2018-05-03 15:19:24','2018-05-03 15:19:21',NULL),(26,16,'http://dsyy.isart.me/o_1ccidtk5a1doo9c425qi32vah1c.mp4',2,2,'2018-05-03 15:19:35','2018-05-03 15:19:35',NULL);

#
# Structure for table "t_goods_info"
#

DROP TABLE IF EXISTS `t_goods_info`;
CREATE TABLE `t_goods_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品表';

#
# Data for table "t_goods_info"
#

INSERT INTO `t_goods_info` VALUES (1,'示例一',NULL,NULL,NULL,NULL);
