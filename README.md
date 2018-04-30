# 图文编辑模块
- config_graphic配置建议写在脚本中的最上面，我在后面的七牛模块中用到了config_graphic里的参数。
- 主要文件：
  - css: 根目录/public/css/graphicEditing/graphicEditing.css
  - js: 根目录/public/js/graphicEditing/graphicEditing.js
  - 视图文件：根目录/resources/admin/testing/edit.blade.php
 - 浏览地址：http://localhost/textarea/public/admin/index
 - 数据模型结构：
 
 # Structure for table "t_goods_info"  商品表
 
 DROP TABLE IF EXISTS `t_goods_info`;
 CREATE TABLE `t_goods_info` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
   `menu_id` int(11) DEFAULT NULL COMMENT '二级栏目编号（t_menu_info->id）',
   `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货号',
   `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
   `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
   `stock` int(11) DEFAULT '0' COMMENT '库存',
   `drimecost` int(11) DEFAULT NULL COMMENT '原价（备用）',
   `price` int(11) DEFAULT NULL COMMENT '售价',
   `unit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品单位',
   `hot` tinyint(1) DEFAULT '0' COMMENT '是否热销（0：否；1：是）',
   `f_attribute_id` int(11) DEFAULT NULL COMMENT '第一属性（品牌分类）编号（t_attribute_info->id）',
   `s_attribute_id` int(11) DEFAULT NULL COMMENT '第二属性（纯度）编号（t_attribute_info->id）',
   `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地域',
   `sort` int(11) DEFAULT '0' COMMENT '排序（越大越靠前）',
   `cas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'CAS',
   `seo_title` text COLLATE utf8mb4_unicode_ci COMMENT '网站SEO优化——标题',
   `seo_keywords` text COLLATE utf8mb4_unicode_ci COMMENT '网站SEO优化——关键字',
   `seo_description` text COLLATE utf8mb4_unicode_ci COMMENT '网站SEO优化——描述',
   `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
   `created_at` datetime DEFAULT NULL COMMENT '创建时间',
   `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品表';


# Structure for table "t_goods_detail_info" 商品详情表

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品详情表';


# Structure for table "t_admin_info" 用户表（用于后台登录）

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
