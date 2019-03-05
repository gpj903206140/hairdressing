/*
Navicat MySQL Data Transfer

Source Server         : 127.1.1.
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : hairdressing

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-01-08 16:01:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `nc_cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article`;
CREATE TABLE `nc_cms_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  `category` tinyint(4) NOT NULL DEFAULT '0' COMMENT '文章类别 1眼部整形  2鼻部整形 3面部精雕 4美肤中心 5胸部整形  6面部年轻化 7身材管理 8资讯中心 9关于我们 10 联系我们 11专家团队                               ',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '咨询手机号',
  `short_title` varchar(50) NOT NULL DEFAULT '' COMMENT '文章短标题',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文章来源链接',
  `author` varchar(50) NOT NULL COMMENT '文章作者',
  `summary` varchar(140) NOT NULL DEFAULT '' COMMENT '文章摘要',
  `content` text NOT NULL COMMENT '文章正文',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题图片',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关键字',
  `article_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '相关文章',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章点击量',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章排序0-255',
  `commend_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志0-未推荐，1-已推荐',
  `comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否允许评论1-允许，0-不允许',
  `comment_examine` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论是否需审核 1 需要   0 不需要',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0-草稿、1-待审核、2-已发布、-1-回收站',
  `attachment_path` text NOT NULL COMMENT '文章附件路径',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标签',
  `comment_count` int(10) unsigned NOT NULL COMMENT '文章评论数',
  `share_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分享数',
  `publisher_name` varchar(50) NOT NULL COMMENT '发布者用户名 ',
  `uid` int(10) unsigned NOT NULL COMMENT '发布者编号',
  `last_comment_time` int(11) DEFAULT '0' COMMENT '最新评论时间',
  `public_time` int(11) DEFAULT '0' COMMENT '发布时间',
  `create_time` int(11) DEFAULT '0' COMMENT '文章发布时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '文章修改时间',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=6553 COMMENT='CMS文章表';

-- ----------------------------
-- Records of nc_cms_article
-- ----------------------------
INSERT INTO `nc_cms_article` VALUES ('1', '芝麻双干', '1', '8', '', '芝麻双干', '中国网', 'https://item.btime.com/37fvsaag5hf88pr20q35rbj7pk7?from=haoz1t2w11', '悠语勿声', '《养生厨房》芝麻双干', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">菜名：芝麻双干</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t01269a827b1e83753d.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【今日看点】：说到同型半胱氨酸血症，专家指出补充叶酸、维生素b6和维生素b12可以帮助控制，而这三种维生素在我们今天推荐的这道食材里都含有。美中不足的是这个食材有一个缺点，但通过陈大厨的操作和搭配上的窍门可以起到一定的克服作用，还可以保证口感的细嫩，那这种食材到底是什么呢？特别的操作方法又能起到什么作用呢？接下来就走进金龙鱼1：1：1带来的《养生厨房》去了解一下。</p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">食材：白芝麻、鸡肝、豆干、干香菇、花椒<br data-filtered=\"filtered\" style=\"margin: 0px; padding: 0px;\"/>专家：李缨 宣武医院营养科主任 &nbsp;<br data-filtered=\"filtered\" style=\"margin: 0px; padding: 0px;\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 陈吉春 中国烹饪大师</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t015a0a64cda4df46ac.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【做法剧透】：<br data-filtered=\"filtered\" style=\"margin: 0px; padding: 0px;\"/>步骤1：鸡肝洗净切薄片，加入花椒水去腥，再加入葱姜、料酒和干香菇水增香腌制；</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t01990f4dc1d46a8c84.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t010abe92ff8d597034.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t01ecbddf6af92d99d6.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">步骤2：将鸡肝片和豆干先后蘸淀粉和鸡蛋液，再裹上白芝麻；</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t016a216db717642dfa.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t01290827c4844f36d9.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t01d0137ac417590d97.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">步骤3：锅中倒入适量油，六成油温时分别将“双干”下锅煎制，表面迅速起脆壳后翻面，两面煎至金黄时即可出锅，配上香菇和油菜摆盘。</p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t017e2431ac3f379ed3.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t01e4a78cd9afc6ac54.jpg?size=650x366\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p><br/></p>', 'upload/common/1534147126.jpg', '《养生厨房》芝麻双干', '', '30', '3', '0', '0', '1', '2', '', '《养生厨房》芝麻双干', '8', '0', 'wjxit', '59', '0', '1534147270', '1534147270', '1537404851');
INSERT INTO `nc_cms_article` VALUES ('2', '立秋养生', '1', '8', '', '立秋养生', '人民日报', 'https://item.btime.com/3000jr3ib6g8ke8c8odd7iah51n?from=haoz1t3w11', '默舞绝尘', '立秋作为秋天的开端，预示着炎热的夏天即将过去。秋季来临，是自然界由热转凉，再由凉转寒的过渡性季节。', '<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">立秋作为秋天的开端，预示着炎热的夏天即将过去。秋季来临，是自然界由热转凉，再由凉转寒的过渡性季节。</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t01c5c14688369f146b.webp?size=640x355\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">秋季应该怎样保养？</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">按摩哪几个穴位最调理脾胃？</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">怎么配合时节食补？</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t012fe9fae48e7893df.jpg?size=1920x1080\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p><br/></p>', 'upload/common/1534147323.jpg', '立秋养生', '', '13', '2', '0', '1', '0', '2', '', '立秋养生', '6', '0', 'wjxit', '59', '0', '1534147425', '1534147425', '1537404841');
INSERT INTO `nc_cms_article` VALUES ('3', '养生大道', '2', '8', '', '养生大道', '泰唔日报', 'https://item.btime.com/34vavhgdtqs84e901cdra8ujmgj?from=haoz1t4p1', '天不定', '《黄帝内经》中有这样一个观点：“阳化气，阴成形”。明代著名的医家张景岳认为： “阳动而散，故化气，阴静而凝，故成形。”因此，这里阳和阴是指物质的动与静、气化与凝聚、分化与合成等的相对运动，进而说明物质和能量的相互依存、相互转化的作用。看上去十分简单，仔细分析一下，却大有文章可做。', '<p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">《黄帝内经》中有这样一个观点：“阳化气，阴成形”。明代著名的医家张景岳认为： “阳动而散，故化气，阴静而凝，故成形。”因此，这里阳和阴是指物质的动与静、气化与凝聚、分化与合成等的相对运动，进而说明物质和能量的相互依存、相互转化的作用。看上去十分简单，仔细分析一下，却大有文章可做。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">自然界万物的产生、发展和变化，离不开阴阳的相互作用。阳主动而散，可促进万物的气化。阴主静而凝，可促进万物的成形。化气与成形，是物质的两种相反相成的运动形式。阳的特点是主动，阳有气化功能，可以促进脏腑发挥正常的功能。阳性热，所以可以化阴为气。阴的特点是主静，阴性凝敛，所以可以凝聚而成形。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">中医认为，生命就是生物体的气化运动，气化运动的本质就是化气与成形。人体的正气是无形的，属阳；精血津液为有形的，属阴。而阴精和阳气可以互相转化，简单来说，阳有化气的功能，可以把机体的物质化为无形的气，因此，阳以功能为主。而阴有成形的功能，可以把外界的物质合成自己的身体物质，因此，阴以形体为主。由精血津液转化为气，要依靠阳的气化作用；由气转化为精血津液，离不开阴的成形作用。从这个意义上来讲，自然界万物的生生化化，人体生理活动过程中的新陈代谢，都可以概括成“阳化气，阴成形”。生物体的能量与物质就是通过阴与阳的形式而互相转化，这个转化有些像爱因斯坦的方程式&gt;</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">以上是从生理的角度来解释，有些抽象难懂，下面结合日常生活以及常见疾病来分析阴与阳两个不同的功能。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">生活中我们知道，水蒸气如果遇到冷的东西，就会凝结成水珠。从无形的气到有形的水珠，这就是阴成形。它需要两个条件，一是有无形的气，二是必需有阴寒的媒体。比如，在煮水的锅内，水蒸气只能在锅盖上形成水珠，而由于锅底以及侧面太热，阳气太旺，就不能形成水珠。再看豆腐的制作。黄豆做成豆浆，煮沸后并不成形，要想变成豆腐，必须点卤。点卤就是加盐卤或石膏水。这两种东西都是阴寒之物，于是阴得以成形，豆腐于是做成了。所以说，豆浆是温性的，但豆腐是凉性的，因为加了盐卤或石膏。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">从人体病理来说，凡是成形的疾病，一定是阴性的。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">举例说明：</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有的疾病是局部成形的。如足内踝的肿胀或者水肿，那是因为肾经的阳气不足而寒气太盛，阳不能化水为气，结果阴寒凝结在肾经的下段,形成水肿。这种情况要用真武汤来扶助阳的气化功能。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">再如甲状腺肿，那是任脉的阴寒之气成形而致。任脉阳虚而阴聚于湿气最旺之处，形成了肿胀。对于这样的病，光是通经活络是不够的，一定要配合扶助任脉之阳气才是治本之道，一定要用到附子才行。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">比如肿瘤，这是明显的阴性病。首先，只有三阴体质的人才可能会生肿瘤，三阴体质的最明显特征是阳气的不足，对阴邪已经不能形成有效的抵抗。因此，邪气深入三阴，于体内阳气最虚弱之处成形，发为肿块。从生物学角度来说，细胞分化、凋亡相关于细胞执行功能，属于 “阳化气”，而细胞增殖相关于细胞数量、形体增长，属于“阴成形”，而发育异常、增殖失控、分化障碍以及凋亡阻遏就是肿瘤、白血病的基本生物学特征。由此可以推出，肿瘤的本质是阳气不足、阴寒积聚。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">大家可以观察一下，大凡是肿瘤病人，双手十个指甲的月牙一定不多，甚至于一个也没有。这就是标准的阳虚体质。所以，如果有医治疗肿瘤，只在白花蛇舌草、半支莲、半边莲、蚤休等大寒大凉的中药上下功夫，必是庸医，其结果必然是把病人治死。可以这样说，如果肿瘤病人的阳虚体质不能彻底改变，治好肿瘤是门都没有的。而改变阳虚体质必需扶阳,扶阳就要用温性的中药。我的经验是改变体质与攻逐病邪互相结合起来，分段进行，扶正以加强气化功能，等正气稍足，即可攻除邪气，攻邪必然伤正，所以不能一攻到底，象西医那样，拼命用放化疗祛邪，丝毫不考虑病人的阳气，是只认病邪，不顾活命的作法。所以说，肿瘤其定位就是“阴成形”，其临床表现虽然复杂多样，但源于命门火衰，本属寒痰凝结。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">肥胖症，身体某部位肥大，必然是这一部位的阳气不足以化气，于是形乃聚而成形。有句话说“十个胖子九个虚”，虚的就是阳气。如果用泻法来治疗肥胖，肯定是越泻越虚，越虚而越胖。肥胖症是要补阳的，阳气足了，自然能进行化气的功能，慢慢地就能把多出来的肥肉气化掉。附子理中丸是非常有效的治疗肥胖处方。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">红斑狼疮、肝硬化等病都可能引起腹部肿大，水肿，其原因是中焦阳虚，阳气不能化水，水湿泛滥成灾。也只有三阴体质的人才会生这种病。每见某著名医家经验，大量应用苦寒中药以泻水化瘀，不知泻邪的同时也在伤正，等正气伤的差不多了，病人的命也就结束了。或者，重用激素以救命，短时尚可，久则必然消耗阳气太过而病人猝死。多年来，眼见不少此类病人死于误治，十分痛惜。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">风湿或者类风湿性关节炎，还有痛风病，关节会肿大变形，这也是阳气在关节处不足以抵抗阴邪的缘故。所以治本之道在于扶阳以抑阴。不管病人表现出多少热象，也不能因此而大量应用寒凉中药。要知道，能患这样的病的人必然是阳虚体质，虚寒于内，阴得以在阳气最弱处聚而成形。临床每见有医重用生石膏治疗关节炎，不知即使是热邪所致，也要加扶阳药以化其阴形。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">眼球外突,一定是阳虚于眼睛；椎体增生，必然是阳不足于椎体；小儿脑水肿，那是阳气未能充盛于脑内；局部摔伤而肿胀，是阳气受损而聚阴成形。如此等等，皆当从“阳化气，阴成形”这个意思上去思考，这样才可能找到正确的治疗方法。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">总而言之，所有的“阴成形”的慢性病，多属阳虚体质而生。阳气不足于抵抗邪气（邪气为阴，正为属阳），外邪因而客入机体,耗伤阳气，久之阳益虚而阴愈盛，聚痰血等阴物而成形，发为大病。《黄帝内经》说：“积之始生，得寒乃生。”这句话说得非常清楚明白,治疗任何的“阴成形”的病，必需扶阳气以化阴寒。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">死人泡在水中会膨胀起来的，是因为没有了阳气，不能气化水湿,水湿因而聚积胀大。活人与死人的最大的区别即在于活人有阳气,而死人没有阳气，只是一堆死阴，死阴是没有生命的。所谓生命,其实就是阳气。有了阳气的支持，我们的躯体才是活的。我们的阴是足够的，从来也不会缺少，象我们的组织器官躯体就是阴，喝的水也是阴，吃的饭也是阴，缺少的是真阳。只有阳气旺了，才能气化水液而化为阳气。如果真有人阴虚了，那喝水不就是最好的滋阴补阴手段吗？问题是喝水根本就补不上阴，因为没有阳的气化，水进不了我们的生命。阳气才是生命的根本。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">所以说，“阳常不足而阴常有余”。扶阳的意义在于可以改变三阴体质，增加阳气，渐而阳气可以化去阴邪，单纯地祛除阴邪而不扶助阳气，往往初治有效，久则不但无效，反致缠绵不愈。其本质即在于阳气耗伤，病邪日进了。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我们到底该如何补阳？</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">其实很简单，任何灵丹妙药都不如用不着它，记住！补不如守！阳虚不是一下形成的，一般三十岁前火力旺盛可以适当吃点寒凉的东西（当然也得因人而异），三十岁后坚持不吃寒凉食物冬天注意保暖（尤其女人更要注意）女人本属阴，养成良好生活习惯就基本解决阳虚的问题了。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">自然就是最好的，最好的一定是简单的！</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">羽凡禾叶倡导正确养生理念！</p><p><br/></p>', 'upload/common/1534147645.jpeg', '养生大道', '', '23', '4', '0', '1', '1', '2', '', '养生大道', '5', '0', 'wjxit', '59', '0', '1534147746', '1534147746', '1537404861');
INSERT INTO `nc_cms_article` VALUES ('4', '微整形不是不好', '2', '5', '', '微整形不是不好', '新华网', 'https://item.btime.com/42khaak6bjb9cebsnt47jgvc2pm?from=haozcxw', '周小志', '现代社会的女性对自己要求越来越高。随着网络社交媒体的发展，人们越来越需要一张精致的上镜的小脸，增加自己的美丽曝光率。\n对于追求完美的女性来说，微整已经形成为弥补缺憾的最佳方式。来看看她们，你会觉得不是微整形不好，而是你见的太少！', '<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">现代社会的女性对自己要求越来越高。随着网络社交媒体的发展，人们越来越需要一张精致的上镜的小脸，增加自己的美丽曝光率。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于追求完美的女性来说，微整已经形成为弥补缺憾的最佳方式。来看看她们，你会觉得不是微整形不好，而是你见的太少！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t0143bc523a7aeaaf3c.gif?size=300x225\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有微整形变美，嫁入豪门的！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t01fe04e40d506ec6c4.webp?size=300x400\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有通过微整形不断让自己年轻的！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t0184ff117c921a687f.webp?size=640x640\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">有通过微整形，改善夫妻关系的！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t0184bb0fa4e4519866.webp?size=300x400\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">也有很多通过微整形逆袭白富美的！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t01650d4ae59a6c8e7f.webp?size=400x306\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">其实微整形改变的不只是容貌！</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">微整形的好处还有……</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">颜值提升，收入跟着提升</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t011593a84c897a95b2.webp?size=550x400\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">韩国的大部分女性都整容，整容后粉丝多了，人气旺了，收入高了。国内某明星明确对媒体表示，整容后出场费提高了。</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t01c8ff45c207785fd5.webp?size=550x325\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">延年益寿，平均增加寿命3-5岁，</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">因为微整后心情舒畅，对未来充满信心。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">增强免疫和抵抗能力</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">增强自信</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t01dbf5528959c54806.webp?size=450x300\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">所以说，不是微整形不好，而是你见得太少！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t0140ec831d3e25d898.webp?size=461x240\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t0167f7acae9ac157d0.webp?size=400x296\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t01a262b6d2c93ea4a5.webp?size=395x242\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"content-img\" style=\"margin-top: 1.8em; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t013228471fc30a357f.webp?size=320x203\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">女人保养是老样子，不保养是样子老；</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">保养是水嫩葡萄，不保养是干瘪葡萄干；</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">保养是彩色电视机，不保养是黑白电视剧；</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">保养是精装修豪华房，不保养是破旧土坯房，</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">差别就是这么大。</p><p><br/></p>', 'upload/common/1534553564.jpeg', '微整形', '', '0', '0', '0', '1', '0', '2', '', '微整形不是不好', '0', '0', 'wjxit', '59', '0', '1534553625', '1534553625', '1537404756');
INSERT INTO `nc_cms_article` VALUES ('5', '张笑天：下颌角整形效果怎么样脸能小吗', '2', '1', '', '张笑天：下颌角整形效果怎么样脸能小吗', '', '', '', '喜欢上一个人，永远都是先看脸。网友们对于看脸的这个事情有了这样的看法：我们常说的对一个人有没有感觉，这种感觉就是外在气息所带来的。一个长相我都不来电的人，就算跟我谈艺术、电影、音乐，谈旅行跟世界，我也还是没感觉，不来电........', '<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">喜欢上一个人，永远都是先看脸。网友们对于看脸的这个事情有了这样的看法：我们常说的对一个人有没有感觉，这种感觉就是外在气息所带来的。一个长相我都不来电的人，就算跟我谈艺术、电影、音乐，谈旅行跟世界，我也还是没感觉，不来电........</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t017832a60d3af1167c.jpg?size=367x160\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">决定着爱情发生的那一刻永远是外在美，承认吧，我们每个人都是看脸的生物，动物在择偶过程中都有本能的爱美感，更何况人类呢？</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">喜欢上一个人的那一刻，都是因为外在，有着傲人的身材、姣好的面容，白皙的肤质，都是外在颜值的重要部分，但是小编在这里要告诉大家的是，如果一张90分颜值的脸却搭配着一张国字大脸的轮廓，那颜值则会被大大扣分。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">为什么说脸型是如此的重要？因为初次见面时，首先映入眼帘的是面部的整体轮廓，其次才会再会去注意到五官的细节，如果脸型宽大就直接导致五官看起来扁平没有立体感，SO，<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">脸型宽大就很难给人留下美好的印象。</span></p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t013d7e9af18e3cdced.jpg?size=637x406\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">亚洲女性中比较少九头身，大多数的女性都是属于五官略扁平脸型骨骼宽大类型，到底怎么解决呢？张笑天院长称，只有通过<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">下颌骨整形才可以拯救方宽大的下颌角了</span>。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">下颌骨整形手术为什么就能轻而易举让U脸型变成V脸型呢？简单一点的说，手术在术前通过3D颌面全景片安全定位截骨线，在不碰及神经、血管的情况下标记出截取区域，通过<span style=\"margin: 0px; padding: 0px; font-weight: 700;\">专利弧形骨刀再从耳下一直到下巴均采用长曲线截除，保障了骨骼完整有弧度，侧面看没有二次棱角</span>，整个下巴线条更为流畅柔和自然。</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p2.ssl.cdn.btime.com/t01a5955131288f32b0.jpg?size=1920x1080\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">最后想说，想要高颜值，不仅要有精致五官，还要有小巧的脸型，这样搭配才能成为一个美人skr！</p><p><br/></p>', 'upload/common/1534554813.jpg', '张笑天：下颌角整形效果怎么样脸能小吗', '', '8', '1', '1', '0', '0', '2', '', '张笑天：下颌角整形效果怎么样脸能小吗', '0', '0', 'wjxit', '59', '0', '1534554854', '1534554854', '1537404829');
INSERT INTO `nc_cms_article` VALUES ('6', '牙套和整形哪个改善下巴后缩自然可靠？', '2', '11', '', '牙套和整形哪个改善下巴后缩自然可靠？', '', '', '', '面部轮廓整形中，很多朋友只是考虑下颌角是不是宽大，颧骨有没有高凸，从而忽视下巴的作用，谁能想到，下巴后缩已经成为很多朋友变美路上的“绊脚石”！', '<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">面部轮廓整形中，很多朋友只是考虑下颌角是不是宽大，颧骨有没有高凸，从而忽视下巴的作用，谁能想到，下巴后缩已经成为很多朋友变美路上的“绊脚石”！</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p3.ssl.cdn.btime.com/t01cf02caa85a52bb1a.png?size=613x283\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">下巴后缩严重影响气质，严重的话还会伴随着“凸嘴”的现象，那么对于后缩的下巴应该怎样治疗呢？不少朋友认为，牙齿太突兀，到牙科带个牙套，经过一两年的牙齿矫正是不是就可以解决了？</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">其实不是的，这句话也不能说全错，单纯牙齿突出导致视觉上下巴短，通过牙齿矫正手术就能得到一定效果，但是如果你的下巴后缩是“骨性”，那么，单纯箍牙可是没有用的哦~</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p4.ssl.cdn.btime.com/t0165748d23d7eaed3d.png?size=403x286\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">就比如下图的姑娘，她的下巴骨骼就是向后的形态，如果带牙套，起到的也只是矫正牙齿的效果，对于下巴是没有任何改善的。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">对于骨性的下巴后缩，只有通多正规医院进行矫正，如果只是单纯无下巴或者下巴后缩的情况，通过植入假体或者下巴前进术就能进行改善。</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p1.ssl.cdn.btime.com/t013c23020b778bfc10.png?size=409x273\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">假体垫下巴&amp;下颌前进术手术方法↑</p><p class=\"content-img\" style=\"margin-top: 40px; margin-bottom: 30px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"https://p0.ssl.cdn.btime.com/t014fb2955dafb9f8e6.png?size=541x133\" style=\"margin: 0px auto; padding: 0px; border: 0px; vertical-align: middle; display: block; max-width: 100%; word-wrap: break-word !important;\"/></p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">在文末小编还是要提醒各位姑娘们，不要盲目跟风整形，先正视自己的缺点，制定更加适合自己的整形项目，正确的变美，很重要哦！</p><p><br/></p>', 'upload/common/1534554938.jpeg', '牙套和整形哪个改善下巴后缩自然可靠？', '', '0', '0', '1', '0', '0', '2', '', '牙套和整形哪个改善下巴后缩自然可靠？', '0', '0', 'wjxit', '59', '0', '1534554977', '1534554977', '1537404770');
INSERT INTO `nc_cms_article` VALUES ('7', '暑期热衷整形学生不断增多70%是选择割双眼皮 选择机构是关键', '2', '11', '', '暑期热衷整形学生不断增多70%是选择割双眼皮 选择机构是关键', '', '', '', '　导读：暑假来临，学生整形风潮火热来袭，通过整形美容获得高颜值，被不少学生视为人生逆袭的捷径，而将近2个月的悠长假期，自然也就成了学生整形的黄金时段。但不少家长也为此发出疑问，想给孩子做最好的，但是去了很多家医院，都说能做双眼皮，到底该如何帮孩子选择呢?', '<p class=\"text\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　导读：暑假来临，学生整形风潮火热来袭，通过整形美容获得高颜值，被不少学生视为人生逆袭的捷径，而将近2个月的悠长假期，自然也就成了学生整形的黄金时段。但不少家长也为此发出疑问，想给孩子做最好的，但是去了很多家医院，都说能做双眼皮，到底该如何帮孩子选择呢?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　近几年的暑期，热衷做整形的学生不断增多，其中70%是选择割双眼皮。双眼皮手术虽然看似简单，但其中的复杂却不为大部分人所知，一个小小的失误都有可能造成无法估量的后果，尤其是对于第一次做整形的学生们来说，如何做选择，成为了一个“技术活儿”。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　1.学生做双眼皮对年龄是否有要求?如何判断一个人适不适合做双眼皮手术?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：这个对年龄是有要求的，我们一般要求年满18周岁。基本上来讲18周岁以后，人体的整体状态处于一个比较稳定的情况，这样的话比较适合接受双眼皮及其它的整形手术。如果说想做双眼皮的话，我们建议最好是让整形医生要面诊一下，这样我们进行一个眼睛方面的检查，以及整体身体状况的一个检查。首先我们要保证你的身体状况在一个健康良好的状态，能耐受这个手术;另外，我们要看你的眼部的基础条件适不适合做这个手术，以及你的心理状态能不能接受整形方面的手术。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　2.常见的双眼皮手术方法有哪些?分别适于什么样的人做?有没有针对于学生的一些手术方案?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：常见的双眼皮手术方法主要有两大类：一个是埋线法、一种是切开法;还有一种压线法现在目前做得越来越少的。我们常规做的就是埋线法和切开法两种方法，一般的话切开法适合所有的人群，别管你的眼睛的条件是什么样的，基础条件好或者是差，适合所有的人。埋线法就对眼睛的要求比较高，要求眼睛基础条件比较好，比如说没有明显的松弛，没有明显的臃肿，没有上眼下垂，这样的眼睛比较适合埋线法的重睑术。学生的话一般是处于一个身体发育刚完善的阶段，另外她还没有步入社会，一般我们对学生的话，以一个健康的引导为主，第一的话我们可以做双眼皮，然后如果是做双眼皮我们建议以自然为主，另外一个我们是主张创伤小、恢复快的术式。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　3.割双眼皮怎样做到疤痕最小化?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：首先来讲我们一定要选择一个正规的医院，我们这个无菌操作是非常关键的，第二的话我们要有良好的身体状态，比如说你现在正在感冒发烧身体不舒服是肯定不适合的，还有我们女孩子做眼睛要避开生理期，术后我们要有一个正确的一个良好的恢复环境，以及一个良好的心理状态来等待它的恢复。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　4.割双眼皮后多久效果能达到最佳?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：做完双眼皮的话的一般即刻就能看到一个比较好的一个大概的形态，当然还有一些肿胀，术后四十八小时内是最明显的肿胀，所以我们这个期间是多冰敷，一般一周左右切口就完全长好了，但是一个月左右的时间它还处于一个肿胀的一个时期，完全恢复自然需要三到六个月的时间。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　5.双眼皮失败是个很受关注的点，但怎样的双眼皮才算失败?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：我们看到一个求美者，然后她的一个眼睛没有给我们带来美感，反而让人觉得很不舒服，或者是说明显的这个大小眼，明显的特别夸张的那种感觉，或者说瘢痕特别明显，给人带来一个不愉悦的感觉，我们就觉得双眼皮是没有成功。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　6.双眼皮失败修复有没有“最佳时机”?修复的关键点是什么?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：双眼皮修复的话，我们一般分为两个时期：一个是急性修复期，一般在术后的两周左右的时间是一个急性修复期;第二个修复期是我们切口组织愈合的三到六个月，满三到六个月以后呢也处于一个比较好的恢复状态，这个期间我们建议最好是六个月以后再进行一个双眼皮的修复。首先来讲我们做重睑修复的话，我们要看你的基础情况，因为第一次手术的话我们要了解第一次手术的一个术式，哪些组织有去除、哪些组织有保留，所以对医生的要求会反而是非常高的，所以一定要选一个正规的医院，选择有经验的手术医生这是非常关键的。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　7.对于即将要整形的学生们一些建议提醒?</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　刘月丽医生：第一：我们建议这些学生一定要到正规的医院进行整形的一些手术;第二：一定要找有资质的医生、有经验丰富的医生;第三：不要追求太夸张、另类的一些美感。最后建议广大的学生一定要擦亮双眼，不要掉入整形的一些陷阱，以免造成身心的伤害。</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　专家提醒：</p><p class=\"text\" style=\"margin-top: 1.8em; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, 宋体; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">　　无论是割双眼皮,还是做其他方面的整容项目,务必要到有资质的正规医疗美容机构,寻找临床经验丰富的整形医生主刀。不要轻易被促销打折等花哨的街头广告蒙蔽双眼,掉进不良商家的“陷阱”,让学生们陷入整形失败的深渊,导致身心受到严重的创伤,造成不可逆转的悲剧。</p><p><br/></p>', 'upload/common/1534555060.jpg', '暑期热衷整形学生不断增多70%是选择割双眼皮 选择机构是关键', '', '2', '0', '1', '0', '0', '2', '', '暑期热衷整形学生不断增多70%是选择割双眼皮 选择机构是关键', '0', '0', 'wjxit', '59', '0', '1534555120', '1534555120', '1537404782');
INSERT INTO `nc_cms_article` VALUES ('8', '公司介绍', '2', '9', '', '公司介绍', '', '', '', '杭州姿博生物科技有限公司是一家集医疗与美容为一体的高端整形美容机构。定位于高端国际先进的医疗美容医院品牌，引进国际化高端标准医疗体系，不断探索新的塑美技术，以打造国人美丽和健康为使命，提升国人颜值，铸就女性品质生活为愿景，力求以专业的整形技术、优质的服务水平为求美者量身定制属于她', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; line-height: 1.6; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">杭州姿博生物科技有限公司是一家集医疗与美容为一体的高端整形美容机构。定位于高端国际先进的医疗美容医院品牌，引进国际化高端标准医疗体系，不断探索新的塑美技术，以打造国人美丽和健康为使命，提升国人颜值，铸就女性品质生活为愿景，力求以专业的整形技术、优质的服务水平为求美者量身定制属于她们的美丽。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-indent: 2em; line-height: 1.6; text-align: justify; color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">为我们的消费者创造健康美丽，为我们的客户创造高业绩，我们将一起以此为企业使命，共同铸造辉煌、打造财富裂变。</p><p><br/></p>', 'upload/common/1534555205.jpg', '杭州姿博生物科技有限公司是一家集医疗与美容为一体的高端整形美容机构。定位于高端国际先进的医疗美容医院品牌，引进国际化高端标准医疗体系，不断探索新的塑美技术，以打造国人美丽和健康为使命，提升国人颜值，铸就女性品质生活为愿景，力求以专业的整形技术、优质的服务水平为求美者量身定制属于她们的美丽。 为我们的消费者创造健康美丽，为我们的客户创造高业绩，我们将一起以此为企业使命，共同铸造辉煌、打造财富裂变。', '', '0', '0', '1', '0', '0', '2', '', '公司介绍', '0', '0', 'wjxit', '59', '0', '1534555222', '1534555222', '1537404792');
INSERT INTO `nc_cms_article` VALUES ('9', '联系我们', '2', '10', '', '联系我们', '', '', '', '杭州姿博生物科技有限公司是一家集医疗与美容为一体的高端整形美容机构。定位于高端国际先进的医疗美容医院品牌，引进国际化高端标准医疗体系，不断探索新的塑美技术，以打造国人美丽和健康为使命，提升国人颜值，铸就女性品质生活为愿景，力求以专业的整形技术、优质的服务水平为求美者量身定制属于她', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;; font-size: 14px; text-align: justify; text-indent: 28px; background-color: rgb(255, 255, 255);\">杭州姿博生物科技有限公司是一家集医疗与美容为一体的高端整形美容机构。定位于高端国际先进的医疗美容医院品牌，引进国际化高端标准医疗体系，不断探索新的塑美技术，以打造国人美丽和健康为使命，提升国人颜值，铸就女性品质生活为愿景，力求以专业的整形技术、优质的服务水平为求美者量身定制属于她</span></p><p><br/></p><p>如有需要请联系我们 18356985214</p>', 'upload/common/1534559568.jpeg', '联系我们', '', '0', '0', '1', '1', '0', '2', '', '联系我们', '0', '0', 'wjxit', '59', '0', '1534559623', '1534559623', '1537404804');
INSERT INTO `nc_cms_article` VALUES ('10', '白汇文', '2', '11', '18358249109', '白汇文', '', '', '', '白慧文 特邀专家 姿博会首席技术专家 极微创眼术医师导师 眼部年轻化权威专家 面部提升术资深专家 白慧文医师已经从医20余年，10余年眼部整形临床资历，曾应邀赴日、韩、欧参加国际眼部整形、面部年轻化学术及技术交流。 她是医学技术和艺术灵感完美演绎的指尖舞者，她的技术运用让众多爱美', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">白慧文 特邀专家 姿博会首席技术专家 极微创眼术医师导师 眼部年轻化权威专家 面部提升术资深专家 白慧文医师已经从医20余年，10余年眼部整形临床资历，曾应邀赴日、韩、欧参加国际眼部整形、面部年轻化学术及技术交流。 她是医学技术和艺术灵感完美演绎的指尖舞者，她的技术运用让众多爱美女性成功蜕变，被誉为中国整形界的达芬奇。 擅长项目：眼部年轻化、面部平滑。</span></p><p><br/></p><p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">白慧文 特邀专家 姿博会首席技术专家 极微创眼术医师导师 眼部年轻化权威专家 面部提升术资深专家 白慧文医师已经从医20余年，10余年眼部整形临床资历，曾应邀赴日、韩、欧参加国际眼部整形、面部年轻化学术及技术交流。 她是医学技术和艺术灵感完美演绎的指尖舞者，她的技术运用让众多爱美女性成功蜕变，被誉为中国整形界的达芬奇。 擅长项目：眼部年轻化、面部平滑。</span></p>', 'upload/common/1534568647.jpg', '', '', '3', '0', '1', '0', '0', '2', '', '白汇文', '0', '0', 'wjxit', '59', '0', '1534568715', '1534568715', '1537404817');

-- ----------------------------
-- Table structure for `nc_cms_article_class`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article_class`;
CREATE TABLE `nc_cms_article_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号 ',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='cms文章分类表';

-- ----------------------------
-- Records of nc_cms_article_class
-- ----------------------------
INSERT INTO `nc_cms_article_class` VALUES ('1', '0', '资讯中心', '0');
INSERT INTO `nc_cms_article_class` VALUES ('2', '0', '生活妙招', '0');
INSERT INTO `nc_cms_article_class` VALUES ('3', '1', '国际', '0');

-- ----------------------------
-- Table structure for `nc_cms_article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_article_comment`;
CREATE TABLE `nc_cms_article_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户',
  `article_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论的文章ID',
  `nick_name` varchar(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `zan_num` int(11) NOT NULL DEFAULT '0' COMMENT '评论点赞',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 评论  1 收藏',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论是否显示 0 否  1 是',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='cms文章分类表';

-- ----------------------------
-- Records of nc_cms_article_comment
-- ----------------------------
INSERT INTO `nc_cms_article_comment` VALUES ('33', '23', '1', '我是测试', '有一种旅行，不为跋涉千里的向往，只为漫无目的的闲逛，不为人山人海的名胜，只为怡然自乐的街景。或走，或停，原则就是看心情。', '1', '0', '0', '1534406408');
INSERT INTO `nc_cms_article_comment` VALUES ('41', '23', '1', '我是测试', '少年的时光就是晃，用大把时间彷徨，只用几个瞬间来成长。', '1', '0', '0', '1534407912');
INSERT INTO `nc_cms_article_comment` VALUES ('42', '23', '1', '我是测试', '我们之所以活得累，往往是因为放不下面子来做人。虚荣心无限膨胀，蒙蔽了真实的自我，分不清什么是需要和欲望，把别人的眼光当做行为的最高标准，把别人的恭维当做人生的最高奖赏，完全迷失在世俗的迷宫中。把面子拿下来揣在衣兜里，素面朝天，你会发现原来生活真的没那么沉重。', '0', '0', '0', '1534407925');
INSERT INTO `nc_cms_article_comment` VALUES ('43', '23', '1', '我是测试', '陈奕迅《淘汰》：我说了所有的谎，你全都相信。简单的，我爱你，你却老不信。', '0', '0', '0', '1534407943');
INSERT INTO `nc_cms_article_comment` VALUES ('44', '23', '1', '我是测试', '富兰克林：我未曾见过一个早起、勤奋、谨慎、诚实的人抱怨命运不好；良好的品格，优良的习惯，坚强的意志，是不会被假设所谓的命运击败的。', '1', '0', '0', '1534407957');
INSERT INTO `nc_cms_article_comment` VALUES ('45', '23', '1', '我是测试', '', '0', '1', '0', '1534412103');
INSERT INTO `nc_cms_article_comment` VALUES ('46', '23', '1', '我是测试', '岁月总喜欢把时光渲染出一副美好的样子。明明已经过去了足够的远，却还是想着，那些，大概就是这世上最美好的一切。那时我们一起笑过，那时我们一起闹过。那时的我们疯疯癫癫，那时的我们爱笑爱闹。', '0', '0', '0', '1534412137');
INSERT INTO `nc_cms_article_comment` VALUES ('47', '8', '1', '煤老板', '既不回头 何必不忘 若是无缘 何须誓言 今日种种 似水无痕 明夕何夕 君已陌', '1', '0', '0', '1534468065');
INSERT INTO `nc_cms_article_comment` VALUES ('48', '8', '1', '煤老板', '相爱，不如相知，与其执着痴念，不如化为祝福。不要让爱你的人，被你的爱所磨蚀，反过来，以你的爱，让他得到力量展翅高飞，假若真的有缘，就算分隔两地，心仍会在一起真正爱一个人，必定以他的幸福当作是自己的幸福，若然有人能比你给予他更大的幸福，你就把他送到那里去！  ', '1', '0', '0', '1534468087');
INSERT INTO `nc_cms_article_comment` VALUES ('49', '8', '3', '煤老板', '我真的很喜欢你，无论你做什么，我还是那么喜欢你。哪怕，你真的决定要离开我，不再喜欢我，我明白……也许我跟你在一起，会成为你的负担……以前我不愿意放手是因为我觉得你太脆弱，需要被人保护。可是我没想到，你长大了。离开我，居然能够变的这么好。我知道，你是找到了正确的方向，找到了，自己要走的路。我现在能为你做的就是离开你。无论怎么样我会支持你，祝福你的……大不了，我……我们不再相见了。', '0', '0', '1', '1534468123');
INSERT INTO `nc_cms_article_comment` VALUES ('50', '23', '3', '我是测试', '人生是一条没有回程的单行线，上帝不会给你一张返程的票。 2、对待生活中的每一天若都像生命中的最后一天去对待，人生定会更精彩。 3、活在昨天的人失去过去，活在明天的人失去未来，活在今天的人拥有过去和未来。 4、如果我们都去做自己能力做得到的事，...', '0', '0', '0', '1536280699');
INSERT INTO `nc_cms_article_comment` VALUES ('51', '23', '3', '我是测试', '人若软弱就是自己最大的敌人；人若勇敢就是自己最好的朋友。', '0', '0', '0', '1536280780');
INSERT INTO `nc_cms_article_comment` VALUES ('52', '23', '2', '我是测试', '奋斗令我们的生活充满生机，责任让我们的生命充满意义，常遇困境说明你在进步，常有压力，说明你有目标。', '0', '0', '1', '1536281177');
INSERT INTO `nc_cms_article_comment` VALUES ('53', '23', '2', '我是测试', '读书有三到：谓心到，眼到，口到', '0', '0', '1', '1536281269');
INSERT INTO `nc_cms_article_comment` VALUES ('54', '23', '2', '我是测试', '读书是易事，思索是难事，但两者缺一，便全无用处', '0', '0', '1', '1536281322');
INSERT INTO `nc_cms_article_comment` VALUES ('57', '23', '2', '我是测试', '读书使人充实，思考使人深邃，交谈使人清醒。', '0', '0', '0', '1536281552');
INSERT INTO `nc_cms_article_comment` VALUES ('58', '23', '2', '我是测试', '素食则气不浊；独宿则神不浊；默坐则心不浊；读书则口不浊。', '0', '0', '0', '1536281697');
INSERT INTO `nc_cms_article_comment` VALUES ('59', '23', '2', '我是测试', '当一个人只有很有限的时间供自己支配时，他自然会花在最需要的地方。不管我怎么忙、怎么累、怎么不舒服，我总要抽出一些时间和我的儿子一块玩，一块读书。——甘地夫人', '0', '0', '1', '1536281766');
INSERT INTO `nc_cms_article_comment` VALUES ('60', '11', '3', '小小', '只有在我们看惯那种种人生险境，领略过各种绮丽风景后，才会明白一个最简单的道理：远方的景色走近了，就是自己现在的生活。现在的生活放远了，就是别人眼中的风景。', '0', '0', '1', '1536297311');
INSERT INTO `nc_cms_article_comment` VALUES ('61', '11', '3', '小小', '很多人不快乐的原因，是回忆太长，得到太少，未来太远，做得太少。', '0', '0', '0', '1536297347');

-- ----------------------------
-- Table structure for `nc_cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_comment`;
CREATE TABLE `nc_cms_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `text` varchar(2000) NOT NULL COMMENT '评论内容',
  `uid` int(10) unsigned NOT NULL COMMENT '评论人编号',
  `quote_comment_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论引用',
  `up` int(10) unsigned NOT NULL COMMENT '点赞数量',
  `comment_time` int(10) unsigned NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='CMS评论表';

-- ----------------------------
-- Records of nc_cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `nc_cms_comment_zan`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_comment_zan`;
CREATE TABLE `nc_cms_comment_zan` (
  `zan_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `comment_id` int(11) NOT NULL DEFAULT '0' COMMENT '评论ID',
  `nick_name` varchar(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`zan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='cms文章分类表';

-- ----------------------------
-- Records of nc_cms_comment_zan
-- ----------------------------
INSERT INTO `nc_cms_comment_zan` VALUES ('51', '23', '30', '我是测试', '1534405351');
INSERT INTO `nc_cms_comment_zan` VALUES ('52', '23', '39', '我是测试', '1534407691');
INSERT INTO `nc_cms_comment_zan` VALUES ('53', '23', '40', '我是测试', '1534407845');
INSERT INTO `nc_cms_comment_zan` VALUES ('57', '23', '44', '我是测试', '1534411929');
INSERT INTO `nc_cms_comment_zan` VALUES ('61', '23', '41', '我是测试', '1534412313');
INSERT INTO `nc_cms_comment_zan` VALUES ('66', '23', '33', '我是测试', '1534469330');
INSERT INTO `nc_cms_comment_zan` VALUES ('71', '23', '47', '我是测试', '1534469619');
INSERT INTO `nc_cms_comment_zan` VALUES ('72', '23', '48', '我是测试', '1534469650');

-- ----------------------------
-- Table structure for `nc_cms_topic`
-- ----------------------------
DROP TABLE IF EXISTS `nc_cms_topic`;
CREATE TABLE `nc_cms_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专题编号',
  `instance_id` int(10) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `title` varchar(255) NOT NULL COMMENT '专题标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '专题封面',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '专题状态  0草稿  1发布',
  `content` text NOT NULL COMMENT '专题内容',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Records of nc_cms_topic
-- ----------------------------
INSERT INTO `nc_cms_topic` VALUES ('1', '0', '专题测试', 'upload/common/1534492670.jpg', '1', '<p>写点什么</p>', '1534492681', '0');

-- ----------------------------
-- Table structure for `ns_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account`;
CREATE TABLE `ns_account` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `account_profit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台的总营业额',
  `account_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台资金总余额',
  `account_return` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台利润总额',
  `account_deposit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '保证金总额',
  `account_order` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商城订单总额',
  `account_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商城提现总额',
  `account_shop` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺总余额',
  `account_shop_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺总提现',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商城资金统计';

-- ----------------------------
-- Records of ns_account
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_assistant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_assistant_records`;
CREATE TABLE `ns_account_assistant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招商员支付记录';

-- ----------------------------
-- Records of ns_account_assistant_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_order_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_order_records`;
CREATE TABLE `ns_account_order_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_order_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_period`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_period`;
CREATE TABLE `ns_account_period` (
  `period_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '账户ID',
  `period_year` int(10) NOT NULL COMMENT '账期年份',
  `period_month` int(10) NOT NULL COMMENT '账期月份',
  `account_profit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期总营业额',
  `account_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期总发生余额',
  `account_return` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期利润总额',
  `account_deposit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期保证金总额',
  `account_order` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期订单总额',
  `account_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺提现总额',
  `account_shop` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺总发生额',
  `account_shop_withdraw` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '账期店铺总提现额',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商城账期结算表';

-- ----------------------------
-- Records of ns_account_period
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_records`;
CREATE TABLE `ns_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `is_calculate` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否参与计算',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_return_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_return_records`;
CREATE TABLE `ns_account_return_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `return_type` int(11) NOT NULL DEFAULT '0' COMMENT '提成类型',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id',
  `is_display` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_calculate` int(11) NOT NULL DEFAULT '0' COMMENT '是否计算',
  `remark` varchar(255) NOT NULL DEFAULT '0' COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=910 COMMENT='平台的利润的记录';

-- ----------------------------
-- Records of ns_account_return_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_withdraw_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_withdraw_records`;
CREATE TABLE `ns_account_withdraw_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额账户记录';

-- ----------------------------
-- Records of ns_account_withdraw_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_account_withdraw_user_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_account_withdraw_user_records`;
CREATE TABLE `ns_account_withdraw_user_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial_no` varchar(50) NOT NULL DEFAULT '' COMMENT '流水号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '对应金额',
  `account_type` tinyint(1) NOT NULL COMMENT '账户类型',
  `type_alis_id` int(11) NOT NULL COMMENT '关联ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员提现记录表';

-- ----------------------------
-- Records of ns_account_withdraw_user_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ns_attribute`;
CREATE TABLE `ns_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性ID',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  `spec_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '关联规格',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `brand_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '关联品牌',
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品相关属性';

-- ----------------------------
-- Records of ns_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_attribute_value`;
CREATE TABLE `ns_attribute_value` (
  `attr_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性值ID',
  `attr_value_name` varchar(50) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_id` int(11) NOT NULL COMMENT '属性ID',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '属性对应相关数据',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '属性对应输入类型1.直接2.单选3.多选',
  `sort` int(11) NOT NULL DEFAULT '1999' COMMENT '排序号',
  `is_search` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  PRIMARY KEY (`attr_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='商品属性值';

-- ----------------------------
-- Records of ns_attribute_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ns_cart`;
CREATE TABLE `ns_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '买家id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品的skuid',
  `sku_name` varchar(200) NOT NULL DEFAULT '' COMMENT '商品的sku名称',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `num` smallint(5) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `bl_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT '组合套装ID',
  PRIMARY KEY (`cart_id`),
  KEY `member_id` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='购物车表';

-- ----------------------------
-- Records of ns_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_click_fabulous`
-- ----------------------------
DROP TABLE IF EXISTS `ns_click_fabulous`;
CREATE TABLE `ns_click_fabulous` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `create_time` int(11) DEFAULT '0' COMMENT '点赞时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '点赞状态 0 未点赞 1 点赞',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品点赞记录表';

-- ----------------------------
-- Records of ns_click_fabulous
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_combo_package_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `ns_combo_package_promotion`;
CREATE TABLE `ns_combo_package_promotion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `combo_package_name` varchar(100) NOT NULL DEFAULT '' COMMENT '组合套餐名称',
  `combo_package_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '组合套餐价格',
  `goods_id_array` varchar(255) NOT NULL COMMENT '参与组合套餐的商品集合',
  `is_shelves` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否上架（0:下架,1:上架）',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `original_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '原价,仅作参考商品原价所取为sku列表中最低价',
  `save_the_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '节省价,仅作参考不参与实际计算',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合套餐促销';

-- ----------------------------
-- Records of ns_combo_package_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_consult`
-- ----------------------------
DROP TABLE IF EXISTS `ns_consult`;
CREATE TABLE `ns_consult` (
  `consult_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询编号',
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品编号',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '咨询发布者会员编号(0：游客)',
  `member_name` varchar(100) NOT NULL DEFAULT '' COMMENT '会员名称',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺编号',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `ct_id` int(10) unsigned NOT NULL COMMENT '咨询类型',
  `consult_content` varchar(255) NOT NULL DEFAULT '' COMMENT '咨询内容',
  `consult_reply` varchar(255) NOT NULL DEFAULT '' COMMENT '咨询回复内容',
  `isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不匿名 1表示匿名',
  `consult_addtime` int(11) DEFAULT '0' COMMENT '咨询发布时间',
  `consult_reply_time` int(11) DEFAULT '0' COMMENT '咨询回复时间',
  PRIMARY KEY (`consult_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='咨询类型表';

-- ----------------------------
-- Records of ns_consult
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_consult_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_consult_type`;
CREATE TABLE `ns_consult_type` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询类型id',
  `ct_name` varchar(50) NOT NULL DEFAULT '' COMMENT '咨询类型名称',
  `ct_introduce` text NOT NULL COMMENT '咨询类型详细介绍',
  `ct_sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='咨询类型表';

-- ----------------------------
-- Records of ns_consult_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon`;
CREATE TABLE `ns_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `shop_id` int(11) NOT NULL COMMENT '店铺Id',
  `coupon_code` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券编码',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '领用人',
  `use_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券使用订单id',
  `create_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建订单id(优惠券只有是完成订单发放的优惠券时才有值)',
  `money` decimal(10,2) NOT NULL COMMENT '面额',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '优惠券状态 0未领用 1已领用（未使用） 2已使用 3已过期',
  `get_type` int(11) NOT NULL DEFAULT '0' COMMENT '获取方式1订单2.首页领取',
  `fetch_time` int(11) DEFAULT '0' COMMENT '领取时间',
  `use_time` int(11) DEFAULT '0' COMMENT '使用时间',
  `start_time` int(11) DEFAULT '0' COMMENT '有效期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '有效期结束时间',
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=148 COMMENT='优惠券表';

-- ----------------------------
-- Records of ns_coupon
-- ----------------------------
INSERT INTO `ns_coupon` VALUES ('1', '1', '0', '1533612952372', '0', '0', '0', '100.00', '3', '2', '1533720583', '1533894160', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('2', '1', '0', '1533612952206', '0', '0', '0', '100.00', '3', '2', '1533805141', '1534120938', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('3', '1', '0', '1533612952675', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('4', '1', '0', '1533612952670', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('5', '1', '0', '1533612952873', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('6', '1', '0', '1533612952622', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('7', '1', '0', '1533612952532', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('8', '1', '0', '1533612952752', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('9', '1', '0', '1533612952303', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('10', '1', '0', '1533612952724', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533612946', '1534908948');
INSERT INTO `ns_coupon` VALUES ('11', '2', '0', '1533613145945', '0', '0', '0', '100.00', '3', '2', '1533720594', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('12', '2', '0', '1533613145920', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('13', '2', '0', '1533613145542', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('14', '2', '0', '1533613145460', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('15', '2', '0', '1533613145861', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('16', '2', '0', '1533613145674', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('17', '2', '0', '1533613145301', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('18', '2', '0', '1533613145422', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('19', '2', '0', '1533613145566', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('20', '2', '0', '1533613145643', '0', '0', '0', '100.00', '3', '0', '0', '0', '1533613139', '1533785941');
INSERT INTO `ns_coupon` VALUES ('21', '3', '0', '1533804212352', '60', '8', '0', '150.00', '2', '2', '1543220863', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('22', '3', '0', '1533804212684', '60', '188', '0', '150.00', '3', '2', '1543220911', '0', '1531125797', '1536482599');
INSERT INTO `ns_coupon` VALUES ('23', '3', '0', '1533804212928', '93', '189', '0', '150.00', '3', '2', '1544505856', '0', '1531125797', '1536482599');
INSERT INTO `ns_coupon` VALUES ('24', '3', '0', '1533804212373', '94', '0', '0', '150.00', '1', '2', '1544506246', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('25', '3', '0', '1533804212370', '0', '0', '0', '150.00', '0', '2', '1543220802', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('26', '3', '0', '1533804212223', '0', '0', '0', '150.00', '0', '2', '1534752904', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('27', '3', '0', '1533804212507', '0', '0', '0', '150.00', '0', '2', '1534752960', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('28', '3', '0', '1533804212575', '0', '0', '0', '150.00', '0', '2', '1534920428', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('29', '3', '0', '1533804212587', '0', '0', '0', '150.00', '0', '2', '1543218832', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('30', '3', '0', '1533804212190', '0', '0', '0', '150.00', '0', '2', '1543218906', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('31', '3', '0', '1533804212606', '0', '0', '0', '150.00', '0', '2', '1543218917', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('32', '3', '0', '1533804212469', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('33', '3', '0', '1533804212198', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('34', '3', '0', '1533804212781', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('35', '3', '0', '1533804212195', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('36', '3', '0', '1533804212917', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('37', '3', '0', '1533804212621', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('38', '3', '0', '1533804212857', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('39', '3', '0', '1533804212471', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('40', '3', '0', '1533804212557', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('41', '3', '0', '1533805283418', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('42', '3', '0', '1533805283733', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('43', '3', '0', '1533805283461', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('44', '3', '0', '1533805283906', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('45', '3', '0', '1533805283518', '0', '0', '0', '150.00', '0', '0', '0', '0', '1531125797', '1547023399');
INSERT INTO `ns_coupon` VALUES ('46', '4', '0', '1533806751251', '60', '6', '0', '120.00', '2', '2', '1543220914', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('47', '4', '0', '1533806751231', '60', '7', '0', '120.00', '2', '3', '1545726162', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('48', '4', '0', '1533806751683', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('49', '4', '0', '1533806751301', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('50', '4', '0', '1533806751416', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('51', '4', '0', '1533806751919', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('52', '4', '0', '1533806751378', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('53', '4', '0', '1533806751912', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('54', '4', '0', '1533806751135', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('55', '4', '0', '1533806751973', '0', '0', '0', '120.00', '0', '0', '0', '0', '1531128342', '1570613146');
INSERT INTO `ns_coupon` VALUES ('56', '5', '0', '1534726913131', '0', '183', '0', '100.00', '3', '2', '1534726939', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('57', '5', '0', '1534726913512', '0', '184', '0', '100.00', '3', '2', '1534726946', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('58', '5', '0', '1534726913197', '0', '185', '0', '100.00', '3', '2', '1534727774', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('59', '5', '0', '1534726913217', '0', '186', '0', '200.00', '3', '2', '1534730577', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('60', '5', '0', '1534726913803', '0', '0', '0', '200.00', '3', '2', '1534732808', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('61', '5', '0', '1534726913282', '0', '281', '0', '200.00', '3', '2', '1534732927', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('62', '5', '0', '1534726913945', '0', '191', '0', '200.00', '3', '2', '1534755285', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('63', '5', '0', '1534726913663', '0', '193', '0', '200.00', '3', '2', '1534755896', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('64', '5', '0', '1534726913147', '0', '293', '278', '200.00', '3', '1', '1535784333', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('65', '5', '0', '1534726913175', '0', '295', '282', '200.00', '3', '1', '1535951638', '0', '1534726899', '1539997301');
INSERT INTO `ns_coupon` VALUES ('66', '6', '0', '1535616944309', '0', '0', '265', '500.00', '3', '1', '1535699785', '1535707058', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('67', '6', '0', '1535616944967', '0', '0', '267', '500.00', '3', '1', '1535707662', '1535707778', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('68', '6', '0', '1535616944744', '0', '0', '268', '500.00', '3', '1', '1535767373', '1535767490', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('69', '6', '0', '1535616944528', '0', '0', '270', '500.00', '3', '1', '1535769124', '1535769729', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('70', '6', '0', '1535616944842', '0', '0', '271', '500.00', '3', '1', '1535770152', '1535770204', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('71', '6', '0', '1535616944884', '0', '0', '272', '500.00', '3', '1', '1535770416', '1535770950', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('72', '6', '0', '1535616944863', '0', '0', '273', '500.00', '3', '1', '1535770696', '1535771180', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('73', '6', '0', '1535616944201', '0', '0', '274', '500.00', '3', '1', '1535770885', '1535771281', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('74', '6', '0', '1535616944595', '0', '0', '275', '500.00', '3', '1', '1535778424', '1535778758', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('75', '6', '0', '1535616944279', '0', '0', '276', '500.00', '3', '1', '1535778608', '1538118296', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('76', '6', '0', '1535616944911', '0', '0', '349', '500.00', '3', '1', '1538295085', '1538295507', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('77', '6', '0', '1535616944115', '0', '0', '350', '500.00', '3', '1', '1538295480', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('78', '6', '0', '1535616944875', '0', '0', '353', '500.00', '3', '1', '1538299129', '1538299205', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('79', '6', '0', '1535616944123', '0', '0', '354', '500.00', '3', '1', '1538976699', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('80', '6', '0', '1535616944193', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('81', '6', '0', '1535616944132', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('82', '6', '0', '1535616944764', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('83', '6', '0', '1535616944944', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('84', '6', '0', '1535616944237', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('85', '6', '0', '1535616944557', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('86', '6', '0', '1535616944678', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('87', '6', '0', '1535616944160', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('88', '6', '0', '1535616944349', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('89', '6', '0', '1535616944362', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('90', '6', '0', '1535616944591', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('91', '6', '0', '1535616944964', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('92', '6', '0', '1535616944278', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('93', '6', '0', '1535616944741', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('94', '6', '0', '1535616944920', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('95', '6', '0', '1535616944773', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('96', '6', '0', '1535616944220', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('97', '6', '0', '1535616944668', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('98', '6', '0', '1535616944746', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('99', '6', '0', '1535616944116', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('100', '6', '0', '1535616944813', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('101', '6', '0', '1535616944447', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('102', '6', '0', '1535616944487', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('103', '6', '0', '1535616944852', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('104', '6', '0', '1535616944473', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('105', '6', '0', '1535616944828', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('106', '6', '0', '1535616944115', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('107', '6', '0', '1535616945844', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('108', '6', '0', '1535616945729', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('109', '6', '0', '1535616945340', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('110', '6', '0', '1535616945936', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('111', '6', '0', '1535616945174', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('112', '6', '0', '1535616945886', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('113', '6', '0', '1535616945621', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('114', '6', '0', '1535616945256', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('115', '6', '0', '1535616945259', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('116', '6', '0', '1535616945694', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('117', '6', '0', '1535616945198', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('118', '6', '0', '1535616945268', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('119', '6', '0', '1535616945294', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('120', '6', '0', '1535616945348', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('121', '6', '0', '1535616945711', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('122', '6', '0', '1535616945945', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('123', '6', '0', '1535616945807', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('124', '6', '0', '1535616945486', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('125', '6', '0', '1535616945688', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('126', '6', '0', '1535616945926', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('127', '6', '0', '1535616945991', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('128', '6', '0', '1535616945414', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('129', '6', '0', '1535616945879', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('130', '6', '0', '1535616945182', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('131', '6', '0', '1535616945486', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('132', '6', '0', '1535616945770', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('133', '6', '0', '1535616945699', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('134', '6', '0', '1535616945910', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('135', '6', '0', '1535616945264', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('136', '6', '0', '1535616945861', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('137', '6', '0', '1535616945900', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('138', '6', '0', '1535616945413', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('139', '6', '0', '1535616945853', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('140', '6', '0', '1535616945437', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('141', '6', '0', '1535616945898', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('142', '6', '0', '1535616945887', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('143', '6', '0', '1535616945559', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('144', '6', '0', '1535616945580', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('145', '6', '0', '1535616945554', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('146', '6', '0', '1535616945526', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('147', '6', '0', '1535616945797', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('148', '6', '0', '1535616945152', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('149', '6', '0', '1535616945173', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('150', '6', '0', '1535616945635', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('151', '6', '0', '1535616945762', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('152', '6', '0', '1535616945236', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('153', '6', '0', '1535616945506', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('154', '6', '0', '1535616945298', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('155', '6', '0', '1535616945983', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('156', '6', '0', '1535616945582', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('157', '6', '0', '1535616945969', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('158', '6', '0', '1535616945821', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('159', '6', '0', '1535616945654', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('160', '6', '0', '1535616945496', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('161', '6', '0', '1535616945534', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('162', '6', '0', '1535616945397', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('163', '6', '0', '1535616945301', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('164', '6', '0', '1535616945617', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('165', '6', '0', '1535616945396', '0', '0', '257', '500.00', '3', '1', '1535698046', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('166', '7', '0', '1536220599403', '0', '0', '283', '100.00', '3', '1', '1536290034', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('167', '7', '0', '1536220599550', '0', '0', '284', '100.00', '3', '1', '1536290157', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('168', '7', '0', '1536220599204', '0', '0', '285', '100.00', '3', '1', '1536290595', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('169', '7', '0', '1536220599460', '0', '0', '286', '100.00', '3', '1', '1536291147', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('170', '7', '0', '1536220599742', '0', '0', '287', '100.00', '3', '1', '1536307885', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('171', '7', '0', '1536220599970', '0', '0', '288', '100.00', '3', '1', '1536544176', '1537173352', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('172', '7', '0', '1536220599265', '0', '0', '290', '100.00', '3', '1', '1536547656', '1536547714', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('173', '7', '0', '1536220599286', '0', '0', '299', '100.00', '3', '1', '1537516883', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('174', '7', '0', '1536220599434', '0', '352', '0', '100.00', '3', '2', '1538297942', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('175', '7', '0', '1536220599139', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('176', '7', '0', '1536220599776', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('177', '7', '0', '1536220599234', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('178', '7', '0', '1536220599229', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('179', '7', '0', '1536220599694', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('180', '7', '0', '1536220599486', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('181', '7', '0', '1536220599945', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('182', '7', '0', '1536220599432', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('183', '7', '0', '1536220599387', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('184', '7', '0', '1536220599368', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('185', '7', '0', '1536220599835', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('186', '7', '0', '1536220599903', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('187', '7', '0', '1536220599967', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('188', '7', '0', '1536220599950', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('189', '7', '0', '1536220599542', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('190', '7', '0', '1536220599172', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('191', '7', '0', '1536220599183', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('192', '7', '0', '1536220599537', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('193', '7', '0', '1536220599262', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('194', '7', '0', '1536220599765', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('195', '7', '0', '1536220599676', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('196', '7', '0', '1536220599546', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('197', '7', '0', '1536220599632', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('198', '7', '0', '1536220599322', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('199', '7', '0', '1536220599195', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('200', '7', '0', '1536220599172', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('201', '7', '0', '1536220599959', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('202', '7', '0', '1536220599481', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('203', '7', '0', '1536220599490', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('204', '7', '0', '1536220599830', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('205', '7', '0', '1536220599993', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('206', '7', '0', '1536220599659', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('207', '7', '0', '1536220599200', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('208', '7', '0', '1536220599827', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('209', '7', '0', '1536220599928', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('210', '7', '0', '1536220599718', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('211', '7', '0', '1536220599186', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('212', '7', '0', '1536220599690', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('213', '7', '0', '1536220599514', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('214', '7', '0', '1536220599962', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('215', '7', '0', '1536220599865', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('216', '7', '0', '1536220599503', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('217', '7', '0', '1536220599834', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('218', '7', '0', '1536220599364', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('219', '7', '0', '1536220599431', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('220', '7', '0', '1536220599793', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('221', '7', '0', '1536220599750', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('222', '7', '0', '1536220599119', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('223', '7', '0', '1536220599189', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('224', '7', '0', '1536220599755', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('225', '7', '0', '1536220599455', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('226', '7', '0', '1536220599976', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('227', '7', '0', '1536220599113', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('228', '7', '0', '1536220599917', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('229', '7', '0', '1536220599590', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('230', '7', '0', '1536220599574', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('231', '7', '0', '1536220599618', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('232', '7', '0', '1536220599473', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('233', '7', '0', '1536220599458', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('234', '7', '0', '1536220599553', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('235', '7', '0', '1536220599788', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('236', '7', '0', '1536220599839', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('237', '7', '0', '1536220599701', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('238', '7', '0', '1536220599329', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('239', '7', '0', '1536220599151', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('240', '7', '0', '1536220599322', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('241', '7', '0', '1536220599621', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('242', '7', '0', '1536220599651', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('243', '7', '0', '1536220599456', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('244', '7', '0', '1536220599338', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('245', '7', '0', '1536220599860', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('246', '7', '0', '1536220599937', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('247', '7', '0', '1536220599343', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('248', '7', '0', '1536220599971', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('249', '7', '0', '1536220599722', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('250', '7', '0', '1536220599158', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('251', '7', '0', '1536220599673', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('252', '7', '0', '1536220599969', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('253', '7', '0', '1536220599846', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('254', '7', '0', '1536220599399', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('255', '7', '0', '1536220599973', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('256', '7', '0', '1536220599417', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('257', '7', '0', '1536220599538', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('258', '7', '0', '1536220599631', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('259', '7', '0', '1536220599327', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('260', '7', '0', '1536220599732', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('261', '7', '0', '1536220599436', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('262', '7', '0', '1536220599271', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('263', '7', '0', '1536220599930', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('264', '7', '0', '1536220599218', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('265', '7', '0', '1536220599735', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('266', '6', '0', '1538290765801', '0', '348', '0', '500.00', '3', '2', '1538290781', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('267', '6', '0', '1538290765756', '0', '0', '0', '500.00', '3', '2', '1538294958', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('268', '6', '0', '1538290765650', '0', '0', '0', '500.00', '3', '2', '1538295052', '1538295111', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('269', '6', '0', '1538290765806', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('270', '6', '0', '1538290765692', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('271', '6', '0', '1538290765703', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('272', '6', '0', '1538290765255', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('273', '6', '0', '1538290765290', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('274', '6', '0', '1538290765977', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('275', '6', '0', '1538290765940', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('276', '6', '0', '1538290765352', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('277', '6', '0', '1538290765884', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('278', '6', '0', '1538290765406', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('279', '6', '0', '1538290765328', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('280', '6', '0', '1538290765357', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('281', '6', '0', '1538290765337', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('282', '6', '0', '1538290765840', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('283', '6', '0', '1538290765839', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('284', '6', '0', '1538290765130', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('285', '6', '0', '1538290765399', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('286', '6', '0', '1538290765141', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('287', '6', '0', '1538290765446', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('288', '6', '0', '1538290765868', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('289', '6', '0', '1538290765599', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('290', '6', '0', '1538290765169', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('291', '6', '0', '1538290765231', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('292', '6', '0', '1538290765652', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('293', '6', '0', '1538290765908', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('294', '6', '0', '1538290765563', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('295', '6', '0', '1538290765834', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('296', '6', '0', '1538290765678', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('297', '6', '0', '1538290765854', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('298', '6', '0', '1538290765519', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('299', '6', '0', '1538290765672', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('300', '6', '0', '1538290765805', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('301', '6', '0', '1538290765409', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('302', '6', '0', '1538290765562', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('303', '6', '0', '1538290765383', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('304', '6', '0', '1538290765452', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('305', '6', '0', '1538290765880', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('306', '6', '0', '1538290765778', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('307', '6', '0', '1538290765161', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('308', '6', '0', '1538290765369', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('309', '6', '0', '1538290765460', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('310', '6', '0', '1538290765804', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('311', '6', '0', '1538290765646', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('312', '6', '0', '1538290765859', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('313', '6', '0', '1538290765454', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('314', '6', '0', '1538290765725', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('315', '6', '0', '1538290765255', '0', '0', '0', '500.00', '3', '0', '0', '0', '1535530519', '1540887323');
INSERT INTO `ns_coupon` VALUES ('316', '7', '0', '1538297928298', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('317', '7', '0', '1538297928639', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('318', '7', '0', '1538297928766', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('319', '7', '0', '1538297928501', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('320', '7', '0', '1538297928814', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('321', '7', '0', '1538297928266', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('322', '7', '0', '1538297928218', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('323', '7', '0', '1538297928222', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('324', '7', '0', '1538297928169', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');
INSERT INTO `ns_coupon` VALUES ('325', '7', '0', '1538297928406', '0', '0', '0', '100.00', '3', '0', '0', '0', '1536047768', '1540540573');

-- ----------------------------
-- Table structure for `ns_coupon_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon_goods`;
CREATE TABLE `ns_coupon_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='优惠券使用商品表';

-- ----------------------------
-- Records of ns_coupon_goods
-- ----------------------------
INSERT INTO `ns_coupon_goods` VALUES ('29', '7', '20');
INSERT INTO `ns_coupon_goods` VALUES ('30', '6', '27');

-- ----------------------------
-- Table structure for `ns_coupon_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_coupon_type`;
CREATE TABLE `ns_coupon_type` (
  `coupon_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券类型Id',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `coupon_name` varchar(50) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `money` decimal(10,2) NOT NULL COMMENT '发放面额',
  `count` int(11) NOT NULL COMMENT '发放数量',
  `max_fetch` int(11) NOT NULL DEFAULT '0' COMMENT '每人最大领取个数 0无限制',
  `at_least` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '满多少元使用 0代表无限制',
  `need_user_level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '领取人会员等级',
  `range_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '使用范围0部分产品使用 1全场产品使用',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许首页显示 0 不显示   1 显示',
  `is_bespoke` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否设置为预约送优惠卷 0 否   1 是',
  `start_time` int(11) DEFAULT '0' COMMENT '有效日期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '有效日期结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`coupon_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1365 COMMENT='优惠券类型表';

-- ----------------------------
-- Records of ns_coupon_type
-- ----------------------------
INSERT INTO `ns_coupon_type` VALUES ('3', '0', '满150元送50', '150.00', '25', '5', '15.00', '0', '1', '1', '0', '1531125797', '1547023399', '1533804212', '0');
INSERT INTO `ns_coupon_type` VALUES ('4', '0', '满20可用', '120.00', '10', '2', '20.00', '0', '1', '1', '0', '1531128342', '1570613146', '1533806750', '0');
INSERT INTO `ns_coupon_type` VALUES ('5', '0', '中秋团圆大放送', '200.00', '10', '5', '22.00', '0', '1', '0', '0', '1534726899', '1539997301', '1534726913', '0');
INSERT INTO `ns_coupon_type` VALUES ('6', '0', '得500元优惠券', '500.00', '150', '0', '0.00', '0', '0', '1', '1', '1535530519', '1540887323', '1535616944', '0');
INSERT INTO `ns_coupon_type` VALUES ('7', '0', '测试优惠卷', '100.00', '110', '20', '0.00', '0', '0', '1', '1', '1536047768', '1540540573', '1536220599', '0');

-- ----------------------------
-- Table structure for `ns_course`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course`;
CREATE TABLE `ns_course` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `teacher_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '机构老师id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `mechanism_id` int(11) NOT NULL DEFAULT '0' COMMENT '合作机构ID',
  `goods_type` int(11) NOT NULL DEFAULT '0' COMMENT '合作机构ID',
  `is_showprice` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示价格  0 不显示  1 显示',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `score` decimal(10,2) NOT NULL DEFAULT '10.00' COMMENT '评分数',
  `total_num` int(10) NOT NULL DEFAULT '0' COMMENT '总课数',
  `release_num` int(10) NOT NULL DEFAULT '0' COMMENT '已发布课程数量',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `tune_num` int(10) NOT NULL DEFAULT '0' COMMENT '收听人数',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `course_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '课程类型  0 线上课程   1 线下课程  2 产品课程',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `crowd` varchar(120) NOT NULL DEFAULT '' COMMENT '适合人群',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热门',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(11) DEFAULT '0',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `goods_video_address` varchar(455) DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `allow_delete` tinyint(1) DEFAULT '1' COMMENT '0 不允许删除  1 允许删除',
  PRIMARY KEY (`goods_id`),
  KEY `UK_ns_goods_brand_id` (`teacher_id`),
  KEY `UK_ns_goods_category_id` (`category_id`),
  KEY `UK_ns_goods_category_id_1` (`category_id_1`),
  KEY `UK_ns_goods_category_id_2` (`category_id_2`),
  KEY `UK_ns_goods_category_id_3` (`category_id_3`),
  KEY `UK_ns_goods_extend_category_id` (`extend_category_id`),
  KEY `UK_ns_goods_extend_category_id_1` (`extend_category_id_1`),
  KEY `UK_ns_goods_extend_category_id_2` (`extend_category_id_2`),
  KEY `UK_ns_goods_extend_category_id_3` (`extend_category_id_3`),
  KEY `UK_ns_goods_group_id_array` (`group_id_array`),
  KEY `UK_ns_goods_promotion_price` (`promotion_price`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16554 COMMENT='商品表';

-- ----------------------------
-- Records of ns_course
-- ----------------------------
INSERT INTO `ns_course` VALUES ('66', '国际联盟美发师顶尖强化班', '0', '28', '6', '28', '0', '45', '1,2,3', '0', '45', '1', '1', '100.00', '150.00', '150.00', '0', '8.00', '50', '3', '20', '42', '9', '0', '0', '2', '0', '331', '国际联盟美发师顶尖强化班关键词', '国际联盟美发师顶尖强化班课程促销语', '<p><img src=\"/upload/goods/20190103/499bb3088d10a2f0ec7cf21420a59940.jpg\"/></p>', 'upload/goods_qrcode/goods_qrcode_66.png', '所有人群', '0', '1', '0', '0', '0', '1', '0', '331', null, null, '32', '', '', '', '', '1545124219', '1545124219', '1546493343', 'http://122.228.251.156/vlive.qqvideo.tc.qq.com/AvRag8Cf6z44_DZYg6VSWlwP0r0N7QjpDzdQfNfmBYMw/g0201bwipd6.p201.1.mp4?vkey=665D05B676017AEADD3B40D4B7C0B15F0F36CCF1BCDA2CA8C4AF250089D4CF72422B3A1A6A07E995FA6987ADECFAC07AA413565122DBC13462183F35E9C6962F0EA84904ED24EFD077C8676677484A2DD99639D5C7BCAC264475772C1947C63A60CFED1D5FDBB3E4EE4C328DF2CB98EBC63E5D1B80F61414&amp;platform=other&amp;sdtfrom=&amp;fmt=shd&amp;level=0', '', '', '1');
INSERT INTO `ns_course` VALUES ('70', '3国际联盟美发师顶尖强化班-副本', '0', '13', '13', '0', '0', '0', '1,3', '0', '45', '1', '0', '100.00', '200.00', '200.00', '0', '4.00', '50', '1', '20', '9', '0', '0', '1', '0', '0', '332', '国际联盟美发师顶尖强化班关键词', '国际联盟美发师顶尖强化班课程促销语', '<p><img src=\"/hairdressing/upload/goods/20181218/81483053774087ae3ee270e67298d068.jpg\"/></p>', 'upload/course_qrcode/course_qrcode_70.png', '所有人群', '0', '1', '0', '0', '0', '1', '0', '332', null, null, '0', '', '', '', '', '1545360985', '1545360985', '1546484724', 'http://122.228.251.156/vlive.qqvideo.tc.qq.com/AvRag8Cf6z44_DZYg6VSWlwP0r0N7QjpDzdQfNfmBYMw/g0201bwipd6.p201.1.mp4?vkey=665D05B676017AEADD3B40D4B7C0B15F0F36CCF1BCDA2CA8C4AF250089D4CF72422B3A1A6A07E995FA6987ADECFAC07AA413565122DBC13462183F35E9C6962F0EA84904ED24EFD077C8676677484A2DD99639D5C7BCAC264475772C1947C63A60CFED1D5FDBB3E4EE4C328DF2CB98EBC63E5D1B80F61414&amp;platform=other&amp;sdtfrom=&amp;fmt=shd&amp;level=0', '', '', '1');
INSERT INTO `ns_course` VALUES ('71', '2国际联盟美发师顶尖强化班-副本-副本', '0', '11', '11', '0', '0', '0', '1,3', '0', '0', '1', '1', '100.00', '200.00', '200.00', '0', '6.00', '50', '1', '20', '21', '0', '1', '0', '0', '0', '333', '国际联盟美发师顶尖强化班关键词', '国际联盟美发师顶尖强化班课程促销语', '<p><img src=\"/hairdressing/upload/goods/20181218/81483053774087ae3ee270e67298d068.jpg\"/></p>', 'upload/course_qrcode/course_qrcode_71.png', '所有人群', '0', '1', '0', '0', '0', '1', '0', '333', null, null, '13', '', '', '', '', '1545360994', '1545360994', '1546673866', 'upload/goods_video/1546492152.mp4', '', '', '1');
INSERT INTO `ns_course` VALUES ('72', '1国际联盟美发师顶尖强化班-副本-副本-副本', '0', '11', '11', '0', '0', '45', '1', '0', '45', '1', '1', '100.00', '200.00', '200.00', '0', '8.00', '50', '0', '20', '38', '0', '1', '0', '0', '0', '334', '国际联盟美发师顶尖强化班关键词', '国际联盟美发师顶尖强化班课程促销语', '<p><img src=\"/hairdressing/upload/goods/20181218/81483053774087ae3ee270e67298d068.jpg\"/></p>', 'upload/course_qrcode/course_qrcode_72.png', '所有人群', '0', '1', '0', '0', '0', '1', '0', '334', null, null, '31', '', '', '', '', '1545361000', '1545361000', '1546672052', 'http://122.228.251.156/vlive.qqvideo.tc.qq.com/AvRag8Cf6z44_DZYg6VSWlwP0r0N7QjpDzdQfNfmBYMw/g0201bwipd6.p201.1.mp4?vkey=665D05B676017AEADD3B40D4B7C0B15F0F36CCF1BCDA2CA8C4AF250089D4CF72422B3A1A6A07E995FA6987ADECFAC07AA413565122DBC13462183F35E9C6962F0EA84904ED24EFD077C8676677484A2DD99639D5C7BCAC264475772C1947C63A60CFED1D5FDBB3E4EE4C328DF2CB98EBC63E5D1B80F61414&amp;platform=other&amp;sdtfrom=&amp;fmt=shd&amp;level=0', '', '', '1');

-- ----------------------------
-- Table structure for `ns_course_assess`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_assess`;
CREATE TABLE `ns_course_assess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '评价人编号',
  `member_name` varchar(120) NOT NULL DEFAULT '' COMMENT '评价人名称',
  `head_img` varchar(120) NOT NULL DEFAULT '' COMMENT '用户头像',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '课程名称',
  `goods_image` varchar(120) NOT NULL DEFAULT '' COMMENT '课程图片',
  `score` int(5) NOT NULL COMMENT '评分',
  `content` text NOT NULL COMMENT '评价内容',
  `explain_first` varchar(255) NOT NULL DEFAULT '' COMMENT '解释内容',
  `is_show` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 不显示  1 显示',
  `explain_type` tinyint(4) DEFAULT '0' COMMENT '1好评2中评3差评',
  `addtime` int(11) NOT NULL COMMENT '关注&收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=160 COMMENT='商品本店分类';

-- ----------------------------
-- Records of ns_course_assess
-- ----------------------------
INSERT INTO `ns_course_assess` VALUES ('74', '60', 'gygq', 'upload/avator/1546669830.jpg', '66', '国际联盟美发师顶尖强化班', 'upload/goods/20190103/df84a3982a2d4dd8bd786719f151d30b.jpg', '6', '要说点什么', '没什么好说的,你自我了吧', '1', '2', '1546673473');
INSERT INTO `ns_course_assess` VALUES ('75', '60', 'gygq', 'upload/avator/1546669830.jpg', '66', '国际联盟美发师顶尖强化班', 'upload/goods/20190103/df84a3982a2d4dd8bd786719f151d30b.jpg', '10', '能回我一下吗?\n', '', '0', '1', '1546673753');

-- ----------------------------
-- Table structure for `ns_course_catalogue`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_catalogue`;
CREATE TABLE `ns_course_catalogue` (
  `catalogue_id` int(11) NOT NULL AUTO_INCREMENT,
  `catalogue_name` varchar(50) NOT NULL DEFAULT '',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '合作机构',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `catalogue_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类图片',
  `video_url` varchar(255) NOT NULL DEFAULT '' COMMENT '视频路经',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`catalogue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_catalogue
-- ----------------------------
INSERT INTO `ns_course_catalogue` VALUES ('70', '第一款', '66', '0', '0', '1', '多点放射高层次', '0', 'upload/goods_category/1545383516.jpg', 'http://vali.cp31.ott.cibntv.net/youku/69758F008EB337147A3135A46/03000801005BF67B79674AA003E880C9F7BDC5-5E8D-4560-AE82-9ABD8107629A.mp4?sid=054598540348514858904_00_A541e02a534459c7afb038dde8fef1379&amp;sign=bb9c6bb537f2158b706ded5c48acc00d&amp;ctype=50&am', '', '');
INSERT INTO `ns_course_catalogue` VALUES ('71', '第二款', '66', '0', '0', '1', '反曲线不对称', '0', 'upload/goods_category/1546668947.jpg', 'upload/goods_video/1545383567.mp4', '', '');
INSERT INTO `ns_course_catalogue` VALUES ('72', '第三款', '66', '0', '0', '1', '组合动感层次', '0', 'upload/goods_category/1546668973.jpg', 'upload/goods_video/1545383637.mp4', '', '');
INSERT INTO `ns_course_catalogue` VALUES ('73', '第一课程:论发型的重要性', '70', '0', '0', '1', '论发型的重要性', '0', 'upload/goods_category/1546483679.jpg', 'upload/goods_video/1546483689.mp4', '', '');
INSERT INTO `ns_course_catalogue` VALUES ('74', '第一课:如何判断客户的真实需求', '71', '0', '0', '1', '如何判断客户的真实需求', '0', 'upload/goods_category/1546492088.jpg', 'upload/goods_video/1546492096.mp4', '', '');

-- ----------------------------
-- Table structure for `ns_course_catalogue_video`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_catalogue_video`;
CREATE TABLE `ns_course_catalogue_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `video_title` varchar(50) NOT NULL DEFAULT '' COMMENT '视频标题',
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '合作机构',
  `catalogue_id` int(11) NOT NULL DEFAULT '0',
  `try_see` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '试看时长',
  `teacher_id` int(11) NOT NULL DEFAULT '0' COMMENT '老师ID',
  `teacher_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `video_url` varchar(255) NOT NULL DEFAULT '' COMMENT '视频地址',
  `video_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类图片',
  `create_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_catalogue_video
-- ----------------------------
INSERT INTO `ns_course_catalogue_video` VALUES ('74', '', '73', '75', '0.0', '58', 'NIKODAN', null, 'upload/goods_video/1545286314.mp4', '', '1545286315');
INSERT INTO `ns_course_catalogue_video` VALUES ('83', '', '66', '70', '2.0', '45', '阿木 Wendy', null, 'http://vali.cp31.ott.cibntv.net/youku/69758F008EB337147A3135A46/03000801005BF67B79674AA003E880C9F7BDC5-5E8D-4560-AE82-9ABD8107629A.mp4?sid=054598540348514858904_00_A541e02a534459c7afb038dde8fef1379&amp;sign=bb9c6bb537f2158b706ded5c48acc00d&amp;ctype=50&am', '', '1545986531');
INSERT INTO `ns_course_catalogue_video` VALUES ('84', '', '70', '73', '2.0', '45', '阿木 Wendy', null, 'upload/goods_video/1546483709.mp4', '', '1546483711');
INSERT INTO `ns_course_catalogue_video` VALUES ('85', '', '70', '73', '1.0', '45', '阿木 Wendy', null, 'upload/goods_video/1546483724.mp4', '', '1546483725');
INSERT INTO `ns_course_catalogue_video` VALUES ('86', '', '66', '70', '2.0', '58', 'NIKODAN', null, 'upload/goods_video/1546485333.mp4', '', '1546485335');
INSERT INTO `ns_course_catalogue_video` VALUES ('87', '', '66', '70', '1.0', '45', '阿木 Wendy', null, 'upload/goods_video/1546485353.mp4', '', '1546485353');
INSERT INTO `ns_course_catalogue_video` VALUES ('88', '', '66', '70', '0.0', '45', '阿木 Wendy', null, 'upload/goods_video/1546485364.mp4', '', '1546485365');
INSERT INTO `ns_course_catalogue_video` VALUES ('89', '', '71', '74', '2.0', '0', '', null, 'upload/goods_video/1546498833.mp4', '', '1546498836');
INSERT INTO `ns_course_catalogue_video` VALUES ('90', '', '71', '74', '1.0', '0', '', null, 'upload/goods_video/1546498844.mp4', '', '1546498844');
INSERT INTO `ns_course_catalogue_video` VALUES ('91', '', '71', '74', '0.0', '0', '', null, 'upload/goods_video/1546498853.mp4', '', '1546498854');

-- ----------------------------
-- Table structure for `ns_course_class`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_class`;
CREATE TABLE `ns_course_class` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '',
  `short_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品分类简称 ',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_special` int(10) NOT NULL DEFAULT '0' COMMENT '是否为专题课程',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `attr_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品类型ID',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '关联类型名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '分类关键字用于seo',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `category_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类图片',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_class
-- ----------------------------
INSERT INTO `ns_course_class` VALUES ('6', '裁剪', '裁剪', '0', '1', '1', '1', '0', '', '裁剪', '裁剪', '0', 'upload/goods_category/1545371488.jpg', '', '');
INSERT INTO `ns_course_class` VALUES ('11', '烫发', '烫发', '0', '1', '1', '1', '0', '', '烫发', '烫发', '0', 'upload/goods_category/1543208798.jpg', '', '');
INSERT INTO `ns_course_class` VALUES ('12', '染发', '染发', '0', '1', '1', '1', '0', '', '染发', '染发', '0', 'upload/goods_category/1543208814.jpg', '', '');
INSERT INTO `ns_course_class` VALUES ('13', '经营管理', '经营管理', '0', '1', '0', '1', '0', '', '经营管理', '经营管理', '0', 'upload/goods_category/1543209026.jpg', '', '');
INSERT INTO `ns_course_class` VALUES ('24', '造型', '造型', '0', '1', '1', '1', '0', '', '造型', '造型', '0', 'upload/goods_category/1545371499.jpg', '', '');
INSERT INTO `ns_course_class` VALUES ('26', '其他', '其他', '0', '1', '0', '1', '0', '', '其他', '其他', '0', '', '', '');
INSERT INTO `ns_course_class` VALUES ('28', '庞氏裁剪', '庞氏裁剪', '6', '2', '0', '1', '0', '', '', '', '0', '', '', '');

-- ----------------------------
-- Table structure for `ns_course_class_block`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_class_block`;
CREATE TABLE `ns_course_class_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id',
  `category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `category_alias` varchar(50) NOT NULL DEFAULT '' COMMENT '分类别名',
  `color` varchar(255) DEFAULT '#FFFFFF' COMMENT '颜色',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0 不显示',
  `is_show_lower_category` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示下级分类',
  `is_show_brand` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示品牌',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `ad_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图  {["title":"","subtitle":"","picture":"","url":"","background":""]}',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `short_name` varchar(255) DEFAULT '' COMMENT '分类简称',
  `goods_sort_type` int(11) NOT NULL DEFAULT '0' COMMENT '楼层商品排序方式 0默认按时间和排序号倒叙 1按发布时间排序 2按销量排序 3按排序号排序 4按人气排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商品分类楼层表';

-- ----------------------------
-- Records of ns_course_class_block
-- ----------------------------
INSERT INTO `ns_course_class_block` VALUES ('5', '0', '裁剪', '6', '裁剪', '#ff0080', '1', '0', '0', '0', '', '1532157578', '1545454627', '裁剪', '0');
INSERT INTO `ns_course_class_block` VALUES ('6', '0', '烫发', '11', '烫发', '#FFFFFF', '1', '0', '0', '0', '', '1533103763', '1545371694', '烫发', '0');
INSERT INTO `ns_course_class_block` VALUES ('7', '0', '染发', '12', '染发', '#FFFFFF', '1', '0', '0', '0', '', '1533103780', '1545458052', '染发', '0');
INSERT INTO `ns_course_class_block` VALUES ('8', '0', '经营管理', '13', '经营管理', '#FFFFFF', '1', '0', '0', '0', '', '1533103874', '1545371456', '经营管理', '0');
INSERT INTO `ns_course_class_block` VALUES ('9', '0', '造型', '24', '造型', '#FFFFFF', '1', '0', '0', '0', '', '1535613671', '1545371501', '造型', '0');
INSERT INTO `ns_course_class_block` VALUES ('11', '0', '其他', '26', '其他', '#FFFFFF', '1', '0', '0', '0', '', '1543201807', '1545371511', '其他', '0');
INSERT INTO `ns_course_class_block` VALUES ('17', '0', '测试', '33', '测试', '#FFFFFF', '1', '0', '0', '0', '', '1545016497', '0', '测试', '0');

-- ----------------------------
-- Table structure for `ns_course_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_deleted`;
CREATE TABLE `ns_course_deleted` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `teacher_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '机构老师id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `mechanism_id` int(11) NOT NULL DEFAULT '0' COMMENT '合作机构ID',
  `goods_type` int(11) NOT NULL DEFAULT '0' COMMENT '合作机构ID',
  `is_showprice` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否显示价格  0 不显示   1 显示',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '评分数',
  `total_num` int(10) NOT NULL DEFAULT '0' COMMENT '总课数',
  `release_num` int(10) NOT NULL DEFAULT '0' COMMENT '已发布课程数量',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `tune_num` int(10) NOT NULL DEFAULT '0' COMMENT '收听人数',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `course_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '课程类型  0 线上课程   1 线下课程  2 产品课程',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `crowd` varchar(120) NOT NULL DEFAULT '' COMMENT '适合人群',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(11) DEFAULT '0',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `goods_video_address` varchar(455) DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `allow_delete` tinyint(1) DEFAULT '1' COMMENT '0 不允许删除  1 允许删除',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16554 COMMENT='商品表';

-- ----------------------------
-- Records of ns_course_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_course_follow`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_follow`;
CREATE TABLE `ns_course_follow` (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '关注&收藏者的id',
  `id_name` varchar(50) NOT NULL DEFAULT '' COMMENT '关注&收藏者的名称',
  `cover_id` int(11) NOT NULL DEFAULT '0' COMMENT '被关注&收藏的id',
  `cover_name` varchar(120) NOT NULL DEFAULT '' COMMENT '被关注&收藏的名称',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 收藏  1 关注',
  `create_time` int(11) NOT NULL COMMENT '关注&收藏时间',
  PRIMARY KEY (`follow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=160 COMMENT='商品本店分类';

-- ----------------------------
-- Records of ns_course_follow
-- ----------------------------
INSERT INTO `ns_course_follow` VALUES ('8', '60', 'gygq', '72', '1国际联盟美发师顶尖强化班-副本-副本-副本', '0', '1546852158');
INSERT INTO `ns_course_follow` VALUES ('9', '60', 'gygq', '71', '2国际联盟美发师顶尖强化班-副本-副本', '0', '1546852164');
INSERT INTO `ns_course_follow` VALUES ('10', '60', 'gygq', '48', '昕和传承学院', '1', '1546852221');
INSERT INTO `ns_course_follow` VALUES ('11', '60', 'gygq', '45', '时尚艺术造型学院', '1', '1546852232');

-- ----------------------------
-- Table structure for `ns_course_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_group`;
CREATE TABLE `ns_course_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级id 最多2级',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '级别',
  `is_visible` int(1) NOT NULL DEFAULT '1' COMMENT '是否可视',
  `group_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(11) DEFAULT NULL,
  `group_dec` varchar(500) NOT NULL DEFAULT '' COMMENT '标签描述',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=160 COMMENT='商品本店分类';

-- ----------------------------
-- Records of ns_course_group
-- ----------------------------
INSERT INTO `ns_course_group` VALUES ('1', '0', '热销榜-课程', '0', '1', '1', '', '5', '');
INSERT INTO `ns_course_group` VALUES ('2', '0', '店铺推荐-课程', '0', '1', '1', '', '0', '');
INSERT INTO `ns_course_group` VALUES ('3', '0', '时尚美发-课程', '0', '1', '1', 'upload/goods_group/1545009790.jpg', '4', '时尚美发');

-- ----------------------------
-- Table structure for `ns_course_mechanism`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_mechanism`;
CREATE TABLE `ns_course_mechanism` (
  `mechanism_id` int(11) NOT NULL AUTO_INCREMENT,
  `mechanism_name` varchar(50) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `mechanism_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `teacher_num` int(10) NOT NULL DEFAULT '0' COMMENT '机构老师数量',
  `follow_num` int(10) NOT NULL DEFAULT '0' COMMENT '关注人数',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`mechanism_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_mechanism
-- ----------------------------
INSERT INTO `ns_course_mechanism` VALUES ('45', '时尚艺术造型学院', '0', '0', '1', '上海MONIKO美发学院致力于短发裁剪与色彩技术，秉承精品教学，创新思变的教育理念，服务于国内乃至海外...', '10', 'upload/goods_category/1545369907.jpg', '2', '1', '', '');
INSERT INTO `ns_course_mechanism` VALUES ('46', 'MONIKO美发', '0', '0', '1', '上海MONIKO美发学院致力于短发裁剪与色彩技术，秉承精品教学，创新思变的教育理念，服务于国内乃至海外...', '12', 'upload/goods_category/1545369934.jpg', '0', '0', '', '');
INSERT INTO `ns_course_mechanism` VALUES ('47', 'GFHG美发', '0', '0', '1', '上海MONIKO美发学院致力于短发裁剪与色彩技术，秉承精品教学，创新思变的教育理念，服务于国内乃至海外...', '10', 'upload/goods_category/1545369922.jpg', '0', '0', '', '');
INSERT INTO `ns_course_mechanism` VALUES ('48', '昕和传承学院', '0', '0', '1', '上海MONIKO美发学院致力于短发裁剪与色彩技术，秉承精品教学，创新思变的教育理念，服务于国内乃至海外...', '0', 'upload/goods_category/1545369873.jpg', '0', '1', '', '');

-- ----------------------------
-- Table structure for `ns_course_order`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_order`;
CREATE TABLE `ns_course_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` varchar(255) DEFAULT '' COMMENT '订单编号',
  `out_trade_no` varchar(100) NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `order_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型。取值范围：\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN (微信自有支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN_DAIXIAO (微信代销支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nALIPAY (支付宝支付)',
  `order_from` varchar(255) NOT NULL DEFAULT '' COMMENT '订单来源',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `buyer_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '买家ip',
  `buyer_message` varchar(255) NOT NULL DEFAULT '' COMMENT '买家附言',
  `buyer_invoice` varchar(255) NOT NULL DEFAULT '' COMMENT '买家发票信息',
  `shop_id` int(11) NOT NULL COMMENT '卖家店铺id',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '卖家店铺名称',
  `seller_star` tinyint(4) NOT NULL DEFAULT '0' COMMENT '卖家对订单的标注星标',
  `seller_memo` varchar(255) NOT NULL DEFAULT '' COMMENT '卖家对订单的备注',
  `goods_money` decimal(19,2) NOT NULL COMMENT '商品总价',
  `order_money` decimal(10,2) NOT NULL COMMENT '订单总价',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单余额支付金额',
  `user_platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户平台余额支付',
  `pay_money` decimal(10,2) NOT NULL COMMENT '订单实付金额',
  `refund_money` decimal(10,2) NOT NULL COMMENT '订单退款金额',
  `order_status` tinyint(4) NOT NULL COMMENT '订单状态 0 待付款   1 已完成   2 已关闭',
  `pay_status` tinyint(4) NOT NULL COMMENT '订单付款状态 0 待付款  1 已付款',
  `review_status` tinyint(4) NOT NULL COMMENT '订单评价状态',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `tax_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_time` int(11) DEFAULT '0' COMMENT '订单付款时间',
  `create_time` int(11) DEFAULT '0' COMMENT '订单创建时间',
  `finish_time` int(11) DEFAULT '0' COMMENT '订单完成时间',
  `is_deleted` int(1) NOT NULL DEFAULT '0' COMMENT '订单是否已删除',
  `operator_type` int(1) NOT NULL DEFAULT '0' COMMENT '操作人类型  1店铺  2用户',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `commission` decimal(10,2) DEFAULT '0.00' COMMENT '订单佣金',
  PRIMARY KEY (`order_id`),
  KEY `UK_ns_order_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_order_no` (`order_no`),
  KEY `UK_ns_order_pay_status` (`pay_status`),
  KEY `UK_ns_order_status` (`order_status`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=440 COMMENT='订单表';

-- ----------------------------
-- Records of ns_course_order
-- ----------------------------
INSERT INTO `ns_course_order` VALUES ('129', '2019010814320001', '154692915274971000', '1', '1', '2', '60', '孤月大师', '', '', '', '0', '', '0', '', '200.00', '160.00', '160.00', '0.00', '0.00', '0.00', '1', '1', '0', '0', '0.00', '0', '1546929152', '1546929152', '0', '0', '0', '0.00', '0.00');

-- ----------------------------
-- Table structure for `ns_course_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_order_goods`;
CREATE TABLE `ns_course_order_goods` (
  `order_goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单项ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL COMMENT 'skuID',
  `sku_name` varchar(50) NOT NULL COMMENT 'sku名称',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品成本价',
  `num` varchar(255) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `adjust_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '调整金额',
  `goods_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `point_exchange_type` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换类型0.非积分兑换1.积分兑换',
  `goods_type` varchar(255) NOT NULL DEFAULT '1' COMMENT '商品类型',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销ID',
  `promotion_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销类型',
  `order_type` int(11) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分数量',
  `shipping_status` int(11) NOT NULL DEFAULT '0' COMMENT '物流状态',
  `refund_type` int(11) NOT NULL DEFAULT '1' COMMENT '退款方式',
  `refund_require_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `refund_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因',
  `refund_shipping_code` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) NOT NULL DEFAULT '0' COMMENT '退款物流公司名称',
  `refund_real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际退款金额',
  `refund_status` int(1) NOT NULL DEFAULT '0' COMMENT '退款状态',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `refund_time` int(11) DEFAULT '0' COMMENT '退款时间',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `tmp_express_company` varchar(255) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时物流公司',
  `tmp_express_company_id` int(11) NOT NULL DEFAULT '0' COMMENT '批量打印时添加的临时物流公司id',
  `tmp_express_no` varchar(50) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时订单编号',
  `gift_flag` int(11) DEFAULT '0' COMMENT '赠品标识，0:不是赠品，大于0：赠品id',
  PRIMARY KEY (`order_goods_id`),
  KEY `UK_ns_order_goods_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_goods_goods_id` (`goods_id`),
  KEY `UK_ns_order_goods_order_id` (`order_id`),
  KEY `UK_ns_order_goods_promotion_id` (`promotion_id`),
  KEY `UK_ns_order_goods_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=289 COMMENT='订单商品表';

-- ----------------------------
-- Records of ns_course_order_goods
-- ----------------------------
INSERT INTO `ns_course_order_goods` VALUES ('89', '0', '0', '', '0', '', '0.00', '0.00', '0', '0.00', '0.00', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');

-- ----------------------------
-- Table structure for `ns_course_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_teacher`;
CREATE TABLE `ns_course_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(50) NOT NULL DEFAULT '',
  `mechanism_id` int(10) NOT NULL DEFAULT '0' COMMENT '合作机构',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `teacher_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `introduce_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '老师介绍图片',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_teacher
-- ----------------------------
INSERT INTO `ns_course_teacher` VALUES ('45', '阿木 Wendy', '45', '0', '0', '1', '上海MONIKO美发学院致力于短发裁剪与色彩技术，秉承精品教学，创新思变的教育理念，服务于国内乃至海外...', '10', 'upload/goods_category/1545617678.jpg', 'upload/goods_category/1545617683.jpg', '', '');
INSERT INTO `ns_course_teacher` VALUES ('58', 'NIKODAN', '45', '0', '0', '1', 'NIKODAN', '0', 'upload/goods_category/1545617659.jpg', 'upload/goods_category/1545617653.jpg', '', '');

-- ----------------------------
-- Table structure for `ns_course_video_play`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_video_play`;
CREATE TABLE `ns_course_video_play` (
  `play_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '课程Id',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `video_id` int(11) NOT NULL DEFAULT '0' COMMENT '视频ID',
  `start_time` int(10) NOT NULL COMMENT '视频播放开始时间',
  `end_time` int(10) NOT NULL COMMENT '视频播放结束时间',
  `video_duration` int(10) NOT NULL DEFAULT '0' COMMENT '视频时长 秒',
  `token` varchar(255) NOT NULL DEFAULT '' COMMENT '唯一标识符',
  `create_time` int(10) NOT NULL COMMENT '添加时间',
  `last_time` int(10) NOT NULL COMMENT '播放结束时间',
  PRIMARY KEY (`play_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_video_play
-- ----------------------------
INSERT INTO `ns_course_video_play` VALUES ('35', '66', '60', '88', '0', '5', '177', 'c19029e716c6584a638f5061234ffbee', '1546663414', '1546663419');
INSERT INTO `ns_course_video_play` VALUES ('36', '66', '60', '87', '0', '5', '177', '1132b3ecd2f0b30accab14a1ffc2decd', '1546663421', '1546663425');
INSERT INTO `ns_course_video_play` VALUES ('37', '66', '60', '88', '0', '3', '177', '0c8d76ff98f1ccf9858caee605e83ba2', '1546664882', '1546664886');
INSERT INTO `ns_course_video_play` VALUES ('38', '71', '60', '91', '0', '9', '177', 'aa2f60885066da5028cda972bc721f9e', '1546665781', '1546665795');
INSERT INTO `ns_course_video_play` VALUES ('39', '71', '60', '90', '0', '1', '177', 'ad70a599d32e5c7e1224db0ca5b9b0b1', '1546665795', '1546665796');

-- ----------------------------
-- Table structure for `ns_course_video_share`
-- ----------------------------
DROP TABLE IF EXISTS `ns_course_video_share`;
CREATE TABLE `ns_course_video_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '合作机构',
  `catalogue_id` int(11) NOT NULL DEFAULT '0',
  `video_id` int(11) NOT NULL DEFAULT '0' COMMENT '视频ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '分享者ID',
  `create_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_course_video_share
-- ----------------------------
INSERT INTO `ns_course_video_share` VALUES ('44', '71', '74', '91', '60', '1546569223');
INSERT INTO `ns_course_video_share` VALUES ('45', '71', '74', '90', '60', '1546569227');
INSERT INTO `ns_course_video_share` VALUES ('46', '71', '74', '89', '60', '1546569231');
INSERT INTO `ns_course_video_share` VALUES ('47', '71', '74', '91', '60', '1546665779');
INSERT INTO `ns_course_video_share` VALUES ('48', '71', '74', '90', '60', '1546665791');

-- ----------------------------
-- Table structure for `ns_customer_service`
-- ----------------------------
DROP TABLE IF EXISTS `ns_customer_service`;
CREATE TABLE `ns_customer_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `order_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单项id',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT 'skuID',
  `sku_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'sku名称',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `num` varchar(255) NOT NULL DEFAULT '' COMMENT '购买数量',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `order_type` int(11) NOT NULL COMMENT '订单类型',
  `refund_money` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `refund_way` varchar(255) NOT NULL DEFAULT '' COMMENT '退款方式  退款退货',
  `refund_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因',
  `audit_status` int(11) NOT NULL DEFAULT '0' COMMENT '审核状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `audit_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `order_from` varchar(255) NOT NULL DEFAULT '' COMMENT '订单来源',
  `receiver_province` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `receiver_city` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在城市',
  `receiver_district` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人所在街道',
  `receiver_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型。取值范围：...',
  `receiver_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人的手机号码',
  `shipping_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单配送方式',
  `goods_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `fixed_telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '固定电话',
  `receiver_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `refund_shipping_code` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流公司名称',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='售后记录表';

-- ----------------------------
-- Records of ns_customer_service
-- ----------------------------
INSERT INTO `ns_customer_service` VALUES ('1', '10', '150', '2018080209310001', '147', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品111', '11', '1盒 ', '129.00', '75', '1', '0', '8', '1', '0.00', '1', '买/卖双方协商一致', '1', '1533175872', '0', '2', '21', '232', '1978', '海南省&nbsp;海口市&nbsp;龙华区&nbsp;东湖大道', '5', '18356985214', '1', '129.00', '880715', '匿名', '煤老板', '', '', '0.00');
INSERT INTO `ns_customer_service` VALUES ('2', '20', '153', '2018080210190001', '150', '昂立多邦胶囊 男性抗疲劳保健品 保肝护肝调节血脂', '34', '', '209.00', '81', '1', '0', '8', '1', '0.00', '1', '买/卖双方协商一致', '-3', '1533176631', '0', '2', '21', '232', '1978', '海南省&nbsp;海口市&nbsp;龙华区&nbsp;东湖大道', '5', '18356985214', '1', '209.00', '880715', '匿名', '煤老板', '', '', '0.00');
INSERT INTO `ns_customer_service` VALUES ('3', '11', '162', '2018080413540001', '159', '莱特维健 天然维生素E软胶囊 维生素e外用 维E美容养颜 VE延缓衰老 抗氧化女性保健品 美国进口 ', '14', '', '99.00', '80', '1', '0', '23', '1', '0.00', '1', '买/卖双方协商一致', '2', '1533365173', '0', '2', '25', '272', '2378', '云南省&nbsp;临沧市&nbsp;耿马傣族佤族自治县&nbsp;高沙路', '5', '18356985471', '1', '99.00', '8874536', '高月明', '我是测试', '', '', '0.00');
INSERT INTO `ns_customer_service` VALUES ('4', '10', '176', '2018081816500001', '174', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品', '11', '1盒 ', '122.55', '75', '1', '0', '23', '1', '0.00', '1', '买/卖双方协商一致', '5', '1534583463', '1534726698', '2', '25', '272', '2378', '云南省&nbsp;临沧市&nbsp;耿马傣族佤族自治县&nbsp;高沙路', '5', '18356985471', '1', '122.55', '8874536', '高月明', '我是测试', '145236985', '畅通快递 ', '122.55');
INSERT INTO `ns_customer_service` VALUES ('5', '22', '188', '2018082015150001', '188', '养生堂 维生素E200粒分享装 美容（祛黄褐斑）赠(VB30粒)或(VC15片+ve15粒)', '36', '', '200.00', '89', '1', '0', '58', '1', '0.00', '1', '买/卖双方协商一致', '5', '1534750595', '1534750930', '2', '14', '127', '1147', '江西省&nbsp;九江市&nbsp;永修县&nbsp;东银大道', '5', '18356985214', '1', '200.00', '880745', '高加林', 'wjxit', '26565412', '德邦物流', '50.00');
INSERT INTO `ns_customer_service` VALUES ('6', '27', '278', '2018090114450001', '239', '司马大夫预约', '0', '', '0.00', '133', '2', '0', '23', '1', '0.00', '1', '买/卖双方协商一致', '1', '1535790778', '0', '2', '0', '0', '0', '', '0', '13888888888', '1', '0.00', '', '', '我是测试', '', '', '0.00');
INSERT INTO `ns_customer_service` VALUES ('7', '21', '194', '2018082113590001', '194', '可轻淫羊藿马鹿茸胶囊60粒 延缓衰老抗疲劳可搭配玛咖男用产品', '35', '', '285.00', '73', '1', '0', '23', '1', '0.00', '1', '买/卖双方协商一致', '2', '1537161018', '0', '2', '25', '272', '2378', '云南省&nbsp;临沧市&nbsp;耿马傣族佤族自治县&nbsp;高沙路', '5', '18356985471', '1', '285.00', '8874536', '高月明', '我是测试', '', '', '0.00');
INSERT INTO `ns_customer_service` VALUES ('8', '21', '293', '2018091713090001', '254', '可轻淫羊藿马鹿茸胶囊60粒 延缓衰老抗疲劳可搭配玛咖男用产品', '35', '', '285.00', '73', '1', '0', '23', '1', '0.00', '1', '买/卖双方协商一致', '5', '1537256193', '1537256231', '2', '25', '272', '2378', '云南省&nbsp;临沧市&nbsp;耿马傣族佤族自治县&nbsp;高沙路', '5', '18356985471', '1', '285.00', '8874536', '高月明', '我是测试', '11', '11', '85.00');

-- ----------------------------
-- Table structure for `ns_customer_service_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_customer_service_records`;
CREATE TABLE `ns_customer_service_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单商品表id',
  `refund_status` varchar(255) NOT NULL DEFAULT '' COMMENT '操作状态 流程状态(refund_status)  状态名称(refund_status_name)  操作时间1 买家申请  发起了退款申请,等待卖家处理2 等待买家退货  卖家已同意退款申请,等待买家退货3 等待卖家确认收货  买家已退货,等待卖家确认收货4 等待卖家确认退款  卖家同意退款0 退款已成功 卖家退款给买家，本次维权结束-1  退款已拒绝 卖家拒绝本次退款，本次维权结束-2 退款已关闭 主动撤销退款，退款关闭-3 退款申请不通过 拒绝了本次退款申请,等待买家修改',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '退款操作内容描述',
  `action_way` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作方 1 买家 2 卖家',
  `action_userid` varchar(255) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `action_username` varchar(255) NOT NULL DEFAULT '' COMMENT '操作人姓名',
  `action_time` int(11) NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='售后操作记录表';

-- ----------------------------
-- Records of ns_customer_service_records
-- ----------------------------
INSERT INTO `ns_customer_service_records` VALUES ('1', '147', '1', '买家申请退款', '1', '8', 'gao123', '1533175872');
INSERT INTO `ns_customer_service_records` VALUES ('2', '150', '1', '买家申请退款', '1', '8', 'gao123', '1533176631');
INSERT INTO `ns_customer_service_records` VALUES ('3', '159', '1', '买家申请退款', '1', '23', 'wocesi', '1533365173');
INSERT INTO `ns_customer_service_records` VALUES ('4', '150', '-3', '退款申请不通过', '2', '2', 'admin', '1534583382');
INSERT INTO `ns_customer_service_records` VALUES ('5', '159', '2', '等待买家退货', '2', '2', 'admin', '1534583397');
INSERT INTO `ns_customer_service_records` VALUES ('6', '174', '1', '买家申请退款', '1', '23', 'wocesi', '1534583463');
INSERT INTO `ns_customer_service_records` VALUES ('7', '174', '2', '等待买家退货', '2', '2', 'admin', '1534726406');
INSERT INTO `ns_customer_service_records` VALUES ('8', '174', '3', '等待卖家确认收货', '1', '23', 'wocesi', '1534726616');
INSERT INTO `ns_customer_service_records` VALUES ('9', '174', '4', '等待卖家确认退款', '2', '2', 'admin', '1534726638');
INSERT INTO `ns_customer_service_records` VALUES ('10', '174', '5', '退款已成功', '2', '2', 'admin', '1534726698');
INSERT INTO `ns_customer_service_records` VALUES ('11', '188', '1', '买家申请退款', '1', '58', 'wjxit', '1534750595');
INSERT INTO `ns_customer_service_records` VALUES ('12', '188', '2', '等待买家退货', '2', '2', 'admin', '1534750614');
INSERT INTO `ns_customer_service_records` VALUES ('13', '188', '3', '等待卖家确认收货', '1', '58', 'wjxit', '1534750694');
INSERT INTO `ns_customer_service_records` VALUES ('14', '188', '4', '等待卖家确认退款', '2', '2', 'admin', '1534750712');
INSERT INTO `ns_customer_service_records` VALUES ('15', '188', '5', '退款已成功', '2', '2', 'admin', '1534750930');
INSERT INTO `ns_customer_service_records` VALUES ('16', '239', '1', '买家申请退款', '1', '23', 'wocesi', '1535790779');
INSERT INTO `ns_customer_service_records` VALUES ('17', '194', '1', '买家申请退款', '1', '23', 'wocesi', '1537161018');
INSERT INTO `ns_customer_service_records` VALUES ('18', '254', '1', '买家申请退款', '1', '23', 'wocesi', '1537256193');
INSERT INTO `ns_customer_service_records` VALUES ('19', '254', '2', '等待买家退货', '2', '59', 'wjxit', '1537256201');
INSERT INTO `ns_customer_service_records` VALUES ('20', '254', '3', '等待卖家确认收货', '1', '23', 'wocesi', '1537256209');
INSERT INTO `ns_customer_service_records` VALUES ('21', '254', '4', '等待卖家确认退款', '2', '59', 'wjxit', '1537256218');
INSERT INTO `ns_customer_service_records` VALUES ('22', '254', '5', '退款已成功', '2', '59', 'wjxit', '1537256231');
INSERT INTO `ns_customer_service_records` VALUES ('23', '194', '2', '等待买家退货', '2', '59', 'wjxit', '1537256293');

-- ----------------------------
-- Table structure for `ns_distribution_order`
-- ----------------------------
DROP TABLE IF EXISTS `ns_distribution_order`;
CREATE TABLE `ns_distribution_order` (
  `dorder_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单Id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `receiptor_id` int(11) NOT NULL DEFAULT '0' COMMENT '收益人Id',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品买价',
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品成本价',
  `profit` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品利润',
  `distribution_commission_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品分销比例',
  `commission_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '推广员佣金比例',
  `commission_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `is_issue` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发放状态 0 未发放  1 已发放 2 已退还',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`dorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='购物车表';

-- ----------------------------
-- Records of ns_distribution_order
-- ----------------------------
INSERT INTO `ns_distribution_order` VALUES ('1', '3', '50', '93', '93', '59.00', '0.00', '59.00', '50.00', '10.00', '2.95', '0', '', '1544506090');
INSERT INTO `ns_distribution_order` VALUES ('3', '4', '50', '94', '94', '59.00', '0.00', '59.00', '50.00', '10.00', '2.95', '0', '', '1544506345');
INSERT INTO `ns_distribution_order` VALUES ('5', '6', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '1', '订单交易完成，二级分销佣金进行结算。', '1545726300');
INSERT INTO `ns_distribution_order` VALUES ('6', '7', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '1', '订单交易完成，二级分销佣金进行结算。', '1545726595');
INSERT INTO `ns_distribution_order` VALUES ('7', '8', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1545900685');
INSERT INTO `ns_distribution_order` VALUES ('8', '9', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1545900720');
INSERT INTO `ns_distribution_order` VALUES ('9', '10', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546399869');
INSERT INTO `ns_distribution_order` VALUES ('10', '11', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546404351');
INSERT INTO `ns_distribution_order` VALUES ('11', '12', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546404596');
INSERT INTO `ns_distribution_order` VALUES ('12', '13', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546404613');
INSERT INTO `ns_distribution_order` VALUES ('13', '14', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546405786');
INSERT INTO `ns_distribution_order` VALUES ('14', '15', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546405813');
INSERT INTO `ns_distribution_order` VALUES ('15', '16', '50', '60', '60', '47.20', '0.00', '47.20', '50.00', '0.00', '0.00', '0', '', '1546406439');

-- ----------------------------
-- Table structure for `ns_distribution_relations`
-- ----------------------------
DROP TABLE IF EXISTS `ns_distribution_relations`;
CREATE TABLE `ns_distribution_relations` (
  `nexu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推广员等级id',
  `WxId` int(11) NOT NULL DEFAULT '0' COMMENT '微信公众号Id',
  `FxLevel` int(11) NOT NULL DEFAULT '0' COMMENT '分销级别深度',
  `Pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级Id',
  `ChildId` int(11) NOT NULL DEFAULT '0' COMMENT '会员Id',
  PRIMARY KEY (`nexu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='购物车表';

-- ----------------------------
-- Records of ns_distribution_relations
-- ----------------------------
INSERT INTO `ns_distribution_relations` VALUES ('40', '0', '1', '1', '10');
INSERT INTO `ns_distribution_relations` VALUES ('41', '0', '1', '60', '23');
INSERT INTO `ns_distribution_relations` VALUES ('42', '0', '1', '10', '8');
INSERT INTO `ns_distribution_relations` VALUES ('45', '0', '1', '10', '28');
INSERT INTO `ns_distribution_relations` VALUES ('52', '0', '1', '110', '56');
INSERT INTO `ns_distribution_relations` VALUES ('54', '0', '1', '11', '92');
INSERT INTO `ns_distribution_relations` VALUES ('55', '0', '1', '11', '93');
INSERT INTO `ns_distribution_relations` VALUES ('56', '0', '1', '11', '94');

-- ----------------------------
-- Table structure for `ns_distribution_rromoter`
-- ----------------------------
DROP TABLE IF EXISTS `ns_distribution_rromoter`;
CREATE TABLE `ns_distribution_rromoter` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推广员等级id',
  `level_name` varchar(100) NOT NULL DEFAULT '' COMMENT '等级名称',
  `level_money` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '升级条件',
  `level_0` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '本级销售佣金比率',
  `level_1` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '给上级的佣金比率',
  `addtime` date NOT NULL COMMENT '等级添加时间',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='购物车表';

-- ----------------------------
-- Records of ns_distribution_rromoter
-- ----------------------------
INSERT INTO `ns_distribution_rromoter` VALUES ('1', '一级分销', '0.00', '10.00', '30.00', '0000-00-00');
INSERT INTO `ns_distribution_rromoter` VALUES ('2', '二级分销', '5.00', '12.00', '0.00', '0000-00-00');

-- ----------------------------
-- Table structure for `ns_express_company`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_company`;
CREATE TABLE `ns_express_company` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `shop_id` int(11) NOT NULL COMMENT '商铺id',
  `company_name` varchar(50) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `express_no` varchar(20) NOT NULL DEFAULT '' COMMENT '物流编号',
  `is_enabled` int(11) NOT NULL DEFAULT '1' COMMENT '使用状态',
  `image` varchar(255) DEFAULT '' COMMENT '物流公司模版图片',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '联系电话',
  `orders` int(11) DEFAULT NULL,
  `express_logo` varchar(255) DEFAULT '' COMMENT '公司logo',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否设置为默认 0未设置 1 默认',
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=420 COMMENT='物流公司';

-- ----------------------------
-- Records of ns_express_company
-- ----------------------------
INSERT INTO `ns_express_company` VALUES ('3', '0', '德邦物流', '23232323', '1', '', '183569852145', '0', '', '1');
INSERT INTO `ns_express_company` VALUES ('4', '0', '圆通速递', '123456', '1', '', '18356985214', '0', 'upload/common/1535781021.jpeg', '0');

-- ----------------------------
-- Table structure for `ns_express_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping`;
CREATE TABLE `ns_express_shipping` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '运单模版id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `template_name` varchar(255) NOT NULL DEFAULT '' COMMENT '模版名称',
  `co_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流公司 id',
  `size_type` smallint(6) NOT NULL DEFAULT '1' COMMENT '尺寸类型 1像素px  2毫米mm',
  `width` smallint(6) NOT NULL DEFAULT '0' COMMENT '宽度',
  `height` smallint(6) NOT NULL DEFAULT '0' COMMENT '长度',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '快递单图片',
  PRIMARY KEY (`sid`),
  KEY `IDX_express_shipping_co_id` (`co_id`),
  KEY `IDX_express_shipping_shopId` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='运单模板';

-- ----------------------------
-- Records of ns_express_shipping
-- ----------------------------
INSERT INTO `ns_express_shipping` VALUES ('3', '0', '德邦物流', '3', '1', '0', '0', '');
INSERT INTO `ns_express_shipping` VALUES ('4', '0', '圆通速递', '4', '1', '0', '0', '');

-- ----------------------------
-- Table structure for `ns_express_shipping_items`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping_items`;
CREATE TABLE `ns_express_shipping_items` (
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '运单模版id',
  `field_name` varchar(30) NOT NULL COMMENT '字段名称',
  `field_display_name` varchar(255) NOT NULL COMMENT '打印项名称',
  `is_print` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否打印',
  `x` int(11) NOT NULL DEFAULT '0' COMMENT 'x',
  `y` int(11) NOT NULL DEFAULT '0' COMMENT 'y',
  PRIMARY KEY (`sid`,`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=420 COMMENT='物流模板打印项';

-- ----------------------------
-- Records of ns_express_shipping_items
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_express_shipping_items_library`
-- ----------------------------
DROP TABLE IF EXISTS `ns_express_shipping_items_library`;
CREATE TABLE `ns_express_shipping_items_library` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流模版打印项库ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `field_name` varchar(50) NOT NULL COMMENT '字段名',
  `field_display_name` varchar(50) NOT NULL COMMENT '字段显示名',
  `is_enabled` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否启用',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1260 COMMENT='物流模版打印项库';

-- ----------------------------
-- Records of ns_express_shipping_items_library
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_gift_grant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_gift_grant_records`;
CREATE TABLE `ns_gift_grant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gift_id` int(11) NOT NULL COMMENT '赠送活动ID',
  `goods_id` int(11) NOT NULL COMMENT '赠送商品ID',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '赠送商品名称',
  `goods_img` varchar(255) NOT NULL DEFAULT '' COMMENT '赠送商品图片',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '赠送数量',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '发放方式',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '发放相关ID',
  `memo` text NOT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '赠送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠品发放记录';

-- ----------------------------
-- Records of ns_gift_grant_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods`;
CREATE TABLE `ns_goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `promote_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销活动ID',
  `goods_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '实物或虚拟商品标志 1实物商品 0 虚拟商品 2 F码商品',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `point_exchange_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 ',
  `point_exchange` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '购买商品赠送积分',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `shipping_fee_id` int(11) NOT NULL DEFAULT '0' COMMENT '售卖区域id 物流模板id  ns_order_shipping_fee 表id',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `max_buy` int(11) NOT NULL DEFAULT '0' COMMENT '限购 0 不限购',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `min_stock_alarm` int(11) NOT NULL DEFAULT '0' COMMENT '库存预警值',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级地区id',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级地区id',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '商家编号',
  `is_stock_visible` int(1) NOT NULL DEFAULT '0' COMMENT '页面不显示库存',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(11) DEFAULT '0',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `sku_img_array` varchar(1000) DEFAULT NULL COMMENT '商品sku应用图片列表  属性,属性值，图片ID',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_attribute_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品类型',
  `goods_spec_format` text NOT NULL COMMENT '商品规格',
  `goods_weight` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量',
  `goods_volume` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积',
  `shipping_fee_type` int(11) NOT NULL DEFAULT '1' COMMENT '计价方式1.重量2.体积3.计件',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供货商id',
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `min_buy` int(11) NOT NULL DEFAULT '0' COMMENT '最少买几件',
  `virtual_goods_type_id` int(11) DEFAULT '0' COMMENT '虚拟商品类型id',
  `production_date` int(11) NOT NULL DEFAULT '0' COMMENT '生产日期',
  `shelf_life` varchar(50) NOT NULL DEFAULT '' COMMENT '保质期',
  `goods_video_address` varchar(455) DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `max_use_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分抵现最大可用积分数 0为不可使用',
  `is_open_presell` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支持预售',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间',
  `presell_day` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货天数',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '1' COMMENT '预售发货方式1. 按照预售发货时间 2.按照预售发货天数',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `goods_unit` varchar(20) NOT NULL DEFAULT '' COMMENT '商品单位',
  `distribution_commission_rate` decimal(10,2) DEFAULT '0.00' COMMENT '商品分销比例',
  `is_open` int(1) DEFAULT '0' COMMENT '是否分销',
  `goods_kind` tinyint(1) DEFAULT '0' COMMENT '商品种类 0 实物商品   1 预约商品',
  `allow_delete` tinyint(1) DEFAULT '1' COMMENT '0 不允许删除  1 允许删除',
  PRIMARY KEY (`goods_id`),
  KEY `UK_ns_goods_brand_id` (`brand_id`),
  KEY `UK_ns_goods_category_id` (`category_id`),
  KEY `UK_ns_goods_category_id_1` (`category_id_1`),
  KEY `UK_ns_goods_category_id_2` (`category_id_2`),
  KEY `UK_ns_goods_category_id_3` (`category_id_3`),
  KEY `UK_ns_goods_extend_category_id` (`extend_category_id`),
  KEY `UK_ns_goods_extend_category_id_1` (`extend_category_id_1`),
  KEY `UK_ns_goods_extend_category_id_2` (`extend_category_id_2`),
  KEY `UK_ns_goods_extend_category_id_3` (`extend_category_id_3`),
  KEY `UK_ns_goods_goods_attribute_id` (`goods_attribute_id`),
  KEY `UK_ns_goods_group_id_array` (`group_id_array`),
  KEY `UK_ns_goods_promotion_price` (`promotion_price`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16554 COMMENT='商品表';

-- ----------------------------
-- Records of ns_goods
-- ----------------------------
INSERT INTO `ns_goods` VALUES ('28', 'Aussie袋鼠洗发水奇迹水润洗发露300ml (无硅油洗发水）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '79.00', '79.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '8', '0', '3', '0', '0', '0', '0', '0', '0', '148', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Aussie袋鼠洗发水奇迹水润洗发露300ml (无硅油洗发水）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_28.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '148', '', null, null, '1', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542777688', '1542777688', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('29', '阿道夫( ADOLPH)官方旗舰店洗发水洗发露护发素', '0', '11', '11', '0', '0', '0', '0', '0', '0', '1', '0.00', '119.00', '119.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '11', '0', '0', '1', '0', '0', '0', '0', '0', '149', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">阿道夫( ADOLPH)官方旗舰店洗发水洗发露护发素好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_29.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '149', '', null, null, '2', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542777835', '1542777835', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('30', '霸王( BAWANG )育发液溢养毛囊有助头发生长液', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '150', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">霸王( BAWANG )育发液溢养毛囊有助头发生长液好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_30.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '150', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542777942', '1542777942', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('31', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '151', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_31.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '151', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778020', '1542778020', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('32', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '152', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_32.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '152', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778080', '1542778080', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('33', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '153', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_33.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '153', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778139', '1542778139', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('34', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '154', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_34.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '154', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778191', '1542778191', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('35', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '11', '11', '0', '0', '0', '0', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '99', '0', '9', '0', '1', '1', '0', '0', '0', '0', '0', '155', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_35.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '155', '', null, null, '1', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778254', '1542778254', '1544497226', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('36', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '156', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_36.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '156', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778398', '1542778398', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('37', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '157', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_37.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '157', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778492', '1542778492', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('38', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '158', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_38.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '158', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778542', '1542778542', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('39', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '159', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_39.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '159', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778600', '1542778600', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('40', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '160', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_40.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '160', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778670', '1542778670', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('41', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '161', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_41.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '161', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778721', '1542778721', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('42', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '162', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_42.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '162', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778775', '1542778775', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('43', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '163', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_43.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '163', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778852', '1542778852', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('44', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '164', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝</span>好呀</p>', 'upload/goods_qrcode/goods_qrcode_44.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '164', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778908', '1542778908', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('45', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '0', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '165', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_45.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '165', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542778956', '1542778956', '0', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('46', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '0', '6', '6', '0', '0', '0', '1', '0', '0', '1', '0.00', '199.00', '199.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '166', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_46.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '166', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542779031', '1542779031', '1543202734', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('47', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '6', '6', '0', '0', '0', '1', '0', '0', '1', '0.00', '108.00', '108.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '167', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_47.png', '', '1', '1', '1', '1', '0', '0', '1', '0', '167', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542779073', '1542779073', '1543202734', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('48', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '1', '0', '0', '1', '0.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '13', '0', '1', '0', '0', '0', '0', '0', '0', '168', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_48.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '168', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542779367', '1542779367', '1543202282', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('49', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '0', '6', '6', '0', '0', '0', '1', '0', '0', '1', '89.00', '69.00', '69.00', '0.00', '0', '0', '0', '0', '0.00', '0', '100', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '169', '', '', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水好呀</span></p>', 'upload/goods_qrcode/goods_qrcode_49.png', '', '1', '1', '1', '1', '0', '0', '1', '10', '169', '', null, null, '0', '0', '[]', '0.00', '0.00', '3', '', '', '', '', '0', '1542779493', '1542779493', '1543202282', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '', '0.00', '0', '0', '1');
INSERT INTO `ns_goods` VALUES ('50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '0', '27', '6', '27', '0', '0', '1,2', '0', '0', '1', '79.00', '59.00', '59.00', '0.00', '0', '0', '0', '0', '0.00', '0', '91', '0', '33', '0', '15', '0', '0', '0', '0', '0', '0', '170', '', '商品促销语', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">施华蔻专业( SchwarzkopfProfessional )尚丝</span></p>', 'upload/goods_qrcode/goods_qrcode_50.png', '', '1', '1', '0', '0', '0', '0', '1', '11', '170', '', '5.00', '100.00', '9', '0', '[]', '0.00', '0.00', '3', '13,11', '13,11', '0,0', '0,0', '0', '1542779550', '1542779550', '1546415917', '0', '0', '0', '0', 'http://vali.cp31.ott.cibntv.net/youku/69751740c384571bd280a37f6/03000801005BD972ED65B23003E8802FF5291A-71EF-421A-9F18-D9A1D2C32C8C.mp4?sid=054449373600010007558_00_Afde4d9767b15612fee1eda72dda6d6e5&amp;sign=8e76fabe70e4e577f53932160fbcf7e9&amp;ctype=50', '', '', '0', '0', '0', '0', '1', '0.00', '', '50.00', '1', '0', '1');
INSERT INTO `ns_goods` VALUES ('51', '20190102洗发水', '0', '27', '6', '27', '0', '0', '1', '0', '0', '1', '100.00', '80.00', '80.00', '50.00', '0', '0', '0', '0', '1.00', '0', '1000', '0', '2', '100', '0', '0', '0', '0', '0', '34', '0', '330', '', '', '<p style=\"text-indent:28px\"><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">提现管理，点击主页左侧导航栏运营管理点击</span>“提现管理”提现认证填写经营者名称、手机号码、联系地址、身份证号码、身份证正面、身份证反面、手持身份证填写完成点确认如图<span style=\"font-family:Times New Roman\">69</span><span style=\"font-family:宋体\">所示，（注：提现时间：星期二</span><span style=\"font-family:Times New Roman\">,</span><span style=\"font-family:宋体\">星期四。到帐时间：</span><span style=\"font-family:Times New Roman\">T+1</span><span style=\"font-family:宋体\">提现金额大于等于：</span><span style=\"font-family:Times New Roman\">1.00</span><span style=\"font-family:宋体\">元微信或支付宝付款每笔手续费</span><span style=\"font-family:Times New Roman\">0.8%</span><span style=\"font-family:宋体\">）</span></span></p><p><img src=\"/upload/goods/20181224/5e202afc987fbb3ad40ec079f2c1271c.jpg\"/></p>', 'upload/goods_qrcode/goods_qrcode_51.png', '', '1', '0', '0', '0', '0', '0', '1', '0', '330', '', null, null, '0', '0', '[]', '1.00', '0.00', '3', '', '', '', '', '0', '1546409144', '1546409144', '1546478196', '0', '0', '0', '0', '', '', '', '0', '0', '0', '0', '1', '0.00', '箱', '0.00', '0', '0', '1');

-- ----------------------------
-- Table structure for `ns_goods_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute`;
CREATE TABLE `ns_goods_attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值对应数据值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`attr_id`),
  KEY `UK_ns_goods_attribute_attr_value_id` (`attr_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=315 COMMENT='商品属性表';

-- ----------------------------
-- Records of ns_goods_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_attribute_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute_deleted`;
CREATE TABLE `ns_goods_attribute_deleted` (
  `attr_id` int(10) NOT NULL,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性值对应数据值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=315 COMMENT='商品属性回收站表';

-- ----------------------------
-- Records of ns_goods_attribute_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_attribute_value`;
CREATE TABLE `ns_goods_attribute_value` (
  `attr_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值ID',
  `attr_id` int(11) NOT NULL COMMENT '商品属性ID',
  `attr_value` varchar(255) NOT NULL DEFAULT '' COMMENT '值名称',
  `is_visible` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否可视',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`attr_value_id`),
  KEY `IDX_category_propvalues_c_pId` (`attr_id`),
  KEY `IDX_category_propvalues_orders` (`sort`),
  KEY `IDX_category_propvalues_value` (`attr_value`),
  KEY `UK_ns_goods_attribute_value_attr_value_id` (`attr_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='商品规格值模版表';

-- ----------------------------
-- Records of ns_goods_attribute_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_brand`;
CREATE TABLE `ns_goods_brand` (
  `brand_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `brand_initial` varchar(1) NOT NULL COMMENT '品牌首字母',
  `brand_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `brand_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `sort` int(11) DEFAULT NULL,
  `brand_category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类别名称',
  `category_id_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '所属分类id组',
  `brand_ads` varchar(255) NOT NULL DEFAULT '' COMMENT '品牌推荐广告',
  `category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌所属分类名称',
  `category_id_1` int(11) NOT NULL DEFAULT '0' COMMENT '一级分类ID',
  `category_id_2` int(11) NOT NULL DEFAULT '0' COMMENT '二级分类ID',
  `category_id_3` int(11) NOT NULL DEFAULT '0' COMMENT '三级分类ID',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1024 COMMENT='品牌表';

-- ----------------------------
-- Records of ns_goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_browse`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_browse`;
CREATE TABLE `ns_goods_browse` (
  `browse_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '浏览时间',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`browse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='商品足迹表';

-- ----------------------------
-- Records of ns_goods_browse
-- ----------------------------
INSERT INTO `ns_goods_browse` VALUES ('2', '48', '60', '1543224978', '6');
INSERT INTO `ns_goods_browse` VALUES ('3', '49', '60', '1543281409', '6');
INSERT INTO `ns_goods_browse` VALUES ('5', '47', '60', '1543281648', '6');
INSERT INTO `ns_goods_browse` VALUES ('9', '43', '10', '1544495441', '6');
INSERT INTO `ns_goods_browse` VALUES ('12', '50', '10', '1544495650', '6');
INSERT INTO `ns_goods_browse` VALUES ('13', '35', '10', '1544496939', '11');
INSERT INTO `ns_goods_browse` VALUES ('15', '28', '56', '1544497117', '6');
INSERT INTO `ns_goods_browse` VALUES ('21', '35', '56', '1544497341', '11');
INSERT INTO `ns_goods_browse` VALUES ('22', '28', '93', '1544505940', '6');
INSERT INTO `ns_goods_browse` VALUES ('24', '50', '93', '1544506005', '6');
INSERT INTO `ns_goods_browse` VALUES ('27', '29', '60', '1544509772', '11');
INSERT INTO `ns_goods_browse` VALUES ('37', '48', '23', '1544511943', '6');
INSERT INTO `ns_goods_browse` VALUES ('38', '35', '23', '1544512213', '11');
INSERT INTO `ns_goods_browse` VALUES ('39', '50', '23', '1544512977', '6');
INSERT INTO `ns_goods_browse` VALUES ('40', '42', '60', '1545726089', '6');
INSERT INTO `ns_goods_browse` VALUES ('41', '46', '60', '1545726144', '6');
INSERT INTO `ns_goods_browse` VALUES ('53', '28', '60', '1545901908', '6');
INSERT INTO `ns_goods_browse` VALUES ('62', '29', '94', '1546408576', '11');
INSERT INTO `ns_goods_browse` VALUES ('63', '48', '94', '1546409019', '6');
INSERT INTO `ns_goods_browse` VALUES ('64', '50', '94', '1546409029', '27');
INSERT INTO `ns_goods_browse` VALUES ('65', '51', '94', '1546409145', '27');
INSERT INTO `ns_goods_browse` VALUES ('69', '50', '60', '1546847646', '27');

-- ----------------------------
-- Table structure for `ns_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_category`;
CREATE TABLE `ns_goods_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '',
  `short_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品分类简称 ',
  `pid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `is_visible` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示  1 显示 0 不显示',
  `attr_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品类型ID',
  `attr_name` varchar(255) NOT NULL DEFAULT '' COMMENT '关联类型名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '分类关键字用于seo',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述用于seo',
  `sort` int(11) DEFAULT NULL,
  `category_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分类图片',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品分类自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品分类自定义模板',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=244 COMMENT='商品分类表';

-- ----------------------------
-- Records of ns_goods_category
-- ----------------------------
INSERT INTO `ns_goods_category` VALUES ('6', '洗发水', '洗发水', '0', '1', '1', '0', '', '洗发水', '洗发水', '0', 'upload/goods_category/1543208787.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('11', '护发素', '护发素', '0', '1', '1', '0', '', '', '', '0', 'upload/goods_category/1543208798.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('12', '发膜/精油', '发膜/精油', '0', '1', '1', '0', '', '', '', '0', 'upload/goods_category/1543208814.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('13', '造型', '造型', '0', '1', '1', '0', '', '', '', '0', 'upload/goods_category/1543209026.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('24', '染发', '染发', '0', '1', '1', '0', '', '染发', '染发', '0', 'upload/goods_category/1543208838.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('25', '烫发', '烫发', '0', '1', '1', '0', '', '烫发', '', '0', 'upload/goods_category/1543209038.jpg', '', '');
INSERT INTO `ns_goods_category` VALUES ('26', '其他', '其他', '0', '1', '1', '0', '', '其他', '其他', '0', '', '', '');
INSERT INTO `ns_goods_category` VALUES ('27', '雕牌洗发水', '雕牌洗发水', '6', '2', '1', '0', '', '', '', '0', '', '', '');

-- ----------------------------
-- Table structure for `ns_goods_category_block`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_category_block`;
CREATE TABLE `ns_goods_category_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id',
  `category_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `category_alias` varchar(50) NOT NULL DEFAULT '' COMMENT '分类别名',
  `color` varchar(255) DEFAULT '#FFFFFF' COMMENT '颜色',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0 不显示',
  `is_show_lower_category` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示下级分类',
  `is_show_brand` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示品牌',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `ad_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图  {["title":"","subtitle":"","picture":"","url":"","background":""]}',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `short_name` varchar(255) DEFAULT '' COMMENT '分类简称',
  `goods_sort_type` int(11) NOT NULL DEFAULT '0' COMMENT '楼层商品排序方式 0默认按时间和排序号倒叙 1按发布时间排序 2按销量排序 3按排序号排序 4按人气排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商品分类楼层表';

-- ----------------------------
-- Records of ns_goods_category_block
-- ----------------------------
INSERT INTO `ns_goods_category_block` VALUES ('5', '0', '洗发水', '6', '洗发水', '#ff0080', '1', '0', '0', '0', '', '1532157578', '1545640979', '洗发水', '0');
INSERT INTO `ns_goods_category_block` VALUES ('6', '0', '护发素', '11', '护发素', '#FFFFFF', '1', '0', '0', '0', '', '1533103763', '1543208799', '护发素', '0');
INSERT INTO `ns_goods_category_block` VALUES ('7', '0', '发膜/精油', '12', '发膜/精油', '#FFFFFF', '1', '0', '0', '0', '', '1533103780', '1543208815', '发膜/精', '0');
INSERT INTO `ns_goods_category_block` VALUES ('8', '0', '造型', '13', '造型', '#FFFFFF', '1', '0', '0', '0', '', '1533103874', '1543209028', '造型', '0');
INSERT INTO `ns_goods_category_block` VALUES ('9', '0', '染发', '24', '染发', '#FFFFFF', '1', '0', '0', '0', '', '1535613671', '1543208840', '染发', '0');
INSERT INTO `ns_goods_category_block` VALUES ('10', '0', '烫发', '25', '烫发', '#FFFFFF', '1', '0', '0', '0', '', '1542776310', '1543209039', '烫发', '0');
INSERT INTO `ns_goods_category_block` VALUES ('11', '0', '其他-课程', '26', '其他-课程', '#FFFFFF', '1', '0', '0', '0', '', '1543201807', '1544677987', '其他-课', '0');
INSERT INTO `ns_goods_category_block` VALUES ('13', '0', 'c', '28', 'c', '#FFFFFF', '1', '0', '0', '0', '', '1545015158', '0', 'c', '0');
INSERT INTO `ns_goods_category_block` VALUES ('16', '0', 'aa', '32', 'aa', '#FFFFFF', '1', '0', '0', '0', '', '1545016472', '0', 'aa', '0');
INSERT INTO `ns_goods_category_block` VALUES ('17', '0', '测试', '33', '测试', '#FFFFFF', '1', '0', '0', '0', '', '1545016497', '0', '测试', '0');

-- ----------------------------
-- Table structure for `ns_goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_comment`;
CREATE TABLE `ns_goods_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `create_time` int(11) DEFAULT '0' COMMENT '评论创建时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '评论状态 0未评论 1已评论',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品评论送积分记录表';

-- ----------------------------
-- Records of ns_goods_comment
-- ----------------------------
INSERT INTO `ns_goods_comment` VALUES ('1', '23', '0', '176', '1534582330', '1', '0.00');
INSERT INTO `ns_goods_comment` VALUES ('2', '23', '0', '183', '1534732927', '1', '10.00');
INSERT INTO `ns_goods_comment` VALUES ('3', '60', '0', '6', '1545726466', '1', '10.00');
INSERT INTO `ns_goods_comment` VALUES ('4', '60', '0', '7', '1545807133', '1', '10.00');

-- ----------------------------
-- Table structure for `ns_goods_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_deleted`;
CREATE TABLE `ns_goods_deleted` (
  `goods_id` int(10) NOT NULL DEFAULT '0' COMMENT '商品id(SKU)',
  `goods_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '店铺id',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类id',
  `category_id_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类id',
  `category_id_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类id',
  `category_id_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '三级分类id',
  `brand_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '品牌id',
  `group_id_array` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `promote_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销活动ID',
  `goods_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '实物或虚拟商品标志 1实物商品 0 虚拟商品 2 F码商品',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品原价格',
  `promotion_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `point_exchange_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 ',
  `point_exchange` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '购买商品赠送积分',
  `is_member_discount` int(1) NOT NULL DEFAULT '0' COMMENT '参与会员折扣',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `shipping_fee_id` int(11) NOT NULL DEFAULT '0' COMMENT '售卖区域id 物流模板id  ns_order_shipping_fee 表id',
  `stock` int(10) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `max_buy` int(11) NOT NULL DEFAULT '0' COMMENT '限购 0 不限购',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `min_stock_alarm` int(11) NOT NULL DEFAULT '0' COMMENT '库存预警值',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `collects` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `star` tinyint(3) unsigned NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluates` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT '0' COMMENT '分享数',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级地区id',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级地区id',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品主图',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '商家编号',
  `is_stock_visible` int(1) NOT NULL DEFAULT '0' COMMENT '页面不显示库存',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT '0' COMMENT '是否新品',
  `is_pre_sale` int(1) NOT NULL DEFAULT '0' COMMENT '是否预售',
  `is_bill` int(1) NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `state` tinyint(3) NOT NULL DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id_array` varchar(1000) DEFAULT NULL COMMENT '商品图片序列',
  `sku_img_array` varchar(1000) DEFAULT NULL COMMENT '商品sku应用图片列表  属性,属性值，图片ID',
  `match_point` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10,2) DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT '0' COMMENT '实际销量',
  `goods_attribute_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品类型',
  `goods_spec_format` text NOT NULL COMMENT '商品规格',
  `goods_weight` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量',
  `goods_volume` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积',
  `shipping_fee_type` int(11) NOT NULL DEFAULT '1' COMMENT '计价方式1.重量2.体积3.计件',
  `extend_category_id` varchar(255) DEFAULT NULL,
  `extend_category_id_1` varchar(255) DEFAULT NULL,
  `extend_category_id_2` varchar(255) DEFAULT NULL,
  `extend_category_id_3` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供货商id',
  `sale_date` int(11) DEFAULT '0' COMMENT '上下架时间',
  `create_time` int(11) DEFAULT '0' COMMENT '商品添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '商品编辑时间',
  `min_buy` int(11) NOT NULL DEFAULT '0' COMMENT '最少买几件',
  `virtual_goods_type_id` int(11) DEFAULT '0' COMMENT '虚拟商品类型id',
  `production_date` int(11) NOT NULL DEFAULT '0' COMMENT '生产日期',
  `shelf_life` varchar(50) NOT NULL DEFAULT '' COMMENT '保质期',
  `goods_video_address` varchar(455) NOT NULL DEFAULT '' COMMENT '商品视频地址，不为空时前台显示视频',
  `pc_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'pc端商品自定义模板',
  `wap_custom_template` varchar(255) NOT NULL DEFAULT '' COMMENT 'wap端商品自定义模板',
  `max_use_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分抵现最大可用积分数 0为不可使用',
  `is_open_presell` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支持预售',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间',
  `presell_day` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货天数',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '1' COMMENT '预售发货方式1. 按照预售发货时间 2.按照预售发货天数',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `goods_unit` varchar(20) NOT NULL DEFAULT '件' COMMENT '商品单位',
  `distribution_commission_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品分销比例',
  `is_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否分销',
  `goods_kind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商品种类 0 实物商品   1 预约商品',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 不允许删除  1 允许删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='商品回收站表';

-- ----------------------------
-- Records of ns_goods_deleted
-- ----------------------------
INSERT INTO `ns_goods_deleted` VALUES ('0', '', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', null, null, null, null, '0', '0', '', '0.00', '0.00', '1', null, null, null, null, '0', '0', '0', '1544681119', '0', '0', '0', '', '', '', '', '0', '0', '0', '0', '1', '0.00', '件', '0.00', '0', '0', '0');
INSERT INTO `ns_goods_deleted` VALUES ('0', '', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '0.00', '0.00', '0.00', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '1', '0', null, null, null, null, '0', '0', '', '0.00', '0.00', '1', null, null, null, null, '0', '0', '0', '1544681128', '0', '0', '0', '', '', '', '', '0', '0', '0', '0', '1', '0.00', '件', '0.00', '0', '0', '0');

-- ----------------------------
-- Table structure for `ns_goods_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_evaluate`;
CREATE TABLE `ns_goods_evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `order_no` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_image` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `shop_name` varchar(100) NOT NULL COMMENT '店铺名称',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '评价内容',
  `image` varchar(1000) NOT NULL DEFAULT '' COMMENT '评价图片',
  `explain_first` varchar(255) NOT NULL DEFAULT '' COMMENT '解释内容',
  `member_name` varchar(100) NOT NULL DEFAULT '' COMMENT '评价人名称',
  `uid` int(11) NOT NULL COMMENT '评价人编号',
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不是 1表示是匿名评价',
  `scores` tinyint(1) NOT NULL COMMENT '1-5分',
  `again_content` varchar(255) NOT NULL DEFAULT '' COMMENT '追加评价内容',
  `again_image` varchar(1000) NOT NULL DEFAULT '' COMMENT '追评评价图片',
  `again_explain` varchar(255) NOT NULL DEFAULT '' COMMENT '追加解释内容',
  `explain_type` int(11) DEFAULT '0' COMMENT '1好评2中评3差评',
  `is_show` int(1) DEFAULT '1' COMMENT '1显示 0隐藏',
  `addtime` int(11) DEFAULT '0' COMMENT '评价时间',
  `again_addtime` int(11) DEFAULT '0' COMMENT '追加评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='商品评价表';

-- ----------------------------
-- Records of ns_goods_evaluate
-- ----------------------------
INSERT INTO `ns_goods_evaluate` VALUES ('1', '6', '2147483647', '6', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '47.20', 'upload/goods/20181121/eac6d8e35f1f5ae7203232bb2f377370.jpg', '0', '默认', '东西不错,老婆一直说不错,还说下次还要', 'upload/common/1545726445.gif,upload/common/1545726455.jpg,upload/common/1545726463.jpeg', '谢谢,下次买给优惠哟哈哈', 'gygq', '60', '0', '5', '', '', '', '1', '0', '1545726466', '0');
INSERT INTO `ns_goods_evaluate` VALUES ('2', '7', '2147483647', '7', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '47.20', 'upload/goods/20181121/eac6d8e35f1f5ae7203232bb2f377370.jpg', '0', '默认', '我只是来试试的', 'upload/common/1545807130.gif', '', 'gygq', '60', '0', '5', '', '', '', '1', '1', '1545807133', '0');

-- ----------------------------
-- Table structure for `ns_goods_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_group`;
CREATE TABLE `ns_goods_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级id 最多2级',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '级别',
  `is_visible` int(1) NOT NULL DEFAULT '1' COMMENT '是否可视',
  `group_pic` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(11) DEFAULT NULL,
  `group_dec` varchar(500) NOT NULL DEFAULT '' COMMENT '标签描述',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=160 COMMENT='商品本店分类';

-- ----------------------------
-- Records of ns_goods_group
-- ----------------------------
INSERT INTO `ns_goods_group` VALUES ('1', '0', '热销榜', '0', '1', '1', '', '0', '');
INSERT INTO `ns_goods_group` VALUES ('2', '0', '店铺推荐', '0', '1', '1', 'upload/goods_group/1545009835.jpg', '0', '店铺推荐2s');
INSERT INTO `ns_goods_group` VALUES ('3', '0', '时尚美发', '0', '1', '1', 'upload/goods_group/1545009461.jpg', '0', '时尚美发');

-- ----------------------------
-- Table structure for `ns_goods_ladder_preferential`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_ladder_preferential`;
CREATE TABLE `ns_goods_ladder_preferential` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NOT NULL COMMENT '商品关联id',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `price` decimal(10,2) NOT NULL COMMENT '优惠价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品阶梯优惠';

-- ----------------------------
-- Records of ns_goods_ladder_preferential
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku`;
CREATE TABLE `ns_goods_sku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `sku_name` varchar(500) NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `attr_value_items` varchar(255) NOT NULL DEFAULT '' COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `attr_value_items_format` varchar(500) NOT NULL DEFAULT '' COMMENT '属性和属性值id串组合json格式',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一个sku编码, 可以加图片',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '商家编码',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `create_date` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_date` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=481 COMMENT='商品skui规格价格库存信息表';

-- ----------------------------
-- Records of ns_goods_sku
-- ----------------------------
INSERT INTO `ns_goods_sku` VALUES ('67', '50', '', '', '', '79.00', '59.00', '59.00', '0.00', '91', '0', '', '', '0', '1546415917');
INSERT INTO `ns_goods_sku` VALUES ('68', '35', '', '', '', '0.00', '108.00', '108.00', '0.00', '99', '0', '', '', '0', '1544497226');
INSERT INTO `ns_goods_sku` VALUES ('74', '55', '', '', '', '0.00', '100.00', '100.00', '0.00', '0', '0', '', '', '1545095487', '1545096034');
INSERT INTO `ns_goods_sku` VALUES ('75', '51', '', '', '', '100.00', '80.00', '80.00', '50.00', '1000', '0', '', '', '1546409144', '1546478196');

-- ----------------------------
-- Table structure for `ns_goods_sku_deleted`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_deleted`;
CREATE TABLE `ns_goods_sku_deleted` (
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT '表序号',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `sku_name` varchar(500) NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `attr_value_items` varchar(255) NOT NULL DEFAULT '' COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `attr_value_items_format` varchar(500) NOT NULL DEFAULT '' COMMENT '属性和属性值id串组合json格式',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT '如果是第一个sku编码, 可以加图片',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '商家编码',
  `QRcode` varchar(255) NOT NULL DEFAULT '' COMMENT '商品二维码',
  `create_date` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_date` int(11) DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='商品skui规格价格库存信息回收站表';

-- ----------------------------
-- Records of ns_goods_sku_deleted
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_sku_picture`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_picture`;
CREATE TABLE `ns_goods_sku_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT '主规格id',
  `spec_value_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格值id',
  `sku_img_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '图片id 多个用逗号隔开',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品sku多图';

-- ----------------------------
-- Records of ns_goods_sku_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_sku_picture_delete`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_sku_picture_delete`;
CREATE TABLE `ns_goods_sku_picture_delete` (
  `id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT '主规格id',
  `spec_value_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格值id',
  `sku_img_array` varchar(1000) NOT NULL DEFAULT '' COMMENT '图片id 多个用逗号隔开',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='商品sku多图';

-- ----------------------------
-- Records of ns_goods_sku_picture_delete
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_spec`;
CREATE TABLE `ns_goods_spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `spec_name` varchar(255) NOT NULL DEFAULT '' COMMENT '属性名称',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可视',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show_type` int(11) NOT NULL DEFAULT '1' COMMENT '展示方式 1 文字 2 颜色 3 图片',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `is_screen` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否参与筛选 0 不参与 1 参与',
  `spec_des` varchar(255) NOT NULL DEFAULT '' COMMENT '属性说明',
  PRIMARY KEY (`spec_id`),
  KEY `IDX_category_props_categoryId` (`shop_id`),
  KEY `IDX_category_props_orders` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 COMMENT='商品属性（规格）表';

-- ----------------------------
-- Records of ns_goods_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_goods_spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `ns_goods_spec_value`;
CREATE TABLE `ns_goods_spec_value` (
  `spec_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值ID',
  `spec_id` int(11) NOT NULL COMMENT '商品属性ID',
  `spec_value_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性值名称',
  `spec_value_data` varchar(255) NOT NULL DEFAULT '' COMMENT '商品属性值数据',
  `is_visible` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可视',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`spec_value_id`),
  KEY `IDX_category_propvalues_c_pId` (`spec_id`),
  KEY `IDX_category_propvalues_orders` (`sort`),
  KEY `IDX_category_propvalues_value` (`spec_value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='商品规格值模版表';

-- ----------------------------
-- Records of ns_goods_spec_value
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_member`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member`;
CREATE TABLE `ns_member` (
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `member_name` varchar(50) NOT NULL DEFAULT '' COMMENT '前台用户名',
  `member_level` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `memo` varchar(1000) DEFAULT NULL COMMENT '备注',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=147 COMMENT='前台用户表';

-- ----------------------------
-- Records of ns_member
-- ----------------------------
INSERT INTO `ns_member` VALUES ('8', 'gao123', '0', null, '1532163700');
INSERT INTO `ns_member` VALUES ('9', 'hu123', '0', null, '1532309779');
INSERT INTO `ns_member` VALUES ('10', 'ss', '0', null, '1532399689');
INSERT INTO `ns_member` VALUES ('23', 'wocesi', '2', null, '1532658530');
INSERT INTO `ns_member` VALUES ('24', 'gpg', '0', null, '1533367404');
INSERT INTO `ns_member` VALUES ('25', 'cs1', '0', null, '1533368288');
INSERT INTO `ns_member` VALUES ('26', 'cs2', '0', null, '1533369800');
INSERT INTO `ns_member` VALUES ('27', 'cs3', '0', null, '1533370163');
INSERT INTO `ns_member` VALUES ('28', 'cs1', '0', null, '1533370281');
INSERT INTO `ns_member` VALUES ('29', 'cs2', '0', null, '1533370467');
INSERT INTO `ns_member` VALUES ('30', 'cs3', '0', null, '1533373222');
INSERT INTO `ns_member` VALUES ('31', 'cs3', '0', null, '1533373288');
INSERT INTO `ns_member` VALUES ('32', 'cs4', '0', null, '1533373437');
INSERT INTO `ns_member` VALUES ('33', 'cs1', '0', null, '1533373966');
INSERT INTO `ns_member` VALUES ('34', 'cs2', '0', null, '1533374021');
INSERT INTO `ns_member` VALUES ('35', 'cs1', '0', null, '1533374078');
INSERT INTO `ns_member` VALUES ('36', 'cs1', '0', null, '1533374149');
INSERT INTO `ns_member` VALUES ('37', 'cs1', '0', null, '1533374408');
INSERT INTO `ns_member` VALUES ('38', 'cs1', '0', null, '1533374538');
INSERT INTO `ns_member` VALUES ('39', 'cs1', '0', null, '1533374589');
INSERT INTO `ns_member` VALUES ('40', 'cs2', '0', null, '1533374747');
INSERT INTO `ns_member` VALUES ('41', 'cs3', '0', null, '1533374877');
INSERT INTO `ns_member` VALUES ('42', 'cs4', '0', null, '1533374906');
INSERT INTO `ns_member` VALUES ('43', 'c3', '0', null, '1533522446');
INSERT INTO `ns_member` VALUES ('44', 'c4', '0', null, '1533522479');
INSERT INTO `ns_member` VALUES ('45', 'c5', '0', null, '1533522504');
INSERT INTO `ns_member` VALUES ('46', 'c6', '0', null, '1533522535');
INSERT INTO `ns_member` VALUES ('47', 'c7', '0', null, '1533522559');
INSERT INTO `ns_member` VALUES ('48', 'c1', '0', null, '1533522615');
INSERT INTO `ns_member` VALUES ('49', 'c2', '0', null, '1533524792');
INSERT INTO `ns_member` VALUES ('50', 'c3', '0', null, '1533524875');
INSERT INTO `ns_member` VALUES ('51', 'c4', '0', null, '1533524944');
INSERT INTO `ns_member` VALUES ('52', 'c5', '0', null, '1533525005');
INSERT INTO `ns_member` VALUES ('53', 'c6', '0', null, '1533525049');
INSERT INTO `ns_member` VALUES ('54', 'c7', '0', null, '1533525067');
INSERT INTO `ns_member` VALUES ('55', 'c8', '0', null, '1533525198');
INSERT INTO `ns_member` VALUES ('56', 'ddw', '1', null, '1533533541');
INSERT INTO `ns_member` VALUES ('59', 'wjxit', '0', null, '1534813172');
INSERT INTO `ns_member` VALUES ('60', 'gygq', '2', null, '1538095839');
INSERT INTO `ns_member` VALUES ('63', '19967456398', '0', null, '1539077880');
INSERT INTO `ns_member` VALUES ('92', 'hgg', '0', null, '1542764899');
INSERT INTO `ns_member` VALUES ('93', 'wgpj', '0', null, '1544505855');
INSERT INTO `ns_member` VALUES ('94', 'whg', '0', null, '1544506246');

-- ----------------------------
-- Table structure for `ns_member_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_account`;
CREATE TABLE `ns_member_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员uid',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '购物币',
  `member_cunsum` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '会员消费',
  `member_sum_point` int(11) NOT NULL DEFAULT '0' COMMENT '会员累计积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276 COMMENT='会员账户统计表';

-- ----------------------------
-- Records of ns_member_account
-- ----------------------------
INSERT INTO `ns_member_account` VALUES ('77', '60', '0', '0', '920.00', '0', '0.00', '0');

-- ----------------------------
-- Table structure for `ns_member_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_account_records`;
CREATE TABLE `ns_member_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `account_type` int(11) NOT NULL DEFAULT '1' COMMENT '账户类型1.积分2.余额3.购物币4.分销佣金',
  `sign` smallint(6) NOT NULL DEFAULT '1' COMMENT '正负号',
  `number` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '数量',
  `from_type` smallint(6) NOT NULL DEFAULT '0' COMMENT '产生方式1.商城订单2.订单退还3.兑换4.充值5.签到6.分享7.注册8.提现9提现退还10.佣金提现11.佣金提现退还',
  `data_id` int(11) NOT NULL DEFAULT '0' COMMENT '相关表的数据ID',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '数据相关内容描述文本',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=108 COMMENT='会员流水账表';

-- ----------------------------
-- Records of ns_member_account_records
-- ----------------------------
INSERT INTO `ns_member_account_records` VALUES ('406', '56', '0', '2', '0', '-102.60', '1', '2', '商城订单', '1544497255');
INSERT INTO `ns_member_account_records` VALUES ('407', '93', '0', '1', '1', '10.00', '7', '0', '注册会员赠送积分', '1544505855');
INSERT INTO `ns_member_account_records` VALUES ('408', '93', '0', '2', '1', '3000.00', '10', '0', '', '1544505918');
INSERT INTO `ns_member_account_records` VALUES ('409', '93', '0', '2', '0', '-59.00', '1', '3', '商城订单', '1544506090');
INSERT INTO `ns_member_account_records` VALUES ('410', '94', '0', '1', '1', '10.00', '7', '0', '注册会员赠送积分', '1544506246');
INSERT INTO `ns_member_account_records` VALUES ('411', '94', '0', '2', '1', '1000.00', '10', '0', '', '1544506287');
INSERT INTO `ns_member_account_records` VALUES ('412', '94', '0', '2', '0', '-59.00', '1', '4', '商城订单', '1544506345');
INSERT INTO `ns_member_account_records` VALUES ('413', '94', '0', '2', '0', '-59.00', '1', '5', '商城订单', '1544506387');
INSERT INTO `ns_member_account_records` VALUES ('414', '60', '0', '1', '1', '10.00', '20', '0', '评论赠送积分', '1545726466');
INSERT INTO `ns_member_account_records` VALUES ('415', '60', '0', '1', '1', '10.00', '20', '0', '评论赠送积分', '1545807133');
INSERT INTO `ns_member_account_records` VALUES ('416', '60', '0', '2', '0', '-100.00', '8', '1', '会员余额提现', '1545873317');
INSERT INTO `ns_member_account_records` VALUES ('417', '60', '0', '2', '0', '-200.00', '8', '2', '会员余额提现', '1545873341');
INSERT INTO `ns_member_account_records` VALUES ('418', '60', '0', '2', '0', '-100.00', '8', '3', '会员余额提现', '1545876076');
INSERT INTO `ns_member_account_records` VALUES ('419', '60', '0', '2', '0', '-100.00', '8', '4', '会员余额提现', '1545876361');
INSERT INTO `ns_member_account_records` VALUES ('420', '60', '0', '2', '0', '-20.00', '8', '5', '会员余额提现', '1545876454');
INSERT INTO `ns_member_account_records` VALUES ('421', '60', '0', '2', '0', '-10.00', '8', '6', '会员余额提现', '1545876850');
INSERT INTO `ns_member_account_records` VALUES ('422', '60', '0', '2', '0', '-6.00', '8', '7', '会员余额提现', '1545876909');
INSERT INTO `ns_member_account_records` VALUES ('423', '60', '0', '2', '0', '-200.00', '8', '8', '会员余额提现', '1545877570');
INSERT INTO `ns_member_account_records` VALUES ('424', '60', '0', '2', '0', '-200.00', '8', '9', '会员余额提现', '1545877603');
INSERT INTO `ns_member_account_records` VALUES ('425', '60', '0', '2', '0', '-200.00', '8', '10', '会员余额提现', '1545877620');
INSERT INTO `ns_member_account_records` VALUES ('426', '60', '0', '2', '0', '-47.20', '1', '10', '商城订单', '1546399869');
INSERT INTO `ns_member_account_records` VALUES ('427', '60', '0', '2', '0', '-47.20', '1', '13', '商城订单', '1546404613');
INSERT INTO `ns_member_account_records` VALUES ('428', '60', '0', '2', '0', '-10.00', '1', '15', '商城订单', '1546405812');
INSERT INTO `ns_member_account_records` VALUES ('429', '60', '0', '2', '0', '-47.20', '1', '16', '商城订单', '1546406439');
INSERT INTO `ns_member_account_records` VALUES ('430', '60', '0', '2', '1', '10.00', '2', '15', '商城订单关闭返还平台余额', '1546409517');
INSERT INTO `ns_member_account_records` VALUES ('431', '60', '0', '2', '0', '200.00', '1', '65', '课程订单', '1546677670');
INSERT INTO `ns_member_account_records` VALUES ('432', '60', '0', '2', '1', '5000.00', '10', '0', '', '1546678028');
INSERT INTO `ns_member_account_records` VALUES ('433', '60', '0', '2', '0', '-150.00', '1', '71', '课程订单', '1546678192');
INSERT INTO `ns_member_account_records` VALUES ('434', '60', '0', '2', '1', '5000.00', '10', '0', '', '1546678426');
INSERT INTO `ns_member_account_records` VALUES ('435', '60', '0', '2', '0', '-200.00', '1', '74', '课程订单', '1546678459');
INSERT INTO `ns_member_account_records` VALUES ('436', '60', '0', '2', '0', '-200.00', '1', '75', '课程订单', '1546678481');
INSERT INTO `ns_member_account_records` VALUES ('437', '60', '0', '2', '0', '-200.00', '1', '77', '课程订单', '1546678564');
INSERT INTO `ns_member_account_records` VALUES ('438', '60', '0', '2', '0', '-160.00', '1', '76', '课程订单付款', '1546839354');
INSERT INTO `ns_member_account_records` VALUES ('439', '60', '0', '2', '0', '-160.00', '1', '95', '课程订单', '1546840918');
INSERT INTO `ns_member_account_records` VALUES ('440', '60', '0', '2', '0', '-160.00', '1', '96', '课程订单', '1546840998');
INSERT INTO `ns_member_account_records` VALUES ('441', '60', '0', '2', '0', '-160.00', '1', '97', '课程订单', '1546841045');
INSERT INTO `ns_member_account_records` VALUES ('442', '60', '0', '2', '0', '-160.00', '1', '98', '课程订单', '1546841172');
INSERT INTO `ns_member_account_records` VALUES ('443', '60', '0', '2', '0', '-160.00', '1', '103', '课程订单付款', '1546841835');
INSERT INTO `ns_member_account_records` VALUES ('444', '60', '0', '2', '0', '-160.00', '1', '105', '课程订单', '1546843883');
INSERT INTO `ns_member_account_records` VALUES ('445', '60', '0', '2', '0', '-120.00', '1', '108', '课程订单付款', '1546846185');
INSERT INTO `ns_member_account_records` VALUES ('446', '60', '0', '2', '0', '-160.00', '1', '109', '课程订单付款', '1546846283');
INSERT INTO `ns_member_account_records` VALUES ('447', '60', '0', '2', '0', '-160.00', '1', '110', '课程订单', '1546846446');
INSERT INTO `ns_member_account_records` VALUES ('448', '60', '0', '2', '0', '-120.00', '1', '113', '课程订单', '1546850309');
INSERT INTO `ns_member_account_records` VALUES ('449', '60', '0', '2', '0', '-200.00', '8', '11', '会员余额提现', '1546851821');
INSERT INTO `ns_member_account_records` VALUES ('450', '60', '0', '2', '0', '-160.00', '1', '114', '课程订单', '1546914674');
INSERT INTO `ns_member_account_records` VALUES ('451', '60', '0', '2', '0', '-120.00', '1', '115', '课程订单', '1546924613');
INSERT INTO `ns_member_account_records` VALUES ('453', '60', '0', '2', '0', '-160.00', '1', '117', '课程订单', '1546925600');
INSERT INTO `ns_member_account_records` VALUES ('454', '60', '0', '2', '0', '-160.00', '1', '118', '课程订单', '1546927307');
INSERT INTO `ns_member_account_records` VALUES ('455', '60', '0', '2', '0', '-160.00', '1', '119', '课程订单', '1546927378');
INSERT INTO `ns_member_account_records` VALUES ('457', '60', '0', '2', '0', '-160.00', '1', '121', '课程订单', '1546927442');
INSERT INTO `ns_member_account_records` VALUES ('459', '60', '0', '2', '0', '-160.00', '1', '123', '课程订单', '1546927548');
INSERT INTO `ns_member_account_records` VALUES ('460', '60', '0', '2', '0', '-120.00', '1', '124', '课程订单', '1546927685');
INSERT INTO `ns_member_account_records` VALUES ('462', '60', '0', '2', '0', '-120.00', '1', '126', '课程订单', '1546928096');
INSERT INTO `ns_member_account_records` VALUES ('464', '60', '0', '2', '0', '-120.00', '1', '128', '课程订单', '1546929126');
INSERT INTO `ns_member_account_records` VALUES ('465', '60', '0', '2', '0', '-160.00', '1', '129', '课程订单', '1546929152');

-- ----------------------------
-- Table structure for `ns_member_balance_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_balance_withdraw`;
CREATE TABLE `ns_member_balance_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺编号',
  `withdraw_no` varchar(255) NOT NULL DEFAULT '' COMMENT '提现流水号',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `bank_name` varchar(50) NOT NULL COMMENT '提现银行名称',
  `account_number` varchar(50) NOT NULL COMMENT '提现银行账号',
  `realname` varchar(10) NOT NULL COMMENT '提现账户姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `cash` decimal(10,2) NOT NULL COMMENT '提现金额',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前状态 0已申请(等待处理) 1已同意 -1 已拒绝',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ask_for_date` int(11) DEFAULT '0' COMMENT '提现日期',
  `payment_date` int(11) DEFAULT '0' COMMENT '到账日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  `transfer_type` int(11) NOT NULL DEFAULT '1' COMMENT '转账方式   1 线下转账  2线上转账',
  `transfer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '转账银行名称',
  `transfer_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转账金额',
  `transfer_status` int(11) DEFAULT '0' COMMENT '转账状态 0未转账 1已转账 -1转账失败',
  `transfer_remark` varchar(255) DEFAULT '' COMMENT '转账备注',
  `transfer_result` varchar(255) DEFAULT '' COMMENT '转账结果',
  `transfer_no` varchar(255) DEFAULT '' COMMENT '转账流水号',
  `transfer_account_no` varchar(255) DEFAULT '' COMMENT '转账银行账号',
  `type` tinyint(1) DEFAULT '0' COMMENT '0 会员提现  1佣金提现',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='会员余额提现记录表';

-- ----------------------------
-- Records of ns_member_balance_withdraw
-- ----------------------------
INSERT INTO `ns_member_balance_withdraw` VALUES ('1', '0', '1545873317515', '60', '支付宝', '123456', '张小林', '18356985214', '100.00', '0', '', '1545873317', '0', '1545873317', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('2', '0', '1545873341923', '60', '支付宝', '123456', '张小林', '18356985214', '200.00', '0', '', '1545873341', '0', '1545873341', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('3', '0', '1545876076652', '60', '支付宝', '123456', '张小林', '18356985214', '100.00', '0', '', '1545876076', '0', '1545876076', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('4', '0', '1545876361125', '60', '支付宝', '123456', '张小林', '18356985214', '100.00', '0', '', '1545876361', '0', '1545876361', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('5', '0', '1545876454250', '60', '支付宝', '123456', '张小林', '18356985214', '20.00', '0', '', '1545876454', '0', '1545876454', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('6', '0', '1545876850149', '60', '支付宝', '123456', '张小林', '18356985214', '10.00', '0', '', '1545876850', '0', '1545876850', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('7', '0', '1545876909606', '60', '支付宝', '123456', '张小林', '18356985214', '6.00', '0', '', '1545876909', '0', '1545876909', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('8', '0', '1545877570374', '60', '支付宝', '123456', '张小林', '18356985214', '200.00', '0', '', '1545877570', '0', '1545877570', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('9', '0', '1545877603137', '60', '支付宝', '123456', '张小林', '18356985214', '200.00', '0', '', '1545877603', '0', '1545877603', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('10', '0', '1545877620713', '60', '支付宝', '123456', '张小林', '18356985214', '200.00', '0', '', '1545877620', '0', '1545877620', '1', '', '0.00', '0', '', '', '', '', '0');
INSERT INTO `ns_member_balance_withdraw` VALUES ('11', '0', '1546851821140', '60', '支付宝', '1234567', '张小林', '18356985214', '200.00', '0', '', '1546851821', '0', '1546851821', '1', '', '0.00', '0', '', '', '', '', '0');

-- ----------------------------
-- Table structure for `ns_member_bank_account`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_bank_account`;
CREATE TABLE `ns_member_bank_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员id',
  `branch_bank_name` varchar(50) DEFAULT NULL COMMENT '支行信息',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `account_number` varchar(50) NOT NULL DEFAULT '' COMMENT '银行账号',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否默认账号',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  `account_type` int(11) DEFAULT '1' COMMENT '账户类型，1：银行卡，2：微信，3：支付宝',
  `account_type_name` varchar(30) DEFAULT '银行卡' COMMENT '账户类型名称：银行卡，微信，支付宝',
  PRIMARY KEY (`id`),
  KEY `IDX_member_bank_account_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员提现账号';

-- ----------------------------
-- Records of ns_member_bank_account
-- ----------------------------
INSERT INTO `ns_member_bank_account` VALUES ('2', '60', '', '张小林', '1234567', '18356985214', '1', '1545873299', '1545881560', '3', '支付宝');

-- ----------------------------
-- Table structure for `ns_member_express_address`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_express_address`;
CREATE TABLE `ns_member_express_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员基本资料表ID',
  `consigner` varchar(255) NOT NULL DEFAULT '' COMMENT '收件人',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '固定电话',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `district` int(11) NOT NULL DEFAULT '0' COMMENT '区县',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `zip_code` varchar(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `alias` varchar(50) NOT NULL DEFAULT '' COMMENT '地址别名',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '默认收货地址',
  PRIMARY KEY (`id`),
  KEY `IDX_member_express_address_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='会员收货地址管理';

-- ----------------------------
-- Records of ns_member_express_address
-- ----------------------------
INSERT INTO `ns_member_express_address` VALUES ('5', '4', '匿名', '18356985698', '8807456', '24', '259', '2250', '东湖大道', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('6', '8', '匿名', '18356985214', '880715', '21', '232', '1978', '东湖大道', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('8', '23', '高月明', '18356985471', '8874536', '25', '272', '2378', '高沙路', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('9', '56', '胡策司', '18358249108', '8807456', '20', '230', '1965', '北明路', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('10', '9', '李林', '18356985210', '880714', '22', '234', '2026', '东钱湖', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('11', '60', '李银河', '18312345678', '', '19', '210', '1840', '东钱湖', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('12', '92', '高一鸣', '18356985214', '', '22', '234', '2026', '东湖', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('13', '93', '高天实', '18356985214', '', '25', '275', '2406', '东钱湖', '', '', '1');
INSERT INTO `ns_member_express_address` VALUES ('14', '94', '林', '18356985214', '', '21', '233', '1998', '东湖', '', '', '1');

-- ----------------------------
-- Table structure for `ns_member_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_favorites`;
CREATE TABLE `ns_member_favorites` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `fav_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品或店铺ID',
  `fav_type` varchar(20) NOT NULL DEFAULT 'goods' COMMENT '类型:goods为商品,shop为店铺,默认为商品',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `shop_name` varchar(20) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `shop_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺logo',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` varchar(300) DEFAULT NULL,
  `log_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品收藏时价格',
  `log_msg` varchar(1000) NOT NULL DEFAULT '' COMMENT '收藏备注',
  `fav_time` int(11) DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='收藏表';

-- ----------------------------
-- Records of ns_member_favorites
-- ----------------------------
INSERT INTO `ns_member_favorites` VALUES ('7', '60', '29', 'goods', '0', '齐刘海', 'upload/common/1544493306.png', '阿道夫( ADOLPH)官方旗舰店洗发水洗发露护发素', 'upload/goods/20181121/44618f32f08ca08d3c3d58e9dfefb4513.jpg', '119.00', '阿道夫( ADOLPH)官方旗舰店洗发水洗发露护发素', '1544509783');
INSERT INTO `ns_member_favorites` VALUES ('8', '23', '35', 'goods', '0', '齐刘海', 'upload/common/1544493306.png', '施华蔻专业( SchwarzkopfProfessional )尚丝', 'upload/goods/20181121/9a7dd55cae9f0d1e781292bc8b2065363.jpg', '108.00', '施华蔻专业( SchwarzkopfProfessional )尚丝', '1544512216');

-- ----------------------------
-- Table structure for `ns_member_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_gift`;
CREATE TABLE `ns_member_gift` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `promotion_gift_id` int(11) NOT NULL COMMENT '赠品活动ID',
  `goods_id` int(11) NOT NULL COMMENT '赠品ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '赠品名称',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '赠品图片',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '赠品数量',
  `get_type` int(11) NOT NULL DEFAULT '1' COMMENT '获取方式',
  `get_type_id` int(11) NOT NULL COMMENT '获取方式对应ID',
  `desc` text NOT NULL COMMENT '说明',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员赠品表';

-- ----------------------------
-- Records of ns_member_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_member_level`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_level`;
CREATE TABLE `ns_member_level` (
  `level_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '等级ID',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `level_name` varchar(50) NOT NULL DEFAULT '' COMMENT '等级名称',
  `min_integral` int(11) NOT NULL DEFAULT '0' COMMENT '累计积分',
  `goods_discount` decimal(3,2) NOT NULL DEFAULT '1.00' COMMENT '折扣率',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '等级描述',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否是默认',
  `quota` int(11) NOT NULL DEFAULT '0' COMMENT '消费额度',
  `upgrade` int(11) NOT NULL COMMENT '升级条件  1.累计积分 2.消费额度 3.同时满足',
  `relation` int(11) NOT NULL DEFAULT '1' COMMENT '1.或 2. 且',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员等级';

-- ----------------------------
-- Records of ns_member_level
-- ----------------------------
INSERT INTO `ns_member_level` VALUES ('1', '0', '普通会员', '100', '0.95', '该会员等级的用户可以以商品原价的95%购买', '0', '100', '3', '2');
INSERT INTO `ns_member_level` VALUES ('2', '0', '银牌', '100', '0.80', '该会员等级的用户可以以商品原价的80%购买', '0', '100', '3', '1');
INSERT INTO `ns_member_level` VALUES ('3', '0', '金牌', '1000', '0.60', '该会员等级的用户可以以商品原价的60%购买', '0', '1000', '3', '2');
INSERT INTO `ns_member_level` VALUES ('4', '0', '钻石', '10000', '0.20', '该会员等级的用户可以以商品原价的20%购买', '0', '10000', '3', '1');

-- ----------------------------
-- Table structure for `ns_member_recharge`
-- ----------------------------
DROP TABLE IF EXISTS `ns_member_recharge`;
CREATE TABLE `ns_member_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recharge_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `uid` varchar(255) NOT NULL COMMENT '用户uid',
  `out_trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '支付流水号',
  `create_time` varchar(255) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `is_pay` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否支付',
  `status` varchar(255) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='会员充值余额记录';

-- ----------------------------
-- Records of ns_member_recharge
-- ----------------------------
INSERT INTO `ns_member_recharge` VALUES ('1', '100.00', '60', '154587335593661000', '0', '0', '0');

-- ----------------------------
-- Table structure for `ns_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ns_notice`;
CREATE TABLE `ns_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `notice_title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `notice_content` text NOT NULL COMMENT '公告内容',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺公告表';

-- ----------------------------
-- Records of ns_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_distribution_area`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_area`;
CREATE TABLE `ns_o2o_distribution_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店或者店铺id',
  `province_id` text COMMENT '省id',
  `city_id` text COMMENT '市id',
  `district_id` text COMMENT '区县id',
  `community_id` text COMMENT '社区乡镇id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送区域管理';

-- ----------------------------
-- Records of ns_o2o_distribution_area
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_distribution_config`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_config`;
CREATE TABLE `ns_o2o_distribution_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '门店或者店铺id',
  `order_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `freight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `is_start` int(11) NOT NULL DEFAULT '0' COMMENT '是否是起步价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送费用设置';

-- ----------------------------
-- Records of ns_o2o_distribution_config
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_distribution_user`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_distribution_user`;
CREATE TABLE `ns_o2o_distribution_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员姓名',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员电话',
  `remark` text COMMENT '配送人员备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送人员管理';

-- ----------------------------
-- Records of ns_o2o_distribution_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_o2o_order_delivery`
-- ----------------------------
DROP TABLE IF EXISTS `ns_o2o_order_delivery`;
CREATE TABLE `ns_o2o_order_delivery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `express_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `order_delivery_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '配送人员id',
  `order_delivery_user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员姓名',
  `order_delivery_user_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '配送人员电话',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='o2o订单配送';

-- ----------------------------
-- Records of ns_o2o_order_delivery
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_offpay_area`
-- ----------------------------
DROP TABLE IF EXISTS `ns_offpay_area`;
CREATE TABLE `ns_offpay_area` (
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺Id',
  `province_id` text COMMENT '省Id组合',
  `city_id` text COMMENT '市Id组合',
  `district_id` text COMMENT '县Id组合'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='货到付款支持地区表';

-- ----------------------------
-- Records of ns_offpay_area
-- ----------------------------
INSERT INTO `ns_offpay_area` VALUES ('0', '14', '133,134,132,131,124,125,126,127,128,129,130', '1201,1212,1213,1214,1215,1216,1217,1218,1219,1211,1210,1202,1203,1204,1205,1206,1207,1208,1209,1220,1221,1222,1160,1171,1172,1173,1174,1175,1176,1177,1178,1170,1169,1161,1162,1163,1164,1165,1166,1167,1168,1179,1180,1181,1192,1193,1194,1195,1196,1197,1198,1199,1191,1190,1182,1183,1184,1185,1186,1187,1188,1189,1200,1159,1129,1130,1131,1132,1133,1134,1135,1136,1128,1127,1124,1125,1126,1137,1138,1139,1150,1151,1152,1153,1154,1155,1156,1157,1149,1148,1140,1141,1142,1143,1144,1145,1146,1147,1158');

-- ----------------------------
-- Table structure for `ns_order`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order`;
CREATE TABLE `ns_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` varchar(255) DEFAULT '' COMMENT '订单编号',
  `out_trade_no` varchar(100) NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `order_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型。取值范围：\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN (微信自有支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWEIXIN_DAIXIAO (微信代销支付)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nALIPAY (支付宝支付)',
  `shipping_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '订单配送方式',
  `order_from` varchar(255) NOT NULL DEFAULT '' COMMENT '订单来源',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `buyer_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '买家ip',
  `buyer_message` varchar(255) NOT NULL DEFAULT '' COMMENT '买家附言',
  `buyer_invoice` varchar(255) NOT NULL DEFAULT '' COMMENT '买家发票信息',
  `receiver_mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '收货人的手机号码',
  `receiver_province` int(11) NOT NULL COMMENT '收货人所在省',
  `receiver_city` int(11) NOT NULL COMMENT '收货人所在城市',
  `receiver_district` int(11) NOT NULL COMMENT '收货人所在街道',
  `receiver_address` varchar(255) NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `receiver_zip` varchar(6) NOT NULL DEFAULT '' COMMENT '收货人邮编',
  `receiver_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `shop_id` int(11) NOT NULL COMMENT '卖家店铺id',
  `shop_name` varchar(100) NOT NULL DEFAULT '' COMMENT '卖家店铺名称',
  `seller_star` tinyint(4) NOT NULL DEFAULT '0' COMMENT '卖家对订单的标注星标',
  `seller_memo` varchar(255) NOT NULL DEFAULT '' COMMENT '卖家对订单的备注',
  `consign_time_adjust` int(11) NOT NULL DEFAULT '0' COMMENT '卖家延迟发货时间',
  `goods_money` decimal(19,2) NOT NULL COMMENT '商品总价',
  `order_money` decimal(10,2) NOT NULL COMMENT '订单总价',
  `point` int(11) NOT NULL COMMENT '订单消耗积分',
  `point_money` decimal(10,2) NOT NULL COMMENT '订单消耗积分抵多少钱',
  `coupon_money` decimal(10,2) NOT NULL COMMENT '订单代金券支付金额',
  `coupon_id` int(11) NOT NULL COMMENT '订单代金券id',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单余额支付金额',
  `user_platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '用户平台余额支付',
  `promotion_money` decimal(10,2) NOT NULL COMMENT '订单优惠活动金额',
  `shipping_money` decimal(10,2) NOT NULL COMMENT '订单运费',
  `pay_money` decimal(10,2) NOT NULL COMMENT '订单实付金额',
  `refund_money` decimal(10,2) NOT NULL COMMENT '订单退款金额',
  `coin_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购物币金额',
  `give_point` int(11) NOT NULL COMMENT '订单赠送积分',
  `give_coin` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单成功之后返购物币',
  `order_status` tinyint(4) NOT NULL COMMENT '订单状态',
  `pay_status` tinyint(4) NOT NULL COMMENT '订单付款状态',
  `shipping_status` tinyint(4) NOT NULL COMMENT '订单配送状态',
  `review_status` tinyint(4) NOT NULL COMMENT '订单评价状态',
  `feedback_status` tinyint(4) NOT NULL COMMENT '订单维权状态',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `tax_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_company_id` int(11) NOT NULL DEFAULT '0' COMMENT '配送物流公司ID',
  `give_point_type` int(11) NOT NULL DEFAULT '1' COMMENT '积分返还类型 1 订单完成  2 订单收货 3  支付订单',
  `pay_time` int(11) DEFAULT '0' COMMENT '订单付款时间',
  `shipping_time` int(11) DEFAULT '0' COMMENT '买家要求配送时间',
  `sign_time` int(11) DEFAULT '0' COMMENT '买家签收时间',
  `consign_time` int(11) DEFAULT '0' COMMENT '卖家发货时间',
  `create_time` int(11) DEFAULT '0' COMMENT '订单创建时间',
  `finish_time` int(11) DEFAULT '0' COMMENT '订单完成时间',
  `is_deleted` int(1) NOT NULL DEFAULT '0' COMMENT '订单是否已删除',
  `operator_type` int(1) NOT NULL DEFAULT '0' COMMENT '操作人类型  1店铺  2用户',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `fixed_telephone` varchar(50) NOT NULL DEFAULT '' COMMENT '固定电话',
  `commission` decimal(10,2) DEFAULT '0.00' COMMENT '订单佣金',
  PRIMARY KEY (`order_id`),
  KEY `UK_ns_order_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_order_no` (`order_no`),
  KEY `UK_ns_order_pay_status` (`pay_status`),
  KEY `UK_ns_order_status` (`order_status`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=440 COMMENT='订单表';

-- ----------------------------
-- Records of ns_order
-- ----------------------------
INSERT INTO `ns_order` VALUES ('1', '2018121015180001', '154442628127581000', '1', '0', '1', '2', '56', '其实这不是真的', '1', '', '', '18358249108', '20', '230', '1965', '广西壮族自治区&nbsp;来宾市&nbsp;忻城县&nbsp;北明路', '', '胡策司', '0', '齐刘海', '0', '', '0', '75.05', '75.05', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '75.05', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1544426282', '0', '0', '0', '0', '0.00', '8807456', '0.00');
INSERT INTO `ns_order` VALUES ('2', '2018121111000001', '154449725513681000', '1', '5', '1', '2', '56', '其实这不是真的', '1', '', '', '18358249108', '20', '230', '1965', '广西壮族自治区&nbsp;来宾市&nbsp;忻城县&nbsp;北明路', '', '胡策司', '0', '齐刘海', '0', '', '0', '102.60', '102.60', '0', '0.00', '0.00', '0', '0.00', '102.60', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1544497255', '0', '0', '0', '1544497255', '0', '0', '0', '0', '0.00', '8807456', '0.00');
INSERT INTO `ns_order` VALUES ('3', '2018121113280001', '154450609018211000', '1', '5', '1', '2', '93', 'wgpj', '1', '', '', '18356985214', '25', '275', '2406', '云南省&nbsp;文山壮族苗族自治州&nbsp;麻栗坡县&nbsp;东钱湖', '', '高天实', '0', '齐刘海', '0', '', '0', '59.00', '59.00', '0', '0.00', '0.00', '0', '0.00', '59.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1544506091', '0', '0', '0', '1544506090', '0', '0', '0', '0', '0.00', '', '11.80');
INSERT INTO `ns_order` VALUES ('4', '2018121113320001', '154450634563751000', '1', '5', '1', '2', '94', 'whg', '1', '', '', '18356985214', '21', '233', '1998', '海南省&nbsp;三亚市&nbsp;南沙群岛&nbsp;东湖', '', '林', '0', '齐刘海', '0', '', '0', '59.00', '59.00', '0', '0.00', '0.00', '0', '0.00', '59.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1544506346', '0', '0', '0', '1544506345', '0', '0', '0', '0', '0.00', '', '11.80');
INSERT INTO `ns_order` VALUES ('5', '2018121113330001', '154450638662341000', '1', '5', '1', '2', '94', 'whg', '1', '', '', '18356985214', '21', '233', '1998', '海南省&nbsp;三亚市&nbsp;南沙群岛&nbsp;东湖', '', '林', '0', '齐刘海', '0', '', '0', '59.00', '59.00', '0', '0.00', '0.00', '0', '0.00', '59.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1544506387', '0', '0', '0', '1544506387', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('6', '2018122516250001', '154572630074451000', '1', '1', '1', '3', '60', 'gygq', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '0.00', '0', '0.00', '120.00', '46', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '4', '2', '2', '0', '0', '1', '0.00', '3', '3', '1545726300', '0', '1545726340', '1545726334', '1545726300', '1545726368', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('7', '2018122516290001', '154572659466141000', '1', '1', '1', '3', '60', 'gygq', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '0.00', '0', '0.00', '120.00', '47', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '4', '2', '2', '0', '0', '1', '0.00', '3', '3', '1545726595', '0', '1545726623', '1545726618', '1545726595', '1545726661', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('8', '2018122716510001', '154590068556861000', '1', '1', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '0.00', '0', '0.00', '150.00', '21', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1545900685', '0', '0', '0', '1545900685', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('9', '2018122716520001', '154590071342251000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '47.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1545900720', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('10', '2019010211310001', '154639986965451000', '1', '5', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '47.20', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1546399870', '0', '0', '0', '1546399869', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('11', '2019010212450001', '154640435184371000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '47.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1546404351', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('12', '2019010212490001', '154640459522761000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '47.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1546404596', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('13', '2019010212500001', '154640461334381000', '1', '5', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '47.20', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1546404614', '0', '0', '0', '1546404613', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('14', '2019010213090001', '154640578654131000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '47.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1546405786', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('15', '2019010213100001', '154640581250961000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '10.00', '0.00', '0.00', '37.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1546405812', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('16', '2019010213200001', '154640643913461000', '1', '5', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', 'aa', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '47.20', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '1', '2', '0', '0', '0', '0', '0.00', '3', '3', '1546406439', '0', '0', '0', '1546406439', '0', '0', '0', '0', '0.00', '', '0.00');
INSERT INTO `ns_order` VALUES ('17', '2019010715540001', '154684765691491000', '1', '0', '1', '2', '60', '孤月', '1', '', '', '18312345678', '19', '210', '1840', '广东省&nbsp;河源市&nbsp;连平县&nbsp;东钱湖', '', '李银河', '0', '齐刘海', '0', '', '0', '47.20', '47.20', '0', '0.00', '0.00', '0', '0.00', '0.00', '0.00', '0.00', '47.20', '0.00', '0.00', '0', '0.00', '5', '0', '0', '0', '0', '0', '0.00', '3', '3', '0', '0', '0', '0', '1546847657', '0', '0', '0', '0', '0.00', '', '0.00');

-- ----------------------------
-- Table structure for `ns_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_action`;
CREATE TABLE `ns_order_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '动作id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '动作内容',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `order_status` int(11) NOT NULL COMMENT '订单大状态',
  `order_status_text` varchar(255) NOT NULL DEFAULT '' COMMENT '订单状态名称',
  `action_time` int(11) DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`action_id`)
) ENGINE=MEMORY AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1706 COMMENT='订单操作表';

-- ----------------------------
-- Records of ns_order_action
-- ----------------------------
INSERT INTO `ns_order_action` VALUES ('1', '114', '创建课程订单', '60', '孤月大师', '0', '', '1546914674');
INSERT INTO `ns_order_action` VALUES ('2', '115', '创建课程订单', '60', '孤月大师', '0', '', '1546924613');
INSERT INTO `ns_order_action` VALUES ('3', '117', '创建课程订单', '60', '孤月大师', '0', '', '1546925600');
INSERT INTO `ns_order_action` VALUES ('4', '118', '创建课程订单', '60', '孤月大师', '0', '', '1546927308');
INSERT INTO `ns_order_action` VALUES ('5', '119', '创建课程订单', '60', '孤月大师', '0', '', '1546927378');
INSERT INTO `ns_order_action` VALUES ('6', '121', '创建课程订单', '60', '孤月大师', '0', '', '1546927442');
INSERT INTO `ns_order_action` VALUES ('7', '123', '创建课程订单', '60', '孤月大师', '0', '', '1546927548');
INSERT INTO `ns_order_action` VALUES ('8', '124', '创建课程订单', '60', '孤月大师', '0', '', '1546927685');
INSERT INTO `ns_order_action` VALUES ('9', '126', '创建课程订单', '60', '孤月大师', '0', '', '1546928096');
INSERT INTO `ns_order_action` VALUES ('10', '128', '创建课程订单', '60', '孤月大师', '0', '', '1546929126');
INSERT INTO `ns_order_action` VALUES ('11', '129', '创建课程订单', '60', '孤月大师', '0', '', '1546929152');

-- ----------------------------
-- Table structure for `ns_order_collect_money`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_collect_money`;
CREATE TABLE `ns_order_collect_money` (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `uid` int(11) NOT NULL COMMENT '下单人id',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '我的优惠券ID',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID',
  `goods_name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `reserve_phone` varchar(20) DEFAULT '' COMMENT '预留手机号',
  `order_no` varchar(50) DEFAULT '' COMMENT '订单号',
  `nick_name` varchar(20) DEFAULT '' COMMENT '下单人昵称',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `meet_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付金额',
  `coupon_name` varchar(50) NOT NULL DEFAULT '0.00' COMMENT '优惠券使用限制(满xx元可使用)',
  `coupon_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券面额',
  `at_leasts` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '有效期结束时间',
  `realPayment_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实付金额',
  `payment_method` tinyint(2) NOT NULL DEFAULT '0' COMMENT '付款方式 0 支付宝  1 微信  2 现金  3 银行卡  4 其他',
  `accountsWx_money` varchar(50) DEFAULT '' COMMENT '微信支付帐号',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `paymentDate` date DEFAULT '0000-00-00' COMMENT '付款时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=148 COMMENT='优惠券表';

-- ----------------------------
-- Records of ns_order_collect_money
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_continued_money`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_continued_money`;
CREATE TABLE `ns_order_continued_money` (
  `continued_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `collect_id` int(11) NOT NULL COMMENT '收银id',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`continued_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=148 COMMENT='优惠券表';

-- ----------------------------
-- Records of ns_order_continued_money
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_customer_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_customer_account_records`;
CREATE TABLE `ns_order_customer_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项id',
  `refund_trade_no` varchar(55) NOT NULL COMMENT '退款交易号',
  `refund_money` decimal(10,2) NOT NULL COMMENT '退款金额',
  `refund_way` int(11) NOT NULL COMMENT '退款方式（1：微信，2：支付宝，10：线下）',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `refund_time` int(11) NOT NULL COMMENT '退款时间',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单售后账户记录';

-- ----------------------------
-- Records of ns_order_customer_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods`;
CREATE TABLE `ns_order_goods` (
  `order_goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单项ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL COMMENT 'skuID',
  `sku_name` varchar(50) NOT NULL COMMENT 'sku名称',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `cost_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '商品成本价',
  `num` varchar(255) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `adjust_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '调整金额',
  `goods_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图片',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买人ID',
  `point_exchange_type` int(11) NOT NULL DEFAULT '0' COMMENT '积分兑换类型0.非积分兑换1.积分兑换',
  `goods_type` varchar(255) NOT NULL DEFAULT '1' COMMENT '商品类型',
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销ID',
  `promotion_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '促销类型',
  `order_type` int(11) NOT NULL DEFAULT '1' COMMENT '订单类型',
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '积分数量',
  `shipping_status` int(11) NOT NULL DEFAULT '0' COMMENT '物流状态',
  `refund_type` int(11) NOT NULL DEFAULT '1' COMMENT '退款方式',
  `refund_require_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `refund_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '退款原因',
  `refund_shipping_code` varchar(255) NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) NOT NULL DEFAULT '0' COMMENT '退款物流公司名称',
  `refund_real_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际退款金额',
  `refund_status` int(1) NOT NULL DEFAULT '0' COMMENT '退款状态',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_evaluate` smallint(6) NOT NULL DEFAULT '0' COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `refund_time` int(11) DEFAULT '0' COMMENT '退款时间',
  `refund_balance_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单退款余额',
  `tmp_express_company` varchar(255) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时物流公司',
  `tmp_express_company_id` int(11) NOT NULL DEFAULT '0' COMMENT '批量打印时添加的临时物流公司id',
  `tmp_express_no` varchar(50) NOT NULL DEFAULT '' COMMENT '批量打印时添加的临时订单编号',
  `gift_flag` int(11) DEFAULT '0' COMMENT '赠品标识，0:不是赠品，大于0：赠品id',
  PRIMARY KEY (`order_goods_id`),
  KEY `UK_ns_order_goods_buyer_id` (`buyer_id`),
  KEY `UK_ns_order_goods_goods_id` (`goods_id`),
  KEY `UK_ns_order_goods_order_id` (`order_id`),
  KEY `UK_ns_order_goods_promotion_id` (`promotion_id`),
  KEY `UK_ns_order_goods_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=289 COMMENT='订单商品表';

-- ----------------------------
-- Records of ns_order_goods
-- ----------------------------
INSERT INTO `ns_order_goods` VALUES ('1', '1', '28', 'Aussie袋鼠洗发水奇迹水润洗发露300ml (无硅油洗发水）', '44', '', '75.05', '0.00', '1', '0.00', '75.05', '148', '0', '56', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('2', '2', '35', '施华蔻专业( SchwarzkopfProfessional )尚丝', '68', '', '102.60', '0.00', '1', '0.00', '102.60', '155', '0', '56', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('3', '3', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '59.00', '0.00', '1', '0.00', '59.00', '170', '0', '93', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('4', '4', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '59.00', '0.00', '1', '0.00', '59.00', '170', '0', '94', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('5', '5', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '59.00', '0.00', '1', '0.00', '59.00', '170', '0', '94', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('6', '6', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('7', '7', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('8', '8', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('9', '9', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('10', '10', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('11', '11', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('12', '12', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('13', '13', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('14', '14', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('15', '15', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('16', '16', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');
INSERT INTO `ns_order_goods` VALUES ('17', '17', '50', '施华蔻专业( SchwarzkopfProfessional )尚丝', '67', '', '47.20', '0.00', '1', '0.00', '47.20', '170', '0', '60', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0.00', '', '', '0', '0.00', '0', '', '0', '0', '0.00', '', '0', '', '0');

-- ----------------------------
-- Table structure for `ns_order_goods_express`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods_express`;
CREATE TABLE `ns_order_goods_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_goods_id_array` varchar(255) NOT NULL COMMENT '订单项商品组合列表',
  `express_name` varchar(50) NOT NULL DEFAULT '' COMMENT '包裹名称  （包裹- 1 包裹 - 2）',
  `shipping_type` tinyint(4) NOT NULL COMMENT '发货方式1 需要物流 0无需物流',
  `express_company_id` int(11) NOT NULL COMMENT '快递公司id',
  `express_company` varchar(255) NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `express_no` varchar(50) NOT NULL COMMENT '运单编号',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `shipping_time` int(11) DEFAULT '0' COMMENT '发货时间',
  PRIMARY KEY (`id`),
  KEY `UK_ns_order_goods_express_order_goods_id_array` (`order_goods_id_array`),
  KEY `UK_ns_order_goods_express_order_id` (`order_id`),
  KEY `UK_ns_order_goods_express_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='商品订单物流信息表（多次发货）';

-- ----------------------------
-- Records of ns_order_goods_express
-- ----------------------------
INSERT INTO `ns_order_goods_express` VALUES ('1', '6', '6', '德邦物流', '1', '3', '德邦物流', '123456', '59', 'wjxit', '', '1545726334');
INSERT INTO `ns_order_goods_express` VALUES ('2', '7', '7', '德邦物流', '1', '3', '德邦物流', '12324', '59', 'wjxit', '', '1545726618');

-- ----------------------------
-- Table structure for `ns_order_goods_promotion_details`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_goods_promotion_details`;
CREATE TABLE `ns_order_goods_promotion_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `sku_id` int(11) NOT NULL COMMENT '商品skuid',
  `promotion_type` varbinary(255) NOT NULL COMMENT '优惠类型规则ID（满减对应规则）',
  `promotion_id` int(11) NOT NULL COMMENT '优惠ID',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠的金额，单位：元，精确到小数点后两位',
  `used_time` int(11) DEFAULT '0' COMMENT '使用时间',
  PRIMARY KEY (`id`),
  KEY `IDX_ns_order_goods_promotion_d_order_id` (`order_id`),
  KEY `IDX_ns_order_goods_promotion_d_promotion_id` (`promotion_id`),
  KEY `IDX_ns_order_goods_promotion_d_promotion_type` (`promotion_type`),
  KEY `IDX_ns_order_goods_promotion_d_sku_id` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='订单商品优惠详情';

-- ----------------------------
-- Records of ns_order_goods_promotion_details
-- ----------------------------
INSERT INTO `ns_order_goods_promotion_details` VALUES ('1', '6', '67', 0x434F55504F4E, '46', '120.00', '1545726300');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('2', '7', '67', 0x434F55504F4E, '47', '120.00', '1545726595');
INSERT INTO `ns_order_goods_promotion_details` VALUES ('3', '8', '67', 0x434F55504F4E, '21', '150.00', '1545900685');

-- ----------------------------
-- Table structure for `ns_order_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_payment`;
CREATE TABLE `ns_order_payment` (
  `out_trade_no` varchar(30) NOT NULL COMMENT '支付单编号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '执行支付的相关店铺ID（0平台）',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '订单类型1.商城订单2.交易商支付',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单类型关联ID',
  `pay_body` varchar(255) NOT NULL DEFAULT '' COMMENT '订单支付简介',
  `pay_detail` varchar(1000) NOT NULL DEFAULT '' COMMENT '订单支付详情',
  `pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `pay_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_type` int(11) NOT NULL DEFAULT '1' COMMENT '支付方式',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `pay_time` int(11) DEFAULT '0' COMMENT '支付时间',
  `trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '交易号，支付宝退款用，微信传入空',
  KEY `IDX_ns_order_payment_out_trade_no` (`out_trade_no`),
  KEY `IDX_ns_order_payment_pay_status` (`pay_status`),
  KEY `IDX_ns_order_payment_pay_type` (`pay_type`),
  KEY `IDX_ns_order_payment_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='订单支付表';

-- ----------------------------
-- Records of ns_order_payment
-- ----------------------------
INSERT INTO `ns_order_payment` VALUES ('154442628127581000', '0', '1', '1', '齐刘海订单', '齐刘海订单', '75.05', '0', '1', '1544426282', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154449725513681000', '0', '1', '2', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1544497255', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154450609018211000', '0', '1', '3', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1544506090', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154450634563751000', '0', '1', '4', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1544506345', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154450638662341000', '0', '1', '5', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1544506387', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154572630074451000', '0', '1', '6', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1545726300', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154572659466141000', '0', '1', '7', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1545726595', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154587335055351000', '0', '4', '1', '余额充值', '用户通知余额', '100.00', '0', '1', '1545873355', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154590068556861000', '0', '1', '8', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1545900685', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154590071342251000', '0', '1', '9', '齐刘海订单', '齐刘海订单', '47.20', '0', '1', '1545900720', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639811783071000', '0', '1', '12', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398117', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639831130641000', '0', '1', '15', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398312', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639838396801000', '0', '1', '16', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398383', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639848525181000', '0', '1', '17', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398485', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639852214291000', '0', '1', '18', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398522', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639857153581000', '0', '1', '20', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398571', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639859231461000', '0', '1', '21', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398592', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639861124701000', '0', '1', '22', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398611', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639869010991000', '0', '1', '25', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398690', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639872190091000', '0', '1', '26', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398721', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639882053531000', '0', '1', '31', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546398820', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639949595011000', '0', '1', '32', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399495', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639954655371000', '0', '1', '33', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399547', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639956031951000', '0', '1', '34', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399560', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639957498821000', '0', '1', '35', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399574', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639961474471000', '0', '1', '36', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399614', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639963265591000', '0', '1', '37', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546399632', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154639986965451000', '0', '1', '10', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1546399869', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640365738151000', '0', '1', '38', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546403657', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640399992011000', '0', '1', '39', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546403999', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640408783561000', '0', '1', '40', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546404087', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640412341851000', '0', '1', '41', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546404123', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640415924131000', '0', '1', '42', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546404159', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640435184371000', '0', '1', '11', '齐刘海订单', '齐刘海订单', '47.20', '0', '1', '1546404351', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640459522761000', '0', '1', '12', '齐刘海订单', '齐刘海订单', '47.20', '0', '1', '1546404596', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640461334381000', '0', '1', '13', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1546404613', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640472915171000', '0', '1', '43', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546404729', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640514537011000', '0', '1', '44', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546405145', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640517427581000', '0', '1', '45', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546405174', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640534954001000', '0', '1', '46', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546405349', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640578654131000', '0', '1', '14', '齐刘海订单', '齐刘海订单', '47.20', '0', '1', '1546405786', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640581250961000', '0', '1', '15', '齐刘海订单', '齐刘海订单', '37.20', '0', '1', '1546405812', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640630227591000', '0', '1', '47', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546406302', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640643913461000', '0', '1', '16', '齐刘海订单', '齐刘海订单', '0.00', '1', '1', '1546406439', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640745026461000', '0', '1', '48', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546407450', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154640803754211000', '0', '1', '53', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546408038', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650066368221000', '0', '1', '54', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546500663', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650319069071000', '0', '1', '55', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546503190', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650382789471000', '0', '1', '56', '齐刘海课程订单', '齐刘海课程订单', '150.00', '0', '1', '1546503827', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650607422431000', '0', '1', '57', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546506074', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650694931261000', '0', '1', '55', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546506949', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154650767566111000', '0', '1', '56', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546507675', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667379372221000', '0', '1', '57', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546673794', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667388078541000', '0', '1', '58', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546673880', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667713210451000', '0', '1', '59', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546677132', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667767080541000', '0', '1', '65', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546677670', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667819227811000', '0', '1', '71', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546678192', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667829161971000', '0', '1', '72', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546678291', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667843549001000', '0', '1', '73', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546678435', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667845934041000', '0', '1', '74', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546678459', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667848141231000', '0', '1', '75', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546678481', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667853833571000', '0', '1', '76', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546678539', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154667856482221000', '0', '1', '77', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546678564', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154668094083801000', '0', '1', '78', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546680941', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683940440911000', '0', '1', '79', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839404', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683942331321000', '0', '1', '80', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839424', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683958996791000', '0', '1', '81', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839589', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683960450511000', '0', '1', '82', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839604', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683970283041000', '0', '1', '83', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839702', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683976936981000', '0', '1', '84', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839769', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683980657821000', '0', '1', '85', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839806', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683981810711000', '0', '1', '86', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839819', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683982980791000', '0', '1', '87', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839829', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683984324291000', '0', '1', '88', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839843', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683985452221000', '0', '1', '89', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839854', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683986832901000', '0', '1', '90', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839868', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154683988713631000', '0', '1', '91', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546839887', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684046511491000', '0', '1', '92', '齐刘海课程订单', '齐刘海课程订单11', '0.00', '1', '1', '1546840465', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684062868121000', '0', '1', '93', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546840628', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684090463971000', '0', '1', '94', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546840904', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684091825511000', '0', '1', '95', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546840918', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684099860581000', '0', '1', '96', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546840998', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684104590251000', '0', '1', '97', '齐刘海课程订单11', '齐刘海课程订单22', '160.00', '0', '1', '1546841045', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684117249721000', '0', '1', '98', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546841172', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684119561561000', '0', '1', '99', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546841195', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684145650921000', '0', '1', '100', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546841456', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684147349021000', '0', '1', '101', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546841473', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684160299011000', '0', '1', '102', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546841602', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684177073721000', '0', '1', '103', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546841770', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684187854571000', '0', '1', '104', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546841878', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684388321651000', '0', '1', '105', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546843883', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684390181861000', '0', '1', '106', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546843901', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684392430431000', '0', '1', '107', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546843924', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684614990481000', '0', '1', '108', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546846149', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684626898451000', '0', '1', '109', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546846268', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684644677981000', '0', '1', '110', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546846446', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684645858651000', '0', '1', '111', '齐刘海课程订单', '齐刘海课程订单', '160.00', '0', '1', '1546846458', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684647463131000', '0', '1', '112', '齐刘海课程订单', '齐刘海课程订单', '120.00', '0', '1', '1546846474', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154684765691491000', '0', '1', '17', '齐刘海订单', '齐刘海订单', '47.20', '0', '1', '1546847657', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154685030989141000', '0', '1', '113', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546850309', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154691467440001000', '0', '1', '114', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546914674', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692461293741000', '0', '1', '115', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546924613', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692560050861000', '0', '1', '117', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546925600', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692730740271000', '0', '1', '118', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546927307', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692737795601000', '0', '1', '119', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546927378', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692744256351000', '0', '1', '121', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546927442', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692754860481000', '0', '1', '123', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546927548', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692768538581000', '0', '1', '124', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546927685', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692809671391000', '0', '1', '126', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546928096', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692912616941000', '0', '1', '128', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546929126', '0', '');
INSERT INTO `ns_order_payment` VALUES ('154692915274971000', '0', '1', '129', '齐刘海课程订单', '齐刘海课程订单', '0.00', '1', '1', '1546929152', '0', '');

-- ----------------------------
-- Table structure for `ns_order_pickup`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_pickup`;
CREATE TABLE `ns_order_pickup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `name` varchar(255) NOT NULL COMMENT '自提点名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '自提点地址',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `city_id` int(11) NOT NULL COMMENT '市ID',
  `province_id` int(11) NOT NULL COMMENT '省ID',
  `district_id` int(11) NOT NULL COMMENT '区县ID',
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供应门店ID',
  `longitude` varchar(255) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) NOT NULL DEFAULT '' COMMENT '维度',
  `buyer_name` varchar(50) NOT NULL DEFAULT '' COMMENT '提货人姓名',
  `buyer_mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '提货人电话',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '提货备注信息',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='订单自提点管理';

-- ----------------------------
-- Records of ns_order_pickup
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_presell`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_presell`;
CREATE TABLE `ns_order_presell` (
  `presell_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `out_trade_no` varchar(100) NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `payment_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付类型',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态 0创建 1尾款待支付 2开始结尾款 ',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单付款时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单创建时间',
  `operator_type` int(1) NOT NULL DEFAULT '0' COMMENT '操作人类型  1店铺  2用户',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `relate_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id',
  `presell_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售结束时间',
  `presell_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金额',
  `presell_pay` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售支付金额',
  `platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台余额',
  `point` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单消耗积分',
  `point_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单消耗积分抵多少钱',
  `presell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预售金单价',
  `presell_delivery_type` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货形式 1指定时间 2支付后天数',
  `presell_delivery_value` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货时间 按形式 ',
  `presell_delivery_time` int(11) NOT NULL DEFAULT '0' COMMENT '预售发货具体时间（实则为结尾款时间）',
  `is_full_payment` int(11) NOT NULL DEFAULT '0' COMMENT '是否全款预定',
  PRIMARY KEY (`presell_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预售订单表';

-- ----------------------------
-- Records of ns_order_presell
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_promotion_details`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_promotion_details`;
CREATE TABLE `ns_order_promotion_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `promotion_type_id` int(11) NOT NULL COMMENT '优惠类型规则ID（满减对应规则）',
  `promotion_id` int(11) NOT NULL COMMENT '优惠ID',
  `promotion_type` varchar(255) NOT NULL COMMENT '优惠类型',
  `promotion_name` varchar(50) NOT NULL COMMENT '该优惠活动的名称',
  `promotion_condition` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠使用条件说明',
  `discount_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠的金额，单位：元，精确到小数点后两位',
  `used_time` int(11) DEFAULT '0' COMMENT '使用时间',
  PRIMARY KEY (`id`),
  KEY `UK_ns_order_promotion_details_order_id` (`order_id`),
  KEY `UK_ns_order_promotion_details_promotion_id` (`promotion_id`),
  KEY `UK_ns_order_promotion_details_promotion_type` (`promotion_type`),
  KEY `UK_ns_order_promotion_details_promotion_type_id` (`promotion_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=364 COMMENT='订单优惠详情';

-- ----------------------------
-- Records of ns_order_promotion_details
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_refund`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_refund`;
CREATE TABLE `ns_order_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单商品表id',
  `refund_status` varchar(255) NOT NULL COMMENT '操作状态\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n流程状态(refund_status)	状态名称(refund_status_name)	操作时间\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n1	买家申请	发起了退款申请,等待卖家处理\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n2	等待买家退货	卖家已同意退款申请,等待买家退货\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n3	等待卖家确认收货	买家已退货,等待卖家确认收货\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n4	等待卖家确认退款	卖家同意退款\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n0	退款已成功	卖家退款给买家，本次维权结束\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-1	退款已拒绝	卖家拒绝本次退款，本次维权结束\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-2	退款已关闭	主动撤销退款，退款关闭\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-3	退款申请不通过	拒绝了本次退款申请,等待买家修改\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
  `action` varchar(255) NOT NULL COMMENT '退款操作内容描述',
  `action_way` tinyint(4) NOT NULL DEFAULT '0' COMMENT '操作方 1 买家 2 卖家',
  `action_userid` varchar(255) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `action_username` varchar(255) NOT NULL DEFAULT '' COMMENT '操作人姓名',
  `action_time` int(11) DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=108 COMMENT='订单商品退货退款操作表';

-- ----------------------------
-- Records of ns_order_refund
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_refund_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_refund_account_records`;
CREATE TABLE `ns_order_refund_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项id',
  `refund_trade_no` varchar(55) NOT NULL COMMENT '退款交易号',
  `refund_money` decimal(10,2) NOT NULL COMMENT '退款金额',
  `refund_way` int(11) NOT NULL COMMENT '退款方式（1：微信，2：支付宝，10：线下）',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `refund_time` int(11) NOT NULL COMMENT '退款时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单退款账户记录';

-- ----------------------------
-- Records of ns_order_refund_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_order_shipping_fee`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_shipping_fee`;
CREATE TABLE `ns_order_shipping_fee` (
  `shipping_fee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运费模板ID',
  `shipping_fee_name` varchar(30) NOT NULL DEFAULT '' COMMENT '运费模板名称',
  `is_default` int(11) NOT NULL DEFAULT '0' COMMENT '是否是默认模板',
  `co_id` int(11) NOT NULL DEFAULT '0' COMMENT '物流公司ID',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `province_id_array` text NOT NULL COMMENT '省ID组',
  `city_id_array` text NOT NULL COMMENT '市ID组',
  `weight_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用重量运费',
  `weight_snum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '首重',
  `weight_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首重运费',
  `weight_xnum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '续重',
  `weight_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续重运费',
  `volume_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用体积计算运费',
  `volume_snum` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '首体积量',
  `volume_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首体积运费',
  `volume_xnum` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续体积量',
  `volume_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续体积运费',
  `bynum_is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否启用计件方式运费',
  `bynum_snum` int(11) NOT NULL DEFAULT '0' COMMENT '首件',
  `bynum_sprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '首件运费',
  `bynum_xnum` int(11) NOT NULL DEFAULT '1' COMMENT '续件',
  `bynum_xprice` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '续件运费',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `update_time` int(11) DEFAULT '0' COMMENT '最后更新时间',
  `district_id_array` text COMMENT '区县ID组',
  PRIMARY KEY (`shipping_fee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='运费模板';

-- ----------------------------
-- Records of ns_order_shipping_fee
-- ----------------------------
INSERT INTO `ns_order_shipping_fee` VALUES ('3', '通用运费模板', '1', '3', '0', '', '', '1', '2.00', '2.00', '3.00', '3.00', '1', '2.00', '2.00', '3.00', '3.00', '1', '2', '2.00', '3', '3.00', '1532166478', '0', '');

-- ----------------------------
-- Table structure for `ns_order_shop_return`
-- ----------------------------
DROP TABLE IF EXISTS `ns_order_shop_return`;
CREATE TABLE `ns_order_shop_return` (
  `shop_id` int(11) NOT NULL,
  `shop_address` varchar(255) NOT NULL DEFAULT '' COMMENT '商家地址',
  `seller_name` varchar(50) NOT NULL DEFAULT '' COMMENT '收件人',
  `seller_mobile` varchar(30) NOT NULL DEFAULT '' COMMENT '收件人手机号',
  `seller_zipcode` varchar(20) NOT NULL DEFAULT '' COMMENT '邮编',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺退货设置';

-- ----------------------------
-- Records of ns_order_shop_return
-- ----------------------------
INSERT INTO `ns_order_shop_return` VALUES ('0', '高新区', '李银河', '18356852147', '660212', '1533175713', '1534748363');

-- ----------------------------
-- Table structure for `ns_pickup_point`
-- ----------------------------
DROP TABLE IF EXISTS `ns_pickup_point`;
CREATE TABLE `ns_pickup_point` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `name` varchar(255) NOT NULL COMMENT '自提点名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '自提点地址',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '联系电话',
  `city_id` int(11) NOT NULL COMMENT '市ID',
  `province_id` int(11) NOT NULL COMMENT '省ID',
  `district_id` int(11) NOT NULL COMMENT '区县ID',
  `supplier_id` int(11) NOT NULL DEFAULT '0' COMMENT '供应门店ID',
  `longitude` varchar(255) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(255) NOT NULL DEFAULT '' COMMENT '维度',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='自提点管理';

-- ----------------------------
-- Records of ns_pickup_point
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_adv`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv`;
CREATE TABLE `ns_platform_adv` (
  `adv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告自增标识编号',
  `ap_id` mediumint(8) unsigned NOT NULL COMMENT '广告位id',
  `adv_title` varchar(255) NOT NULL DEFAULT '' COMMENT '广告内容描述',
  `adv_url` text,
  `adv_image` varchar(1000) NOT NULL DEFAULT '' COMMENT '广告内容图片',
  `slide_sort` int(11) DEFAULT NULL,
  `click_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告点击率',
  `background` varchar(255) NOT NULL DEFAULT '#FFFFFF' COMMENT '背景色',
  `adv_code` text NOT NULL COMMENT '广告代码',
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='广告表';

-- ----------------------------
-- Records of ns_platform_adv
-- ----------------------------
INSERT INTO `ns_platform_adv` VALUES ('8', '6', '手机端首页广告', 'http://localhost/shopping9/index.php?s=/adminsite/system/addshopadv&amp;type=2', 'upload/image_collection/1534828667.jpeg', '0', '0', '#000000', '');
INSERT INTO `ns_platform_adv` VALUES ('9', '1105', '首页轮播1', 'http://localhost/hairdressing/index.php?s=/adminsite/system/addshopadv&amp;type=2', 'upload/image_collection/1543222114.jpg', '0', '0', '#000000', '');
INSERT INTO `ns_platform_adv` VALUES ('10', '1105', '首页轮播2', 'http://localhost/hairdressing/index.php?s=/adminsite/system/addshopadv&amp;type=2', 'upload/image_collection/1543222123.jpg', '0', '0', '#000000', '');

-- ----------------------------
-- Table structure for `ns_platform_adv_position`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv_position`;
CREATE TABLE `ns_platform_adv_position` (
  `ap_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位置id',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位置名',
  `ap_intro` varchar(255) NOT NULL COMMENT '广告位简介',
  `ap_class` smallint(1) unsigned NOT NULL COMMENT '广告类别：0图片1文字2幻灯3Flash',
  `ap_display` smallint(1) unsigned NOT NULL COMMENT '广告展示方式：0幻灯片1多广告展示2单广告展示',
  `is_use` smallint(1) unsigned NOT NULL COMMENT '广告位是否启用：0不启用1启用',
  `ap_height` int(10) NOT NULL COMMENT '广告位高度',
  `ap_width` int(10) NOT NULL COMMENT '广告位宽度',
  `ap_price` int(10) NOT NULL DEFAULT '0' COMMENT '广告位单价',
  `adv_num` int(10) NOT NULL DEFAULT '0' COMMENT '拥有的广告数',
  `click_num` int(10) NOT NULL DEFAULT '0' COMMENT '广告位点击率',
  `default_content` varchar(300) DEFAULT NULL,
  `ap_background_color` varchar(50) NOT NULL DEFAULT '#FFFFFF' COMMENT '广告位背景色 默认白色',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '广告位所在位置类型   1 pc端  2 手机端',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_del` int(11) DEFAULT '0',
  `ap_keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位关键字',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6673 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='广告位表';

-- ----------------------------
-- Records of ns_platform_adv_position
-- ----------------------------
INSERT INTO `ns_platform_adv_position` VALUES ('1051', '商城首页最顶部广告位', '商城首页最顶部广告位', '0', '2', '1', '1000', '1000', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1052', '商城首页logo右侧小广告', '商城首页logo右侧小广告', '0', '2', '1', '90', '170', '0', '0', '0', '', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1053', '商城首页滚动图广告位', '商城首页滚动图广告位', '0', '2', '1', '443', '800', '0', '0', '0', '', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1054', '商城首页中部推荐广告位', '商城首页中部推荐广告位（140*242）', '0', '2', '1', '140', '242', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1056', '商城限时折扣轮播广告位', '商城限时折扣轮播广告位', '0', '2', '1', '443', '1903', '0', '0', '0', '', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1075', '商城品牌专区轮播广告位', '商城品牌专区轮播广告位', '0', '0', '1', '443', '1210', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1076', '商城积分中心轮播广告位', '商城积分中心轮播广告位', '0', '2', '1', '320', '910', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1102', '商城积分中心中部广告位', '商城积分中心中部广告位', '0', '2', '1', '60', '1210', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1103', '商城登录页面轮播广告位', '商城登录页面轮播广告位', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1105', '手机端首页轮播广告位', '手机端首页轮播广告位', '0', '1', '1', '175', '320', '0', '0', '0', '', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1152', '手机端会员中心广告位', '手机端会员中心广告位', '0', '2', '1', '100', '750', '0', '0', '0', '', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1162', '手机端品牌专区广告位', '品牌专区广告', '0', '2', '1', '192', '720', '0', '0', '0', '', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1163', '手机端限时折扣专区广告位', '限时折扣专区广告位', '0', '2', '1', '130', '720', '0', '0', '0', '', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1164', '手机端首页商城热卖广告位', '手机端商城热卖', '0', '2', '1', '100', '100', '0', '0', '0', '', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('1165', '手机端积分中心广告位', '积分中心广告位', '0', '2', '1', '100', '100', '0', '0', '0', '', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('6666', '商城促销专区轮播广告位', '促销专区广告位', '0', '0', '1', '443', '1210', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position` VALUES ('6667', '手机端标签专区广告位', '手机端标签专区广告位', '0', '2', '1', '192', '720', '0', '0', '0', '', '#000000', '2', '0', '1', 'goodsLabel');
INSERT INTO `ns_platform_adv_position` VALUES ('6668', '商城注册页面广告位', '商城注册页面广告位', '0', '2', '1', '220', '420', '0', '0', '0', '', '#ffffff', '1', '0', '1', 'pcRegisterAdv');
INSERT INTO `ns_platform_adv_position` VALUES ('6669', '手机端登录注册广告位', '手机端登录注册广告位', '0', '2', '1', '100', '100', '0', '0', '0', '', '#ffffff', '2', '0', '1', 'wapLogAndRegAdv');
INSERT INTO `ns_platform_adv_position` VALUES ('6671', '专题活动广告位', '专题活动广告位', '0', '0', '1', '443', '1210', '0', '0', '0', '', '#000000', '1', '0', '1', 'promotionTopic');
INSERT INTO `ns_platform_adv_position` VALUES ('6672', '手机端专题活动广告位', '手机端专题活动广告位', '0', '2', '1', '192', '720', '0', '0', '0', '', '#000000', '1', '0', '1', 'wapPromotionTopic');

-- ----------------------------
-- Table structure for `ns_platform_adv_position_copy`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv_position_copy`;
CREATE TABLE `ns_platform_adv_position_copy` (
  `ap_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位置id',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位置名',
  `ap_intro` varchar(255) NOT NULL COMMENT '广告位简介',
  `ap_class` smallint(1) unsigned NOT NULL COMMENT '广告类别：0图片1文字2幻灯3Flash',
  `ap_display` smallint(1) unsigned NOT NULL COMMENT '广告展示方式：0幻灯片1多广告展示2单广告展示',
  `is_use` smallint(1) unsigned NOT NULL COMMENT '广告位是否启用：0不启用1启用',
  `ap_height` int(10) NOT NULL COMMENT '广告位高度',
  `ap_width` int(10) NOT NULL COMMENT '广告位宽度',
  `ap_price` int(10) NOT NULL DEFAULT '0' COMMENT '广告位单价',
  `adv_num` int(10) NOT NULL DEFAULT '0' COMMENT '拥有的广告数',
  `click_num` int(10) NOT NULL DEFAULT '0' COMMENT '广告位点击率',
  `default_content` varchar(300) DEFAULT NULL,
  `ap_background_color` varchar(50) NOT NULL DEFAULT '#FFFFFF' COMMENT '广告位背景色 默认白色',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '广告位所在位置类型   1 pc端  2 手机端',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_del` int(11) DEFAULT '0',
  `ap_keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位关键字',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='广告位表';

-- ----------------------------
-- Records of ns_platform_adv_position_copy
-- ----------------------------
INSERT INTO `ns_platform_adv_position_copy` VALUES ('6', '手机端首页广告位', '手机端首页广告', '0', '0', '1', '100', '100', '0', '0', '0', 'upload/image_collection/1534828581.jpeg', '#000000', '2', '0', '1', '');

-- ----------------------------
-- Table structure for `ns_platform_adv_position_copy1`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_adv_position_copy1`;
CREATE TABLE `ns_platform_adv_position_copy1` (
  `ap_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位置id',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位置名',
  `ap_intro` varchar(255) NOT NULL COMMENT '广告位简介',
  `ap_class` smallint(1) unsigned NOT NULL COMMENT '广告类别：0图片1文字2幻灯3Flash',
  `ap_display` smallint(1) unsigned NOT NULL COMMENT '广告展示方式：0幻灯片1多广告展示2单广告展示',
  `is_use` smallint(1) unsigned NOT NULL COMMENT '广告位是否启用：0不启用1启用',
  `ap_height` int(10) NOT NULL COMMENT '广告位高度',
  `ap_width` int(10) NOT NULL COMMENT '广告位宽度',
  `ap_price` int(10) NOT NULL DEFAULT '0' COMMENT '广告位单价',
  `adv_num` int(10) NOT NULL DEFAULT '0' COMMENT '拥有的广告数',
  `click_num` int(10) NOT NULL DEFAULT '0' COMMENT '广告位点击率',
  `default_content` varchar(300) DEFAULT NULL,
  `ap_background_color` varchar(50) NOT NULL DEFAULT '#FFFFFF' COMMENT '广告位背景色 默认白色',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '广告位所在位置类型   1 pc端  2 手机端',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_del` int(11) DEFAULT '0',
  `ap_keyword` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位关键字',
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6674 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='广告位表';

-- ----------------------------
-- Records of ns_platform_adv_position_copy1
-- ----------------------------
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1051', '商城首页最顶部广告位', '商城首页最顶部广告位', '0', '2', '1', '1000', '1000', '0', '0', '0', '', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1052', '商城首页logo右侧小广告', '商城首页logo右侧小广告', '0', '2', '1', '90', '170', '0', '0', '0', 'public/static/images/default_img_url/shouyelogo.png', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1053', '商城首页滚动图广告位', '商城首页滚动图广告位', '0', '2', '1', '443', '800', '0', '0', '0', '', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1054', '商城首页中部推荐广告位', '商城首页中部推荐广告位（140*242）', '0', '2', '1', '140', '242', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1056', '商城限时折扣轮播广告位', '商城限时折扣轮播广告位', '0', '2', '1', '443', '1903', '0', '0', '0', 'public/static/images/default_img_url/xianshizhekou.png', '#FFFFFF', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1075', '商城品牌专区轮播广告位', '商城品牌专区轮播广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'public/static/images/default_img_url/pinpaizhuanqu.png', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1076', '商城积分中心轮播广告位', '商城积分中心轮播广告位', '0', '2', '1', '320', '910', '0', '0', '0', 'public/static/images/default_img_url/jifenzhongxin.jpg', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1102', '商城积分中心中部广告位', '商城积分中心中部广告位', '0', '2', '1', '60', '1210', '0', '0', '0', 'public/static/images/default_img_url/jifenzhongxinzhongbu.jpg', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1103', '商城登录页面轮播广告位', '商城登录页面轮播广告位', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1105', '手机端首页轮播广告位', '手机端首页轮播广告位', '0', '1', '1', '175', '320', '0', '0', '0', 'public/static/images/default_img_url/waplunbo.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1152', '手机端会员中心广告位', '手机端会员中心广告位', '0', '2', '1', '100', '750', '0', '0', '0', 'public/static/images/default_img_url/waphuiyuanzhongxin.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1162', '手机端品牌专区广告位', '品牌专区广告', '0', '2', '1', '192', '720', '0', '0', '0', 'public/static/images/default_img_url/wappinpaizhuanqu.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1163', '手机端限时折扣专区广告位', '限时折扣专区广告位', '0', '2', '1', '130', '720', '0', '0', '0', 'public/static/images/default_img_url/wapxianshizhekou.png', '', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1164', '手机端首页商城热卖广告位', '手机端商城热卖', '0', '2', '1', '100', '100', '0', '0', '0', 'public/static/images/default_img_url/wapshangchengremai.png', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('1165', '手机端积分中心广告位', '积分中心广告位', '0', '2', '1', '100', '100', '0', '0', '0', 'public/static/images/default_img_url/wapjifenzhongxin.png', '#000000', '2', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6666', '商城促销专区轮播广告位', '促销专区广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1513820257.png', '#000000', '1', '0', '1', '');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6667', '手机端标签专区广告位', '手机端标签专区广告位', '0', '2', '1', '192', '720', '0', '0', '0', 'upload/image_collection/1519813844.png', '#000000', '2', '0', '1', 'goodsLabel');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6668', '商城注册页面广告位', '商城注册页面广告位', '0', '2', '1', '220', '420', '0', '0', '0', 'upload/image_collection/1522752723.png', '#ffffff', '1', '0', '1', 'pcRegisterAdv');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6669', '手机端登录注册广告位', '手机端登录注册广告位', '0', '2', '1', '100', '100', '0', '0', '0', 'upload/image_collection/1522752598.png', '#ffffff', '2', '0', '1', 'wapLogAndRegAdv');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6670', '团购专区广告位', '团购专区广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1522752990.png', '#000000', '2', '0', '1', 'groupBuyArea');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6671', '专题活动广告位', '专题活动广告位', '0', '0', '1', '443', '1210', '0', '0', '0', 'upload/image_collection/1522752990.png', '#000000', '2', '0', '1', 'promotionTopic');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6672', '手机端专题活动广告位', '手机端专题活动广告位', '0', '2', '1', '192', '720', '0', '0', '0', 'upload/image_collection/1519813844.png', '#000000', '2', '0', '1', 'wapPromotionTopic');
INSERT INTO `ns_platform_adv_position_copy1` VALUES ('6673', '抖音还能火多久', '你别皱眉，我走就是了。。。', '0', '0', '1', '200', '100', '0', '0', '0', 'upload/image_collection/1530839870.jpg', '#ff0080', '2', '0', '0', 'dy');

-- ----------------------------
-- Table structure for `ns_platform_block`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_block`;
CREATE TABLE `ns_platform_block` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_display` smallint(4) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `block_color` varchar(255) NOT NULL COMMENT '颜色风格',
  `sort` int(11) DEFAULT NULL,
  `block_name` varchar(50) NOT NULL DEFAULT '' COMMENT '板块名称',
  `block_short_name` varchar(50) DEFAULT NULL COMMENT '板块简称',
  `recommend_ad_image_name` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐单图广告位名称',
  `recommend_ad_image` int(11) NOT NULL DEFAULT '0' COMMENT '推荐单图广告位',
  `recommend_ad_slide_name` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐幻灯广告位名称',
  `recommend_ad_slide` int(11) NOT NULL COMMENT '推荐幻灯广告位',
  `recommend_ad_images_name` varchar(255) NOT NULL DEFAULT '0' COMMENT '推荐多图广告位名称',
  `recommend_ad_images` int(11) NOT NULL DEFAULT '0' COMMENT '推荐多图广告位',
  `recommend_brands` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐品牌',
  `recommend_categorys` varchar(255) NOT NULL DEFAULT '' COMMENT '推荐商品分类',
  `recommend_goods_category_name_1` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_1` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `recommend_goods_category_name_2` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_2` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `recommend_goods_category_name_3` varchar(50) NOT NULL DEFAULT '' COMMENT '推荐分类商品别名',
  `recommend_goods_category_3` int(11) NOT NULL DEFAULT '0' COMMENT '推荐显示商品分类',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `block_data` longtext COMMENT '板块数据',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='首页促销板块';

-- ----------------------------
-- Records of ns_platform_block
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_goods_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_goods_recommend`;
CREATE TABLE `ns_platform_goods_recommend` (
  `recommend_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NOT NULL COMMENT '推荐商品ID',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '推荐状态',
  `class_id` int(11) NOT NULL DEFAULT '1' COMMENT '推荐类型',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`recommend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=442 COMMENT='平台商品推荐';

-- ----------------------------
-- Records of ns_platform_goods_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_goods_recommend_class`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_goods_recommend_class`;
CREATE TABLE `ns_platform_goods_recommend_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `class_type` int(11) NOT NULL DEFAULT '1' COMMENT '推荐模块1.系统固有模块2.平台增加模块',
  `is_use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否使用',
  `sort` int(11) NOT NULL DEFAULT '255' COMMENT '排序号',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `show_type` int(11) NOT NULL DEFAULT '0' COMMENT '展示类型  0电脑端  1手机端',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='店铺商品推荐类别';

-- ----------------------------
-- Records of ns_platform_goods_recommend_class
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_platform_help_class`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_help_class`;
CREATE TABLE `ns_platform_help_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1.帮助类别2.会员协议类别3.开店协议类别',
  `class_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `parent_class_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='平台说明类型';

-- ----------------------------
-- Records of ns_platform_help_class
-- ----------------------------
INSERT INTO `ns_platform_help_class` VALUES ('1', '1', '新手指点', '0', '0');
INSERT INTO `ns_platform_help_class` VALUES ('2', '1', '升级说明', '0', '0');

-- ----------------------------
-- Table structure for `ns_platform_help_document`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_help_document`;
CREATE TABLE `ns_platform_help_document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表主键',
  `uid` int(11) NOT NULL COMMENT '最后修改人ID',
  `class_id` int(11) NOT NULL COMMENT '所属说明类型ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '主题',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modufy_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `is_visibility` int(11) DEFAULT '1' COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='平台说明内容';

-- ----------------------------
-- Records of ns_platform_help_document
-- ----------------------------
INSERT INTO `ns_platform_help_document` VALUES ('1', '2', '1', '新手帮助', '', '0', '<p>看了该文章再逛商城不迷路....</p>', '', '1534492550', '1534492550', '1');
INSERT INTO `ns_platform_help_document` VALUES ('2', '2', '1', '下单过程', '', '0', '<p>下单过程..................</p>', '', '1534922792', '1534922792', '1');
INSERT INTO `ns_platform_help_document` VALUES ('3', '2', '2', '会员升级指导', '', '0', '<p>会员升级要.......</p>', '', '1535076709', '1535076709', '1');

-- ----------------------------
-- Table structure for `ns_platform_link`
-- ----------------------------
DROP TABLE IF EXISTS `ns_platform_link`;
CREATE TABLE `ns_platform_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引id',
  `link_title` varchar(100) NOT NULL COMMENT '标题',
  `link_url` varchar(100) NOT NULL COMMENT '链接',
  `link_pic` varchar(100) NOT NULL COMMENT '图片',
  `link_sort` int(11) DEFAULT NULL,
  `is_blank` int(11) NOT NULL DEFAULT '1' COMMENT '是否新窗口打开 1.是 2.否',
  `is_show` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示 1.是 2.否',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=50 COMMENT='友情链接表';

-- ----------------------------
-- Records of ns_platform_link
-- ----------------------------
INSERT INTO `ns_platform_link` VALUES ('3', '百度', 'http://www.baidu.com', 'upload/common/1534747009.jpeg', '0', '1', '1');

-- ----------------------------
-- Table structure for `ns_point_config`
-- ----------------------------
DROP TABLE IF EXISTS `ns_point_config`;
CREATE TABLE `ns_point_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `is_open` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启动',
  `convert_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '1积分对应金额',
  `desc` text NOT NULL COMMENT '积分说明',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='积分设置表';

-- ----------------------------
-- Records of ns_point_config
-- ----------------------------
INSERT INTO `ns_point_config` VALUES ('2', '0', '1', '1.00', '1积分抵1元', '1532152909', '1534730031');

-- ----------------------------
-- Table structure for `ns_promotion_bundling`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_bundling`;
CREATE TABLE `ns_promotion_bundling` (
  `bl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合ID',
  `bl_name` varchar(50) NOT NULL COMMENT '组合名称',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `shop_name` varchar(100) NOT NULL COMMENT '店铺名称',
  `bl_price` decimal(10,2) NOT NULL COMMENT '商品组合价格',
  `shipping_fee_type` tinyint(1) NOT NULL COMMENT '运费承担方式 1卖家承担运费 2买家承担运费',
  `shipping_fee` decimal(10,2) NOT NULL COMMENT '运费',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '组合状态 0-关闭/1-开启',
  PRIMARY KEY (`bl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合销售活动表';

-- ----------------------------
-- Records of ns_promotion_bundling
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_bundling_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_bundling_goods`;
CREATE TABLE `ns_promotion_bundling_goods` (
  `bl_goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '组合商品id',
  `bl_id` int(11) NOT NULL COMMENT '组合id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_picture` varchar(100) NOT NULL COMMENT '商品图片',
  `bl_goods_price` decimal(10,2) NOT NULL COMMENT '商品组合价格',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`bl_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组合销售活动商品表';

-- ----------------------------
-- Records of ns_promotion_bundling_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_discount`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_discount`;
CREATE TABLE `ns_promotion_discount` (
  `discount_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `shop_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `discount_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `remark` text NOT NULL COMMENT '备注',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='限时折扣';

-- ----------------------------
-- Records of ns_promotion_discount
-- ----------------------------
INSERT INTO `ns_promotion_discount` VALUES ('1', '0', '齐刘海', '七夕浪漫夜', '4', '', '1533089177', '1535681181', '1534730860', '0');
INSERT INTO `ns_promotion_discount` VALUES ('2', '0', '齐刘海', '中秋团圆夜', '4', '', '1535681511', '1538273517', '1534731131', '0');
INSERT INTO `ns_promotion_discount` VALUES ('3', '0', '齐刘海', '感恩回馈', '4', '', '1542940791', '1545791995', '1543200032', '0');

-- ----------------------------
-- Table structure for `ns_promotion_discount_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_discount_goods`;
CREATE TABLE `ns_promotion_discount_goods` (
  `discount_goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `discount_id` int(11) NOT NULL COMMENT '对应活动',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `discount` decimal(10,2) NOT NULL COMMENT '活动折扣或者减现信息',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL COMMENT '商品图片',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`discount_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712 COMMENT='限时折扣商品列表';

-- ----------------------------
-- Records of ns_promotion_discount_goods
-- ----------------------------
INSERT INTO `ns_promotion_discount_goods` VALUES ('1', '1', '11', '4', '0.99', '莱特维健 天然维生素E软胶囊 维生素e外用 维E美容养颜 VE延缓衰老 抗氧化女性保健品 美国进口 1盒', '80', '1533089177', '1535681181');
INSERT INTO `ns_promotion_discount_goods` VALUES ('2', '2', '10', '4', '9.99', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品', '75', '1535681511', '1538273517');
INSERT INTO `ns_promotion_discount_goods` VALUES ('3', '3', '43', '4', '9.99', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '163', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('4', '3', '42', '4', '9.99', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '162', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('5', '3', '41', '4', '9.99', '施华蔻专业( SchwarzkopfProfessional )尚丝', '161', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('6', '3', '40', '4', '9.99', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '160', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('7', '3', '39', '4', '9.99', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '159', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('8', '3', '38', '4', '9.99', '施华蔻专业( SchwarzkopfProfessional )尚丝', '158', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('9', '3', '37', '4', '9.99', '欧莱雅( LOREAL )油脂平衡洗发水500ml (进口）', '157', '1542940791', '1545791995');
INSERT INTO `ns_promotion_discount_goods` VALUES ('10', '3', '36', '4', '9.99', '吕(Ryo)含光耀护营润修护洗发水920mI红吕洗发水', '156', '1542940791', '1545791995');

-- ----------------------------
-- Table structure for `ns_promotion_full_mail`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_full_mail`;
CREATE TABLE `ns_promotion_full_mail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_open` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否开启 0未开启 1已开启',
  `full_mail_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '包邮所需订单金额',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `no_mail_province_id_array` text NOT NULL COMMENT '不包邮省id组',
  `no_mail_city_id_array` text NOT NULL COMMENT '不包邮市id组',
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='满额包邮';

-- ----------------------------
-- Records of ns_promotion_full_mail
-- ----------------------------
INSERT INTO `ns_promotion_full_mail` VALUES ('2', '0', '1', '10.00', '1532152914', '1534732662', '9,10,11,12,14,2,3,4,5,15,1', '73,74,85,84,83,82,81,80,79,78,77,76,75,86,87,96,95,94,93,92,91,90,89,88,97,98,113,112,111,110,109,108,107,106,105,104,103,102,101,100,99,114,124,133,132,131,130,129,128,127,126,125,134,2,3,12,11,10,9,8,7,6,5,4,13,14,23,22,21,20,19,18,17,16,15,24,25,35,34,33,32,31,30,29,28,27,26,36,135,150,149,148,147,146,145,144,143,142,141,140,139,138,137,136,151,1');

-- ----------------------------
-- Table structure for `ns_promotion_games`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_games`;
CREATE TABLE `ns_promotion_games` (
  `game_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '游戏id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '游戏活动名称',
  `game_type` int(11) NOT NULL DEFAULT '1' COMMENT '游戏类型',
  `member_level` varchar(255) NOT NULL DEFAULT '0' COMMENT '参与的会员等级0表示全部参与',
  `level_name` varchar(255) NOT NULL DEFAULT '' COMMENT '参与活动会员名称',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '参与一次扣除积分',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '活动状态 0未开始 1已开始 -1已结束 -2已关闭',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '活动说明',
  `winning_rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '中奖率',
  `no_winning_des` varchar(255) NOT NULL DEFAULT '' COMMENT '未中奖说明',
  `activity_images` varchar(255) DEFAULT '' COMMENT '活动图片，只有上传了活动图，才会在首页显示',
  `winning_list_display` int(11) NOT NULL DEFAULT '0' COMMENT '中奖名单是否显示 0不显示 1显示',
  `join_type` int(11) NOT NULL DEFAULT '0' COMMENT '参加类型 0 次/活动全过程 1 次/每天',
  `join_frequency` int(11) NOT NULL DEFAULT '1' COMMENT '根据类型计算参加次数',
  `winning_type` int(11) NOT NULL DEFAULT '0' COMMENT '中奖类型 0 次/活动全过程 1 次/每天',
  `winning_max` int(11) NOT NULL DEFAULT '1' COMMENT '根据类型计算中奖最大限制',
  PRIMARY KEY (`game_id`),
  KEY `IDX_ns_promotion_games_end_time` (`end_time`),
  KEY `IDX_ns_promotion_games_start_time` (`start_time`),
  KEY `IDX_ns_promotion_games_status` (`status`),
  KEY `IDX_ns_promotion_games_type` (`game_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='营销游戏（概率游戏）';

-- ----------------------------
-- Records of ns_promotion_games
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_games_winning_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_games_winning_records`;
CREATE TABLE `ns_promotion_games_winning_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL DEFAULT '0' COMMENT '会员id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `is_use` int(11) NOT NULL DEFAULT '0' COMMENT '是否使用',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '活动id',
  `game_type` int(11) NOT NULL DEFAULT '1' COMMENT '游戏类型1.大转盘2.刮刮乐3.九宫格',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '奖励类型1.积分2.优惠券3.红包4.赠品...',
  `points` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖励积分',
  `hongbao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '红包数（余额）',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖励优惠券',
  `gift_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品id',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '说明',
  `is_winning` smallint(1) NOT NULL DEFAULT '0' COMMENT '该次是否中奖 0未中奖  1中奖',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员昵称',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `rule_id` int(11) NOT NULL DEFAULT '0' COMMENT '奖项id',
  `associated_gift_record_id` int(11) DEFAULT '0' COMMENT '关联赠品记录id',
  PRIMARY KEY (`id`),
  KEY `IDX_ns_promotion_games_winning_records_coupon_id` (`coupon_id`),
  KEY `IDX_ns_promotion_games_winning_records_game_id` (`game_id`),
  KEY `IDX_ns_promotion_games_winning_records_gift_id` (`gift_id`),
  KEY `IDX_ns_promotion_games_winning_records_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='获奖记录';

-- ----------------------------
-- Records of ns_promotion_games_winning_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_game_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_game_rule`;
CREATE TABLE `ns_promotion_game_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id',
  `game_id` int(11) NOT NULL DEFAULT '0' COMMENT '游戏id',
  `rule_num` int(11) NOT NULL DEFAULT '0' COMMENT '奖品数量',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '奖励类型1. 积分 2. 优惠券3.红包4.赠品...',
  `coupon_type_id` int(11) NOT NULL DEFAULT '0' COMMENT '优惠券类型id',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT '奖励积分数',
  `hongbao` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖励红包数',
  `gift_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '规则关键字',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `rule_name` varchar(50) NOT NULL DEFAULT '' COMMENT '奖励规则等级',
  `type_value` varchar(255) NOT NULL DEFAULT '' COMMENT '奖励的具体的对应信息名称',
  `remaining_number` int(11) DEFAULT '0' COMMENT '剩余奖品数量',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ns_promotion_game_rule_coupon_type_id` (`coupon_type_id`),
  KEY `IDX_ns_promotion_game_rule_game_id` (`game_id`),
  KEY `IDX_ns_promotion_game_rule_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏活动规则';

-- ----------------------------
-- Records of ns_promotion_game_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_game_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_game_type`;
CREATE TABLE `ns_promotion_game_type` (
  `game_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `type_image` varchar(255) NOT NULL DEFAULT '' COMMENT '活动类型默认背景图',
  `type_ico` varchar(255) NOT NULL DEFAULT '' COMMENT '活动小图标',
  `type_des` varchar(255) NOT NULL DEFAULT '' COMMENT '活动介绍',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_complete` int(11) NOT NULL DEFAULT '0' COMMENT '是否完成',
  `game_text` text NOT NULL,
  PRIMARY KEY (`game_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='营销游戏类型';

-- ----------------------------
-- Records of ns_promotion_game_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_gift`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift`;
CREATE TABLE `ns_promotion_gift` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '赠品活动id ',
  `days` int(10) unsigned NOT NULL COMMENT '领取有效期(多少天)',
  `max_num` varchar(50) NOT NULL COMMENT '领取限制(次/人 (0表示不限领取次数))',
  `shop_id` varchar(100) NOT NULL COMMENT '店铺id',
  `gift_name` varchar(255) NOT NULL COMMENT '赠品活动名称',
  `start_time` int(11) DEFAULT '0' COMMENT '赠品有效期开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '赠品有效期结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='赠品活动表';

-- ----------------------------
-- Records of ns_promotion_gift
-- ----------------------------
INSERT INTO `ns_promotion_gift` VALUES ('1', '0', '0', '0', '莱特维健胶原蛋白口服', '1534730188', '1537408590', '1534730193', '0');

-- ----------------------------
-- Table structure for `ns_promotion_gift_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift_goods`;
CREATE TABLE `ns_promotion_gift_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id ',
  `gift_id` int(10) unsigned NOT NULL COMMENT '赠品id ',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_picture` varchar(100) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='商品赠品表';

-- ----------------------------
-- Records of ns_promotion_gift_goods
-- ----------------------------
INSERT INTO `ns_promotion_gift_goods` VALUES ('1', '1', '10', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品', '75');

-- ----------------------------
-- Table structure for `ns_promotion_gift_grant_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_gift_grant_records`;
CREATE TABLE `ns_promotion_gift_grant_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员昵称',
  `gift_id` int(11) NOT NULL COMMENT '礼品id',
  `gift_name` varchar(255) NOT NULL DEFAULT '' COMMENT '礼品名称',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL DEFAULT '0' COMMENT '商品图id',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '领取类型1.满减2.游戏...',
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  `relate_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联id（订单id）',
  `remark` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='赠品发放记录';

-- ----------------------------
-- Records of ns_promotion_gift_grant_records
-- ----------------------------
INSERT INTO `ns_promotion_gift_grant_records` VALUES ('1', '0', '23', '我是测试', '1', '莱特维健胶原蛋白口服', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品', '75', '1', '满减', '184', '满减送赠品', '1534730454');
INSERT INTO `ns_promotion_gift_grant_records` VALUES ('2', '0', '23', '我是测试', '1', '莱特维健胶原蛋白口服', '莱特维健胶原蛋白口服液 蓝莓石榴水果调味胶原蛋白肽粉 美容养颜抗衰老护肤 女性保健品', '75', '1', '满减', '186', '满减送赠品', '1534730634');

-- ----------------------------
-- Table structure for `ns_promotion_group_buy`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_group_buy`;
CREATE TABLE `ns_promotion_group_buy` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '活动名称',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '活动结束时间',
  `max_num` int(11) NOT NULL DEFAULT '0' COMMENT '最大购买量',
  `min_num` int(11) NOT NULL DEFAULT '0' COMMENT '最小购买量',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '活动信息',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `modify_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购活动表';

-- ----------------------------
-- Records of ns_promotion_group_buy
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_group_buy_ladder`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_group_buy_ladder`;
CREATE TABLE `ns_promotion_group_buy_ladder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '团购id',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `group_price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT '团购价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购阶梯价';

-- ----------------------------
-- Records of ns_promotion_group_buy_ladder
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_mansong`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong`;
CREATE TABLE `ns_promotion_mansong` (
  `mansong_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '满送活动编号',
  `mansong_name` varchar(50) NOT NULL COMMENT '活动名称',
  `shop_id` int(10) unsigned NOT NULL COMMENT '店铺编号',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `remark` varchar(200) NOT NULL COMMENT '备注',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1.普通优惠  2.多级优惠',
  `range_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1全部商品 0部分商品',
  `start_time` int(11) DEFAULT '0' COMMENT '活动开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '活动结束时间',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`mansong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='满就送活动表';

-- ----------------------------
-- Records of ns_promotion_mansong
-- ----------------------------
INSERT INTO `ns_promotion_mansong` VALUES ('1', '国庆大放送', '0', '齐刘海', '4', '', '1', '0', '1534730343', '1535075953', '1534730402', '0');
INSERT INTO `ns_promotion_mansong` VALUES ('2', '满减送', '0', '齐刘海', '4', '', '1', '0', '1535520522', '1538198923', '1535520560', '0');

-- ----------------------------
-- Table structure for `ns_promotion_mansong_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong_goods`;
CREATE TABLE `ns_promotion_mansong_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mansong_id` int(11) NOT NULL COMMENT '满减送ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '活动状态',
  `start_time` int(11) DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='满减送商品';

-- ----------------------------
-- Records of ns_promotion_mansong_goods
-- ----------------------------
INSERT INTO `ns_promotion_mansong_goods` VALUES ('1', '1', '11', '莱特维健 天然维生素E软胶囊 维生素e外用 维E美容养颜 VE延缓衰老 抗氧化女性保健品 美国进口 ', '80', '4', '1534730343', '1535075953');
INSERT INTO `ns_promotion_mansong_goods` VALUES ('2', '2', '12', '莱特维健 蓝莓叶黄素软胶囊 改善视力缓解视疲劳 儿童成人保护眼睛胡萝卜素维生素E', '47', '4', '1535520522', '1538198923');

-- ----------------------------
-- Table structure for `ns_promotion_mansong_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_mansong_rule`;
CREATE TABLE `ns_promotion_mansong_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则编号',
  `mansong_id` int(10) unsigned NOT NULL COMMENT '活动编号',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '级别价格(满多少)',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '减现金优惠金额（减多少金额）',
  `free_shipping` tinyint(4) NOT NULL DEFAULT '0' COMMENT '免邮费',
  `give_point` int(11) NOT NULL DEFAULT '0' COMMENT '送积分数量（0表示不送）',
  `give_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '送优惠券的id（0表示不送）',
  `gift_id` int(11) NOT NULL COMMENT '礼品(赠品)id',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='满就送活动规则表';

-- ----------------------------
-- Records of ns_promotion_mansong_rule
-- ----------------------------
INSERT INTO `ns_promotion_mansong_rule` VALUES ('1', '1', '10.00', '0.00', '0', '0', '0', '1');
INSERT INTO `ns_promotion_mansong_rule` VALUES ('2', '2', '100.00', '0.00', '0', '0', '5', '1');

-- ----------------------------
-- Table structure for `ns_promotion_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_topic`;
CREATE TABLE `ns_promotion_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '1' COMMENT '店铺ID',
  `shop_name` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `topic_name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `keyword` varchar(500) NOT NULL DEFAULT '' COMMENT '专题关键字',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '专题描述',
  `picture_img` varchar(255) NOT NULL DEFAULT '' COMMENT '图像地址',
  `scroll_img` varchar(255) NOT NULL DEFAULT '' COMMENT '条幅图片',
  `background_img` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图',
  `background_color` varchar(255) NOT NULL DEFAULT '' COMMENT '背景色',
  `introduce` text NOT NULL COMMENT '专题介绍',
  `wap_topic_template` varchar(255) NOT NULL DEFAULT '' COMMENT '手机自定义模板',
  `pc_topic_template` varchar(255) NOT NULL DEFAULT '' COMMENT '电脑端模板',
  `is_head` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示头部0.不显示1.显示',
  `is_foot` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示底部',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-未发布/1-正常/3-关闭/4-结束',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题活动表';

-- ----------------------------
-- Records of ns_promotion_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_promotion_topic_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_promotion_topic_goods`;
CREATE TABLE `ns_promotion_topic_goods` (
  `topic_goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `topic_id` int(11) NOT NULL COMMENT '对应专题活动',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_picture` int(11) NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`topic_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题活动商品表';

-- ----------------------------
-- Records of ns_promotion_topic_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_reward_rule`
-- ----------------------------
DROP TABLE IF EXISTS `ns_reward_rule`;
CREATE TABLE `ns_reward_rule` (
  `shop_id` int(10) unsigned NOT NULL,
  `sign_point` int(11) NOT NULL DEFAULT '0' COMMENT '签到送积分',
  `share_point` int(11) NOT NULL DEFAULT '0' COMMENT '分享送积分',
  `reg_member_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 自己获得的积分',
  `reg_member_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上级获得的积分',
  `reg_member_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上上级获得的积分',
  `reg_member_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '注册会员 上上上级获得的积分',
  `reg_promoter_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 自己获得的积分',
  `reg_promoter_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上级获得的积分',
  `reg_promoter_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上上级获得的积分',
  `reg_promoter_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为推广员 上上上级获得的积分',
  `reg_partner_self_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 自己获得的积分',
  `reg_partner_one_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上级获得的积分',
  `reg_partner_two_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上上级获得的积分',
  `reg_partner_three_point` int(11) NOT NULL DEFAULT '0' COMMENT '成为股东 上上上级获得的积分',
  `into_store_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '进店领用优惠券  存入优惠券id(coupon_id)',
  `share_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '分享领用优惠券  存入优惠券id(coupon_id)',
  `click_point` int(11) NOT NULL DEFAULT '0' COMMENT '点赞送积分',
  `comment_point` int(11) NOT NULL DEFAULT '0' COMMENT '评论送积分',
  `reg_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '注册送优惠券id',
  `click_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '点赞送优惠券id',
  `comment_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '评论送优惠券id',
  `sign_coupon` int(11) NOT NULL DEFAULT '0' COMMENT '签到送优惠券id',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='奖励规则表';

-- ----------------------------
-- Records of ns_reward_rule
-- ----------------------------
INSERT INTO `ns_reward_rule` VALUES ('0', '10', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '10', '3', '5', '5', '5');

-- ----------------------------
-- Table structure for `ns_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop`;
CREATE TABLE `ns_shop` (
  `shop_id` int(11) NOT NULL COMMENT '店铺索引id',
  `shop_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `shop_type` int(11) NOT NULL COMMENT '店铺类型等级',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `shop_group_id` int(11) NOT NULL COMMENT '店铺分类',
  `shop_company_name` varchar(50) DEFAULT NULL COMMENT '店铺公司名称',
  `province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺所在省份ID',
  `city_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺所在市ID',
  `shop_address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地区',
  `shop_zip` varchar(10) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `shop_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '店铺状态，0关闭，1开启，2审核中',
  `shop_close_info` varchar(255) DEFAULT NULL COMMENT '店铺关闭原因',
  `shop_sort` int(11) NOT NULL DEFAULT '0' COMMENT '店铺排序',
  `shop_logo` varchar(255) DEFAULT NULL COMMENT '店铺logo',
  `shop_banner` varchar(255) DEFAULT NULL COMMENT '店铺横幅',
  `shop_avatar` varchar(150) DEFAULT NULL COMMENT '店铺头像',
  `shop_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo关键字',
  `shop_description` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo描述',
  `shop_qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `shop_ww` varchar(50) DEFAULT NULL COMMENT '阿里旺旺',
  `shop_phone` varchar(20) DEFAULT NULL COMMENT '商家电话',
  `shop_domain` varchar(50) DEFAULT NULL COMMENT '店铺二级域名',
  `shop_domain_times` tinyint(1) unsigned DEFAULT '0' COMMENT '二级域名修改次数',
  `shop_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `shop_credit` int(10) NOT NULL DEFAULT '0' COMMENT '店铺信用',
  `shop_desccredit` float NOT NULL DEFAULT '0' COMMENT '描述相符度分数',
  `shop_servicecredit` float NOT NULL DEFAULT '0' COMMENT '服务态度分数',
  `shop_deliverycredit` float NOT NULL DEFAULT '0' COMMENT '发货速度分数',
  `shop_collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺收藏数量',
  `shop_stamp` varchar(200) DEFAULT NULL COMMENT '店铺印章',
  `shop_printdesc` varchar(500) DEFAULT NULL COMMENT '打印订单页面下方说明文字',
  `shop_sales` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺销售额（不计算退款）',
  `shop_account` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺账户余额',
  `shop_cash` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺可提现金额',
  `shop_workingtime` varchar(100) DEFAULT NULL COMMENT '工作时间',
  `live_store_name` varchar(255) DEFAULT NULL COMMENT '商铺名称',
  `live_store_address` varchar(255) DEFAULT NULL COMMENT '商家地址',
  `live_store_tel` varchar(255) DEFAULT NULL COMMENT '商铺电话',
  `live_store_bus` varchar(255) DEFAULT NULL COMMENT '公交线路',
  `shop_vrcode_prefix` char(3) DEFAULT NULL COMMENT '商家兑换码前缀',
  `store_qtian` tinyint(1) DEFAULT '0' COMMENT '7天退换',
  `shop_zhping` tinyint(1) DEFAULT '0' COMMENT '正品保障',
  `shop_erxiaoshi` tinyint(1) DEFAULT '0' COMMENT '两小时发货',
  `shop_tuihuo` tinyint(1) DEFAULT '0' COMMENT '退货承诺',
  `shop_shiyong` tinyint(1) DEFAULT '0' COMMENT '试用中心',
  `shop_shiti` tinyint(1) DEFAULT '0' COMMENT '实体验证',
  `shop_xiaoxie` tinyint(1) DEFAULT '0' COMMENT '消协保证',
  `shop_huodaofk` tinyint(1) DEFAULT '0' COMMENT '货到付款',
  `shop_free_time` varchar(10) DEFAULT NULL COMMENT '商家配送时间',
  `shop_region` varchar(50) DEFAULT NULL COMMENT '店铺默认配送区域',
  `recommend_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推荐招商员用户id',
  `shop_qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺公众号',
  `shop_create_time` int(11) DEFAULT '0' COMMENT '店铺时间',
  `shop_end_time` int(11) DEFAULT '0' COMMENT '店铺关闭时间',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺数据表';

-- ----------------------------
-- Records of ns_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_ad`;
CREATE TABLE `ns_shop_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `ad_image` varchar(255) NOT NULL DEFAULT '' COMMENT '广告图片',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '类型 0 -- pc端  1-- 手机端 ',
  `background` varchar(255) NOT NULL DEFAULT '#FFFFFF' COMMENT '背景色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='店铺广告设置';

-- ----------------------------
-- Records of ns_shop_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_coin_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_coin_records`;
CREATE TABLE `ns_shop_coin_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购物币数量',
  `account_type` int(11) NOT NULL DEFAULT '1' COMMENT '增加或减少类型',
  `type_alis_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联ID',
  `is_display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺购物币记录';

-- ----------------------------
-- Records of ns_shop_coin_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_express_address`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_express_address`;
CREATE TABLE `ns_shop_express_address` (
  `express_address_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物流地址id',
  `shop_id` int(11) NOT NULL COMMENT '商铺id',
  `contact` varchar(100) NOT NULL DEFAULT '' COMMENT '联系人',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `company_name` varchar(100) NOT NULL DEFAULT '' COMMENT '公司名称',
  `province` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地省',
  `city` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地市',
  `district` smallint(6) NOT NULL DEFAULT '0' COMMENT '所在地区县',
  `zipcode` varchar(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_consigner` tinyint(2) NOT NULL DEFAULT '0' COMMENT '发货地址标记',
  `is_receiver` tinyint(2) NOT NULL DEFAULT '0' COMMENT '收货地址标记',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`express_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='物流地址';

-- ----------------------------
-- Records of ns_shop_express_address
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_group`;
CREATE TABLE `ns_shop_group` (
  `shop_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分组ID',
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '分组名称',
  `group_sort` int(11) NOT NULL DEFAULT '1' COMMENT '分组排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`shop_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2730 COMMENT='店铺分组表';

-- ----------------------------
-- Records of ns_shop_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_navigation`;
CREATE TABLE `ns_shop_navigation` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `nav_title` varchar(255) NOT NULL DEFAULT '' COMMENT '导航名称',
  `nav_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '1pc端  2手机端',
  `sort` int(11) NOT NULL COMMENT '排序号',
  `align` int(11) NOT NULL DEFAULT '1' COMMENT '横向所在位置1 左  2  右',
  `nav_type` int(11) DEFAULT '1',
  `is_blank` int(11) DEFAULT '0',
  `template_name` varchar(255) DEFAULT '',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  `nav_icon` text NOT NULL COMMENT '导航图标',
  `is_show` smallint(1) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0不显示',
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='店铺导航管理';

-- ----------------------------
-- Records of ns_shop_navigation
-- ----------------------------
INSERT INTO `ns_shop_navigation` VALUES ('1', '0', 'PC导航', 'http://localhost/shopping9/index.php?s=/adminsite/config/addshopnavigation', '1', '0', '0', '1', '0', '', '1532682387', '1532682387', '', '1');
INSERT INTO `ns_shop_navigation` VALUES ('13', '0', '洗发', 'http://localhost/hairdressing/index.php?s=/wap/goods/goodslist&amp;category_id=6', '2', '0', '0', '1', '0', '', '1543199379', '1543199379', 'upload/common/1543199377.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('14', '0', '洗护套装', 'http://localhost/hairdressing/index.php?s=/wap/goods/goodslist&amp;category_id=12', '2', '0', '0', '1', '0', '', '1543199464', '1543199464', 'upload/common/1543199463.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('15', '0', '精油', 'http://localhost/hairdressing/index.php?s=/wap/goods/goodslist&amp;category_id=12', '2', '0', '0', '1', '0', '', '1543199515', '1543199515', 'upload/common/1543199514.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('16', '0', '发膜', 'http://localhost/hairdressing/index.php?s=/wap/goods/goodslist&amp;category_id=12', '2', '0', '0', '1', '0', '', '1543199583', '1543199583', 'upload/common/1543199582.png', '1');
INSERT INTO `ns_shop_navigation` VALUES ('17', '0', '造型', 'http://localhost/hairdressing/index.php?s=/wap/goods/goodslist&amp;category_id=13', '2', '0', '0', '1', '0', '', '1543199637', '1543199645', 'upload/common/1543199636.png', '1');

-- ----------------------------
-- Table structure for `ns_shop_navigation_template`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_navigation_template`;
CREATE TABLE `ns_shop_navigation_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `template_url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问路径',
  `is_use` int(11) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `use_type` int(11) NOT NULL COMMENT '1 shop端 2wap端',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='导航 的 系统默认模板';

-- ----------------------------
-- Records of ns_shop_navigation_template
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_order_account_records`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_order_account_records`;
CREATE TABLE `ns_shop_order_account_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `order_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_goods_id` int(11) NOT NULL COMMENT '订单项ID',
  `goods_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单项实际支付金额',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品平台佣金比率',
  `shop_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺获取金额',
  `platform_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台获取金额',
  `is_refund` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否产生退款',
  `refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际退款金额',
  `shop_refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺扣减余额',
  `platform_refund_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台扣减余额',
  `is_issue` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已经结算',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=655 COMMENT='店铺针对订单的金额分配';

-- ----------------------------
-- Records of ns_shop_order_account_records
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_shop_weixin_share`
-- ----------------------------
DROP TABLE IF EXISTS `ns_shop_weixin_share`;
CREATE TABLE `ns_shop_weixin_share` (
  `shop_id` int(11) NOT NULL,
  `goods_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分享价格标示',
  `goods_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '商品分享内容',
  `shop_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享标题',
  `shop_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享主题',
  `shop_param_3` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分享内容',
  `qrcode_param_1` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码分享主题',
  `qrcode_param_2` varchar(255) NOT NULL DEFAULT '' COMMENT '二维码分享内容',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='店铺分享内容设置';

-- ----------------------------
-- Records of ns_shop_weixin_share
-- ----------------------------
INSERT INTO `ns_shop_weixin_share` VALUES ('0', '优惠价：', '全场正品', '欢迎打开', '分享赚佣金', '', '向您推荐', '注册有优惠');

-- ----------------------------
-- Table structure for `ns_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `ns_supplier`;
CREATE TABLE `ns_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `supplier_name` varchar(50) NOT NULL DEFAULT '' COMMENT '供货商名称',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '供货商描述',
  `linkman_tel` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `linkman_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `linkman_address` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人地址',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供货商表';

-- ----------------------------
-- Records of ns_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_verification_person`
-- ----------------------------
DROP TABLE IF EXISTS `ns_verification_person`;
CREATE TABLE `ns_verification_person` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='核销人员表';

-- ----------------------------
-- Records of ns_verification_person
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods`;
CREATE TABLE `ns_virtual_goods` (
  `virtual_goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `virtual_code` varbinary(255) NOT NULL COMMENT '虚拟码',
  `virtual_goods_name` varchar(255) NOT NULL COMMENT '虚拟商品名称',
  `money` decimal(10,2) NOT NULL COMMENT '虚拟商品金额',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `buyer_nickname` varchar(255) NOT NULL COMMENT '买家名称',
  `order_goods_id` int(11) NOT NULL COMMENT '关联订单项id',
  `order_no` varchar(255) NOT NULL COMMENT '订单编号',
  `validity_period` int(11) NOT NULL COMMENT '有效期/天(0表示不限制)',
  `start_time` int(11) NOT NULL COMMENT '有效期开始时间',
  `end_time` int(11) NOT NULL COMMENT '有效期结束时间',
  `use_number` int(11) NOT NULL COMMENT '使用次数',
  `confine_use_number` int(11) NOT NULL COMMENT '限制使用次数',
  `use_status` tinyint(1) NOT NULL COMMENT '使用状态(-1:已过期,0:未使用,1:已使用)',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  PRIMARY KEY (`virtual_goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟商品列表(用户下单支成功后存放)';

-- ----------------------------
-- Records of ns_virtual_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_group`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_group`;
CREATE TABLE `ns_virtual_goods_group` (
  `virtual_goods_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟商品分组id',
  `virtual_goods_group_name` varchar(255) NOT NULL DEFAULT '' COMMENT '虚拟商品分组名称',
  `interfaces` varchar(1000) DEFAULT '' COMMENT '接口调用地址（JSON）',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`virtual_goods_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='虚拟商品分组表';

-- ----------------------------
-- Records of ns_virtual_goods_group
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_type`;
CREATE TABLE `ns_virtual_goods_type` (
  `virtual_goods_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟商品类型id',
  `virtual_goods_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联虚拟商品分组id',
  `validity_period` int(11) NOT NULL DEFAULT '0' COMMENT '有效期/天(0表示不限制)',
  `confine_use_number` int(11) NOT NULL DEFAULT '0' COMMENT '限制使用次数',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `relate_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `value_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '值详情',
  PRIMARY KEY (`virtual_goods_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ns_virtual_goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for `ns_virtual_goods_verification`
-- ----------------------------
DROP TABLE IF EXISTS `ns_virtual_goods_verification`;
CREATE TABLE `ns_virtual_goods_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '核销人员id',
  `virtual_goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户虚拟商品id',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '动作内容',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '用户虚拟商品使用状态',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '核销次数',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `verification_name` varchar(50) NOT NULL DEFAULT '' COMMENT '核销员',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '虚拟商品所有者',
  `goods_name` varchar(50) NOT NULL DEFAULT '' COMMENT '虚拟商品名称',
  `buyer_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品所有人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟商品核销记录表';

-- ----------------------------
-- Records of ns_virtual_goods_verification
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_addons`
-- ----------------------------
DROP TABLE IF EXISTS `sys_addons`;
CREATE TABLE `sys_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `config` text COMMENT '配置',
  `author` varchar(40) DEFAULT '' COMMENT '作者',
  `version` varchar(20) DEFAULT '' COMMENT '版本号',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `has_addonslist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有插件列表',
  `content` text NOT NULL COMMENT '详情',
  `config_hook` varchar(255) NOT NULL DEFAULT '' COMMENT '自定义配置文件钩子',
  `create_time` int(11) DEFAULT '0' COMMENT '安装时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of sys_addons
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_album_class`
-- ----------------------------
DROP TABLE IF EXISTS `sys_album_class`;
CREATE TABLE `sys_album_class` (
  `album_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `shop_id` int(10) NOT NULL DEFAULT '1' COMMENT '店铺id',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级相册ID',
  `album_name` varchar(100) NOT NULL COMMENT '相册名称',
  `index_slide` tinyint(1) DEFAULT '0' COMMENT '是否设置为首页轮播 0 否  1 是',
  `album_cover` varchar(255) NOT NULL DEFAULT '' COMMENT '相册封面',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为默认相册,1代表默认',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='相册表';

-- ----------------------------
-- Records of sys_album_class
-- ----------------------------
INSERT INTO `sys_album_class` VALUES ('1', '0', '0', '测试相册1', '0', '127', '1', '1', '1533785260');
INSERT INTO `sys_album_class` VALUES ('2', '0', '0', '测试相册2', '1', '123', '0', '2', '1533792577');
INSERT INTO `sys_album_class` VALUES ('3', '0', '0', '新的', '0', '', '0', '4', '1538205184');

-- ----------------------------
-- Table structure for `sys_album_picture`
-- ----------------------------
DROP TABLE IF EXISTS `sys_album_picture`;
CREATE TABLE `sys_album_picture` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册图片表id',
  `shop_id` int(10) unsigned DEFAULT '1' COMMENT '所属实例id',
  `album_id` int(10) unsigned NOT NULL COMMENT '相册id',
  `is_wide` int(11) NOT NULL DEFAULT '0' COMMENT '是否宽屏',
  `pic_name` varchar(100) NOT NULL COMMENT '图片名称',
  `pic_tag` varchar(255) NOT NULL DEFAULT '' COMMENT '图片标签',
  `pic_cover` varchar(255) NOT NULL COMMENT '原图图片路径',
  `pic_size` varchar(255) NOT NULL COMMENT '原图大小',
  `pic_spec` varchar(100) NOT NULL COMMENT '原图规格',
  `pic_cover_big` varchar(255) NOT NULL DEFAULT '' COMMENT '大图路径',
  `pic_size_big` varchar(255) NOT NULL DEFAULT '0' COMMENT '大图大小',
  `pic_spec_big` varchar(100) NOT NULL DEFAULT '' COMMENT '大图规格',
  `pic_cover_mid` varchar(255) NOT NULL DEFAULT '' COMMENT '中图路径',
  `pic_size_mid` varchar(255) NOT NULL DEFAULT '0' COMMENT '中图大小',
  `pic_spec_mid` varchar(100) NOT NULL DEFAULT '' COMMENT '中图规格',
  `pic_cover_small` varchar(255) NOT NULL DEFAULT '' COMMENT '小图路径',
  `pic_size_small` varchar(255) NOT NULL DEFAULT '0' COMMENT '小图大小',
  `pic_spec_small` varchar(255) NOT NULL DEFAULT '' COMMENT '小图规格',
  `pic_cover_micro` varchar(255) NOT NULL DEFAULT '' COMMENT '微图路径',
  `pic_size_micro` varchar(255) NOT NULL DEFAULT '0' COMMENT '微图大小',
  `pic_spec_micro` varchar(255) NOT NULL DEFAULT '' COMMENT '微图规格',
  `upload_time` int(11) DEFAULT '0' COMMENT '图片上传时间',
  `upload_type` int(11) DEFAULT '1' COMMENT '图片外链',
  `domain` varchar(255) DEFAULT '' COMMENT '图片外链',
  `bucket` varchar(255) DEFAULT '' COMMENT '存储空间名称',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=204 COMMENT='相册图片表';

-- ----------------------------
-- Records of sys_album_picture
-- ----------------------------
INSERT INTO `sys_album_picture` VALUES ('24', '0', '0', '0', 'TB2_8SddFOWBuNjy0FiXXXFxVXa_!!511906421', 'TB2_8SddFOWBuNjy0FiXXXFxVXa_!!511906421', 'upload/goods/20180721/8df30d67731c656a31ac50c686a976cd.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/e0167fe71335baa20a273e2da6d15d711.jpg', '700,700', '700,700', 'upload/goods/20180721/e0167fe71335baa20a273e2da6d15d712.jpg', '360,360', '360,360', 'upload/goods/20180721/e0167fe71335baa20a273e2da6d15d713.jpg', '240,240', '240,240', 'upload/goods/20180721/e0167fe71335baa20a273e2da6d15d714.jpg', '60,60', '60,60', '1532165764', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('25', '0', '0', '0', 'TB2nD0TdHSYBuNjSspiXXXNzpXa_!!511906421', 'TB2nD0TdHSYBuNjSspiXXXNzpXa_!!511906421', 'upload/goods/20180721/370fcaf76b802243f5769ba24c452662.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/80d093f234829523a8b8a5d8fb042c941.jpg', '700,700', '700,700', 'upload/goods/20180721/80d093f234829523a8b8a5d8fb042c942.jpg', '360,360', '360,360', 'upload/goods/20180721/80d093f234829523a8b8a5d8fb042c943.jpg', '240,240', '240,240', 'upload/goods/20180721/80d093f234829523a8b8a5d8fb042c944.jpg', '60,60', '60,60', '1532165768', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('26', '0', '0', '0', 'TB2bQX.dH1YBuNjSszeXXablFXa_!!511906421.jpg_400x400', 'TB2bQX.dH1YBuNjSszeXXablFXa_!!511906421.jpg_400x400', 'upload/goods/20180721/fe48479943dabfa6868c519c476fed98.jpg', '400,400', '400,400', 'upload/goods/20180721/a34b7badd75b9f110a98cf9968eea1f11.jpg', '700,700', '700,700', 'upload/goods/20180721/a34b7badd75b9f110a98cf9968eea1f12.jpg', '360,360', '360,360', 'upload/goods/20180721/a34b7badd75b9f110a98cf9968eea1f13.jpg', '240,240', '240,240', 'upload/goods/20180721/a34b7badd75b9f110a98cf9968eea1f14.jpg', '60,60', '60,60', '1532165772', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('27', '0', '0', '0', 'TB2Q89odQSWBuNjSszdXXbeSpXa_!!511906421', 'TB2Q89odQSWBuNjSszdXXbeSpXa_!!511906421', 'upload/goods/20180721/76f30c33c1ad84e49947f4ee14400ffe.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/63c7e38de80b6509efdf7175eb3ff8bd1.jpg', '700,700', '700,700', 'upload/goods/20180721/63c7e38de80b6509efdf7175eb3ff8bd2.jpg', '360,360', '360,360', 'upload/goods/20180721/63c7e38de80b6509efdf7175eb3ff8bd3.jpg', '240,240', '240,240', 'upload/goods/20180721/63c7e38de80b6509efdf7175eb3ff8bd4.jpg', '60,60', '60,60', '1532165776', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('28', '0', '0', '0', 'TB21mCtdGmWBuNjy1XaXXXCbXXa_!!511906421', 'TB21mCtdGmWBuNjy1XaXXXCbXXa_!!511906421', 'upload/goods/20180721/943ddc728d415c748e00e0660d300d0d.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/613a57b47549a585d712e9394d0e0d791.jpg', '700,700', '700,700', 'upload/goods/20180721/613a57b47549a585d712e9394d0e0d792.jpg', '360,360', '360,360', 'upload/goods/20180721/613a57b47549a585d712e9394d0e0d793.jpg', '240,240', '240,240', 'upload/goods/20180721/613a57b47549a585d712e9394d0e0d794.jpg', '60,60', '60,60', '1532165780', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('29', '0', '0', '0', 'TB2_8SddFOWBuNjy0FiXXXFxVXa_!!511906421', 'TB2_8SddFOWBuNjy0FiXXXFxVXa_!!511906421', 'upload/goods/20180721/f4be49923255fa946749244acf6293c1.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/c813fd4d5cf50010d36da826df22afa31.jpg', '700,700', '700,700', 'upload/goods/20180721/c813fd4d5cf50010d36da826df22afa32.jpg', '360,360', '360,360', 'upload/goods/20180721/c813fd4d5cf50010d36da826df22afa33.jpg', '240,240', '240,240', 'upload/goods/20180721/c813fd4d5cf50010d36da826df22afa34.jpg', '60,60', '60,60', '1532165844', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('30', '0', '0', '0', 'TB2bQX.dH1YBuNjSszeXXablFXa_!!511906421.jpg_400x400', 'TB2bQX.dH1YBuNjSszeXXablFXa_!!511906421.jpg_400x400', 'upload/goods/20180721/86f6c6d7314d6381f86b32e88f13693d.jpg', '400,400', '400,400', 'upload/goods/20180721/e29b97e7bfa9ed75abe85f922a3587021.jpg', '700,700', '700,700', 'upload/goods/20180721/e29b97e7bfa9ed75abe85f922a3587022.jpg', '360,360', '360,360', 'upload/goods/20180721/e29b97e7bfa9ed75abe85f922a3587023.jpg', '240,240', '240,240', 'upload/goods/20180721/e29b97e7bfa9ed75abe85f922a3587024.jpg', '60,60', '60,60', '1532165847', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('31', '0', '0', '0', 'TB21mCtdGmWBuNjy1XaXXXCbXXa_!!511906421', 'TB21mCtdGmWBuNjy1XaXXXCbXXa_!!511906421', 'upload/goods/20180721/a8af4219639ff64348f1b19c177710d3.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/0ce27640a77b7d2c9b443d2f7ed4ac9e1.jpg', '700,700', '700,700', 'upload/goods/20180721/0ce27640a77b7d2c9b443d2f7ed4ac9e2.jpg', '360,360', '360,360', 'upload/goods/20180721/0ce27640a77b7d2c9b443d2f7ed4ac9e3.jpg', '240,240', '240,240', 'upload/goods/20180721/0ce27640a77b7d2c9b443d2f7ed4ac9e4.jpg', '60,60', '60,60', '1532165851', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('32', '0', '0', '0', 'TB2Q89odQSWBuNjSszdXXbeSpXa_!!511906421', 'TB2Q89odQSWBuNjSszdXXbeSpXa_!!511906421', 'upload/goods/20180721/e7d3ce2dcd81456cb386715b8f988d02.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/e7180cd83756b31c1c08414a54d5d4bd1.jpg', '700,700', '700,700', 'upload/goods/20180721/e7180cd83756b31c1c08414a54d5d4bd2.jpg', '360,360', '360,360', 'upload/goods/20180721/e7180cd83756b31c1c08414a54d5d4bd3.jpg', '240,240', '240,240', 'upload/goods/20180721/e7180cd83756b31c1c08414a54d5d4bd4.jpg', '60,60', '60,60', '1532165855', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('33', '0', '0', '0', 'TB2nD0TdHSYBuNjSspiXXXNzpXa_!!511906421', 'TB2nD0TdHSYBuNjSspiXXXNzpXa_!!511906421', 'upload/goods/20180721/17258c6bd8e7f29a3b85894d82feabe4.jpg', '1000,1000', '1000,1000', 'upload/goods/20180721/ab702a3a444bc139132635dedfb1524a1.jpg', '700,700', '700,700', 'upload/goods/20180721/ab702a3a444bc139132635dedfb1524a2.jpg', '360,360', '360,360', 'upload/goods/20180721/ab702a3a444bc139132635dedfb1524a3.jpg', '240,240', '240,240', 'upload/goods/20180721/ab702a3a444bc139132635dedfb1524a4.jpg', '60,60', '60,60', '1532165859', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('34', '0', '0', '0', 'TB2ASfsDuuSBuNjSsziXXbq8pXa_!!3374142826', 'TB2ASfsDuuSBuNjSsziXXbq8pXa_!!3374142826', 'upload/goods/20180723/7132d9ec0dfae76dc75d1306ae385e47.jpg', '800,800', '800,800', 'upload/goods/20180723/49904f303b4b04d43233f6893cee96c41.jpg', '700,700', '700,700', 'upload/goods/20180723/49904f303b4b04d43233f6893cee96c42.jpg', '360,360', '360,360', 'upload/goods/20180723/49904f303b4b04d43233f6893cee96c43.jpg', '240,240', '240,240', 'upload/goods/20180723/49904f303b4b04d43233f6893cee96c44.jpg', '60,60', '60,60', '1532311628', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('35', '0', '0', '0', 'TB2cVmsDv5TBuNjSspcXXbnGFXa_!!3374142826', 'TB2cVmsDv5TBuNjSspcXXbnGFXa_!!3374142826', 'upload/goods/20180723/c634ddf681e031cff70db4b3c0228b9b.jpg', '800,800', '800,800', 'upload/goods/20180723/279932c477193c85914395a44f138c911.jpg', '700,700', '700,700', 'upload/goods/20180723/279932c477193c85914395a44f138c912.jpg', '360,360', '360,360', 'upload/goods/20180723/279932c477193c85914395a44f138c913.jpg', '240,240', '240,240', 'upload/goods/20180723/279932c477193c85914395a44f138c914.jpg', '60,60', '60,60', '1532311629', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('36', '0', '0', '0', 'TB2PCnrDr1YBuNjSszeXXablFXa_!!3374142826', 'TB2PCnrDr1YBuNjSszeXXablFXa_!!3374142826', 'upload/goods/20180723/3237bb02a79fde78a506c0f6241ae66a.jpg', '800,800', '800,800', 'upload/goods/20180723/0b67561d73cab9fc737e86e0fcf9f1bb1.jpg', '700,700', '700,700', 'upload/goods/20180723/0b67561d73cab9fc737e86e0fcf9f1bb2.jpg', '360,360', '360,360', 'upload/goods/20180723/0b67561d73cab9fc737e86e0fcf9f1bb3.jpg', '240,240', '240,240', 'upload/goods/20180723/0b67561d73cab9fc737e86e0fcf9f1bb4.jpg', '60,60', '60,60', '1532311633', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('37', '0', '0', '0', 'TB2e4LekAZmBKNjSZPiXXXFNVXa_!!3374142826.jpg_400x400', 'TB2e4LekAZmBKNjSZPiXXXFNVXa_!!3374142826.jpg_400x400', 'upload/goods/20180723/89e70ed24c2acd48ad54d4863d32fb28.jpg', '400,400', '400,400', 'upload/goods/20180723/565ef92ade0b41a22ef8601dff1f34e91.jpg', '700,700', '700,700', 'upload/goods/20180723/565ef92ade0b41a22ef8601dff1f34e92.jpg', '360,360', '360,360', 'upload/goods/20180723/565ef92ade0b41a22ef8601dff1f34e93.jpg', '240,240', '240,240', 'upload/goods/20180723/565ef92ade0b41a22ef8601dff1f34e94.jpg', '60,60', '60,60', '1532311637', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('38', '0', '0', '0', 'TB2Nda.DrSYBuNjSspiXXXNzpXa_!!3374142826', 'TB2Nda.DrSYBuNjSspiXXXNzpXa_!!3374142826', 'upload/goods/20180723/cc05a4a741c1f5b9de1f688b86cb2d7f.jpg', '800,800', '800,800', 'upload/goods/20180723/60b546abb1e47986566ff299994a0f871.jpg', '700,700', '700,700', 'upload/goods/20180723/60b546abb1e47986566ff299994a0f872.jpg', '360,360', '360,360', 'upload/goods/20180723/60b546abb1e47986566ff299994a0f873.jpg', '240,240', '240,240', 'upload/goods/20180723/60b546abb1e47986566ff299994a0f874.jpg', '60,60', '60,60', '1532311641', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('39', '0', '0', '0', '1.webp', '1.webp', 'upload/goods/20180801/23299ad37eb9afa633bcc8bf3e055b5e.jpg', '517,469', '517,469', 'upload/goods/20180801/482013f107ba57f9511e810ba820b4c01.jpg', '700,700', '700,700', 'upload/goods/20180801/482013f107ba57f9511e810ba820b4c02.jpg', '360,360', '360,360', 'upload/goods/20180801/482013f107ba57f9511e810ba820b4c03.jpg', '240,240', '240,240', 'upload/goods/20180801/482013f107ba57f9511e810ba820b4c04.jpg', '60,60', '60,60', '1533100708', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('40', '0', '0', '0', '2.webp', '2.webp', 'upload/goods/20180801/a97de9512db02b962e691c902d099850.jpg', '437,384', '437,384', 'upload/goods/20180801/099e8bc0e922bf4b6d4094eb65bed9781.jpg', '700,700', '700,700', 'upload/goods/20180801/099e8bc0e922bf4b6d4094eb65bed9782.jpg', '360,360', '360,360', 'upload/goods/20180801/099e8bc0e922bf4b6d4094eb65bed9783.jpg', '240,240', '240,240', 'upload/goods/20180801/099e8bc0e922bf4b6d4094eb65bed9784.jpg', '60,60', '60,60', '1533100711', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('41', '0', '0', '0', '2', '2', 'upload/goods/20180801/51b2b2d976e441d2e6b0d2bb3b8a102d.jpg', '790,758', '790,758', 'upload/goods/20180801/6ccdc26d97d4b0add4e38f5b277c5cd01.jpg', '700,700', '700,700', 'upload/goods/20180801/6ccdc26d97d4b0add4e38f5b277c5cd02.jpg', '360,360', '360,360', 'upload/goods/20180801/6ccdc26d97d4b0add4e38f5b277c5cd03.jpg', '240,240', '240,240', 'upload/goods/20180801/6ccdc26d97d4b0add4e38f5b277c5cd04.jpg', '60,60', '60,60', '1533100737', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('42', '0', '0', '0', '3', '3', 'upload/goods/20180801/865fbf6177107fc352584a5cc569ebd4.jpg', '790,740', '790,740', 'upload/goods/20180801/9f4241eef5786b718e65d0379aaff3cf1.jpg', '700,700', '700,700', 'upload/goods/20180801/9f4241eef5786b718e65d0379aaff3cf2.jpg', '360,360', '360,360', 'upload/goods/20180801/9f4241eef5786b718e65d0379aaff3cf3.jpg', '240,240', '240,240', 'upload/goods/20180801/9f4241eef5786b718e65d0379aaff3cf4.jpg', '60,60', '60,60', '1533100741', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('43', '0', '0', '0', '22', '22', 'upload/goods/20180801/8ca7e9a9193d63a23f90e346ce1d70fa.jpg', '426,384', '426,384', 'upload/goods/20180801/9616903ff5d87e42e5df408832b19aaa1.jpg', '700,700', '700,700', 'upload/goods/20180801/9616903ff5d87e42e5df408832b19aaa2.jpg', '360,360', '360,360', 'upload/goods/20180801/9616903ff5d87e42e5df408832b19aaa3.jpg', '240,240', '240,240', 'upload/goods/20180801/9616903ff5d87e42e5df408832b19aaa4.jpg', '60,60', '60,60', '1533102035', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('44', '0', '0', '0', '2222', '2222', 'upload/goods/20180801/134ef745f3ad9ade859cf8422078c7dd.jpg', '413,396', '413,396', 'upload/goods/20180801/1c67bbd09d5eb5ef532e07709f3ffe231.jpg', '700,700', '700,700', 'upload/goods/20180801/1c67bbd09d5eb5ef532e07709f3ffe232.jpg', '360,360', '360,360', 'upload/goods/20180801/1c67bbd09d5eb5ef532e07709f3ffe233.jpg', '240,240', '240,240', 'upload/goods/20180801/1c67bbd09d5eb5ef532e07709f3ffe234.jpg', '60,60', '60,60', '1533102038', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('45', '0', '0', '0', '22222', '22222', 'upload/goods/20180801/aa61a4fed71352796af5dd0319e9250e.jpg', '790,740', '790,740', 'upload/goods/20180801/28f8ac8d691f0e6be86311fe4c31b3831.jpg', '700,700', '700,700', 'upload/goods/20180801/28f8ac8d691f0e6be86311fe4c31b3832.jpg', '360,360', '360,360', 'upload/goods/20180801/28f8ac8d691f0e6be86311fe4c31b3833.jpg', '240,240', '240,240', 'upload/goods/20180801/28f8ac8d691f0e6be86311fe4c31b3834.jpg', '60,60', '60,60', '1533102054', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('46', '0', '0', '0', '222222', '222222', 'upload/goods/20180801/101a445e9fc535190e47cde7aef73542.jpg', '790,582', '790,582', 'upload/goods/20180801/0ee5937ff77ab3eb4d4ae0aea25bb9171.jpg', '700,700', '700,700', 'upload/goods/20180801/0ee5937ff77ab3eb4d4ae0aea25bb9172.jpg', '360,360', '360,360', 'upload/goods/20180801/0ee5937ff77ab3eb4d4ae0aea25bb9173.jpg', '240,240', '240,240', 'upload/goods/20180801/0ee5937ff77ab3eb4d4ae0aea25bb9174.jpg', '60,60', '60,60', '1533102056', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('47', '0', '0', '0', '333', '333', 'upload/goods/20180801/af80acfef9fd40c85a71c269bd5ba44d.jpg', '442,445', '442,445', 'upload/goods/20180801/22315093c0afee13abe2ea743a8018bd1.jpg', '700,700', '700,700', 'upload/goods/20180801/22315093c0afee13abe2ea743a8018bd2.jpg', '360,360', '360,360', 'upload/goods/20180801/22315093c0afee13abe2ea743a8018bd3.jpg', '240,240', '240,240', 'upload/goods/20180801/22315093c0afee13abe2ea743a8018bd4.jpg', '60,60', '60,60', '1533102594', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('48', '0', '0', '0', '2222', '2222', 'upload/goods/20180801/e0872f0a8c0428b18e0c6b0783c80a84.jpg', '413,396', '413,396', 'upload/goods/20180801/0b1276156f0045a46ab66845a81050301.jpg', '700,700', '700,700', 'upload/goods/20180801/0b1276156f0045a46ab66845a81050302.jpg', '360,360', '360,360', 'upload/goods/20180801/0b1276156f0045a46ab66845a81050303.jpg', '240,240', '240,240', 'upload/goods/20180801/0b1276156f0045a46ab66845a81050304.jpg', '60,60', '60,60', '1533102601', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('49', '0', '0', '0', '3333', '3333', 'upload/goods/20180801/c856ac77381465f76f7395bd7849e3ea.jpg', '448,446', '448,446', 'upload/goods/20180801/74c9b4e7ef6ad2dba2ea63e882ee2d3f1.jpg', '700,700', '700,700', 'upload/goods/20180801/74c9b4e7ef6ad2dba2ea63e882ee2d3f2.jpg', '360,360', '360,360', 'upload/goods/20180801/74c9b4e7ef6ad2dba2ea63e882ee2d3f3.jpg', '240,240', '240,240', 'upload/goods/20180801/74c9b4e7ef6ad2dba2ea63e882ee2d3f4.jpg', '60,60', '60,60', '1533102603', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('50', '0', '0', '0', '5adea7adNea6b36e4', '5adea7adNea6b36e4', 'upload/goods/20180801/6fbe00df824a5e418f8053cbc6151c2f.jpg', '790,423', '790,423', 'upload/goods/20180801/8698ae102993db199701d7661e07a6151.jpg', '700,700', '700,700', 'upload/goods/20180801/8698ae102993db199701d7661e07a6152.jpg', '360,360', '360,360', 'upload/goods/20180801/8698ae102993db199701d7661e07a6153.jpg', '240,240', '240,240', 'upload/goods/20180801/8698ae102993db199701d7661e07a6154.jpg', '60,60', '60,60', '1533102644', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('51', '0', '0', '0', '33333', '33333', 'upload/goods/20180801/c9886ede96be4d6a457e8f268a43bcdb.jpg', '790,459', '790,459', 'upload/goods/20180801/c105d40300d5cacfd6fc111f48ad80b41.jpg', '700,700', '700,700', 'upload/goods/20180801/c105d40300d5cacfd6fc111f48ad80b42.jpg', '360,360', '360,360', 'upload/goods/20180801/c105d40300d5cacfd6fc111f48ad80b43.jpg', '240,240', '240,240', 'upload/goods/20180801/c105d40300d5cacfd6fc111f48ad80b44.jpg', '60,60', '60,60', '1533102654', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('52', '0', '0', '0', '333333', '333333', 'upload/goods/20180801/4fae455f02428750140e1ce84b71189c.jpg', '790,679', '790,679', 'upload/goods/20180801/34cb551d95597cc7e9478218a773cc141.jpg', '700,700', '700,700', 'upload/goods/20180801/34cb551d95597cc7e9478218a773cc142.jpg', '360,360', '360,360', 'upload/goods/20180801/34cb551d95597cc7e9478218a773cc143.jpg', '240,240', '240,240', 'upload/goods/20180801/34cb551d95597cc7e9478218a773cc144.jpg', '60,60', '60,60', '1533102657', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('53', '0', '0', '0', '3333333', '3333333', 'upload/goods/20180801/055d6446f5df1898c8b229b9e781c572.jpg', '790,1023', '790,1023', 'upload/goods/20180801/f62267c38139789e149f498c711bfca61.jpg', '700,700', '700,700', 'upload/goods/20180801/f62267c38139789e149f498c711bfca62.jpg', '360,360', '360,360', 'upload/goods/20180801/f62267c38139789e149f498c711bfca63.jpg', '240,240', '240,240', 'upload/goods/20180801/f62267c38139789e149f498c711bfca64.jpg', '60,60', '60,60', '1533102659', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('54', '0', '0', '0', '5', '5', 'upload/goods/20180801/7bb773654911c3fbaf5df436f37bc721.jpg', '528,500', '528,500', 'upload/goods/20180801/cdb58ccf5f29441a4972e4edd8a3b8a61.jpg', '700,700', '700,700', 'upload/goods/20180801/cdb58ccf5f29441a4972e4edd8a3b8a62.jpg', '360,360', '360,360', 'upload/goods/20180801/cdb58ccf5f29441a4972e4edd8a3b8a63.jpg', '240,240', '240,240', 'upload/goods/20180801/cdb58ccf5f29441a4972e4edd8a3b8a64.jpg', '60,60', '60,60', '1533103079', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('55', '0', '0', '0', '55', '55', 'upload/goods/20180801/f08a09dc7bd86930d8b5ec813bb8b1e3.jpg', '378,407', '378,407', 'upload/goods/20180801/87822633c47cb336169873a11b481bfd1.jpg', '700,700', '700,700', 'upload/goods/20180801/87822633c47cb336169873a11b481bfd2.jpg', '360,360', '360,360', 'upload/goods/20180801/87822633c47cb336169873a11b481bfd3.jpg', '240,240', '240,240', 'upload/goods/20180801/87822633c47cb336169873a11b481bfd4.jpg', '60,60', '60,60', '1533103082', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('56', '0', '0', '0', '5555', '5555', 'upload/goods/20180801/d4189c85678dfdbd786f227d3a988f83.jpg', '790,633', '790,633', 'upload/goods/20180801/7bda93bd66bd3833aa1a37fc8db841c01.jpg', '700,700', '700,700', 'upload/goods/20180801/7bda93bd66bd3833aa1a37fc8db841c02.jpg', '360,360', '360,360', 'upload/goods/20180801/7bda93bd66bd3833aa1a37fc8db841c03.jpg', '240,240', '240,240', 'upload/goods/20180801/7bda93bd66bd3833aa1a37fc8db841c04.jpg', '60,60', '60,60', '1533103105', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('57', '0', '0', '0', '555', '555', 'upload/goods/20180801/24c135106fbcb8ab6a95f1facf818b7d.jpg', '790,633', '790,633', 'upload/goods/20180801/c23cf1207b1106ef0b126170344cf37d1.jpg', '700,700', '700,700', 'upload/goods/20180801/c23cf1207b1106ef0b126170344cf37d2.jpg', '360,360', '360,360', 'upload/goods/20180801/c23cf1207b1106ef0b126170344cf37d3.jpg', '240,240', '240,240', 'upload/goods/20180801/c23cf1207b1106ef0b126170344cf37d4.jpg', '60,60', '60,60', '1533103122', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('58', '0', '0', '0', '6', '6', 'upload/goods/20180801/7c55000ab01ebfb0bddfd07b99f73aa9.jpg', '418,435', '418,435', 'upload/goods/20180801/b981f5da2dafb6d3a930318c1576c0631.jpg', '700,700', '700,700', 'upload/goods/20180801/b981f5da2dafb6d3a930318c1576c0632.jpg', '360,360', '360,360', 'upload/goods/20180801/b981f5da2dafb6d3a930318c1576c0633.jpg', '240,240', '240,240', 'upload/goods/20180801/b981f5da2dafb6d3a930318c1576c0634.jpg', '60,60', '60,60', '1533103488', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('59', '0', '0', '0', '66', '66', 'upload/goods/20180801/7314ec9bf3ff20cfaf4e480fb7d29962.jpg', '422,439', '422,439', 'upload/goods/20180801/7782f3369bd7bf11e0413ab0a33d75d31.jpg', '700,700', '700,700', 'upload/goods/20180801/7782f3369bd7bf11e0413ab0a33d75d32.jpg', '360,360', '360,360', 'upload/goods/20180801/7782f3369bd7bf11e0413ab0a33d75d33.jpg', '240,240', '240,240', 'upload/goods/20180801/7782f3369bd7bf11e0413ab0a33d75d34.jpg', '60,60', '60,60', '1533103491', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('60', '0', '0', '0', '6666', '6666', 'upload/goods/20180801/0ebdf5eaff2af9b0592b26e9cfeccbb2.jpg', '790,630', '790,630', 'upload/goods/20180801/fea71b71b7a30470da1a01bfe4b6d71e1.jpg', '700,700', '700,700', 'upload/goods/20180801/fea71b71b7a30470da1a01bfe4b6d71e2.jpg', '360,360', '360,360', 'upload/goods/20180801/fea71b71b7a30470da1a01bfe4b6d71e3.jpg', '240,240', '240,240', 'upload/goods/20180801/fea71b71b7a30470da1a01bfe4b6d71e4.jpg', '60,60', '60,60', '1533103510', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('61', '0', '0', '0', '666', '666', 'upload/goods/20180801/deb18110dc33d35098361f9b62355a55.jpg', '790,975', '790,975', 'upload/goods/20180801/2c196d4fedee1b8d619ed0f55171a1fc1.jpg', '700,700', '700,700', 'upload/goods/20180801/2c196d4fedee1b8d619ed0f55171a1fc2.jpg', '360,360', '360,360', 'upload/goods/20180801/2c196d4fedee1b8d619ed0f55171a1fc3.jpg', '240,240', '240,240', 'upload/goods/20180801/2c196d4fedee1b8d619ed0f55171a1fc4.jpg', '60,60', '60,60', '1533103512', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('62', '0', '0', '0', '7', '7', 'upload/goods/20180801/5b75bd0c520b54c4f56b547e5637bffb.jpg', '700,659', '700,659', 'upload/goods/20180801/27346df6d261fc1e13c45497f9d4f0201.jpg', '700,700', '700,700', 'upload/goods/20180801/27346df6d261fc1e13c45497f9d4f0202.jpg', '360,360', '360,360', 'upload/goods/20180801/27346df6d261fc1e13c45497f9d4f0203.jpg', '240,240', '240,240', 'upload/goods/20180801/27346df6d261fc1e13c45497f9d4f0204.jpg', '60,60', '60,60', '1533104117', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('63', '0', '0', '0', '77', '77', 'upload/goods/20180801/650fec7efb88d263b6d01fbf44ce5c8e.jpg', '800,800', '800,800', 'upload/goods/20180801/f70f8a3d68fc310fc8002b36f4673f201.jpg', '700,700', '700,700', 'upload/goods/20180801/f70f8a3d68fc310fc8002b36f4673f202.jpg', '360,360', '360,360', 'upload/goods/20180801/f70f8a3d68fc310fc8002b36f4673f203.jpg', '240,240', '240,240', 'upload/goods/20180801/f70f8a3d68fc310fc8002b36f4673f204.jpg', '60,60', '60,60', '1533104119', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('64', '0', '0', '0', '8', '8', 'upload/goods/20180801/af96e1192b4032fae4e8a32736d19794.jpg', '553,545', '553,545', 'upload/goods/20180801/be7c06523aba3b79cfdec78dfc8e02901.jpg', '700,700', '700,700', 'upload/goods/20180801/be7c06523aba3b79cfdec78dfc8e02902.jpg', '360,360', '360,360', 'upload/goods/20180801/be7c06523aba3b79cfdec78dfc8e02903.jpg', '240,240', '240,240', 'upload/goods/20180801/be7c06523aba3b79cfdec78dfc8e02904.jpg', '60,60', '60,60', '1533104538', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('65', '0', '0', '0', '88', '88', 'upload/goods/20180801/e8478bf9b25d395a27f07197cf6c79db.jpg', '743,691', '743,691', 'upload/goods/20180801/881e438fbd4b7e4ba53b56774c9ec1ca1.jpg', '700,700', '700,700', 'upload/goods/20180801/881e438fbd4b7e4ba53b56774c9ec1ca2.jpg', '360,360', '360,360', 'upload/goods/20180801/881e438fbd4b7e4ba53b56774c9ec1ca3.jpg', '240,240', '240,240', 'upload/goods/20180801/881e438fbd4b7e4ba53b56774c9ec1ca4.jpg', '60,60', '60,60', '1533104543', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('66', '0', '0', '0', '9', '9', 'upload/goods/20180801/20ba9930e3202b8ed52109a88c3acf0e.jpg', '645,666', '645,666', 'upload/goods/20180801/d9c2b3879c382e4346ea8f7f62e1e2771.jpg', '700,700', '700,700', 'upload/goods/20180801/d9c2b3879c382e4346ea8f7f62e1e2772.jpg', '360,360', '360,360', 'upload/goods/20180801/d9c2b3879c382e4346ea8f7f62e1e2773.jpg', '240,240', '240,240', 'upload/goods/20180801/d9c2b3879c382e4346ea8f7f62e1e2774.jpg', '60,60', '60,60', '1533105107', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('67', '0', '0', '0', '99', '99', 'upload/goods/20180801/9d07c92e84db3111b3d45d6829b246b0.jpg', '635,633', '635,633', 'upload/goods/20180801/ca315b02786a072d9382378fce7ac5321.jpg', '700,700', '700,700', 'upload/goods/20180801/ca315b02786a072d9382378fce7ac5322.jpg', '360,360', '360,360', 'upload/goods/20180801/ca315b02786a072d9382378fce7ac5323.jpg', '240,240', '240,240', 'upload/goods/20180801/ca315b02786a072d9382378fce7ac5324.jpg', '60,60', '60,60', '1533105111', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('68', '0', '0', '0', '9899', '9899', 'upload/goods/20180801/e0bc5fe2cc7231d5b9ca7b75e053b179.jpg', '785,783', '785,783', 'upload/goods/20180801/3d22693d7e353d78995feecf9db768da1.jpg', '700,700', '700,700', 'upload/goods/20180801/3d22693d7e353d78995feecf9db768da2.jpg', '360,360', '360,360', 'upload/goods/20180801/3d22693d7e353d78995feecf9db768da3.jpg', '240,240', '240,240', 'upload/goods/20180801/3d22693d7e353d78995feecf9db768da4.jpg', '60,60', '60,60', '1533105133', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('69', '0', '0', '0', '10', '10', 'upload/goods/20180801/14af75d1133dd544cefee09e8208138c.jpg', '488,397', '488,397', 'upload/goods/20180801/31df22f7680acc2f3147f4ba9a668abf1.jpg', '700,700', '700,700', 'upload/goods/20180801/31df22f7680acc2f3147f4ba9a668abf2.jpg', '360,360', '360,360', 'upload/goods/20180801/31df22f7680acc2f3147f4ba9a668abf3.jpg', '240,240', '240,240', 'upload/goods/20180801/31df22f7680acc2f3147f4ba9a668abf4.jpg', '60,60', '60,60', '1533105482', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('70', '0', '0', '0', '110', '110', 'upload/goods/20180801/65f068ca6cd4d3c3e5e7fa69871cedb4.jpg', '508,354', '508,354', 'upload/goods/20180801/baf1a825f2d5605cd675085fc64792af1.jpg', '700,700', '700,700', 'upload/goods/20180801/baf1a825f2d5605cd675085fc64792af2.jpg', '360,360', '360,360', 'upload/goods/20180801/baf1a825f2d5605cd675085fc64792af3.jpg', '240,240', '240,240', 'upload/goods/20180801/baf1a825f2d5605cd675085fc64792af4.jpg', '60,60', '60,60', '1533105484', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('71', '0', '0', '0', '1110', '1110', 'upload/goods/20180801/421c946421f5d0d0ade62e6dc3549521.jpg', '792,574', '792,574', 'upload/goods/20180801/9f083309f5c8048248ba62c7fc8917151.jpg', '700,700', '700,700', 'upload/goods/20180801/9f083309f5c8048248ba62c7fc8917152.jpg', '360,360', '360,360', 'upload/goods/20180801/9f083309f5c8048248ba62c7fc8917153.jpg', '240,240', '240,240', 'upload/goods/20180801/9f083309f5c8048248ba62c7fc8917154.jpg', '60,60', '60,60', '1533105486', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('72', '0', '0', '0', '1100', '1100', 'upload/goods/20180801/aaae0e37e1301575303852467749e5ff.jpg', '771,524', '771,524', 'upload/goods/20180801/bd2fb3306203e314920ee898573c3aeb1.jpg', '700,700', '700,700', 'upload/goods/20180801/bd2fb3306203e314920ee898573c3aeb2.jpg', '360,360', '360,360', 'upload/goods/20180801/bd2fb3306203e314920ee898573c3aeb3.jpg', '240,240', '240,240', 'upload/goods/20180801/bd2fb3306203e314920ee898573c3aeb4.jpg', '60,60', '60,60', '1533105489', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('73', '0', '0', '0', '11', '11', 'upload/goods/20180801/c85641006f31c39a7a379e59869fb0a2.jpg', '638,646', '638,646', 'upload/goods/20180801/7db56c3db12da5aa3e7cd1edde2859501.jpg', '700,700', '700,700', 'upload/goods/20180801/7db56c3db12da5aa3e7cd1edde2859502.jpg', '360,360', '360,360', 'upload/goods/20180801/7db56c3db12da5aa3e7cd1edde2859503.jpg', '240,240', '240,240', 'upload/goods/20180801/7db56c3db12da5aa3e7cd1edde2859504.jpg', '60,60', '60,60', '1533106234', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('74', '0', '0', '0', '11111', '11111', 'upload/goods/20180801/3393aea6b0c25037d3c586f23b3bb759.jpg', '800,800', '800,800', 'upload/goods/20180801/1d5e1254cb4156a1c3649f7d4df167001.jpg', '700,700', '700,700', 'upload/goods/20180801/1d5e1254cb4156a1c3649f7d4df167002.jpg', '360,360', '360,360', 'upload/goods/20180801/1d5e1254cb4156a1c3649f7d4df167003.jpg', '240,240', '240,240', 'upload/goods/20180801/1d5e1254cb4156a1c3649f7d4df167004.jpg', '60,60', '60,60', '1533106236', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('75', '0', '0', '0', '1', '1', 'upload/goods/20180801/20a032c79b2ca98852c1ca0ab7e8e420.jpg', '442,445', '442,445', 'upload/goods/20180801/6d79fda6977cdf20c1e45d291f20321c1.jpg', '700,700', '700,700', 'upload/goods/20180801/6d79fda6977cdf20c1e45d291f20321c2.jpg', '360,360', '360,360', 'upload/goods/20180801/6d79fda6977cdf20c1e45d291f20321c3.jpg', '240,240', '240,240', 'upload/goods/20180801/6d79fda6977cdf20c1e45d291f20321c4.jpg', '60,60', '60,60', '1533106944', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('76', '0', '0', '0', '2', '2', 'upload/goods/20180801/bf857d7385fb4c0c9617fa51977c43a9.jpg', '506,445', '506,445', 'upload/goods/20180801/89793497d326601a28aaa5b5c85f867e1.jpg', '700,700', '700,700', 'upload/goods/20180801/89793497d326601a28aaa5b5c85f867e2.jpg', '360,360', '360,360', 'upload/goods/20180801/89793497d326601a28aaa5b5c85f867e3.jpg', '240,240', '240,240', 'upload/goods/20180801/89793497d326601a28aaa5b5c85f867e4.jpg', '60,60', '60,60', '1533106947', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('77', '0', '0', '0', '3', '3', 'upload/goods/20180801/19d0d538d23aed447ebdc122f8ec6f21.jpg', '790,740', '790,740', 'upload/goods/20180801/d4cd6b0ddb288ea781d6cba9d864e6831.jpg', '700,700', '700,700', 'upload/goods/20180801/d4cd6b0ddb288ea781d6cba9d864e6832.jpg', '360,360', '360,360', 'upload/goods/20180801/d4cd6b0ddb288ea781d6cba9d864e6833.jpg', '240,240', '240,240', 'upload/goods/20180801/d4cd6b0ddb288ea781d6cba9d864e6834.jpg', '60,60', '60,60', '1533106964', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('78', '0', '0', '0', '2', '2', 'upload/goods/20180801/f38692dab46fdaec406e07203400feb3.jpg', '442,445', '442,445', 'upload/goods/20180801/e08e1e2d90a554d5f92db12afaed5c8d1.jpg', '700,700', '700,700', 'upload/goods/20180801/e08e1e2d90a554d5f92db12afaed5c8d2.jpg', '360,360', '360,360', 'upload/goods/20180801/e08e1e2d90a554d5f92db12afaed5c8d3.jpg', '240,240', '240,240', 'upload/goods/20180801/e08e1e2d90a554d5f92db12afaed5c8d4.jpg', '60,60', '60,60', '1533107011', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('79', '0', '0', '0', '2222', '2222', 'upload/goods/20180801/c7d3193fa0f71d938f5b9a50e5b28714.jpg', '442,445', '442,445', 'upload/goods/20180801/dfd0cb0656c9053d7d3d630dd4dc49a91.jpg', '700,700', '700,700', 'upload/goods/20180801/dfd0cb0656c9053d7d3d630dd4dc49a92.jpg', '360,360', '360,360', 'upload/goods/20180801/dfd0cb0656c9053d7d3d630dd4dc49a93.jpg', '240,240', '240,240', 'upload/goods/20180801/dfd0cb0656c9053d7d3d630dd4dc49a94.jpg', '60,60', '60,60', '1533107046', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('80', '0', '0', '0', '22', '22', 'upload/goods/20180801/4480899c0598a7b8374eaa243d0e656d.jpg', '442,445', '442,445', 'upload/goods/20180801/59aab9fa0717a58f3164db53b7d099d01.jpg', '700,700', '700,700', 'upload/goods/20180801/59aab9fa0717a58f3164db53b7d099d02.jpg', '360,360', '360,360', 'upload/goods/20180801/59aab9fa0717a58f3164db53b7d099d03.jpg', '240,240', '240,240', 'upload/goods/20180801/59aab9fa0717a58f3164db53b7d099d04.jpg', '60,60', '60,60', '1533107050', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('81', '0', '0', '0', '10', '10', 'upload/goods/20180801/4e01458be4ba2fc5032cd53bdd66bd30.jpg', '442,445', '442,445', 'upload/goods/20180801/3a7cbbc0eee1069959d87fe689e9a3261.jpg', '700,700', '700,700', 'upload/goods/20180801/3a7cbbc0eee1069959d87fe689e9a3262.jpg', '360,360', '360,360', 'upload/goods/20180801/3a7cbbc0eee1069959d87fe689e9a3263.jpg', '240,240', '240,240', 'upload/goods/20180801/3a7cbbc0eee1069959d87fe689e9a3264.jpg', '60,60', '60,60', '1533107115', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('82', '0', '0', '0', '110', '110', 'upload/goods/20180801/66b5c941dc36b13e0c19bd18a31fff92.jpg', '442,445', '442,445', 'upload/goods/20180801/55c0151ce5b236994e1009d8ba21ac8a1.jpg', '700,700', '700,700', 'upload/goods/20180801/55c0151ce5b236994e1009d8ba21ac8a2.jpg', '360,360', '360,360', 'upload/goods/20180801/55c0151ce5b236994e1009d8ba21ac8a3.jpg', '240,240', '240,240', 'upload/goods/20180801/55c0151ce5b236994e1009d8ba21ac8a4.jpg', '60,60', '60,60', '1533107118', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('83', '0', '0', '0', '99', '99', 'upload/goods/20180801/23bb3b93f9252880ddc869d341ed33cf.jpg', '442,442', '442,442', 'upload/goods/20180801/c16e365f7752749323a74bcb3b64cbf11.jpg', '700,700', '700,700', 'upload/goods/20180801/c16e365f7752749323a74bcb3b64cbf12.jpg', '360,360', '360,360', 'upload/goods/20180801/c16e365f7752749323a74bcb3b64cbf13.jpg', '240,240', '240,240', 'upload/goods/20180801/c16e365f7752749323a74bcb3b64cbf14.jpg', '60,60', '60,60', '1533107397', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('84', '0', '0', '0', '9', '9', 'upload/goods/20180801/f0dec6e82db432cefbf262183a0fa507.jpg', '442,442', '442,442', 'upload/goods/20180801/df405dd5886a887ff5fdd05ccce9ae2b1.jpg', '700,700', '700,700', 'upload/goods/20180801/df405dd5886a887ff5fdd05ccce9ae2b2.jpg', '360,360', '360,360', 'upload/goods/20180801/df405dd5886a887ff5fdd05ccce9ae2b3.jpg', '240,240', '240,240', 'upload/goods/20180801/df405dd5886a887ff5fdd05ccce9ae2b4.jpg', '60,60', '60,60', '1533107400', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('85', '0', '0', '0', '7', '7', 'upload/goods/20180801/787791519046efd455899871f2167433.jpg', '442,442', '442,442', 'upload/goods/20180801/f690eb11d69999662a181ba1e3f79d9b1.jpg', '700,700', '700,700', 'upload/goods/20180801/f690eb11d69999662a181ba1e3f79d9b2.jpg', '360,360', '360,360', 'upload/goods/20180801/f690eb11d69999662a181ba1e3f79d9b3.jpg', '240,240', '240,240', 'upload/goods/20180801/f690eb11d69999662a181ba1e3f79d9b4.jpg', '60,60', '60,60', '1533107508', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('86', '0', '0', '0', '77', '77', 'upload/goods/20180801/3405616d9c958edefc933bd8d9dd25e6.jpg', '442,442', '442,442', 'upload/goods/20180801/6b5aa650a6f5335d38e40949569a99a91.jpg', '700,700', '700,700', 'upload/goods/20180801/6b5aa650a6f5335d38e40949569a99a92.jpg', '360,360', '360,360', 'upload/goods/20180801/6b5aa650a6f5335d38e40949569a99a93.jpg', '240,240', '240,240', 'upload/goods/20180801/6b5aa650a6f5335d38e40949569a99a94.jpg', '60,60', '60,60', '1533107510', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('87', '0', '0', '0', '55', '55', 'upload/goods/20180801/eab0ac8af60401bdcddc42e3b3aa9180.jpg', '442,442', '442,442', 'upload/goods/20180801/02f23caec66df4df1898dcbe7daba3db1.jpg', '700,700', '700,700', 'upload/goods/20180801/02f23caec66df4df1898dcbe7daba3db2.jpg', '360,360', '360,360', 'upload/goods/20180801/02f23caec66df4df1898dcbe7daba3db3.jpg', '240,240', '240,240', 'upload/goods/20180801/02f23caec66df4df1898dcbe7daba3db4.jpg', '60,60', '60,60', '1533107988', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('88', '0', '0', '0', '5', '5', 'upload/goods/20180801/13e5203d3e1fa9f91f13c1b103b1bcd5.jpg', '442,442', '442,442', 'upload/goods/20180801/fa154db0338337c33ba0f40b891b5dd91.jpg', '700,700', '700,700', 'upload/goods/20180801/fa154db0338337c33ba0f40b891b5dd92.jpg', '360,360', '360,360', 'upload/goods/20180801/fa154db0338337c33ba0f40b891b5dd93.jpg', '240,240', '240,240', 'upload/goods/20180801/fa154db0338337c33ba0f40b891b5dd94.jpg', '60,60', '60,60', '1533107992', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('89', '0', '0', '0', '12', '12', 'upload/goods/20180801/f90d09a4ad7e352bbda760530661eba3.jpg', '405,405', '405,405', 'upload/goods/20180801/8be7f24e5ab71e4444e8714b8caaa0891.jpg', '700,700', '700,700', 'upload/goods/20180801/8be7f24e5ab71e4444e8714b8caaa0892.jpg', '360,360', '360,360', 'upload/goods/20180801/8be7f24e5ab71e4444e8714b8caaa0893.jpg', '240,240', '240,240', 'upload/goods/20180801/8be7f24e5ab71e4444e8714b8caaa0894.jpg', '60,60', '60,60', '1533108357', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('90', '0', '0', '0', '122', '122', 'upload/goods/20180801/fa9e495cdbe616648df84771012d2634.jpg', '405,405', '405,405', 'upload/goods/20180801/bf685e32f4acda0293ae3f95b9fa0abe1.jpg', '700,700', '700,700', 'upload/goods/20180801/bf685e32f4acda0293ae3f95b9fa0abe2.jpg', '360,360', '360,360', 'upload/goods/20180801/bf685e32f4acda0293ae3f95b9fa0abe3.jpg', '240,240', '240,240', 'upload/goods/20180801/bf685e32f4acda0293ae3f95b9fa0abe4.jpg', '60,60', '60,60', '1533108360', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('91', '0', '0', '0', '13', '13', 'upload/goods/20180801/f7e91396d756ae0b8aa498acf9d187ed.jpg', '310,310', '310,310', 'upload/goods/20180801/a61a3a00934f74295e985b8376caf70a1.jpg', '700,700', '700,700', 'upload/goods/20180801/a61a3a00934f74295e985b8376caf70a2.jpg', '360,360', '360,360', 'upload/goods/20180801/a61a3a00934f74295e985b8376caf70a3.jpg', '240,240', '240,240', 'upload/goods/20180801/a61a3a00934f74295e985b8376caf70a4.jpg', '60,60', '60,60', '1533108671', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('92', '0', '0', '0', '133', '133', 'upload/goods/20180801/6d2074f3e3ba64bba4f3a036c995a1ce.jpg', '310,310', '310,310', 'upload/goods/20180801/646e253f6776f18902c6b60cb01af2df1.jpg', '700,700', '700,700', 'upload/goods/20180801/646e253f6776f18902c6b60cb01af2df2.jpg', '360,360', '360,360', 'upload/goods/20180801/646e253f6776f18902c6b60cb01af2df3.jpg', '240,240', '240,240', 'upload/goods/20180801/646e253f6776f18902c6b60cb01af2df4.jpg', '60,60', '60,60', '1533108673', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('93', '0', '0', '0', '133', '133', 'upload/goods/20180801/5da0fb0a93f3f0ae89a3183051a99020.jpg', '310,310', '310,310', 'upload/goods/20180801/f6ff9023306adb99e597fdc15b17012a1.jpg', '700,700', '700,700', 'upload/goods/20180801/f6ff9023306adb99e597fdc15b17012a2.jpg', '360,360', '360,360', 'upload/goods/20180801/f6ff9023306adb99e597fdc15b17012a3.jpg', '240,240', '240,240', 'upload/goods/20180801/f6ff9023306adb99e597fdc15b17012a4.jpg', '60,60', '60,60', '1533108767', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('94', '0', '0', '0', '13', '13', 'upload/goods/20180801/25ff747124f84ab981fde592b44ec992.jpg', '310,310', '310,310', 'upload/goods/20180801/645a13f752fec4ebe6cdb4e1da8388091.jpg', '700,700', '700,700', 'upload/goods/20180801/645a13f752fec4ebe6cdb4e1da8388092.jpg', '360,360', '360,360', 'upload/goods/20180801/645a13f752fec4ebe6cdb4e1da8388093.jpg', '240,240', '240,240', 'upload/goods/20180801/645a13f752fec4ebe6cdb4e1da8388094.jpg', '60,60', '60,60', '1533108770', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('95', '0', '0', '0', '14', '14', 'upload/goods/20180801/8a868c170a763a3f50b20229591c755f.jpg', '410,410', '410,410', 'upload/goods/20180801/8026e3af8ba781995681e8575349f3a91.jpg', '700,700', '700,700', 'upload/goods/20180801/8026e3af8ba781995681e8575349f3a92.jpg', '360,360', '360,360', 'upload/goods/20180801/8026e3af8ba781995681e8575349f3a93.jpg', '240,240', '240,240', 'upload/goods/20180801/8026e3af8ba781995681e8575349f3a94.jpg', '60,60', '60,60', '1533109449', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('96', '0', '0', '0', '144', '144', 'upload/goods/20180801/28a04784ce60408ed51f8cabdc597f99.jpg', '410,410', '410,410', 'upload/goods/20180801/57a27508e625630235c7c7850e7d66c71.jpg', '700,700', '700,700', 'upload/goods/20180801/57a27508e625630235c7c7850e7d66c72.jpg', '360,360', '360,360', 'upload/goods/20180801/57a27508e625630235c7c7850e7d66c73.jpg', '240,240', '240,240', 'upload/goods/20180801/57a27508e625630235c7c7850e7d66c74.jpg', '60,60', '60,60', '1533109452', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('97', '0', '0', '0', '15', '15', 'upload/goods/20180801/358b0fae9c5f106eb950b87dc296e192.jpg', '330,330', '330,330', 'upload/goods/20180801/936ebc8d5a37e372c7fa47ffce7657611.jpg', '700,700', '700,700', 'upload/goods/20180801/936ebc8d5a37e372c7fa47ffce7657612.jpg', '360,360', '360,360', 'upload/goods/20180801/936ebc8d5a37e372c7fa47ffce7657613.jpg', '240,240', '240,240', 'upload/goods/20180801/936ebc8d5a37e372c7fa47ffce7657614.jpg', '60,60', '60,60', '1533110054', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('98', '0', '0', '0', '155', '155', 'upload/goods/20180801/9a52ad2868c1ac4265e353e6d4fe0731.jpg', '800,800', '800,800', 'upload/goods/20180801/b3f41bcf26a1b17bfbd4eac6de1be12f1.jpg', '700,700', '700,700', 'upload/goods/20180801/b3f41bcf26a1b17bfbd4eac6de1be12f2.jpg', '360,360', '360,360', 'upload/goods/20180801/b3f41bcf26a1b17bfbd4eac6de1be12f3.jpg', '240,240', '240,240', 'upload/goods/20180801/b3f41bcf26a1b17bfbd4eac6de1be12f4.jpg', '60,60', '60,60', '1533110056', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('99', '0', '0', '0', '66', '66', 'upload/goods/20180801/fe28c2446807976f203a5013f05f8f15.jpg', '410,410', '410,410', 'upload/goods/20180801/92d0327bb17a829bd6da5f83302683dc1.jpg', '700,700', '700,700', 'upload/goods/20180801/92d0327bb17a829bd6da5f83302683dc2.jpg', '360,360', '360,360', 'upload/goods/20180801/92d0327bb17a829bd6da5f83302683dc3.jpg', '240,240', '240,240', 'upload/goods/20180801/92d0327bb17a829bd6da5f83302683dc4.jpg', '60,60', '60,60', '1533110408', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('100', '0', '0', '0', '6', '6', 'upload/goods/20180801/5b33fb138c1a837c1af1ab9a53c9aeb4.jpg', '410,410', '410,410', 'upload/goods/20180801/c3352d12370d5e4fa8f96b14265ceb311.jpg', '700,700', '700,700', 'upload/goods/20180801/c3352d12370d5e4fa8f96b14265ceb312.jpg', '360,360', '360,360', 'upload/goods/20180801/c3352d12370d5e4fa8f96b14265ceb313.jpg', '240,240', '240,240', 'upload/goods/20180801/c3352d12370d5e4fa8f96b14265ceb314.jpg', '60,60', '60,60', '1533110411', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('101', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/e4ceae406046a7d1485c6d8028b6a5fa.jpg', '640,960', '640,960', 'upload/goods/20180809/9ec9ea5281780577340eaf62faf8d7521.jpg', '700,700', '700,700', 'upload/goods/20180809/9ec9ea5281780577340eaf62faf8d7522.jpg', '360,360', '360,360', 'upload/goods/20180809/9ec9ea5281780577340eaf62faf8d7523.jpg', '240,240', '240,240', 'upload/goods/20180809/9ec9ea5281780577340eaf62faf8d7524.jpg', '60,60', '60,60', '1533779253', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('102', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/b8e80dc491bbe34f15e37f0a398316ad.jpg', '640,960', '640,960', 'upload/goods/20180809/38c63f0a1e6cc19d52964313064abbf61.jpg', '700,700', '700,700', 'upload/goods/20180809/38c63f0a1e6cc19d52964313064abbf62.jpg', '360,360', '360,360', 'upload/goods/20180809/38c63f0a1e6cc19d52964313064abbf63.jpg', '240,240', '240,240', 'upload/goods/20180809/38c63f0a1e6cc19d52964313064abbf64.jpg', '60,60', '60,60', '1533779329', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('103', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/8bd5b561c5d79f8bc2f1544b2c399eac.jpg', '640,960', '640,960', 'upload/goods/20180809/48a83917a3b6c25e30fbcd4edf1d1f1c1.jpg', '700,700', '700,700', 'upload/goods/20180809/48a83917a3b6c25e30fbcd4edf1d1f1c2.jpg', '360,360', '360,360', 'upload/goods/20180809/48a83917a3b6c25e30fbcd4edf1d1f1c3.jpg', '240,240', '240,240', 'upload/goods/20180809/48a83917a3b6c25e30fbcd4edf1d1f1c4.jpg', '60,60', '60,60', '1533779549', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('104', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/87cbc1add8fd0dc32e59dc38eea78213.jpg', '640,960', '640,960', 'upload/goods/20180809/c62851fa83af5463ec68fbe1b49499471.jpg', '700,700', '700,700', 'upload/goods/20180809/c62851fa83af5463ec68fbe1b49499472.jpg', '360,360', '360,360', 'upload/goods/20180809/c62851fa83af5463ec68fbe1b49499473.jpg', '240,240', '240,240', 'upload/goods/20180809/c62851fa83af5463ec68fbe1b49499474.jpg', '60,60', '60,60', '1533779624', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('105', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/abb3f518f449d1bf87065af71d629af4.jpg', '640,960', '640,960', 'upload/goods/20180809/3cd0bd69eb49f31f7a5847230805dbc71.jpg', '700,700', '700,700', 'upload/goods/20180809/3cd0bd69eb49f31f7a5847230805dbc72.jpg', '360,360', '360,360', 'upload/goods/20180809/3cd0bd69eb49f31f7a5847230805dbc73.jpg', '240,240', '240,240', 'upload/goods/20180809/3cd0bd69eb49f31f7a5847230805dbc74.jpg', '60,60', '60,60', '1533779728', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('106', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/74ad3bba5257cc3634da71cbad7f131d.jpg', '640,960', '640,960', 'upload/goods/20180809/a59afe863afd79b80bd6870800cb268c1.jpg', '700,700', '700,700', 'upload/goods/20180809/a59afe863afd79b80bd6870800cb268c2.jpg', '360,360', '360,360', 'upload/goods/20180809/a59afe863afd79b80bd6870800cb268c3.jpg', '240,240', '240,240', 'upload/goods/20180809/a59afe863afd79b80bd6870800cb268c4.jpg', '60,60', '60,60', '1533779780', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('107', '0', '0', '0', '580a4e5dbd99961c6fdc4a782ce42b90', '580a4e5dbd99961c6fdc4a782ce42b90', 'upload/goods/20180809/49320324d75896b41002c26548ac5f22.jpg', '1024,768', '1024,768', 'upload/goods/20180809/e16b0119442255b48eb0f13f167e9e4a1.jpg', '700,700', '700,700', 'upload/goods/20180809/e16b0119442255b48eb0f13f167e9e4a2.jpg', '360,360', '360,360', 'upload/goods/20180809/e16b0119442255b48eb0f13f167e9e4a3.jpg', '240,240', '240,240', 'upload/goods/20180809/e16b0119442255b48eb0f13f167e9e4a4.jpg', '60,60', '60,60', '1533780193', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('108', '0', '0', '0', '576316', '576316', 'upload/goods/20180809/2e8de939060e8532f466b719a5201786.jpg', '1424,832', '1424,832', 'upload/goods/20180809/d654ce0319d0543f7bf6f7b60f5f12531.jpg', '700,700', '700,700', 'upload/goods/20180809/d654ce0319d0543f7bf6f7b60f5f12532.jpg', '360,360', '360,360', 'upload/goods/20180809/d654ce0319d0543f7bf6f7b60f5f12533.jpg', '240,240', '240,240', 'upload/goods/20180809/d654ce0319d0543f7bf6f7b60f5f12534.jpg', '60,60', '60,60', '1533780298', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('109', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/19c97f3f983de2a945d9b9cafdbec08c.jpg', '640,960', '640,960', 'upload/goods/20180809/2de9661e5395fc9c191c3d2c8f67adc41.jpg', '700,700', '700,700', 'upload/goods/20180809/2de9661e5395fc9c191c3d2c8f67adc42.jpg', '360,360', '360,360', 'upload/goods/20180809/2de9661e5395fc9c191c3d2c8f67adc43.jpg', '240,240', '240,240', 'upload/goods/20180809/2de9661e5395fc9c191c3d2c8f67adc44.jpg', '60,60', '60,60', '1533780606', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('110', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/bf77e1b645516b7eee04ccc3c97e2ec4.jpg', '640,960', '640,960', 'upload/goods/20180809/f988562154b9c5e585f80de12b49747d1.jpg', '700,700', '700,700', 'upload/goods/20180809/f988562154b9c5e585f80de12b49747d2.jpg', '360,360', '360,360', 'upload/goods/20180809/f988562154b9c5e585f80de12b49747d3.jpg', '240,240', '240,240', 'upload/goods/20180809/f988562154b9c5e585f80de12b49747d4.jpg', '60,60', '60,60', '1533784647', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('111', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180809/9d0ecabbdee21f529cc258a28e839902.jpg', '640,960', '640,960', 'upload/goods/20180809/0b484de491689e9ddbf509d58c4267df1.jpg', '700,700', '700,700', 'upload/goods/20180809/0b484de491689e9ddbf509d58c4267df2.jpg', '360,360', '360,360', 'upload/goods/20180809/0b484de491689e9ddbf509d58c4267df3.jpg', '240,240', '240,240', 'upload/goods/20180809/0b484de491689e9ddbf509d58c4267df4.jpg', '60,60', '60,60', '1533784704', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('112', '0', '0', '0', '216030', '216030', 'upload/goods/20180815/62ec4ad564aeffffd78bdce60b4a03cc.jpg', '1440,900', '1440,900', 'upload/goods/20180815/9b2c7682fb93d305d3f7296678cfe1c91.jpg', '700,700', '700,700', 'upload/goods/20180815/9b2c7682fb93d305d3f7296678cfe1c92.jpg', '360,360', '360,360', 'upload/goods/20180815/9b2c7682fb93d305d3f7296678cfe1c93.jpg', '240,240', '240,240', 'upload/goods/20180815/9b2c7682fb93d305d3f7296678cfe1c94.jpg', '60,60', '60,60', '1534295784', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('113', '0', '0', '0', '163103cl352ubzol5bmm65', '163103cl352ubzol5bmm65', 'upload/goods/20180815/af44e115a24af101fe784e15416ec056.jpg', '1024,600', '1024,600', 'upload/goods/20180815/f17310b3fcc3f737d636e405c93e80c61.jpg', '700,700', '700,700', 'upload/goods/20180815/f17310b3fcc3f737d636e405c93e80c62.jpg', '360,360', '360,360', 'upload/goods/20180815/f17310b3fcc3f737d636e405c93e80c63.jpg', '240,240', '240,240', 'upload/goods/20180815/f17310b3fcc3f737d636e405c93e80c64.jpg', '60,60', '60,60', '1534295949', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('114', '0', '0', '0', '445871', '445871', 'upload/goods/20180815/34603f584e1fa6fcc6f42534399fdc2e.jpg', '1366,768', '1366,768', 'upload/goods/20180815/d6b893d128aa5b2c95f276660d77b8001.jpg', '700,700', '700,700', 'upload/goods/20180815/d6b893d128aa5b2c95f276660d77b8002.jpg', '360,360', '360,360', 'upload/goods/20180815/d6b893d128aa5b2c95f276660d77b8003.jpg', '240,240', '240,240', 'upload/goods/20180815/d6b893d128aa5b2c95f276660d77b8004.jpg', '60,60', '60,60', '1534296054', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('115', '0', '0', '0', '580a4e5dbd99961c6fdc4a782ce42b90', '580a4e5dbd99961c6fdc4a782ce42b90', 'upload/goods/20180815/eac14e794587baa78a8a113a91f72b02.jpg', '1024,768', '1024,768', 'upload/goods/20180815/4f74376ea97a4b5c0277040d599ec0691.jpg', '700,700', '700,700', 'upload/goods/20180815/4f74376ea97a4b5c0277040d599ec0692.jpg', '360,360', '360,360', 'upload/goods/20180815/4f74376ea97a4b5c0277040d599ec0693.jpg', '240,240', '240,240', 'upload/goods/20180815/4f74376ea97a4b5c0277040d599ec0694.jpg', '60,60', '60,60', '1534296216', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('116', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/fd8d27cf543239d2c30a799e8aaa3454.jpg', '640,960', '640,960', 'upload/goods/20180815/399b2616b5105db700a62ce756d34fe51.jpg', '700,700', '700,700', 'upload/goods/20180815/399b2616b5105db700a62ce756d34fe52.jpg', '360,360', '360,360', 'upload/goods/20180815/399b2616b5105db700a62ce756d34fe53.jpg', '240,240', '240,240', 'upload/goods/20180815/399b2616b5105db700a62ce756d34fe54.jpg', '60,60', '60,60', '1534296788', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('117', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/3918f2c953b0f0418b283bebd034f323.jpg', '640,960', '640,960', 'upload/goods/20180815/471e1894c26444c70ddedfd598ae2e791.jpg', '700,700', '700,700', 'upload/goods/20180815/471e1894c26444c70ddedfd598ae2e792.jpg', '360,360', '360,360', 'upload/goods/20180815/471e1894c26444c70ddedfd598ae2e793.jpg', '240,240', '240,240', 'upload/goods/20180815/471e1894c26444c70ddedfd598ae2e794.jpg', '60,60', '60,60', '1534296820', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('118', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/c5de3dbafe8b3514b3190c344234dc76.jpg', '640,960', '640,960', 'upload/goods/20180815/dcf84edf1694cd3d67388c6d0d09864e1.jpg', '700,700', '700,700', 'upload/goods/20180815/dcf84edf1694cd3d67388c6d0d09864e2.jpg', '360,360', '360,360', 'upload/goods/20180815/dcf84edf1694cd3d67388c6d0d09864e3.jpg', '240,240', '240,240', 'upload/goods/20180815/dcf84edf1694cd3d67388c6d0d09864e4.jpg', '60,60', '60,60', '1534296960', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('119', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/9aaf964eafeee7751b67c6cd6ad1eed9.jpg', '640,960', '640,960', 'upload/goods/20180815/091dfd454ddde006e3524c2d8505784c1.jpg', '700,700', '700,700', 'upload/goods/20180815/091dfd454ddde006e3524c2d8505784c2.jpg', '360,360', '360,360', 'upload/goods/20180815/091dfd454ddde006e3524c2d8505784c3.jpg', '240,240', '240,240', 'upload/goods/20180815/091dfd454ddde006e3524c2d8505784c4.jpg', '60,60', '60,60', '1534297086', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('120', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/dde553e752a95e8085c1cd8a529061dd.jpg', '640,960', '640,960', 'upload/goods/20180815/5842c08150ae6c7cfb04b89e2bc3cf3b1.jpg', '700,700', '700,700', 'upload/goods/20180815/5842c08150ae6c7cfb04b89e2bc3cf3b2.jpg', '360,360', '360,360', 'upload/goods/20180815/5842c08150ae6c7cfb04b89e2bc3cf3b3.jpg', '240,240', '240,240', 'upload/goods/20180815/5842c08150ae6c7cfb04b89e2bc3cf3b4.jpg', '60,60', '60,60', '1534297119', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('121', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/a64092e93f0a11f3d9ab95a0075e4ad5.jpg', '640,960', '640,960', 'upload/goods/20180815/dee2dd9bb98e36432e0cf99b064e2d5f1.jpg', '700,700', '700,700', 'upload/goods/20180815/dee2dd9bb98e36432e0cf99b064e2d5f2.jpg', '360,360', '360,360', 'upload/goods/20180815/dee2dd9bb98e36432e0cf99b064e2d5f3.jpg', '240,240', '240,240', 'upload/goods/20180815/dee2dd9bb98e36432e0cf99b064e2d5f4.jpg', '60,60', '60,60', '1534297254', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('122', '0', '0', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20180815/b3655fab309f1e4d47b48272b426d9f2.jpg', '640,960', '640,960', 'upload/goods/20180815/afeef49c9d55b774f63731caebfb50921.jpg', '700,700', '700,700', 'upload/goods/20180815/afeef49c9d55b774f63731caebfb50922.jpg', '360,360', '360,360', 'upload/goods/20180815/afeef49c9d55b774f63731caebfb50923.jpg', '240,240', '240,240', 'upload/goods/20180815/afeef49c9d55b774f63731caebfb50924.jpg', '60,60', '60,60', '1534298914', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('123', '0', '2', '0', 'banner1', 'banner1', 'upload/goods/20180817/94f9cc0e99186c06898b4ca71a61ec46.jpg', '1920,450', '1920,450', 'upload/goods/20180817/be72e72756fc94756cc43f5cc06219451.jpg', '700,700', '700,700', 'upload/goods/20180817/be72e72756fc94756cc43f5cc06219452.jpg', '360,360', '360,360', 'upload/goods/20180817/be72e72756fc94756cc43f5cc06219453.jpg', '240,240', '240,240', 'upload/goods/20180817/be72e72756fc94756cc43f5cc06219454.jpg', '60,60', '60,60', '1534489591', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('124', '0', '2', '0', 'banner2', 'banner2', 'upload/goods/20180817/876d8181bd8ee107bc3f5596bf3342f8.jpg', '1920,450', '1920,450', 'upload/goods/20180817/27086affe0bac5cde3ba19d0c62590841.jpg', '700,700', '700,700', 'upload/goods/20180817/27086affe0bac5cde3ba19d0c62590842.jpg', '360,360', '360,360', 'upload/goods/20180817/27086affe0bac5cde3ba19d0c62590843.jpg', '240,240', '240,240', 'upload/goods/20180817/27086affe0bac5cde3ba19d0c62590844.jpg', '60,60', '60,60', '1534489592', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('126', '0', '1', '0', '201702200834429402', '201702200834429402', 'upload/goods/20180817/050f933ca186e01f30fd2e89c6202531.jpg', '550,353', '550,353', 'upload/goods/20180817/f6ca53846f49546e338cad4029a505891.jpg', '700,700', '700,700', 'upload/goods/20180817/f6ca53846f49546e338cad4029a505892.jpg', '360,360', '360,360', 'upload/goods/20180817/f6ca53846f49546e338cad4029a505893.jpg', '240,240', '240,240', 'upload/goods/20180817/f6ca53846f49546e338cad4029a505894.jpg', '60,60', '60,60', '1534491352', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('127', '0', '1', '0', 't0144a7743fcd70dcd8', 't0144a7743fcd70dcd8', 'upload/goods/20180817/449dd82710aa8a3e9055c4000f0c8b3a.jpg', '177,99', '177,99', 'upload/goods/20180817/e557d6b1d447a61674974ea1c670dee61.jpg', '700,700', '700,700', 'upload/goods/20180817/e557d6b1d447a61674974ea1c670dee62.jpg', '360,360', '360,360', 'upload/goods/20180817/e557d6b1d447a61674974ea1c670dee63.jpg', '240,240', '240,240', 'upload/goods/20180817/e557d6b1d447a61674974ea1c670dee64.jpg', '60,60', '60,60', '1534491354', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('128', '0', '1', '0', 'a55b8967803657c9', 'a55b8967803657c9', 'upload/goods/20180817/3d9fe05615bdc3a961b1e589b96834c1.jpg', '1920,817', '1920,817', 'upload/goods/20180817/f2b63b8e808099867d3bf754caeb10f61.jpg', '700,700', '700,700', 'upload/goods/20180817/f2b63b8e808099867d3bf754caeb10f62.jpg', '360,360', '360,360', 'upload/goods/20180817/f2b63b8e808099867d3bf754caeb10f63.jpg', '240,240', '240,240', 'upload/goods/20180817/f2b63b8e808099867d3bf754caeb10f64.jpg', '60,60', '60,60', '1534491357', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('129', '0', '0', '0', '1faa7477926d5467', '1faa7477926d5467', 'upload/goods/20180830/93d638d8bd50e8b9da339502860009c9.jpg', '1900,1128', '1900,1128', 'upload/goods/20180830/07f91a9cad1839c71f1fec67323db1861.jpg', '700,700', '700,700', 'upload/goods/20180830/07f91a9cad1839c71f1fec67323db1862.jpg', '360,360', '360,360', 'upload/goods/20180830/07f91a9cad1839c71f1fec67323db1863.jpg', '240,240', '240,240', 'upload/goods/20180830/07f91a9cad1839c71f1fec67323db1864.jpg', '60,60', '60,60', '1535613898', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('130', '0', '0', '0', '5178eb5a0f9dc', '5178eb5a0f9dc', 'upload/goods/20180830/2e90b8485fffcccefe8b23ddc91ae1e4.jpg', '1115,789', '1115,789', 'upload/goods/20180830/73f8dc5a8e6ce585e29f8fee844103dd1.jpg', '700,700', '700,700', 'upload/goods/20180830/73f8dc5a8e6ce585e29f8fee844103dd2.jpg', '360,360', '360,360', 'upload/goods/20180830/73f8dc5a8e6ce585e29f8fee844103dd3.jpg', '240,240', '240,240', 'upload/goods/20180830/73f8dc5a8e6ce585e29f8fee844103dd4.jpg', '60,60', '60,60', '1535613901', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('131', '0', '0', '0', '580a4e5dbd99961c6fdc4a782ce42b90', '580a4e5dbd99961c6fdc4a782ce42b90', 'upload/goods/20180830/ad4c86305abccca1dc8b2de5736dd675.jpg', '1024,768', '1024,768', 'upload/goods/20180830/f8dd7c0e13703f1df6826f522cf9e7c01.jpg', '700,700', '700,700', 'upload/goods/20180830/f8dd7c0e13703f1df6826f522cf9e7c02.jpg', '360,360', '360,360', 'upload/goods/20180830/f8dd7c0e13703f1df6826f522cf9e7c03.jpg', '240,240', '240,240', 'upload/goods/20180830/f8dd7c0e13703f1df6826f522cf9e7c04.jpg', '60,60', '60,60', '1535613903', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('132', '0', '1', '0', 'QQ截图20180830152547', 'QQ截图20180830152547', 'upload/goods/20180830/c9b82e77d94255e717590e68628973b9.png', '429,562', '429,562', 'upload/goods/20180830/be67572f0b6f0c6cd37a38d3098884711.png', '700,700', '700,700', 'upload/goods/20180830/be67572f0b6f0c6cd37a38d3098884712.png', '360,360', '360,360', 'upload/goods/20180830/be67572f0b6f0c6cd37a38d3098884713.png', '240,240', '240,240', 'upload/goods/20180830/be67572f0b6f0c6cd37a38d3098884714.png', '60,60', '60,60', '1535613980', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('133', '0', '0', '0', '151740bsjhfiezikmhskkg', '151740bsjhfiezikmhskkg', 'upload/goods/20180901/7873d0e4b16dfa958d5bb4f751af294b.jpg', '960,800', '960,800', 'upload/goods/20180901/168b73b6bcb89f3520e5a3b8e50064581.jpg', '700,700', '700,700', 'upload/goods/20180901/168b73b6bcb89f3520e5a3b8e50064582.jpg', '360,360', '360,360', 'upload/goods/20180901/168b73b6bcb89f3520e5a3b8e50064583.jpg', '240,240', '240,240', 'upload/goods/20180901/168b73b6bcb89f3520e5a3b8e50064584.jpg', '60,60', '60,60', '1535784197', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('134', '0', '0', '0', '216030', '216030', 'upload/goods/20180901/e9ef4074b08c4d3af6dd47b1bb76bece.jpg', '1440,900', '1440,900', 'upload/goods/20180901/e11a0924dfa325b26c4bbb096463c9981.jpg', '700,700', '700,700', 'upload/goods/20180901/e11a0924dfa325b26c4bbb096463c9982.jpg', '360,360', '360,360', 'upload/goods/20180901/e11a0924dfa325b26c4bbb096463c9983.jpg', '240,240', '240,240', 'upload/goods/20180901/e11a0924dfa325b26c4bbb096463c9984.jpg', '60,60', '60,60', '1535784200', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('135', '0', '0', '0', '163103cl352ubzol5bmm65', '163103cl352ubzol5bmm65', 'upload/goods/20180901/cbe9fb0058722251f467b471f5d0694e.jpg', '1024,600', '1024,600', 'upload/goods/20180901/e87e9ec51808987a90be3f09f3b65f4a1.jpg', '700,700', '700,700', 'upload/goods/20180901/e87e9ec51808987a90be3f09f3b65f4a2.jpg', '360,360', '360,360', 'upload/goods/20180901/e87e9ec51808987a90be3f09f3b65f4a3.jpg', '240,240', '240,240', 'upload/goods/20180901/e87e9ec51808987a90be3f09f3b65f4a4.jpg', '60,60', '60,60', '1535784202', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('136', '0', '0', '0', '194144.33865412_o', '194144.33865412_o', 'upload/goods/20180901/88ed021ce7a2296528885ef1d907256e.jpg', '1280,720', '1280,720', 'upload/goods/20180901/eeef23abaa077c4b9d96158d440d189d1.jpg', '700,700', '700,700', 'upload/goods/20180901/eeef23abaa077c4b9d96158d440d189d2.jpg', '360,360', '360,360', 'upload/goods/20180901/eeef23abaa077c4b9d96158d440d189d3.jpg', '240,240', '240,240', 'upload/goods/20180901/eeef23abaa077c4b9d96158d440d189d4.jpg', '60,60', '60,60', '1535784204', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('137', '0', '0', '0', 'default_goods_image_240', 'default_goods_image_240', 'upload/goods/20180919/a8208f89c77f7558c648851da686608c.gif', '267,200', '267,200', 'upload/goods/20180919/f4236213863f73bcf0350de97c64c9381.gif', '700,700', '700,700', 'upload/goods/20180919/f4236213863f73bcf0350de97c64c9382.gif', '360,360', '360,360', 'upload/goods/20180919/f4236213863f73bcf0350de97c64c9383.gif', '240,240', '240,240', 'upload/goods/20180919/f4236213863f73bcf0350de97c64c9384.gif', '60,60', '60,60', '1537336320', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('138', '0', '0', '0', 'default_goods_image_240', 'default_goods_image_240', 'upload/goods/20180919/24bb4ffbae6fa2f9a508e9a247348653.gif', '267,200', '267,200', 'upload/goods/20180919/cd85a7fb96fa6f020df80f3d1c805f031.gif', '700,700', '700,700', 'upload/goods/20180919/cd85a7fb96fa6f020df80f3d1c805f032.gif', '360,360', '360,360', 'upload/goods/20180919/cd85a7fb96fa6f020df80f3d1c805f033.gif', '240,240', '240,240', 'upload/goods/20180919/cd85a7fb96fa6f020df80f3d1c805f034.gif', '60,60', '60,60', '1537336407', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('139', '0', '0', '0', '齐刘海', '齐刘海', 'upload/goods/20180919/7648e3d1e2c4b61e6df84c5b898c7ba8.jpg', '1920,906', '1920,906', 'upload/goods/20180919/0dd70195b1791ddee44a4fab6e0982a21.jpg', '700,700', '700,700', 'upload/goods/20180919/0dd70195b1791ddee44a4fab6e0982a22.jpg', '360,360', '360,360', 'upload/goods/20180919/0dd70195b1791ddee44a4fab6e0982a23.jpg', '240,240', '240,240', 'upload/goods/20180919/0dd70195b1791ddee44a4fab6e0982a24.jpg', '60,60', '60,60', '1537336500', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('140', '0', '0', '0', 'default_goods_image_240', 'default_goods_image_240', 'upload/goods/20180919/168d3cc7f06e6323afd65cfc8d466715.gif', '267,200', '267,200', 'upload/goods/20180919/bc31d02001344e3356632929808b19261.gif', '700,700', '700,700', 'upload/goods/20180919/bc31d02001344e3356632929808b19262.gif', '360,360', '360,360', 'upload/goods/20180919/bc31d02001344e3356632929808b19263.gif', '240,240', '240,240', 'upload/goods/20180919/bc31d02001344e3356632929808b19264.gif', '60,60', '60,60', '1537336523', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('141', '0', '0', '0', '齐刘海', '齐刘海', 'upload/goods/20180919/968ad018455efeae69c447bd06e3a5c1.jpg', '1920,906', '1920,906', 'upload/goods/20180919/74093bae0a4bc0e12c97aae86fd08bf61.jpg', '700,700', '700,700', 'upload/goods/20180919/74093bae0a4bc0e12c97aae86fd08bf62.jpg', '360,360', '360,360', 'upload/goods/20180919/74093bae0a4bc0e12c97aae86fd08bf63.jpg', '240,240', '240,240', 'upload/goods/20180919/74093bae0a4bc0e12c97aae86fd08bf64.jpg', '60,60', '60,60', '1537337062', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('142', '0', '0', '0', '齐刘海', '齐刘海', 'upload/goods/20180919/9bf82f0cd3944c088d745200b4fffa05.jpg', '1920,906', '1920,906', 'upload/goods/20180919/fbce27aced6f7a2f980f45f433f6a9d31.jpg', '700,700', '700,700', 'upload/goods/20180919/fbce27aced6f7a2f980f45f433f6a9d32.jpg', '360,360', '360,360', 'upload/goods/20180919/fbce27aced6f7a2f980f45f433f6a9d33.jpg', '240,240', '240,240', 'upload/goods/20180919/fbce27aced6f7a2f980f45f433f6a9d34.jpg', '60,60', '60,60', '1537337092', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('143', '0', '0', '0', '582595342cb41', '582595342cb41', 'upload/goods/20180919/2e3ec7287382fb40e2f460d163acbbec.jpg', '1920,1080', '1920,1080', 'upload/goods/20180919/76fe4f877bc2cbea656a447cf8ea31a31.jpg', '700,700', '700,700', 'upload/goods/20180919/76fe4f877bc2cbea656a447cf8ea31a32.jpg', '360,360', '360,360', 'upload/goods/20180919/76fe4f877bc2cbea656a447cf8ea31a33.jpg', '240,240', '240,240', 'upload/goods/20180919/76fe4f877bc2cbea656a447cf8ea31a34.jpg', '60,60', '60,60', '1537348160', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('144', '0', '0', '0', '17105166_1451572366555_800x800', '17105166_1451572366555_800x800', 'upload/goods/20180919/efd70633bc4aaee365539c446e8ed94d.jpg', '800,800', '800,800', 'upload/goods/20180919/06cf48a35de094aadeee1813639adf361.jpg', '700,700', '700,700', 'upload/goods/20180919/06cf48a35de094aadeee1813639adf362.jpg', '360,360', '360,360', 'upload/goods/20180919/06cf48a35de094aadeee1813639adf363.jpg', '240,240', '240,240', 'upload/goods/20180919/06cf48a35de094aadeee1813639adf364.jpg', '60,60', '60,60', '1537348289', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('145', '0', '0', '0', '14_1399174129XKGw', '14_1399174129XKGw', 'upload/goods/20180928/562e3e04b238efa10ab1328f3784f1cb.jpg', '3900,2600', '3900,2600', 'upload/goods/20180928/253cbcde66c24949b5aeb027a09174d11.jpg', '700,700', '700,700', 'upload/goods/20180928/253cbcde66c24949b5aeb027a09174d12.jpg', '360,360', '360,360', 'upload/goods/20180928/253cbcde66c24949b5aeb027a09174d13.jpg', '240,240', '240,240', 'upload/goods/20180928/253cbcde66c24949b5aeb027a09174d14.jpg', '60,60', '60,60', '1538098875', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('146', '0', '0', '0', '68c8e69a667ff35313d6642e41313dcc', '68c8e69a667ff35313d6642e41313dcc', 'upload/goods/20180929/1b2e2469215511da4d4b86fde33e4fa4.jpg', '2400,1600', '2400,1600', 'upload/goods/20180929/97c80ad1c672a938a42993b621a0041d1.jpg', '700,700', '700,700', 'upload/goods/20180929/97c80ad1c672a938a42993b621a0041d2.jpg', '360,360', '360,360', 'upload/goods/20180929/97c80ad1c672a938a42993b621a0041d3.jpg', '240,240', '240,240', 'upload/goods/20180929/97c80ad1c672a938a42993b621a0041d4.jpg', '60,60', '60,60', '1538205101', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('147', '0', '3', '0', '68c8e69a667ff35313d6642e41313dcc', '68c8e69a667ff35313d6642e41313dcc', 'upload/goods/20180929/d80854add18529b95078005ac457e7d4.jpg', '2400,1600', '2400,1600', 'upload/goods/20180929/fbdcdb09a2a7c88c212ba8bd5380d2ce1.jpg', '700,700', '700,700', 'upload/goods/20180929/fbdcdb09a2a7c88c212ba8bd5380d2ce2.jpg', '360,360', '360,360', 'upload/goods/20180929/fbdcdb09a2a7c88c212ba8bd5380d2ce3.jpg', '240,240', '240,240', 'upload/goods/20180929/fbdcdb09a2a7c88c212ba8bd5380d2ce4.jpg', '60,60', '60,60', '1538205194', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('148', '0', '1', '0', 'qg1', 'qg1', 'upload/goods/20181121/e64e8d34d131cc53b472590d582da362.jpg', '210,175', '210,175', 'upload/goods/20181121/7e701aca1336e217a94a18777baed3b31.jpg', '700,700', '700,700', 'upload/goods/20181121/7e701aca1336e217a94a18777baed3b32.jpg', '360,360', '360,360', 'upload/goods/20181121/7e701aca1336e217a94a18777baed3b33.jpg', '240,240', '240,240', 'upload/goods/20181121/7e701aca1336e217a94a18777baed3b34.jpg', '60,60', '60,60', '1542777659', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('149', '0', '1', '0', 'qg2', 'qg2', 'upload/goods/20181121/3b03dd7c01b29f4ea2cc90c8bbe27e6d.jpg', '210,175', '210,175', 'upload/goods/20181121/44618f32f08ca08d3c3d58e9dfefb4511.jpg', '700,700', '700,700', 'upload/goods/20181121/44618f32f08ca08d3c3d58e9dfefb4512.jpg', '360,360', '360,360', 'upload/goods/20181121/44618f32f08ca08d3c3d58e9dfefb4513.jpg', '240,240', '240,240', 'upload/goods/20181121/44618f32f08ca08d3c3d58e9dfefb4514.jpg', '60,60', '60,60', '1542777814', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('150', '0', '1', '0', 'qg3', 'qg3', 'upload/goods/20181121/fee92c29390a67d6901128c7686f3a99.jpg', '210,175', '210,175', 'upload/goods/20181121/e3a0996f30f6d844d80be104d673d27e1.jpg', '700,700', '700,700', 'upload/goods/20181121/e3a0996f30f6d844d80be104d673d27e2.jpg', '360,360', '360,360', 'upload/goods/20181121/e3a0996f30f6d844d80be104d673d27e3.jpg', '240,240', '240,240', 'upload/goods/20181121/e3a0996f30f6d844d80be104d673d27e4.jpg', '60,60', '60,60', '1542777920', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('151', '0', '1', '0', 'xf1', 'xf1', 'upload/goods/20181121/f9a8dc7fb30395b364364d2bdbdc07b3.jpg', '150,150', '150,150', 'upload/goods/20181121/c149fb8e46335e15e0d5d1e504a372b81.jpg', '700,700', '700,700', 'upload/goods/20181121/c149fb8e46335e15e0d5d1e504a372b82.jpg', '360,360', '360,360', 'upload/goods/20181121/c149fb8e46335e15e0d5d1e504a372b83.jpg', '240,240', '240,240', 'upload/goods/20181121/c149fb8e46335e15e0d5d1e504a372b84.jpg', '60,60', '60,60', '1542778009', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('152', '0', '1', '0', 'xf2', 'xf2', 'upload/goods/20181121/8db04450d90b7737c0cdbbae5eb36487.jpg', '150,150', '150,150', 'upload/goods/20181121/f312fc05ac8343d740b2ce2cfc734bc91.jpg', '700,700', '700,700', 'upload/goods/20181121/f312fc05ac8343d740b2ce2cfc734bc92.jpg', '360,360', '360,360', 'upload/goods/20181121/f312fc05ac8343d740b2ce2cfc734bc93.jpg', '240,240', '240,240', 'upload/goods/20181121/f312fc05ac8343d740b2ce2cfc734bc94.jpg', '60,60', '60,60', '1542778064', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('153', '0', '1', '0', 'xf3', 'xf3', 'upload/goods/20181121/a2e37f76c2a35832358988be974654ac.jpg', '150,150', '150,150', 'upload/goods/20181121/39ca0a520671c711c15dde9c763a47891.jpg', '700,700', '700,700', 'upload/goods/20181121/39ca0a520671c711c15dde9c763a47892.jpg', '360,360', '360,360', 'upload/goods/20181121/39ca0a520671c711c15dde9c763a47893.jpg', '240,240', '240,240', 'upload/goods/20181121/39ca0a520671c711c15dde9c763a47894.jpg', '60,60', '60,60', '1542778128', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('154', '0', '1', '0', 'qs1', 'qs1', 'upload/goods/20181121/77a0d39ea70edc4e4e58ac53406c52d8.jpg', '150,150', '150,150', 'upload/goods/20181121/f21ce1f245437db2e38f984e243c32ee1.jpg', '700,700', '700,700', 'upload/goods/20181121/f21ce1f245437db2e38f984e243c32ee2.jpg', '360,360', '360,360', 'upload/goods/20181121/f21ce1f245437db2e38f984e243c32ee3.jpg', '240,240', '240,240', 'upload/goods/20181121/f21ce1f245437db2e38f984e243c32ee4.jpg', '60,60', '60,60', '1542778183', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('155', '0', '1', '0', 'qs2', 'qs2', 'upload/goods/20181121/1e79323ef2c6a39eac707ed5ef84b37a.jpg', '150,150', '150,150', 'upload/goods/20181121/9a7dd55cae9f0d1e781292bc8b2065361.jpg', '700,700', '700,700', 'upload/goods/20181121/9a7dd55cae9f0d1e781292bc8b2065362.jpg', '360,360', '360,360', 'upload/goods/20181121/9a7dd55cae9f0d1e781292bc8b2065363.jpg', '240,240', '240,240', 'upload/goods/20181121/9a7dd55cae9f0d1e781292bc8b2065364.jpg', '60,60', '60,60', '1542778246', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('156', '0', '1', '0', 'qs3', 'qs3', 'upload/goods/20181121/d8b2a468d0216924fcbe3ee58c0a6aaf.jpg', '150,150', '150,150', 'upload/goods/20181121/17267ebe723abade690c94036e7b44c51.jpg', '700,700', '700,700', 'upload/goods/20181121/17267ebe723abade690c94036e7b44c52.jpg', '360,360', '360,360', 'upload/goods/20181121/17267ebe723abade690c94036e7b44c53.jpg', '240,240', '240,240', 'upload/goods/20181121/17267ebe723abade690c94036e7b44c54.jpg', '60,60', '60,60', '1542778386', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('157', '0', '1', '0', 'xh1', 'xh1', 'upload/goods/20181121/a5dd731f7f0aa1732d48cfccece64faf.jpg', '150,150', '150,150', 'upload/goods/20181121/5d40aee7ce6cad5aee5c7c5b743f83381.jpg', '700,700', '700,700', 'upload/goods/20181121/5d40aee7ce6cad5aee5c7c5b743f83382.jpg', '360,360', '360,360', 'upload/goods/20181121/5d40aee7ce6cad5aee5c7c5b743f83383.jpg', '240,240', '240,240', 'upload/goods/20181121/5d40aee7ce6cad5aee5c7c5b743f83384.jpg', '60,60', '60,60', '1542778478', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('158', '0', '1', '0', 'xh2', 'xh2', 'upload/goods/20181121/10807c289749979a6dda51d692d8fc58.jpg', '150,150', '150,150', 'upload/goods/20181121/8bd91df7e061c606731b2dccc112f4441.jpg', '700,700', '700,700', 'upload/goods/20181121/8bd91df7e061c606731b2dccc112f4442.jpg', '360,360', '360,360', 'upload/goods/20181121/8bd91df7e061c606731b2dccc112f4443.jpg', '240,240', '240,240', 'upload/goods/20181121/8bd91df7e061c606731b2dccc112f4444.jpg', '60,60', '60,60', '1542778534', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('159', '0', '1', '0', 'xh3', 'xh3', 'upload/goods/20181121/e60cd6800e901ddbc02c383b89496383.jpg', '150,150', '150,150', 'upload/goods/20181121/4428adc881681fa3c0c68913176705101.jpg', '700,700', '700,700', 'upload/goods/20181121/4428adc881681fa3c0c68913176705102.jpg', '360,360', '360,360', 'upload/goods/20181121/4428adc881681fa3c0c68913176705103.jpg', '240,240', '240,240', 'upload/goods/20181121/4428adc881681fa3c0c68913176705104.jpg', '60,60', '60,60', '1542778591', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('160', '0', '1', '0', 'rf1', 'rf1', 'upload/goods/20181121/de549f76e118fb52191716607c470784.jpg', '150,150', '150,150', 'upload/goods/20181121/8e48c21d8b07fc7412ce4e468dff99a21.jpg', '700,700', '700,700', 'upload/goods/20181121/8e48c21d8b07fc7412ce4e468dff99a22.jpg', '360,360', '360,360', 'upload/goods/20181121/8e48c21d8b07fc7412ce4e468dff99a23.jpg', '240,240', '240,240', 'upload/goods/20181121/8e48c21d8b07fc7412ce4e468dff99a24.jpg', '60,60', '60,60', '1542778661', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('161', '0', '1', '0', 'rf2', 'rf2', 'upload/goods/20181121/337043eaf57c9e0666c71be1d6ea3265.jpg', '150,150', '150,150', 'upload/goods/20181121/0164b243f7c18cd98110e55a063544e91.jpg', '700,700', '700,700', 'upload/goods/20181121/0164b243f7c18cd98110e55a063544e92.jpg', '360,360', '360,360', 'upload/goods/20181121/0164b243f7c18cd98110e55a063544e93.jpg', '240,240', '240,240', 'upload/goods/20181121/0164b243f7c18cd98110e55a063544e94.jpg', '60,60', '60,60', '1542778712', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('162', '0', '1', '0', 'rf3', 'rf3', 'upload/goods/20181121/028a751c9647bbb1823a59d0eb350150.jpg', '150,150', '150,150', 'upload/goods/20181121/08d757d7f736d578abaa1b6c8aef48b41.jpg', '700,700', '700,700', 'upload/goods/20181121/08d757d7f736d578abaa1b6c8aef48b42.jpg', '360,360', '360,360', 'upload/goods/20181121/08d757d7f736d578abaa1b6c8aef48b43.jpg', '240,240', '240,240', 'upload/goods/20181121/08d757d7f736d578abaa1b6c8aef48b44.jpg', '60,60', '60,60', '1542778762', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('163', '0', '1', '0', 'dx1', 'dx1', 'upload/goods/20181121/55afbd8519fba77bfb1d53115734b9d4.jpg', '150,150', '150,150', 'upload/goods/20181121/41108840f9db56b6960769ed68e71d951.jpg', '700,700', '700,700', 'upload/goods/20181121/41108840f9db56b6960769ed68e71d952.jpg', '360,360', '360,360', 'upload/goods/20181121/41108840f9db56b6960769ed68e71d953.jpg', '240,240', '240,240', 'upload/goods/20181121/41108840f9db56b6960769ed68e71d954.jpg', '60,60', '60,60', '1542778840', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('164', '0', '1', '0', 'dx2', 'dx2', 'upload/goods/20181121/a87f3a66eeab853a762ccecbd14d7ba3.jpg', '150,150', '150,150', 'upload/goods/20181121/88f87a27728cbce27220886a2c76faa21.jpg', '700,700', '700,700', 'upload/goods/20181121/88f87a27728cbce27220886a2c76faa22.jpg', '360,360', '360,360', 'upload/goods/20181121/88f87a27728cbce27220886a2c76faa23.jpg', '240,240', '240,240', 'upload/goods/20181121/88f87a27728cbce27220886a2c76faa24.jpg', '60,60', '60,60', '1542778890', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('165', '0', '1', '0', 'dx3', 'dx3', 'upload/goods/20181121/993bc4c407c3c5a112172c3f1a1d332d.jpg', '150,150', '150,150', 'upload/goods/20181121/4018b67a7f788ea9feb045b224e978861.jpg', '700,700', '700,700', 'upload/goods/20181121/4018b67a7f788ea9feb045b224e978862.jpg', '360,360', '360,360', 'upload/goods/20181121/4018b67a7f788ea9feb045b224e978863.jpg', '240,240', '240,240', 'upload/goods/20181121/4018b67a7f788ea9feb045b224e978864.jpg', '60,60', '60,60', '1542778949', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('166', '0', '1', '0', 'zx1', 'zx1', 'upload/goods/20181121/b40aa4518cc626510dd37f6b6e484d60.jpg', '175,175', '175,175', 'upload/goods/20181121/73c943f5606330e162a61ff42ce1874d1.jpg', '700,700', '700,700', 'upload/goods/20181121/73c943f5606330e162a61ff42ce1874d2.jpg', '360,360', '360,360', 'upload/goods/20181121/73c943f5606330e162a61ff42ce1874d3.jpg', '240,240', '240,240', 'upload/goods/20181121/73c943f5606330e162a61ff42ce1874d4.jpg', '60,60', '60,60', '1542779028', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('167', '0', '1', '0', 'zx2', 'zx2', 'upload/goods/20181121/aa8343ade7d5af4114a58a6be2a6e702.jpg', '175,175', '175,175', 'upload/goods/20181121/67c35af41bef11d04e4287dca33d303f1.jpg', '700,700', '700,700', 'upload/goods/20181121/67c35af41bef11d04e4287dca33d303f2.jpg', '360,360', '360,360', 'upload/goods/20181121/67c35af41bef11d04e4287dca33d303f3.jpg', '240,240', '240,240', 'upload/goods/20181121/67c35af41bef11d04e4287dca33d303f4.jpg', '60,60', '60,60', '1542779065', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('168', '0', '1', '0', 'zx3', 'zx3', 'upload/goods/20181121/512777d75e6eb49588c9bc3ea06f7d26.jpg', '175,175', '175,175', 'upload/goods/20181121/4684349db7573c6ebc892869cd31606f1.jpg', '700,700', '700,700', 'upload/goods/20181121/4684349db7573c6ebc892869cd31606f2.jpg', '360,360', '360,360', 'upload/goods/20181121/4684349db7573c6ebc892869cd31606f3.jpg', '240,240', '240,240', 'upload/goods/20181121/4684349db7573c6ebc892869cd31606f4.jpg', '60,60', '60,60', '1542779356', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('169', '0', '1', '0', 'dp1', 'dp1', 'upload/goods/20181121/fd10682fd48f85760b9baa51110dfe32.jpg', '300,300', '300,300', 'upload/goods/20181121/2d772f3774f0ccec6e51c88d716f27c41.jpg', '700,700', '700,700', 'upload/goods/20181121/2d772f3774f0ccec6e51c88d716f27c42.jpg', '360,360', '360,360', 'upload/goods/20181121/2d772f3774f0ccec6e51c88d716f27c43.jpg', '240,240', '240,240', 'upload/goods/20181121/2d772f3774f0ccec6e51c88d716f27c44.jpg', '60,60', '60,60', '1542779483', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('170', '0', '1', '0', 'dp2', 'dp2', 'upload/goods/20181121/eac6d8e35f1f5ae7203232bb2f377370.jpg', '300,300', '300,300', 'upload/goods/20181121/78973d308462daaa92a1682727e796dc1.jpg', '700,700', '700,700', 'upload/goods/20181121/78973d308462daaa92a1682727e796dc2.jpg', '360,360', '360,360', 'upload/goods/20181121/78973d308462daaa92a1682727e796dc3.jpg', '240,240', '240,240', 'upload/goods/20181121/78973d308462daaa92a1682727e796dc4.jpg', '60,60', '60,60', '1542779545', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('171', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181213/8f5c81bc2dcec5f1111c8fe99fe0edfc.jpg', '750,753', '750,753', 'upload/goods/20181213/4661f61966bc4101ac6c13456cef32d91.jpg', '700,700', '700,700', 'upload/goods/20181213/4661f61966bc4101ac6c13456cef32d92.jpg', '360,360', '360,360', 'upload/goods/20181213/4661f61966bc4101ac6c13456cef32d93.jpg', '240,240', '240,240', 'upload/goods/20181213/4661f61966bc4101ac6c13456cef32d94.jpg', '60,60', '60,60', '1544678193', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('172', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181213/3b637ca07dd147ed49e695b739089259.jpg', '750,753', '750,753', 'upload/goods/20181213/f22a2a534f77cd0b49581d980a8dd8eb1.jpg', '700,700', '700,700', 'upload/goods/20181213/f22a2a534f77cd0b49581d980a8dd8eb2.jpg', '360,360', '360,360', 'upload/goods/20181213/f22a2a534f77cd0b49581d980a8dd8eb3.jpg', '240,240', '240,240', 'upload/goods/20181213/f22a2a534f77cd0b49581d980a8dd8eb4.jpg', '60,60', '60,60', '1544678936', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('173', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181213/29dd268c392e266a8b7666bd7bd7fe00.jpg', '750,753', '750,753', 'upload/goods/20181213/3a96280ac87f6368e02c482fa4789f891.jpg', '700,700', '700,700', 'upload/goods/20181213/3a96280ac87f6368e02c482fa4789f892.jpg', '360,360', '360,360', 'upload/goods/20181213/3a96280ac87f6368e02c482fa4789f893.jpg', '240,240', '240,240', 'upload/goods/20181213/3a96280ac87f6368e02c482fa4789f894.jpg', '60,60', '60,60', '1544679064', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('174', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181213/5e293a2271710f3a908e99e0c2ea62f4.jpg', '750,753', '750,753', 'upload/goods/20181213/9bf65654e05a66ccddb6faf2190d5faa1.jpg', '700,700', '700,700', 'upload/goods/20181213/9bf65654e05a66ccddb6faf2190d5faa2.jpg', '360,360', '360,360', 'upload/goods/20181213/9bf65654e05a66ccddb6faf2190d5faa3.jpg', '240,240', '240,240', 'upload/goods/20181213/9bf65654e05a66ccddb6faf2190d5faa4.jpg', '60,60', '60,60', '1544684108', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('175', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181213/6fd7476879b48307940f16ba23c21156.jpg', '750,753', '750,753', 'upload/goods/20181213/7b3e5b10cca9c4015c4a0d33837154521.jpg', '700,700', '700,700', 'upload/goods/20181213/7b3e5b10cca9c4015c4a0d33837154522.jpg', '360,360', '360,360', 'upload/goods/20181213/7b3e5b10cca9c4015c4a0d33837154523.jpg', '240,240', '240,240', 'upload/goods/20181213/7b3e5b10cca9c4015c4a0d33837154524.jpg', '60,60', '60,60', '1544684138', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('176', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181214/1006ea2666c91e0ea77ac8da6664d2dd.jpg', '750,753', '750,753', 'upload/goods/20181214/abb6a42f999a8d58b4fca72dfdd41c3b1.jpg', '700,700', '700,700', 'upload/goods/20181214/abb6a42f999a8d58b4fca72dfdd41c3b2.jpg', '360,360', '360,360', 'upload/goods/20181214/abb6a42f999a8d58b4fca72dfdd41c3b3.jpg', '240,240', '240,240', 'upload/goods/20181214/abb6a42f999a8d58b4fca72dfdd41c3b4.jpg', '60,60', '60,60', '1544781402', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('177', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181214/dffb60ca8032fbefff546000cb068ebc.jpg', '750,753', '750,753', 'upload/goods/20181214/18abee5f79248f27ede7fe37438e97cb1.jpg', '700,700', '700,700', 'upload/goods/20181214/18abee5f79248f27ede7fe37438e97cb2.jpg', '360,360', '360,360', 'upload/goods/20181214/18abee5f79248f27ede7fe37438e97cb3.jpg', '240,240', '240,240', 'upload/goods/20181214/18abee5f79248f27ede7fe37438e97cb4.jpg', '60,60', '60,60', '1544781522', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('178', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181217/6b54a508baad8778c219b072c8d9117d.jpg', '750,753', '750,753', 'upload/goods/20181217/acebc9f48d1e3d2818cf16aff2617d281.jpg', '700,700', '700,700', 'upload/goods/20181217/acebc9f48d1e3d2818cf16aff2617d282.jpg', '360,360', '360,360', 'upload/goods/20181217/acebc9f48d1e3d2818cf16aff2617d283.jpg', '240,240', '240,240', 'upload/goods/20181217/acebc9f48d1e3d2818cf16aff2617d284.jpg', '60,60', '60,60', '1545010129', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('179', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181217/ab7e9ceb8db0b80950b649e5068b909d.jpg', '750,753', '750,753', 'upload/goods/20181217/d837740f9a240ae8d4bec2122e0a8fc01.jpg', '700,700', '700,700', 'upload/goods/20181217/d837740f9a240ae8d4bec2122e0a8fc02.jpg', '360,360', '360,360', 'upload/goods/20181217/d837740f9a240ae8d4bec2122e0a8fc03.jpg', '240,240', '240,240', 'upload/goods/20181217/d837740f9a240ae8d4bec2122e0a8fc04.jpg', '60,60', '60,60', '1545010244', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('180', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181217/bea4296026f4597163c7561487c8a12e.jpg', '750,753', '750,753', 'upload/goods/20181217/af6cb522c8bc6c5756dd52ba59452b691.jpg', '700,700', '700,700', 'upload/goods/20181217/af6cb522c8bc6c5756dd52ba59452b692.jpg', '360,360', '360,360', 'upload/goods/20181217/af6cb522c8bc6c5756dd52ba59452b693.jpg', '240,240', '240,240', 'upload/goods/20181217/af6cb522c8bc6c5756dd52ba59452b694.jpg', '60,60', '60,60', '1545010297', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('181', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181217/c49de250509118a26d9e1c0d1573c505.jpg', '750,753', '750,753', 'upload/goods/20181217/5ba6e3ddf8b222486f875606c1b192a91.jpg', '700,700', '700,700', 'upload/goods/20181217/5ba6e3ddf8b222486f875606c1b192a92.jpg', '360,360', '360,360', 'upload/goods/20181217/5ba6e3ddf8b222486f875606c1b192a93.jpg', '240,240', '240,240', 'upload/goods/20181217/5ba6e3ddf8b222486f875606c1b192a94.jpg', '60,60', '60,60', '1545010387', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('206', '47', '0', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181217/071aca5ec64a1b482e199a06799b3fb3.jpg', '506,634', '506,634', 'upload/goods/20181217/da60ce455011ab1ede677c5648cecabd1.jpg', '700,700', '700,700', 'upload/goods/20181217/da60ce455011ab1ede677c5648cecabd2.jpg', '360,360', '360,360', 'upload/goods/20181217/da60ce455011ab1ede677c5648cecabd3.jpg', '240,240', '240,240', 'upload/goods/20181217/da60ce455011ab1ede677c5648cecabd4.jpg', '60,60', '60,60', '1545038403', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('207', '47', '0', '0', 'zp1', 'zp1', 'upload/goods/20181217/f2dcff99a7e5bcf9f2b66391b213d64c.jpg', '506,634', '506,634', 'upload/goods/20181217/3621419a83f6c7341dbb92066fcb19ef1.jpg', '700,700', '700,700', 'upload/goods/20181217/3621419a83f6c7341dbb92066fcb19ef2.jpg', '360,360', '360,360', 'upload/goods/20181217/3621419a83f6c7341dbb92066fcb19ef3.jpg', '240,240', '240,240', 'upload/goods/20181217/3621419a83f6c7341dbb92066fcb19ef4.jpg', '60,60', '60,60', '1545038406', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('208', '47', '0', '0', 'zp2 (1)', 'zp2 (1)', 'upload/goods/20181217/4eab5a29f10330c1d4d1d327ab6c02f6.jpg', '506,634', '506,634', 'upload/goods/20181217/9a36a57afbb2ff31a7d2bf6aa04919521.jpg', '700,700', '700,700', 'upload/goods/20181217/9a36a57afbb2ff31a7d2bf6aa04919522.jpg', '360,360', '360,360', 'upload/goods/20181217/9a36a57afbb2ff31a7d2bf6aa04919523.jpg', '240,240', '240,240', 'upload/goods/20181217/9a36a57afbb2ff31a7d2bf6aa04919524.jpg', '60,60', '60,60', '1545038409', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('209', '47', '0', '0', 'zp2', 'zp2', 'upload/goods/20181217/5fd7acb5d50638cb063c80f7afe4a665.jpg', '506,634', '506,634', 'upload/goods/20181217/5000741ee82171d85658bc04fc3ba9621.jpg', '700,700', '700,700', 'upload/goods/20181217/5000741ee82171d85658bc04fc3ba9622.jpg', '360,360', '360,360', 'upload/goods/20181217/5000741ee82171d85658bc04fc3ba9623.jpg', '240,240', '240,240', 'upload/goods/20181217/5000741ee82171d85658bc04fc3ba9624.jpg', '60,60', '60,60', '1545038412', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('210', '47', '0', '0', 'zp3 (1)', 'zp3 (1)', 'upload/goods/20181217/aabdaf69824847226a5bb7880a8f11e7.jpg', '506,634', '506,634', 'upload/goods/20181217/b877dd17375321aa92afc2db309375e81.jpg', '700,700', '700,700', 'upload/goods/20181217/b877dd17375321aa92afc2db309375e82.jpg', '360,360', '360,360', 'upload/goods/20181217/b877dd17375321aa92afc2db309375e83.jpg', '240,240', '240,240', 'upload/goods/20181217/b877dd17375321aa92afc2db309375e84.jpg', '60,60', '60,60', '1545038415', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('211', '47', '0', '0', 'zp3', 'zp3', 'upload/goods/20181217/76c4ba52bf613546e67c5c0aa8164747.jpg', '506,634', '506,634', 'upload/goods/20181217/f1d56d13ccf219181b484879774ca1531.jpg', '700,700', '700,700', 'upload/goods/20181217/f1d56d13ccf219181b484879774ca1532.jpg', '360,360', '360,360', 'upload/goods/20181217/f1d56d13ccf219181b484879774ca1533.jpg', '240,240', '240,240', 'upload/goods/20181217/f1d56d13ccf219181b484879774ca1534.jpg', '60,60', '60,60', '1545038418', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('212', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/b88bc574e8f081b695f640fd0d8c5084.jpg', '750,753', '750,753', 'upload/goods/20181218/ce7c6527c66b455222185e21d1d4202a1.jpg', '700,700', '700,700', 'upload/goods/20181218/ce7c6527c66b455222185e21d1d4202a2.jpg', '360,360', '360,360', 'upload/goods/20181218/ce7c6527c66b455222185e21d1d4202a3.jpg', '240,240', '240,240', 'upload/goods/20181218/ce7c6527c66b455222185e21d1d4202a4.jpg', '60,60', '60,60', '1545095485', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('213', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/399ad590aa7a957e332e29dc661a979f.jpg', '506,634', '506,634', 'upload/goods/20181218/cc243f14b573cfd956e45d10b0d680eb1.jpg', '700,700', '700,700', 'upload/goods/20181218/cc243f14b573cfd956e45d10b0d680eb2.jpg', '360,360', '360,360', 'upload/goods/20181218/cc243f14b573cfd956e45d10b0d680eb3.jpg', '240,240', '240,240', 'upload/goods/20181218/cc243f14b573cfd956e45d10b0d680eb4.jpg', '60,60', '60,60', '1545098975', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('214', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/e67d202488d456d53aa57e14ba92db84.jpg', '750,753', '750,753', 'upload/goods/20181218/a0c656290fc4b0a472033c05c9c000531.jpg', '700,700', '700,700', 'upload/goods/20181218/a0c656290fc4b0a472033c05c9c000532.jpg', '360,360', '360,360', 'upload/goods/20181218/a0c656290fc4b0a472033c05c9c000533.jpg', '240,240', '240,240', 'upload/goods/20181218/a0c656290fc4b0a472033c05c9c000534.jpg', '60,60', '60,60', '1545099026', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('215', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/d34c4c938be7fc0e5dc30ffa5d45ba93.jpg', '750,753', '750,753', 'upload/goods/20181218/6dc55d648801efef8e7ac95d469242d41.jpg', '700,700', '700,700', 'upload/goods/20181218/6dc55d648801efef8e7ac95d469242d42.jpg', '360,360', '360,360', 'upload/goods/20181218/6dc55d648801efef8e7ac95d469242d43.jpg', '240,240', '240,240', 'upload/goods/20181218/6dc55d648801efef8e7ac95d469242d44.jpg', '60,60', '60,60', '1545099084', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('216', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/4041ed212b028a747e52c76458b9ed39.jpg', '750,753', '750,753', 'upload/goods/20181218/4ebd1b7c3332cc7fd988061340f8686c1.jpg', '700,700', '700,700', 'upload/goods/20181218/4ebd1b7c3332cc7fd988061340f8686c2.jpg', '360,360', '360,360', 'upload/goods/20181218/4ebd1b7c3332cc7fd988061340f8686c3.jpg', '240,240', '240,240', 'upload/goods/20181218/4ebd1b7c3332cc7fd988061340f8686c4.jpg', '60,60', '60,60', '1545099127', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('217', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/11cf02232f8479c82d3a95f273daf99c.jpg', '750,753', '750,753', 'upload/goods/20181218/55c24988d67c918517844086ab78725c1.jpg', '700,700', '700,700', 'upload/goods/20181218/55c24988d67c918517844086ab78725c2.jpg', '360,360', '360,360', 'upload/goods/20181218/55c24988d67c918517844086ab78725c3.jpg', '240,240', '240,240', 'upload/goods/20181218/55c24988d67c918517844086ab78725c4.jpg', '60,60', '60,60', '1545099184', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('218', '0', '1', '0', 'zp2 (1)', 'zp2 (1)', 'upload/goods/20181218/2e39194a1dc61aa8d78c0f7f66890b78.jpg', '506,634', '506,634', 'upload/goods/20181218/dacee888ddb7ef49f714f9501e5a33631.jpg', '700,700', '700,700', 'upload/goods/20181218/dacee888ddb7ef49f714f9501e5a33632.jpg', '360,360', '360,360', 'upload/goods/20181218/dacee888ddb7ef49f714f9501e5a33633.jpg', '240,240', '240,240', 'upload/goods/20181218/dacee888ddb7ef49f714f9501e5a33634.jpg', '60,60', '60,60', '1545099231', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('219', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/bea5eb58238fcc9fccec6254d6243297.jpg', '506,634', '506,634', 'upload/goods/20181218/0db770dc8e9cd8ee21912141b284bbea1.jpg', '700,700', '700,700', 'upload/goods/20181218/0db770dc8e9cd8ee21912141b284bbea2.jpg', '360,360', '360,360', 'upload/goods/20181218/0db770dc8e9cd8ee21912141b284bbea3.jpg', '240,240', '240,240', 'upload/goods/20181218/0db770dc8e9cd8ee21912141b284bbea4.jpg', '60,60', '60,60', '1545099308', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('220', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/f2276642ecfe5c57334b2d3ea9d22197.jpg', '750,753', '750,753', 'upload/goods/20181218/ccf3196c8d3dd81902c23e8447af68131.jpg', '700,700', '700,700', 'upload/goods/20181218/ccf3196c8d3dd81902c23e8447af68132.jpg', '360,360', '360,360', 'upload/goods/20181218/ccf3196c8d3dd81902c23e8447af68133.jpg', '240,240', '240,240', 'upload/goods/20181218/ccf3196c8d3dd81902c23e8447af68134.jpg', '60,60', '60,60', '1545099362', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('221', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/a60f5146737ff720138104e99379dae3.jpg', '506,634', '506,634', 'upload/goods/20181218/bfc8771758678ad1c084d00aea120caa1.jpg', '700,700', '700,700', 'upload/goods/20181218/bfc8771758678ad1c084d00aea120caa2.jpg', '360,360', '360,360', 'upload/goods/20181218/bfc8771758678ad1c084d00aea120caa3.jpg', '240,240', '240,240', 'upload/goods/20181218/bfc8771758678ad1c084d00aea120caa4.jpg', '60,60', '60,60', '1545099691', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('222', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/f2174bb28fe3314e72412ee7895854df.jpg', '750,753', '750,753', 'upload/goods/20181218/1cc31d77b3d22dd0b1d2a1b56910720e1.jpg', '700,700', '700,700', 'upload/goods/20181218/1cc31d77b3d22dd0b1d2a1b56910720e2.jpg', '360,360', '360,360', 'upload/goods/20181218/1cc31d77b3d22dd0b1d2a1b56910720e3.jpg', '240,240', '240,240', 'upload/goods/20181218/1cc31d77b3d22dd0b1d2a1b56910720e4.jpg', '60,60', '60,60', '1545099719', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('223', '0', '1', '0', 'zp3 (1)', 'zp3 (1)', 'upload/goods/20181218/f99047d764585a1885336d069a49b928.jpg', '506,634', '506,634', 'upload/goods/20181218/33b470c818d82d6a1ffe51f06898174c1.jpg', '700,700', '700,700', 'upload/goods/20181218/33b470c818d82d6a1ffe51f06898174c2.jpg', '360,360', '360,360', 'upload/goods/20181218/33b470c818d82d6a1ffe51f06898174c3.jpg', '240,240', '240,240', 'upload/goods/20181218/33b470c818d82d6a1ffe51f06898174c4.jpg', '60,60', '60,60', '1545099757', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('224', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/a0c10df9421c8e86cb2a2f3cb00ec604.jpg', '750,753', '750,753', 'upload/goods/20181218/665149ebe80df5615461f2a5bd961ccd1.jpg', '700,700', '700,700', 'upload/goods/20181218/665149ebe80df5615461f2a5bd961ccd2.jpg', '360,360', '360,360', 'upload/goods/20181218/665149ebe80df5615461f2a5bd961ccd3.jpg', '240,240', '240,240', 'upload/goods/20181218/665149ebe80df5615461f2a5bd961ccd4.jpg', '60,60', '60,60', '1545103068', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('225', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/93f6d3d77a27dc29a46000fbe241de92.jpg', '750,753', '750,753', 'upload/goods/20181218/08a217547a014cae85e562df04c762071.jpg', '700,700', '700,700', 'upload/goods/20181218/08a217547a014cae85e562df04c762072.jpg', '360,360', '360,360', 'upload/goods/20181218/08a217547a014cae85e562df04c762073.jpg', '240,240', '240,240', 'upload/goods/20181218/08a217547a014cae85e562df04c762074.jpg', '60,60', '60,60', '1545103147', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('226', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/19cfecba1271f6aced45af4130f9928d.jpg', '506,634', '506,634', 'upload/goods/20181218/90f350f1045cba2857eb30f87e134a261.jpg', '700,700', '700,700', 'upload/goods/20181218/90f350f1045cba2857eb30f87e134a262.jpg', '360,360', '360,360', 'upload/goods/20181218/90f350f1045cba2857eb30f87e134a263.jpg', '240,240', '240,240', 'upload/goods/20181218/90f350f1045cba2857eb30f87e134a264.jpg', '60,60', '60,60', '1545103201', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('227', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/0acd3d4beb6736a20806b65b1294cd7b.jpg', '506,634', '506,634', 'upload/goods/20181218/90781f82a9e9de2b349fa07fcc0d65c01.jpg', '700,700', '700,700', 'upload/goods/20181218/90781f82a9e9de2b349fa07fcc0d65c02.jpg', '360,360', '360,360', 'upload/goods/20181218/90781f82a9e9de2b349fa07fcc0d65c03.jpg', '240,240', '240,240', 'upload/goods/20181218/90781f82a9e9de2b349fa07fcc0d65c04.jpg', '60,60', '60,60', '1545103404', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('228', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/ed15e39228e09e69740e11523cc34e6c.jpg', '506,634', '506,634', 'upload/goods/20181218/174c424e565534364d5d71f23a5dc3601.jpg', '700,700', '700,700', 'upload/goods/20181218/174c424e565534364d5d71f23a5dc3602.jpg', '360,360', '360,360', 'upload/goods/20181218/174c424e565534364d5d71f23a5dc3603.jpg', '240,240', '240,240', 'upload/goods/20181218/174c424e565534364d5d71f23a5dc3604.jpg', '60,60', '60,60', '1545103447', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('232', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/8258e0ff51a218f2a3ca720f54233ee7.jpg', '506,634', '506,634', 'upload/goods/20181218/d72f49fa889b9ba95327c6d437342b931.jpg', '700,700', '700,700', 'upload/goods/20181218/d72f49fa889b9ba95327c6d437342b932.jpg', '360,360', '360,360', 'upload/goods/20181218/d72f49fa889b9ba95327c6d437342b933.jpg', '240,240', '240,240', 'upload/goods/20181218/d72f49fa889b9ba95327c6d437342b934.jpg', '60,60', '60,60', '1545111322', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('233', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/8631346c27ed40258625e6d616585fe2.jpg', '750,753', '750,753', 'upload/goods/20181218/63f260d0bb938361da040b9e1f4d0bd31.jpg', '700,700', '700,700', 'upload/goods/20181218/63f260d0bb938361da040b9e1f4d0bd32.jpg', '360,360', '360,360', 'upload/goods/20181218/63f260d0bb938361da040b9e1f4d0bd33.jpg', '240,240', '240,240', 'upload/goods/20181218/63f260d0bb938361da040b9e1f4d0bd34.jpg', '60,60', '60,60', '1545111401', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('234', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/e4c254dceb15dc12d6125f8568fca6e8.jpg', '750,753', '750,753', 'upload/goods/20181218/53c283382bfa8a94560e1b883fe0b9241.jpg', '700,700', '700,700', 'upload/goods/20181218/53c283382bfa8a94560e1b883fe0b9242.jpg', '360,360', '360,360', 'upload/goods/20181218/53c283382bfa8a94560e1b883fe0b9243.jpg', '240,240', '240,240', 'upload/goods/20181218/53c283382bfa8a94560e1b883fe0b9244.jpg', '60,60', '60,60', '1545111972', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('235', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/b86c9b6f55ef40a2153e643990204f09.jpg', '750,753', '750,753', 'upload/goods/20181218/cc897f54ade6b1c24f65f0559712696c1.jpg', '700,700', '700,700', 'upload/goods/20181218/cc897f54ade6b1c24f65f0559712696c2.jpg', '360,360', '360,360', 'upload/goods/20181218/cc897f54ade6b1c24f65f0559712696c3.jpg', '240,240', '240,240', 'upload/goods/20181218/cc897f54ade6b1c24f65f0559712696c4.jpg', '60,60', '60,60', '1545113119', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('236', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/8bddb2aa9ad07567ec1d14135283549f.jpg', '750,753', '750,753', 'upload/goods/20181218/76f540b559b98caf4e63e6c1657d276d1.jpg', '700,700', '700,700', 'upload/goods/20181218/76f540b559b98caf4e63e6c1657d276d2.jpg', '360,360', '360,360', 'upload/goods/20181218/76f540b559b98caf4e63e6c1657d276d3.jpg', '240,240', '240,240', 'upload/goods/20181218/76f540b559b98caf4e63e6c1657d276d4.jpg', '60,60', '60,60', '1545113320', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('237', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/717bdbb00c0e2fc0bc9e65bed842d993.jpg', '506,634', '506,634', 'upload/goods/20181218/e00a8229280aaabf23b5f7bab47aadc91.jpg', '700,700', '700,700', 'upload/goods/20181218/e00a8229280aaabf23b5f7bab47aadc92.jpg', '360,360', '360,360', 'upload/goods/20181218/e00a8229280aaabf23b5f7bab47aadc93.jpg', '240,240', '240,240', 'upload/goods/20181218/e00a8229280aaabf23b5f7bab47aadc94.jpg', '60,60', '60,60', '1545113505', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('238', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/53c1953b882db2c94420321ad3aea581.jpg', '750,753', '750,753', 'upload/goods/20181218/8ce4655334355b412d4dbcffa94f20ec1.jpg', '700,700', '700,700', 'upload/goods/20181218/8ce4655334355b412d4dbcffa94f20ec2.jpg', '360,360', '360,360', 'upload/goods/20181218/8ce4655334355b412d4dbcffa94f20ec3.jpg', '240,240', '240,240', 'upload/goods/20181218/8ce4655334355b412d4dbcffa94f20ec4.jpg', '60,60', '60,60', '1545113645', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('239', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/7ba1908a1b7e281b3fcee5be981087b2.jpg', '750,753', '750,753', 'upload/goods/20181218/a8ca3302aae92c09f5ee25fd33b6a4ce1.jpg', '700,700', '700,700', 'upload/goods/20181218/a8ca3302aae92c09f5ee25fd33b6a4ce2.jpg', '360,360', '360,360', 'upload/goods/20181218/a8ca3302aae92c09f5ee25fd33b6a4ce3.jpg', '240,240', '240,240', 'upload/goods/20181218/a8ca3302aae92c09f5ee25fd33b6a4ce4.jpg', '60,60', '60,60', '1545113684', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('240', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/fb18978259bbb49d83f79b14b0083a9e.jpg', '750,753', '750,753', 'upload/goods/20181218/09026540e5c74e1f0c4b4863c92494b71.jpg', '700,700', '700,700', 'upload/goods/20181218/09026540e5c74e1f0c4b4863c92494b72.jpg', '360,360', '360,360', 'upload/goods/20181218/09026540e5c74e1f0c4b4863c92494b73.jpg', '240,240', '240,240', 'upload/goods/20181218/09026540e5c74e1f0c4b4863c92494b74.jpg', '60,60', '60,60', '1545113760', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('241', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/50a428646ea265e93562fe47b57d4998.jpg', '506,634', '506,634', 'upload/goods/20181218/394837e003883c45b44c92d213cf97681.jpg', '700,700', '700,700', 'upload/goods/20181218/394837e003883c45b44c92d213cf97682.jpg', '360,360', '360,360', 'upload/goods/20181218/394837e003883c45b44c92d213cf97683.jpg', '240,240', '240,240', 'upload/goods/20181218/394837e003883c45b44c92d213cf97684.jpg', '60,60', '60,60', '1545113885', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('242', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/dd509bc53f4ae5d893c398e9d3b2caf2.jpg', '750,753', '750,753', 'upload/goods/20181218/f1b5dddcd21688bbe9dc5aad2f1fdc5a1.jpg', '700,700', '700,700', 'upload/goods/20181218/f1b5dddcd21688bbe9dc5aad2f1fdc5a2.jpg', '360,360', '360,360', 'upload/goods/20181218/f1b5dddcd21688bbe9dc5aad2f1fdc5a3.jpg', '240,240', '240,240', 'upload/goods/20181218/f1b5dddcd21688bbe9dc5aad2f1fdc5a4.jpg', '60,60', '60,60', '1545114031', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('243', '0', '1', '0', 'zp2 (1)', 'zp2 (1)', 'upload/goods/20181218/ee19f700c42edab63ba64ed810d9f079.jpg', '506,634', '506,634', 'upload/goods/20181218/b142508179443231dd60244e19a0c7c41.jpg', '700,700', '700,700', 'upload/goods/20181218/b142508179443231dd60244e19a0c7c42.jpg', '360,360', '360,360', 'upload/goods/20181218/b142508179443231dd60244e19a0c7c43.jpg', '240,240', '240,240', 'upload/goods/20181218/b142508179443231dd60244e19a0c7c44.jpg', '60,60', '60,60', '1545114086', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('244', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/996a43e4ef8737d52a8a79bebe5639fb.jpg', '506,634', '506,634', 'upload/goods/20181218/55898d6064892b915d84c07ee9010f541.jpg', '700,700', '700,700', 'upload/goods/20181218/55898d6064892b915d84c07ee9010f542.jpg', '360,360', '360,360', 'upload/goods/20181218/55898d6064892b915d84c07ee9010f543.jpg', '240,240', '240,240', 'upload/goods/20181218/55898d6064892b915d84c07ee9010f544.jpg', '60,60', '60,60', '1545114348', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('245', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/ca7108989e20202f48e9654efadc4b21.jpg', '506,634', '506,634', 'upload/goods/20181218/33972f19008dcf01a6dc077356f2cbd81.jpg', '700,700', '700,700', 'upload/goods/20181218/33972f19008dcf01a6dc077356f2cbd82.jpg', '360,360', '360,360', 'upload/goods/20181218/33972f19008dcf01a6dc077356f2cbd83.jpg', '240,240', '240,240', 'upload/goods/20181218/33972f19008dcf01a6dc077356f2cbd84.jpg', '60,60', '60,60', '1545114403', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('246', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/dfa80cb26207211223d84f5f84bf5847.jpg', '506,634', '506,634', 'upload/goods/20181218/5ab30c532a3916527e8fc9feaf2b94491.jpg', '700,700', '700,700', 'upload/goods/20181218/5ab30c532a3916527e8fc9feaf2b94492.jpg', '360,360', '360,360', 'upload/goods/20181218/5ab30c532a3916527e8fc9feaf2b94493.jpg', '240,240', '240,240', 'upload/goods/20181218/5ab30c532a3916527e8fc9feaf2b94494.jpg', '60,60', '60,60', '1545114455', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('247', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/4dcd1d89efc8db8f2bb4030eca3e31ee.jpg', '506,634', '506,634', 'upload/goods/20181218/b90e064515ea37e97a4fa95377d04bda1.jpg', '700,700', '700,700', 'upload/goods/20181218/b90e064515ea37e97a4fa95377d04bda2.jpg', '360,360', '360,360', 'upload/goods/20181218/b90e064515ea37e97a4fa95377d04bda3.jpg', '240,240', '240,240', 'upload/goods/20181218/b90e064515ea37e97a4fa95377d04bda4.jpg', '60,60', '60,60', '1545114503', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('248', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/2e8855455f175e94e6da36f9321da752.jpg', '506,634', '506,634', 'upload/goods/20181218/ab6f84dbc8dbfe52a22708e436ab5f331.jpg', '700,700', '700,700', 'upload/goods/20181218/ab6f84dbc8dbfe52a22708e436ab5f332.jpg', '360,360', '360,360', 'upload/goods/20181218/ab6f84dbc8dbfe52a22708e436ab5f333.jpg', '240,240', '240,240', 'upload/goods/20181218/ab6f84dbc8dbfe52a22708e436ab5f334.jpg', '60,60', '60,60', '1545114558', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('249', '0', '1', '0', 'zp3 (1)', 'zp3 (1)', 'upload/goods/20181218/9a89dbb9ed5dcfc936808c563fd7a01a.jpg', '506,634', '506,634', 'upload/goods/20181218/e699f4b125d6a1edb37f84723d9ffc0e1.jpg', '700,700', '700,700', 'upload/goods/20181218/e699f4b125d6a1edb37f84723d9ffc0e2.jpg', '360,360', '360,360', 'upload/goods/20181218/e699f4b125d6a1edb37f84723d9ffc0e3.jpg', '240,240', '240,240', 'upload/goods/20181218/e699f4b125d6a1edb37f84723d9ffc0e4.jpg', '60,60', '60,60', '1545114591', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('250', '0', '1', '0', 'zp2', 'zp2', 'upload/goods/20181218/43175dbb97d2f4c5e4963ea860fb0551.jpg', '506,634', '506,634', 'upload/goods/20181218/0033154804163e1d2551cb71285dfbd61.jpg', '700,700', '700,700', 'upload/goods/20181218/0033154804163e1d2551cb71285dfbd62.jpg', '360,360', '360,360', 'upload/goods/20181218/0033154804163e1d2551cb71285dfbd63.jpg', '240,240', '240,240', 'upload/goods/20181218/0033154804163e1d2551cb71285dfbd64.jpg', '60,60', '60,60', '1545114636', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('251', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/9c379843908aa0c16ff63a56a75f3b89.jpg', '506,634', '506,634', 'upload/goods/20181218/1bdc1535bd417d9ad2e215d6a94333121.jpg', '700,700', '700,700', 'upload/goods/20181218/1bdc1535bd417d9ad2e215d6a94333122.jpg', '360,360', '360,360', 'upload/goods/20181218/1bdc1535bd417d9ad2e215d6a94333123.jpg', '240,240', '240,240', 'upload/goods/20181218/1bdc1535bd417d9ad2e215d6a94333124.jpg', '60,60', '60,60', '1545114698', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('252', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20181218/7cfb8a2ee48b8eba23dcc1ac7fa80c1e.jpg', '506,634', '506,634', 'upload/goods/20181218/2c67defa6f4a87dc242fc472b3c29c5a1.jpg', '700,700', '700,700', 'upload/goods/20181218/2c67defa6f4a87dc242fc472b3c29c5a2.jpg', '360,360', '360,360', 'upload/goods/20181218/2c67defa6f4a87dc242fc472b3c29c5a3.jpg', '240,240', '240,240', 'upload/goods/20181218/2c67defa6f4a87dc242fc472b3c29c5a4.jpg', '60,60', '60,60', '1545116339', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('253', '0', '1', '0', 'xqt1', 'xqt1', 'upload/goods/20181218/81483053774087ae3ee270e67298d068.jpg', '708,1049', '708,1049', 'upload/goods/20181218/4317ac2c5f6a20159880122c734fe67f1.jpg', '700,700', '700,700', 'upload/goods/20181218/4317ac2c5f6a20159880122c734fe67f2.jpg', '360,360', '360,360', 'upload/goods/20181218/4317ac2c5f6a20159880122c734fe67f3.jpg', '240,240', '240,240', 'upload/goods/20181218/4317ac2c5f6a20159880122c734fe67f4.jpg', '60,60', '60,60', '1545118358', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('254', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/831555274a99d1614d6df38ba6d2569f.jpg', '750,753', '750,753', 'upload/goods/20181218/7da56f178139b9f5c7eb2a8e516df9ab1.jpg', '700,700', '700,700', 'upload/goods/20181218/7da56f178139b9f5c7eb2a8e516df9ab2.jpg', '360,360', '360,360', 'upload/goods/20181218/7da56f178139b9f5c7eb2a8e516df9ab3.jpg', '240,240', '240,240', 'upload/goods/20181218/7da56f178139b9f5c7eb2a8e516df9ab4.jpg', '60,60', '60,60', '1545118508', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('255', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/380e993a5f8edb271cf942e2915fc348.jpg', '506,634', '506,634', 'upload/goods/20181218/041dc73406a39ca83b6a26bd55ce3c1f1.jpg', '700,700', '700,700', 'upload/goods/20181218/041dc73406a39ca83b6a26bd55ce3c1f2.jpg', '360,360', '360,360', 'upload/goods/20181218/041dc73406a39ca83b6a26bd55ce3c1f3.jpg', '240,240', '240,240', 'upload/goods/20181218/041dc73406a39ca83b6a26bd55ce3c1f4.jpg', '60,60', '60,60', '1545118629', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('256', '0', '1', '0', 'zp1 (1)', 'zp1 (1)', 'upload/goods/20181218/692e6f9b17f2ad794e55a89abdc87250.jpg', '506,634', '506,634', 'upload/goods/20181218/49e652338d59e5f10f102d71d95979911.jpg', '700,700', '700,700', 'upload/goods/20181218/49e652338d59e5f10f102d71d95979912.jpg', '360,360', '360,360', 'upload/goods/20181218/49e652338d59e5f10f102d71d95979913.jpg', '240,240', '240,240', 'upload/goods/20181218/49e652338d59e5f10f102d71d95979914.jpg', '60,60', '60,60', '1545118749', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('257', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/89d1210199cee5703a1cc32a38a51d6d.jpg', '750,753', '750,753', 'upload/goods/20181218/2776a7096fce476dd440348df821d50d1.jpg', '700,700', '700,700', 'upload/goods/20181218/2776a7096fce476dd440348df821d50d2.jpg', '360,360', '360,360', 'upload/goods/20181218/2776a7096fce476dd440348df821d50d3.jpg', '240,240', '240,240', 'upload/goods/20181218/2776a7096fce476dd440348df821d50d4.jpg', '60,60', '60,60', '1545120204', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('258', '0', '1', '0', 'zp2 (1)', 'zp2 (1)', 'upload/goods/20181218/4d699d37f5dde0efdfdcea145bd0d3aa.jpg', '506,634', '506,634', 'upload/goods/20181218/a4ae82585ae94066cdcd5725794b981f1.jpg', '700,700', '700,700', 'upload/goods/20181218/a4ae82585ae94066cdcd5725794b981f2.jpg', '360,360', '360,360', 'upload/goods/20181218/a4ae82585ae94066cdcd5725794b981f3.jpg', '240,240', '240,240', 'upload/goods/20181218/a4ae82585ae94066cdcd5725794b981f4.jpg', '60,60', '60,60', '1545120350', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('259', '0', '1', '0', '1532053647', '1532053647', 'upload/goods/20181218/23249bf3ffda0fdabc1ae19146608a22.jpg', '750,753', '750,753', 'upload/goods/20181218/2fe6e6e49d1fc63024df1f18995125471.jpg', '700,700', '700,700', 'upload/goods/20181218/2fe6e6e49d1fc63024df1f18995125472.jpg', '360,360', '360,360', 'upload/goods/20181218/2fe6e6e49d1fc63024df1f18995125473.jpg', '240,240', '240,240', 'upload/goods/20181218/2fe6e6e49d1fc63024df1f18995125474.jpg', '60,60', '60,60', '1545124203', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('260', '0', '1', '0', 'tuijian', 'tuijian', 'upload/goods/20181218/7a96bedbe3939b1acd0739915094e697.jpg', '345,190', '345,190', 'upload/goods/20181218/e9366ab284b8efaa5fb46e99ffc843021.jpg', '700,700', '700,700', 'upload/goods/20181218/e9366ab284b8efaa5fb46e99ffc843022.jpg', '360,360', '360,360', 'upload/goods/20181218/e9366ab284b8efaa5fb46e99ffc843023.jpg', '240,240', '240,240', 'upload/goods/20181218/e9366ab284b8efaa5fb46e99ffc843024.jpg', '60,60', '60,60', '1545124370', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('261', '0', '1', '0', 'O1CN011PRO2YSq01U9Luq_!!0-item_pic.jpg_430x430q90', 'O1CN011PRO2YSq01U9Luq_!!0-item_pic.jpg_430x430q90', 'upload/goods/20181218/1c47a8c17e9ac8ea6f409e40f22154fe.jpg', '430,430', '430,430', 'upload/goods/20181218/36e9bae8ab1ff166484c94ca1eaedbb91.jpg', '700,700', '700,700', 'upload/goods/20181218/36e9bae8ab1ff166484c94ca1eaedbb92.jpg', '360,360', '360,360', 'upload/goods/20181218/36e9bae8ab1ff166484c94ca1eaedbb93.jpg', '240,240', '240,240', 'upload/goods/20181218/36e9bae8ab1ff166484c94ca1eaedbb94.jpg', '60,60', '60,60', '1545124624', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('262', '0', '1', '0', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'upload/goods/20181219/2bda4f180577cd0c3eccf0f78fae384d.jpg', '430,430', '430,430', 'upload/goods/20181219/7396bcd6a13518696c25e88b4ac59b3d1.jpg', '700,700', '700,700', 'upload/goods/20181219/7396bcd6a13518696c25e88b4ac59b3d2.jpg', '360,360', '360,360', 'upload/goods/20181219/7396bcd6a13518696c25e88b4ac59b3d3.jpg', '240,240', '240,240', 'upload/goods/20181219/7396bcd6a13518696c25e88b4ac59b3d4.jpg', '60,60', '60,60', '1545181744', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('263', '0', '1', '0', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'upload/goods/20181219/972599693478a21c037d926eaa6ccc7b.jpg', '430,430', '430,430', 'upload/goods/20181219/d87a0bc256a166b384c9075729fc898a1.jpg', '700,700', '700,700', 'upload/goods/20181219/d87a0bc256a166b384c9075729fc898a2.jpg', '360,360', '360,360', 'upload/goods/20181219/d87a0bc256a166b384c9075729fc898a3.jpg', '240,240', '240,240', 'upload/goods/20181219/d87a0bc256a166b384c9075729fc898a4.jpg', '60,60', '60,60', '1545181886', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('264', '0', '1', '0', 'O1CN01MW78Nf1CP0zV1Krsh-101450072', 'O1CN01MW78Nf1CP0zV1Krsh-101450072', 'upload/goods/20181219/2402b243e35e10cf84f06ef74f337476.jpg', '790,12368', '790,12368', 'upload/goods/20181219/a4b0ebb280bbe13c8fdcb96b36f756a01.jpg', '700,700', '700,700', 'upload/goods/20181219/a4b0ebb280bbe13c8fdcb96b36f756a02.jpg', '360,360', '360,360', 'upload/goods/20181219/a4b0ebb280bbe13c8fdcb96b36f756a03.jpg', '240,240', '240,240', 'upload/goods/20181219/a4b0ebb280bbe13c8fdcb96b36f756a04.jpg', '60,60', '60,60', '1545181959', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('265', '0', '1', '0', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'O1CN01mk2fzz1CP10BbeYTn_!!0-item_pic.jpg_430x430q90', 'upload/goods/20181219/a44c474157109a8d2f7b6523059b00fb.jpg', '430,430', '430,430', 'upload/goods/20181219/bed9ad9e01c1b719385ef0b3fc6707fa1.jpg', '700,700', '700,700', 'upload/goods/20181219/bed9ad9e01c1b719385ef0b3fc6707fa2.jpg', '360,360', '360,360', 'upload/goods/20181219/bed9ad9e01c1b719385ef0b3fc6707fa3.jpg', '240,240', '240,240', 'upload/goods/20181219/bed9ad9e01c1b719385ef0b3fc6707fa4.jpg', '60,60', '60,60', '1545183276', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('266', '0', '1', '0', '2015-01-06_110402_4180', '2015-01-06_110402_4180', 'upload/goods/20181219/9e09af2e995d054830667ca2070e6e66.jpg', '546,320', '546,320', 'upload/goods/20181219/7b7721d65d596bfc92cf55465f856e891.jpg', '700,700', '700,700', 'upload/goods/20181219/7b7721d65d596bfc92cf55465f856e892.jpg', '360,360', '360,360', 'upload/goods/20181219/7b7721d65d596bfc92cf55465f856e893.jpg', '240,240', '240,240', 'upload/goods/20181219/7b7721d65d596bfc92cf55465f856e894.jpg', '60,60', '60,60', '1545207801', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('267', '0', '1', '0', '12305046_105705058318_2', '12305046_105705058318_2', 'upload/goods/20181219/2821fc15852843232c2a12dee14b72b6.jpg', '1024,431', '1024,431', 'upload/goods/20181219/664a2bde9a1cdb76b298cc0113cbbf971.jpg', '700,700', '700,700', 'upload/goods/20181219/664a2bde9a1cdb76b298cc0113cbbf972.jpg', '360,360', '360,360', 'upload/goods/20181219/664a2bde9a1cdb76b298cc0113cbbf973.jpg', '240,240', '240,240', 'upload/goods/20181219/664a2bde9a1cdb76b298cc0113cbbf974.jpg', '60,60', '60,60', '1545207826', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('268', '0', '1', '0', '111244suyyf9kkr1y9vmif', '111244suyyf9kkr1y9vmif', 'upload/goods/20181219/d6268c19f80c9d68774f50ef95a45ad8.jpg', '2048,1217', '2048,1217', 'upload/goods/20181219/c2c516df2f370477ac0f32c0c63c19371.jpg', '700,700', '700,700', 'upload/goods/20181219/c2c516df2f370477ac0f32c0c63c19372.jpg', '360,360', '360,360', 'upload/goods/20181219/c2c516df2f370477ac0f32c0c63c19373.jpg', '240,240', '240,240', 'upload/goods/20181219/c2c516df2f370477ac0f32c0c63c19374.jpg', '60,60', '60,60', '1545207852', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('269', '0', '1', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20181219/f5b089c85606541e363765683a6a2819.jpg', '640,960', '640,960', 'upload/goods/20181219/249fd857d23248bbae69f990ea9289dd1.jpg', '700,700', '700,700', 'upload/goods/20181219/249fd857d23248bbae69f990ea9289dd2.jpg', '360,360', '360,360', 'upload/goods/20181219/249fd857d23248bbae69f990ea9289dd3.jpg', '240,240', '240,240', 'upload/goods/20181219/249fd857d23248bbae69f990ea9289dd4.jpg', '60,60', '60,60', '1545209156', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('270', '0', '1', '0', '194144.33865412_o', '194144.33865412_o', 'upload/goods/20181219/6f399a64c3019ba18bcd33e6881c70b5.jpg', '1280,720', '1280,720', 'upload/goods/20181219/0fa51de6616adfb8c92cdb7fd32314721.jpg', '700,700', '700,700', 'upload/goods/20181219/0fa51de6616adfb8c92cdb7fd32314722.jpg', '360,360', '360,360', 'upload/goods/20181219/0fa51de6616adfb8c92cdb7fd32314723.jpg', '240,240', '240,240', 'upload/goods/20181219/0fa51de6616adfb8c92cdb7fd32314724.jpg', '60,60', '60,60', '1545209179', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('271', '0', '1', '0', '111244suyyf9kkr1y9vmif', '111244suyyf9kkr1y9vmif', 'upload/goods/20181219/66ba893ebe2928ae0f851afead5df39c.jpg', '2048,1217', '2048,1217', 'upload/goods/20181219/a30ec0a19b8b32c02bbaaf08e73683e11.jpg', '700,700', '700,700', 'upload/goods/20181219/a30ec0a19b8b32c02bbaaf08e73683e12.jpg', '360,360', '360,360', 'upload/goods/20181219/a30ec0a19b8b32c02bbaaf08e73683e13.jpg', '240,240', '240,240', 'upload/goods/20181219/a30ec0a19b8b32c02bbaaf08e73683e14.jpg', '60,60', '60,60', '1545209200', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('272', '0', '1', '0', '88525_009', '88525_009', 'upload/goods/20181219/18d66c1a447dceb5854f7adcf9b7c067.jpg', '1920,1200', '1920,1200', 'upload/goods/20181219/bac4d2a3f5f96046fdafac0e4ba354031.jpg', '700,700', '700,700', 'upload/goods/20181219/bac4d2a3f5f96046fdafac0e4ba354032.jpg', '360,360', '360,360', 'upload/goods/20181219/bac4d2a3f5f96046fdafac0e4ba354033.jpg', '240,240', '240,240', 'upload/goods/20181219/bac4d2a3f5f96046fdafac0e4ba354034.jpg', '60,60', '60,60', '1545210445', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('273', '0', '1', '0', '48c036d1a3', '48c036d1a3', 'upload/goods/20181220/830d0b1f8d01015dcbadc6fed3102081.jpg', '1920,1080', '1920,1080', 'upload/goods/20181220/175cf0811c81f3758045a2ca567ff6e31.jpg', '700,700', '700,700', 'upload/goods/20181220/175cf0811c81f3758045a2ca567ff6e32.jpg', '360,360', '360,360', 'upload/goods/20181220/175cf0811c81f3758045a2ca567ff6e33.jpg', '240,240', '240,240', 'upload/goods/20181220/175cf0811c81f3758045a2ca567ff6e34.jpg', '60,60', '60,60', '1545273184', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('280', '47', '0', '0', '00016c41a8060d01ac481f', '00016c41a8060d01ac481f', 'upload/goods/20181220/3506d63738de29338ad6d6b61291d5df.jpg', '800,564', '800,564', 'upload/goods/20181220/00cde59f5ef5702d1825d76724a2f1a31.jpg', '700,700', '700,700', 'upload/goods/20181220/00cde59f5ef5702d1825d76724a2f1a32.jpg', '360,360', '360,360', 'upload/goods/20181220/00cde59f5ef5702d1825d76724a2f1a33.jpg', '240,240', '240,240', 'upload/goods/20181220/00cde59f5ef5702d1825d76724a2f1a34.jpg', '60,60', '60,60', '1545283005', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('285', '0', '1', '0', '676-16100Q45142-50', '676-16100Q45142-50', 'upload/goods/20181220/1fd47f2ddbca752778c7a309e94f5a00.jpg', '760,475', '760,475', 'upload/goods/20181220/d51bf2fce07a492acacf6f5fd61ed3131.jpg', '700,700', '700,700', 'upload/goods/20181220/d51bf2fce07a492acacf6f5fd61ed3132.jpg', '360,360', '360,360', 'upload/goods/20181220/d51bf2fce07a492acacf6f5fd61ed3133.jpg', '240,240', '240,240', 'upload/goods/20181220/d51bf2fce07a492acacf6f5fd61ed3134.jpg', '60,60', '60,60', '1545291842', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('286', '0', '1', '0', '2014422155153160', '2014422155153160', 'upload/goods/20181220/921b1fdc058af0a591c4c32aceffb8b4.jpg', '506,356', '506,356', 'upload/goods/20181220/fe36a48a46ccd29405446a3421bcfae21.jpg', '700,700', '700,700', 'upload/goods/20181220/fe36a48a46ccd29405446a3421bcfae22.jpg', '360,360', '360,360', 'upload/goods/20181220/fe36a48a46ccd29405446a3421bcfae23.jpg', '240,240', '240,240', 'upload/goods/20181220/fe36a48a46ccd29405446a3421bcfae24.jpg', '60,60', '60,60', '1545291866', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('287', '0', '1', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20181220/c2c3739a67f8c380618f1b67b810bf3b.jpg', '640,960', '640,960', 'upload/goods/20181220/db9d4739c8f6b213bbe63dc4cc44f9cd1.jpg', '700,700', '700,700', 'upload/goods/20181220/db9d4739c8f6b213bbe63dc4cc44f9cd2.jpg', '360,360', '360,360', 'upload/goods/20181220/db9d4739c8f6b213bbe63dc4cc44f9cd3.jpg', '240,240', '240,240', 'upload/goods/20181220/db9d4739c8f6b213bbe63dc4cc44f9cd4.jpg', '60,60', '60,60', '1545292289', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('288', '0', '1', '0', '99_avatar_middle', '99_avatar_middle', 'upload/goods/20181220/d907a50507283c95fd997c7e085b4f58.jpg', '120,120', '120,120', 'upload/goods/20181220/fecdeeab76e49199dd83fb685e3bb43f1.jpg', '700,700', '700,700', 'upload/goods/20181220/fecdeeab76e49199dd83fb685e3bb43f2.jpg', '360,360', '360,360', 'upload/goods/20181220/fecdeeab76e49199dd83fb685e3bb43f3.jpg', '240,240', '240,240', 'upload/goods/20181220/fecdeeab76e49199dd83fb685e3bb43f4.jpg', '60,60', '60,60', '1545292368', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('289', '0', '1', '0', '569f50862c353', '569f50862c353', 'upload/goods/20181220/f43a418b9b318706d2a2ff239aa66792.jpg', '1920,1080', '1920,1080', 'upload/goods/20181220/9ef517c20cf02f7e0269c2b7775fc2b21.jpg', '700,700', '700,700', 'upload/goods/20181220/9ef517c20cf02f7e0269c2b7775fc2b22.jpg', '360,360', '360,360', 'upload/goods/20181220/9ef517c20cf02f7e0269c2b7775fc2b23.jpg', '240,240', '240,240', 'upload/goods/20181220/9ef517c20cf02f7e0269c2b7775fc2b24.jpg', '60,60', '60,60', '1545292643', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('290', '0', '1', '0', '235254.84928845_o', '235254.84928845_o', 'upload/goods/20181220/c18d8bfe0fb8646c75635c0764a969c7.jpg', '1920,1080', '1920,1080', 'upload/goods/20181220/11b9e8b376584318e33d03852de1a8241.jpg', '700,700', '700,700', 'upload/goods/20181220/11b9e8b376584318e33d03852de1a8242.jpg', '360,360', '360,360', 'upload/goods/20181220/11b9e8b376584318e33d03852de1a8243.jpg', '240,240', '240,240', 'upload/goods/20181220/11b9e8b376584318e33d03852de1a8244.jpg', '60,60', '60,60', '1545292666', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('291', '0', '1', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20181220/442e92b89da9ec2d2a934fc50b805441.jpg', '640,960', '640,960', 'upload/goods/20181220/55041caf22f670fb0f7b18a8856e16331.jpg', '700,700', '700,700', 'upload/goods/20181220/55041caf22f670fb0f7b18a8856e16332.jpg', '360,360', '360,360', 'upload/goods/20181220/55041caf22f670fb0f7b18a8856e16333.jpg', '240,240', '240,240', 'upload/goods/20181220/55041caf22f670fb0f7b18a8856e16334.jpg', '60,60', '60,60', '1545295233', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('292', '0', '1', '0', '151740bsjhfiezikmhskkg', '151740bsjhfiezikmhskkg', 'upload/goods/20181220/b29c733aead7bfaed61ae0e5c4be9cc8.jpg', '960,800', '960,800', 'upload/goods/20181220/ab632aa12b37bba692f94ad04fe4eb3d1.jpg', '700,700', '700,700', 'upload/goods/20181220/ab632aa12b37bba692f94ad04fe4eb3d2.jpg', '360,360', '360,360', 'upload/goods/20181220/ab632aa12b37bba692f94ad04fe4eb3d3.jpg', '240,240', '240,240', 'upload/goods/20181220/ab632aa12b37bba692f94ad04fe4eb3d4.jpg', '60,60', '60,60', '1545295364', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('293', '0', '1', '0', '272707_006', '272707_006', 'upload/goods/20181220/fec15d90e926e6a6d7b827402ff6a051.jpg', '1920,1080', '1920,1080', 'upload/goods/20181220/f92eecb078d60b2f2b236fde1c6545901.jpg', '700,700', '700,700', 'upload/goods/20181220/f92eecb078d60b2f2b236fde1c6545902.jpg', '360,360', '360,360', 'upload/goods/20181220/f92eecb078d60b2f2b236fde1c6545903.jpg', '240,240', '240,240', 'upload/goods/20181220/f92eecb078d60b2f2b236fde1c6545904.jpg', '60,60', '60,60', '1545295485', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('294', '0', '1', '0', '676-16100Q45142-50', '676-16100Q45142-50', 'upload/goods/20181220/bb8b194b25d47d8f7ec8545fb7e29d99.jpg', '760,475', '760,475', 'upload/goods/20181220/a95dd987cb5a86d0ca61f4c44f9221801.jpg', '700,700', '700,700', 'upload/goods/20181220/a95dd987cb5a86d0ca61f4c44f9221802.jpg', '360,360', '360,360', 'upload/goods/20181220/a95dd987cb5a86d0ca61f4c44f9221803.jpg', '240,240', '240,240', 'upload/goods/20181220/a95dd987cb5a86d0ca61f4c44f9221804.jpg', '60,60', '60,60', '1545295616', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('295', '0', '1', '0', '947f59bcd2', '947f59bcd2', 'upload/goods/20181220/5e78f7ed7c015b2d6b01a4c4c2380b4e.jpg', '1000,403', '1000,403', 'upload/goods/20181220/ed1200a938dbbc7b2b0194f12de3f2971.jpg', '700,700', '700,700', 'upload/goods/20181220/ed1200a938dbbc7b2b0194f12de3f2972.jpg', '360,360', '360,360', 'upload/goods/20181220/ed1200a938dbbc7b2b0194f12de3f2973.jpg', '240,240', '240,240', 'upload/goods/20181220/ed1200a938dbbc7b2b0194f12de3f2974.jpg', '60,60', '60,60', '1545295845', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('296', '0', '1', '0', '569f50862c353', '569f50862c353', 'upload/goods/20181221/2b6160ba068de785bf3ee8bc8fe88053.jpg', '1920,1080', '1920,1080', 'upload/goods/20181221/784cc55af3c0d4194434302f94a03d161.jpg', '700,700', '700,700', 'upload/goods/20181221/784cc55af3c0d4194434302f94a03d162.jpg', '360,360', '360,360', 'upload/goods/20181221/784cc55af3c0d4194434302f94a03d163.jpg', '240,240', '240,240', 'upload/goods/20181221/784cc55af3c0d4194434302f94a03d164.jpg', '60,60', '60,60', '1545355162', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('297', '0', '1', '0', '14350136_1349851796600', '14350136_1349851796600', 'upload/goods/20181221/bdd5226174a3e496496b6c380ae54579.jpg', '1920,1200', '1920,1200', 'upload/goods/20181221/39d773c14a0baaeecf0d2208e226ed481.jpg', '700,700', '700,700', 'upload/goods/20181221/39d773c14a0baaeecf0d2208e226ed482.jpg', '360,360', '360,360', 'upload/goods/20181221/39d773c14a0baaeecf0d2208e226ed483.jpg', '240,240', '240,240', 'upload/goods/20181221/39d773c14a0baaeecf0d2208e226ed484.jpg', '60,60', '60,60', '1545355664', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('298', '0', '1', '0', '445888', '445888', 'upload/goods/20181221/ff272d0e7151c0cf5d8b7b9826cc666d.jpg', '1366,768', '1366,768', 'upload/goods/20181221/f31b669186098a3168227c24e3c380d01.jpg', '700,700', '700,700', 'upload/goods/20181221/f31b669186098a3168227c24e3c380d02.jpg', '360,360', '360,360', 'upload/goods/20181221/f31b669186098a3168227c24e3c380d03.jpg', '240,240', '240,240', 'upload/goods/20181221/f31b669186098a3168227c24e3c380d04.jpg', '60,60', '60,60', '1545355719', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('299', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181221/b0cc492bc05e0f16812799fd543faf1c.jpg', '506,634', '506,634', 'upload/goods/20181221/46e288b1a500264c87b5c13e0cb886f21.jpg', '700,700', '700,700', 'upload/goods/20181221/46e288b1a500264c87b5c13e0cb886f22.jpg', '360,360', '360,360', 'upload/goods/20181221/46e288b1a500264c87b5c13e0cb886f23.jpg', '240,240', '240,240', 'upload/goods/20181221/46e288b1a500264c87b5c13e0cb886f24.jpg', '60,60', '60,60', '1545362291', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('300', '0', '1', '0', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'upload/goods/20181221/218e9512d2bcf5818eb02b9f53f45255.jpg', '506,634', '506,634', 'upload/goods/20181221/8876de4b55adb480c4fdc463dd8b61a41.jpg', '700,700', '700,700', 'upload/goods/20181221/8876de4b55adb480c4fdc463dd8b61a42.jpg', '360,360', '360,360', 'upload/goods/20181221/8876de4b55adb480c4fdc463dd8b61a43.jpg', '240,240', '240,240', 'upload/goods/20181221/8876de4b55adb480c4fdc463dd8b61a44.jpg', '60,60', '60,60', '1545362311', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('301', '0', '1', '0', '665934077cf86b2233cb20324a83fb7a', '665934077cf86b2233cb20324a83fb7a', 'upload/goods/20181221/840c106f9ef29dd299c209fd08d2e8b4.jpg', '506,634', '506,634', 'upload/goods/20181221/a95e2b5bb12e64523491da53df107d3e1.jpg', '700,700', '700,700', 'upload/goods/20181221/a95e2b5bb12e64523491da53df107d3e2.jpg', '360,360', '360,360', 'upload/goods/20181221/a95e2b5bb12e64523491da53df107d3e3.jpg', '240,240', '240,240', 'upload/goods/20181221/a95e2b5bb12e64523491da53df107d3e4.jpg', '60,60', '60,60', '1545373369', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('302', '0', '1', '0', '665934077cf86b2233cb20324a83fb7a', '665934077cf86b2233cb20324a83fb7a', 'upload/goods/20181221/679b3d1236501e92d9c9d3fc360218eb.jpg', '506,634', '506,634', 'upload/goods/20181221/82b3e0c648f6331375a4702ceb1912571.jpg', '700,700', '700,700', 'upload/goods/20181221/82b3e0c648f6331375a4702ceb1912572.jpg', '360,360', '360,360', 'upload/goods/20181221/82b3e0c648f6331375a4702ceb1912573.jpg', '240,240', '240,240', 'upload/goods/20181221/82b3e0c648f6331375a4702ceb1912574.jpg', '60,60', '60,60', '1545373493', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('303', '0', '1', '0', 'hz2', 'hz2', 'upload/goods/20181221/0ddff3686e742df6e42adb74f7e93dc5.jpg', '205,205', '205,205', 'upload/goods/20181221/8b97f1da48fc1af86d80db39f31b77a11.jpg', '700,700', '700,700', 'upload/goods/20181221/8b97f1da48fc1af86d80db39f31b77a12.jpg', '360,360', '360,360', 'upload/goods/20181221/8b97f1da48fc1af86d80db39f31b77a13.jpg', '240,240', '240,240', 'upload/goods/20181221/8b97f1da48fc1af86d80db39f31b77a14.jpg', '60,60', '60,60', '1545373735', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('304', '0', '1', '0', 'xqt1', 'xqt1', 'upload/goods/20181221/962814882cfa9a8110d12458d8444d08.jpg', '708,1049', '708,1049', 'upload/goods/20181221/71ff06b4f0f4a4a1a5f19e5021b04ac01.jpg', '700,700', '700,700', 'upload/goods/20181221/71ff06b4f0f4a4a1a5f19e5021b04ac02.jpg', '360,360', '360,360', 'upload/goods/20181221/71ff06b4f0f4a4a1a5f19e5021b04ac03.jpg', '240,240', '240,240', 'upload/goods/20181221/71ff06b4f0f4a4a1a5f19e5021b04ac04.jpg', '60,60', '60,60', '1545383318', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('305', '0', '1', '0', '194144.33865412_o', '194144.33865412_o', 'upload/goods/20181222/9a10642fc4d6f7882c4344dc56cc1f3c.jpg', '1280,720', '1280,720', 'upload/goods/20181222/fe10ef5bc61ff7fed589327eab2e8aed1.jpg', '700,700', '700,700', 'upload/goods/20181222/fe10ef5bc61ff7fed589327eab2e8aed2.jpg', '360,360', '360,360', 'upload/goods/20181222/fe10ef5bc61ff7fed589327eab2e8aed3.jpg', '240,240', '240,240', 'upload/goods/20181222/fe10ef5bc61ff7fed589327eab2e8aed4.jpg', '60,60', '60,60', '1545442714', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('306', '0', '1', '0', '272708_001', '272708_001', 'upload/goods/20181222/9a10f259b07e09348f9e1beccd1045ed.jpg', '1920,1080', '1920,1080', 'upload/goods/20181222/9475856f5885ecd120e31e5d2c1f8bdd1.jpg', '700,700', '700,700', 'upload/goods/20181222/9475856f5885ecd120e31e5d2c1f8bdd2.jpg', '360,360', '360,360', 'upload/goods/20181222/9475856f5885ecd120e31e5d2c1f8bdd3.jpg', '240,240', '240,240', 'upload/goods/20181222/9475856f5885ecd120e31e5d2c1f8bdd4.jpg', '60,60', '60,60', '1545442905', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('307', '0', '1', '0', '884c64b24e1eef63911bdd30e3b6b20a', '884c64b24e1eef63911bdd30e3b6b20a', 'upload/goods/20181222/e0eb8403a63e194532c62aa9604b0f54.jpg', '303,221', '303,221', 'upload/goods/20181222/1bc3f9af303f0fec4f183934a4094fa81.jpg', '700,700', '700,700', 'upload/goods/20181222/1bc3f9af303f0fec4f183934a4094fa82.jpg', '360,360', '360,360', 'upload/goods/20181222/1bc3f9af303f0fec4f183934a4094fa83.jpg', '240,240', '240,240', 'upload/goods/20181222/1bc3f9af303f0fec4f183934a4094fa84.jpg', '60,60', '60,60', '1545442933', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('308', '0', '1', '0', '01b7d357eccdeba84a0d304f6422a7', '01b7d357eccdeba84a0d304f6422a7', 'upload/goods/20181222/f45e73d99fdbc89ee97526cae261941e.jpg', '640,960', '640,960', 'upload/goods/20181222/42bd9c606f16593b15cf1a0c07909dd51.jpg', '700,700', '700,700', 'upload/goods/20181222/42bd9c606f16593b15cf1a0c07909dd52.jpg', '360,360', '360,360', 'upload/goods/20181222/42bd9c606f16593b15cf1a0c07909dd53.jpg', '240,240', '240,240', 'upload/goods/20181222/42bd9c606f16593b15cf1a0c07909dd54.jpg', '60,60', '60,60', '1545442971', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('309', '0', '1', '0', '5950cf1a8270c', '5950cf1a8270c', 'upload/goods/20181222/45881213af12a373b98ccf2840aaa55d.jpg', '1920,1080', '1920,1080', 'upload/goods/20181222/08da6fed7cf769877b24f744e58bde5e1.jpg', '700,700', '700,700', 'upload/goods/20181222/08da6fed7cf769877b24f744e58bde5e2.jpg', '360,360', '360,360', 'upload/goods/20181222/08da6fed7cf769877b24f744e58bde5e3.jpg', '240,240', '240,240', 'upload/goods/20181222/08da6fed7cf769877b24f744e58bde5e4.jpg', '60,60', '60,60', '1545443276', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('310', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/d1292a174ac111fde1708f931daf017c.jpg', '506,634', '506,634', 'upload/goods/20181224/dbd99cda47eae5474d7a561cdb73a6201.jpg', '700,700', '700,700', 'upload/goods/20181224/dbd99cda47eae5474d7a561cdb73a6202.jpg', '360,360', '360,360', 'upload/goods/20181224/dbd99cda47eae5474d7a561cdb73a6203.jpg', '240,240', '240,240', 'upload/goods/20181224/dbd99cda47eae5474d7a561cdb73a6204.jpg', '60,60', '60,60', '1545641023', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('311', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/99c9b865c8a84c55d13e7345f9c50bfd.jpg', '506,634', '506,634', 'upload/goods/20181224/7840848746b195ae974e8b84d94fc46a1.jpg', '700,700', '700,700', 'upload/goods/20181224/7840848746b195ae974e8b84d94fc46a2.jpg', '360,360', '360,360', 'upload/goods/20181224/7840848746b195ae974e8b84d94fc46a3.jpg', '240,240', '240,240', 'upload/goods/20181224/7840848746b195ae974e8b84d94fc46a4.jpg', '60,60', '60,60', '1545641061', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('312', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/58baebd4818d6f60b2d424dc05752595.jpg', '506,634', '506,634', 'upload/goods/20181224/28fbb3cbac2c26ee5bd65b48daded0571.jpg', '700,700', '700,700', 'upload/goods/20181224/28fbb3cbac2c26ee5bd65b48daded0572.jpg', '360,360', '360,360', 'upload/goods/20181224/28fbb3cbac2c26ee5bd65b48daded0573.jpg', '240,240', '240,240', 'upload/goods/20181224/28fbb3cbac2c26ee5bd65b48daded0574.jpg', '60,60', '60,60', '1545641132', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('313', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/c51df7bec201deaf1bf4180bed349103.jpg', '506,634', '506,634', 'upload/goods/20181224/cd84e39e09bd70ccb295071f347ed13f1.jpg', '700,700', '700,700', 'upload/goods/20181224/cd84e39e09bd70ccb295071f347ed13f2.jpg', '360,360', '360,360', 'upload/goods/20181224/cd84e39e09bd70ccb295071f347ed13f3.jpg', '240,240', '240,240', 'upload/goods/20181224/cd84e39e09bd70ccb295071f347ed13f4.jpg', '60,60', '60,60', '1545641184', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('314', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/5485295e8a59c7d76f2a9cee6ab01328.jpg', '506,634', '506,634', 'upload/goods/20181224/bfe0876d6876f660b3d7abc759746ef01.jpg', '700,700', '700,700', 'upload/goods/20181224/bfe0876d6876f660b3d7abc759746ef02.jpg', '360,360', '360,360', 'upload/goods/20181224/bfe0876d6876f660b3d7abc759746ef03.jpg', '240,240', '240,240', 'upload/goods/20181224/bfe0876d6876f660b3d7abc759746ef04.jpg', '60,60', '60,60', '1545642647', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('315', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/de14c7c39bbf95cfe6a73f93410573a5.jpg', '506,634', '506,634', 'upload/goods/20181224/2e08d928e53188446c41efa9bcb189821.jpg', '700,700', '700,700', 'upload/goods/20181224/2e08d928e53188446c41efa9bcb189822.jpg', '360,360', '360,360', 'upload/goods/20181224/2e08d928e53188446c41efa9bcb189823.jpg', '240,240', '240,240', 'upload/goods/20181224/2e08d928e53188446c41efa9bcb189824.jpg', '60,60', '60,60', '1545642709', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('316', '0', '1', '0', '2018101814240614276', '2018101814240614276', 'upload/goods/20181224/af4bcd3f9ee1d76ea64aee67eb40a15c.jpg', '600,460', '600,460', 'upload/goods/20181224/65f9d9f8568af5375d34d2c5db90012b1.jpg', '700,700', '700,700', 'upload/goods/20181224/65f9d9f8568af5375d34d2c5db90012b2.jpg', '360,360', '360,360', 'upload/goods/20181224/65f9d9f8568af5375d34d2c5db90012b3.jpg', '240,240', '240,240', 'upload/goods/20181224/65f9d9f8568af5375d34d2c5db90012b4.jpg', '60,60', '60,60', '1545642944', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('317', '0', '1', '0', '3e0bb293c0b60a155c6eb84f4b292728', '3e0bb293c0b60a155c6eb84f4b292728', 'upload/goods/20181224/655265a59d06eb66990cef44b0ea9310.jpg', '506,634', '506,634', 'upload/goods/20181224/3ee1b0fefabfed1e7a09e467cfca09941.jpg', '700,700', '700,700', 'upload/goods/20181224/3ee1b0fefabfed1e7a09e467cfca09942.jpg', '360,360', '360,360', 'upload/goods/20181224/3ee1b0fefabfed1e7a09e467cfca09943.jpg', '240,240', '240,240', 'upload/goods/20181224/3ee1b0fefabfed1e7a09e467cfca09944.jpg', '60,60', '60,60', '1545643339', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('318', '0', '1', '0', '2018101814241262080', '2018101814241262080', 'upload/goods/20181224/e3c3d61e53ddb1fdfc05bad90c3dc069.jpg', '600,460', '600,460', 'upload/goods/20181224/5361995cee93ff421bc66e89278c9b361.jpg', '700,700', '700,700', 'upload/goods/20181224/5361995cee93ff421bc66e89278c9b362.jpg', '360,360', '360,360', 'upload/goods/20181224/5361995cee93ff421bc66e89278c9b363.jpg', '240,240', '240,240', 'upload/goods/20181224/5361995cee93ff421bc66e89278c9b364.jpg', '60,60', '60,60', '1545643411', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('319', '0', '1', '0', '665934077cf86b2233cb20324a83fb7a', '665934077cf86b2233cb20324a83fb7a', 'upload/goods/20181224/68dd66af98bea5f9e83f7862c4fae3cd.jpg', '506,634', '506,634', 'upload/goods/20181224/83cadb06d611496097e5f0f75cd8c1811.jpg', '700,700', '700,700', 'upload/goods/20181224/83cadb06d611496097e5f0f75cd8c1812.jpg', '360,360', '360,360', 'upload/goods/20181224/83cadb06d611496097e5f0f75cd8c1813.jpg', '240,240', '240,240', 'upload/goods/20181224/83cadb06d611496097e5f0f75cd8c1814.jpg', '60,60', '60,60', '1545643484', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('320', '0', '1', '0', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'upload/goods/20181224/f1e09195af1dfac501d2651bfa081f16.jpg', '506,634', '506,634', 'upload/goods/20181224/b64dc1ea34651f457919cb94031368f11.jpg', '700,700', '700,700', 'upload/goods/20181224/b64dc1ea34651f457919cb94031368f12.jpg', '360,360', '360,360', 'upload/goods/20181224/b64dc1ea34651f457919cb94031368f13.jpg', '240,240', '240,240', 'upload/goods/20181224/b64dc1ea34651f457919cb94031368f14.jpg', '60,60', '60,60', '1545643691', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('321', '0', '1', '0', '665934077cf86b2233cb20324a83fb7a', '665934077cf86b2233cb20324a83fb7a', 'upload/goods/20181224/76b6655c7d6357d9ddd6faa9244b400f.jpg', '506,634', '506,634', 'upload/goods/20181224/1a20c2cab30d6e3adae12846e11f60051.jpg', '700,700', '700,700', 'upload/goods/20181224/1a20c2cab30d6e3adae12846e11f60052.jpg', '360,360', '360,360', 'upload/goods/20181224/1a20c2cab30d6e3adae12846e11f60053.jpg', '240,240', '240,240', 'upload/goods/20181224/1a20c2cab30d6e3adae12846e11f60054.jpg', '60,60', '60,60', '1545643718', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('322', '0', '1', '0', '2018101814240614276', '2018101814240614276', 'upload/goods/20181224/e75d04017538d73c02d1984b7ceb9f27.jpg', '600,460', '600,460', 'upload/goods/20181224/0f0f1f823e2ce5929b6c9336d9fb6e421.jpg', '700,700', '700,700', 'upload/goods/20181224/0f0f1f823e2ce5929b6c9336d9fb6e422.jpg', '360,360', '360,360', 'upload/goods/20181224/0f0f1f823e2ce5929b6c9336d9fb6e423.jpg', '240,240', '240,240', 'upload/goods/20181224/0f0f1f823e2ce5929b6c9336d9fb6e424.jpg', '60,60', '60,60', '1545643856', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('323', '0', '1', '0', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'c5c9a4da5ef591436fbb82d88e4ecdbe', 'upload/goods/20181224/f4b4e448d3a5d4151d0bbe31704cefcc.jpg', '506,634', '506,634', 'upload/goods/20181224/a5b19cad48567c0d2c0387cb4e914fa91.jpg', '700,700', '700,700', 'upload/goods/20181224/a5b19cad48567c0d2c0387cb4e914fa92.jpg', '360,360', '360,360', 'upload/goods/20181224/a5b19cad48567c0d2c0387cb4e914fa93.jpg', '240,240', '240,240', 'upload/goods/20181224/a5b19cad48567c0d2c0387cb4e914fa94.jpg', '60,60', '60,60', '1545643891', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('324', '0', '1', '0', '665934077cf86b2233cb20324a83fb7a', '665934077cf86b2233cb20324a83fb7a', 'upload/goods/20181224/5e202afc987fbb3ad40ec079f2c1271c.jpg', '506,634', '506,634', 'upload/goods/20181224/c990887bc3766cf39d2a0c835e0595be1.jpg', '700,700', '700,700', 'upload/goods/20181224/c990887bc3766cf39d2a0c835e0595be2.jpg', '360,360', '360,360', 'upload/goods/20181224/c990887bc3766cf39d2a0c835e0595be3.jpg', '240,240', '240,240', 'upload/goods/20181224/c990887bc3766cf39d2a0c835e0595be4.jpg', '60,60', '60,60', '1545643953', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('325', '0', '1', '0', '1502257958319597', '1502257958319597', 'upload/goods/20181225/a8a56b7c403e8d66df70e7fb790cee96.jpg', '330,248', '330,248', 'upload/goods/20181225/f9b59523d037d33ae8d7f819ca8d4f811.jpg', '700,700', '700,700', 'upload/goods/20181225/f9b59523d037d33ae8d7f819ca8d4f812.jpg', '360,360', '360,360', 'upload/goods/20181225/f9b59523d037d33ae8d7f819ca8d4f813.jpg', '240,240', '240,240', 'upload/goods/20181225/f9b59523d037d33ae8d7f819ca8d4f814.jpg', '60,60', '60,60', '1545701420', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('326', '0', '1', '0', '1502257958138175', '1502257958138175', 'upload/goods/20181225/98dde973e0ae6290c48237b1066fffc4.jpg', '330,248', '330,248', 'upload/goods/20181225/02c00eddc632f5202dc4e957278523bb1.jpg', '700,700', '700,700', 'upload/goods/20181225/02c00eddc632f5202dc4e957278523bb2.jpg', '360,360', '360,360', 'upload/goods/20181225/02c00eddc632f5202dc4e957278523bb3.jpg', '240,240', '240,240', 'upload/goods/20181225/02c00eddc632f5202dc4e957278523bb4.jpg', '60,60', '60,60', '1545701495', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('327', '0', '1', '0', '1502257958319597', '1502257958319597', 'upload/goods/20181225/c10dba15605213a2c5bb5587a88895a4.jpg', '330,248', '330,248', 'upload/goods/20181225/8687fa3a1a25dec4861ae19b6ad235a91.jpg', '700,700', '700,700', 'upload/goods/20181225/8687fa3a1a25dec4861ae19b6ad235a92.jpg', '360,360', '360,360', 'upload/goods/20181225/8687fa3a1a25dec4861ae19b6ad235a93.jpg', '240,240', '240,240', 'upload/goods/20181225/8687fa3a1a25dec4861ae19b6ad235a94.jpg', '60,60', '60,60', '1545701805', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('328', '0', '1', '0', '1502257958216449', '1502257958216449', 'upload/goods/20181225/2d0b567c86a90389b7c75aff932ec13e.jpg', '330,248', '330,248', 'upload/goods/20181225/9fd3e84313208ba2fd66d72d0f89a25f1.jpg', '700,700', '700,700', 'upload/goods/20181225/9fd3e84313208ba2fd66d72d0f89a25f2.jpg', '360,360', '360,360', 'upload/goods/20181225/9fd3e84313208ba2fd66d72d0f89a25f3.jpg', '240,240', '240,240', 'upload/goods/20181225/9fd3e84313208ba2fd66d72d0f89a25f4.jpg', '60,60', '60,60', '1545701984', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('329', '0', '1', '0', '1502257958138175', '1502257958138175', 'upload/goods/20181225/1610fd8683350b32e205929aade07af5.jpg', '330,248', '330,248', 'upload/goods/20181225/a45d1915e257cc522691f3b1258c31f01.jpg', '700,700', '700,700', 'upload/goods/20181225/a45d1915e257cc522691f3b1258c31f02.jpg', '360,360', '360,360', 'upload/goods/20181225/a45d1915e257cc522691f3b1258c31f03.jpg', '240,240', '240,240', 'upload/goods/20181225/a45d1915e257cc522691f3b1258c31f04.jpg', '60,60', '60,60', '1545702011', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('330', '0', '1', '0', '78973d308462daaa92a1682727e796dc1', '78973d308462daaa92a1682727e796dc1', 'upload/goods/20190102/5fd12dbec8258cfe49cea063936718da.jpg', '700,700', '700,700', 'upload/goods/20190102/be29b112a4e7b7dc27a387015b9197371.jpg', '700,700', '700,700', 'upload/goods/20190102/be29b112a4e7b7dc27a387015b9197372.jpg', '360,360', '360,360', 'upload/goods/20190102/be29b112a4e7b7dc27a387015b9197373.jpg', '240,240', '240,240', 'upload/goods/20190102/be29b112a4e7b7dc27a387015b9197374.jpg', '60,60', '60,60', '1546409099', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('331', '0', '1', '0', 'zp1', 'zp1', 'upload/goods/20190103/df84a3982a2d4dd8bd786719f151d30b.jpg', '506,634', '506,634', 'upload/goods/20190103/955725db5b80d449906ece0e8103bc141.jpg', '700,700', '700,700', 'upload/goods/20190103/955725db5b80d449906ece0e8103bc142.jpg', '360,360', '360,360', 'upload/goods/20190103/955725db5b80d449906ece0e8103bc143.jpg', '240,240', '240,240', 'upload/goods/20190103/955725db5b80d449906ece0e8103bc144.jpg', '60,60', '60,60', '1546477930', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('332', '0', '1', '0', 'tx', 'tx', 'upload/goods/20190103/42416f4dbe6fbe691110dbd584a7dc32.jpg', '200,200', '200,200', 'upload/goods/20190103/806221af5d4e57589ca90d9ac5908c791.jpg', '700,700', '700,700', 'upload/goods/20190103/806221af5d4e57589ca90d9ac5908c792.jpg', '360,360', '360,360', 'upload/goods/20190103/806221af5d4e57589ca90d9ac5908c793.jpg', '240,240', '240,240', 'upload/goods/20190103/806221af5d4e57589ca90d9ac5908c794.jpg', '60,60', '60,60', '1546477952', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('333', '0', '1', '0', 'tuijian', 'tuijian', 'upload/goods/20190103/1eacf72f767755125f515d5e699a03f8.jpg', '345,190', '345,190', 'upload/goods/20190103/09a54a2107d01266778f986e2636540d1.jpg', '700,700', '700,700', 'upload/goods/20190103/09a54a2107d01266778f986e2636540d2.jpg', '360,360', '360,360', 'upload/goods/20190103/09a54a2107d01266778f986e2636540d3.jpg', '240,240', '240,240', 'upload/goods/20190103/09a54a2107d01266778f986e2636540d4.jpg', '60,60', '60,60', '1546477979', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('334', '0', '1', '0', 'hot3', 'hot3', 'upload/goods/20190103/a5bc777fe28e2f334dcab5c231d59527.jpg', '250,145', '250,145', 'upload/goods/20190103/fa1a8ab0b4b06dbfd3e4e15221b998bb1.jpg', '700,700', '700,700', 'upload/goods/20190103/fa1a8ab0b4b06dbfd3e4e15221b998bb2.jpg', '360,360', '360,360', 'upload/goods/20190103/fa1a8ab0b4b06dbfd3e4e15221b998bb3.jpg', '240,240', '240,240', 'upload/goods/20190103/fa1a8ab0b4b06dbfd3e4e15221b998bb4.jpg', '60,60', '60,60', '1546478012', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('335', '0', '1', '0', 'hot5', 'hot5', 'upload/goods/20190103/723916403a3bcd55aa4db8806b23981a.jpg', '250,145', '250,145', 'upload/goods/20190103/b28cf84376d683b28ebd117bcef3cff41.jpg', '700,700', '700,700', 'upload/goods/20190103/b28cf84376d683b28ebd117bcef3cff42.jpg', '360,360', '360,360', 'upload/goods/20190103/b28cf84376d683b28ebd117bcef3cff43.jpg', '240,240', '240,240', 'upload/goods/20190103/b28cf84376d683b28ebd117bcef3cff44.jpg', '60,60', '60,60', '1546478091', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('336', '0', '1', '0', 'xqt1', 'xqt1', 'upload/goods/20190103/499bb3088d10a2f0ec7cf21420a59940.jpg', '708,1049', '708,1049', 'upload/goods/20190103/29c8437e0efd7994c343147264a84c4c1.jpg', '700,700', '700,700', 'upload/goods/20190103/29c8437e0efd7994c343147264a84c4c2.jpg', '360,360', '360,360', 'upload/goods/20190103/29c8437e0efd7994c343147264a84c4c3.jpg', '240,240', '240,240', 'upload/goods/20190103/29c8437e0efd7994c343147264a84c4c4.jpg', '60,60', '60,60', '1546478136', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('337', '0', '1', '0', '3eae0d01aea5fa2b9b7f6ff3e71045ef6961d57cf54e-Brvvn6_fw658 - 副本', '3eae0d01aea5fa2b9b7f6ff3e71045ef6961d57cf54e-Brvvn6_fw658 - 副本', 'upload/goods/20190105/c0b9cd4899525ae49e43099dbe0a22a9.jpg', '382,382', '382,382', 'upload/goods/20190105/7cc1e277250e2e76b5a8d25348069b011.jpg', '700,700', '700,700', 'upload/goods/20190105/7cc1e277250e2e76b5a8d25348069b012.jpg', '360,360', '360,360', 'upload/goods/20190105/7cc1e277250e2e76b5a8d25348069b013.jpg', '240,240', '240,240', 'upload/goods/20190105/7cc1e277250e2e76b5a8d25348069b014.jpg', '60,60', '60,60', '1546671926', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('338', '45', '0', '0', '3eae0d01aea5fa2b9b7f6ff3e71045ef6961d57cf54e-Brvvn6_fw658 - 副本', '3eae0d01aea5fa2b9b7f6ff3e71045ef6961d57cf54e-Brvvn6_fw658 - 副本', 'upload/goods/20190107/661045e03a9e1775e12c17b0508d9bff.jpg', '382,382', '382,382', 'upload/goods/20190107/4c651013f3f3fa0761513758c7e2a9931.jpg', '700,700', '700,700', 'upload/goods/20190107/4c651013f3f3fa0761513758c7e2a9932.jpg', '360,360', '360,360', 'upload/goods/20190107/4c651013f3f3fa0761513758c7e2a9933.jpg', '240,240', '240,240', 'upload/goods/20190107/4c651013f3f3fa0761513758c7e2a9934.jpg', '60,60', '60,60', '1546852323', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('339', '45', '0', '0', '708745', '708745', 'upload/goods/20190107/24134fd3af2a036e490bc08e25032334.jpg', '1280,881', '1280,881', 'upload/goods/20190107/e4850caf290b59934ce25134ca3319f81.jpg', '700,700', '700,700', 'upload/goods/20190107/e4850caf290b59934ce25134ca3319f82.jpg', '360,360', '360,360', 'upload/goods/20190107/e4850caf290b59934ce25134ca3319f83.jpg', '240,240', '240,240', 'upload/goods/20190107/e4850caf290b59934ce25134ca3319f84.jpg', '60,60', '60,60', '1546852327', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('340', '45', '0', '0', '20120610151810_EkzTX.thumb.600_0', '20120610151810_EkzTX.thumb.600_0', 'upload/goods/20190107/2a2bf9a3c0524295df21be5a6a51203f.jpeg', '600,702', '600,702', 'upload/goods/20190107/57a554009b7f1e3e0eb43a81bbe2d8401.jpeg', '700,700', '700,700', 'upload/goods/20190107/57a554009b7f1e3e0eb43a81bbe2d8402.jpeg', '360,360', '360,360', 'upload/goods/20190107/57a554009b7f1e3e0eb43a81bbe2d8403.jpeg', '240,240', '240,240', 'upload/goods/20190107/57a554009b7f1e3e0eb43a81bbe2d8404.jpeg', '60,60', '60,60', '1546852330', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('341', '45', '0', '0', '20150804210338_ABGiv.thumb.700_0', '20150804210338_ABGiv.thumb.700_0', 'upload/goods/20190107/58792b05b7914d327d6da7f9b4fcca96.jpeg', '700,480', '700,480', 'upload/goods/20190107/f99d5f565375a6b5c2364c19423956681.jpeg', '700,700', '700,700', 'upload/goods/20190107/f99d5f565375a6b5c2364c19423956682.jpeg', '360,360', '360,360', 'upload/goods/20190107/f99d5f565375a6b5c2364c19423956683.jpeg', '240,240', '240,240', 'upload/goods/20190107/f99d5f565375a6b5c2364c19423956684.jpeg', '60,60', '60,60', '1546852332', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('342', '45', '0', '0', '2014030512272533', '2014030512272533', 'upload/goods/20190107/0093f3f5c49e18a887dd805056752f62.jpg', '200,200', '200,200', 'upload/goods/20190107/cc12c6b2f9bd560ee541dc54d89b54601.jpg', '700,700', '700,700', 'upload/goods/20190107/cc12c6b2f9bd560ee541dc54d89b54602.jpg', '360,360', '360,360', 'upload/goods/20190107/cc12c6b2f9bd560ee541dc54d89b54603.jpg', '240,240', '240,240', 'upload/goods/20190107/cc12c6b2f9bd560ee541dc54d89b54604.jpg', '60,60', '60,60', '1546852334', '1', '', '');
INSERT INTO `sys_album_picture` VALUES ('343', '45', '0', '0', '20130224135418_tEHZA', '20130224135418_tEHZA', 'upload/goods/20190107/a8306fb1f6faab8c1e5cd0d9e6e6223e.jpeg', '200,200', '200,200', 'upload/goods/20190107/d3ffb7bb838d3f1d422c46ac06f448431.jpeg', '700,700', '700,700', 'upload/goods/20190107/d3ffb7bb838d3f1d422c46ac06f448432.jpeg', '360,360', '360,360', 'upload/goods/20190107/d3ffb7bb838d3f1d422c46ac06f448433.jpeg', '240,240', '240,240', 'upload/goods/20190107/d3ffb7bb838d3f1d422c46ac06f448434.jpeg', '60,60', '60,60', '1546852336', '1', '', '');

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 COMMENT='全部区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '华东', '0');
INSERT INTO `sys_area` VALUES ('2', '华北', '0');
INSERT INTO `sys_area` VALUES ('3', '华南', '0');
INSERT INTO `sys_area` VALUES ('4', '华中', '0');
INSERT INTO `sys_area` VALUES ('5', '东北', '0');
INSERT INTO `sys_area` VALUES ('6', '西北', '0');
INSERT INTO `sys_area` VALUES ('7', '西南', '0');
INSERT INTO `sys_area` VALUES ('8', '港澳台', '0');

-- ----------------------------
-- Table structure for `sys_city`
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0',
  `city_name` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(6) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`),
  KEY `IDX_g_city_CityName` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=135;

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES ('1', '1', '北京市', '100000', '1');
INSERT INTO `sys_city` VALUES ('2', '2', '天津市', '100000', '0');
INSERT INTO `sys_city` VALUES ('3', '3', '石家庄市', '050000', '0');
INSERT INTO `sys_city` VALUES ('4', '3', '唐山市', '063000', '0');
INSERT INTO `sys_city` VALUES ('5', '3', '秦皇岛市', '066000', '0');
INSERT INTO `sys_city` VALUES ('6', '3', '邯郸市', '056000', '0');
INSERT INTO `sys_city` VALUES ('7', '3', '邢台市', '054000', '0');
INSERT INTO `sys_city` VALUES ('8', '3', '保定市', '071000', '0');
INSERT INTO `sys_city` VALUES ('9', '3', '张家口市', '075000', '0');
INSERT INTO `sys_city` VALUES ('10', '3', '承德市', '067000', '0');
INSERT INTO `sys_city` VALUES ('11', '3', '沧州市', '061000', '0');
INSERT INTO `sys_city` VALUES ('12', '3', '廊坊市', '065000', '0');
INSERT INTO `sys_city` VALUES ('13', '3', '衡水市', '053000', '0');
INSERT INTO `sys_city` VALUES ('14', '4', '太原市', '030000', '0');
INSERT INTO `sys_city` VALUES ('15', '4', '大同市', '037000', '0');
INSERT INTO `sys_city` VALUES ('16', '4', '阳泉市', '045000', '0');
INSERT INTO `sys_city` VALUES ('17', '4', '长治市', '046000', '0');
INSERT INTO `sys_city` VALUES ('18', '4', '晋城市', '048000', '0');
INSERT INTO `sys_city` VALUES ('19', '4', '朔州市', '036000', '0');
INSERT INTO `sys_city` VALUES ('20', '4', '晋中市', '030600', '0');
INSERT INTO `sys_city` VALUES ('21', '4', '运城市', '044000', '0');
INSERT INTO `sys_city` VALUES ('22', '4', '忻州市', '034000', '0');
INSERT INTO `sys_city` VALUES ('23', '4', '临汾市', '041000', '0');
INSERT INTO `sys_city` VALUES ('24', '4', '吕梁市', '030500', '0');
INSERT INTO `sys_city` VALUES ('25', '5', '呼和浩特市', '010000', '0');
INSERT INTO `sys_city` VALUES ('26', '5', '包头市', '014000', '0');
INSERT INTO `sys_city` VALUES ('27', '5', '乌海市', '016000', '0');
INSERT INTO `sys_city` VALUES ('28', '5', '赤峰市', '024000', '0');
INSERT INTO `sys_city` VALUES ('29', '5', '通辽市', '028000', '0');
INSERT INTO `sys_city` VALUES ('30', '5', '鄂尔多斯市', '010300', '0');
INSERT INTO `sys_city` VALUES ('31', '5', '呼伦贝尔市', '021000', '0');
INSERT INTO `sys_city` VALUES ('32', '5', '巴彦淖尔市', '014400', '0');
INSERT INTO `sys_city` VALUES ('33', '5', '乌兰察布市', '011800', '0');
INSERT INTO `sys_city` VALUES ('34', '5', '兴安盟', '137500', '0');
INSERT INTO `sys_city` VALUES ('35', '5', '锡林郭勒盟', '011100', '0');
INSERT INTO `sys_city` VALUES ('36', '5', '阿拉善盟', '016000', '0');
INSERT INTO `sys_city` VALUES ('37', '6', '沈阳市', '110000', '0');
INSERT INTO `sys_city` VALUES ('38', '6', '大连市', '116000', '0');
INSERT INTO `sys_city` VALUES ('39', '6', '鞍山市', '114000', '0');
INSERT INTO `sys_city` VALUES ('40', '6', '抚顺市', '113000', '0');
INSERT INTO `sys_city` VALUES ('41', '6', '本溪市', '117000', '0');
INSERT INTO `sys_city` VALUES ('42', '6', '丹东市', '118000', '0');
INSERT INTO `sys_city` VALUES ('43', '6', '锦州市', '121000', '0');
INSERT INTO `sys_city` VALUES ('44', '6', '营口市', '115000', '0');
INSERT INTO `sys_city` VALUES ('45', '6', '阜新市', '123000', '0');
INSERT INTO `sys_city` VALUES ('46', '6', '辽阳市', '111000', '0');
INSERT INTO `sys_city` VALUES ('47', '6', '盘锦市', '124000', '0');
INSERT INTO `sys_city` VALUES ('48', '6', '铁岭市', '112000', '0');
INSERT INTO `sys_city` VALUES ('49', '6', '朝阳市', '122000', '0');
INSERT INTO `sys_city` VALUES ('50', '6', '葫芦岛市', '125000', '0');
INSERT INTO `sys_city` VALUES ('51', '7', '长春市', '130000', '0');
INSERT INTO `sys_city` VALUES ('52', '7', '吉林市', '132000', '0');
INSERT INTO `sys_city` VALUES ('53', '7', '四平市', '136000', '0');
INSERT INTO `sys_city` VALUES ('54', '7', '辽源市', '136200', '0');
INSERT INTO `sys_city` VALUES ('55', '7', '通化市', '134000', '0');
INSERT INTO `sys_city` VALUES ('56', '7', '白山市', '134300', '0');
INSERT INTO `sys_city` VALUES ('57', '7', '松原市', '131100', '0');
INSERT INTO `sys_city` VALUES ('58', '7', '白城市', '137000', '0');
INSERT INTO `sys_city` VALUES ('59', '7', '延边朝鲜族自治州', '133000', '0');
INSERT INTO `sys_city` VALUES ('60', '8', '哈尔滨市', '150000', '0');
INSERT INTO `sys_city` VALUES ('61', '8', '齐齐哈尔市', '161000', '0');
INSERT INTO `sys_city` VALUES ('62', '8', '鸡西市', '158100', '0');
INSERT INTO `sys_city` VALUES ('63', '8', '鹤岗市', '154100', '0');
INSERT INTO `sys_city` VALUES ('64', '8', '双鸭山市', '155100', '0');
INSERT INTO `sys_city` VALUES ('65', '8', '大庆市', '163000', '0');
INSERT INTO `sys_city` VALUES ('66', '8', '伊春市', '152300', '0');
INSERT INTO `sys_city` VALUES ('67', '8', '佳木斯市', '154000', '0');
INSERT INTO `sys_city` VALUES ('68', '8', '七台河市', '154600', '0');
INSERT INTO `sys_city` VALUES ('69', '8', '牡丹江市', '157000', '0');
INSERT INTO `sys_city` VALUES ('70', '8', '黑河市', '164300', '0');
INSERT INTO `sys_city` VALUES ('71', '8', '绥化市', '152000', '0');
INSERT INTO `sys_city` VALUES ('72', '8', '大兴安岭地区', '165000', '0');
INSERT INTO `sys_city` VALUES ('73', '9', '上海市', '200000', '0');
INSERT INTO `sys_city` VALUES ('74', '10', '南京市', '210000', '0');
INSERT INTO `sys_city` VALUES ('75', '10', '无锡市', '214000', '0');
INSERT INTO `sys_city` VALUES ('76', '10', '徐州市', '221000', '0');
INSERT INTO `sys_city` VALUES ('77', '10', '常州市', '213000', '0');
INSERT INTO `sys_city` VALUES ('78', '10', '苏州市', '215000', '0');
INSERT INTO `sys_city` VALUES ('79', '10', '南通市', '226000', '0');
INSERT INTO `sys_city` VALUES ('80', '10', '连云港市', '222000', '0');
INSERT INTO `sys_city` VALUES ('81', '10', '淮安市', '223200', '0');
INSERT INTO `sys_city` VALUES ('82', '10', '盐城市', '224000', '0');
INSERT INTO `sys_city` VALUES ('83', '10', '扬州市', '225000', '0');
INSERT INTO `sys_city` VALUES ('84', '10', '镇江市', '212000', '0');
INSERT INTO `sys_city` VALUES ('85', '10', '泰州市', '225300', '0');
INSERT INTO `sys_city` VALUES ('86', '10', '宿迁市', '223800', '0');
INSERT INTO `sys_city` VALUES ('87', '11', '杭州市', '310000', '0');
INSERT INTO `sys_city` VALUES ('88', '11', '宁波市', '315000', '0');
INSERT INTO `sys_city` VALUES ('89', '11', '温州市', '325000', '0');
INSERT INTO `sys_city` VALUES ('90', '11', '嘉兴市', '314000', '0');
INSERT INTO `sys_city` VALUES ('91', '11', '湖州市', '313000', '0');
INSERT INTO `sys_city` VALUES ('92', '11', '绍兴市', '312000', '0');
INSERT INTO `sys_city` VALUES ('93', '11', '金华市', '321000', '0');
INSERT INTO `sys_city` VALUES ('94', '11', '衢州市', '324000', '0');
INSERT INTO `sys_city` VALUES ('95', '11', '舟山市', '316000', '0');
INSERT INTO `sys_city` VALUES ('96', '11', '台州市', '318000', '0');
INSERT INTO `sys_city` VALUES ('97', '11', '丽水市', '323000', '0');
INSERT INTO `sys_city` VALUES ('98', '12', '合肥市', '230000', '0');
INSERT INTO `sys_city` VALUES ('99', '12', '芜湖市', '241000', '0');
INSERT INTO `sys_city` VALUES ('100', '12', '蚌埠市', '233000', '0');
INSERT INTO `sys_city` VALUES ('101', '12', '淮南市', '232000', '0');
INSERT INTO `sys_city` VALUES ('102', '12', '马鞍山市', '243000', '0');
INSERT INTO `sys_city` VALUES ('103', '12', '淮北市', '235000', '0');
INSERT INTO `sys_city` VALUES ('104', '12', '铜陵市', '244000', '0');
INSERT INTO `sys_city` VALUES ('105', '12', '安庆市', '246000', '0');
INSERT INTO `sys_city` VALUES ('106', '12', '黄山市', '242700', '0');
INSERT INTO `sys_city` VALUES ('107', '12', '滁州市', '239000', '0');
INSERT INTO `sys_city` VALUES ('108', '12', '阜阳市', '236100', '0');
INSERT INTO `sys_city` VALUES ('109', '12', '宿州市', '234100', '0');
INSERT INTO `sys_city` VALUES ('110', '12', '巢湖市', '238000', '0');
INSERT INTO `sys_city` VALUES ('111', '12', '六安市', '237000', '0');
INSERT INTO `sys_city` VALUES ('112', '12', '亳州市', '236800', '0');
INSERT INTO `sys_city` VALUES ('113', '12', '池州市', '247100', '0');
INSERT INTO `sys_city` VALUES ('114', '12', '宣城市', '366000', '0');
INSERT INTO `sys_city` VALUES ('115', '13', '福州市', '350000', '0');
INSERT INTO `sys_city` VALUES ('116', '13', '厦门市', '361000', '0');
INSERT INTO `sys_city` VALUES ('117', '13', '莆田市', '351100', '0');
INSERT INTO `sys_city` VALUES ('118', '13', '三明市', '365000', '0');
INSERT INTO `sys_city` VALUES ('119', '13', '泉州市', '362000', '0');
INSERT INTO `sys_city` VALUES ('120', '13', '漳州市', '363000', '0');
INSERT INTO `sys_city` VALUES ('121', '13', '南平市', '353000', '0');
INSERT INTO `sys_city` VALUES ('122', '13', '龙岩市', '364000', '0');
INSERT INTO `sys_city` VALUES ('123', '13', '宁德市', '352100', '0');
INSERT INTO `sys_city` VALUES ('124', '14', '南昌市', '330000', '0');
INSERT INTO `sys_city` VALUES ('125', '14', '景德镇市', '333000', '0');
INSERT INTO `sys_city` VALUES ('126', '14', '萍乡市', '337000', '0');
INSERT INTO `sys_city` VALUES ('127', '14', '九江市', '332000', '0');
INSERT INTO `sys_city` VALUES ('128', '14', '新余市', '338000', '0');
INSERT INTO `sys_city` VALUES ('129', '14', '鹰潭市', '335000', '0');
INSERT INTO `sys_city` VALUES ('130', '14', '赣州市', '341000', '0');
INSERT INTO `sys_city` VALUES ('131', '14', '吉安市', '343000', '0');
INSERT INTO `sys_city` VALUES ('132', '14', '宜春市', '336000', '0');
INSERT INTO `sys_city` VALUES ('133', '14', '抚州市', '332900', '0');
INSERT INTO `sys_city` VALUES ('134', '14', '上饶市', '334000', '0');
INSERT INTO `sys_city` VALUES ('135', '15', '济南市', '250000', '0');
INSERT INTO `sys_city` VALUES ('136', '15', '青岛市', '266000', '0');
INSERT INTO `sys_city` VALUES ('137', '15', '淄博市', '255000', '0');
INSERT INTO `sys_city` VALUES ('138', '15', '枣庄市', '277100', '0');
INSERT INTO `sys_city` VALUES ('139', '15', '东营市', '257000', '0');
INSERT INTO `sys_city` VALUES ('140', '15', '烟台市', '264000', '0');
INSERT INTO `sys_city` VALUES ('141', '15', '潍坊市', '261000', '0');
INSERT INTO `sys_city` VALUES ('142', '15', '济宁市', '272100', '0');
INSERT INTO `sys_city` VALUES ('143', '15', '泰安市', '271000', '0');
INSERT INTO `sys_city` VALUES ('144', '15', '威海市', '265700', '0');
INSERT INTO `sys_city` VALUES ('145', '15', '日照市', '276800', '0');
INSERT INTO `sys_city` VALUES ('146', '15', '莱芜市', '271100', '0');
INSERT INTO `sys_city` VALUES ('147', '15', '临沂市', '276000', '0');
INSERT INTO `sys_city` VALUES ('148', '15', '德州市', '253000', '0');
INSERT INTO `sys_city` VALUES ('149', '15', '聊城市', '252000', '0');
INSERT INTO `sys_city` VALUES ('150', '15', '滨州市', '256600', '0');
INSERT INTO `sys_city` VALUES ('151', '15', '荷泽市', '255000', '0');
INSERT INTO `sys_city` VALUES ('152', '16', '郑州市', '450000', '0');
INSERT INTO `sys_city` VALUES ('153', '16', '开封市', '475000', '0');
INSERT INTO `sys_city` VALUES ('154', '16', '洛阳市', '471000', '0');
INSERT INTO `sys_city` VALUES ('155', '16', '平顶山市', '467000', '0');
INSERT INTO `sys_city` VALUES ('156', '16', '安阳市', '454900', '0');
INSERT INTO `sys_city` VALUES ('157', '16', '鹤壁市', '456600', '0');
INSERT INTO `sys_city` VALUES ('158', '16', '新乡市', '453000', '0');
INSERT INTO `sys_city` VALUES ('159', '16', '焦作市', '454100', '0');
INSERT INTO `sys_city` VALUES ('160', '16', '濮阳市', '457000', '0');
INSERT INTO `sys_city` VALUES ('161', '16', '许昌市', '461000', '0');
INSERT INTO `sys_city` VALUES ('162', '16', '漯河市', '462000', '0');
INSERT INTO `sys_city` VALUES ('163', '16', '三门峡市', '472000', '0');
INSERT INTO `sys_city` VALUES ('164', '16', '南阳市', '473000', '0');
INSERT INTO `sys_city` VALUES ('165', '16', '商丘市', '476000', '0');
INSERT INTO `sys_city` VALUES ('166', '16', '信阳市', '464000', '0');
INSERT INTO `sys_city` VALUES ('167', '16', '周口市', '466000', '0');
INSERT INTO `sys_city` VALUES ('168', '16', '驻马店市', '463000', '0');
INSERT INTO `sys_city` VALUES ('169', '17', '武汉市', '430000', '0');
INSERT INTO `sys_city` VALUES ('170', '17', '黄石市', '435000', '0');
INSERT INTO `sys_city` VALUES ('171', '17', '十堰市', '442000', '0');
INSERT INTO `sys_city` VALUES ('172', '17', '宜昌市', '443000', '0');
INSERT INTO `sys_city` VALUES ('173', '17', '襄樊市', '441000', '0');
INSERT INTO `sys_city` VALUES ('174', '17', '鄂州市', '436000', '0');
INSERT INTO `sys_city` VALUES ('175', '17', '荆门市', '448000', '0');
INSERT INTO `sys_city` VALUES ('176', '17', '孝感市', '432100', '0');
INSERT INTO `sys_city` VALUES ('177', '17', '荆州市', '434000', '0');
INSERT INTO `sys_city` VALUES ('178', '17', '黄冈市', '438000', '0');
INSERT INTO `sys_city` VALUES ('179', '17', '咸宁市', '437000', '0');
INSERT INTO `sys_city` VALUES ('180', '17', '随州市', '441300', '0');
INSERT INTO `sys_city` VALUES ('181', '17', '恩施土家族苗族自治州', '445000', '0');
INSERT INTO `sys_city` VALUES ('182', '17', '神农架', '442400', '0');
INSERT INTO `sys_city` VALUES ('183', '18', '长沙市', '410000', '0');
INSERT INTO `sys_city` VALUES ('184', '18', '株洲市', '412000', '0');
INSERT INTO `sys_city` VALUES ('185', '18', '湘潭市', '411100', '0');
INSERT INTO `sys_city` VALUES ('186', '18', '衡阳市', '421000', '0');
INSERT INTO `sys_city` VALUES ('187', '18', '邵阳市', '422000', '0');
INSERT INTO `sys_city` VALUES ('188', '18', '岳阳市', '414000', '0');
INSERT INTO `sys_city` VALUES ('189', '18', '常德市', '415000', '0');
INSERT INTO `sys_city` VALUES ('190', '18', '张家界市', '427000', '0');
INSERT INTO `sys_city` VALUES ('191', '18', '益阳市', '413000', '0');
INSERT INTO `sys_city` VALUES ('192', '18', '郴州市', '423000', '0');
INSERT INTO `sys_city` VALUES ('193', '18', '永州市', '425000', '0');
INSERT INTO `sys_city` VALUES ('194', '18', '怀化市', '418000', '0');
INSERT INTO `sys_city` VALUES ('195', '18', '娄底市', '417000', '0');
INSERT INTO `sys_city` VALUES ('196', '18', '湘西土家族苗族自治州', '416000', '0');
INSERT INTO `sys_city` VALUES ('197', '19', '广州市', '510000', '0');
INSERT INTO `sys_city` VALUES ('198', '19', '韶关市', '521000', '0');
INSERT INTO `sys_city` VALUES ('199', '19', '深圳市', '518000', '0');
INSERT INTO `sys_city` VALUES ('200', '19', '珠海市', '519000', '0');
INSERT INTO `sys_city` VALUES ('201', '19', '汕头市', '515000', '0');
INSERT INTO `sys_city` VALUES ('202', '19', '佛山市', '528000', '0');
INSERT INTO `sys_city` VALUES ('203', '19', '江门市', '529000', '0');
INSERT INTO `sys_city` VALUES ('204', '19', '湛江市', '524000', '0');
INSERT INTO `sys_city` VALUES ('205', '19', '茂名市', '525000', '0');
INSERT INTO `sys_city` VALUES ('206', '19', '肇庆市', '526000', '0');
INSERT INTO `sys_city` VALUES ('207', '19', '惠州市', '516000', '0');
INSERT INTO `sys_city` VALUES ('208', '19', '梅州市', '514000', '0');
INSERT INTO `sys_city` VALUES ('209', '19', '汕尾市', '516600', '1');
INSERT INTO `sys_city` VALUES ('210', '19', '河源市', '517000', '0');
INSERT INTO `sys_city` VALUES ('211', '19', '阳江市', '529500', '0');
INSERT INTO `sys_city` VALUES ('212', '19', '清远市', '511500', '0');
INSERT INTO `sys_city` VALUES ('213', '19', '东莞市', '511700', '0');
INSERT INTO `sys_city` VALUES ('214', '19', '中山市', '528400', '0');
INSERT INTO `sys_city` VALUES ('215', '19', '潮州市', '515600', '0');
INSERT INTO `sys_city` VALUES ('216', '19', '揭阳市', '522000', '0');
INSERT INTO `sys_city` VALUES ('217', '19', '云浮市', '527300', '0');
INSERT INTO `sys_city` VALUES ('218', '20', '南宁市', '530000', '0');
INSERT INTO `sys_city` VALUES ('219', '20', '柳州市', '545000', '0');
INSERT INTO `sys_city` VALUES ('220', '20', '桂林市', '541000', '0');
INSERT INTO `sys_city` VALUES ('221', '20', '梧州市', '543000', '0');
INSERT INTO `sys_city` VALUES ('222', '20', '北海市', '536000', '0');
INSERT INTO `sys_city` VALUES ('223', '20', '防城港市', '538000', '0');
INSERT INTO `sys_city` VALUES ('224', '20', '钦州市', '535000', '0');
INSERT INTO `sys_city` VALUES ('225', '20', '贵港市', '537100', '0');
INSERT INTO `sys_city` VALUES ('226', '20', '玉林市', '537000', '0');
INSERT INTO `sys_city` VALUES ('227', '20', '百色市', '533000', '0');
INSERT INTO `sys_city` VALUES ('228', '20', '贺州市', '542800', '0');
INSERT INTO `sys_city` VALUES ('229', '20', '河池市', '547000', '0');
INSERT INTO `sys_city` VALUES ('230', '20', '来宾市', '546100', '0');
INSERT INTO `sys_city` VALUES ('231', '20', '崇左市', '532200', '0');
INSERT INTO `sys_city` VALUES ('232', '21', '海口市', '570000', '0');
INSERT INTO `sys_city` VALUES ('233', '21', '三亚市', '572000', '0');
INSERT INTO `sys_city` VALUES ('234', '22', '重庆市', '400000', '0');
INSERT INTO `sys_city` VALUES ('235', '23', '成都市', '610000', '0');
INSERT INTO `sys_city` VALUES ('236', '23', '自贡市', '643000', '0');
INSERT INTO `sys_city` VALUES ('237', '23', '攀枝花市', '617000', '0');
INSERT INTO `sys_city` VALUES ('238', '23', '泸州市', '646100', '0');
INSERT INTO `sys_city` VALUES ('239', '23', '德阳市', '618000', '0');
INSERT INTO `sys_city` VALUES ('240', '23', '绵阳市', '621000', '0');
INSERT INTO `sys_city` VALUES ('241', '23', '广元市', '628000', '0');
INSERT INTO `sys_city` VALUES ('242', '23', '遂宁市', '629000', '0');
INSERT INTO `sys_city` VALUES ('243', '23', '内江市', '641000', '0');
INSERT INTO `sys_city` VALUES ('244', '23', '乐山市', '614000', '0');
INSERT INTO `sys_city` VALUES ('245', '23', '南充市', '637000', '0');
INSERT INTO `sys_city` VALUES ('246', '23', '眉山市', '612100', '0');
INSERT INTO `sys_city` VALUES ('247', '23', '宜宾市', '644000', '0');
INSERT INTO `sys_city` VALUES ('248', '23', '广安市', '638000', '0');
INSERT INTO `sys_city` VALUES ('249', '23', '达州市', '635000', '0');
INSERT INTO `sys_city` VALUES ('250', '23', '雅安市', '625000', '0');
INSERT INTO `sys_city` VALUES ('251', '23', '巴中市', '635500', '0');
INSERT INTO `sys_city` VALUES ('252', '23', '资阳市', '641300', '0');
INSERT INTO `sys_city` VALUES ('253', '23', '阿坝藏族羌族自治州', '624600', '0');
INSERT INTO `sys_city` VALUES ('254', '23', '甘孜藏族自治州', '626000', '0');
INSERT INTO `sys_city` VALUES ('255', '23', '凉山彝族自治州', '615000', '0');
INSERT INTO `sys_city` VALUES ('256', '24', '贵阳市', '55000', '0');
INSERT INTO `sys_city` VALUES ('257', '24', '六盘水市', '553000', '0');
INSERT INTO `sys_city` VALUES ('258', '24', '遵义市', '563000', '0');
INSERT INTO `sys_city` VALUES ('259', '24', '安顺市', '561000', '0');
INSERT INTO `sys_city` VALUES ('260', '24', '铜仁地区', '554300', '0');
INSERT INTO `sys_city` VALUES ('261', '24', '黔西南布依族苗族自治州', '551500', '0');
INSERT INTO `sys_city` VALUES ('262', '24', '毕节地区', '551700', '0');
INSERT INTO `sys_city` VALUES ('263', '24', '黔东南苗族侗族自治州', '551500', '0');
INSERT INTO `sys_city` VALUES ('264', '24', '黔南布依族苗族自治州', '550100', '0');
INSERT INTO `sys_city` VALUES ('265', '25', '昆明市', '650000', '0');
INSERT INTO `sys_city` VALUES ('266', '25', '曲靖市', '655000', '0');
INSERT INTO `sys_city` VALUES ('267', '25', '玉溪市', '653100', '0');
INSERT INTO `sys_city` VALUES ('268', '25', '保山市', '678000', '0');
INSERT INTO `sys_city` VALUES ('269', '25', '昭通市', '657000', '0');
INSERT INTO `sys_city` VALUES ('270', '25', '丽江市', '674100', '0');
INSERT INTO `sys_city` VALUES ('271', '25', '思茅市', '665000', '0');
INSERT INTO `sys_city` VALUES ('272', '25', '临沧市', '677000', '0');
INSERT INTO `sys_city` VALUES ('273', '25', '楚雄彝族自治州', '675000', '0');
INSERT INTO `sys_city` VALUES ('274', '25', '红河哈尼族彝族自治州', '654400', '0');
INSERT INTO `sys_city` VALUES ('275', '25', '文山壮族苗族自治州', '663000', '0');
INSERT INTO `sys_city` VALUES ('276', '25', '西双版纳傣族自治州', '666200', '0');
INSERT INTO `sys_city` VALUES ('277', '25', '大理白族自治州', '671000', '0');
INSERT INTO `sys_city` VALUES ('278', '25', '德宏傣族景颇族自治州', '678400', '0');
INSERT INTO `sys_city` VALUES ('279', '25', '怒江傈僳族自治州', '671400', '0');
INSERT INTO `sys_city` VALUES ('280', '25', '迪庆藏族自治州', '674400', '0');
INSERT INTO `sys_city` VALUES ('281', '26', '拉萨市', '850000', '0');
INSERT INTO `sys_city` VALUES ('282', '26', '昌都地区', '854000', '0');
INSERT INTO `sys_city` VALUES ('283', '26', '山南地区', '856000', '0');
INSERT INTO `sys_city` VALUES ('284', '26', '日喀则地区', '857000', '0');
INSERT INTO `sys_city` VALUES ('285', '26', '那曲地区', '852000', '0');
INSERT INTO `sys_city` VALUES ('286', '26', '阿里地区', '859100', '0');
INSERT INTO `sys_city` VALUES ('287', '26', '林芝地区', '860100', '0');
INSERT INTO `sys_city` VALUES ('288', '27', '西安市', '710000', '0');
INSERT INTO `sys_city` VALUES ('289', '27', '铜川市', '727000', '0');
INSERT INTO `sys_city` VALUES ('290', '27', '宝鸡市', '721000', '0');
INSERT INTO `sys_city` VALUES ('291', '27', '咸阳市', '712000', '0');
INSERT INTO `sys_city` VALUES ('292', '27', '渭南市', '714000', '0');
INSERT INTO `sys_city` VALUES ('293', '27', '延安市', '716000', '0');
INSERT INTO `sys_city` VALUES ('294', '27', '汉中市', '723000', '0');
INSERT INTO `sys_city` VALUES ('295', '27', '榆林市', '719000', '0');
INSERT INTO `sys_city` VALUES ('296', '27', '安康市', '725000', '0');
INSERT INTO `sys_city` VALUES ('297', '27', '商洛市', '711500', '0');
INSERT INTO `sys_city` VALUES ('298', '28', '兰州市', '730000', '0');
INSERT INTO `sys_city` VALUES ('299', '28', '嘉峪关市', '735100', '0');
INSERT INTO `sys_city` VALUES ('300', '28', '金昌市', '737100', '0');
INSERT INTO `sys_city` VALUES ('301', '28', '白银市', '730900', '0');
INSERT INTO `sys_city` VALUES ('302', '28', '天水市', '741000', '0');
INSERT INTO `sys_city` VALUES ('303', '28', '武威市', '733000', '0');
INSERT INTO `sys_city` VALUES ('304', '28', '张掖市', '734000', '0');
INSERT INTO `sys_city` VALUES ('305', '28', '平凉市', '744000', '0');
INSERT INTO `sys_city` VALUES ('306', '28', '酒泉市', '735000', '0');
INSERT INTO `sys_city` VALUES ('307', '28', '庆阳市', '744500', '0');
INSERT INTO `sys_city` VALUES ('308', '28', '定西市', '743000', '0');
INSERT INTO `sys_city` VALUES ('309', '28', '陇南市', '742100', '0');
INSERT INTO `sys_city` VALUES ('310', '28', '临夏回族自治州', '731100', '0');
INSERT INTO `sys_city` VALUES ('311', '28', '甘南藏族自治州', '747000', '0');
INSERT INTO `sys_city` VALUES ('312', '29', '西宁市', '810000', '0');
INSERT INTO `sys_city` VALUES ('313', '29', '海东地区', '810600', '0');
INSERT INTO `sys_city` VALUES ('314', '29', '海北藏族自治州', '810300', '0');
INSERT INTO `sys_city` VALUES ('315', '29', '黄南藏族自治州', '811300', '0');
INSERT INTO `sys_city` VALUES ('316', '29', '海南藏族自治州', '813000', '0');
INSERT INTO `sys_city` VALUES ('317', '29', '果洛藏族自治州', '814000', '0');
INSERT INTO `sys_city` VALUES ('318', '29', '玉树藏族自治州', '815000', '0');
INSERT INTO `sys_city` VALUES ('319', '29', '海西蒙古族藏族自治州', '817000', '0');
INSERT INTO `sys_city` VALUES ('320', '30', '银川市', '750000', '0');
INSERT INTO `sys_city` VALUES ('321', '30', '石嘴山市', '753000', '0');
INSERT INTO `sys_city` VALUES ('322', '30', '吴忠市', '751100', '0');
INSERT INTO `sys_city` VALUES ('323', '30', '固原市', '756000', '0');
INSERT INTO `sys_city` VALUES ('324', '30', '中卫市', '751700', '0');
INSERT INTO `sys_city` VALUES ('325', '31', '乌鲁木齐市', '830000', '0');
INSERT INTO `sys_city` VALUES ('326', '31', '克拉玛依市', '834000', '0');
INSERT INTO `sys_city` VALUES ('327', '31', '吐鲁番地区', '838000', '0');
INSERT INTO `sys_city` VALUES ('328', '31', '哈密地区', '839000', '0');
INSERT INTO `sys_city` VALUES ('329', '31', '昌吉回族自治州', '831100', '0');
INSERT INTO `sys_city` VALUES ('330', '31', '博尔塔拉蒙古自治州', '833400', '0');
INSERT INTO `sys_city` VALUES ('331', '31', '巴音郭楞蒙古自治州', '841000', '0');
INSERT INTO `sys_city` VALUES ('332', '31', '阿克苏地区', '843000', '0');
INSERT INTO `sys_city` VALUES ('333', '31', '克孜勒苏柯尔克孜自治州', '835600', '0');
INSERT INTO `sys_city` VALUES ('334', '31', '喀什地区', '844000', '0');
INSERT INTO `sys_city` VALUES ('335', '31', '和田地区', '848000', '0');
INSERT INTO `sys_city` VALUES ('336', '31', '伊犁哈萨克自治州', '833200', '0');
INSERT INTO `sys_city` VALUES ('337', '31', '塔城地区', '834700', '0');
INSERT INTO `sys_city` VALUES ('338', '31', '阿勒泰地区', '836500', '0');
INSERT INTO `sys_city` VALUES ('339', '31', '石河子市', '832000', '0');
INSERT INTO `sys_city` VALUES ('340', '31', '阿拉尔市', '843300', '0');
INSERT INTO `sys_city` VALUES ('341', '31', '图木舒克市', '843900', '0');
INSERT INTO `sys_city` VALUES ('342', '31', '五家渠市', '831300', '0');
INSERT INTO `sys_city` VALUES ('343', '32', '香港特别行政区', '000000', '0');
INSERT INTO `sys_city` VALUES ('344', '33', '澳门特别行政区', '000000', '0');
INSERT INTO `sys_city` VALUES ('345', '34', '台湾省', '000000', '0');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项WCHAT,QQ,WPAY,ALIPAY...',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '配置值json',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用 1启用 0不启用',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='第三方配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('12', '0', 'USERNOTICE', '', '', '1', '1487830081', '1497102938');
INSERT INTO `sys_config` VALUES ('13', '0', 'HOTKEY', '[\"\\u4fdd\\u5065\\u54c1\"]', '', '1', '1487831749', '1534743417');
INSERT INTO `sys_config` VALUES ('14', '0', 'DEFAULTKEY', '\"\\u5316\\u5986\\u54c1\"', '', '1', '1487831788', '1534743464');
INSERT INTO `sys_config` VALUES ('17', '0', 'QQLOGIN', '', 'qq', '0', '1488350925', '1497105447');
INSERT INTO `sys_config` VALUES ('18', '0', 'WCHAT', '', '微信', '0', '1488350947', '1497105440');
INSERT INTO `sys_config` VALUES ('21', '0', 'ALIPAY', '', '', '0', '1488442697', '1497105409');
INSERT INTO `sys_config` VALUES ('22', '0', 'EMAILMESSAGE', '{\"email_host\":\"\",\"email_port\":\"\",\"email_addr\":\"\",\"email_id\":\"\",\"email_pass\":\"\",\"email_is_security\":\"false\"}', '', '1', '1488524450', '1539070953');
INSERT INTO `sys_config` VALUES ('27', '0', 'WXOPENPLATFORM', '', '', '1', '1490845979', '1496903672');
INSERT INTO `sys_config` VALUES ('28', '0', 'LOGINVERIFYCODE', '{\"platform\":0,\"admin\":\"0\",\"pc\":\"0\"}', '', '1', '1491014899', '1545958867');
INSERT INTO `sys_config` VALUES ('31', '0', 'COIN_CONFIG', '', '购物币现金转化关系', '1', '1492396593', '1496903672');
INSERT INTO `sys_config` VALUES ('38', '0', 'ORDER_BUY_CLOSE_TIME', '60', '订单自动关闭时间', '1', '1499391774', '1534584902');
INSERT INTO `sys_config` VALUES ('39', '0', 'ORDER_DELIVERY_COMPLETE_TIME', '0', '收货后多长时间自动完成', '1', '1499391779', '1534584902');
INSERT INTO `sys_config` VALUES ('40', '0', 'ORDER_AUTO_DELIVERY', '7', '订单多长时间自动完成', '1', '1499391781', '1534584902');
INSERT INTO `sys_config` VALUES ('41', '0', 'ORDER_BALANCE_PAY', '1', '是否开启余额支付', '1', '1499391784', '1534584902');
INSERT INTO `sys_config` VALUES ('42', '0', 'ORDER_INVOICE_TAX', '10', '发票税率', '1', '1499391786', '1534584902');
INSERT INTO `sys_config` VALUES ('43', '0', 'ORDER_INVOICE_CONTENT', '美容产品', '发票内容', '1', '1499391789', '1534584902');
INSERT INTO `sys_config` VALUES ('44', '0', 'ORDER_SHOW_BUY_RECORD', '1', '是否显示购买记录', '1', '1499391791', '1534584902');
INSERT INTO `sys_config` VALUES ('45', '0', 'SEO_TITLE', '', '标题附加字', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('46', '0', 'SEO_META', '', '商城关键词', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('47', '0', 'SEO_DESC', '', '关键词描述', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('48', '0', 'SEO_OTHER', '', '其他页头信息', '1', '1496751194', '1497090304');
INSERT INTO `sys_config` VALUES ('107', '0', 'ORDER_DELIVERY_PAY', '1', '是否开启货到付款', '1', '1496825466', '1534584902');
INSERT INTO `sys_config` VALUES ('109', '0', 'REGISTER_INTEGRAL', '1', '注册送积分', '1', '1496981877', '1534732691');
INSERT INTO `sys_config` VALUES ('111', '0', 'SHARE_INTEGRAL', '1', '分享送积分', '1', '1496981877', '1534732692');
INSERT INTO `sys_config` VALUES ('112', '0', 'SIGN_INTEGRAL', '1', '签到送积分', '1', '1496983370', '1534732692');
INSERT INTO `sys_config` VALUES ('116', '0', 'LOGINVERIFYCODE', '{\"platform\":0,\"admin\":\"0\",\"pc\":\"0\"}', '', '1', '1497085371', '1545958867');
INSERT INTO `sys_config` VALUES ('122', '0', 'HOTKEY', '[\"\\u4fdd\\u5065\\u54c1\"]', '', '1', '1497087566', '1534743417');
INSERT INTO `sys_config` VALUES ('123', '0', 'DEFAULTKEY', '\"\\u5316\\u5986\\u54c1\"', '', '1', '1497087582', '1534743464');
INSERT INTO `sys_config` VALUES ('125', '0', 'WPAY', '', '', '0', '1497087123', '1498882635');
INSERT INTO `sys_config` VALUES ('127', '0', 'SHOPWCHAT', '', '', '1', '1497088090', '1498736290');
INSERT INTO `sys_config` VALUES ('128', '0', 'BUYER_SELF_LIFTING', '1', '是否开启买家自提', '1', '1498730475', '1534584902');
INSERT INTO `sys_config` VALUES ('129', '0', 'ORDER_SELLER_DISPATCHING', '1', '是否开启商家配送', '1', '1498730475', '1534584902');
INSERT INTO `sys_config` VALUES ('130', '0', 'SHOPPING_BACK_POINTS', '3', '购物返积分设置', '1', '1498730475', '1534584903');
INSERT INTO `sys_config` VALUES ('136', '0', 'MOBILEMESSAGE', '{\"appKey\":\"\",\"secretKey\":\"\",\"freeSignName\":\"\",\"user_type\":\"0\"}', '', '1', '1498894954', '1539070947');
INSERT INTO `sys_config` VALUES ('137', '0', 'REGISTERANDVISIT', '{\"is_register\":\"1\",\"register_info\":\"plain,mobile\",\"name_keyword\":\"\",\"pwd_len\":\"5\",\"pwd_complexity\":\"\",\"is_requiretel\":\"0\",\"terms_of_service\":\"\"}', '', '1', '1499310581', '1545958867');
INSERT INTO `sys_config` VALUES ('138', '0', 'DEFAULT_IMAGE', '{\"default_goods_img\":\"upload\\/upload_watermark\\/1532165672.png\",\"default_headimg\":\"upload\\/upload_watermark\\/1532165677.png\",\"default_cms_thumbnail\":\"\"}', '默认图片', '1', '0', '0');
INSERT INTO `sys_config` VALUES ('139', '0', 'UNIONPAY', '', '银联卡支付', '0', '1522756926', '0');
INSERT INTO `sys_config` VALUES ('140', '0', 'UPLOAD_TYPE', '1', '上传方式 1 本地  2 七牛', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('141', '0', 'IMG_THUMB', '{\"thumb_type\":\"2\",\"upload_size\":\"\",\"upload_ext\":\"\"}', 'thumb_type(缩略)  3 居中裁剪 2 缩放后填充 4 左上角裁剪 5 右下角裁剪 6 固定尺寸缩放', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('142', '0', 'WATER_CONFIG', '{\"watermark\":\"0\",\"transparency\":\"100\",\"waterPosition\":\"9\",\"imgWatermark\":\"\"}', '图片水印参数配置', '1', '1530781150', '0');
INSERT INTO `sys_config` VALUES ('143', '0', 'SHARE_COUPON', '0', '分享送优惠券', '1', '1530783537', '1534732692');
INSERT INTO `sys_config` VALUES ('144', '0', 'SIGN_COUPON', '1', '签到送优惠券', '1', '1530783537', '1534732692');
INSERT INTO `sys_config` VALUES ('145', '0', 'REGISTER_COUPON', '1', '注册送优惠券', '1', '1530783537', '1534732692');
INSERT INTO `sys_config` VALUES ('146', '0', 'COMMENT_COUPON', '1', '评论送优惠券', '1', '1530783537', '1534732692');
INSERT INTO `sys_config` VALUES ('147', '0', 'CLICK_COUPON', '1', '点赞送优惠券', '1', '1530783537', '1534732692');
INSERT INTO `sys_config` VALUES ('148', '0', 'WITHDRAW_BALANCE', '{\"withdraw_cash_min\":\"200\",\"withdraw_multiple\":\"2\",\"withdraw_poundage\":\"0\",\"withdraw_message\":\"\",\"withdraw_account\":[{\"id\":\"bank_card\",\"name\":\"\\u94f6\\u884c\\u5361\",\"value\":1,\"is_checked\":0},{\"id\":\"wechat\",\"name\":\"\\u5fae\\u4fe1\",\"value\":2,\"is_checked\":1},{\"id\":\"alipay\",\"name\":\"\\u652f\\u4ed8\\u5b9d\",\"value\":3,\"is_checked\":1}]}', '会员余额提现设置', '1', '1530783721', '1545877545');
INSERT INTO `sys_config` VALUES ('149', '0', 'USE_PC_TEMPLATE', 'blue', '当前使用的PC端模板文件夹', '1', '1530839468', '1530839468');
INSERT INTO `sys_config` VALUES ('150', '0', 'ORDER_IS_LOGISTICS', '1', '是否允许选择物流', '1', '1530840580', '1534584902');
INSERT INTO `sys_config` VALUES ('151', '0', 'IS_OPEN_VIRTUAL_GOODS', '0', '是否开启虚拟商品', '1', '1530840580', '1534584903');
INSERT INTO `sys_config` VALUES ('152', '0', 'IS_OPEN_ORDER_DESIGNATED_DELIVERY_TIME', '1', '是否开启订单指定配送时间', '1', '1530840580', '1534584903');
INSERT INTO `sys_config` VALUES ('153', '0', 'IS_OPEN_O2O', '0', '是否开启本地配送', '1', '1530840580', '1534584903');
INSERT INTO `sys_config` VALUES ('154', '0', 'COPYRIGHT_LOGO', '', '版权logo', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('155', '0', 'COPYRIGHT_META', '', '备案号', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('156', '0', 'COPYRIGHT_LINK', '', '版权链接', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('157', '0', 'COPYRIGHT_DESC', '', '版权信息', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('158', '0', 'COPYRIGHT_COMPANYNAME', '', '公司名称', '1', '1530844010', '0');
INSERT INTO `sys_config` VALUES ('159', '0', 'QINIU_CONFIG', '{\"Accesskey\":\"\",\"Secretkey\":\"\",\"Bucket\":\"\",\"QiniuUrl\":\"\"}', '七牛云存储参数配置', '1', '1530844028', '0');
INSERT INTO `sys_config` VALUES ('161', '0', 'SERVICE_ADDR', '{\"meiqia_service_addr\":\"\",\"kf_service_addr\":\"\",\"qq_service_addr\":\"935617411\",\"checked_num\":\"3\"}', '客服链接地址', '0', '1531278324', '1546486061');
INSERT INTO `sys_config` VALUES ('162', '1', 'REGISTERANDVISIT', '{\"is_register\":\"1\",\"register_info\":\"plain\",\"name_keyword\":\"\",\"pwd_len\":\"5\",\"pwd_complexity\":\"\",\"terms_of_service\":\"\",\"is_requiretel\":0}', '', '1', '1532398279', '0');
INSERT INTO `sys_config` VALUES ('163', '0', 'USE_WAP_TEMPLATE', 'default_new', '当前使用的手机端模板文件夹', '1', '1532597576', '1532597618');
INSERT INTO `sys_config` VALUES ('164', '0', 'IS_RECOMMEND', '{\"is_recommend\":\"\"}', '首页商城促销版块显示设置', '0', '1532597576', '0');
INSERT INTO `sys_config` VALUES ('165', '0', 'IS_CATEGORY', '{\"is_category\":\"\"}', '首页商品分类是否显示设置', '0', '1532597577', '0');
INSERT INTO `sys_config` VALUES ('166', '0', 'WAP_CLASSIFIED_DISPLAY_MODE', '2', '手机端分类显示方式，1:缩略图模式，2：列表模式', '1', '1532597620', '1534743146');
INSERT INTO `sys_config` VALUES ('167', '0', 'WITHDRAW_BALANCE', '{\"withdraw_cash_min\":\"200\",\"withdraw_multiple\":\"2\",\"withdraw_poundage\":\"0\",\"withdraw_message\":\"\",\"withdraw_account\":[{\"id\":\"bank_card\",\"name\":\"\\u94f6\\u884c\\u5361\",\"value\":1,\"is_checked\":0},{\"id\":\"wechat\",\"name\":\"\\u5fae\\u4fe1\",\"value\":2,\"is_checked\":1},{\"id\":\"alipay\",\"name\":\"\\u652f\\u4ed8\\u5b9d\",\"value\":3,\"is_checked\":1}]}', '会员余额提现设置', '1', '1533280319', '1545877545');
INSERT INTO `sys_config` VALUES ('168', '0', 'ORDER_EXPRESS_MESSAGE', '{\"type\":\"1\",\"appid\":\"test1377728\",\"appkey\":\"8ec77122-5add-4499-94bc-c82ea1ce2fb1\",\"back_url\":\"\"}', '物流跟踪配置信息', '1', '1534584653', '1535781416');
INSERT INTO `sys_config` VALUES ('171', '0', 'MERCHANT_SERVICE', '[{\"id\":0,\"title\":\"我是商家2\",\"describe\":\"诚信2\",\"pic\":\"\"},{\"id\":1,\"title\":\"我是商家3\",\"describe\":\"我是商家3\",\"pic\":\"\"},{\"id\":2,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":3,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":4,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"},{\"id\":5,\"title\":\"\",\"describe\":\"\",\"pic\":\"\"}]', '商家服务', '1', '0', '1539076098');
INSERT INTO `sys_config` VALUES ('172', '1', 'CONFIG_DISTRIBUTION', '{\"is_open\":\"0\",\"is_audit\":0,\"is_start\":0,\"is_set\":0,\"distribution_use\":\"1\"}', '分销设置', '0', '1544504586', '1546569518');

-- ----------------------------
-- Table structure for `sys_custom_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_custom_template`;
CREATE TABLE `sys_custom_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_name` varchar(250) DEFAULT NULL COMMENT '自定义模板名称（暂时预留）',
  `template_data` text NOT NULL COMMENT '模板数据（JSON格式）',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间戳',
  `modify_time` int(11) DEFAULT NULL COMMENT '修改时间戳',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用 0 不启用 1 启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='手机端自定义模板';

-- ----------------------------
-- Records of sys_custom_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_district`
-- ----------------------------
DROP TABLE IF EXISTS `sys_district`;
CREATE TABLE `sys_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT '0',
  `district_name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`district_id`),
  KEY `IDX_g_district_DistrictName` (`district_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2870 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=50;

-- ----------------------------
-- Records of sys_district
-- ----------------------------
INSERT INTO `sys_district` VALUES ('1', '1', '东城区', '0');
INSERT INTO `sys_district` VALUES ('2', '1', '西城区', '0');
INSERT INTO `sys_district` VALUES ('3', '1', '崇文区', '0');
INSERT INTO `sys_district` VALUES ('4', '1', '宣武区', '0');
INSERT INTO `sys_district` VALUES ('5', '1', '朝阳区', '0');
INSERT INTO `sys_district` VALUES ('6', '1', '丰台区', '0');
INSERT INTO `sys_district` VALUES ('7', '1', '石景山区', '0');
INSERT INTO `sys_district` VALUES ('8', '1', '海淀区', '0');
INSERT INTO `sys_district` VALUES ('9', '1', '门头沟区', '0');
INSERT INTO `sys_district` VALUES ('10', '1', '房山区', '0');
INSERT INTO `sys_district` VALUES ('11', '1', '通州区', '0');
INSERT INTO `sys_district` VALUES ('12', '1', '顺义区', '0');
INSERT INTO `sys_district` VALUES ('13', '1', '昌平区', '0');
INSERT INTO `sys_district` VALUES ('14', '1', '大兴区', '0');
INSERT INTO `sys_district` VALUES ('15', '1', '怀柔区', '0');
INSERT INTO `sys_district` VALUES ('16', '1', '平谷区', '0');
INSERT INTO `sys_district` VALUES ('17', '1', '密云县', '0');
INSERT INTO `sys_district` VALUES ('18', '1', '延庆县', '0');
INSERT INTO `sys_district` VALUES ('19', '2', '和平区', '0');
INSERT INTO `sys_district` VALUES ('20', '2', '河东区', '0');
INSERT INTO `sys_district` VALUES ('21', '2', '河西区', '0');
INSERT INTO `sys_district` VALUES ('22', '2', '南开区', '0');
INSERT INTO `sys_district` VALUES ('23', '2', '河北区', '0');
INSERT INTO `sys_district` VALUES ('24', '2', '红桥区', '0');
INSERT INTO `sys_district` VALUES ('25', '2', '塘沽区', '0');
INSERT INTO `sys_district` VALUES ('26', '2', '汉沽区', '0');
INSERT INTO `sys_district` VALUES ('27', '2', '大港区', '0');
INSERT INTO `sys_district` VALUES ('28', '2', '东丽区', '0');
INSERT INTO `sys_district` VALUES ('29', '2', '西青区', '0');
INSERT INTO `sys_district` VALUES ('30', '2', '津南区', '0');
INSERT INTO `sys_district` VALUES ('31', '2', '北辰区', '0');
INSERT INTO `sys_district` VALUES ('32', '2', '武清区', '0');
INSERT INTO `sys_district` VALUES ('33', '2', '宝坻区', '0');
INSERT INTO `sys_district` VALUES ('34', '2', '宁河县', '0');
INSERT INTO `sys_district` VALUES ('35', '2', '静海县', '0');
INSERT INTO `sys_district` VALUES ('36', '2', '蓟县', '0');
INSERT INTO `sys_district` VALUES ('37', '3', '长安区', '0');
INSERT INTO `sys_district` VALUES ('38', '3', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('39', '3', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('40', '3', '新华区', '0');
INSERT INTO `sys_district` VALUES ('41', '3', '井陉矿区', '0');
INSERT INTO `sys_district` VALUES ('42', '3', '裕华区', '0');
INSERT INTO `sys_district` VALUES ('43', '3', '井陉县', '0');
INSERT INTO `sys_district` VALUES ('44', '3', '正定县', '0');
INSERT INTO `sys_district` VALUES ('45', '3', '栾城县', '0');
INSERT INTO `sys_district` VALUES ('46', '3', '行唐县', '0');
INSERT INTO `sys_district` VALUES ('47', '3', '灵寿县', '0');
INSERT INTO `sys_district` VALUES ('48', '3', '高邑县', '0');
INSERT INTO `sys_district` VALUES ('49', '3', '深泽县', '0');
INSERT INTO `sys_district` VALUES ('50', '3', '赞皇县', '0');
INSERT INTO `sys_district` VALUES ('51', '3', '无极县', '0');
INSERT INTO `sys_district` VALUES ('52', '3', '平山县', '0');
INSERT INTO `sys_district` VALUES ('53', '3', '元氏县', '0');
INSERT INTO `sys_district` VALUES ('54', '3', '赵县', '0');
INSERT INTO `sys_district` VALUES ('55', '3', '辛集市', '0');
INSERT INTO `sys_district` VALUES ('56', '3', '藁城市', '0');
INSERT INTO `sys_district` VALUES ('57', '3', '晋州市', '0');
INSERT INTO `sys_district` VALUES ('58', '3', '新乐市', '0');
INSERT INTO `sys_district` VALUES ('59', '3', '鹿泉市', '0');
INSERT INTO `sys_district` VALUES ('60', '4', '路南区', '0');
INSERT INTO `sys_district` VALUES ('61', '4', '路北区', '0');
INSERT INTO `sys_district` VALUES ('62', '4', '古冶区', '0');
INSERT INTO `sys_district` VALUES ('63', '4', '开平区', '0');
INSERT INTO `sys_district` VALUES ('64', '4', '丰南区', '0');
INSERT INTO `sys_district` VALUES ('65', '4', '丰润区', '0');
INSERT INTO `sys_district` VALUES ('66', '4', '滦县', '0');
INSERT INTO `sys_district` VALUES ('67', '4', '滦南县', '0');
INSERT INTO `sys_district` VALUES ('68', '4', '乐亭县', '0');
INSERT INTO `sys_district` VALUES ('69', '4', '迁西县', '0');
INSERT INTO `sys_district` VALUES ('70', '4', '玉田县', '0');
INSERT INTO `sys_district` VALUES ('71', '4', '唐海县', '0');
INSERT INTO `sys_district` VALUES ('72', '4', '遵化市', '0');
INSERT INTO `sys_district` VALUES ('73', '4', '迁安市', '0');
INSERT INTO `sys_district` VALUES ('74', '5', '海港区', '0');
INSERT INTO `sys_district` VALUES ('75', '5', '山海关区', '0');
INSERT INTO `sys_district` VALUES ('76', '5', '北戴河区', '0');
INSERT INTO `sys_district` VALUES ('77', '5', '青龙满族自治县', '0');
INSERT INTO `sys_district` VALUES ('78', '5', '昌黎县', '0');
INSERT INTO `sys_district` VALUES ('79', '5', '抚宁县', '0');
INSERT INTO `sys_district` VALUES ('80', '5', '卢龙县', '0');
INSERT INTO `sys_district` VALUES ('81', '6', '邯山区', '0');
INSERT INTO `sys_district` VALUES ('82', '6', '丛台区', '0');
INSERT INTO `sys_district` VALUES ('83', '6', '复兴区', '0');
INSERT INTO `sys_district` VALUES ('84', '6', '峰峰矿区', '0');
INSERT INTO `sys_district` VALUES ('85', '6', '邯郸县', '0');
INSERT INTO `sys_district` VALUES ('86', '6', '临漳县', '0');
INSERT INTO `sys_district` VALUES ('87', '6', '成安县', '0');
INSERT INTO `sys_district` VALUES ('88', '6', '大名县', '0');
INSERT INTO `sys_district` VALUES ('89', '6', '涉县', '0');
INSERT INTO `sys_district` VALUES ('90', '6', '磁县', '0');
INSERT INTO `sys_district` VALUES ('91', '6', '肥乡县', '0');
INSERT INTO `sys_district` VALUES ('92', '6', '永年县', '0');
INSERT INTO `sys_district` VALUES ('93', '6', '邱县', '0');
INSERT INTO `sys_district` VALUES ('94', '6', '鸡泽县', '0');
INSERT INTO `sys_district` VALUES ('95', '6', '广平县', '0');
INSERT INTO `sys_district` VALUES ('96', '6', '馆陶县', '0');
INSERT INTO `sys_district` VALUES ('97', '6', '魏县', '0');
INSERT INTO `sys_district` VALUES ('98', '6', '曲周县', '0');
INSERT INTO `sys_district` VALUES ('99', '6', '武安市', '0');
INSERT INTO `sys_district` VALUES ('100', '7', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('101', '7', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('102', '7', '邢台县', '0');
INSERT INTO `sys_district` VALUES ('103', '7', '临城县', '0');
INSERT INTO `sys_district` VALUES ('104', '7', '内丘县', '0');
INSERT INTO `sys_district` VALUES ('105', '7', '柏乡县', '0');
INSERT INTO `sys_district` VALUES ('106', '7', '隆尧县', '0');
INSERT INTO `sys_district` VALUES ('107', '7', '任县', '0');
INSERT INTO `sys_district` VALUES ('108', '7', '南和县', '0');
INSERT INTO `sys_district` VALUES ('109', '7', '宁晋县', '0');
INSERT INTO `sys_district` VALUES ('110', '7', '巨鹿县', '0');
INSERT INTO `sys_district` VALUES ('111', '7', '新河县', '0');
INSERT INTO `sys_district` VALUES ('112', '7', '广宗县', '0');
INSERT INTO `sys_district` VALUES ('113', '7', '平乡县', '0');
INSERT INTO `sys_district` VALUES ('114', '7', '威县', '0');
INSERT INTO `sys_district` VALUES ('115', '7', '清河县', '0');
INSERT INTO `sys_district` VALUES ('116', '7', '临西县', '0');
INSERT INTO `sys_district` VALUES ('117', '7', '南宫市', '0');
INSERT INTO `sys_district` VALUES ('118', '7', '沙河市', '0');
INSERT INTO `sys_district` VALUES ('119', '8', '新市区', '0');
INSERT INTO `sys_district` VALUES ('120', '8', '北市区', '0');
INSERT INTO `sys_district` VALUES ('121', '8', '南市区', '0');
INSERT INTO `sys_district` VALUES ('122', '8', '满城县', '0');
INSERT INTO `sys_district` VALUES ('123', '8', '清苑县', '0');
INSERT INTO `sys_district` VALUES ('124', '8', '涞水县', '0');
INSERT INTO `sys_district` VALUES ('125', '8', '阜平县', '0');
INSERT INTO `sys_district` VALUES ('126', '8', '徐水县', '0');
INSERT INTO `sys_district` VALUES ('127', '8', '定兴县', '0');
INSERT INTO `sys_district` VALUES ('128', '8', '唐县', '0');
INSERT INTO `sys_district` VALUES ('129', '8', '高阳县', '0');
INSERT INTO `sys_district` VALUES ('130', '8', '容城县', '0');
INSERT INTO `sys_district` VALUES ('131', '8', '涞源县', '0');
INSERT INTO `sys_district` VALUES ('132', '8', '望都县', '0');
INSERT INTO `sys_district` VALUES ('133', '8', '安新县', '0');
INSERT INTO `sys_district` VALUES ('134', '8', '易县', '0');
INSERT INTO `sys_district` VALUES ('135', '8', '曲阳县', '0');
INSERT INTO `sys_district` VALUES ('136', '8', '蠡县', '0');
INSERT INTO `sys_district` VALUES ('137', '8', '顺平县', '0');
INSERT INTO `sys_district` VALUES ('138', '8', '博野县', '0');
INSERT INTO `sys_district` VALUES ('139', '8', '雄县', '0');
INSERT INTO `sys_district` VALUES ('140', '8', '涿州市', '0');
INSERT INTO `sys_district` VALUES ('141', '8', '定州市', '0');
INSERT INTO `sys_district` VALUES ('142', '8', '安国市', '0');
INSERT INTO `sys_district` VALUES ('143', '8', '高碑店市', '0');
INSERT INTO `sys_district` VALUES ('144', '9', '桥东区', '0');
INSERT INTO `sys_district` VALUES ('145', '9', '桥西区', '0');
INSERT INTO `sys_district` VALUES ('146', '9', '宣化区', '0');
INSERT INTO `sys_district` VALUES ('147', '9', '下花园区', '0');
INSERT INTO `sys_district` VALUES ('148', '9', '宣化县', '0');
INSERT INTO `sys_district` VALUES ('149', '9', '张北县', '0');
INSERT INTO `sys_district` VALUES ('150', '9', '康保县', '0');
INSERT INTO `sys_district` VALUES ('151', '9', '沽源县', '0');
INSERT INTO `sys_district` VALUES ('152', '9', '尚义县', '0');
INSERT INTO `sys_district` VALUES ('153', '9', '蔚县', '0');
INSERT INTO `sys_district` VALUES ('154', '9', '阳原县', '0');
INSERT INTO `sys_district` VALUES ('155', '9', '怀安县', '0');
INSERT INTO `sys_district` VALUES ('156', '9', '万全县', '0');
INSERT INTO `sys_district` VALUES ('157', '9', '怀来县', '0');
INSERT INTO `sys_district` VALUES ('158', '9', '涿鹿县', '0');
INSERT INTO `sys_district` VALUES ('159', '9', '赤城县', '0');
INSERT INTO `sys_district` VALUES ('160', '9', '崇礼县', '0');
INSERT INTO `sys_district` VALUES ('161', '10', '双桥区', '0');
INSERT INTO `sys_district` VALUES ('162', '10', '双滦区', '0');
INSERT INTO `sys_district` VALUES ('163', '10', '鹰手营子矿区', '0');
INSERT INTO `sys_district` VALUES ('164', '10', '承德县', '0');
INSERT INTO `sys_district` VALUES ('165', '10', '兴隆县', '0');
INSERT INTO `sys_district` VALUES ('166', '10', '平泉县', '0');
INSERT INTO `sys_district` VALUES ('167', '10', '滦平县', '0');
INSERT INTO `sys_district` VALUES ('168', '10', '隆化县', '0');
INSERT INTO `sys_district` VALUES ('169', '10', '丰宁满族自治县', '0');
INSERT INTO `sys_district` VALUES ('170', '10', '宽城满族自治县', '0');
INSERT INTO `sys_district` VALUES ('171', '10', '围场满族蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('172', '11', '新华区', '0');
INSERT INTO `sys_district` VALUES ('173', '11', '运河区', '0');
INSERT INTO `sys_district` VALUES ('174', '11', '沧县', '0');
INSERT INTO `sys_district` VALUES ('175', '11', '青县', '0');
INSERT INTO `sys_district` VALUES ('176', '11', '东光县', '0');
INSERT INTO `sys_district` VALUES ('177', '11', '海兴县', '0');
INSERT INTO `sys_district` VALUES ('178', '11', '盐山县', '0');
INSERT INTO `sys_district` VALUES ('179', '11', '肃宁县', '0');
INSERT INTO `sys_district` VALUES ('180', '11', '南皮县', '0');
INSERT INTO `sys_district` VALUES ('181', '11', '吴桥县', '0');
INSERT INTO `sys_district` VALUES ('182', '11', '献县', '0');
INSERT INTO `sys_district` VALUES ('183', '11', '孟村回族自治县', '0');
INSERT INTO `sys_district` VALUES ('184', '11', '泊头市', '0');
INSERT INTO `sys_district` VALUES ('185', '11', '任丘市', '0');
INSERT INTO `sys_district` VALUES ('186', '11', '黄骅市', '0');
INSERT INTO `sys_district` VALUES ('187', '11', '河间市', '0');
INSERT INTO `sys_district` VALUES ('188', '12', '安次区', '0');
INSERT INTO `sys_district` VALUES ('189', '12', '广阳区', '0');
INSERT INTO `sys_district` VALUES ('190', '12', '固安县', '0');
INSERT INTO `sys_district` VALUES ('191', '12', '永清县', '0');
INSERT INTO `sys_district` VALUES ('192', '12', '香河县', '0');
INSERT INTO `sys_district` VALUES ('193', '12', '大城县', '0');
INSERT INTO `sys_district` VALUES ('194', '12', '文安县', '0');
INSERT INTO `sys_district` VALUES ('195', '12', '大厂回族自治县', '0');
INSERT INTO `sys_district` VALUES ('196', '12', '霸州市', '0');
INSERT INTO `sys_district` VALUES ('197', '12', '三河市', '0');
INSERT INTO `sys_district` VALUES ('198', '13', '桃城区', '0');
INSERT INTO `sys_district` VALUES ('199', '13', '枣强县', '0');
INSERT INTO `sys_district` VALUES ('200', '13', '武邑县', '0');
INSERT INTO `sys_district` VALUES ('201', '13', '武强县', '0');
INSERT INTO `sys_district` VALUES ('202', '13', '饶阳县', '0');
INSERT INTO `sys_district` VALUES ('203', '13', '安平县', '0');
INSERT INTO `sys_district` VALUES ('204', '13', '故城县', '0');
INSERT INTO `sys_district` VALUES ('205', '13', '景县', '0');
INSERT INTO `sys_district` VALUES ('206', '13', '阜城县', '0');
INSERT INTO `sys_district` VALUES ('207', '13', '冀州市', '0');
INSERT INTO `sys_district` VALUES ('208', '13', '深州市', '0');
INSERT INTO `sys_district` VALUES ('209', '14', '小店区', '0');
INSERT INTO `sys_district` VALUES ('210', '14', '迎泽区', '0');
INSERT INTO `sys_district` VALUES ('211', '14', '杏花岭区', '0');
INSERT INTO `sys_district` VALUES ('212', '14', '尖草坪区', '0');
INSERT INTO `sys_district` VALUES ('213', '14', '万柏林区', '0');
INSERT INTO `sys_district` VALUES ('214', '14', '晋源区', '0');
INSERT INTO `sys_district` VALUES ('215', '14', '清徐县', '0');
INSERT INTO `sys_district` VALUES ('216', '14', '阳曲县', '0');
INSERT INTO `sys_district` VALUES ('217', '14', '娄烦县', '0');
INSERT INTO `sys_district` VALUES ('218', '14', '古交市', '0');
INSERT INTO `sys_district` VALUES ('219', '15', '城区', '0');
INSERT INTO `sys_district` VALUES ('220', '15', '矿区', '0');
INSERT INTO `sys_district` VALUES ('221', '15', '南郊区', '0');
INSERT INTO `sys_district` VALUES ('222', '15', '新荣区', '0');
INSERT INTO `sys_district` VALUES ('223', '15', '阳高县', '0');
INSERT INTO `sys_district` VALUES ('224', '15', '天镇县', '0');
INSERT INTO `sys_district` VALUES ('225', '15', '广灵县', '0');
INSERT INTO `sys_district` VALUES ('226', '15', '灵丘县', '0');
INSERT INTO `sys_district` VALUES ('227', '15', '浑源县', '0');
INSERT INTO `sys_district` VALUES ('228', '15', '左云县', '0');
INSERT INTO `sys_district` VALUES ('229', '15', '大同县', '0');
INSERT INTO `sys_district` VALUES ('230', '16', '城区', '0');
INSERT INTO `sys_district` VALUES ('231', '16', '矿区', '0');
INSERT INTO `sys_district` VALUES ('232', '16', '郊区', '0');
INSERT INTO `sys_district` VALUES ('233', '16', '平定县', '0');
INSERT INTO `sys_district` VALUES ('234', '16', '盂县', '0');
INSERT INTO `sys_district` VALUES ('235', '17', '城区', '0');
INSERT INTO `sys_district` VALUES ('236', '17', '郊区', '0');
INSERT INTO `sys_district` VALUES ('237', '17', '长治县', '0');
INSERT INTO `sys_district` VALUES ('238', '17', '襄垣县', '0');
INSERT INTO `sys_district` VALUES ('239', '17', '屯留县', '0');
INSERT INTO `sys_district` VALUES ('240', '17', '平顺县', '0');
INSERT INTO `sys_district` VALUES ('241', '17', '黎城县', '0');
INSERT INTO `sys_district` VALUES ('242', '17', '壶关县', '0');
INSERT INTO `sys_district` VALUES ('243', '17', '长子县', '0');
INSERT INTO `sys_district` VALUES ('244', '17', '武乡县', '0');
INSERT INTO `sys_district` VALUES ('245', '17', '沁县', '0');
INSERT INTO `sys_district` VALUES ('246', '17', '沁源县', '0');
INSERT INTO `sys_district` VALUES ('247', '17', '潞城市', '0');
INSERT INTO `sys_district` VALUES ('248', '18', '城区', '0');
INSERT INTO `sys_district` VALUES ('249', '18', '沁水县', '0');
INSERT INTO `sys_district` VALUES ('250', '18', '阳城县', '0');
INSERT INTO `sys_district` VALUES ('251', '18', '陵川县', '0');
INSERT INTO `sys_district` VALUES ('252', '18', '泽州县', '0');
INSERT INTO `sys_district` VALUES ('253', '18', '高平市', '0');
INSERT INTO `sys_district` VALUES ('254', '19', '朔城区', '0');
INSERT INTO `sys_district` VALUES ('255', '19', '平鲁区', '0');
INSERT INTO `sys_district` VALUES ('256', '19', '山阴县', '0');
INSERT INTO `sys_district` VALUES ('257', '19', '应县', '0');
INSERT INTO `sys_district` VALUES ('258', '19', '右玉县', '0');
INSERT INTO `sys_district` VALUES ('259', '19', '怀仁县', '0');
INSERT INTO `sys_district` VALUES ('260', '20', '榆次区', '0');
INSERT INTO `sys_district` VALUES ('261', '20', '榆社县', '0');
INSERT INTO `sys_district` VALUES ('262', '20', '左权县', '0');
INSERT INTO `sys_district` VALUES ('263', '20', '和顺县', '0');
INSERT INTO `sys_district` VALUES ('264', '20', '昔阳县', '0');
INSERT INTO `sys_district` VALUES ('265', '20', '寿阳县', '0');
INSERT INTO `sys_district` VALUES ('266', '20', '太谷县', '0');
INSERT INTO `sys_district` VALUES ('267', '20', '祁县', '0');
INSERT INTO `sys_district` VALUES ('268', '20', '平遥县', '0');
INSERT INTO `sys_district` VALUES ('269', '20', '灵石县', '0');
INSERT INTO `sys_district` VALUES ('270', '20', '介休市', '0');
INSERT INTO `sys_district` VALUES ('271', '21', '盐湖区', '0');
INSERT INTO `sys_district` VALUES ('272', '21', '临猗县', '0');
INSERT INTO `sys_district` VALUES ('273', '21', '万荣县', '0');
INSERT INTO `sys_district` VALUES ('274', '21', '闻喜县', '0');
INSERT INTO `sys_district` VALUES ('275', '21', '稷山县', '0');
INSERT INTO `sys_district` VALUES ('276', '21', '新绛县', '0');
INSERT INTO `sys_district` VALUES ('277', '21', '绛县', '0');
INSERT INTO `sys_district` VALUES ('278', '21', '垣曲县', '0');
INSERT INTO `sys_district` VALUES ('279', '21', '夏县', '0');
INSERT INTO `sys_district` VALUES ('280', '21', '平陆县', '0');
INSERT INTO `sys_district` VALUES ('281', '21', '芮城县', '0');
INSERT INTO `sys_district` VALUES ('282', '21', '永济市', '0');
INSERT INTO `sys_district` VALUES ('283', '21', '河津市', '0');
INSERT INTO `sys_district` VALUES ('284', '22', '忻府区', '0');
INSERT INTO `sys_district` VALUES ('285', '22', '定襄县', '0');
INSERT INTO `sys_district` VALUES ('286', '22', '五台县', '0');
INSERT INTO `sys_district` VALUES ('287', '22', '代县', '0');
INSERT INTO `sys_district` VALUES ('288', '22', '繁峙县', '0');
INSERT INTO `sys_district` VALUES ('289', '22', '宁武县', '0');
INSERT INTO `sys_district` VALUES ('290', '22', '静乐县', '0');
INSERT INTO `sys_district` VALUES ('291', '22', '神池县', '0');
INSERT INTO `sys_district` VALUES ('292', '22', '五寨县', '0');
INSERT INTO `sys_district` VALUES ('293', '22', '岢岚县', '0');
INSERT INTO `sys_district` VALUES ('294', '22', '河曲县', '0');
INSERT INTO `sys_district` VALUES ('295', '22', '保德县', '0');
INSERT INTO `sys_district` VALUES ('296', '22', '偏关县', '0');
INSERT INTO `sys_district` VALUES ('297', '22', '原平市', '0');
INSERT INTO `sys_district` VALUES ('298', '23', '尧都区', '0');
INSERT INTO `sys_district` VALUES ('299', '23', '曲沃县', '0');
INSERT INTO `sys_district` VALUES ('300', '23', '翼城县', '0');
INSERT INTO `sys_district` VALUES ('301', '23', '襄汾县', '0');
INSERT INTO `sys_district` VALUES ('302', '23', '洪洞县', '0');
INSERT INTO `sys_district` VALUES ('303', '23', '古县', '0');
INSERT INTO `sys_district` VALUES ('304', '23', '安泽县', '0');
INSERT INTO `sys_district` VALUES ('305', '23', '浮山县', '0');
INSERT INTO `sys_district` VALUES ('306', '23', '吉县', '0');
INSERT INTO `sys_district` VALUES ('307', '23', '乡宁县', '0');
INSERT INTO `sys_district` VALUES ('308', '23', '大宁县', '0');
INSERT INTO `sys_district` VALUES ('309', '23', '隰县', '0');
INSERT INTO `sys_district` VALUES ('310', '23', '永和县', '0');
INSERT INTO `sys_district` VALUES ('311', '23', '蒲县', '0');
INSERT INTO `sys_district` VALUES ('312', '23', '汾西县', '0');
INSERT INTO `sys_district` VALUES ('313', '23', '侯马市', '0');
INSERT INTO `sys_district` VALUES ('314', '23', '霍州市', '0');
INSERT INTO `sys_district` VALUES ('315', '24', '离石区', '0');
INSERT INTO `sys_district` VALUES ('316', '24', '文水县', '0');
INSERT INTO `sys_district` VALUES ('317', '24', '交城县', '0');
INSERT INTO `sys_district` VALUES ('318', '24', '兴县', '0');
INSERT INTO `sys_district` VALUES ('319', '24', '临县', '0');
INSERT INTO `sys_district` VALUES ('320', '24', '柳林县', '0');
INSERT INTO `sys_district` VALUES ('321', '24', '石楼县', '0');
INSERT INTO `sys_district` VALUES ('322', '24', '岚县', '0');
INSERT INTO `sys_district` VALUES ('323', '24', '方山县', '0');
INSERT INTO `sys_district` VALUES ('324', '24', '中阳县', '0');
INSERT INTO `sys_district` VALUES ('325', '24', '交口县', '0');
INSERT INTO `sys_district` VALUES ('326', '24', '孝义市', '0');
INSERT INTO `sys_district` VALUES ('327', '24', '汾阳市', '0');
INSERT INTO `sys_district` VALUES ('328', '25', '新城区', '0');
INSERT INTO `sys_district` VALUES ('329', '25', '回民区', '0');
INSERT INTO `sys_district` VALUES ('330', '25', '玉泉区', '0');
INSERT INTO `sys_district` VALUES ('331', '25', '赛罕区', '0');
INSERT INTO `sys_district` VALUES ('332', '25', '土默特左旗', '0');
INSERT INTO `sys_district` VALUES ('333', '25', '托克托县', '0');
INSERT INTO `sys_district` VALUES ('334', '25', '和林格尔县', '0');
INSERT INTO `sys_district` VALUES ('335', '25', '清水河县', '0');
INSERT INTO `sys_district` VALUES ('336', '25', '武川县', '0');
INSERT INTO `sys_district` VALUES ('337', '26', '东河区', '0');
INSERT INTO `sys_district` VALUES ('338', '26', '昆都仑区', '0');
INSERT INTO `sys_district` VALUES ('339', '26', '青山区', '0');
INSERT INTO `sys_district` VALUES ('340', '26', '石拐区', '0');
INSERT INTO `sys_district` VALUES ('341', '26', '白云矿区', '0');
INSERT INTO `sys_district` VALUES ('342', '26', '九原区', '0');
INSERT INTO `sys_district` VALUES ('343', '26', '土默特右旗', '0');
INSERT INTO `sys_district` VALUES ('344', '26', '固阳县', '0');
INSERT INTO `sys_district` VALUES ('345', '26', '达尔罕茂明安联合旗', '0');
INSERT INTO `sys_district` VALUES ('346', '27', '海勃湾区', '0');
INSERT INTO `sys_district` VALUES ('347', '27', '海南区', '0');
INSERT INTO `sys_district` VALUES ('348', '27', '乌达区', '0');
INSERT INTO `sys_district` VALUES ('349', '28', '红山区', '0');
INSERT INTO `sys_district` VALUES ('350', '28', '元宝山区', '0');
INSERT INTO `sys_district` VALUES ('351', '28', '松山区', '0');
INSERT INTO `sys_district` VALUES ('352', '28', '阿鲁科尔沁旗', '0');
INSERT INTO `sys_district` VALUES ('353', '28', '巴林左旗', '0');
INSERT INTO `sys_district` VALUES ('354', '28', '巴林右旗', '0');
INSERT INTO `sys_district` VALUES ('355', '28', '林西县', '0');
INSERT INTO `sys_district` VALUES ('356', '28', '克什克腾旗', '0');
INSERT INTO `sys_district` VALUES ('357', '28', '翁牛特旗', '0');
INSERT INTO `sys_district` VALUES ('358', '28', '喀喇沁旗', '0');
INSERT INTO `sys_district` VALUES ('359', '28', '宁城县', '0');
INSERT INTO `sys_district` VALUES ('360', '28', '敖汉旗', '0');
INSERT INTO `sys_district` VALUES ('361', '29', '科尔沁区', '0');
INSERT INTO `sys_district` VALUES ('362', '29', '科尔沁左翼中旗', '0');
INSERT INTO `sys_district` VALUES ('363', '29', '科尔沁左翼后旗', '0');
INSERT INTO `sys_district` VALUES ('364', '29', '开鲁县', '0');
INSERT INTO `sys_district` VALUES ('365', '29', '库伦旗', '0');
INSERT INTO `sys_district` VALUES ('366', '29', '奈曼旗', '0');
INSERT INTO `sys_district` VALUES ('367', '29', '扎鲁特旗', '0');
INSERT INTO `sys_district` VALUES ('368', '29', '霍林郭勒市', '0');
INSERT INTO `sys_district` VALUES ('369', '30', '东胜区', '0');
INSERT INTO `sys_district` VALUES ('370', '30', '达拉特旗', '0');
INSERT INTO `sys_district` VALUES ('371', '30', '准格尔旗', '0');
INSERT INTO `sys_district` VALUES ('372', '30', '鄂托克前旗', '0');
INSERT INTO `sys_district` VALUES ('373', '30', '鄂托克旗', '0');
INSERT INTO `sys_district` VALUES ('374', '30', '杭锦旗', '0');
INSERT INTO `sys_district` VALUES ('375', '30', '乌审旗', '0');
INSERT INTO `sys_district` VALUES ('376', '30', '伊金霍洛旗', '0');
INSERT INTO `sys_district` VALUES ('377', '31', '海拉尔区', '0');
INSERT INTO `sys_district` VALUES ('378', '31', '阿荣旗', '0');
INSERT INTO `sys_district` VALUES ('379', '31', '莫力达瓦达斡尔族自治旗', '0');
INSERT INTO `sys_district` VALUES ('380', '31', '鄂伦春自治旗', '0');
INSERT INTO `sys_district` VALUES ('381', '31', '鄂温克族自治旗', '0');
INSERT INTO `sys_district` VALUES ('382', '31', '陈巴尔虎旗', '0');
INSERT INTO `sys_district` VALUES ('383', '31', '新巴尔虎左旗', '0');
INSERT INTO `sys_district` VALUES ('384', '31', '新巴尔虎右旗', '0');
INSERT INTO `sys_district` VALUES ('385', '31', '满洲里市', '0');
INSERT INTO `sys_district` VALUES ('386', '31', '牙克石市', '0');
INSERT INTO `sys_district` VALUES ('387', '31', '扎兰屯市', '0');
INSERT INTO `sys_district` VALUES ('388', '31', '额尔古纳市', '0');
INSERT INTO `sys_district` VALUES ('389', '31', '根河市', '0');
INSERT INTO `sys_district` VALUES ('390', '32', '临河区', '0');
INSERT INTO `sys_district` VALUES ('391', '32', '五原县', '0');
INSERT INTO `sys_district` VALUES ('392', '32', '磴口县', '0');
INSERT INTO `sys_district` VALUES ('393', '32', '乌拉特前旗', '0');
INSERT INTO `sys_district` VALUES ('394', '32', '乌拉特中旗', '0');
INSERT INTO `sys_district` VALUES ('395', '32', '乌拉特后旗', '0');
INSERT INTO `sys_district` VALUES ('396', '32', '杭锦后旗', '0');
INSERT INTO `sys_district` VALUES ('397', '33', '集宁区', '0');
INSERT INTO `sys_district` VALUES ('398', '33', '卓资县', '0');
INSERT INTO `sys_district` VALUES ('399', '33', '化德县', '0');
INSERT INTO `sys_district` VALUES ('400', '33', '商都县', '0');
INSERT INTO `sys_district` VALUES ('401', '33', '兴和县', '0');
INSERT INTO `sys_district` VALUES ('402', '33', '凉城县', '0');
INSERT INTO `sys_district` VALUES ('403', '33', '察哈尔右翼前旗', '0');
INSERT INTO `sys_district` VALUES ('404', '33', '察哈尔右翼中旗', '0');
INSERT INTO `sys_district` VALUES ('405', '33', '察哈尔右翼后旗', '0');
INSERT INTO `sys_district` VALUES ('406', '33', '四子王旗', '0');
INSERT INTO `sys_district` VALUES ('407', '33', '丰镇市', '0');
INSERT INTO `sys_district` VALUES ('408', '34', '乌兰浩特市', '0');
INSERT INTO `sys_district` VALUES ('409', '34', '阿尔山市', '0');
INSERT INTO `sys_district` VALUES ('410', '34', '科尔沁右翼前旗', '0');
INSERT INTO `sys_district` VALUES ('411', '34', '科尔沁右翼中旗', '0');
INSERT INTO `sys_district` VALUES ('412', '34', '扎赉特旗', '0');
INSERT INTO `sys_district` VALUES ('413', '34', '突泉县', '0');
INSERT INTO `sys_district` VALUES ('414', '35', '二连浩特市', '0');
INSERT INTO `sys_district` VALUES ('415', '35', '锡林浩特市', '0');
INSERT INTO `sys_district` VALUES ('416', '35', '阿巴嘎旗', '0');
INSERT INTO `sys_district` VALUES ('417', '35', '苏尼特左旗', '0');
INSERT INTO `sys_district` VALUES ('418', '35', '苏尼特右旗', '0');
INSERT INTO `sys_district` VALUES ('419', '35', '东乌珠穆沁旗', '0');
INSERT INTO `sys_district` VALUES ('420', '35', '西乌珠穆沁旗', '0');
INSERT INTO `sys_district` VALUES ('421', '35', '太仆寺旗', '0');
INSERT INTO `sys_district` VALUES ('422', '35', '镶黄旗', '0');
INSERT INTO `sys_district` VALUES ('423', '35', '正镶白旗', '0');
INSERT INTO `sys_district` VALUES ('424', '35', '正蓝旗', '0');
INSERT INTO `sys_district` VALUES ('425', '35', '多伦县', '0');
INSERT INTO `sys_district` VALUES ('426', '36', '阿拉善左旗', '0');
INSERT INTO `sys_district` VALUES ('427', '36', '阿拉善右旗', '0');
INSERT INTO `sys_district` VALUES ('428', '36', '额济纳旗', '0');
INSERT INTO `sys_district` VALUES ('429', '37', '和平区', '0');
INSERT INTO `sys_district` VALUES ('430', '37', '沈河区', '0');
INSERT INTO `sys_district` VALUES ('431', '37', '大东区', '0');
INSERT INTO `sys_district` VALUES ('432', '37', '皇姑区', '0');
INSERT INTO `sys_district` VALUES ('433', '37', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('434', '37', '苏家屯区', '0');
INSERT INTO `sys_district` VALUES ('435', '37', '东陵区', '0');
INSERT INTO `sys_district` VALUES ('436', '37', '新城子区', '0');
INSERT INTO `sys_district` VALUES ('437', '37', '于洪区', '0');
INSERT INTO `sys_district` VALUES ('438', '37', '辽中县', '0');
INSERT INTO `sys_district` VALUES ('439', '37', '康平县', '0');
INSERT INTO `sys_district` VALUES ('440', '37', '法库县', '0');
INSERT INTO `sys_district` VALUES ('441', '37', '新民市', '0');
INSERT INTO `sys_district` VALUES ('442', '38', '中山区', '0');
INSERT INTO `sys_district` VALUES ('443', '38', '西岗区', '0');
INSERT INTO `sys_district` VALUES ('444', '38', '沙河口区', '0');
INSERT INTO `sys_district` VALUES ('445', '38', '甘井子区', '0');
INSERT INTO `sys_district` VALUES ('446', '38', '旅顺口区', '0');
INSERT INTO `sys_district` VALUES ('447', '38', '金州区', '0');
INSERT INTO `sys_district` VALUES ('448', '38', '长海县', '0');
INSERT INTO `sys_district` VALUES ('449', '38', '瓦房店市', '0');
INSERT INTO `sys_district` VALUES ('450', '38', '普兰店市', '0');
INSERT INTO `sys_district` VALUES ('451', '38', '庄河市', '0');
INSERT INTO `sys_district` VALUES ('452', '39', '铁东区', '0');
INSERT INTO `sys_district` VALUES ('453', '39', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('454', '39', '立山区', '0');
INSERT INTO `sys_district` VALUES ('455', '39', '千山区', '0');
INSERT INTO `sys_district` VALUES ('456', '39', '台安县', '0');
INSERT INTO `sys_district` VALUES ('457', '39', '岫岩满族自治县', '0');
INSERT INTO `sys_district` VALUES ('458', '39', '海城市', '0');
INSERT INTO `sys_district` VALUES ('459', '40', '新抚区', '0');
INSERT INTO `sys_district` VALUES ('460', '40', '东洲区', '0');
INSERT INTO `sys_district` VALUES ('461', '40', '望花区', '0');
INSERT INTO `sys_district` VALUES ('462', '40', '顺城区', '0');
INSERT INTO `sys_district` VALUES ('463', '40', '抚顺县', '0');
INSERT INTO `sys_district` VALUES ('464', '40', '新宾满族自治县', '0');
INSERT INTO `sys_district` VALUES ('465', '40', '清原满族自治县', '0');
INSERT INTO `sys_district` VALUES ('466', '41', '平山区', '0');
INSERT INTO `sys_district` VALUES ('467', '41', '溪湖区', '0');
INSERT INTO `sys_district` VALUES ('468', '41', '明山区', '0');
INSERT INTO `sys_district` VALUES ('469', '41', '南芬区', '0');
INSERT INTO `sys_district` VALUES ('470', '41', '本溪满族自治县', '0');
INSERT INTO `sys_district` VALUES ('471', '41', '桓仁满族自治县', '0');
INSERT INTO `sys_district` VALUES ('472', '42', '元宝区', '0');
INSERT INTO `sys_district` VALUES ('473', '42', '振兴区', '0');
INSERT INTO `sys_district` VALUES ('474', '42', '振安区', '0');
INSERT INTO `sys_district` VALUES ('475', '42', '宽甸满族自治县', '0');
INSERT INTO `sys_district` VALUES ('476', '42', '东港市', '0');
INSERT INTO `sys_district` VALUES ('477', '42', '凤城市', '0');
INSERT INTO `sys_district` VALUES ('478', '43', '古塔区', '0');
INSERT INTO `sys_district` VALUES ('479', '43', '凌河区', '0');
INSERT INTO `sys_district` VALUES ('480', '43', '太和区', '0');
INSERT INTO `sys_district` VALUES ('481', '43', '黑山县', '0');
INSERT INTO `sys_district` VALUES ('482', '43', '义县', '0');
INSERT INTO `sys_district` VALUES ('483', '43', '凌海市', '0');
INSERT INTO `sys_district` VALUES ('484', '43', '北宁市', '0');
INSERT INTO `sys_district` VALUES ('485', '44', '站前区', '0');
INSERT INTO `sys_district` VALUES ('486', '44', '西市区', '0');
INSERT INTO `sys_district` VALUES ('487', '44', '鲅鱼圈区', '0');
INSERT INTO `sys_district` VALUES ('488', '44', '老边区', '0');
INSERT INTO `sys_district` VALUES ('489', '44', '盖州市', '0');
INSERT INTO `sys_district` VALUES ('490', '44', '大石桥市', '0');
INSERT INTO `sys_district` VALUES ('491', '45', '海州区', '0');
INSERT INTO `sys_district` VALUES ('492', '45', '新邱区', '0');
INSERT INTO `sys_district` VALUES ('493', '45', '太平区', '0');
INSERT INTO `sys_district` VALUES ('494', '45', '清河门区', '0');
INSERT INTO `sys_district` VALUES ('495', '45', '细河区', '0');
INSERT INTO `sys_district` VALUES ('496', '45', '阜新蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('497', '45', '彰武县', '0');
INSERT INTO `sys_district` VALUES ('498', '46', '白塔区', '0');
INSERT INTO `sys_district` VALUES ('499', '46', '文圣区', '0');
INSERT INTO `sys_district` VALUES ('500', '46', '宏伟区', '0');
INSERT INTO `sys_district` VALUES ('501', '46', '弓长岭区', '0');
INSERT INTO `sys_district` VALUES ('502', '46', '太子河区', '0');
INSERT INTO `sys_district` VALUES ('503', '46', '辽阳县', '0');
INSERT INTO `sys_district` VALUES ('504', '46', '灯塔市', '0');
INSERT INTO `sys_district` VALUES ('505', '47', '双台子区', '0');
INSERT INTO `sys_district` VALUES ('506', '47', '兴隆台区', '0');
INSERT INTO `sys_district` VALUES ('507', '47', '大洼县', '0');
INSERT INTO `sys_district` VALUES ('508', '47', '盘山县', '0');
INSERT INTO `sys_district` VALUES ('509', '48', '银州区', '0');
INSERT INTO `sys_district` VALUES ('510', '48', '清河区', '0');
INSERT INTO `sys_district` VALUES ('511', '48', '铁岭县', '0');
INSERT INTO `sys_district` VALUES ('512', '48', '西丰县', '0');
INSERT INTO `sys_district` VALUES ('513', '48', '昌图县', '0');
INSERT INTO `sys_district` VALUES ('514', '48', '调兵山市', '0');
INSERT INTO `sys_district` VALUES ('515', '48', '开原市', '0');
INSERT INTO `sys_district` VALUES ('516', '49', '双塔区', '0');
INSERT INTO `sys_district` VALUES ('517', '49', '龙城区', '0');
INSERT INTO `sys_district` VALUES ('518', '49', '朝阳县', '0');
INSERT INTO `sys_district` VALUES ('519', '49', '建平县', '0');
INSERT INTO `sys_district` VALUES ('520', '49', '喀喇沁左翼蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('521', '49', '北票市', '0');
INSERT INTO `sys_district` VALUES ('522', '49', '凌源市', '0');
INSERT INTO `sys_district` VALUES ('523', '50', '连山区', '0');
INSERT INTO `sys_district` VALUES ('524', '50', '龙港区', '0');
INSERT INTO `sys_district` VALUES ('525', '50', '南票区', '0');
INSERT INTO `sys_district` VALUES ('526', '50', '绥中县', '0');
INSERT INTO `sys_district` VALUES ('527', '50', '建昌县', '0');
INSERT INTO `sys_district` VALUES ('528', '50', '兴城市', '0');
INSERT INTO `sys_district` VALUES ('529', '51', '南关区', '0');
INSERT INTO `sys_district` VALUES ('530', '51', '宽城区', '0');
INSERT INTO `sys_district` VALUES ('531', '51', '朝阳区', '0');
INSERT INTO `sys_district` VALUES ('532', '51', '二道区', '0');
INSERT INTO `sys_district` VALUES ('533', '51', '绿园区', '0');
INSERT INTO `sys_district` VALUES ('534', '51', '双阳区', '0');
INSERT INTO `sys_district` VALUES ('535', '51', '农安县', '0');
INSERT INTO `sys_district` VALUES ('536', '51', '九台市', '0');
INSERT INTO `sys_district` VALUES ('537', '51', '榆树市', '0');
INSERT INTO `sys_district` VALUES ('538', '51', '德惠市', '0');
INSERT INTO `sys_district` VALUES ('539', '52', '昌邑区', '0');
INSERT INTO `sys_district` VALUES ('540', '52', '龙潭区', '0');
INSERT INTO `sys_district` VALUES ('541', '52', '船营区', '0');
INSERT INTO `sys_district` VALUES ('542', '52', '丰满区', '0');
INSERT INTO `sys_district` VALUES ('543', '52', '永吉县', '0');
INSERT INTO `sys_district` VALUES ('544', '52', '蛟河市', '0');
INSERT INTO `sys_district` VALUES ('545', '52', '桦甸市', '0');
INSERT INTO `sys_district` VALUES ('546', '52', '舒兰市', '0');
INSERT INTO `sys_district` VALUES ('547', '52', '磐石市', '0');
INSERT INTO `sys_district` VALUES ('548', '53', '铁西区', '0');
INSERT INTO `sys_district` VALUES ('549', '53', '铁东区', '0');
INSERT INTO `sys_district` VALUES ('550', '53', '梨树县', '0');
INSERT INTO `sys_district` VALUES ('551', '53', '伊通满族自治县', '0');
INSERT INTO `sys_district` VALUES ('552', '53', '公主岭市', '0');
INSERT INTO `sys_district` VALUES ('553', '53', '双辽市', '0');
INSERT INTO `sys_district` VALUES ('554', '54', '龙山区', '0');
INSERT INTO `sys_district` VALUES ('555', '54', '西安区', '0');
INSERT INTO `sys_district` VALUES ('556', '54', '东丰县', '0');
INSERT INTO `sys_district` VALUES ('557', '54', '东辽县', '0');
INSERT INTO `sys_district` VALUES ('558', '55', '东昌区', '0');
INSERT INTO `sys_district` VALUES ('559', '55', '二道江区', '0');
INSERT INTO `sys_district` VALUES ('560', '55', '通化县', '0');
INSERT INTO `sys_district` VALUES ('561', '55', '辉南县', '0');
INSERT INTO `sys_district` VALUES ('562', '55', '柳河县', '0');
INSERT INTO `sys_district` VALUES ('563', '55', '梅河口市', '0');
INSERT INTO `sys_district` VALUES ('564', '55', '集安市', '0');
INSERT INTO `sys_district` VALUES ('565', '56', '八道江区', '0');
INSERT INTO `sys_district` VALUES ('566', '56', '抚松县', '0');
INSERT INTO `sys_district` VALUES ('567', '56', '靖宇县', '0');
INSERT INTO `sys_district` VALUES ('568', '56', '长白朝鲜族自治县', '0');
INSERT INTO `sys_district` VALUES ('569', '56', '江源县', '0');
INSERT INTO `sys_district` VALUES ('570', '56', '临江市', '0');
INSERT INTO `sys_district` VALUES ('571', '57', '宁江区', '0');
INSERT INTO `sys_district` VALUES ('572', '57', '前郭尔罗斯蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('573', '57', '长岭县', '0');
INSERT INTO `sys_district` VALUES ('574', '57', '乾安县', '0');
INSERT INTO `sys_district` VALUES ('575', '57', '扶余县', '0');
INSERT INTO `sys_district` VALUES ('576', '58', '洮北区', '0');
INSERT INTO `sys_district` VALUES ('577', '58', '镇赉县', '0');
INSERT INTO `sys_district` VALUES ('578', '58', '通榆县', '0');
INSERT INTO `sys_district` VALUES ('579', '58', '洮南市', '0');
INSERT INTO `sys_district` VALUES ('580', '58', '大安市', '0');
INSERT INTO `sys_district` VALUES ('581', '59', '延吉市', '0');
INSERT INTO `sys_district` VALUES ('582', '59', '图们市', '0');
INSERT INTO `sys_district` VALUES ('583', '59', '敦化市', '0');
INSERT INTO `sys_district` VALUES ('584', '59', '珲春市', '0');
INSERT INTO `sys_district` VALUES ('585', '59', '龙井市', '0');
INSERT INTO `sys_district` VALUES ('586', '59', '和龙市', '0');
INSERT INTO `sys_district` VALUES ('587', '59', '汪清县', '0');
INSERT INTO `sys_district` VALUES ('588', '59', '安图县', '0');
INSERT INTO `sys_district` VALUES ('589', '60', '道里区', '0');
INSERT INTO `sys_district` VALUES ('590', '60', '南岗区', '0');
INSERT INTO `sys_district` VALUES ('591', '60', '道外区', '0');
INSERT INTO `sys_district` VALUES ('592', '60', '香坊区', '0');
INSERT INTO `sys_district` VALUES ('593', '60', '动力区', '0');
INSERT INTO `sys_district` VALUES ('594', '60', '平房区', '0');
INSERT INTO `sys_district` VALUES ('595', '60', '松北区', '0');
INSERT INTO `sys_district` VALUES ('596', '60', '呼兰区', '0');
INSERT INTO `sys_district` VALUES ('597', '60', '依兰县', '0');
INSERT INTO `sys_district` VALUES ('598', '60', '方正县', '0');
INSERT INTO `sys_district` VALUES ('599', '60', '宾县', '0');
INSERT INTO `sys_district` VALUES ('600', '60', '巴彦县', '0');
INSERT INTO `sys_district` VALUES ('601', '60', '木兰县', '0');
INSERT INTO `sys_district` VALUES ('602', '60', '通河县', '0');
INSERT INTO `sys_district` VALUES ('603', '60', '延寿县', '0');
INSERT INTO `sys_district` VALUES ('604', '60', '阿城市', '0');
INSERT INTO `sys_district` VALUES ('605', '60', '双城市', '0');
INSERT INTO `sys_district` VALUES ('606', '60', '尚志市', '0');
INSERT INTO `sys_district` VALUES ('607', '60', '五常市', '0');
INSERT INTO `sys_district` VALUES ('608', '61', '龙沙区', '0');
INSERT INTO `sys_district` VALUES ('609', '61', '建华区', '0');
INSERT INTO `sys_district` VALUES ('610', '61', '铁锋区', '0');
INSERT INTO `sys_district` VALUES ('611', '61', '昂昂溪区', '0');
INSERT INTO `sys_district` VALUES ('612', '61', '富拉尔基区', '0');
INSERT INTO `sys_district` VALUES ('613', '61', '碾子山区', '0');
INSERT INTO `sys_district` VALUES ('614', '61', '梅里斯达斡尔族区', '0');
INSERT INTO `sys_district` VALUES ('615', '61', '龙江县', '0');
INSERT INTO `sys_district` VALUES ('616', '61', '依安县', '0');
INSERT INTO `sys_district` VALUES ('617', '61', '泰来县', '0');
INSERT INTO `sys_district` VALUES ('618', '61', '甘南县', '0');
INSERT INTO `sys_district` VALUES ('619', '61', '富裕县', '0');
INSERT INTO `sys_district` VALUES ('620', '61', '克山县', '0');
INSERT INTO `sys_district` VALUES ('621', '61', '克东县', '0');
INSERT INTO `sys_district` VALUES ('622', '61', '拜泉县', '0');
INSERT INTO `sys_district` VALUES ('623', '61', '讷河市', '0');
INSERT INTO `sys_district` VALUES ('624', '62', '鸡冠区', '0');
INSERT INTO `sys_district` VALUES ('625', '62', '恒山区', '0');
INSERT INTO `sys_district` VALUES ('626', '62', '滴道区', '0');
INSERT INTO `sys_district` VALUES ('627', '62', '梨树区', '0');
INSERT INTO `sys_district` VALUES ('628', '62', '城子河区', '0');
INSERT INTO `sys_district` VALUES ('629', '62', '麻山区', '0');
INSERT INTO `sys_district` VALUES ('630', '62', '鸡东县', '0');
INSERT INTO `sys_district` VALUES ('631', '62', '虎林市', '0');
INSERT INTO `sys_district` VALUES ('632', '62', '密山市', '0');
INSERT INTO `sys_district` VALUES ('633', '63', '向阳区', '0');
INSERT INTO `sys_district` VALUES ('634', '63', '工农区', '0');
INSERT INTO `sys_district` VALUES ('635', '63', '南山区', '0');
INSERT INTO `sys_district` VALUES ('636', '63', '兴安区', '0');
INSERT INTO `sys_district` VALUES ('637', '63', '东山区', '0');
INSERT INTO `sys_district` VALUES ('638', '63', '兴山区', '0');
INSERT INTO `sys_district` VALUES ('639', '63', '萝北县', '0');
INSERT INTO `sys_district` VALUES ('640', '63', '绥滨县', '0');
INSERT INTO `sys_district` VALUES ('641', '64', '尖山区', '0');
INSERT INTO `sys_district` VALUES ('642', '64', '岭东区', '0');
INSERT INTO `sys_district` VALUES ('643', '64', '四方台区', '0');
INSERT INTO `sys_district` VALUES ('644', '64', '宝山区', '0');
INSERT INTO `sys_district` VALUES ('645', '64', '集贤县', '0');
INSERT INTO `sys_district` VALUES ('646', '64', '友谊县', '0');
INSERT INTO `sys_district` VALUES ('647', '64', '宝清县', '0');
INSERT INTO `sys_district` VALUES ('648', '64', '饶河县', '0');
INSERT INTO `sys_district` VALUES ('649', '65', '萨尔图区', '0');
INSERT INTO `sys_district` VALUES ('650', '65', '龙凤区', '0');
INSERT INTO `sys_district` VALUES ('651', '65', '让胡路区', '0');
INSERT INTO `sys_district` VALUES ('652', '65', '红岗区', '0');
INSERT INTO `sys_district` VALUES ('653', '65', '大同区', '0');
INSERT INTO `sys_district` VALUES ('654', '65', '肇州县', '0');
INSERT INTO `sys_district` VALUES ('655', '65', '肇源县', '0');
INSERT INTO `sys_district` VALUES ('656', '65', '林甸县', '0');
INSERT INTO `sys_district` VALUES ('657', '65', '杜尔伯特蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('658', '66', '伊春区', '0');
INSERT INTO `sys_district` VALUES ('659', '66', '南岔区', '0');
INSERT INTO `sys_district` VALUES ('660', '66', '友好区', '0');
INSERT INTO `sys_district` VALUES ('661', '66', '西林区', '0');
INSERT INTO `sys_district` VALUES ('662', '66', '翠峦区', '0');
INSERT INTO `sys_district` VALUES ('663', '66', '新青区', '0');
INSERT INTO `sys_district` VALUES ('664', '66', '美溪区', '0');
INSERT INTO `sys_district` VALUES ('665', '66', '金山屯区', '0');
INSERT INTO `sys_district` VALUES ('666', '66', '五营区', '0');
INSERT INTO `sys_district` VALUES ('667', '66', '乌马河区', '0');
INSERT INTO `sys_district` VALUES ('668', '66', '汤旺河区', '0');
INSERT INTO `sys_district` VALUES ('669', '66', '带岭区', '0');
INSERT INTO `sys_district` VALUES ('670', '66', '乌伊岭区', '0');
INSERT INTO `sys_district` VALUES ('671', '66', '红星区', '0');
INSERT INTO `sys_district` VALUES ('672', '66', '上甘岭区', '0');
INSERT INTO `sys_district` VALUES ('673', '66', '嘉荫县', '0');
INSERT INTO `sys_district` VALUES ('674', '66', '铁力市', '0');
INSERT INTO `sys_district` VALUES ('675', '67', '永红区', '0');
INSERT INTO `sys_district` VALUES ('676', '67', '向阳区', '0');
INSERT INTO `sys_district` VALUES ('677', '67', '前进区', '0');
INSERT INTO `sys_district` VALUES ('678', '67', '东风区', '0');
INSERT INTO `sys_district` VALUES ('679', '67', '郊区', '0');
INSERT INTO `sys_district` VALUES ('680', '67', '桦南县', '0');
INSERT INTO `sys_district` VALUES ('681', '67', '桦川县', '0');
INSERT INTO `sys_district` VALUES ('682', '67', '汤原县', '0');
INSERT INTO `sys_district` VALUES ('683', '67', '抚远县', '0');
INSERT INTO `sys_district` VALUES ('684', '67', '同江市', '0');
INSERT INTO `sys_district` VALUES ('685', '67', '富锦市', '0');
INSERT INTO `sys_district` VALUES ('686', '68', '新兴区', '0');
INSERT INTO `sys_district` VALUES ('687', '68', '桃山区', '0');
INSERT INTO `sys_district` VALUES ('688', '68', '茄子河区', '0');
INSERT INTO `sys_district` VALUES ('689', '68', '勃利县', '0');
INSERT INTO `sys_district` VALUES ('690', '69', '东安区', '0');
INSERT INTO `sys_district` VALUES ('691', '69', '阳明区', '0');
INSERT INTO `sys_district` VALUES ('692', '69', '爱民区', '0');
INSERT INTO `sys_district` VALUES ('693', '69', '西安区', '0');
INSERT INTO `sys_district` VALUES ('694', '69', '东宁县', '0');
INSERT INTO `sys_district` VALUES ('695', '69', '林口县', '0');
INSERT INTO `sys_district` VALUES ('696', '69', '绥芬河市', '0');
INSERT INTO `sys_district` VALUES ('697', '69', '海林市', '0');
INSERT INTO `sys_district` VALUES ('698', '69', '宁安市', '0');
INSERT INTO `sys_district` VALUES ('699', '69', '穆棱市', '0');
INSERT INTO `sys_district` VALUES ('700', '70', '爱辉区', '0');
INSERT INTO `sys_district` VALUES ('701', '70', '嫩江县', '0');
INSERT INTO `sys_district` VALUES ('702', '70', '逊克县', '0');
INSERT INTO `sys_district` VALUES ('703', '70', '孙吴县', '0');
INSERT INTO `sys_district` VALUES ('704', '70', '北安市', '0');
INSERT INTO `sys_district` VALUES ('705', '70', '五大连池市', '0');
INSERT INTO `sys_district` VALUES ('706', '71', '北林区', '0');
INSERT INTO `sys_district` VALUES ('707', '71', '望奎县', '0');
INSERT INTO `sys_district` VALUES ('708', '71', '兰西县', '0');
INSERT INTO `sys_district` VALUES ('709', '71', '青冈县', '0');
INSERT INTO `sys_district` VALUES ('710', '71', '庆安县', '0');
INSERT INTO `sys_district` VALUES ('711', '71', '明水县', '0');
INSERT INTO `sys_district` VALUES ('712', '71', '绥棱县', '0');
INSERT INTO `sys_district` VALUES ('713', '71', '安达市', '0');
INSERT INTO `sys_district` VALUES ('714', '71', '肇东市', '0');
INSERT INTO `sys_district` VALUES ('715', '71', '海伦市', '0');
INSERT INTO `sys_district` VALUES ('716', '72', '呼玛县', '0');
INSERT INTO `sys_district` VALUES ('717', '72', '塔河县', '0');
INSERT INTO `sys_district` VALUES ('718', '72', '漠河县', '0');
INSERT INTO `sys_district` VALUES ('719', '73', '黄浦区', '0');
INSERT INTO `sys_district` VALUES ('720', '73', '卢湾区', '0');
INSERT INTO `sys_district` VALUES ('721', '73', '徐汇区', '0');
INSERT INTO `sys_district` VALUES ('722', '73', '长宁区', '0');
INSERT INTO `sys_district` VALUES ('723', '73', '静安区', '0');
INSERT INTO `sys_district` VALUES ('724', '73', '普陀区', '0');
INSERT INTO `sys_district` VALUES ('725', '73', '闸北区', '0');
INSERT INTO `sys_district` VALUES ('726', '73', '虹口区', '0');
INSERT INTO `sys_district` VALUES ('727', '73', '杨浦区', '0');
INSERT INTO `sys_district` VALUES ('728', '73', '闵行区', '0');
INSERT INTO `sys_district` VALUES ('729', '73', '宝山区', '0');
INSERT INTO `sys_district` VALUES ('730', '73', '嘉定区', '0');
INSERT INTO `sys_district` VALUES ('731', '73', '浦东新区', '0');
INSERT INTO `sys_district` VALUES ('732', '73', '金山区', '0');
INSERT INTO `sys_district` VALUES ('733', '73', '松江区', '0');
INSERT INTO `sys_district` VALUES ('734', '73', '青浦区', '0');
INSERT INTO `sys_district` VALUES ('735', '73', '南汇区', '0');
INSERT INTO `sys_district` VALUES ('736', '73', '奉贤区', '0');
INSERT INTO `sys_district` VALUES ('737', '73', '崇明县', '0');
INSERT INTO `sys_district` VALUES ('738', '74', '玄武区', '0');
INSERT INTO `sys_district` VALUES ('739', '74', '白下区', '0');
INSERT INTO `sys_district` VALUES ('740', '74', '秦淮区', '0');
INSERT INTO `sys_district` VALUES ('741', '74', '建邺区', '0');
INSERT INTO `sys_district` VALUES ('742', '74', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('743', '74', '下关区', '0');
INSERT INTO `sys_district` VALUES ('744', '74', '浦口区', '0');
INSERT INTO `sys_district` VALUES ('745', '74', '栖霞区', '0');
INSERT INTO `sys_district` VALUES ('746', '74', '雨花台区', '0');
INSERT INTO `sys_district` VALUES ('747', '74', '江宁区', '0');
INSERT INTO `sys_district` VALUES ('748', '74', '六合区', '0');
INSERT INTO `sys_district` VALUES ('749', '74', '溧水县', '0');
INSERT INTO `sys_district` VALUES ('750', '74', '高淳县', '0');
INSERT INTO `sys_district` VALUES ('751', '75', '崇安区', '0');
INSERT INTO `sys_district` VALUES ('752', '75', '南长区', '0');
INSERT INTO `sys_district` VALUES ('753', '75', '北塘区', '0');
INSERT INTO `sys_district` VALUES ('754', '75', '锡山区', '0');
INSERT INTO `sys_district` VALUES ('755', '75', '惠山区', '0');
INSERT INTO `sys_district` VALUES ('756', '75', '滨湖区', '0');
INSERT INTO `sys_district` VALUES ('757', '75', '江阴市', '0');
INSERT INTO `sys_district` VALUES ('758', '75', '宜兴市', '0');
INSERT INTO `sys_district` VALUES ('759', '76', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('760', '76', '云龙区', '0');
INSERT INTO `sys_district` VALUES ('761', '76', '九里区', '0');
INSERT INTO `sys_district` VALUES ('762', '76', '贾汪区', '0');
INSERT INTO `sys_district` VALUES ('763', '76', '泉山区', '0');
INSERT INTO `sys_district` VALUES ('764', '76', '丰县', '0');
INSERT INTO `sys_district` VALUES ('765', '76', '沛县', '0');
INSERT INTO `sys_district` VALUES ('766', '76', '铜山县', '0');
INSERT INTO `sys_district` VALUES ('767', '76', '睢宁县', '0');
INSERT INTO `sys_district` VALUES ('768', '76', '新沂市', '0');
INSERT INTO `sys_district` VALUES ('769', '76', '邳州市', '0');
INSERT INTO `sys_district` VALUES ('770', '77', '天宁区', '0');
INSERT INTO `sys_district` VALUES ('771', '77', '钟楼区', '0');
INSERT INTO `sys_district` VALUES ('772', '77', '戚墅堰区', '0');
INSERT INTO `sys_district` VALUES ('773', '77', '新北区', '0');
INSERT INTO `sys_district` VALUES ('774', '77', '武进区', '0');
INSERT INTO `sys_district` VALUES ('775', '77', '溧阳市', '0');
INSERT INTO `sys_district` VALUES ('776', '77', '金坛市', '0');
INSERT INTO `sys_district` VALUES ('777', '78', '沧浪区', '0');
INSERT INTO `sys_district` VALUES ('778', '78', '平江区', '0');
INSERT INTO `sys_district` VALUES ('779', '78', '金阊区', '0');
INSERT INTO `sys_district` VALUES ('780', '78', '虎丘区', '0');
INSERT INTO `sys_district` VALUES ('781', '78', '吴中区', '0');
INSERT INTO `sys_district` VALUES ('782', '78', '相城区', '0');
INSERT INTO `sys_district` VALUES ('783', '78', '常熟市', '0');
INSERT INTO `sys_district` VALUES ('784', '78', '张家港市', '0');
INSERT INTO `sys_district` VALUES ('785', '78', '昆山市', '0');
INSERT INTO `sys_district` VALUES ('786', '78', '吴江市', '0');
INSERT INTO `sys_district` VALUES ('787', '78', '太仓市', '0');
INSERT INTO `sys_district` VALUES ('788', '79', '崇川区', '0');
INSERT INTO `sys_district` VALUES ('789', '79', '港闸区', '0');
INSERT INTO `sys_district` VALUES ('790', '79', '海安县', '0');
INSERT INTO `sys_district` VALUES ('791', '79', '如东县', '0');
INSERT INTO `sys_district` VALUES ('792', '79', '启东市', '0');
INSERT INTO `sys_district` VALUES ('793', '79', '如皋市', '0');
INSERT INTO `sys_district` VALUES ('794', '79', '通州市', '0');
INSERT INTO `sys_district` VALUES ('795', '79', '海门市', '0');
INSERT INTO `sys_district` VALUES ('796', '80', '连云区', '0');
INSERT INTO `sys_district` VALUES ('797', '80', '新浦区', '0');
INSERT INTO `sys_district` VALUES ('798', '80', '海州区', '0');
INSERT INTO `sys_district` VALUES ('799', '80', '赣榆县', '0');
INSERT INTO `sys_district` VALUES ('800', '80', '东海县', '0');
INSERT INTO `sys_district` VALUES ('801', '80', '灌云县', '0');
INSERT INTO `sys_district` VALUES ('802', '80', '灌南县', '0');
INSERT INTO `sys_district` VALUES ('803', '81', '清河区', '0');
INSERT INTO `sys_district` VALUES ('804', '81', '楚州区', '0');
INSERT INTO `sys_district` VALUES ('805', '81', '淮阴区', '0');
INSERT INTO `sys_district` VALUES ('806', '81', '清浦区', '0');
INSERT INTO `sys_district` VALUES ('807', '81', '涟水县', '0');
INSERT INTO `sys_district` VALUES ('808', '81', '洪泽县', '0');
INSERT INTO `sys_district` VALUES ('809', '81', '盱眙县', '0');
INSERT INTO `sys_district` VALUES ('810', '81', '金湖县', '0');
INSERT INTO `sys_district` VALUES ('811', '82', '亭湖区', '0');
INSERT INTO `sys_district` VALUES ('812', '82', '盐都区', '0');
INSERT INTO `sys_district` VALUES ('813', '82', '响水县', '0');
INSERT INTO `sys_district` VALUES ('814', '82', '滨海县', '0');
INSERT INTO `sys_district` VALUES ('815', '82', '阜宁县', '0');
INSERT INTO `sys_district` VALUES ('816', '82', '射阳县', '0');
INSERT INTO `sys_district` VALUES ('817', '82', '建湖县', '0');
INSERT INTO `sys_district` VALUES ('818', '82', '东台市', '0');
INSERT INTO `sys_district` VALUES ('819', '82', '大丰市', '0');
INSERT INTO `sys_district` VALUES ('820', '83', '广陵区', '0');
INSERT INTO `sys_district` VALUES ('821', '83', '邗江区', '0');
INSERT INTO `sys_district` VALUES ('822', '83', '维扬区', '0');
INSERT INTO `sys_district` VALUES ('823', '83', '宝应县', '0');
INSERT INTO `sys_district` VALUES ('824', '83', '仪征市', '0');
INSERT INTO `sys_district` VALUES ('825', '83', '高邮市', '0');
INSERT INTO `sys_district` VALUES ('826', '83', '江都市', '0');
INSERT INTO `sys_district` VALUES ('827', '84', '京口区', '0');
INSERT INTO `sys_district` VALUES ('828', '84', '润州区', '0');
INSERT INTO `sys_district` VALUES ('829', '84', '丹徒区', '0');
INSERT INTO `sys_district` VALUES ('830', '84', '丹阳市', '0');
INSERT INTO `sys_district` VALUES ('831', '84', '扬中市', '0');
INSERT INTO `sys_district` VALUES ('832', '84', '句容市', '0');
INSERT INTO `sys_district` VALUES ('833', '85', '海陵区', '0');
INSERT INTO `sys_district` VALUES ('834', '85', '高港区', '0');
INSERT INTO `sys_district` VALUES ('835', '85', '兴化市', '0');
INSERT INTO `sys_district` VALUES ('836', '85', '靖江市', '0');
INSERT INTO `sys_district` VALUES ('837', '85', '泰兴市', '0');
INSERT INTO `sys_district` VALUES ('838', '85', '姜堰市', '0');
INSERT INTO `sys_district` VALUES ('839', '86', '宿城区', '0');
INSERT INTO `sys_district` VALUES ('840', '86', '宿豫区', '0');
INSERT INTO `sys_district` VALUES ('841', '86', '沭阳县', '0');
INSERT INTO `sys_district` VALUES ('842', '86', '泗阳县', '0');
INSERT INTO `sys_district` VALUES ('843', '86', '泗洪县', '0');
INSERT INTO `sys_district` VALUES ('844', '87', '上城区', '0');
INSERT INTO `sys_district` VALUES ('845', '87', '下城区', '0');
INSERT INTO `sys_district` VALUES ('846', '87', '江干区', '0');
INSERT INTO `sys_district` VALUES ('847', '87', '拱墅区', '0');
INSERT INTO `sys_district` VALUES ('848', '87', '西湖区', '0');
INSERT INTO `sys_district` VALUES ('849', '87', '滨江区', '0');
INSERT INTO `sys_district` VALUES ('850', '87', '萧山区', '0');
INSERT INTO `sys_district` VALUES ('851', '87', '余杭区', '0');
INSERT INTO `sys_district` VALUES ('852', '87', '桐庐县', '0');
INSERT INTO `sys_district` VALUES ('853', '87', '淳安县', '0');
INSERT INTO `sys_district` VALUES ('854', '87', '建德市', '0');
INSERT INTO `sys_district` VALUES ('855', '87', '富阳市', '0');
INSERT INTO `sys_district` VALUES ('856', '87', '临安市', '0');
INSERT INTO `sys_district` VALUES ('857', '88', '海曙区', '0');
INSERT INTO `sys_district` VALUES ('858', '88', '江东区', '0');
INSERT INTO `sys_district` VALUES ('859', '88', '江北区', '0');
INSERT INTO `sys_district` VALUES ('860', '88', '北仑区', '0');
INSERT INTO `sys_district` VALUES ('861', '88', '镇海区', '0');
INSERT INTO `sys_district` VALUES ('862', '88', '鄞州区', '0');
INSERT INTO `sys_district` VALUES ('863', '88', '象山县', '0');
INSERT INTO `sys_district` VALUES ('864', '88', '宁海县', '0');
INSERT INTO `sys_district` VALUES ('865', '88', '余姚市', '0');
INSERT INTO `sys_district` VALUES ('866', '88', '慈溪市', '0');
INSERT INTO `sys_district` VALUES ('867', '88', '奉化市', '0');
INSERT INTO `sys_district` VALUES ('868', '89', '鹿城区', '0');
INSERT INTO `sys_district` VALUES ('869', '89', '龙湾区', '0');
INSERT INTO `sys_district` VALUES ('870', '89', '瓯海区', '0');
INSERT INTO `sys_district` VALUES ('871', '89', '洞头县', '0');
INSERT INTO `sys_district` VALUES ('872', '89', '永嘉县', '0');
INSERT INTO `sys_district` VALUES ('873', '89', '平阳县', '0');
INSERT INTO `sys_district` VALUES ('874', '89', '苍南县', '0');
INSERT INTO `sys_district` VALUES ('875', '89', '文成县', '0');
INSERT INTO `sys_district` VALUES ('876', '89', '泰顺县', '0');
INSERT INTO `sys_district` VALUES ('877', '89', '瑞安市', '0');
INSERT INTO `sys_district` VALUES ('878', '89', '乐清市', '0');
INSERT INTO `sys_district` VALUES ('879', '90', '秀城区', '0');
INSERT INTO `sys_district` VALUES ('880', '90', '秀洲区', '0');
INSERT INTO `sys_district` VALUES ('881', '90', '嘉善县', '0');
INSERT INTO `sys_district` VALUES ('882', '90', '海盐县', '0');
INSERT INTO `sys_district` VALUES ('883', '90', '海宁市', '0');
INSERT INTO `sys_district` VALUES ('884', '90', '平湖市', '0');
INSERT INTO `sys_district` VALUES ('885', '90', '桐乡市', '0');
INSERT INTO `sys_district` VALUES ('886', '91', '吴兴区', '0');
INSERT INTO `sys_district` VALUES ('887', '91', '南浔区', '0');
INSERT INTO `sys_district` VALUES ('888', '91', '德清县', '0');
INSERT INTO `sys_district` VALUES ('889', '91', '长兴县', '0');
INSERT INTO `sys_district` VALUES ('890', '91', '安吉县', '0');
INSERT INTO `sys_district` VALUES ('891', '92', '越城区', '0');
INSERT INTO `sys_district` VALUES ('892', '92', '绍兴县', '0');
INSERT INTO `sys_district` VALUES ('893', '92', '新昌县', '0');
INSERT INTO `sys_district` VALUES ('894', '92', '诸暨市', '0');
INSERT INTO `sys_district` VALUES ('895', '92', '上虞市', '0');
INSERT INTO `sys_district` VALUES ('896', '92', '嵊州市', '0');
INSERT INTO `sys_district` VALUES ('897', '93', '婺城区', '0');
INSERT INTO `sys_district` VALUES ('898', '93', '金东区', '0');
INSERT INTO `sys_district` VALUES ('899', '93', '武义县', '0');
INSERT INTO `sys_district` VALUES ('900', '93', '浦江县', '0');
INSERT INTO `sys_district` VALUES ('901', '93', '磐安县', '0');
INSERT INTO `sys_district` VALUES ('902', '93', '兰溪市', '0');
INSERT INTO `sys_district` VALUES ('903', '93', '义乌市', '0');
INSERT INTO `sys_district` VALUES ('904', '93', '东阳市', '0');
INSERT INTO `sys_district` VALUES ('905', '93', '永康市', '0');
INSERT INTO `sys_district` VALUES ('906', '94', '柯城区', '0');
INSERT INTO `sys_district` VALUES ('907', '94', '衢江区', '0');
INSERT INTO `sys_district` VALUES ('908', '94', '常山县', '0');
INSERT INTO `sys_district` VALUES ('909', '94', '开化县', '0');
INSERT INTO `sys_district` VALUES ('910', '94', '龙游县', '0');
INSERT INTO `sys_district` VALUES ('911', '94', '江山市', '0');
INSERT INTO `sys_district` VALUES ('912', '95', '定海区', '0');
INSERT INTO `sys_district` VALUES ('913', '95', '普陀区', '0');
INSERT INTO `sys_district` VALUES ('914', '95', '岱山县', '0');
INSERT INTO `sys_district` VALUES ('915', '95', '嵊泗县', '0');
INSERT INTO `sys_district` VALUES ('916', '96', '椒江区', '0');
INSERT INTO `sys_district` VALUES ('917', '96', '黄岩区', '0');
INSERT INTO `sys_district` VALUES ('918', '96', '路桥区', '0');
INSERT INTO `sys_district` VALUES ('919', '96', '玉环县', '0');
INSERT INTO `sys_district` VALUES ('920', '96', '三门县', '0');
INSERT INTO `sys_district` VALUES ('921', '96', '天台县', '0');
INSERT INTO `sys_district` VALUES ('922', '96', '仙居县', '0');
INSERT INTO `sys_district` VALUES ('923', '96', '温岭市', '0');
INSERT INTO `sys_district` VALUES ('924', '96', '临海市', '0');
INSERT INTO `sys_district` VALUES ('925', '97', '莲都区', '0');
INSERT INTO `sys_district` VALUES ('926', '97', '青田县', '0');
INSERT INTO `sys_district` VALUES ('927', '97', '缙云县', '0');
INSERT INTO `sys_district` VALUES ('928', '97', '遂昌县', '0');
INSERT INTO `sys_district` VALUES ('929', '97', '松阳县', '0');
INSERT INTO `sys_district` VALUES ('930', '97', '云和县', '0');
INSERT INTO `sys_district` VALUES ('931', '97', '庆元县', '0');
INSERT INTO `sys_district` VALUES ('932', '97', '景宁畲族自治县', '0');
INSERT INTO `sys_district` VALUES ('933', '97', '龙泉市', '0');
INSERT INTO `sys_district` VALUES ('934', '98', '瑶海区', '0');
INSERT INTO `sys_district` VALUES ('935', '98', '庐阳区', '0');
INSERT INTO `sys_district` VALUES ('936', '98', '蜀山区', '0');
INSERT INTO `sys_district` VALUES ('937', '98', '包河区', '0');
INSERT INTO `sys_district` VALUES ('938', '98', '长丰县', '0');
INSERT INTO `sys_district` VALUES ('939', '98', '肥东县', '0');
INSERT INTO `sys_district` VALUES ('940', '98', '肥西县', '0');
INSERT INTO `sys_district` VALUES ('941', '99', '镜湖区', '0');
INSERT INTO `sys_district` VALUES ('942', '99', '马塘区', '0');
INSERT INTO `sys_district` VALUES ('943', '99', '新芜区', '0');
INSERT INTO `sys_district` VALUES ('944', '99', '鸠江区', '0');
INSERT INTO `sys_district` VALUES ('945', '99', '芜湖县', '0');
INSERT INTO `sys_district` VALUES ('946', '99', '繁昌县', '0');
INSERT INTO `sys_district` VALUES ('947', '99', '南陵县', '0');
INSERT INTO `sys_district` VALUES ('948', '100', '龙子湖区', '0');
INSERT INTO `sys_district` VALUES ('949', '100', '蚌山区', '0');
INSERT INTO `sys_district` VALUES ('950', '100', '禹会区', '0');
INSERT INTO `sys_district` VALUES ('951', '100', '淮上区', '0');
INSERT INTO `sys_district` VALUES ('952', '100', '怀远县', '0');
INSERT INTO `sys_district` VALUES ('953', '100', '五河县', '0');
INSERT INTO `sys_district` VALUES ('954', '100', '固镇县', '0');
INSERT INTO `sys_district` VALUES ('955', '101', '大通区', '0');
INSERT INTO `sys_district` VALUES ('956', '101', '田家庵区', '0');
INSERT INTO `sys_district` VALUES ('957', '101', '谢家集区', '0');
INSERT INTO `sys_district` VALUES ('958', '101', '八公山区', '0');
INSERT INTO `sys_district` VALUES ('959', '101', '潘集区', '0');
INSERT INTO `sys_district` VALUES ('960', '101', '凤台县', '0');
INSERT INTO `sys_district` VALUES ('961', '102', '金家庄区', '0');
INSERT INTO `sys_district` VALUES ('962', '102', '花山区', '0');
INSERT INTO `sys_district` VALUES ('963', '102', '雨山区', '0');
INSERT INTO `sys_district` VALUES ('964', '102', '当涂县', '0');
INSERT INTO `sys_district` VALUES ('965', '103', '杜集区', '0');
INSERT INTO `sys_district` VALUES ('966', '103', '相山区', '0');
INSERT INTO `sys_district` VALUES ('967', '103', '烈山区', '0');
INSERT INTO `sys_district` VALUES ('968', '103', '濉溪县', '0');
INSERT INTO `sys_district` VALUES ('969', '104', '铜官山区', '0');
INSERT INTO `sys_district` VALUES ('970', '104', '狮子山区', '0');
INSERT INTO `sys_district` VALUES ('971', '104', '郊区', '0');
INSERT INTO `sys_district` VALUES ('972', '104', '铜陵县', '0');
INSERT INTO `sys_district` VALUES ('973', '105', '迎江区', '0');
INSERT INTO `sys_district` VALUES ('974', '105', '大观区', '0');
INSERT INTO `sys_district` VALUES ('975', '105', '郊区', '0');
INSERT INTO `sys_district` VALUES ('976', '105', '怀宁县', '0');
INSERT INTO `sys_district` VALUES ('977', '105', '枞阳县', '0');
INSERT INTO `sys_district` VALUES ('978', '105', '潜山县', '0');
INSERT INTO `sys_district` VALUES ('979', '105', '太湖县', '0');
INSERT INTO `sys_district` VALUES ('980', '105', '宿松县', '0');
INSERT INTO `sys_district` VALUES ('981', '105', '望江县', '0');
INSERT INTO `sys_district` VALUES ('982', '105', '岳西县', '0');
INSERT INTO `sys_district` VALUES ('983', '105', '桐城市', '0');
INSERT INTO `sys_district` VALUES ('984', '106', '屯溪区', '0');
INSERT INTO `sys_district` VALUES ('985', '106', '黄山区', '0');
INSERT INTO `sys_district` VALUES ('986', '106', '徽州区', '0');
INSERT INTO `sys_district` VALUES ('987', '106', '歙县', '0');
INSERT INTO `sys_district` VALUES ('988', '106', '休宁县', '0');
INSERT INTO `sys_district` VALUES ('989', '106', '黟县', '0');
INSERT INTO `sys_district` VALUES ('990', '106', '祁门县', '0');
INSERT INTO `sys_district` VALUES ('991', '107', '琅琊区', '0');
INSERT INTO `sys_district` VALUES ('992', '107', '南谯区', '0');
INSERT INTO `sys_district` VALUES ('993', '107', '来安县', '0');
INSERT INTO `sys_district` VALUES ('994', '107', '全椒县', '0');
INSERT INTO `sys_district` VALUES ('995', '107', '定远县', '0');
INSERT INTO `sys_district` VALUES ('996', '107', '凤阳县', '0');
INSERT INTO `sys_district` VALUES ('997', '107', '天长市', '0');
INSERT INTO `sys_district` VALUES ('998', '107', '明光市', '0');
INSERT INTO `sys_district` VALUES ('999', '108', '颍州区', '0');
INSERT INTO `sys_district` VALUES ('1000', '108', '颍东区', '0');
INSERT INTO `sys_district` VALUES ('1001', '108', '颍泉区', '0');
INSERT INTO `sys_district` VALUES ('1002', '108', '临泉县', '0');
INSERT INTO `sys_district` VALUES ('1003', '108', '太和县', '0');
INSERT INTO `sys_district` VALUES ('1004', '108', '阜南县', '0');
INSERT INTO `sys_district` VALUES ('1005', '108', '颍上县', '0');
INSERT INTO `sys_district` VALUES ('1006', '108', '界首市', '0');
INSERT INTO `sys_district` VALUES ('1007', '109', '埇桥区', '0');
INSERT INTO `sys_district` VALUES ('1008', '109', '砀山县', '0');
INSERT INTO `sys_district` VALUES ('1009', '109', '萧县', '0');
INSERT INTO `sys_district` VALUES ('1010', '109', '灵璧县', '0');
INSERT INTO `sys_district` VALUES ('1011', '109', '泗县', '0');
INSERT INTO `sys_district` VALUES ('1012', '110', '居巢区', '0');
INSERT INTO `sys_district` VALUES ('1013', '110', '庐江县', '0');
INSERT INTO `sys_district` VALUES ('1014', '110', '无为县', '0');
INSERT INTO `sys_district` VALUES ('1015', '110', '含山县', '0');
INSERT INTO `sys_district` VALUES ('1016', '110', '和县', '0');
INSERT INTO `sys_district` VALUES ('1017', '111', '金安区', '0');
INSERT INTO `sys_district` VALUES ('1018', '111', '裕安区', '0');
INSERT INTO `sys_district` VALUES ('1019', '111', '寿县', '0');
INSERT INTO `sys_district` VALUES ('1020', '111', '霍邱县', '0');
INSERT INTO `sys_district` VALUES ('1021', '111', '舒城县', '0');
INSERT INTO `sys_district` VALUES ('1022', '111', '金寨县', '0');
INSERT INTO `sys_district` VALUES ('1023', '111', '霍山县', '0');
INSERT INTO `sys_district` VALUES ('1024', '112', '谯城区', '0');
INSERT INTO `sys_district` VALUES ('1025', '112', '涡阳县', '0');
INSERT INTO `sys_district` VALUES ('1026', '112', '蒙城县', '0');
INSERT INTO `sys_district` VALUES ('1027', '112', '利辛县', '0');
INSERT INTO `sys_district` VALUES ('1028', '113', '贵池区', '0');
INSERT INTO `sys_district` VALUES ('1029', '113', '东至县', '0');
INSERT INTO `sys_district` VALUES ('1030', '113', '石台县', '0');
INSERT INTO `sys_district` VALUES ('1031', '113', '青阳县', '0');
INSERT INTO `sys_district` VALUES ('1032', '114', '宣州区', '0');
INSERT INTO `sys_district` VALUES ('1033', '114', '郎溪县', '0');
INSERT INTO `sys_district` VALUES ('1034', '114', '广德县', '0');
INSERT INTO `sys_district` VALUES ('1035', '114', '泾县', '0');
INSERT INTO `sys_district` VALUES ('1036', '114', '绩溪县', '0');
INSERT INTO `sys_district` VALUES ('1037', '114', '旌德县', '0');
INSERT INTO `sys_district` VALUES ('1038', '114', '宁国市', '0');
INSERT INTO `sys_district` VALUES ('1039', '115', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('1040', '115', '台江区', '0');
INSERT INTO `sys_district` VALUES ('1041', '115', '仓山区', '0');
INSERT INTO `sys_district` VALUES ('1042', '115', '马尾区', '0');
INSERT INTO `sys_district` VALUES ('1043', '115', '晋安区', '0');
INSERT INTO `sys_district` VALUES ('1044', '115', '闽侯县', '0');
INSERT INTO `sys_district` VALUES ('1045', '115', '连江县', '0');
INSERT INTO `sys_district` VALUES ('1046', '115', '罗源县', '0');
INSERT INTO `sys_district` VALUES ('1047', '115', '闽清县', '0');
INSERT INTO `sys_district` VALUES ('1048', '115', '永泰县', '0');
INSERT INTO `sys_district` VALUES ('1049', '115', '平潭县', '0');
INSERT INTO `sys_district` VALUES ('1050', '115', '福清市', '0');
INSERT INTO `sys_district` VALUES ('1051', '115', '长乐市', '0');
INSERT INTO `sys_district` VALUES ('1052', '116', '思明区', '0');
INSERT INTO `sys_district` VALUES ('1053', '116', '海沧区', '0');
INSERT INTO `sys_district` VALUES ('1054', '116', '湖里区', '0');
INSERT INTO `sys_district` VALUES ('1055', '116', '集美区', '0');
INSERT INTO `sys_district` VALUES ('1056', '116', '同安区', '0');
INSERT INTO `sys_district` VALUES ('1057', '116', '翔安区', '0');
INSERT INTO `sys_district` VALUES ('1058', '117', '城厢区', '0');
INSERT INTO `sys_district` VALUES ('1059', '117', '涵江区', '0');
INSERT INTO `sys_district` VALUES ('1060', '117', '荔城区', '0');
INSERT INTO `sys_district` VALUES ('1061', '117', '秀屿区', '0');
INSERT INTO `sys_district` VALUES ('1062', '117', '仙游县', '0');
INSERT INTO `sys_district` VALUES ('1063', '118', '梅列区', '0');
INSERT INTO `sys_district` VALUES ('1064', '118', '三元区', '0');
INSERT INTO `sys_district` VALUES ('1065', '118', '明溪县', '0');
INSERT INTO `sys_district` VALUES ('1066', '118', '清流县', '0');
INSERT INTO `sys_district` VALUES ('1067', '118', '宁化县', '0');
INSERT INTO `sys_district` VALUES ('1068', '118', '大田县', '0');
INSERT INTO `sys_district` VALUES ('1069', '118', '尤溪县', '0');
INSERT INTO `sys_district` VALUES ('1070', '118', '沙县', '0');
INSERT INTO `sys_district` VALUES ('1071', '118', '将乐县', '0');
INSERT INTO `sys_district` VALUES ('1072', '118', '泰宁县', '0');
INSERT INTO `sys_district` VALUES ('1073', '118', '建宁县', '0');
INSERT INTO `sys_district` VALUES ('1074', '118', '永安市', '0');
INSERT INTO `sys_district` VALUES ('1075', '119', '鲤城区', '0');
INSERT INTO `sys_district` VALUES ('1076', '119', '丰泽区', '0');
INSERT INTO `sys_district` VALUES ('1077', '119', '洛江区', '0');
INSERT INTO `sys_district` VALUES ('1078', '119', '泉港区', '0');
INSERT INTO `sys_district` VALUES ('1079', '119', '惠安县', '0');
INSERT INTO `sys_district` VALUES ('1080', '119', '安溪县', '0');
INSERT INTO `sys_district` VALUES ('1081', '119', '永春县', '0');
INSERT INTO `sys_district` VALUES ('1082', '119', '德化县', '0');
INSERT INTO `sys_district` VALUES ('1083', '119', '金门县', '0');
INSERT INTO `sys_district` VALUES ('1084', '119', '石狮市', '0');
INSERT INTO `sys_district` VALUES ('1085', '119', '晋江市', '0');
INSERT INTO `sys_district` VALUES ('1086', '119', '南安市', '0');
INSERT INTO `sys_district` VALUES ('1087', '120', '芗城区', '0');
INSERT INTO `sys_district` VALUES ('1088', '120', '龙文区', '0');
INSERT INTO `sys_district` VALUES ('1089', '120', '云霄县', '0');
INSERT INTO `sys_district` VALUES ('1090', '120', '漳浦县', '0');
INSERT INTO `sys_district` VALUES ('1091', '120', '诏安县', '0');
INSERT INTO `sys_district` VALUES ('1092', '120', '长泰县', '0');
INSERT INTO `sys_district` VALUES ('1093', '120', '东山县', '0');
INSERT INTO `sys_district` VALUES ('1094', '120', '南靖县', '0');
INSERT INTO `sys_district` VALUES ('1095', '120', '平和县', '0');
INSERT INTO `sys_district` VALUES ('1096', '120', '华安县', '0');
INSERT INTO `sys_district` VALUES ('1097', '120', '龙海市', '0');
INSERT INTO `sys_district` VALUES ('1098', '121', '延平区', '0');
INSERT INTO `sys_district` VALUES ('1099', '121', '顺昌县', '0');
INSERT INTO `sys_district` VALUES ('1100', '121', '浦城县', '0');
INSERT INTO `sys_district` VALUES ('1101', '121', '光泽县', '0');
INSERT INTO `sys_district` VALUES ('1102', '121', '松溪县', '0');
INSERT INTO `sys_district` VALUES ('1103', '121', '政和县', '0');
INSERT INTO `sys_district` VALUES ('1104', '121', '邵武市', '0');
INSERT INTO `sys_district` VALUES ('1105', '121', '武夷山市', '0');
INSERT INTO `sys_district` VALUES ('1106', '121', '建瓯市', '0');
INSERT INTO `sys_district` VALUES ('1107', '121', '建阳市', '0');
INSERT INTO `sys_district` VALUES ('1108', '122', '新罗区', '0');
INSERT INTO `sys_district` VALUES ('1109', '122', '长汀县', '0');
INSERT INTO `sys_district` VALUES ('1110', '122', '永定县', '0');
INSERT INTO `sys_district` VALUES ('1111', '122', '上杭县', '0');
INSERT INTO `sys_district` VALUES ('1112', '122', '武平县', '0');
INSERT INTO `sys_district` VALUES ('1113', '122', '连城县', '0');
INSERT INTO `sys_district` VALUES ('1114', '122', '漳平市', '0');
INSERT INTO `sys_district` VALUES ('1115', '123', '蕉城区', '0');
INSERT INTO `sys_district` VALUES ('1116', '123', '霞浦县', '0');
INSERT INTO `sys_district` VALUES ('1117', '123', '古田县', '0');
INSERT INTO `sys_district` VALUES ('1118', '123', '屏南县', '0');
INSERT INTO `sys_district` VALUES ('1119', '123', '寿宁县', '0');
INSERT INTO `sys_district` VALUES ('1120', '123', '周宁县', '0');
INSERT INTO `sys_district` VALUES ('1121', '123', '柘荣县', '0');
INSERT INTO `sys_district` VALUES ('1122', '123', '福安市', '0');
INSERT INTO `sys_district` VALUES ('1123', '123', '福鼎市', '0');
INSERT INTO `sys_district` VALUES ('1124', '124', '东湖区', '0');
INSERT INTO `sys_district` VALUES ('1125', '124', '西湖区', '0');
INSERT INTO `sys_district` VALUES ('1126', '124', '青云谱区', '0');
INSERT INTO `sys_district` VALUES ('1127', '124', '湾里区', '0');
INSERT INTO `sys_district` VALUES ('1128', '124', '青山湖区', '0');
INSERT INTO `sys_district` VALUES ('1129', '124', '南昌县', '0');
INSERT INTO `sys_district` VALUES ('1130', '124', '新建县', '0');
INSERT INTO `sys_district` VALUES ('1131', '124', '安义县', '0');
INSERT INTO `sys_district` VALUES ('1132', '124', '进贤县', '0');
INSERT INTO `sys_district` VALUES ('1133', '125', '昌江区', '0');
INSERT INTO `sys_district` VALUES ('1134', '125', '珠山区', '0');
INSERT INTO `sys_district` VALUES ('1135', '125', '浮梁县', '0');
INSERT INTO `sys_district` VALUES ('1136', '125', '乐平市', '0');
INSERT INTO `sys_district` VALUES ('1137', '126', '安源区', '0');
INSERT INTO `sys_district` VALUES ('1138', '126', '湘东区', '0');
INSERT INTO `sys_district` VALUES ('1139', '126', '莲花县', '0');
INSERT INTO `sys_district` VALUES ('1140', '126', '上栗县', '0');
INSERT INTO `sys_district` VALUES ('1141', '126', '芦溪县', '0');
INSERT INTO `sys_district` VALUES ('1142', '127', '庐山区', '0');
INSERT INTO `sys_district` VALUES ('1143', '127', '浔阳区', '0');
INSERT INTO `sys_district` VALUES ('1144', '127', '九江县', '0');
INSERT INTO `sys_district` VALUES ('1145', '127', '武宁县', '0');
INSERT INTO `sys_district` VALUES ('1146', '127', '修水县', '0');
INSERT INTO `sys_district` VALUES ('1147', '127', '永修县', '0');
INSERT INTO `sys_district` VALUES ('1148', '127', '德安县', '0');
INSERT INTO `sys_district` VALUES ('1149', '127', '星子县', '0');
INSERT INTO `sys_district` VALUES ('1150', '127', '都昌县', '0');
INSERT INTO `sys_district` VALUES ('1151', '127', '湖口县', '0');
INSERT INTO `sys_district` VALUES ('1152', '127', '彭泽县', '0');
INSERT INTO `sys_district` VALUES ('1153', '127', '瑞昌市', '0');
INSERT INTO `sys_district` VALUES ('1154', '128', '渝水区', '0');
INSERT INTO `sys_district` VALUES ('1155', '128', '分宜县', '0');
INSERT INTO `sys_district` VALUES ('1156', '129', '月湖区', '0');
INSERT INTO `sys_district` VALUES ('1157', '129', '余江县', '0');
INSERT INTO `sys_district` VALUES ('1158', '129', '贵溪市', '0');
INSERT INTO `sys_district` VALUES ('1159', '130', '章贡区', '0');
INSERT INTO `sys_district` VALUES ('1160', '130', '赣县', '0');
INSERT INTO `sys_district` VALUES ('1161', '130', '信丰县', '0');
INSERT INTO `sys_district` VALUES ('1162', '130', '大余县', '0');
INSERT INTO `sys_district` VALUES ('1163', '130', '上犹县', '0');
INSERT INTO `sys_district` VALUES ('1164', '130', '崇义县', '0');
INSERT INTO `sys_district` VALUES ('1165', '130', '安远县', '0');
INSERT INTO `sys_district` VALUES ('1166', '130', '龙南县', '0');
INSERT INTO `sys_district` VALUES ('1167', '130', '定南县', '0');
INSERT INTO `sys_district` VALUES ('1168', '130', '全南县', '0');
INSERT INTO `sys_district` VALUES ('1169', '130', '宁都县', '0');
INSERT INTO `sys_district` VALUES ('1170', '130', '于都县', '0');
INSERT INTO `sys_district` VALUES ('1171', '130', '兴国县', '0');
INSERT INTO `sys_district` VALUES ('1172', '130', '会昌县', '0');
INSERT INTO `sys_district` VALUES ('1173', '130', '寻乌县', '0');
INSERT INTO `sys_district` VALUES ('1174', '130', '石城县', '0');
INSERT INTO `sys_district` VALUES ('1175', '130', '瑞金市', '0');
INSERT INTO `sys_district` VALUES ('1176', '130', '南康市', '0');
INSERT INTO `sys_district` VALUES ('1177', '131', '吉州区', '0');
INSERT INTO `sys_district` VALUES ('1178', '131', '青原区', '0');
INSERT INTO `sys_district` VALUES ('1179', '131', '吉安县', '0');
INSERT INTO `sys_district` VALUES ('1180', '131', '吉水县', '0');
INSERT INTO `sys_district` VALUES ('1181', '131', '峡江县', '0');
INSERT INTO `sys_district` VALUES ('1182', '131', '新干县', '0');
INSERT INTO `sys_district` VALUES ('1183', '131', '永丰县', '0');
INSERT INTO `sys_district` VALUES ('1184', '131', '泰和县', '0');
INSERT INTO `sys_district` VALUES ('1185', '131', '遂川县', '0');
INSERT INTO `sys_district` VALUES ('1186', '131', '万安县', '0');
INSERT INTO `sys_district` VALUES ('1187', '131', '安福县', '0');
INSERT INTO `sys_district` VALUES ('1188', '131', '永新县', '0');
INSERT INTO `sys_district` VALUES ('1189', '131', '井冈山市', '0');
INSERT INTO `sys_district` VALUES ('1190', '132', '袁州区', '0');
INSERT INTO `sys_district` VALUES ('1191', '132', '奉新县', '0');
INSERT INTO `sys_district` VALUES ('1192', '132', '万载县', '0');
INSERT INTO `sys_district` VALUES ('1193', '132', '上高县', '0');
INSERT INTO `sys_district` VALUES ('1194', '132', '宜丰县', '0');
INSERT INTO `sys_district` VALUES ('1195', '132', '靖安县', '0');
INSERT INTO `sys_district` VALUES ('1196', '132', '铜鼓县', '0');
INSERT INTO `sys_district` VALUES ('1197', '132', '丰城市', '0');
INSERT INTO `sys_district` VALUES ('1198', '132', '樟树市', '0');
INSERT INTO `sys_district` VALUES ('1199', '132', '高安市', '0');
INSERT INTO `sys_district` VALUES ('1200', '133', '临川区', '0');
INSERT INTO `sys_district` VALUES ('1201', '133', '南城县', '0');
INSERT INTO `sys_district` VALUES ('1202', '133', '黎川县', '0');
INSERT INTO `sys_district` VALUES ('1203', '133', '南丰县', '0');
INSERT INTO `sys_district` VALUES ('1204', '133', '崇仁县', '0');
INSERT INTO `sys_district` VALUES ('1205', '133', '乐安县', '0');
INSERT INTO `sys_district` VALUES ('1206', '133', '宜黄县', '0');
INSERT INTO `sys_district` VALUES ('1207', '133', '金溪县', '0');
INSERT INTO `sys_district` VALUES ('1208', '133', '资溪县', '0');
INSERT INTO `sys_district` VALUES ('1209', '133', '东乡县', '0');
INSERT INTO `sys_district` VALUES ('1210', '133', '广昌县', '0');
INSERT INTO `sys_district` VALUES ('1211', '134', '信州区', '0');
INSERT INTO `sys_district` VALUES ('1212', '134', '上饶县', '0');
INSERT INTO `sys_district` VALUES ('1213', '134', '广丰县', '0');
INSERT INTO `sys_district` VALUES ('1214', '134', '玉山县', '0');
INSERT INTO `sys_district` VALUES ('1215', '134', '铅山县', '0');
INSERT INTO `sys_district` VALUES ('1216', '134', '横峰县', '0');
INSERT INTO `sys_district` VALUES ('1217', '134', '弋阳县', '0');
INSERT INTO `sys_district` VALUES ('1218', '134', '余干县', '0');
INSERT INTO `sys_district` VALUES ('1219', '134', '鄱阳县', '0');
INSERT INTO `sys_district` VALUES ('1220', '134', '万年县', '0');
INSERT INTO `sys_district` VALUES ('1221', '134', '婺源县', '0');
INSERT INTO `sys_district` VALUES ('1222', '134', '德兴市', '0');
INSERT INTO `sys_district` VALUES ('1223', '135', '历下区', '0');
INSERT INTO `sys_district` VALUES ('1224', '135', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1225', '135', '槐荫区', '0');
INSERT INTO `sys_district` VALUES ('1226', '135', '天桥区', '0');
INSERT INTO `sys_district` VALUES ('1227', '135', '历城区', '0');
INSERT INTO `sys_district` VALUES ('1228', '135', '长清区', '0');
INSERT INTO `sys_district` VALUES ('1229', '135', '平阴县', '0');
INSERT INTO `sys_district` VALUES ('1230', '135', '济阳县', '0');
INSERT INTO `sys_district` VALUES ('1231', '135', '商河县', '0');
INSERT INTO `sys_district` VALUES ('1232', '135', '章丘市', '0');
INSERT INTO `sys_district` VALUES ('1233', '136', '市南区', '0');
INSERT INTO `sys_district` VALUES ('1234', '136', '市北区', '0');
INSERT INTO `sys_district` VALUES ('1235', '136', '四方区', '0');
INSERT INTO `sys_district` VALUES ('1236', '136', '黄岛区', '0');
INSERT INTO `sys_district` VALUES ('1237', '136', '崂山区', '0');
INSERT INTO `sys_district` VALUES ('1238', '136', '李沧区', '0');
INSERT INTO `sys_district` VALUES ('1239', '136', '城阳区', '0');
INSERT INTO `sys_district` VALUES ('1240', '136', '胶州市', '0');
INSERT INTO `sys_district` VALUES ('1241', '136', '即墨市', '0');
INSERT INTO `sys_district` VALUES ('1242', '136', '平度市', '0');
INSERT INTO `sys_district` VALUES ('1243', '136', '胶南市', '0');
INSERT INTO `sys_district` VALUES ('1244', '136', '莱西市', '0');
INSERT INTO `sys_district` VALUES ('1245', '137', '淄川区', '0');
INSERT INTO `sys_district` VALUES ('1246', '137', '张店区', '0');
INSERT INTO `sys_district` VALUES ('1247', '137', '博山区', '0');
INSERT INTO `sys_district` VALUES ('1248', '137', '临淄区', '0');
INSERT INTO `sys_district` VALUES ('1249', '137', '周村区', '0');
INSERT INTO `sys_district` VALUES ('1250', '137', '桓台县', '0');
INSERT INTO `sys_district` VALUES ('1251', '137', '高青县', '0');
INSERT INTO `sys_district` VALUES ('1252', '137', '沂源县', '0');
INSERT INTO `sys_district` VALUES ('1253', '138', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1254', '138', '薛城区', '0');
INSERT INTO `sys_district` VALUES ('1255', '138', '峄城区', '0');
INSERT INTO `sys_district` VALUES ('1256', '138', '台儿庄区', '0');
INSERT INTO `sys_district` VALUES ('1257', '138', '山亭区', '0');
INSERT INTO `sys_district` VALUES ('1258', '138', '滕州市', '0');
INSERT INTO `sys_district` VALUES ('1259', '139', '东营区', '0');
INSERT INTO `sys_district` VALUES ('1260', '139', '河口区', '0');
INSERT INTO `sys_district` VALUES ('1261', '139', '垦利县', '0');
INSERT INTO `sys_district` VALUES ('1262', '139', '利津县', '0');
INSERT INTO `sys_district` VALUES ('1263', '139', '广饶县', '0');
INSERT INTO `sys_district` VALUES ('1264', '140', '芝罘区', '0');
INSERT INTO `sys_district` VALUES ('1265', '140', '福山区', '0');
INSERT INTO `sys_district` VALUES ('1266', '140', '牟平区', '0');
INSERT INTO `sys_district` VALUES ('1267', '140', '莱山区', '0');
INSERT INTO `sys_district` VALUES ('1268', '140', '长岛县', '0');
INSERT INTO `sys_district` VALUES ('1269', '140', '龙口市', '0');
INSERT INTO `sys_district` VALUES ('1270', '140', '莱阳市', '0');
INSERT INTO `sys_district` VALUES ('1271', '140', '莱州市', '0');
INSERT INTO `sys_district` VALUES ('1272', '140', '蓬莱市', '0');
INSERT INTO `sys_district` VALUES ('1273', '140', '招远市', '0');
INSERT INTO `sys_district` VALUES ('1274', '140', '栖霞市', '0');
INSERT INTO `sys_district` VALUES ('1275', '140', '海阳市', '0');
INSERT INTO `sys_district` VALUES ('1276', '141', '潍城区', '0');
INSERT INTO `sys_district` VALUES ('1277', '141', '寒亭区', '0');
INSERT INTO `sys_district` VALUES ('1278', '141', '坊子区', '0');
INSERT INTO `sys_district` VALUES ('1279', '141', '奎文区', '0');
INSERT INTO `sys_district` VALUES ('1280', '141', '临朐县', '0');
INSERT INTO `sys_district` VALUES ('1281', '141', '昌乐县', '0');
INSERT INTO `sys_district` VALUES ('1282', '141', '青州市', '0');
INSERT INTO `sys_district` VALUES ('1283', '141', '诸城市', '0');
INSERT INTO `sys_district` VALUES ('1284', '141', '寿光市', '0');
INSERT INTO `sys_district` VALUES ('1285', '141', '安丘市', '0');
INSERT INTO `sys_district` VALUES ('1286', '141', '高密市', '0');
INSERT INTO `sys_district` VALUES ('1287', '141', '昌邑市', '0');
INSERT INTO `sys_district` VALUES ('1288', '142', '市中区', '0');
INSERT INTO `sys_district` VALUES ('1289', '142', '任城区', '0');
INSERT INTO `sys_district` VALUES ('1290', '142', '微山县', '0');
INSERT INTO `sys_district` VALUES ('1291', '142', '鱼台县', '0');
INSERT INTO `sys_district` VALUES ('1292', '142', '金乡县', '0');
INSERT INTO `sys_district` VALUES ('1293', '142', '嘉祥县', '0');
INSERT INTO `sys_district` VALUES ('1294', '142', '汶上县', '0');
INSERT INTO `sys_district` VALUES ('1295', '142', '泗水县', '0');
INSERT INTO `sys_district` VALUES ('1296', '142', '梁山县', '0');
INSERT INTO `sys_district` VALUES ('1297', '142', '曲阜市', '0');
INSERT INTO `sys_district` VALUES ('1298', '142', '兖州市', '0');
INSERT INTO `sys_district` VALUES ('1299', '142', '邹城市', '0');
INSERT INTO `sys_district` VALUES ('1300', '143', '泰山区', '0');
INSERT INTO `sys_district` VALUES ('1301', '143', '岱岳区', '0');
INSERT INTO `sys_district` VALUES ('1302', '143', '宁阳县', '0');
INSERT INTO `sys_district` VALUES ('1303', '143', '东平县', '0');
INSERT INTO `sys_district` VALUES ('1304', '143', '新泰市', '0');
INSERT INTO `sys_district` VALUES ('1305', '143', '肥城市', '0');
INSERT INTO `sys_district` VALUES ('1306', '144', '环翠区', '0');
INSERT INTO `sys_district` VALUES ('1307', '144', '文登市', '0');
INSERT INTO `sys_district` VALUES ('1308', '144', '荣成市', '0');
INSERT INTO `sys_district` VALUES ('1309', '144', '乳山市', '0');
INSERT INTO `sys_district` VALUES ('1310', '145', '东港区', '0');
INSERT INTO `sys_district` VALUES ('1311', '145', '岚山区', '0');
INSERT INTO `sys_district` VALUES ('1312', '145', '五莲县', '0');
INSERT INTO `sys_district` VALUES ('1313', '145', '莒县', '0');
INSERT INTO `sys_district` VALUES ('1314', '146', '莱城区', '0');
INSERT INTO `sys_district` VALUES ('1315', '146', '钢城区', '0');
INSERT INTO `sys_district` VALUES ('1316', '147', '兰山区', '0');
INSERT INTO `sys_district` VALUES ('1317', '147', '罗庄区', '0');
INSERT INTO `sys_district` VALUES ('1318', '147', '河东区', '0');
INSERT INTO `sys_district` VALUES ('1319', '147', '沂南县', '0');
INSERT INTO `sys_district` VALUES ('1320', '147', '郯城县', '0');
INSERT INTO `sys_district` VALUES ('1321', '147', '沂水县', '0');
INSERT INTO `sys_district` VALUES ('1322', '147', '苍山县', '0');
INSERT INTO `sys_district` VALUES ('1323', '147', '费县', '0');
INSERT INTO `sys_district` VALUES ('1324', '147', '平邑县', '0');
INSERT INTO `sys_district` VALUES ('1325', '147', '莒南县', '0');
INSERT INTO `sys_district` VALUES ('1326', '147', '蒙阴县', '0');
INSERT INTO `sys_district` VALUES ('1327', '147', '临沭县', '0');
INSERT INTO `sys_district` VALUES ('1328', '148', '德城区', '0');
INSERT INTO `sys_district` VALUES ('1329', '148', '陵县', '0');
INSERT INTO `sys_district` VALUES ('1330', '148', '宁津县', '0');
INSERT INTO `sys_district` VALUES ('1331', '148', '庆云县', '0');
INSERT INTO `sys_district` VALUES ('1332', '148', '临邑县', '0');
INSERT INTO `sys_district` VALUES ('1333', '148', '齐河县', '0');
INSERT INTO `sys_district` VALUES ('1334', '148', '平原县', '0');
INSERT INTO `sys_district` VALUES ('1335', '148', '夏津县', '0');
INSERT INTO `sys_district` VALUES ('1336', '148', '武城县', '0');
INSERT INTO `sys_district` VALUES ('1337', '148', '乐陵市', '0');
INSERT INTO `sys_district` VALUES ('1338', '148', '禹城市', '0');
INSERT INTO `sys_district` VALUES ('1339', '149', '东昌府区', '0');
INSERT INTO `sys_district` VALUES ('1340', '149', '阳谷县', '0');
INSERT INTO `sys_district` VALUES ('1341', '149', '莘县', '0');
INSERT INTO `sys_district` VALUES ('1342', '149', '茌平县', '0');
INSERT INTO `sys_district` VALUES ('1343', '149', '东阿县', '0');
INSERT INTO `sys_district` VALUES ('1344', '149', '冠县', '0');
INSERT INTO `sys_district` VALUES ('1345', '149', '高唐县', '0');
INSERT INTO `sys_district` VALUES ('1346', '149', '临清市', '0');
INSERT INTO `sys_district` VALUES ('1347', '150', '滨城区', '0');
INSERT INTO `sys_district` VALUES ('1348', '150', '惠民县', '0');
INSERT INTO `sys_district` VALUES ('1349', '150', '阳信县', '0');
INSERT INTO `sys_district` VALUES ('1350', '150', '无棣县', '0');
INSERT INTO `sys_district` VALUES ('1351', '150', '沾化县', '0');
INSERT INTO `sys_district` VALUES ('1352', '150', '博兴县', '0');
INSERT INTO `sys_district` VALUES ('1353', '150', '邹平县', '0');
INSERT INTO `sys_district` VALUES ('1354', '151', '牡丹区', '0');
INSERT INTO `sys_district` VALUES ('1355', '151', '曹县', '0');
INSERT INTO `sys_district` VALUES ('1356', '151', '单县', '0');
INSERT INTO `sys_district` VALUES ('1357', '151', '成武县', '0');
INSERT INTO `sys_district` VALUES ('1358', '151', '巨野县', '0');
INSERT INTO `sys_district` VALUES ('1359', '151', '郓城县', '0');
INSERT INTO `sys_district` VALUES ('1360', '151', '鄄城县', '0');
INSERT INTO `sys_district` VALUES ('1361', '151', '定陶县', '0');
INSERT INTO `sys_district` VALUES ('1362', '151', '东明县', '0');
INSERT INTO `sys_district` VALUES ('1363', '152', '中原区', '0');
INSERT INTO `sys_district` VALUES ('1364', '152', '二七区', '0');
INSERT INTO `sys_district` VALUES ('1365', '152', '管城回族区', '0');
INSERT INTO `sys_district` VALUES ('1366', '152', '金水区', '0');
INSERT INTO `sys_district` VALUES ('1367', '152', '上街区', '0');
INSERT INTO `sys_district` VALUES ('1368', '152', '惠济区', '0');
INSERT INTO `sys_district` VALUES ('1369', '152', '中牟县', '0');
INSERT INTO `sys_district` VALUES ('1370', '152', '巩义市', '0');
INSERT INTO `sys_district` VALUES ('1371', '152', '荥阳市', '0');
INSERT INTO `sys_district` VALUES ('1372', '152', '新密市', '0');
INSERT INTO `sys_district` VALUES ('1373', '152', '新郑市', '0');
INSERT INTO `sys_district` VALUES ('1374', '152', '登封市', '0');
INSERT INTO `sys_district` VALUES ('1375', '153', '龙亭区', '0');
INSERT INTO `sys_district` VALUES ('1376', '153', '顺河回族区', '0');
INSERT INTO `sys_district` VALUES ('1377', '153', '鼓楼区', '0');
INSERT INTO `sys_district` VALUES ('1378', '153', '南关区', '0');
INSERT INTO `sys_district` VALUES ('1379', '153', '郊区', '0');
INSERT INTO `sys_district` VALUES ('1380', '153', '杞县', '0');
INSERT INTO `sys_district` VALUES ('1381', '153', '通许县', '0');
INSERT INTO `sys_district` VALUES ('1382', '153', '尉氏县', '0');
INSERT INTO `sys_district` VALUES ('1383', '153', '开封县', '0');
INSERT INTO `sys_district` VALUES ('1384', '153', '兰考县', '0');
INSERT INTO `sys_district` VALUES ('1385', '154', '老城区', '0');
INSERT INTO `sys_district` VALUES ('1386', '154', '西工区', '0');
INSERT INTO `sys_district` VALUES ('1387', '154', '廛河回族区', '0');
INSERT INTO `sys_district` VALUES ('1388', '154', '涧西区', '0');
INSERT INTO `sys_district` VALUES ('1389', '154', '吉利区', '0');
INSERT INTO `sys_district` VALUES ('1390', '154', '洛龙区', '0');
INSERT INTO `sys_district` VALUES ('1391', '154', '孟津县', '0');
INSERT INTO `sys_district` VALUES ('1392', '154', '新安县', '0');
INSERT INTO `sys_district` VALUES ('1393', '154', '栾川县', '0');
INSERT INTO `sys_district` VALUES ('1394', '154', '嵩县', '0');
INSERT INTO `sys_district` VALUES ('1395', '154', '汝阳县', '0');
INSERT INTO `sys_district` VALUES ('1396', '154', '宜阳县', '0');
INSERT INTO `sys_district` VALUES ('1397', '154', '洛宁县', '0');
INSERT INTO `sys_district` VALUES ('1398', '154', '伊川县', '0');
INSERT INTO `sys_district` VALUES ('1399', '154', '偃师市', '0');
INSERT INTO `sys_district` VALUES ('1400', '155', '新华区', '0');
INSERT INTO `sys_district` VALUES ('1401', '155', '卫东区', '0');
INSERT INTO `sys_district` VALUES ('1402', '155', '石龙区', '0');
INSERT INTO `sys_district` VALUES ('1403', '155', '湛河区', '0');
INSERT INTO `sys_district` VALUES ('1404', '155', '宝丰县', '0');
INSERT INTO `sys_district` VALUES ('1405', '155', '叶县', '0');
INSERT INTO `sys_district` VALUES ('1406', '155', '鲁山县', '0');
INSERT INTO `sys_district` VALUES ('1407', '155', '郏县', '0');
INSERT INTO `sys_district` VALUES ('1408', '155', '舞钢市', '0');
INSERT INTO `sys_district` VALUES ('1409', '155', '汝州市', '0');
INSERT INTO `sys_district` VALUES ('1410', '156', '文峰区', '0');
INSERT INTO `sys_district` VALUES ('1411', '156', '北关区', '0');
INSERT INTO `sys_district` VALUES ('1412', '156', '殷都区', '0');
INSERT INTO `sys_district` VALUES ('1413', '156', '龙安区', '0');
INSERT INTO `sys_district` VALUES ('1414', '156', '安阳县', '0');
INSERT INTO `sys_district` VALUES ('1415', '156', '汤阴县', '0');
INSERT INTO `sys_district` VALUES ('1416', '156', '滑县', '0');
INSERT INTO `sys_district` VALUES ('1417', '156', '内黄县', '0');
INSERT INTO `sys_district` VALUES ('1418', '156', '林州市', '0');
INSERT INTO `sys_district` VALUES ('1419', '157', '鹤山区', '0');
INSERT INTO `sys_district` VALUES ('1420', '157', '山城区', '0');
INSERT INTO `sys_district` VALUES ('1421', '157', '淇滨区', '0');
INSERT INTO `sys_district` VALUES ('1422', '157', '浚县', '0');
INSERT INTO `sys_district` VALUES ('1423', '157', '淇县', '0');
INSERT INTO `sys_district` VALUES ('1424', '158', '红旗区', '0');
INSERT INTO `sys_district` VALUES ('1425', '158', '卫滨区', '0');
INSERT INTO `sys_district` VALUES ('1426', '158', '凤泉区', '0');
INSERT INTO `sys_district` VALUES ('1427', '158', '牧野区', '0');
INSERT INTO `sys_district` VALUES ('1428', '158', '新乡县', '0');
INSERT INTO `sys_district` VALUES ('1429', '158', '获嘉县', '0');
INSERT INTO `sys_district` VALUES ('1430', '158', '原阳县', '0');
INSERT INTO `sys_district` VALUES ('1431', '158', '延津县', '0');
INSERT INTO `sys_district` VALUES ('1432', '158', '封丘县', '0');
INSERT INTO `sys_district` VALUES ('1433', '158', '长垣县', '0');
INSERT INTO `sys_district` VALUES ('1434', '158', '卫辉市', '0');
INSERT INTO `sys_district` VALUES ('1435', '158', '辉县市', '0');
INSERT INTO `sys_district` VALUES ('1436', '159', '解放区', '0');
INSERT INTO `sys_district` VALUES ('1437', '159', '中站区', '0');
INSERT INTO `sys_district` VALUES ('1438', '159', '马村区', '0');
INSERT INTO `sys_district` VALUES ('1439', '159', '山阳区', '0');
INSERT INTO `sys_district` VALUES ('1440', '159', '修武县', '0');
INSERT INTO `sys_district` VALUES ('1441', '159', '博爱县', '0');
INSERT INTO `sys_district` VALUES ('1442', '159', '武陟县', '0');
INSERT INTO `sys_district` VALUES ('1443', '159', '温县', '0');
INSERT INTO `sys_district` VALUES ('1444', '159', '济源市', '0');
INSERT INTO `sys_district` VALUES ('1445', '159', '沁阳市', '0');
INSERT INTO `sys_district` VALUES ('1446', '159', '孟州市', '0');
INSERT INTO `sys_district` VALUES ('1447', '160', '华龙区', '0');
INSERT INTO `sys_district` VALUES ('1448', '160', '清丰县', '0');
INSERT INTO `sys_district` VALUES ('1449', '160', '南乐县', '0');
INSERT INTO `sys_district` VALUES ('1450', '160', '范县', '0');
INSERT INTO `sys_district` VALUES ('1451', '160', '台前县', '0');
INSERT INTO `sys_district` VALUES ('1452', '160', '濮阳县', '0');
INSERT INTO `sys_district` VALUES ('1453', '161', '魏都区', '0');
INSERT INTO `sys_district` VALUES ('1454', '161', '许昌县', '0');
INSERT INTO `sys_district` VALUES ('1455', '161', '鄢陵县', '0');
INSERT INTO `sys_district` VALUES ('1456', '161', '襄城县', '0');
INSERT INTO `sys_district` VALUES ('1457', '161', '禹州市', '0');
INSERT INTO `sys_district` VALUES ('1458', '161', '长葛市', '0');
INSERT INTO `sys_district` VALUES ('1459', '162', '源汇区', '0');
INSERT INTO `sys_district` VALUES ('1460', '162', '郾城区', '0');
INSERT INTO `sys_district` VALUES ('1461', '162', '召陵区', '0');
INSERT INTO `sys_district` VALUES ('1462', '162', '舞阳县', '0');
INSERT INTO `sys_district` VALUES ('1463', '162', '临颍县', '0');
INSERT INTO `sys_district` VALUES ('1464', '163', '市辖区', '0');
INSERT INTO `sys_district` VALUES ('1465', '163', '湖滨区', '0');
INSERT INTO `sys_district` VALUES ('1466', '163', '渑池县', '0');
INSERT INTO `sys_district` VALUES ('1467', '163', '陕县', '0');
INSERT INTO `sys_district` VALUES ('1468', '163', '卢氏县', '0');
INSERT INTO `sys_district` VALUES ('1469', '163', '义马市', '0');
INSERT INTO `sys_district` VALUES ('1470', '163', '灵宝市', '0');
INSERT INTO `sys_district` VALUES ('1471', '164', '宛城区', '0');
INSERT INTO `sys_district` VALUES ('1472', '164', '卧龙区', '0');
INSERT INTO `sys_district` VALUES ('1473', '164', '南召县', '0');
INSERT INTO `sys_district` VALUES ('1474', '164', '方城县', '0');
INSERT INTO `sys_district` VALUES ('1475', '164', '西峡县', '0');
INSERT INTO `sys_district` VALUES ('1476', '164', '镇平县', '0');
INSERT INTO `sys_district` VALUES ('1477', '164', '内乡县', '0');
INSERT INTO `sys_district` VALUES ('1478', '164', '淅川县', '0');
INSERT INTO `sys_district` VALUES ('1479', '164', '社旗县', '0');
INSERT INTO `sys_district` VALUES ('1480', '164', '唐河县', '0');
INSERT INTO `sys_district` VALUES ('1481', '164', '新野县', '0');
INSERT INTO `sys_district` VALUES ('1482', '164', '桐柏县', '0');
INSERT INTO `sys_district` VALUES ('1483', '164', '邓州市', '0');
INSERT INTO `sys_district` VALUES ('1484', '165', '梁园区', '0');
INSERT INTO `sys_district` VALUES ('1485', '165', '睢阳区', '0');
INSERT INTO `sys_district` VALUES ('1486', '165', '民权县', '0');
INSERT INTO `sys_district` VALUES ('1487', '165', '睢县', '0');
INSERT INTO `sys_district` VALUES ('1488', '165', '宁陵县', '0');
INSERT INTO `sys_district` VALUES ('1489', '165', '柘城县', '0');
INSERT INTO `sys_district` VALUES ('1490', '165', '虞城县', '0');
INSERT INTO `sys_district` VALUES ('1491', '165', '夏邑县', '0');
INSERT INTO `sys_district` VALUES ('1492', '165', '永城市', '0');
INSERT INTO `sys_district` VALUES ('1493', '166', '浉河区', '0');
INSERT INTO `sys_district` VALUES ('1494', '166', '平桥区', '0');
INSERT INTO `sys_district` VALUES ('1495', '166', '罗山县', '0');
INSERT INTO `sys_district` VALUES ('1496', '166', '光山县', '0');
INSERT INTO `sys_district` VALUES ('1497', '166', '新县', '0');
INSERT INTO `sys_district` VALUES ('1498', '166', '商城县', '0');
INSERT INTO `sys_district` VALUES ('1499', '166', '固始县', '0');
INSERT INTO `sys_district` VALUES ('1500', '166', '潢川县', '0');
INSERT INTO `sys_district` VALUES ('1501', '166', '淮滨县', '0');
INSERT INTO `sys_district` VALUES ('1502', '166', '息县', '0');
INSERT INTO `sys_district` VALUES ('1503', '167', '川汇区', '0');
INSERT INTO `sys_district` VALUES ('1504', '167', '扶沟县', '0');
INSERT INTO `sys_district` VALUES ('1505', '167', '西华县', '0');
INSERT INTO `sys_district` VALUES ('1506', '167', '商水县', '0');
INSERT INTO `sys_district` VALUES ('1507', '167', '沈丘县', '0');
INSERT INTO `sys_district` VALUES ('1508', '167', '郸城县', '0');
INSERT INTO `sys_district` VALUES ('1509', '167', '淮阳县', '0');
INSERT INTO `sys_district` VALUES ('1510', '167', '太康县', '0');
INSERT INTO `sys_district` VALUES ('1511', '167', '鹿邑县', '0');
INSERT INTO `sys_district` VALUES ('1512', '167', '项城市', '0');
INSERT INTO `sys_district` VALUES ('1513', '168', '驿城区', '0');
INSERT INTO `sys_district` VALUES ('1514', '168', '西平县', '0');
INSERT INTO `sys_district` VALUES ('1515', '168', '上蔡县', '0');
INSERT INTO `sys_district` VALUES ('1516', '168', '平舆县', '0');
INSERT INTO `sys_district` VALUES ('1517', '168', '正阳县', '0');
INSERT INTO `sys_district` VALUES ('1518', '168', '确山县', '0');
INSERT INTO `sys_district` VALUES ('1519', '168', '泌阳县', '0');
INSERT INTO `sys_district` VALUES ('1520', '168', '汝南县', '0');
INSERT INTO `sys_district` VALUES ('1521', '168', '遂平县', '0');
INSERT INTO `sys_district` VALUES ('1522', '168', '新蔡县', '0');
INSERT INTO `sys_district` VALUES ('1523', '169', '江岸区', '0');
INSERT INTO `sys_district` VALUES ('1524', '169', '江汉区', '0');
INSERT INTO `sys_district` VALUES ('1525', '169', '硚口区', '0');
INSERT INTO `sys_district` VALUES ('1526', '169', '汉阳区', '0');
INSERT INTO `sys_district` VALUES ('1527', '169', '武昌区', '0');
INSERT INTO `sys_district` VALUES ('1528', '169', '青山区', '0');
INSERT INTO `sys_district` VALUES ('1529', '169', '洪山区', '0');
INSERT INTO `sys_district` VALUES ('1530', '169', '东西湖区', '0');
INSERT INTO `sys_district` VALUES ('1531', '169', '汉南区', '0');
INSERT INTO `sys_district` VALUES ('1532', '169', '蔡甸区', '0');
INSERT INTO `sys_district` VALUES ('1533', '169', '江夏区', '0');
INSERT INTO `sys_district` VALUES ('1534', '169', '黄陂区', '0');
INSERT INTO `sys_district` VALUES ('1535', '169', '新洲区', '0');
INSERT INTO `sys_district` VALUES ('1536', '170', '黄石港区', '0');
INSERT INTO `sys_district` VALUES ('1537', '170', '西塞山区', '0');
INSERT INTO `sys_district` VALUES ('1538', '170', '下陆区', '0');
INSERT INTO `sys_district` VALUES ('1539', '170', '铁山区', '0');
INSERT INTO `sys_district` VALUES ('1540', '170', '阳新县', '0');
INSERT INTO `sys_district` VALUES ('1541', '170', '大冶市', '0');
INSERT INTO `sys_district` VALUES ('1542', '171', '茅箭区', '0');
INSERT INTO `sys_district` VALUES ('1543', '171', '张湾区', '0');
INSERT INTO `sys_district` VALUES ('1544', '171', '郧县', '0');
INSERT INTO `sys_district` VALUES ('1545', '171', '郧西县', '0');
INSERT INTO `sys_district` VALUES ('1546', '171', '竹山县', '0');
INSERT INTO `sys_district` VALUES ('1547', '171', '竹溪县', '0');
INSERT INTO `sys_district` VALUES ('1548', '171', '房县', '0');
INSERT INTO `sys_district` VALUES ('1549', '171', '丹江口市', '0');
INSERT INTO `sys_district` VALUES ('1550', '172', '西陵区', '0');
INSERT INTO `sys_district` VALUES ('1551', '172', '伍家岗区', '0');
INSERT INTO `sys_district` VALUES ('1552', '172', '点军区', '0');
INSERT INTO `sys_district` VALUES ('1553', '172', '猇亭区', '0');
INSERT INTO `sys_district` VALUES ('1554', '172', '夷陵区', '0');
INSERT INTO `sys_district` VALUES ('1555', '172', '远安县', '0');
INSERT INTO `sys_district` VALUES ('1556', '172', '兴山县', '0');
INSERT INTO `sys_district` VALUES ('1557', '172', '秭归县', '0');
INSERT INTO `sys_district` VALUES ('1558', '172', '长阳土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('1559', '172', '五峰土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('1560', '172', '宜都市', '0');
INSERT INTO `sys_district` VALUES ('1561', '172', '当阳市', '0');
INSERT INTO `sys_district` VALUES ('1562', '172', '枝江市', '0');
INSERT INTO `sys_district` VALUES ('1563', '173', '襄城区', '0');
INSERT INTO `sys_district` VALUES ('1564', '173', '樊城区', '0');
INSERT INTO `sys_district` VALUES ('1565', '173', '襄阳区', '0');
INSERT INTO `sys_district` VALUES ('1566', '173', '南漳县', '0');
INSERT INTO `sys_district` VALUES ('1567', '173', '谷城县', '0');
INSERT INTO `sys_district` VALUES ('1568', '173', '保康县', '0');
INSERT INTO `sys_district` VALUES ('1569', '173', '老河口市', '0');
INSERT INTO `sys_district` VALUES ('1570', '173', '枣阳市', '0');
INSERT INTO `sys_district` VALUES ('1571', '173', '宜城市', '0');
INSERT INTO `sys_district` VALUES ('1572', '174', '梁子湖区', '0');
INSERT INTO `sys_district` VALUES ('1573', '174', '华容区', '0');
INSERT INTO `sys_district` VALUES ('1574', '174', '鄂城区', '0');
INSERT INTO `sys_district` VALUES ('1575', '175', '东宝区', '0');
INSERT INTO `sys_district` VALUES ('1576', '175', '掇刀区', '0');
INSERT INTO `sys_district` VALUES ('1577', '175', '京山县', '0');
INSERT INTO `sys_district` VALUES ('1578', '175', '沙洋县', '0');
INSERT INTO `sys_district` VALUES ('1579', '175', '钟祥市', '0');
INSERT INTO `sys_district` VALUES ('1580', '176', '孝南区', '0');
INSERT INTO `sys_district` VALUES ('1581', '176', '孝昌县', '0');
INSERT INTO `sys_district` VALUES ('1582', '176', '大悟县', '0');
INSERT INTO `sys_district` VALUES ('1583', '176', '云梦县', '0');
INSERT INTO `sys_district` VALUES ('1584', '176', '应城市', '0');
INSERT INTO `sys_district` VALUES ('1585', '176', '安陆市', '0');
INSERT INTO `sys_district` VALUES ('1586', '176', '汉川市', '0');
INSERT INTO `sys_district` VALUES ('1587', '177', '沙市区', '0');
INSERT INTO `sys_district` VALUES ('1588', '177', '荆州区', '0');
INSERT INTO `sys_district` VALUES ('1589', '177', '公安县', '0');
INSERT INTO `sys_district` VALUES ('1590', '177', '监利县', '0');
INSERT INTO `sys_district` VALUES ('1591', '177', '江陵县', '0');
INSERT INTO `sys_district` VALUES ('1592', '177', '石首市', '0');
INSERT INTO `sys_district` VALUES ('1593', '177', '洪湖市', '0');
INSERT INTO `sys_district` VALUES ('1594', '177', '松滋市', '0');
INSERT INTO `sys_district` VALUES ('1595', '178', '黄州区', '0');
INSERT INTO `sys_district` VALUES ('1596', '178', '团风县', '0');
INSERT INTO `sys_district` VALUES ('1597', '178', '红安县', '0');
INSERT INTO `sys_district` VALUES ('1598', '178', '罗田县', '0');
INSERT INTO `sys_district` VALUES ('1599', '178', '英山县', '0');
INSERT INTO `sys_district` VALUES ('1600', '178', '浠水县', '0');
INSERT INTO `sys_district` VALUES ('1601', '178', '蕲春县', '0');
INSERT INTO `sys_district` VALUES ('1602', '178', '黄梅县', '0');
INSERT INTO `sys_district` VALUES ('1603', '178', '麻城市', '0');
INSERT INTO `sys_district` VALUES ('1604', '178', '武穴市', '0');
INSERT INTO `sys_district` VALUES ('1605', '179', '咸安区', '0');
INSERT INTO `sys_district` VALUES ('1606', '179', '嘉鱼县', '0');
INSERT INTO `sys_district` VALUES ('1607', '179', '通城县', '0');
INSERT INTO `sys_district` VALUES ('1608', '179', '崇阳县', '0');
INSERT INTO `sys_district` VALUES ('1609', '179', '通山县', '0');
INSERT INTO `sys_district` VALUES ('1610', '179', '赤壁市', '0');
INSERT INTO `sys_district` VALUES ('1611', '180', '曾都区', '0');
INSERT INTO `sys_district` VALUES ('1612', '180', '广水市', '0');
INSERT INTO `sys_district` VALUES ('1613', '181', '恩施市', '0');
INSERT INTO `sys_district` VALUES ('1614', '181', '利川市', '0');
INSERT INTO `sys_district` VALUES ('1615', '181', '建始县', '0');
INSERT INTO `sys_district` VALUES ('1616', '181', '巴东县', '0');
INSERT INTO `sys_district` VALUES ('1617', '181', '宣恩县', '0');
INSERT INTO `sys_district` VALUES ('1618', '181', '咸丰县', '0');
INSERT INTO `sys_district` VALUES ('1619', '181', '来凤县', '0');
INSERT INTO `sys_district` VALUES ('1620', '181', '鹤峰县', '0');
INSERT INTO `sys_district` VALUES ('1621', '182', '仙桃市', '0');
INSERT INTO `sys_district` VALUES ('1622', '182', '潜江市', '0');
INSERT INTO `sys_district` VALUES ('1623', '182', '天门市', '0');
INSERT INTO `sys_district` VALUES ('1624', '182', '神农架林区', '0');
INSERT INTO `sys_district` VALUES ('1625', '183', '芙蓉区', '0');
INSERT INTO `sys_district` VALUES ('1626', '183', '天心区', '0');
INSERT INTO `sys_district` VALUES ('1627', '183', '岳麓区', '0');
INSERT INTO `sys_district` VALUES ('1628', '183', '开福区', '0');
INSERT INTO `sys_district` VALUES ('1629', '183', '雨花区', '0');
INSERT INTO `sys_district` VALUES ('1630', '183', '长沙县', '0');
INSERT INTO `sys_district` VALUES ('1631', '183', '望城县', '0');
INSERT INTO `sys_district` VALUES ('1632', '183', '宁乡县', '0');
INSERT INTO `sys_district` VALUES ('1633', '183', '浏阳市', '0');
INSERT INTO `sys_district` VALUES ('1634', '184', '荷塘区', '0');
INSERT INTO `sys_district` VALUES ('1635', '184', '芦淞区', '0');
INSERT INTO `sys_district` VALUES ('1636', '184', '石峰区', '0');
INSERT INTO `sys_district` VALUES ('1637', '184', '天元区', '0');
INSERT INTO `sys_district` VALUES ('1638', '184', '株洲县', '0');
INSERT INTO `sys_district` VALUES ('1639', '184', '攸县', '0');
INSERT INTO `sys_district` VALUES ('1640', '184', '茶陵县', '0');
INSERT INTO `sys_district` VALUES ('1641', '184', '炎陵县', '0');
INSERT INTO `sys_district` VALUES ('1642', '184', '醴陵市', '0');
INSERT INTO `sys_district` VALUES ('1643', '185', '雨湖区', '0');
INSERT INTO `sys_district` VALUES ('1644', '185', '岳塘区', '0');
INSERT INTO `sys_district` VALUES ('1645', '185', '湘潭县', '0');
INSERT INTO `sys_district` VALUES ('1646', '185', '湘乡市', '0');
INSERT INTO `sys_district` VALUES ('1647', '185', '韶山市', '0');
INSERT INTO `sys_district` VALUES ('1648', '186', '珠晖区', '0');
INSERT INTO `sys_district` VALUES ('1649', '186', '雁峰区', '0');
INSERT INTO `sys_district` VALUES ('1650', '186', '石鼓区', '0');
INSERT INTO `sys_district` VALUES ('1651', '186', '蒸湘区', '0');
INSERT INTO `sys_district` VALUES ('1652', '186', '南岳区', '0');
INSERT INTO `sys_district` VALUES ('1653', '186', '衡阳县', '0');
INSERT INTO `sys_district` VALUES ('1654', '186', '衡南县', '0');
INSERT INTO `sys_district` VALUES ('1655', '186', '衡山县', '0');
INSERT INTO `sys_district` VALUES ('1656', '186', '衡东县', '0');
INSERT INTO `sys_district` VALUES ('1657', '186', '祁东县', '0');
INSERT INTO `sys_district` VALUES ('1658', '186', '耒阳市', '0');
INSERT INTO `sys_district` VALUES ('1659', '186', '常宁市', '0');
INSERT INTO `sys_district` VALUES ('1660', '187', '双清区', '0');
INSERT INTO `sys_district` VALUES ('1661', '187', '大祥区', '0');
INSERT INTO `sys_district` VALUES ('1662', '187', '北塔区', '0');
INSERT INTO `sys_district` VALUES ('1663', '187', '邵东县', '0');
INSERT INTO `sys_district` VALUES ('1664', '187', '新邵县', '0');
INSERT INTO `sys_district` VALUES ('1665', '187', '邵阳县', '0');
INSERT INTO `sys_district` VALUES ('1666', '187', '隆回县', '0');
INSERT INTO `sys_district` VALUES ('1667', '187', '洞口县', '0');
INSERT INTO `sys_district` VALUES ('1668', '187', '绥宁县', '0');
INSERT INTO `sys_district` VALUES ('1669', '187', '新宁县', '0');
INSERT INTO `sys_district` VALUES ('1670', '187', '城步苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1671', '187', '武冈市', '0');
INSERT INTO `sys_district` VALUES ('1672', '188', '岳阳楼区', '0');
INSERT INTO `sys_district` VALUES ('1673', '188', '云溪区', '0');
INSERT INTO `sys_district` VALUES ('1674', '188', '君山区', '0');
INSERT INTO `sys_district` VALUES ('1675', '188', '岳阳县', '0');
INSERT INTO `sys_district` VALUES ('1676', '188', '华容县', '0');
INSERT INTO `sys_district` VALUES ('1677', '188', '湘阴县', '0');
INSERT INTO `sys_district` VALUES ('1678', '188', '平江县', '0');
INSERT INTO `sys_district` VALUES ('1679', '188', '汨罗市', '0');
INSERT INTO `sys_district` VALUES ('1680', '188', '临湘市', '0');
INSERT INTO `sys_district` VALUES ('1681', '189', '武陵区', '0');
INSERT INTO `sys_district` VALUES ('1682', '189', '鼎城区', '0');
INSERT INTO `sys_district` VALUES ('1683', '189', '安乡县', '0');
INSERT INTO `sys_district` VALUES ('1684', '189', '汉寿县', '0');
INSERT INTO `sys_district` VALUES ('1685', '189', '澧县', '0');
INSERT INTO `sys_district` VALUES ('1686', '189', '临澧县', '0');
INSERT INTO `sys_district` VALUES ('1687', '189', '桃源县', '0');
INSERT INTO `sys_district` VALUES ('1688', '189', '石门县', '0');
INSERT INTO `sys_district` VALUES ('1689', '189', '津市市', '0');
INSERT INTO `sys_district` VALUES ('1690', '190', '永定区', '0');
INSERT INTO `sys_district` VALUES ('1691', '190', '武陵源区', '0');
INSERT INTO `sys_district` VALUES ('1692', '190', '慈利县', '0');
INSERT INTO `sys_district` VALUES ('1693', '190', '桑植县', '0');
INSERT INTO `sys_district` VALUES ('1694', '191', '资阳区', '0');
INSERT INTO `sys_district` VALUES ('1695', '191', '赫山区', '0');
INSERT INTO `sys_district` VALUES ('1696', '191', '南县', '0');
INSERT INTO `sys_district` VALUES ('1697', '191', '桃江县', '0');
INSERT INTO `sys_district` VALUES ('1698', '191', '安化县', '0');
INSERT INTO `sys_district` VALUES ('1699', '191', '沅江市', '0');
INSERT INTO `sys_district` VALUES ('1700', '192', '北湖区', '0');
INSERT INTO `sys_district` VALUES ('1701', '192', '苏仙区', '0');
INSERT INTO `sys_district` VALUES ('1702', '192', '桂阳县', '0');
INSERT INTO `sys_district` VALUES ('1703', '192', '宜章县', '0');
INSERT INTO `sys_district` VALUES ('1704', '192', '永兴县', '0');
INSERT INTO `sys_district` VALUES ('1705', '192', '嘉禾县', '0');
INSERT INTO `sys_district` VALUES ('1706', '192', '临武县', '0');
INSERT INTO `sys_district` VALUES ('1707', '192', '汝城县', '0');
INSERT INTO `sys_district` VALUES ('1708', '192', '桂东县', '0');
INSERT INTO `sys_district` VALUES ('1709', '192', '安仁县', '0');
INSERT INTO `sys_district` VALUES ('1710', '192', '资兴市', '0');
INSERT INTO `sys_district` VALUES ('1711', '193', '芝山区', '0');
INSERT INTO `sys_district` VALUES ('1712', '193', '冷水滩区', '0');
INSERT INTO `sys_district` VALUES ('1713', '193', '祁阳县', '0');
INSERT INTO `sys_district` VALUES ('1714', '193', '东安县', '0');
INSERT INTO `sys_district` VALUES ('1715', '193', '双牌县', '0');
INSERT INTO `sys_district` VALUES ('1716', '193', '道县', '0');
INSERT INTO `sys_district` VALUES ('1717', '193', '江永县', '0');
INSERT INTO `sys_district` VALUES ('1718', '193', '宁远县', '0');
INSERT INTO `sys_district` VALUES ('1719', '193', '蓝山县', '0');
INSERT INTO `sys_district` VALUES ('1720', '193', '新田县', '0');
INSERT INTO `sys_district` VALUES ('1721', '193', '江华瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1722', '194', '鹤城区', '0');
INSERT INTO `sys_district` VALUES ('1723', '194', '中方县', '0');
INSERT INTO `sys_district` VALUES ('1724', '194', '沅陵县', '0');
INSERT INTO `sys_district` VALUES ('1725', '194', '辰溪县', '0');
INSERT INTO `sys_district` VALUES ('1726', '194', '溆浦县', '0');
INSERT INTO `sys_district` VALUES ('1727', '194', '会同县', '0');
INSERT INTO `sys_district` VALUES ('1728', '194', '麻阳苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1729', '194', '新晃侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1730', '194', '芷江侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1731', '194', '靖州苗族侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1732', '194', '通道侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1733', '194', '洪江市', '0');
INSERT INTO `sys_district` VALUES ('1734', '195', '娄星区', '0');
INSERT INTO `sys_district` VALUES ('1735', '195', '双峰县', '0');
INSERT INTO `sys_district` VALUES ('1736', '195', '新化县', '0');
INSERT INTO `sys_district` VALUES ('1737', '195', '冷水江市', '0');
INSERT INTO `sys_district` VALUES ('1738', '195', '涟源市', '0');
INSERT INTO `sys_district` VALUES ('1739', '196', '吉首市', '0');
INSERT INTO `sys_district` VALUES ('1740', '196', '泸溪县', '0');
INSERT INTO `sys_district` VALUES ('1741', '196', '凤凰县', '0');
INSERT INTO `sys_district` VALUES ('1742', '196', '花垣县', '0');
INSERT INTO `sys_district` VALUES ('1743', '196', '保靖县', '0');
INSERT INTO `sys_district` VALUES ('1744', '196', '古丈县', '0');
INSERT INTO `sys_district` VALUES ('1745', '196', '永顺县', '0');
INSERT INTO `sys_district` VALUES ('1746', '196', '龙山县', '0');
INSERT INTO `sys_district` VALUES ('1747', '197', '东山区', '0');
INSERT INTO `sys_district` VALUES ('1748', '197', '荔湾区', '0');
INSERT INTO `sys_district` VALUES ('1749', '197', '越秀区', '0');
INSERT INTO `sys_district` VALUES ('1750', '197', '海珠区', '0');
INSERT INTO `sys_district` VALUES ('1751', '197', '天河区', '0');
INSERT INTO `sys_district` VALUES ('1752', '197', '芳村区', '0');
INSERT INTO `sys_district` VALUES ('1753', '197', '白云区', '0');
INSERT INTO `sys_district` VALUES ('1754', '197', '黄埔区', '0');
INSERT INTO `sys_district` VALUES ('1755', '197', '番禺区', '0');
INSERT INTO `sys_district` VALUES ('1756', '197', '花都区', '0');
INSERT INTO `sys_district` VALUES ('1757', '197', '增城市', '0');
INSERT INTO `sys_district` VALUES ('1759', '198', '武江区', '0');
INSERT INTO `sys_district` VALUES ('1760', '198', '浈江区', '0');
INSERT INTO `sys_district` VALUES ('1761', '198', '曲江区', '0');
INSERT INTO `sys_district` VALUES ('1762', '198', '始兴县', '0');
INSERT INTO `sys_district` VALUES ('1763', '198', '仁化县', '0');
INSERT INTO `sys_district` VALUES ('1764', '198', '翁源县', '0');
INSERT INTO `sys_district` VALUES ('1765', '198', '乳源瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1766', '198', '新丰县', '0');
INSERT INTO `sys_district` VALUES ('1767', '198', '乐昌市', '0');
INSERT INTO `sys_district` VALUES ('1768', '198', '南雄市', '0');
INSERT INTO `sys_district` VALUES ('1769', '199', '罗湖区', '0');
INSERT INTO `sys_district` VALUES ('1770', '199', '福田区', '0');
INSERT INTO `sys_district` VALUES ('1771', '199', '南山区', '0');
INSERT INTO `sys_district` VALUES ('1772', '199', '宝安区', '0');
INSERT INTO `sys_district` VALUES ('1773', '199', '龙岗区', '0');
INSERT INTO `sys_district` VALUES ('1774', '199', '盐田区', '0');
INSERT INTO `sys_district` VALUES ('1775', '200', '香洲区', '0');
INSERT INTO `sys_district` VALUES ('1776', '200', '斗门区', '0');
INSERT INTO `sys_district` VALUES ('1777', '200', '金湾区', '0');
INSERT INTO `sys_district` VALUES ('1778', '201', '龙湖区', '0');
INSERT INTO `sys_district` VALUES ('1779', '201', '金平区', '0');
INSERT INTO `sys_district` VALUES ('1780', '201', '濠江区', '0');
INSERT INTO `sys_district` VALUES ('1781', '201', '潮阳区', '0');
INSERT INTO `sys_district` VALUES ('1782', '201', '潮南区', '0');
INSERT INTO `sys_district` VALUES ('1783', '201', '澄海区', '0');
INSERT INTO `sys_district` VALUES ('1784', '201', '南澳县', '0');
INSERT INTO `sys_district` VALUES ('1785', '202', '禅城区', '0');
INSERT INTO `sys_district` VALUES ('1786', '202', '南海区', '0');
INSERT INTO `sys_district` VALUES ('1787', '202', '顺德区', '0');
INSERT INTO `sys_district` VALUES ('1788', '202', '三水区', '0');
INSERT INTO `sys_district` VALUES ('1789', '202', '高明区', '0');
INSERT INTO `sys_district` VALUES ('1790', '203', '蓬江区', '0');
INSERT INTO `sys_district` VALUES ('1791', '203', '江海区', '0');
INSERT INTO `sys_district` VALUES ('1792', '203', '新会区', '0');
INSERT INTO `sys_district` VALUES ('1793', '203', '台山市', '0');
INSERT INTO `sys_district` VALUES ('1794', '203', '开平市', '0');
INSERT INTO `sys_district` VALUES ('1795', '203', '鹤山市', '0');
INSERT INTO `sys_district` VALUES ('1796', '203', '恩平市', '0');
INSERT INTO `sys_district` VALUES ('1797', '204', '赤坎区', '0');
INSERT INTO `sys_district` VALUES ('1798', '204', '霞山区', '0');
INSERT INTO `sys_district` VALUES ('1799', '204', '坡头区', '0');
INSERT INTO `sys_district` VALUES ('1800', '204', '麻章区', '0');
INSERT INTO `sys_district` VALUES ('1801', '204', '遂溪县', '0');
INSERT INTO `sys_district` VALUES ('1802', '204', '徐闻县', '0');
INSERT INTO `sys_district` VALUES ('1803', '204', '廉江市', '0');
INSERT INTO `sys_district` VALUES ('1804', '204', '雷州市', '0');
INSERT INTO `sys_district` VALUES ('1805', '204', '吴川市', '0');
INSERT INTO `sys_district` VALUES ('1806', '205', '茂南区', '0');
INSERT INTO `sys_district` VALUES ('1807', '205', '茂港区', '0');
INSERT INTO `sys_district` VALUES ('1808', '205', '电白县', '0');
INSERT INTO `sys_district` VALUES ('1809', '205', '高州市', '0');
INSERT INTO `sys_district` VALUES ('1810', '205', '化州市', '0');
INSERT INTO `sys_district` VALUES ('1811', '205', '信宜市', '0');
INSERT INTO `sys_district` VALUES ('1812', '206', '端州区', '0');
INSERT INTO `sys_district` VALUES ('1813', '206', '鼎湖区', '0');
INSERT INTO `sys_district` VALUES ('1814', '206', '广宁县', '0');
INSERT INTO `sys_district` VALUES ('1815', '206', '怀集县', '0');
INSERT INTO `sys_district` VALUES ('1816', '206', '封开县', '0');
INSERT INTO `sys_district` VALUES ('1817', '206', '德庆县', '0');
INSERT INTO `sys_district` VALUES ('1818', '206', '高要市', '0');
INSERT INTO `sys_district` VALUES ('1819', '206', '四会市', '0');
INSERT INTO `sys_district` VALUES ('1820', '207', '惠城区', '0');
INSERT INTO `sys_district` VALUES ('1821', '207', '惠阳区', '0');
INSERT INTO `sys_district` VALUES ('1822', '207', '博罗县', '0');
INSERT INTO `sys_district` VALUES ('1823', '207', '惠东县', '0');
INSERT INTO `sys_district` VALUES ('1824', '207', '龙门县', '0');
INSERT INTO `sys_district` VALUES ('1825', '208', '梅江区', '0');
INSERT INTO `sys_district` VALUES ('1826', '208', '梅县', '0');
INSERT INTO `sys_district` VALUES ('1827', '208', '大埔县', '0');
INSERT INTO `sys_district` VALUES ('1828', '208', '丰顺县', '0');
INSERT INTO `sys_district` VALUES ('1829', '208', '五华县', '0');
INSERT INTO `sys_district` VALUES ('1830', '208', '平远县', '0');
INSERT INTO `sys_district` VALUES ('1831', '208', '蕉岭县', '0');
INSERT INTO `sys_district` VALUES ('1832', '208', '兴宁市', '0');
INSERT INTO `sys_district` VALUES ('1833', '209', '城区', '0');
INSERT INTO `sys_district` VALUES ('1834', '209', '海丰县', '0');
INSERT INTO `sys_district` VALUES ('1835', '209', '陆河县', '0');
INSERT INTO `sys_district` VALUES ('1836', '209', '陆丰市', '0');
INSERT INTO `sys_district` VALUES ('1837', '210', '源城区', '0');
INSERT INTO `sys_district` VALUES ('1838', '210', '紫金县', '0');
INSERT INTO `sys_district` VALUES ('1839', '210', '龙川县', '0');
INSERT INTO `sys_district` VALUES ('1840', '210', '连平县', '0');
INSERT INTO `sys_district` VALUES ('1841', '210', '和平县', '0');
INSERT INTO `sys_district` VALUES ('1842', '210', '东源县', '0');
INSERT INTO `sys_district` VALUES ('1843', '211', '江城区', '0');
INSERT INTO `sys_district` VALUES ('1844', '211', '阳西县', '0');
INSERT INTO `sys_district` VALUES ('1845', '211', '阳东县', '0');
INSERT INTO `sys_district` VALUES ('1846', '211', '阳春市', '0');
INSERT INTO `sys_district` VALUES ('1847', '212', '清城区', '0');
INSERT INTO `sys_district` VALUES ('1848', '212', '佛冈县', '0');
INSERT INTO `sys_district` VALUES ('1849', '212', '阳山县', '0');
INSERT INTO `sys_district` VALUES ('1850', '212', '连山壮族瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1851', '212', '连南瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1852', '212', '清新县', '0');
INSERT INTO `sys_district` VALUES ('1853', '212', '英德市', '0');
INSERT INTO `sys_district` VALUES ('1854', '212', '连州市', '0');
INSERT INTO `sys_district` VALUES ('1855', '215', '湘桥区', '0');
INSERT INTO `sys_district` VALUES ('1856', '215', '潮安县', '0');
INSERT INTO `sys_district` VALUES ('1857', '215', '饶平县', '0');
INSERT INTO `sys_district` VALUES ('1858', '216', '榕城区', '0');
INSERT INTO `sys_district` VALUES ('1859', '216', '揭东县', '0');
INSERT INTO `sys_district` VALUES ('1860', '216', '揭西县', '0');
INSERT INTO `sys_district` VALUES ('1861', '216', '惠来县', '0');
INSERT INTO `sys_district` VALUES ('1862', '216', '普宁市', '0');
INSERT INTO `sys_district` VALUES ('1863', '217', '云城区', '0');
INSERT INTO `sys_district` VALUES ('1864', '217', '新兴县', '0');
INSERT INTO `sys_district` VALUES ('1865', '217', '郁南县', '0');
INSERT INTO `sys_district` VALUES ('1866', '217', '云安县', '0');
INSERT INTO `sys_district` VALUES ('1867', '217', '罗定市', '0');
INSERT INTO `sys_district` VALUES ('1868', '218', '兴宁区', '0');
INSERT INTO `sys_district` VALUES ('1869', '218', '青秀区', '0');
INSERT INTO `sys_district` VALUES ('1870', '218', '江南区', '0');
INSERT INTO `sys_district` VALUES ('1871', '218', '西乡塘区', '0');
INSERT INTO `sys_district` VALUES ('1872', '218', '良庆区', '0');
INSERT INTO `sys_district` VALUES ('1873', '218', '邕宁区', '0');
INSERT INTO `sys_district` VALUES ('1874', '218', '武鸣县', '0');
INSERT INTO `sys_district` VALUES ('1875', '218', '隆安县', '0');
INSERT INTO `sys_district` VALUES ('1876', '218', '马山县', '0');
INSERT INTO `sys_district` VALUES ('1877', '218', '上林县', '0');
INSERT INTO `sys_district` VALUES ('1878', '218', '宾阳县', '0');
INSERT INTO `sys_district` VALUES ('1879', '218', '横县', '0');
INSERT INTO `sys_district` VALUES ('1880', '219', '城中区', '0');
INSERT INTO `sys_district` VALUES ('1881', '219', '鱼峰区', '0');
INSERT INTO `sys_district` VALUES ('1882', '219', '柳南区', '0');
INSERT INTO `sys_district` VALUES ('1883', '219', '柳北区', '0');
INSERT INTO `sys_district` VALUES ('1884', '219', '柳江县', '0');
INSERT INTO `sys_district` VALUES ('1885', '219', '柳城县', '0');
INSERT INTO `sys_district` VALUES ('1886', '219', '鹿寨县', '0');
INSERT INTO `sys_district` VALUES ('1887', '219', '融安县', '0');
INSERT INTO `sys_district` VALUES ('1888', '219', '融水苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1889', '219', '三江侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1890', '220', '秀峰区', '0');
INSERT INTO `sys_district` VALUES ('1891', '220', '叠彩区', '0');
INSERT INTO `sys_district` VALUES ('1892', '220', '象山区', '0');
INSERT INTO `sys_district` VALUES ('1893', '220', '七星区', '0');
INSERT INTO `sys_district` VALUES ('1894', '220', '雁山区', '0');
INSERT INTO `sys_district` VALUES ('1895', '220', '阳朔县', '0');
INSERT INTO `sys_district` VALUES ('1896', '220', '临桂县', '0');
INSERT INTO `sys_district` VALUES ('1897', '220', '灵川县', '0');
INSERT INTO `sys_district` VALUES ('1898', '220', '全州县', '0');
INSERT INTO `sys_district` VALUES ('1899', '220', '兴安县', '0');
INSERT INTO `sys_district` VALUES ('1900', '220', '永福县', '0');
INSERT INTO `sys_district` VALUES ('1901', '220', '灌阳县', '0');
INSERT INTO `sys_district` VALUES ('1902', '220', '龙胜各族自治县', '0');
INSERT INTO `sys_district` VALUES ('1903', '220', '资源县', '0');
INSERT INTO `sys_district` VALUES ('1904', '220', '平乐县', '0');
INSERT INTO `sys_district` VALUES ('1905', '220', '荔蒲县', '0');
INSERT INTO `sys_district` VALUES ('1906', '220', '恭城瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1907', '221', '万秀区', '0');
INSERT INTO `sys_district` VALUES ('1908', '221', '蝶山区', '0');
INSERT INTO `sys_district` VALUES ('1909', '221', '长洲区', '0');
INSERT INTO `sys_district` VALUES ('1910', '221', '苍梧县', '0');
INSERT INTO `sys_district` VALUES ('1911', '221', '藤县', '0');
INSERT INTO `sys_district` VALUES ('1912', '221', '蒙山县', '0');
INSERT INTO `sys_district` VALUES ('1913', '221', '岑溪市', '0');
INSERT INTO `sys_district` VALUES ('1914', '222', '海城区', '0');
INSERT INTO `sys_district` VALUES ('1915', '222', '银海区', '0');
INSERT INTO `sys_district` VALUES ('1916', '222', '铁山港区', '0');
INSERT INTO `sys_district` VALUES ('1917', '222', '合浦县', '0');
INSERT INTO `sys_district` VALUES ('1918', '223', '港口区', '0');
INSERT INTO `sys_district` VALUES ('1919', '223', '防城区', '0');
INSERT INTO `sys_district` VALUES ('1920', '223', '上思县', '0');
INSERT INTO `sys_district` VALUES ('1921', '223', '东兴市', '0');
INSERT INTO `sys_district` VALUES ('1922', '224', '钦南区', '0');
INSERT INTO `sys_district` VALUES ('1923', '224', '钦北区', '0');
INSERT INTO `sys_district` VALUES ('1924', '224', '灵山县', '0');
INSERT INTO `sys_district` VALUES ('1925', '224', '浦北县', '0');
INSERT INTO `sys_district` VALUES ('1926', '225', '港北区', '0');
INSERT INTO `sys_district` VALUES ('1927', '225', '港南区', '0');
INSERT INTO `sys_district` VALUES ('1928', '225', '覃塘区', '0');
INSERT INTO `sys_district` VALUES ('1929', '225', '平南县', '0');
INSERT INTO `sys_district` VALUES ('1930', '225', '桂平市', '0');
INSERT INTO `sys_district` VALUES ('1931', '226', '玉州区', '0');
INSERT INTO `sys_district` VALUES ('1932', '226', '容县', '0');
INSERT INTO `sys_district` VALUES ('1933', '226', '陆川县', '0');
INSERT INTO `sys_district` VALUES ('1934', '226', '博白县', '0');
INSERT INTO `sys_district` VALUES ('1935', '226', '兴业县', '0');
INSERT INTO `sys_district` VALUES ('1936', '226', '北流市', '0');
INSERT INTO `sys_district` VALUES ('1937', '227', '右江区', '0');
INSERT INTO `sys_district` VALUES ('1938', '227', '田阳县', '0');
INSERT INTO `sys_district` VALUES ('1939', '227', '田东县', '0');
INSERT INTO `sys_district` VALUES ('1940', '227', '平果县', '0');
INSERT INTO `sys_district` VALUES ('1941', '227', '德保县', '0');
INSERT INTO `sys_district` VALUES ('1942', '227', '靖西县', '0');
INSERT INTO `sys_district` VALUES ('1943', '227', '那坡县', '0');
INSERT INTO `sys_district` VALUES ('1944', '227', '凌云县', '0');
INSERT INTO `sys_district` VALUES ('1945', '227', '乐业县', '0');
INSERT INTO `sys_district` VALUES ('1946', '227', '田林县', '0');
INSERT INTO `sys_district` VALUES ('1947', '227', '西林县', '0');
INSERT INTO `sys_district` VALUES ('1948', '227', '隆林各族自治县', '0');
INSERT INTO `sys_district` VALUES ('1949', '228', '八步区', '0');
INSERT INTO `sys_district` VALUES ('1950', '228', '昭平县', '0');
INSERT INTO `sys_district` VALUES ('1951', '228', '钟山县', '0');
INSERT INTO `sys_district` VALUES ('1952', '228', '富川瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1953', '229', '金城江区', '0');
INSERT INTO `sys_district` VALUES ('1954', '229', '南丹县', '0');
INSERT INTO `sys_district` VALUES ('1955', '229', '天峨县', '0');
INSERT INTO `sys_district` VALUES ('1956', '229', '凤山县', '0');
INSERT INTO `sys_district` VALUES ('1957', '229', '东兰县', '0');
INSERT INTO `sys_district` VALUES ('1958', '229', '罗城仫佬族自治县', '0');
INSERT INTO `sys_district` VALUES ('1959', '229', '环江毛南族自治县', '0');
INSERT INTO `sys_district` VALUES ('1960', '229', '巴马瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1961', '229', '都安瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1962', '229', '大化瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1963', '229', '宜州市', '0');
INSERT INTO `sys_district` VALUES ('1964', '230', '兴宾区', '0');
INSERT INTO `sys_district` VALUES ('1965', '230', '忻城县', '0');
INSERT INTO `sys_district` VALUES ('1966', '230', '象州县', '0');
INSERT INTO `sys_district` VALUES ('1967', '230', '武宣县', '0');
INSERT INTO `sys_district` VALUES ('1968', '230', '金秀瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('1969', '230', '合山市', '0');
INSERT INTO `sys_district` VALUES ('1970', '231', '江洲区', '0');
INSERT INTO `sys_district` VALUES ('1971', '231', '扶绥县', '0');
INSERT INTO `sys_district` VALUES ('1972', '231', '宁明县', '0');
INSERT INTO `sys_district` VALUES ('1973', '231', '龙州县', '0');
INSERT INTO `sys_district` VALUES ('1974', '231', '大新县', '0');
INSERT INTO `sys_district` VALUES ('1975', '231', '天等县', '0');
INSERT INTO `sys_district` VALUES ('1976', '231', '凭祥市', '0');
INSERT INTO `sys_district` VALUES ('1977', '232', '秀英区', '0');
INSERT INTO `sys_district` VALUES ('1978', '232', '龙华区', '0');
INSERT INTO `sys_district` VALUES ('1979', '232', '琼山区', '0');
INSERT INTO `sys_district` VALUES ('1980', '232', '美兰区', '0');
INSERT INTO `sys_district` VALUES ('1981', '233', '五指山市', '0');
INSERT INTO `sys_district` VALUES ('1982', '233', '琼海市', '0');
INSERT INTO `sys_district` VALUES ('1983', '233', '儋州市', '0');
INSERT INTO `sys_district` VALUES ('1984', '233', '文昌市', '0');
INSERT INTO `sys_district` VALUES ('1985', '233', '万宁市', '0');
INSERT INTO `sys_district` VALUES ('1986', '233', '东方市', '0');
INSERT INTO `sys_district` VALUES ('1987', '233', '定安县', '0');
INSERT INTO `sys_district` VALUES ('1988', '233', '屯昌县', '0');
INSERT INTO `sys_district` VALUES ('1989', '233', '澄迈县', '0');
INSERT INTO `sys_district` VALUES ('1990', '233', '临高县', '0');
INSERT INTO `sys_district` VALUES ('1991', '233', '白沙黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1992', '233', '昌江黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1993', '233', '乐东黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1994', '233', '陵水黎族自治县', '0');
INSERT INTO `sys_district` VALUES ('1995', '233', '保亭黎族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1996', '233', '琼中黎族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('1997', '233', '西沙群岛', '0');
INSERT INTO `sys_district` VALUES ('1998', '233', '南沙群岛', '0');
INSERT INTO `sys_district` VALUES ('1999', '233', '中沙群岛的岛礁及其海域', '0');
INSERT INTO `sys_district` VALUES ('2000', '234', '万州区', '0');
INSERT INTO `sys_district` VALUES ('2001', '234', '涪陵区', '0');
INSERT INTO `sys_district` VALUES ('2002', '234', '渝中区', '0');
INSERT INTO `sys_district` VALUES ('2003', '234', '大渡口区', '0');
INSERT INTO `sys_district` VALUES ('2004', '234', '江北区', '0');
INSERT INTO `sys_district` VALUES ('2005', '234', '沙坪坝区', '0');
INSERT INTO `sys_district` VALUES ('2006', '234', '九龙坡区', '0');
INSERT INTO `sys_district` VALUES ('2007', '234', '南岸区', '0');
INSERT INTO `sys_district` VALUES ('2008', '234', '北碚区', '0');
INSERT INTO `sys_district` VALUES ('2009', '234', '万盛区', '0');
INSERT INTO `sys_district` VALUES ('2010', '234', '双桥区', '0');
INSERT INTO `sys_district` VALUES ('2011', '234', '渝北区', '0');
INSERT INTO `sys_district` VALUES ('2012', '234', '巴南区', '0');
INSERT INTO `sys_district` VALUES ('2013', '234', '黔江区', '0');
INSERT INTO `sys_district` VALUES ('2014', '234', '长寿区', '0');
INSERT INTO `sys_district` VALUES ('2015', '234', '綦江县', '0');
INSERT INTO `sys_district` VALUES ('2016', '234', '潼南县', '0');
INSERT INTO `sys_district` VALUES ('2017', '234', '铜梁县', '0');
INSERT INTO `sys_district` VALUES ('2018', '234', '大足县', '0');
INSERT INTO `sys_district` VALUES ('2019', '234', '荣昌县', '0');
INSERT INTO `sys_district` VALUES ('2020', '234', '璧山县', '0');
INSERT INTO `sys_district` VALUES ('2021', '234', '梁平县', '0');
INSERT INTO `sys_district` VALUES ('2022', '234', '城口县', '0');
INSERT INTO `sys_district` VALUES ('2023', '234', '丰都县', '0');
INSERT INTO `sys_district` VALUES ('2024', '234', '垫江县', '0');
INSERT INTO `sys_district` VALUES ('2025', '234', '武隆县', '0');
INSERT INTO `sys_district` VALUES ('2026', '234', '忠县', '0');
INSERT INTO `sys_district` VALUES ('2027', '234', '开县', '0');
INSERT INTO `sys_district` VALUES ('2028', '234', '云阳县', '0');
INSERT INTO `sys_district` VALUES ('2029', '234', '奉节县', '0');
INSERT INTO `sys_district` VALUES ('2030', '234', '巫山县', '0');
INSERT INTO `sys_district` VALUES ('2031', '234', '巫溪县', '0');
INSERT INTO `sys_district` VALUES ('2032', '234', '石柱土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2033', '234', '秀山土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2034', '234', '酉阳土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2035', '234', '彭水苗族土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2036', '234', '江津市', '0');
INSERT INTO `sys_district` VALUES ('2037', '234', '合川市', '0');
INSERT INTO `sys_district` VALUES ('2038', '234', '永川市', '0');
INSERT INTO `sys_district` VALUES ('2039', '234', '南川市', '0');
INSERT INTO `sys_district` VALUES ('2040', '235', '锦江区', '0');
INSERT INTO `sys_district` VALUES ('2041', '235', '青羊区', '0');
INSERT INTO `sys_district` VALUES ('2042', '235', '金牛区', '0');
INSERT INTO `sys_district` VALUES ('2043', '235', '武侯区', '0');
INSERT INTO `sys_district` VALUES ('2044', '235', '成华区', '0');
INSERT INTO `sys_district` VALUES ('2045', '235', '龙泉驿区', '0');
INSERT INTO `sys_district` VALUES ('2046', '235', '青白江区', '0');
INSERT INTO `sys_district` VALUES ('2047', '235', '新都区', '0');
INSERT INTO `sys_district` VALUES ('2048', '235', '温江区', '0');
INSERT INTO `sys_district` VALUES ('2049', '235', '金堂县', '0');
INSERT INTO `sys_district` VALUES ('2050', '235', '双流县', '0');
INSERT INTO `sys_district` VALUES ('2051', '235', '郫县', '0');
INSERT INTO `sys_district` VALUES ('2052', '235', '大邑县', '0');
INSERT INTO `sys_district` VALUES ('2053', '235', '蒲江县', '0');
INSERT INTO `sys_district` VALUES ('2054', '235', '新津县', '0');
INSERT INTO `sys_district` VALUES ('2055', '235', '都江堰市', '0');
INSERT INTO `sys_district` VALUES ('2056', '235', '彭州市', '0');
INSERT INTO `sys_district` VALUES ('2057', '235', '邛崃市', '0');
INSERT INTO `sys_district` VALUES ('2058', '235', '崇州市', '0');
INSERT INTO `sys_district` VALUES ('2059', '236', '自流井区', '0');
INSERT INTO `sys_district` VALUES ('2060', '236', '贡井区', '0');
INSERT INTO `sys_district` VALUES ('2061', '236', '大安区', '0');
INSERT INTO `sys_district` VALUES ('2062', '236', '沿滩区', '0');
INSERT INTO `sys_district` VALUES ('2063', '236', '荣县', '0');
INSERT INTO `sys_district` VALUES ('2064', '236', '富顺县', '0');
INSERT INTO `sys_district` VALUES ('2065', '237', '东区', '0');
INSERT INTO `sys_district` VALUES ('2066', '237', '西区', '0');
INSERT INTO `sys_district` VALUES ('2067', '237', '仁和区', '0');
INSERT INTO `sys_district` VALUES ('2068', '237', '米易县', '0');
INSERT INTO `sys_district` VALUES ('2069', '237', '盐边县', '0');
INSERT INTO `sys_district` VALUES ('2070', '238', '江阳区', '0');
INSERT INTO `sys_district` VALUES ('2071', '238', '纳溪区', '0');
INSERT INTO `sys_district` VALUES ('2072', '238', '龙马潭区', '0');
INSERT INTO `sys_district` VALUES ('2073', '238', '泸县', '0');
INSERT INTO `sys_district` VALUES ('2074', '238', '合江县', '0');
INSERT INTO `sys_district` VALUES ('2075', '238', '叙永县', '0');
INSERT INTO `sys_district` VALUES ('2076', '238', '古蔺县', '0');
INSERT INTO `sys_district` VALUES ('2077', '239', '旌阳区', '0');
INSERT INTO `sys_district` VALUES ('2078', '239', '中江县', '0');
INSERT INTO `sys_district` VALUES ('2079', '239', '罗江县', '0');
INSERT INTO `sys_district` VALUES ('2080', '239', '广汉市', '0');
INSERT INTO `sys_district` VALUES ('2081', '239', '什邡市', '0');
INSERT INTO `sys_district` VALUES ('2082', '239', '绵竹市', '0');
INSERT INTO `sys_district` VALUES ('2083', '240', '涪城区', '0');
INSERT INTO `sys_district` VALUES ('2084', '240', '游仙区', '0');
INSERT INTO `sys_district` VALUES ('2085', '240', '三台县', '0');
INSERT INTO `sys_district` VALUES ('2086', '240', '盐亭县', '0');
INSERT INTO `sys_district` VALUES ('2087', '240', '安县', '0');
INSERT INTO `sys_district` VALUES ('2088', '240', '梓潼县', '0');
INSERT INTO `sys_district` VALUES ('2089', '240', '北川羌族自治县', '0');
INSERT INTO `sys_district` VALUES ('2090', '240', '平武县', '0');
INSERT INTO `sys_district` VALUES ('2091', '240', '江油市', '0');
INSERT INTO `sys_district` VALUES ('2092', '241', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2093', '241', '元坝区', '0');
INSERT INTO `sys_district` VALUES ('2094', '241', '朝天区', '0');
INSERT INTO `sys_district` VALUES ('2095', '241', '旺苍县', '0');
INSERT INTO `sys_district` VALUES ('2096', '241', '青川县', '0');
INSERT INTO `sys_district` VALUES ('2097', '241', '剑阁县', '0');
INSERT INTO `sys_district` VALUES ('2098', '241', '苍溪县', '0');
INSERT INTO `sys_district` VALUES ('2099', '242', '船山区', '0');
INSERT INTO `sys_district` VALUES ('2100', '242', '安居区', '0');
INSERT INTO `sys_district` VALUES ('2101', '242', '蓬溪县', '0');
INSERT INTO `sys_district` VALUES ('2102', '242', '射洪县', '0');
INSERT INTO `sys_district` VALUES ('2103', '242', '大英县', '0');
INSERT INTO `sys_district` VALUES ('2104', '243', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2105', '243', '东兴区', '0');
INSERT INTO `sys_district` VALUES ('2106', '243', '威远县', '0');
INSERT INTO `sys_district` VALUES ('2107', '243', '资中县', '0');
INSERT INTO `sys_district` VALUES ('2108', '243', '隆昌县', '0');
INSERT INTO `sys_district` VALUES ('2109', '244', '市中区', '0');
INSERT INTO `sys_district` VALUES ('2110', '244', '沙湾区', '0');
INSERT INTO `sys_district` VALUES ('2111', '244', '五通桥区', '0');
INSERT INTO `sys_district` VALUES ('2112', '244', '金口河区', '0');
INSERT INTO `sys_district` VALUES ('2113', '244', '犍为县', '0');
INSERT INTO `sys_district` VALUES ('2114', '244', '井研县', '0');
INSERT INTO `sys_district` VALUES ('2115', '244', '夹江县', '0');
INSERT INTO `sys_district` VALUES ('2116', '244', '沐川县', '0');
INSERT INTO `sys_district` VALUES ('2117', '244', '峨边彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2118', '244', '马边彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2119', '244', '峨眉山市', '0');
INSERT INTO `sys_district` VALUES ('2120', '245', '顺庆区', '0');
INSERT INTO `sys_district` VALUES ('2121', '245', '高坪区', '0');
INSERT INTO `sys_district` VALUES ('2122', '245', '嘉陵区', '0');
INSERT INTO `sys_district` VALUES ('2123', '245', '南部县', '0');
INSERT INTO `sys_district` VALUES ('2124', '245', '营山县', '0');
INSERT INTO `sys_district` VALUES ('2125', '245', '蓬安县', '0');
INSERT INTO `sys_district` VALUES ('2126', '245', '仪陇县', '0');
INSERT INTO `sys_district` VALUES ('2127', '245', '西充县', '0');
INSERT INTO `sys_district` VALUES ('2128', '245', '阆中市', '0');
INSERT INTO `sys_district` VALUES ('2129', '246', '东坡区', '0');
INSERT INTO `sys_district` VALUES ('2130', '246', '仁寿县', '0');
INSERT INTO `sys_district` VALUES ('2131', '246', '彭山县', '0');
INSERT INTO `sys_district` VALUES ('2132', '246', '洪雅县', '0');
INSERT INTO `sys_district` VALUES ('2133', '246', '丹棱县', '0');
INSERT INTO `sys_district` VALUES ('2134', '246', '青神县', '0');
INSERT INTO `sys_district` VALUES ('2135', '247', '翠屏区', '0');
INSERT INTO `sys_district` VALUES ('2136', '247', '宜宾县', '0');
INSERT INTO `sys_district` VALUES ('2137', '247', '南溪县', '0');
INSERT INTO `sys_district` VALUES ('2138', '247', '江安县', '0');
INSERT INTO `sys_district` VALUES ('2139', '247', '长宁县', '0');
INSERT INTO `sys_district` VALUES ('2140', '247', '高县', '0');
INSERT INTO `sys_district` VALUES ('2141', '247', '珙县', '0');
INSERT INTO `sys_district` VALUES ('2142', '247', '筠连县', '0');
INSERT INTO `sys_district` VALUES ('2143', '247', '兴文县', '0');
INSERT INTO `sys_district` VALUES ('2144', '247', '屏山县', '0');
INSERT INTO `sys_district` VALUES ('2145', '248', '广安区', '0');
INSERT INTO `sys_district` VALUES ('2146', '248', '岳池县', '0');
INSERT INTO `sys_district` VALUES ('2147', '248', '武胜县', '0');
INSERT INTO `sys_district` VALUES ('2148', '248', '邻水县', '0');
INSERT INTO `sys_district` VALUES ('2149', '248', '华蓥市', '0');
INSERT INTO `sys_district` VALUES ('2150', '249', '通川区', '0');
INSERT INTO `sys_district` VALUES ('2151', '249', '达县', '0');
INSERT INTO `sys_district` VALUES ('2152', '249', '宣汉县', '0');
INSERT INTO `sys_district` VALUES ('2153', '249', '开江县', '0');
INSERT INTO `sys_district` VALUES ('2154', '249', '大竹县', '0');
INSERT INTO `sys_district` VALUES ('2155', '249', '渠县', '0');
INSERT INTO `sys_district` VALUES ('2156', '249', '万源市', '0');
INSERT INTO `sys_district` VALUES ('2157', '250', '雨城区', '0');
INSERT INTO `sys_district` VALUES ('2158', '250', '名山县', '0');
INSERT INTO `sys_district` VALUES ('2159', '250', '荥经县', '0');
INSERT INTO `sys_district` VALUES ('2160', '250', '汉源县', '0');
INSERT INTO `sys_district` VALUES ('2161', '250', '石棉县', '0');
INSERT INTO `sys_district` VALUES ('2162', '250', '天全县', '0');
INSERT INTO `sys_district` VALUES ('2163', '250', '芦山县', '0');
INSERT INTO `sys_district` VALUES ('2164', '250', '宝兴县', '0');
INSERT INTO `sys_district` VALUES ('2165', '251', '巴州区', '0');
INSERT INTO `sys_district` VALUES ('2166', '251', '通江县', '0');
INSERT INTO `sys_district` VALUES ('2167', '251', '南江县', '0');
INSERT INTO `sys_district` VALUES ('2168', '251', '平昌县', '0');
INSERT INTO `sys_district` VALUES ('2169', '252', '雁江区', '0');
INSERT INTO `sys_district` VALUES ('2170', '252', '安岳县', '0');
INSERT INTO `sys_district` VALUES ('2171', '252', '乐至县', '0');
INSERT INTO `sys_district` VALUES ('2172', '252', '简阳市', '0');
INSERT INTO `sys_district` VALUES ('2173', '253', '汶川县', '0');
INSERT INTO `sys_district` VALUES ('2174', '253', '理县', '0');
INSERT INTO `sys_district` VALUES ('2175', '253', '茂县', '0');
INSERT INTO `sys_district` VALUES ('2176', '253', '松潘县', '0');
INSERT INTO `sys_district` VALUES ('2177', '253', '九寨沟县', '0');
INSERT INTO `sys_district` VALUES ('2178', '253', '金川县', '0');
INSERT INTO `sys_district` VALUES ('2179', '253', '小金县', '0');
INSERT INTO `sys_district` VALUES ('2180', '253', '黑水县', '0');
INSERT INTO `sys_district` VALUES ('2181', '253', '马尔康县', '0');
INSERT INTO `sys_district` VALUES ('2182', '253', '壤塘县', '0');
INSERT INTO `sys_district` VALUES ('2183', '253', '阿坝县', '0');
INSERT INTO `sys_district` VALUES ('2184', '253', '若尔盖县', '0');
INSERT INTO `sys_district` VALUES ('2185', '253', '红原县', '0');
INSERT INTO `sys_district` VALUES ('2186', '254', '康定县', '0');
INSERT INTO `sys_district` VALUES ('2187', '254', '泸定县', '0');
INSERT INTO `sys_district` VALUES ('2188', '254', '丹巴县', '0');
INSERT INTO `sys_district` VALUES ('2189', '254', '九龙县', '0');
INSERT INTO `sys_district` VALUES ('2190', '254', '雅江县', '0');
INSERT INTO `sys_district` VALUES ('2191', '254', '道孚县', '0');
INSERT INTO `sys_district` VALUES ('2192', '254', '炉霍县', '0');
INSERT INTO `sys_district` VALUES ('2193', '254', '甘孜县', '0');
INSERT INTO `sys_district` VALUES ('2194', '254', '新龙县', '0');
INSERT INTO `sys_district` VALUES ('2195', '254', '德格县', '0');
INSERT INTO `sys_district` VALUES ('2196', '254', '白玉县', '0');
INSERT INTO `sys_district` VALUES ('2197', '254', '石渠县', '0');
INSERT INTO `sys_district` VALUES ('2198', '254', '色达县', '0');
INSERT INTO `sys_district` VALUES ('2199', '254', '理塘县', '0');
INSERT INTO `sys_district` VALUES ('2200', '254', '巴塘县', '0');
INSERT INTO `sys_district` VALUES ('2201', '254', '乡城县', '0');
INSERT INTO `sys_district` VALUES ('2202', '254', '稻城县', '0');
INSERT INTO `sys_district` VALUES ('2203', '254', '得荣县', '0');
INSERT INTO `sys_district` VALUES ('2204', '255', '西昌市', '0');
INSERT INTO `sys_district` VALUES ('2205', '255', '木里藏族自治县', '0');
INSERT INTO `sys_district` VALUES ('2206', '255', '盐源县', '0');
INSERT INTO `sys_district` VALUES ('2207', '255', '德昌县', '0');
INSERT INTO `sys_district` VALUES ('2208', '255', '会理县', '0');
INSERT INTO `sys_district` VALUES ('2209', '255', '会东县', '0');
INSERT INTO `sys_district` VALUES ('2210', '255', '宁南县', '0');
INSERT INTO `sys_district` VALUES ('2211', '255', '普格县', '0');
INSERT INTO `sys_district` VALUES ('2212', '255', '布拖县', '0');
INSERT INTO `sys_district` VALUES ('2213', '255', '金阳县', '0');
INSERT INTO `sys_district` VALUES ('2214', '255', '昭觉县', '0');
INSERT INTO `sys_district` VALUES ('2215', '255', '喜德县', '0');
INSERT INTO `sys_district` VALUES ('2216', '255', '冕宁县', '0');
INSERT INTO `sys_district` VALUES ('2217', '255', '越西县', '0');
INSERT INTO `sys_district` VALUES ('2218', '255', '甘洛县', '0');
INSERT INTO `sys_district` VALUES ('2219', '255', '美姑县', '0');
INSERT INTO `sys_district` VALUES ('2220', '255', '雷波县', '0');
INSERT INTO `sys_district` VALUES ('2221', '256', '南明区', '0');
INSERT INTO `sys_district` VALUES ('2222', '256', '云岩区', '0');
INSERT INTO `sys_district` VALUES ('2223', '256', '花溪区', '0');
INSERT INTO `sys_district` VALUES ('2224', '256', '乌当区', '0');
INSERT INTO `sys_district` VALUES ('2225', '256', '白云区', '0');
INSERT INTO `sys_district` VALUES ('2226', '256', '小河区', '0');
INSERT INTO `sys_district` VALUES ('2227', '256', '开阳县', '0');
INSERT INTO `sys_district` VALUES ('2228', '256', '息烽县', '0');
INSERT INTO `sys_district` VALUES ('2229', '256', '修文县', '0');
INSERT INTO `sys_district` VALUES ('2230', '256', '清镇市', '0');
INSERT INTO `sys_district` VALUES ('2231', '257', '钟山区', '0');
INSERT INTO `sys_district` VALUES ('2232', '257', '六枝特区', '0');
INSERT INTO `sys_district` VALUES ('2233', '257', '水城县', '0');
INSERT INTO `sys_district` VALUES ('2234', '257', '盘县', '0');
INSERT INTO `sys_district` VALUES ('2235', '258', '红花岗区', '0');
INSERT INTO `sys_district` VALUES ('2236', '258', '汇川区', '0');
INSERT INTO `sys_district` VALUES ('2237', '258', '遵义县', '0');
INSERT INTO `sys_district` VALUES ('2238', '258', '桐梓县', '0');
INSERT INTO `sys_district` VALUES ('2239', '258', '绥阳县', '0');
INSERT INTO `sys_district` VALUES ('2240', '258', '正安县', '0');
INSERT INTO `sys_district` VALUES ('2241', '258', '道真仡佬族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2242', '258', '务川仡佬族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2243', '258', '凤冈县', '0');
INSERT INTO `sys_district` VALUES ('2244', '258', '湄潭县', '0');
INSERT INTO `sys_district` VALUES ('2245', '258', '余庆县', '0');
INSERT INTO `sys_district` VALUES ('2246', '258', '习水县', '0');
INSERT INTO `sys_district` VALUES ('2247', '258', '赤水市', '0');
INSERT INTO `sys_district` VALUES ('2248', '258', '仁怀市', '0');
INSERT INTO `sys_district` VALUES ('2249', '259', '西秀区', '0');
INSERT INTO `sys_district` VALUES ('2250', '259', '平坝县', '0');
INSERT INTO `sys_district` VALUES ('2251', '259', '普定县', '0');
INSERT INTO `sys_district` VALUES ('2252', '259', '镇宁布依族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2253', '259', '关岭布依族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2254', '259', '紫云苗族布依族自治县', '0');
INSERT INTO `sys_district` VALUES ('2255', '260', '铜仁市', '0');
INSERT INTO `sys_district` VALUES ('2256', '260', '江口县', '0');
INSERT INTO `sys_district` VALUES ('2257', '260', '玉屏侗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2258', '260', '石阡县', '0');
INSERT INTO `sys_district` VALUES ('2259', '260', '思南县', '0');
INSERT INTO `sys_district` VALUES ('2260', '260', '印江土家族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2261', '260', '德江县', '0');
INSERT INTO `sys_district` VALUES ('2262', '260', '沿河土家族自治县', '0');
INSERT INTO `sys_district` VALUES ('2263', '260', '松桃苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2264', '260', '万山特区', '0');
INSERT INTO `sys_district` VALUES ('2265', '261', '兴义市', '0');
INSERT INTO `sys_district` VALUES ('2266', '261', '兴仁县', '0');
INSERT INTO `sys_district` VALUES ('2267', '261', '普安县', '0');
INSERT INTO `sys_district` VALUES ('2268', '261', '晴隆县', '0');
INSERT INTO `sys_district` VALUES ('2269', '261', '贞丰县', '0');
INSERT INTO `sys_district` VALUES ('2270', '261', '望谟县', '0');
INSERT INTO `sys_district` VALUES ('2271', '261', '册亨县', '0');
INSERT INTO `sys_district` VALUES ('2272', '261', '安龙县', '0');
INSERT INTO `sys_district` VALUES ('2273', '262', '毕节市', '0');
INSERT INTO `sys_district` VALUES ('2274', '262', '大方县', '0');
INSERT INTO `sys_district` VALUES ('2275', '262', '黔西县', '0');
INSERT INTO `sys_district` VALUES ('2276', '262', '金沙县', '0');
INSERT INTO `sys_district` VALUES ('2277', '262', '织金县', '0');
INSERT INTO `sys_district` VALUES ('2278', '262', '纳雍县', '0');
INSERT INTO `sys_district` VALUES ('2279', '262', '威宁彝族回族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2280', '262', '赫章县', '0');
INSERT INTO `sys_district` VALUES ('2281', '263', '凯里市', '0');
INSERT INTO `sys_district` VALUES ('2282', '263', '黄平县', '0');
INSERT INTO `sys_district` VALUES ('2283', '263', '施秉县', '0');
INSERT INTO `sys_district` VALUES ('2284', '263', '三穗县', '0');
INSERT INTO `sys_district` VALUES ('2285', '263', '镇远县', '0');
INSERT INTO `sys_district` VALUES ('2286', '263', '岑巩县', '0');
INSERT INTO `sys_district` VALUES ('2287', '263', '天柱县', '0');
INSERT INTO `sys_district` VALUES ('2288', '263', '锦屏县', '0');
INSERT INTO `sys_district` VALUES ('2289', '263', '剑河县', '0');
INSERT INTO `sys_district` VALUES ('2290', '263', '台江县', '0');
INSERT INTO `sys_district` VALUES ('2291', '263', '黎平县', '0');
INSERT INTO `sys_district` VALUES ('2292', '263', '榕江县', '0');
INSERT INTO `sys_district` VALUES ('2293', '263', '从江县', '0');
INSERT INTO `sys_district` VALUES ('2294', '263', '雷山县', '0');
INSERT INTO `sys_district` VALUES ('2295', '263', '麻江县', '0');
INSERT INTO `sys_district` VALUES ('2296', '263', '丹寨县', '0');
INSERT INTO `sys_district` VALUES ('2297', '264', '都匀市', '0');
INSERT INTO `sys_district` VALUES ('2298', '264', '福泉市', '0');
INSERT INTO `sys_district` VALUES ('2299', '264', '荔波县', '0');
INSERT INTO `sys_district` VALUES ('2300', '264', '贵定县', '0');
INSERT INTO `sys_district` VALUES ('2301', '264', '瓮安县', '0');
INSERT INTO `sys_district` VALUES ('2302', '264', '独山县', '0');
INSERT INTO `sys_district` VALUES ('2303', '264', '平塘县', '0');
INSERT INTO `sys_district` VALUES ('2304', '264', '罗甸县', '0');
INSERT INTO `sys_district` VALUES ('2305', '264', '长顺县', '0');
INSERT INTO `sys_district` VALUES ('2306', '264', '龙里县', '0');
INSERT INTO `sys_district` VALUES ('2307', '264', '惠水县', '0');
INSERT INTO `sys_district` VALUES ('2308', '264', '三都水族自治县', '0');
INSERT INTO `sys_district` VALUES ('2309', '265', '五华区', '0');
INSERT INTO `sys_district` VALUES ('2310', '265', '盘龙区', '0');
INSERT INTO `sys_district` VALUES ('2311', '265', '官渡区', '0');
INSERT INTO `sys_district` VALUES ('2312', '265', '西山区', '0');
INSERT INTO `sys_district` VALUES ('2313', '265', '东川区', '0');
INSERT INTO `sys_district` VALUES ('2314', '265', '呈贡县', '0');
INSERT INTO `sys_district` VALUES ('2315', '265', '晋宁县', '0');
INSERT INTO `sys_district` VALUES ('2316', '265', '富民县', '0');
INSERT INTO `sys_district` VALUES ('2317', '265', '宜良县', '0');
INSERT INTO `sys_district` VALUES ('2318', '265', '石林彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2319', '265', '嵩明县', '0');
INSERT INTO `sys_district` VALUES ('2320', '265', '禄劝彝族苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2321', '265', '寻甸回族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2322', '265', '安宁市', '0');
INSERT INTO `sys_district` VALUES ('2323', '266', '麒麟区', '0');
INSERT INTO `sys_district` VALUES ('2324', '266', '马龙县', '0');
INSERT INTO `sys_district` VALUES ('2325', '266', '陆良县', '0');
INSERT INTO `sys_district` VALUES ('2326', '266', '师宗县', '0');
INSERT INTO `sys_district` VALUES ('2327', '266', '罗平县', '0');
INSERT INTO `sys_district` VALUES ('2328', '266', '富源县', '0');
INSERT INTO `sys_district` VALUES ('2329', '266', '会泽县', '0');
INSERT INTO `sys_district` VALUES ('2330', '266', '沾益县', '0');
INSERT INTO `sys_district` VALUES ('2331', '266', '宣威市', '0');
INSERT INTO `sys_district` VALUES ('2332', '267', '红塔区', '0');
INSERT INTO `sys_district` VALUES ('2333', '267', '江川县', '0');
INSERT INTO `sys_district` VALUES ('2334', '267', '澄江县', '0');
INSERT INTO `sys_district` VALUES ('2335', '267', '通海县', '0');
INSERT INTO `sys_district` VALUES ('2336', '267', '华宁县', '0');
INSERT INTO `sys_district` VALUES ('2337', '267', '易门县', '0');
INSERT INTO `sys_district` VALUES ('2338', '267', '峨山彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2339', '267', '新平彝族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2340', '267', '元江哈尼族彝族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2341', '268', '隆阳区', '0');
INSERT INTO `sys_district` VALUES ('2342', '268', '施甸县', '0');
INSERT INTO `sys_district` VALUES ('2343', '268', '腾冲县', '0');
INSERT INTO `sys_district` VALUES ('2344', '268', '龙陵县', '0');
INSERT INTO `sys_district` VALUES ('2345', '268', '昌宁县', '0');
INSERT INTO `sys_district` VALUES ('2346', '269', '昭阳区', '0');
INSERT INTO `sys_district` VALUES ('2347', '269', '鲁甸县', '0');
INSERT INTO `sys_district` VALUES ('2348', '269', '巧家县', '0');
INSERT INTO `sys_district` VALUES ('2349', '269', '盐津县', '0');
INSERT INTO `sys_district` VALUES ('2350', '269', '大关县', '0');
INSERT INTO `sys_district` VALUES ('2351', '269', '永善县', '0');
INSERT INTO `sys_district` VALUES ('2352', '269', '绥江县', '0');
INSERT INTO `sys_district` VALUES ('2353', '269', '镇雄县', '0');
INSERT INTO `sys_district` VALUES ('2354', '269', '彝良县', '0');
INSERT INTO `sys_district` VALUES ('2355', '269', '威信县', '0');
INSERT INTO `sys_district` VALUES ('2356', '269', '水富县', '0');
INSERT INTO `sys_district` VALUES ('2357', '270', '古城区', '0');
INSERT INTO `sys_district` VALUES ('2358', '270', '玉龙纳西族自治县', '0');
INSERT INTO `sys_district` VALUES ('2359', '270', '永胜县', '0');
INSERT INTO `sys_district` VALUES ('2360', '270', '华坪县', '0');
INSERT INTO `sys_district` VALUES ('2361', '270', '宁蒗彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2362', '271', '翠云区', '0');
INSERT INTO `sys_district` VALUES ('2363', '271', '普洱哈尼族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2364', '271', '墨江哈尼族自治县', '0');
INSERT INTO `sys_district` VALUES ('2365', '271', '景东彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2366', '271', '景谷傣族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2367', '271', '镇沅彝族哈尼族拉祜族自治县', '0');
INSERT INTO `sys_district` VALUES ('2368', '271', '江城哈尼族彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2369', '271', '孟连傣族拉祜族佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2370', '271', '澜沧拉祜族自治县', '0');
INSERT INTO `sys_district` VALUES ('2371', '271', '西盟佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2372', '272', '临翔区', '0');
INSERT INTO `sys_district` VALUES ('2373', '272', '凤庆县', '0');
INSERT INTO `sys_district` VALUES ('2374', '272', '云县', '0');
INSERT INTO `sys_district` VALUES ('2375', '272', '永德县', '0');
INSERT INTO `sys_district` VALUES ('2376', '272', '镇康县', '0');
INSERT INTO `sys_district` VALUES ('2377', '272', '双江拉祜族佤族布朗族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2378', '272', '耿马傣族佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2379', '272', '沧源佤族自治县', '0');
INSERT INTO `sys_district` VALUES ('2380', '273', '楚雄市', '0');
INSERT INTO `sys_district` VALUES ('2381', '273', '双柏县', '0');
INSERT INTO `sys_district` VALUES ('2382', '273', '牟定县', '0');
INSERT INTO `sys_district` VALUES ('2383', '273', '南华县', '0');
INSERT INTO `sys_district` VALUES ('2384', '273', '姚安县', '0');
INSERT INTO `sys_district` VALUES ('2385', '273', '大姚县', '0');
INSERT INTO `sys_district` VALUES ('2386', '273', '永仁县', '0');
INSERT INTO `sys_district` VALUES ('2387', '273', '元谋县', '0');
INSERT INTO `sys_district` VALUES ('2388', '273', '武定县', '0');
INSERT INTO `sys_district` VALUES ('2389', '273', '禄丰县', '0');
INSERT INTO `sys_district` VALUES ('2390', '274', '个旧市', '0');
INSERT INTO `sys_district` VALUES ('2391', '274', '开远市', '0');
INSERT INTO `sys_district` VALUES ('2392', '274', '蒙自县', '0');
INSERT INTO `sys_district` VALUES ('2393', '274', '屏边苗族自治县', '0');
INSERT INTO `sys_district` VALUES ('2394', '274', '建水县', '0');
INSERT INTO `sys_district` VALUES ('2395', '274', '石屏县', '0');
INSERT INTO `sys_district` VALUES ('2396', '274', '弥勒县', '0');
INSERT INTO `sys_district` VALUES ('2397', '274', '泸西县', '0');
INSERT INTO `sys_district` VALUES ('2398', '274', '元阳县', '0');
INSERT INTO `sys_district` VALUES ('2399', '274', '红河县', '0');
INSERT INTO `sys_district` VALUES ('2400', '274', '金平苗族瑶族傣族自治县', '0');
INSERT INTO `sys_district` VALUES ('2401', '274', '绿春县', '0');
INSERT INTO `sys_district` VALUES ('2402', '274', '河口瑶族自治县', '0');
INSERT INTO `sys_district` VALUES ('2403', '275', '文山县', '0');
INSERT INTO `sys_district` VALUES ('2404', '275', '砚山县', '0');
INSERT INTO `sys_district` VALUES ('2405', '275', '西畴县', '0');
INSERT INTO `sys_district` VALUES ('2406', '275', '麻栗坡县', '0');
INSERT INTO `sys_district` VALUES ('2407', '275', '马关县', '0');
INSERT INTO `sys_district` VALUES ('2408', '275', '丘北县', '0');
INSERT INTO `sys_district` VALUES ('2409', '275', '广南县', '0');
INSERT INTO `sys_district` VALUES ('2410', '275', '富宁县', '0');
INSERT INTO `sys_district` VALUES ('2411', '276', '景洪市', '0');
INSERT INTO `sys_district` VALUES ('2412', '276', '勐海县', '0');
INSERT INTO `sys_district` VALUES ('2413', '276', '勐腊县', '0');
INSERT INTO `sys_district` VALUES ('2414', '277', '大理市', '0');
INSERT INTO `sys_district` VALUES ('2415', '277', '漾濞彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2416', '277', '祥云县', '0');
INSERT INTO `sys_district` VALUES ('2417', '277', '宾川县', '0');
INSERT INTO `sys_district` VALUES ('2418', '277', '弥渡县', '0');
INSERT INTO `sys_district` VALUES ('2419', '277', '南涧彝族自治县', '0');
INSERT INTO `sys_district` VALUES ('2420', '277', '巍山彝族回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2421', '277', '永平县', '0');
INSERT INTO `sys_district` VALUES ('2422', '277', '云龙县', '0');
INSERT INTO `sys_district` VALUES ('2423', '277', '洱源县', '0');
INSERT INTO `sys_district` VALUES ('2424', '277', '剑川县', '0');
INSERT INTO `sys_district` VALUES ('2425', '277', '鹤庆县', '0');
INSERT INTO `sys_district` VALUES ('2426', '278', '瑞丽市', '0');
INSERT INTO `sys_district` VALUES ('2427', '278', '潞西市', '0');
INSERT INTO `sys_district` VALUES ('2428', '278', '梁河县', '0');
INSERT INTO `sys_district` VALUES ('2429', '278', '盈江县', '0');
INSERT INTO `sys_district` VALUES ('2430', '278', '陇川县', '0');
INSERT INTO `sys_district` VALUES ('2431', '279', '泸水县', '0');
INSERT INTO `sys_district` VALUES ('2432', '279', '福贡县', '0');
INSERT INTO `sys_district` VALUES ('2433', '279', '贡山独龙族怒族自治县', '0');
INSERT INTO `sys_district` VALUES ('2434', '279', '兰坪白族普米族自治县', '0');
INSERT INTO `sys_district` VALUES ('2435', '280', '香格里拉县', '0');
INSERT INTO `sys_district` VALUES ('2436', '280', '德钦县', '0');
INSERT INTO `sys_district` VALUES ('2437', '280', '维西傈僳族自治县', '0');
INSERT INTO `sys_district` VALUES ('2438', '281', '城关区', '0');
INSERT INTO `sys_district` VALUES ('2439', '281', '林周县', '0');
INSERT INTO `sys_district` VALUES ('2440', '281', '当雄县', '0');
INSERT INTO `sys_district` VALUES ('2441', '281', '尼木县', '0');
INSERT INTO `sys_district` VALUES ('2442', '281', '曲水县', '0');
INSERT INTO `sys_district` VALUES ('2443', '281', '堆龙德庆县', '0');
INSERT INTO `sys_district` VALUES ('2444', '281', '达孜县', '0');
INSERT INTO `sys_district` VALUES ('2445', '281', '墨竹工卡县', '0');
INSERT INTO `sys_district` VALUES ('2446', '282', '昌都县', '0');
INSERT INTO `sys_district` VALUES ('2447', '282', '江达县', '0');
INSERT INTO `sys_district` VALUES ('2448', '282', '贡觉县', '0');
INSERT INTO `sys_district` VALUES ('2449', '282', '类乌齐县', '0');
INSERT INTO `sys_district` VALUES ('2450', '282', '丁青县', '0');
INSERT INTO `sys_district` VALUES ('2451', '282', '察雅县', '0');
INSERT INTO `sys_district` VALUES ('2452', '282', '八宿县', '0');
INSERT INTO `sys_district` VALUES ('2453', '282', '左贡县', '0');
INSERT INTO `sys_district` VALUES ('2454', '282', '芒康县', '0');
INSERT INTO `sys_district` VALUES ('2455', '282', '洛隆县', '0');
INSERT INTO `sys_district` VALUES ('2456', '282', '边坝县', '0');
INSERT INTO `sys_district` VALUES ('2457', '283', '乃东县', '0');
INSERT INTO `sys_district` VALUES ('2458', '283', '扎囊县', '0');
INSERT INTO `sys_district` VALUES ('2459', '283', '贡嘎县', '0');
INSERT INTO `sys_district` VALUES ('2460', '283', '桑日县', '0');
INSERT INTO `sys_district` VALUES ('2461', '283', '琼结县', '0');
INSERT INTO `sys_district` VALUES ('2462', '283', '曲松县', '0');
INSERT INTO `sys_district` VALUES ('2463', '283', '措美县', '0');
INSERT INTO `sys_district` VALUES ('2464', '283', '洛扎县', '0');
INSERT INTO `sys_district` VALUES ('2465', '283', '加查县', '0');
INSERT INTO `sys_district` VALUES ('2466', '283', '隆子县', '0');
INSERT INTO `sys_district` VALUES ('2467', '283', '错那县', '0');
INSERT INTO `sys_district` VALUES ('2468', '283', '浪卡子县', '0');
INSERT INTO `sys_district` VALUES ('2469', '284', '日喀则市', '0');
INSERT INTO `sys_district` VALUES ('2470', '284', '南木林县', '0');
INSERT INTO `sys_district` VALUES ('2471', '284', '江孜县', '0');
INSERT INTO `sys_district` VALUES ('2472', '284', '定日县', '0');
INSERT INTO `sys_district` VALUES ('2473', '284', '萨迦县', '0');
INSERT INTO `sys_district` VALUES ('2474', '284', '拉孜县', '0');
INSERT INTO `sys_district` VALUES ('2475', '284', '昂仁县', '0');
INSERT INTO `sys_district` VALUES ('2476', '284', '谢通门县', '0');
INSERT INTO `sys_district` VALUES ('2477', '284', '白朗县', '0');
INSERT INTO `sys_district` VALUES ('2478', '284', '仁布县', '0');
INSERT INTO `sys_district` VALUES ('2479', '284', '康马县', '0');
INSERT INTO `sys_district` VALUES ('2480', '284', '定结县', '0');
INSERT INTO `sys_district` VALUES ('2481', '284', '仲巴县', '0');
INSERT INTO `sys_district` VALUES ('2482', '284', '亚东县', '0');
INSERT INTO `sys_district` VALUES ('2483', '284', '吉隆县', '0');
INSERT INTO `sys_district` VALUES ('2484', '284', '聂拉木县', '0');
INSERT INTO `sys_district` VALUES ('2485', '284', '萨嘎县', '0');
INSERT INTO `sys_district` VALUES ('2486', '284', '岗巴县', '0');
INSERT INTO `sys_district` VALUES ('2487', '285', '那曲县', '0');
INSERT INTO `sys_district` VALUES ('2488', '285', '嘉黎县', '0');
INSERT INTO `sys_district` VALUES ('2489', '285', '比如县', '0');
INSERT INTO `sys_district` VALUES ('2490', '285', '聂荣县', '0');
INSERT INTO `sys_district` VALUES ('2491', '285', '安多县', '0');
INSERT INTO `sys_district` VALUES ('2492', '285', '申扎县', '0');
INSERT INTO `sys_district` VALUES ('2493', '285', '索县', '0');
INSERT INTO `sys_district` VALUES ('2494', '285', '班戈县', '0');
INSERT INTO `sys_district` VALUES ('2495', '285', '巴青县', '0');
INSERT INTO `sys_district` VALUES ('2496', '285', '尼玛县', '0');
INSERT INTO `sys_district` VALUES ('2497', '286', '普兰县', '0');
INSERT INTO `sys_district` VALUES ('2498', '286', '札达县', '0');
INSERT INTO `sys_district` VALUES ('2499', '286', '噶尔县', '0');
INSERT INTO `sys_district` VALUES ('2500', '286', '日土县', '0');
INSERT INTO `sys_district` VALUES ('2501', '286', '革吉县', '0');
INSERT INTO `sys_district` VALUES ('2502', '286', '改则县', '0');
INSERT INTO `sys_district` VALUES ('2503', '286', '措勤县', '0');
INSERT INTO `sys_district` VALUES ('2504', '287', '林芝县', '0');
INSERT INTO `sys_district` VALUES ('2505', '287', '工布江达县', '0');
INSERT INTO `sys_district` VALUES ('2506', '287', '米林县', '0');
INSERT INTO `sys_district` VALUES ('2507', '287', '墨脱县', '0');
INSERT INTO `sys_district` VALUES ('2508', '287', '波密县', '0');
INSERT INTO `sys_district` VALUES ('2509', '287', '察隅县', '0');
INSERT INTO `sys_district` VALUES ('2510', '287', '朗县', '0');
INSERT INTO `sys_district` VALUES ('2511', '288', '新城区', '0');
INSERT INTO `sys_district` VALUES ('2512', '288', '碑林区', '0');
INSERT INTO `sys_district` VALUES ('2513', '288', '莲湖区', '0');
INSERT INTO `sys_district` VALUES ('2514', '288', '灞桥区', '0');
INSERT INTO `sys_district` VALUES ('2515', '288', '未央区', '0');
INSERT INTO `sys_district` VALUES ('2516', '288', '雁塔区', '0');
INSERT INTO `sys_district` VALUES ('2517', '288', '阎良区', '0');
INSERT INTO `sys_district` VALUES ('2518', '288', '临潼区', '0');
INSERT INTO `sys_district` VALUES ('2519', '288', '长安区', '0');
INSERT INTO `sys_district` VALUES ('2520', '288', '蓝田县', '0');
INSERT INTO `sys_district` VALUES ('2521', '288', '周至县', '0');
INSERT INTO `sys_district` VALUES ('2522', '288', '户县', '0');
INSERT INTO `sys_district` VALUES ('2523', '288', '高陵县', '0');
INSERT INTO `sys_district` VALUES ('2524', '289', '王益区', '0');
INSERT INTO `sys_district` VALUES ('2525', '289', '印台区', '0');
INSERT INTO `sys_district` VALUES ('2526', '289', '耀州区', '0');
INSERT INTO `sys_district` VALUES ('2527', '289', '宜君县', '0');
INSERT INTO `sys_district` VALUES ('2528', '290', '渭滨区', '0');
INSERT INTO `sys_district` VALUES ('2529', '290', '金台区', '0');
INSERT INTO `sys_district` VALUES ('2530', '290', '陈仓区', '0');
INSERT INTO `sys_district` VALUES ('2531', '290', '凤翔县', '0');
INSERT INTO `sys_district` VALUES ('2532', '290', '岐山县', '0');
INSERT INTO `sys_district` VALUES ('2533', '290', '扶风县', '0');
INSERT INTO `sys_district` VALUES ('2534', '290', '眉县', '0');
INSERT INTO `sys_district` VALUES ('2535', '290', '陇县', '0');
INSERT INTO `sys_district` VALUES ('2536', '290', '千阳县', '0');
INSERT INTO `sys_district` VALUES ('2537', '290', '麟游县', '0');
INSERT INTO `sys_district` VALUES ('2538', '290', '凤县', '0');
INSERT INTO `sys_district` VALUES ('2539', '290', '太白县', '0');
INSERT INTO `sys_district` VALUES ('2540', '291', '秦都区', '0');
INSERT INTO `sys_district` VALUES ('2541', '291', '杨凌区', '0');
INSERT INTO `sys_district` VALUES ('2542', '291', '渭城区', '0');
INSERT INTO `sys_district` VALUES ('2543', '291', '三原县', '0');
INSERT INTO `sys_district` VALUES ('2544', '291', '泾阳县', '0');
INSERT INTO `sys_district` VALUES ('2545', '291', '乾县', '0');
INSERT INTO `sys_district` VALUES ('2546', '291', '礼泉县', '0');
INSERT INTO `sys_district` VALUES ('2547', '291', '永寿县', '0');
INSERT INTO `sys_district` VALUES ('2548', '291', '彬县', '0');
INSERT INTO `sys_district` VALUES ('2549', '291', '长武县', '0');
INSERT INTO `sys_district` VALUES ('2550', '291', '旬邑县', '0');
INSERT INTO `sys_district` VALUES ('2551', '291', '淳化县', '0');
INSERT INTO `sys_district` VALUES ('2552', '291', '武功县', '0');
INSERT INTO `sys_district` VALUES ('2553', '291', '兴平市', '0');
INSERT INTO `sys_district` VALUES ('2554', '292', '临渭区', '0');
INSERT INTO `sys_district` VALUES ('2555', '292', '华县', '0');
INSERT INTO `sys_district` VALUES ('2556', '292', '潼关县', '0');
INSERT INTO `sys_district` VALUES ('2557', '292', '大荔县', '0');
INSERT INTO `sys_district` VALUES ('2558', '292', '合阳县', '0');
INSERT INTO `sys_district` VALUES ('2559', '292', '澄城县', '0');
INSERT INTO `sys_district` VALUES ('2560', '292', '蒲城县', '0');
INSERT INTO `sys_district` VALUES ('2561', '292', '白水县', '0');
INSERT INTO `sys_district` VALUES ('2562', '292', '富平县', '0');
INSERT INTO `sys_district` VALUES ('2563', '292', '韩城市', '0');
INSERT INTO `sys_district` VALUES ('2564', '292', '华阴市', '0');
INSERT INTO `sys_district` VALUES ('2565', '293', '宝塔区', '0');
INSERT INTO `sys_district` VALUES ('2566', '293', '延长县', '0');
INSERT INTO `sys_district` VALUES ('2567', '293', '延川县', '0');
INSERT INTO `sys_district` VALUES ('2568', '293', '子长县', '0');
INSERT INTO `sys_district` VALUES ('2569', '293', '安塞县', '0');
INSERT INTO `sys_district` VALUES ('2570', '293', '志丹县', '0');
INSERT INTO `sys_district` VALUES ('2571', '293', '吴旗县', '0');
INSERT INTO `sys_district` VALUES ('2572', '293', '甘泉县', '0');
INSERT INTO `sys_district` VALUES ('2573', '293', '富县', '0');
INSERT INTO `sys_district` VALUES ('2574', '293', '洛川县', '0');
INSERT INTO `sys_district` VALUES ('2575', '293', '宜川县', '0');
INSERT INTO `sys_district` VALUES ('2576', '293', '黄龙县', '0');
INSERT INTO `sys_district` VALUES ('2577', '293', '黄陵县', '0');
INSERT INTO `sys_district` VALUES ('2578', '294', '汉台区', '0');
INSERT INTO `sys_district` VALUES ('2579', '294', '南郑县', '0');
INSERT INTO `sys_district` VALUES ('2580', '294', '城固县', '0');
INSERT INTO `sys_district` VALUES ('2581', '294', '洋县', '0');
INSERT INTO `sys_district` VALUES ('2582', '294', '西乡县', '0');
INSERT INTO `sys_district` VALUES ('2583', '294', '勉县', '0');
INSERT INTO `sys_district` VALUES ('2584', '294', '宁强县', '0');
INSERT INTO `sys_district` VALUES ('2585', '294', '略阳县', '0');
INSERT INTO `sys_district` VALUES ('2586', '294', '镇巴县', '0');
INSERT INTO `sys_district` VALUES ('2587', '294', '留坝县', '0');
INSERT INTO `sys_district` VALUES ('2588', '294', '佛坪县', '0');
INSERT INTO `sys_district` VALUES ('2589', '295', '榆阳区', '0');
INSERT INTO `sys_district` VALUES ('2590', '295', '神木县', '0');
INSERT INTO `sys_district` VALUES ('2591', '295', '府谷县', '0');
INSERT INTO `sys_district` VALUES ('2592', '295', '横山县', '0');
INSERT INTO `sys_district` VALUES ('2593', '295', '靖边县', '0');
INSERT INTO `sys_district` VALUES ('2594', '295', '定边县', '0');
INSERT INTO `sys_district` VALUES ('2595', '295', '绥德县', '0');
INSERT INTO `sys_district` VALUES ('2596', '295', '米脂县', '0');
INSERT INTO `sys_district` VALUES ('2597', '295', '佳县', '0');
INSERT INTO `sys_district` VALUES ('2598', '295', '吴堡县', '0');
INSERT INTO `sys_district` VALUES ('2599', '295', '清涧县', '0');
INSERT INTO `sys_district` VALUES ('2600', '295', '子洲县', '0');
INSERT INTO `sys_district` VALUES ('2601', '296', '汉滨区', '0');
INSERT INTO `sys_district` VALUES ('2602', '296', '汉阴县', '0');
INSERT INTO `sys_district` VALUES ('2603', '296', '石泉县', '0');
INSERT INTO `sys_district` VALUES ('2604', '296', '宁陕县', '0');
INSERT INTO `sys_district` VALUES ('2605', '296', '紫阳县', '0');
INSERT INTO `sys_district` VALUES ('2606', '296', '岚皋县', '0');
INSERT INTO `sys_district` VALUES ('2607', '296', '平利县', '0');
INSERT INTO `sys_district` VALUES ('2608', '296', '镇坪县', '0');
INSERT INTO `sys_district` VALUES ('2609', '296', '旬阳县', '0');
INSERT INTO `sys_district` VALUES ('2610', '296', '白河县', '0');
INSERT INTO `sys_district` VALUES ('2611', '297', '商州区', '0');
INSERT INTO `sys_district` VALUES ('2612', '297', '洛南县', '0');
INSERT INTO `sys_district` VALUES ('2613', '297', '丹凤县', '0');
INSERT INTO `sys_district` VALUES ('2614', '297', '商南县', '0');
INSERT INTO `sys_district` VALUES ('2615', '297', '山阳县', '0');
INSERT INTO `sys_district` VALUES ('2616', '297', '镇安县', '0');
INSERT INTO `sys_district` VALUES ('2617', '297', '柞水县', '0');
INSERT INTO `sys_district` VALUES ('2618', '298', '城关区', '0');
INSERT INTO `sys_district` VALUES ('2619', '298', '七里河区', '0');
INSERT INTO `sys_district` VALUES ('2620', '298', '西固区', '0');
INSERT INTO `sys_district` VALUES ('2621', '298', '安宁区', '0');
INSERT INTO `sys_district` VALUES ('2622', '298', '红古区', '0');
INSERT INTO `sys_district` VALUES ('2623', '298', '永登县', '0');
INSERT INTO `sys_district` VALUES ('2624', '298', '皋兰县', '0');
INSERT INTO `sys_district` VALUES ('2625', '298', '榆中县', '0');
INSERT INTO `sys_district` VALUES ('2626', '300', '金川区', '0');
INSERT INTO `sys_district` VALUES ('2627', '300', '永昌县', '0');
INSERT INTO `sys_district` VALUES ('2628', '301', '白银区', '0');
INSERT INTO `sys_district` VALUES ('2629', '301', '平川区', '0');
INSERT INTO `sys_district` VALUES ('2630', '301', '靖远县', '0');
INSERT INTO `sys_district` VALUES ('2631', '301', '会宁县', '0');
INSERT INTO `sys_district` VALUES ('2632', '301', '景泰县', '0');
INSERT INTO `sys_district` VALUES ('2633', '302', '秦城区', '0');
INSERT INTO `sys_district` VALUES ('2634', '302', '北道区', '0');
INSERT INTO `sys_district` VALUES ('2635', '302', '清水县', '0');
INSERT INTO `sys_district` VALUES ('2636', '302', '秦安县', '0');
INSERT INTO `sys_district` VALUES ('2637', '302', '甘谷县', '0');
INSERT INTO `sys_district` VALUES ('2638', '302', '武山县', '0');
INSERT INTO `sys_district` VALUES ('2639', '302', '张家川回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2640', '303', '凉州区', '0');
INSERT INTO `sys_district` VALUES ('2641', '303', '民勤县', '0');
INSERT INTO `sys_district` VALUES ('2642', '303', '古浪县', '0');
INSERT INTO `sys_district` VALUES ('2643', '303', '天祝藏族自治县', '0');
INSERT INTO `sys_district` VALUES ('2644', '304', '甘州区', '0');
INSERT INTO `sys_district` VALUES ('2645', '304', '肃南裕固族自治县', '0');
INSERT INTO `sys_district` VALUES ('2646', '304', '民乐县', '0');
INSERT INTO `sys_district` VALUES ('2647', '304', '临泽县', '0');
INSERT INTO `sys_district` VALUES ('2648', '304', '高台县', '0');
INSERT INTO `sys_district` VALUES ('2649', '304', '山丹县', '0');
INSERT INTO `sys_district` VALUES ('2650', '305', '崆峒区', '0');
INSERT INTO `sys_district` VALUES ('2651', '305', '泾川县', '0');
INSERT INTO `sys_district` VALUES ('2652', '305', '灵台县', '0');
INSERT INTO `sys_district` VALUES ('2653', '305', '崇信县', '0');
INSERT INTO `sys_district` VALUES ('2654', '305', '华亭县', '0');
INSERT INTO `sys_district` VALUES ('2655', '305', '庄浪县', '0');
INSERT INTO `sys_district` VALUES ('2656', '305', '静宁县', '0');
INSERT INTO `sys_district` VALUES ('2657', '306', '肃州区', '0');
INSERT INTO `sys_district` VALUES ('2658', '306', '金塔县', '0');
INSERT INTO `sys_district` VALUES ('2659', '306', '安西县', '0');
INSERT INTO `sys_district` VALUES ('2660', '306', '肃北蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('2661', '306', '阿克塞哈萨克族自治县', '0');
INSERT INTO `sys_district` VALUES ('2662', '306', '玉门市', '0');
INSERT INTO `sys_district` VALUES ('2663', '306', '敦煌市', '0');
INSERT INTO `sys_district` VALUES ('2664', '307', '西峰区', '0');
INSERT INTO `sys_district` VALUES ('2665', '307', '庆城县', '0');
INSERT INTO `sys_district` VALUES ('2666', '307', '环县', '0');
INSERT INTO `sys_district` VALUES ('2667', '307', '华池县', '0');
INSERT INTO `sys_district` VALUES ('2668', '307', '合水县', '0');
INSERT INTO `sys_district` VALUES ('2669', '307', '正宁县', '0');
INSERT INTO `sys_district` VALUES ('2670', '307', '宁县', '0');
INSERT INTO `sys_district` VALUES ('2671', '307', '镇原县', '0');
INSERT INTO `sys_district` VALUES ('2672', '308', '安定区', '0');
INSERT INTO `sys_district` VALUES ('2673', '308', '通渭县', '0');
INSERT INTO `sys_district` VALUES ('2674', '308', '陇西县', '0');
INSERT INTO `sys_district` VALUES ('2675', '308', '渭源县', '0');
INSERT INTO `sys_district` VALUES ('2676', '308', '临洮县', '0');
INSERT INTO `sys_district` VALUES ('2677', '308', '漳县', '0');
INSERT INTO `sys_district` VALUES ('2678', '308', '岷县', '0');
INSERT INTO `sys_district` VALUES ('2679', '309', '武都区', '0');
INSERT INTO `sys_district` VALUES ('2680', '309', '成县', '0');
INSERT INTO `sys_district` VALUES ('2681', '309', '文县', '0');
INSERT INTO `sys_district` VALUES ('2682', '309', '宕昌县', '0');
INSERT INTO `sys_district` VALUES ('2683', '309', '康县', '0');
INSERT INTO `sys_district` VALUES ('2684', '309', '西和县', '0');
INSERT INTO `sys_district` VALUES ('2685', '309', '礼县', '0');
INSERT INTO `sys_district` VALUES ('2686', '309', '徽县', '0');
INSERT INTO `sys_district` VALUES ('2687', '309', '两当县', '0');
INSERT INTO `sys_district` VALUES ('2688', '310', '临夏市', '0');
INSERT INTO `sys_district` VALUES ('2689', '310', '临夏县', '0');
INSERT INTO `sys_district` VALUES ('2690', '310', '康乐县', '0');
INSERT INTO `sys_district` VALUES ('2691', '310', '永靖县', '0');
INSERT INTO `sys_district` VALUES ('2692', '310', '广河县', '0');
INSERT INTO `sys_district` VALUES ('2693', '310', '和政县', '0');
INSERT INTO `sys_district` VALUES ('2694', '310', '东乡族自治县', '0');
INSERT INTO `sys_district` VALUES ('2695', '310', '积石山保安族东乡族撒拉族自治县', '0');
INSERT INTO `sys_district` VALUES ('2696', '311', '合作市', '0');
INSERT INTO `sys_district` VALUES ('2697', '311', '临潭县', '0');
INSERT INTO `sys_district` VALUES ('2698', '311', '卓尼县', '0');
INSERT INTO `sys_district` VALUES ('2699', '311', '舟曲县', '0');
INSERT INTO `sys_district` VALUES ('2700', '311', '迭部县', '0');
INSERT INTO `sys_district` VALUES ('2701', '311', '玛曲县', '0');
INSERT INTO `sys_district` VALUES ('2702', '311', '碌曲县', '0');
INSERT INTO `sys_district` VALUES ('2703', '311', '夏河县', '0');
INSERT INTO `sys_district` VALUES ('2704', '312', '城东区', '0');
INSERT INTO `sys_district` VALUES ('2705', '312', '城中区', '0');
INSERT INTO `sys_district` VALUES ('2706', '312', '城西区', '0');
INSERT INTO `sys_district` VALUES ('2707', '312', '城北区', '0');
INSERT INTO `sys_district` VALUES ('2708', '312', '大通回族土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2709', '312', '湟中县', '0');
INSERT INTO `sys_district` VALUES ('2710', '312', '湟源县', '0');
INSERT INTO `sys_district` VALUES ('2711', '313', '平安县', '0');
INSERT INTO `sys_district` VALUES ('2712', '313', '民和回族土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2713', '313', '乐都县', '0');
INSERT INTO `sys_district` VALUES ('2714', '313', '互助土族自治县', '0');
INSERT INTO `sys_district` VALUES ('2715', '313', '化隆回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2716', '313', '循化撒拉族自治县', '0');
INSERT INTO `sys_district` VALUES ('2717', '314', '门源回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2718', '314', '祁连县', '0');
INSERT INTO `sys_district` VALUES ('2719', '314', '海晏县', '0');
INSERT INTO `sys_district` VALUES ('2720', '314', '刚察县', '0');
INSERT INTO `sys_district` VALUES ('2721', '315', '同仁县', '0');
INSERT INTO `sys_district` VALUES ('2722', '315', '尖扎县', '0');
INSERT INTO `sys_district` VALUES ('2723', '315', '泽库县', '0');
INSERT INTO `sys_district` VALUES ('2724', '315', '河南蒙古族自治县', '0');
INSERT INTO `sys_district` VALUES ('2725', '316', '共和县', '0');
INSERT INTO `sys_district` VALUES ('2726', '316', '同德县', '0');
INSERT INTO `sys_district` VALUES ('2727', '316', '贵德县', '0');
INSERT INTO `sys_district` VALUES ('2728', '316', '兴海县', '0');
INSERT INTO `sys_district` VALUES ('2729', '316', '贵南县', '0');
INSERT INTO `sys_district` VALUES ('2730', '317', '玛沁县', '0');
INSERT INTO `sys_district` VALUES ('2731', '317', '班玛县', '0');
INSERT INTO `sys_district` VALUES ('2732', '317', '甘德县', '0');
INSERT INTO `sys_district` VALUES ('2733', '317', '达日县', '0');
INSERT INTO `sys_district` VALUES ('2734', '317', '久治县', '0');
INSERT INTO `sys_district` VALUES ('2735', '317', '玛多县', '0');
INSERT INTO `sys_district` VALUES ('2736', '318', '玉树县', '0');
INSERT INTO `sys_district` VALUES ('2737', '318', '杂多县', '0');
INSERT INTO `sys_district` VALUES ('2738', '318', '称多县', '0');
INSERT INTO `sys_district` VALUES ('2739', '318', '治多县', '0');
INSERT INTO `sys_district` VALUES ('2740', '318', '囊谦县', '0');
INSERT INTO `sys_district` VALUES ('2741', '318', '曲麻莱县', '0');
INSERT INTO `sys_district` VALUES ('2742', '319', '格尔木市', '0');
INSERT INTO `sys_district` VALUES ('2743', '319', '德令哈市', '0');
INSERT INTO `sys_district` VALUES ('2744', '319', '乌兰县', '0');
INSERT INTO `sys_district` VALUES ('2745', '319', '都兰县', '0');
INSERT INTO `sys_district` VALUES ('2746', '319', '天峻县', '0');
INSERT INTO `sys_district` VALUES ('2747', '320', '兴庆区', '0');
INSERT INTO `sys_district` VALUES ('2748', '320', '西夏区', '0');
INSERT INTO `sys_district` VALUES ('2749', '320', '金凤区', '0');
INSERT INTO `sys_district` VALUES ('2750', '320', '永宁县', '0');
INSERT INTO `sys_district` VALUES ('2751', '320', '贺兰县', '0');
INSERT INTO `sys_district` VALUES ('2752', '320', '灵武市', '0');
INSERT INTO `sys_district` VALUES ('2753', '321', '大武口区', '0');
INSERT INTO `sys_district` VALUES ('2754', '321', '惠农区', '0');
INSERT INTO `sys_district` VALUES ('2755', '321', '平罗县', '0');
INSERT INTO `sys_district` VALUES ('2756', '322', '利通区', '0');
INSERT INTO `sys_district` VALUES ('2757', '322', '盐池县', '0');
INSERT INTO `sys_district` VALUES ('2758', '322', '同心县', '0');
INSERT INTO `sys_district` VALUES ('2759', '322', '青铜峡市', '0');
INSERT INTO `sys_district` VALUES ('2760', '323', '原州区', '0');
INSERT INTO `sys_district` VALUES ('2761', '323', '西吉县', '0');
INSERT INTO `sys_district` VALUES ('2762', '323', '隆德县', '0');
INSERT INTO `sys_district` VALUES ('2763', '323', '泾源县', '0');
INSERT INTO `sys_district` VALUES ('2764', '323', '彭阳县', '0');
INSERT INTO `sys_district` VALUES ('2765', '324', '沙坡头区', '0');
INSERT INTO `sys_district` VALUES ('2766', '324', '中宁县', '0');
INSERT INTO `sys_district` VALUES ('2767', '324', '海原县', '0');
INSERT INTO `sys_district` VALUES ('2768', '325', '天山区', '0');
INSERT INTO `sys_district` VALUES ('2769', '325', '沙依巴克区', '0');
INSERT INTO `sys_district` VALUES ('2770', '325', '新市区', '0');
INSERT INTO `sys_district` VALUES ('2771', '325', '水磨沟区', '0');
INSERT INTO `sys_district` VALUES ('2772', '325', '头屯河区', '0');
INSERT INTO `sys_district` VALUES ('2773', '325', '达坂城区', '0');
INSERT INTO `sys_district` VALUES ('2774', '325', '东山区', '0');
INSERT INTO `sys_district` VALUES ('2775', '325', '乌鲁木齐县', '0');
INSERT INTO `sys_district` VALUES ('2776', '326', '独山子区', '0');
INSERT INTO `sys_district` VALUES ('2777', '326', '克拉玛依区', '0');
INSERT INTO `sys_district` VALUES ('2778', '326', '白碱滩区', '0');
INSERT INTO `sys_district` VALUES ('2779', '326', '乌尔禾区', '0');
INSERT INTO `sys_district` VALUES ('2780', '327', '吐鲁番市', '0');
INSERT INTO `sys_district` VALUES ('2781', '327', '鄯善县', '0');
INSERT INTO `sys_district` VALUES ('2782', '327', '托克逊县', '0');
INSERT INTO `sys_district` VALUES ('2783', '328', '哈密市', '0');
INSERT INTO `sys_district` VALUES ('2784', '328', '巴里坤哈萨克自治县', '0');
INSERT INTO `sys_district` VALUES ('2785', '328', '伊吾县', '0');
INSERT INTO `sys_district` VALUES ('2786', '329', '昌吉市', '0');
INSERT INTO `sys_district` VALUES ('2787', '329', '阜康市', '0');
INSERT INTO `sys_district` VALUES ('2788', '329', '米泉市', '0');
INSERT INTO `sys_district` VALUES ('2789', '329', '呼图壁县', '0');
INSERT INTO `sys_district` VALUES ('2790', '329', '玛纳斯县', '0');
INSERT INTO `sys_district` VALUES ('2791', '329', '奇台县', '0');
INSERT INTO `sys_district` VALUES ('2792', '329', '吉木萨尔县', '0');
INSERT INTO `sys_district` VALUES ('2793', '329', '木垒哈萨克自治县', '0');
INSERT INTO `sys_district` VALUES ('2794', '330', '博乐市', '0');
INSERT INTO `sys_district` VALUES ('2795', '330', '精河县', '0');
INSERT INTO `sys_district` VALUES ('2796', '330', '温泉县', '0');
INSERT INTO `sys_district` VALUES ('2797', '331', '库尔勒市', '0');
INSERT INTO `sys_district` VALUES ('2798', '331', '轮台县', '0');
INSERT INTO `sys_district` VALUES ('2799', '331', '尉犁县', '0');
INSERT INTO `sys_district` VALUES ('2800', '331', '若羌县', '0');
INSERT INTO `sys_district` VALUES ('2801', '331', '且末县', '0');
INSERT INTO `sys_district` VALUES ('2802', '331', '焉耆回族自治县', '0');
INSERT INTO `sys_district` VALUES ('2803', '331', '和静县', '0');
INSERT INTO `sys_district` VALUES ('2804', '331', '和硕县', '0');
INSERT INTO `sys_district` VALUES ('2805', '331', '博湖县', '0');
INSERT INTO `sys_district` VALUES ('2806', '332', '阿克苏市', '0');
INSERT INTO `sys_district` VALUES ('2807', '332', '温宿县', '0');
INSERT INTO `sys_district` VALUES ('2808', '332', '库车县', '0');
INSERT INTO `sys_district` VALUES ('2809', '332', '沙雅县', '0');
INSERT INTO `sys_district` VALUES ('2810', '332', '新和县', '0');
INSERT INTO `sys_district` VALUES ('2811', '332', '拜城县', '0');
INSERT INTO `sys_district` VALUES ('2812', '332', '乌什县', '0');
INSERT INTO `sys_district` VALUES ('2813', '332', '阿瓦提县', '0');
INSERT INTO `sys_district` VALUES ('2814', '332', '柯坪县', '0');
INSERT INTO `sys_district` VALUES ('2815', '333', '阿图什市', '0');
INSERT INTO `sys_district` VALUES ('2816', '333', '阿克陶县', '0');
INSERT INTO `sys_district` VALUES ('2817', '333', '阿合奇县', '0');
INSERT INTO `sys_district` VALUES ('2818', '333', '乌恰县', '0');
INSERT INTO `sys_district` VALUES ('2819', '334', '喀什市', '0');
INSERT INTO `sys_district` VALUES ('2820', '334', '疏附县', '0');
INSERT INTO `sys_district` VALUES ('2821', '334', '疏勒县', '0');
INSERT INTO `sys_district` VALUES ('2822', '334', '英吉沙县', '0');
INSERT INTO `sys_district` VALUES ('2823', '334', '泽普县', '0');
INSERT INTO `sys_district` VALUES ('2824', '334', '莎车县', '0');
INSERT INTO `sys_district` VALUES ('2825', '334', '叶城县', '0');
INSERT INTO `sys_district` VALUES ('2826', '334', '麦盖提县', '0');
INSERT INTO `sys_district` VALUES ('2827', '334', '岳普湖县', '0');
INSERT INTO `sys_district` VALUES ('2828', '334', '伽师县', '0');
INSERT INTO `sys_district` VALUES ('2829', '334', '巴楚县', '0');
INSERT INTO `sys_district` VALUES ('2830', '334', '塔什库尔干塔吉克自治县', '0');
INSERT INTO `sys_district` VALUES ('2831', '335', '和田市', '0');
INSERT INTO `sys_district` VALUES ('2832', '335', '和田县', '0');
INSERT INTO `sys_district` VALUES ('2833', '335', '墨玉县', '0');
INSERT INTO `sys_district` VALUES ('2834', '335', '皮山县', '0');
INSERT INTO `sys_district` VALUES ('2835', '335', '洛浦县', '0');
INSERT INTO `sys_district` VALUES ('2836', '335', '策勒县', '0');
INSERT INTO `sys_district` VALUES ('2837', '335', '于田县', '0');
INSERT INTO `sys_district` VALUES ('2838', '335', '民丰县', '0');
INSERT INTO `sys_district` VALUES ('2839', '336', '伊宁市', '0');
INSERT INTO `sys_district` VALUES ('2840', '336', '奎屯市', '0');
INSERT INTO `sys_district` VALUES ('2841', '336', '伊宁县', '0');
INSERT INTO `sys_district` VALUES ('2842', '336', '察布查尔锡伯自治县', '0');
INSERT INTO `sys_district` VALUES ('2843', '336', '霍城县', '0');
INSERT INTO `sys_district` VALUES ('2844', '336', '巩留县', '0');
INSERT INTO `sys_district` VALUES ('2845', '336', '新源县', '0');
INSERT INTO `sys_district` VALUES ('2846', '336', '昭苏县', '0');
INSERT INTO `sys_district` VALUES ('2847', '336', '特克斯县', '0');
INSERT INTO `sys_district` VALUES ('2848', '336', '尼勒克县', '0');
INSERT INTO `sys_district` VALUES ('2849', '337', '塔城市', '0');
INSERT INTO `sys_district` VALUES ('2850', '337', '乌苏市', '0');
INSERT INTO `sys_district` VALUES ('2851', '337', '额敏县', '0');
INSERT INTO `sys_district` VALUES ('2852', '337', '沙湾县', '0');
INSERT INTO `sys_district` VALUES ('2853', '337', '托里县', '0');
INSERT INTO `sys_district` VALUES ('2854', '337', '裕民县', '0');
INSERT INTO `sys_district` VALUES ('2855', '337', '和布克赛尔蒙古自治县', '0');
INSERT INTO `sys_district` VALUES ('2856', '338', '阿勒泰市', '0');
INSERT INTO `sys_district` VALUES ('2857', '338', '布尔津县', '0');
INSERT INTO `sys_district` VALUES ('2858', '338', '富蕴县', '0');
INSERT INTO `sys_district` VALUES ('2859', '338', '福海县', '0');
INSERT INTO `sys_district` VALUES ('2860', '338', '哈巴河县', '0');
INSERT INTO `sys_district` VALUES ('2861', '338', '青河县', '0');
INSERT INTO `sys_district` VALUES ('2862', '338', '吉木乃县', '0');
INSERT INTO `sys_district` VALUES ('2867', '352', '宛平县', '1');
INSERT INTO `sys_district` VALUES ('2868', '352', '111111', '5');
INSERT INTO `sys_district` VALUES ('2869', '345', '台北', '2');

-- ----------------------------
-- Table structure for `sys_hooks`
-- ----------------------------
DROP TABLE IF EXISTS `sys_hooks`;
CREATE TABLE `sys_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型  1 视图 2 控制器',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `status` tinyint(2) DEFAULT '1',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=65;

-- ----------------------------
-- Records of sys_hooks
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_instance`
-- ----------------------------
DROP TABLE IF EXISTS `sys_instance`;
CREATE TABLE `sys_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_name` varchar(50) NOT NULL DEFAULT '' COMMENT '实例名',
  `instance_typeid` int(11) NOT NULL DEFAULT '2' COMMENT '实例类型ID',
  `qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '实例二维码',
  `remark` text COMMENT '实例简介',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1365 COMMENT='系统实例表';

-- ----------------------------
-- Records of sys_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_instance_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_instance_type`;
CREATE TABLE `sys_instance_type` (
  `instance_typeid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '实例类型ID',
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '实例类型名称',
  `type_module_array` text NOT NULL COMMENT '实例类型权限',
  `type_desc` text NOT NULL COMMENT '实例类型说明',
  `type_sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`instance_typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='实例类型';

-- ----------------------------
-- Records of sys_instance_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块标题',
  `module` varchar(255) NOT NULL DEFAULT 'admin' COMMENT '项目名',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器名',
  `method` varchar(255) NOT NULL DEFAULT '' COMMENT '方法名',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '上级模块ID',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '深度等级',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是菜单',
  `is_dev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `desc` text COMMENT '模块描述',
  `module_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '模块图片',
  `icon_class` varchar(255) NOT NULL DEFAULT '' COMMENT '矢量图class',
  `is_control_auth` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否控制权限',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10176 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='系统模块表';

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('121', '模块列表', 'adminsite', 'system', 'modulelist', '120', '2', 'system/modulelist', '1', '1', '5', '', 'qq_login.png', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('122', '添加模块', 'adminsite', 'system', 'addmodule', '121', '3', 'system/addmodule', '0', '0', '1', '添加模块', 'qq_login.png', '', '1', '0', '1479976597');
INSERT INTO `sys_module` VALUES ('123', '修改模块', 'adminsite', 'system', 'editmodule', '121', '3', 'system/editmodule', '0', '0', '2', '修改模块', 'qq_login.png', '', '1', '0', '1479976646');
INSERT INTO `sys_module` VALUES ('126', '管理员列表', 'adminsite', 'auth', 'userlist', '218', '2', 'auth/userlist', '1', '0', '5', '', 'nav64.png', '', '1', '0', '1484650663');
INSERT INTO `sys_module` VALUES ('127', '用户列表', 'adminsite', 'auth', 'userlist', '126', '3', 'auth/userlist', '0', '0', '1', null, 'qq_login.png', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('128', '权限组', 'adminsite', 'auth', 'authgrouplist', '126', '3', 'auth/authgrouplist', '0', '0', '2', '用户组', 'qq_login.png', '', '1', '0', '1479976919');
INSERT INTO `sys_module` VALUES ('129', '删除模块', 'adminsite', 'system', 'delmodule', '121', '3', 'system/delmodule', '0', '0', '0', '模块列表', 'qq_login.png', '', '1', '1477618350', '1479976723');
INSERT INTO `sys_module` VALUES ('133', '添加用户组', 'adminsite', 'auth', 'addusergroup', '128', '3', 'auth/addusergroup', '0', '0', '2', '用户组', 'qq_login.png', '', '1', '1477628544', '1479977008');
INSERT INTO `sys_module` VALUES ('137', '会员', 'adminsite', 'member', 'memberlist', '0', '1', 'member/memberlist', '1', '0', '4', '', 'qq_login.png', '', '1', '1477994717', '1493206725');
INSERT INTO `sys_module` VALUES ('139', '相册管理', 'adminsite', 'system', 'albumlist', '149', '2', 'system/albumlist', '1', '0', '10', '', 'nav11.png', '', '1', '1478158094', '1496819610');
INSERT INTO `sys_module` VALUES ('144', '编辑用户', 'adminsite', 'auth', 'edituser', '127', '3', 'auth/edituser', '0', '0', '5', '用户', 'qq_login.png', '', '1', '1478837447', '1479976963');
INSERT INTO `sys_module` VALUES ('145', '会员列表', 'adminsite', 'member', 'memberlist', '137', '2', 'member/memberlist', '1', '0', '1', '', 'nav22.png', '', '1', '1478846113', '1478846203');
INSERT INTO `sys_module` VALUES ('149', '商品', 'adminsite', 'goods', 'goodslist', '0', '1', 'goods/goodslist', '1', '0', '1', '商品模块', 'qq_login.png', '', '1', '1479268148', '1493973167');
INSERT INTO `sys_module` VALUES ('150', '商品列表', 'adminsite', 'goods', 'goodslist', '149', '2', 'goods/goodslist', '1', '0', '1', '', 'nav65.png', '', '1', '1479268236', '1491898725');
INSERT INTO `sys_module` VALUES ('151', '商品发布', 'adminsite', 'goods', 'addgoods', '149', '2', 'goods/addgoods', '1', '0', '2', '', 'nav10.png', '', '1', '1479268307', '0');
INSERT INTO `sys_module` VALUES ('169', '图片管理', 'adminsite', 'system', 'albumpicturelist', '139', '3', 'system/albumpicturelist', '0', '0', '5', '', 'qq_login.png', '', '1', '1479464708', '1479976790');
INSERT INTO `sys_module` VALUES ('170', '添加运费模板', 'adminsite', 'express', 'transportationadd', '164', '3', 'express/transportationadd', '0', '0', '1', '添加运费模板', 'qq_login.png', '', '1', '1479700610', '1484894376');
INSERT INTO `sys_module` VALUES ('171', '商品标签', 'adminsite', 'goods', 'goodsgrouplist', '149', '2', 'goods/goodsgrouplist', '1', '0', '3', '', 'nav7.png', '', '1', '1479873298', '1479960182');
INSERT INTO `sys_module` VALUES ('172', '添加商品标签', 'adminsite', 'goods', 'addgoodsgroup', '171', '3', 'goods/addgoodsgroup', '0', '0', '6', '添加商品分组', 'qq_login.png', '', '1', '1479873424', '1479960243');
INSERT INTO `sys_module` VALUES ('176', '运费模板修改', 'adminsite', 'express', 'transportationedit', '164', '3', 'express/transportationedit', '0', '0', '6', 'sd', 'qq_login.png', '', '1', '1480040625', '0');
INSERT INTO `sys_module` VALUES ('179', '营销', 'adminsite', 'promotion', 'coupontypelist', '0', '1', 'promotion/coupontypelist', '1', '0', '3', '优惠券类型列表', 'qq_login.png', '', '1', '1480491652', '1480491725');
INSERT INTO `sys_module` VALUES ('180', '优惠券', 'adminsite', 'promotion', 'coupontypelist', '179', '2', 'promotion/coupontypelist', '1', '0', '1', '', 'nav15.png', '', '1', '1480491846', '0');
INSERT INTO `sys_module` VALUES ('184', '订单', 'adminsite', 'order', 'orderlist', '0', '1', 'order/orderlist', '1', '0', '2', '订单列表', 'qq_login.png', '', '1', '1480563137', '0');
INSERT INTO `sys_module` VALUES ('185', '订单列表', 'adminsite', 'order', 'orderlist', '184', '2', 'order/orderlist', '1', '0', '1', '', 'nav12.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('186', '添加优惠券', 'adminsite', 'promotion', 'addcoupontype', '180', '3', 'promotion/addcoupontype', '1', '0', '2', '添加优惠券类型', 'qq_login.png', '', '1', '1480573171', '0');
INSERT INTO `sys_module` VALUES ('187', '修改优惠券', 'adminsite', 'promotion', 'updatecoupontype', '180', '3', 'promotion/updatecoupontype', '1', '0', '3', '修改优惠券类型', 'qq_login.png', '', '1', '1480904943', '0');
INSERT INTO `sys_module` VALUES ('189', '物流公司', 'adminsite', 'express', 'expresscompany', '529', '3', 'express/expresscompany', '0', '0', '60', '物流公司', 'qq_login.png', '', '1', '1481254866', '1484894344');
INSERT INTO `sys_module` VALUES ('190', '订单详情', 'adminsite', 'order', 'orderdetail', '185', '3', 'order/orderdetail', '0', '0', '1', '订单详情', 'qq_login.png', '', '1', '1481258173', '0');
INSERT INTO `sys_module` VALUES ('191', '添加物流公司', 'adminsite', 'express', 'addexpresscompany', '529', '3', 'express/addexpresscompany', '1', '0', '1', '添加物流公司', 'qq_login.png', '', '1', '1481267828', '0');
INSERT INTO `sys_module` VALUES ('192', '物流公司修改', 'adminsite', 'express', 'updateexpresscompany', '529', '3', 'express/updateexpresscompany', '1', '0', '2', '物流公司修改排序', 'qq_login.png', '', '1', '1481271808', '0');
INSERT INTO `sys_module` VALUES ('194', '退款详情', 'adminsite', 'order', 'orderrefunddetail', '185', '3', 'order/orderrefunddetail', '0', '0', '2', '退款详情', 'qq_login.png', '', '1', '1481872074', '0');
INSERT INTO `sys_module` VALUES ('195', '赠品', 'adminsite', 'promotion', 'giftlist', '179', '2', 'promotion/giftlist', '1', '0', '3', '', 'nav17.png', '', '1', '1482113074', '1494215988');
INSERT INTO `sys_module` VALUES ('196', '添加赠品', 'adminsite', 'promotion', 'addgift', '195', '3', 'promotion/addgift', '1', '0', '0', '添加赠品', 'qq_login.png', '', '1', '1482113664', '1482117539');
INSERT INTO `sys_module` VALUES ('197', '修改赠品', 'adminsite', 'promotion', 'updategift', '195', '3', 'promotion/updategift', '1', '0', '0', '修改赠品', 'qq_login.png', '', '1', '1482113715', '1482117558');
INSERT INTO `sys_module` VALUES ('198', '满减送', 'adminsite', 'promotion', 'mansonglist', '179', '2', 'promotion/mansonglist', '1', '0', '4', '', 'nav18.png', '', '1', '1482138580', '1482138597');
INSERT INTO `sys_module` VALUES ('199', '添加满减满送', 'adminsite', 'promotion', 'addmansong', '198', '3', 'promotion/addmansong', '1', '0', '0', '满减送', 'qq_login.png', '', '1', '1482140311', '0');
INSERT INTO `sys_module` VALUES ('200', '编辑满减送', 'adminsite', 'promotion', 'updatemansong', '198', '3', 'promotion/updatemansong', '1', '0', '1', '编辑满减送', 'qq_login.png', '', '1', '1482907059', '0');
INSERT INTO `sys_module` VALUES ('201', '限时折扣', 'adminsite', 'promotion', 'getdiscountlist', '179', '2', 'promotion/getdiscountlist', '1', '0', '5', '', 'nav19.png', '', '1', '1483949283', '0');
INSERT INTO `sys_module` VALUES ('202', '添加限时折扣', 'adminsite', 'promotion', 'adddiscount', '201', '3', 'promotion/adddiscount', '1', '0', '0', '添加限时折扣', 'qq_login.png', '', '1', '1483951104', '0');
INSERT INTO `sys_module` VALUES ('203', '修改限时折扣', 'adminsite', 'promotion', 'updatediscount', '201', '3', 'promotion/updatediscount', '1', '0', '1', '修改限时折扣', 'qq_login.png', '', '1', '1483951151', '1483958451');
INSERT INTO `sys_module` VALUES ('210', '修改商品标签', 'adminsite', 'goods', 'updategoodsgroup', '171', '3', 'goods/updategoodsgroup', '0', '0', '2', '修改商品分组', 'qq_login.png', '', '1', '1484120298', '1484125917');
INSERT INTO `sys_module` VALUES ('218', '设置', 'adminsite', 'config', 'webconfig', '0', '1', 'config/webconfig', '1', '0', '11', '店铺设置', 'qq_login.png', '', '1', '1484617355', '1493348177');
INSERT INTO `sys_module` VALUES ('221', '支付配置', 'adminsite', 'config', 'paymentconfig', '10096', '3', 'config/paymentconfig', '0', '0', '2', '支付配置', 'qq_login.png', '', '1', '1484623427', '1496820428');
INSERT INTO `sys_module` VALUES ('334', '咨询管理', 'adminsite', 'saleservice', 'consultlist', '149', '2', 'saleservice/consultlist', '0', '0', '8', '', 'nav3.png', '', '0', '1488875702', '1496392553');
INSERT INTO `sys_module` VALUES ('335', '微信', 'adminsite', 'wchat', 'config', '0', '1', 'wchat/config', '1', '0', '8', '微信', 'qq_login.png', '', '1', '1488945338', '1493015492');
INSERT INTO `sys_module` VALUES ('336', '公众号管理', 'adminsite', 'wchat', 'config', '335', '2', 'wchat/config', '1', '0', '1', '', 'nav40.png', '', '1', '1488945416', '0');
INSERT INTO `sys_module` VALUES ('339', '微信菜单管理', 'adminsite', 'wchat', 'menu', '335', '2', 'wchat/menu', '1', '0', '2', '', 'nav41.png', '', '1', '1489046481', '0');
INSERT INTO `sys_module` VALUES ('340', '推广二维码管理', 'adminsite', 'wchat', 'weixinqrcodetemplate', '335', '2', 'wchat/weixinqrcodetemplate', '1', '0', '3', '', 'nav42.png', '', '1', '1489046596', '1490153341');
INSERT INTO `sys_module` VALUES ('341', '回复设置', 'adminsite', 'wchat', 'replayconfig', '335', '2', 'wchat/replayconfig', '1', '0', '4', '', 'nav43.png', '', '1', '1489046662', '0');
INSERT INTO `sys_module` VALUES ('342', '消息素材管理', 'adminsite', 'wchat', 'materialmessage', '335', '2', 'wchat/materialmessage', '1', '0', '6', '', 'nav44.png', '', '1', '1489046731', '0');
INSERT INTO `sys_module` VALUES ('343', '分享内容设置', 'adminsite', 'wchat', 'shareconfig', '335', '2', 'wchat/shareconfig', '1', '0', '7', '', 'nav46.png', '', '1', '1489046804', '0');
INSERT INTO `sys_module` VALUES ('358', '自定义推广二维码', 'adminsite', 'wchat', 'qrcode', '340', '3', 'wchat/qrcode', '0', '0', '1', '自定义二维码', 'qq_login.png', '', '1', '1490153257', '1490153278');
INSERT INTO `sys_module` VALUES ('359', '添加回复', 'adminsite', 'wchat', 'addorupdatekeyreplay', '341', '3', 'wchat/addorupdatekeyreplay', '1', '0', '1', '', 'qq_login.png', '', '1', '1490236498', '0');
INSERT INTO `sys_module` VALUES ('360', '添加用户', 'adminsite', 'auth', 'adduser', '127', '3', 'auth/adduser', '0', '0', '1', '添加用户', 'qq_login.png', '', '1', '1490236731', '0');
INSERT INTO `sys_module` VALUES ('361', '一键关注设置', 'adminsite', 'wchat', 'onekeysubscribe', '335', '2', 'wchat/onekeysubscribe', '0', '0', '6', '一键关注设置', 'nav45.png', '', '1', '1490318979', '1496386363');
INSERT INTO `sys_module` VALUES ('381', '广告管理', 'adminsite', 'system', 'shopadvlist', '477', '2', 'system/shopadvlist', '1', '0', '6', '', 'nav55.png', '', '1', '1490774263', '1496320676');
INSERT INTO `sys_module` VALUES ('382', '广告管理', 'adminsite', 'system', 'shopadvlist', '381', '3', 'system/shopadvlist', '0', '0', '0', '', 'nav55.png', '', '1', '1490785255', '0');
INSERT INTO `sys_module` VALUES ('383', '添加广告位', 'adminsite', 'system', 'addshopadvposition', '381', '3', 'system/addshopadvposition', '0', '0', '0', '添加广告位', 'qq_login.png', '', '1', '1490835009', '0');
INSERT INTO `sys_module` VALUES ('387', '广告位编辑', 'adminsite', 'system', 'updateshopadvposition', '381', '3', 'system/updateshopadvposition', '1', '0', '0', '广告位编辑', 'qq_login.png', '', '1', '1490851266', '0');
INSERT INTO `sys_module` VALUES ('388', '添加广告', 'adminsite', 'system', 'addshopadv', '381', '3', 'system/addshopadv', '0', '0', '0', '添加广告', 'qq_login.png', '', '1', '1490854140', '0');
INSERT INTO `sys_module` VALUES ('389', '广告编辑', 'adminsite', 'system', 'updateshopadv', '381', '3', 'system/updateshopadv', '0', '0', '0', '', 'qq_login.png', '', '1', '1490857038', '0');
INSERT INTO `sys_module` VALUES ('390', '促销版块', 'adminsite', 'system', 'goodsrecommendclass', '10004', '3', 'system/goodsrecommendclass', '0', '0', '10', '促销版块管理', 'qq_login.png', '', '1', '1490861814', '1496320694');
INSERT INTO `sys_module` VALUES ('392', '首页楼层', 'adminsite', 'system', 'blocklist', '10004', '3', 'system/blocklist', '0', '0', '11', '', 'qq_login.png', '', '1', '1490947012', '1496320711');
INSERT INTO `sys_module` VALUES ('394', '添加楼层', 'adminsite', 'system', 'addblock', '10004', '3', 'system/addblock', '0', '0', '0', '', 'qq_login.png', '', '1', '1490948318', '0');
INSERT INTO `sys_module` VALUES ('395', '楼层编辑', 'adminsite', 'system', 'updateblock', '10004', '3', 'system/updateblock', '0', '0', '0', '', 'qq_login.png', '', '1', '1490948388', '1490952538');
INSERT INTO `sys_module` VALUES ('398', '个人资料', 'adminsite', 'auth', 'userdetail', '126', '2', 'auth/userdetail', '1', '0', '0', '个人资料', 'qq_login.png', '', '0', '1491029995', '1494298490');
INSERT INTO `sys_module` VALUES ('403', '销售排行', 'adminsite', 'account', 'shopgoodssalesrank', '409', '2', 'account/shopgoodssalesrank', '1', '0', '9', '', 'nav39.png', '', '1', '1491040090', '1496819701');
INSERT INTO `sys_module` VALUES ('405', '商品销售统计', 'adminsite', 'account', 'shopgoodsaccountlist', '403', '3', 'account/shopgoodsaccountlist', '0', '0', '6', '商品销售统计', 'qq_login.png', '', '1', '1491042742', '0');
INSERT INTO `sys_module` VALUES ('409', '数据', 'adminsite', 'account', 'shopsalesaccount', '0', '1', 'account/shopsalesaccount', '1', '0', '7', '资产', 'qq_login.png', '', '1', '1493281488', '1493974412');
INSERT INTO `sys_module` VALUES ('418', '网站设置', 'adminsite', 'config', 'webconfig', '528', '3', 'config/webconfig', '0', '0', '2', '', 'qq_login.png', '', '1', '1492755047', '0');
INSERT INTO `sys_module` VALUES ('419', '商品分类', 'adminsite', 'goods', 'goodscategorylist', '149', '2', 'goods/goodscategorylist', '1', '0', '2', '', 'nav9.png', '', '1', '1492755701', '0');
INSERT INTO `sys_module` VALUES ('420', '添加商品分类', 'adminsite', 'goods', 'addgoodscategory', '419', '3', 'goods/addgoodscategory', '1', '0', '2', '添加商品分类', 'qq_login.png', '', '1', '1492755811', '1492755828');
INSERT INTO `sys_module` VALUES ('421', '修改商品分类', 'adminsite', 'goods', 'updategoodscategory', '419', '3', 'goods/updategoodscategory', '1', '0', '1', '修改商品分类', 'qq_login.png', '', '1', '1492755920', '0');
INSERT INTO `sys_module` VALUES ('422', '删除商品分类', 'adminsite', 'goods', 'deletegoodscategory', '419', '3', 'goods/deletegoodscategory', '1', '0', '2', '删除商品分类', 'qq_login.png', '', '1', '1492755973', '0');
INSERT INTO `sys_module` VALUES ('423', '商品品牌', 'adminsite', 'goods', 'goodsbrandlist', '149', '2', 'goods/goodsbrandlist', '1', '0', '3', '', 'nav8.png', '', '1', '1492756038', '0');
INSERT INTO `sys_module` VALUES ('424', '添加商品品牌', 'adminsite', 'goods', 'addgoodsbrand', '423', '3', 'goods/addgoodsbrand', '1', '0', '1', '添加商品品牌', 'qq_login.png', '', '1', '1492756096', '0');
INSERT INTO `sys_module` VALUES ('425', '修改商品品牌', 'adminsite', 'goods', 'updategoodsbrand', '423', '3', 'goods/updategoodsbrand', '1', '0', '4', '修改商品品牌', 'qq_login.png', '', '1', '1492756169', '0');
INSERT INTO `sys_module` VALUES ('427', '导航管理', 'adminsite', 'config', 'shopnavigationlist', '477', '2', 'config/shopnavigationlist', '1', '0', '2', '导航', 'nav51.png', '', '1', '1492761752', '1496320733');
INSERT INTO `sys_module` VALUES ('428', '添加导航', 'adminsite', 'config', 'addshopnavigation', '427', '3', 'config/addshopnavigation', '0', '0', '1', '添加导航', 'qq_login.png', '', '0', '1492761909', '0');
INSERT INTO `sys_module` VALUES ('429', '修改导航', 'adminsite', 'config', 'updateshopnavigation', '427', '3', 'config/updateshopnavigation', '0', '0', '2', '修改导航', 'qq_login.png', '', '0', '1492762515', '0');
INSERT INTO `sys_module` VALUES ('430', '友情链接', 'adminsite', 'config', 'linklist', '477', '2', 'config/linklist', '0', '0', '10', '', 'nav59.png', '', '0', '1492765269', '1496320750');
INSERT INTO `sys_module` VALUES ('431', '文章管理', 'adminsite', 'cms', 'articlelist', '477', '2', 'cms/articlelist', '1', '0', '7', '', 'nav56.png', '', '1', '1492782512', '1492782619');
INSERT INTO `sys_module` VALUES ('432', '文章列表', 'adminsite', 'cms', 'articlelist', '431', '3', 'cms/articlelist', '0', '0', '1', '文章列表', 'qq_login.png', '', '1', '1492782808', '1492782837');
INSERT INTO `sys_module` VALUES ('433', '文章分类', 'adminsite', 'cms', 'articleclasslist', '431', '3', 'cms/articleclasslist', '0', '0', '2', '文章列表', 'qq_login.png', '', '1', '1492782934', '1492782952');
INSERT INTO `sys_module` VALUES ('434', '评论列表', 'adminsite', 'cms', 'commentarticle', '431', '2', 'cms/commentarticle', '0', '0', '3', '评论列表', 'qq_login.png', '', '1', '1492782991', '1497084797');
INSERT INTO `sys_module` VALUES ('436', '添加友情链接', 'adminsite', 'config', 'addlink', '430', '3', 'config/addlink', '0', '0', '1', '添加友情链接', 'qq_login.png', '', '1', '1493190273', '1493190306');
INSERT INTO `sys_module` VALUES ('437', '编辑友情链接', 'adminsite', 'config', 'updatelink', '430', '3', 'config/updatelink', '0', '0', '2', '编辑友情链接', 'qq_login.png', '', '1', '1493192018', '0');
INSERT INTO `sys_module` VALUES ('439', '通知系统', 'adminsite', 'config', 'notifyindex', '528', '3', 'config/notifyindex', '0', '0', '26', 'messageConfig', 'qq_login.png', '', '1', '1493194795', '1496722814');
INSERT INTO `sys_module` VALUES ('440', '帮助类型', 'adminsite', 'config', 'helpclass', '530', '3', 'config/helpclass', '0', '0', '10', '帮助类型', 'qq_login.png', '', '1', '1493199934', '1496320786');
INSERT INTO `sys_module` VALUES ('441', '帮助内容', 'adminsite', 'config', 'helpdocument', '530', '3', 'config/helpdocument', '0', '0', '18', '', 'qq_login.png', '', '1', '1493201598', '1496320803');
INSERT INTO `sys_module` VALUES ('442', '添加帮助类型', 'adminsite', 'config', 'addhelpclass', '530', '3', 'config/addhelpclass', '0', '0', '1', '添加帮助类型', 'qq_login.png', '', '1', '1493201673', '0');
INSERT INTO `sys_module` VALUES ('443', '修改帮助内容', 'adminsite', 'config', 'updatedocument', '530', '3', 'config/updatedocument', '0', '0', '2', 'updateDocument.html', 'qq_login.png', '', '1', '1493203409', '0');
INSERT INTO `sys_module` VALUES ('444', '添加帮助内容', 'adminsite', 'config', 'adddocument', '530', '3', 'config/adddocument', '0', '0', '2', 'aaddDocument', 'qq_login.png', '', '1', '1493205866', '0');
INSERT INTO `sys_module` VALUES ('445', '首页公告', 'adminsite', 'config', 'usernotice', '477', '2', 'config/usernotice', '1', '0', '1', '', 'nav50.png', '', '1', '1493206256', '1496321121');
INSERT INTO `sys_module` VALUES ('446', '积分管理', 'adminsite', 'promotion', 'pointconfig', '179', '2', 'promotion/pointconfig', '1', '0', '1', '', 'nav16.png', '', '1', '1493206530', '1496894015');
INSERT INTO `sys_module` VALUES ('447', '粉丝列表', 'adminsite', 'member', 'weixinfanslist', '335', '2', 'member/weixinfanslist', '1', '0', '10', '', 'nav47.png', '', '1', '1493278702', '0');
INSERT INTO `sys_module` VALUES ('450', '修改消息素材', 'adminsite', 'wchat', 'updatemedia', '342', '3', 'wchat/updatemedia', '1', '0', '1', '', 'qq_login.png', '', '1', '1493282078', '1493282297');
INSERT INTO `sys_module` VALUES ('451', '添加消息素材', 'adminsite', 'wchat', 'addmedia', '342', '3', 'wchat/addmedia', '1', '0', '1', '', 'qq_login.png', '', '1', '1493282371', '0');
INSERT INTO `sys_module` VALUES ('452', '添加文章', 'adminsite', 'cms', 'addarticle', '431', '3', 'cms/addarticle', '0', '0', '4', '', 'qq_login.png', '', '1', '1493287571', '1493289825');
INSERT INTO `sys_module` VALUES ('454', '销售统计', 'adminsite', 'account', 'orderaccountcount', '409', '2', 'account/orderaccountcount', '0', '0', '6', '', 'nav38.png', '', '0', '1493289961', '1493981704');
INSERT INTO `sys_module` VALUES ('455', '修改文章', 'adminsite', 'cms', 'updatearticle', '431', '3', 'cms/updatearticle', '0', '0', '2', '', 'qq_login.png', '', '1', '1493343780', '0');
INSERT INTO `sys_module` VALUES ('456', '第三方登录', 'adminsite', 'config', 'partylogin', '528', '3', 'config/partylogin', '0', '0', '25', '', 'qq_login.png', '', '1', '1493347646', '1496903436');
INSERT INTO `sys_module` VALUES ('457', '销售明细', 'adminsite', 'account', 'orderrecordslist', '454', '3', 'account/orderrecordslist', '0', '0', '2', '', 'qq_login.png', '', '1', '1493705080', '1493705419');
INSERT INTO `sys_module` VALUES ('459', '销售概况', 'adminsite', 'account', 'shopsalesaccount', '409', '2', 'account/shopsalesaccount', '1', '0', '1', '', 'nav34.png', '', '1', '1493776001', '1493974321');
INSERT INTO `sys_module` VALUES ('460', '热卖商品', 'adminsite', 'account', 'bestsellergoods', '463', '3', 'account/bestsellergoods', '0', '0', '1', '', 'qq_login.png', '', '1', '1493867120', '1493972190');
INSERT INTO `sys_module` VALUES ('461', '同行热卖', 'adminsite', 'account', 'shopgoodsgroupsalecount', '409', '2', 'account/shopgoodsgroupsalecount', '1', '0', '4', '', 'nav36.png', '', '0', '1493946658', '1493950999');
INSERT INTO `sys_module` VALUES ('462', '运营报告', 'adminsite', 'account', 'shopreport', '409', '2', 'account/shopreport', '0', '0', '5', '', 'nav37.png', '', '1', '1493947412', '0');
INSERT INTO `sys_module` VALUES ('463', '商品分析', 'adminsite', 'account', 'shopgoodssaleslist', '409', '2', 'account/shopgoodssaleslist', '1', '0', '2', '', 'nav35.png', '', '1', '1493949799', '0');
INSERT INTO `sys_module` VALUES ('467', '首页', 'adminsite', 'index', 'index', '0', '1', 'index/index', '1', '0', '0', '', 'qq_login.png', '', '0', '1494485612', '1497071676');
INSERT INTO `sys_module` VALUES ('469', '满额包邮', 'adminsite', 'promotion', 'fullshipping', '179', '2', 'promotion/fullshipping', '1', '0', '6', '', 'nav20.png', '', '1', '1494928162', '0');
INSERT INTO `sys_module` VALUES ('471', '商家地址', 'adminsite', 'order', 'returnsetting', '529', '3', 'order/returnsetting', '0', '0', '70', '退货设置', 'qq_login.png', '', '1', '1496215760', '1496216046');
INSERT INTO `sys_module` VALUES ('472', '添加或修改', 'adminsite', 'order', 'addreturn', '529', '3', 'order/addreturn', '1', '0', '1', '添加退货', 'qq_login.png', '', '1', '1496215892', '1496216067');
INSERT INTO `sys_module` VALUES ('474', '首页公告', 'adminsite', 'config', 'updatenotice', '10005', '3', 'config/updatenotice', '0', '0', '15', '公告', 'nav50.png', '', '1', '1496291567', '1496320766');
INSERT INTO `sys_module` VALUES ('477', '网站', 'adminsite', 'config', 'shopnavigationlist', '0', '1', 'config/usernotice', '1', '0', '9', '', 'qq_login.png', '', '1', '1496303515', '1496821512');
INSERT INTO `sys_module` VALUES ('478', '商品评价', 'adminsite', 'goods', 'goodscomment', '149', '2', 'goods/goodscomment', '1', '0', '8', '', 'nav2.png', '', '1', '1496310914', '0');
INSERT INTO `sys_module` VALUES ('479', '商品规格', 'adminsite', 'goods', 'goodsspeclist', '149', '2', 'goods/goodsspeclist', '1', '0', '6', '', 'nav6.png', '', '1', '1496314078', '1496368479');
INSERT INTO `sys_module` VALUES ('480', '添加商品规格', 'adminsite', 'goods', 'addgoodsspec', '479', '3', 'goods/addgoodsspec', '0', '0', '1', '', 'qq_login.png', '', '1', '1496368895', '0');
INSERT INTO `sys_module` VALUES ('481', '修改商品规格', 'adminsite', 'goods', 'updategoodsspec', '479', '3', 'goods/updategoodsspec', '0', '0', '0', '', 'qq_login.png', '', '1', '1496386955', '0');
INSERT INTO `sys_module` VALUES ('482', '商品类型', 'adminsite', 'goods', 'attributelist', '149', '2', 'goods/attributelist', '1', '0', '7', '', 'nav4.png', '', '1', '1496392434', '1496392497');
INSERT INTO `sys_module` VALUES ('484', '添加商品类型', 'adminsite', 'goods', 'addattributeservice', '482', '3', 'goods/addattributeservice', '0', '0', '0', '', 'qq_login.png', '', '1', '1496395497', '1496457873');
INSERT INTO `sys_module` VALUES ('485', '修改商品类型', 'adminsite', 'goods', 'updategoodsattribute', '482', '3', 'goods/updategoodsattribute', '0', '0', '0', '', 'qq_login.png', '', '1', '1496396084', '0');
INSERT INTO `sys_module` VALUES ('486', '地区管理', 'adminsite', 'config', 'areamanagement', '529', '3', 'config/areamanagement', '0', '0', '50', '', 'qq_login.png', '', '1', '1496452390', '0');
INSERT INTO `sys_module` VALUES ('487', '模板编辑', 'adminsite', 'express', 'expresstemplate', '529', '3', 'express/expresstemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1496459993', '0');
INSERT INTO `sys_module` VALUES ('488', '会员等级', 'adminsite', 'member', 'memberlevellist', '137', '2', 'member/memberlevellist', '1', '0', '3', '', 'nav23.png', '', '1', '1496462360', '0');
INSERT INTO `sys_module` VALUES ('489', '添加等级', 'adminsite', 'member', 'addmemberlevel', '488', '3', 'member/addmemberlevel', '1', '0', '1', '添加等级', 'qq_login.png', '', '1', '1496483895', '0');
INSERT INTO `sys_module` VALUES ('490', '修改等级', 'adminsite', 'member', 'updatememberlevel', '488', '3', 'member/updatememberlevel', '1', '0', '0', '修改等级', 'qq_login.png', '', '1', '1496483933', '1496485692');
INSERT INTO `sys_module` VALUES ('491', '专题列表', 'adminsite', 'cms', 'topiclist', '477', '2', 'cms/topiclist', '0', '0', '8', '', 'nav57.png', '', '0', '1496630179', '1496632713');
INSERT INTO `sys_module` VALUES ('492', '添加专题', 'adminsite', 'cms', 'addtopic', '491', '3', 'cms/addtopic', '0', '0', '1', '添加专题', 'qq_login.png', '', '1', '1496630640', '1496632753');
INSERT INTO `sys_module` VALUES ('493', '修改专题', 'adminsite', 'cms', 'updatetopic', '491', '3', 'cms/updatetopic', '1', '0', '2', '修改专题', 'qq_login.png', '', '1', '1496630696', '1496632781');
INSERT INTO `sys_module` VALUES ('494', '购物设置', 'adminsite', 'config', 'shopset', '10096', '3', 'config/shopset', '0', '0', '1', '购物设置', 'qq_login.png', '', '1', '1496716845', '1496717062');
INSERT INTO `sys_module` VALUES ('495', '邮件设置', 'adminsite', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', 'qq_login.png', '', '1', '1496731597', '0');
INSERT INTO `sys_module` VALUES ('496', '短信设置', 'adminsite', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', 'qq_login.png', '', '1', '1496731636', '0');
INSERT INTO `sys_module` VALUES ('497', '会员积分明细', 'adminsite', 'member', 'pointdetail', '145', '3', 'member/pointdetail', '0', '0', '0', '', 'qq_login.png', '', '1', '1496739472', '0');
INSERT INTO `sys_module` VALUES ('498', '会员余额明细', 'adminsite', 'member', 'accountdetail', '145', '3', 'member/accountdetail', '0', '0', '0', '', 'qq_login.png', '', '1', '1496744512', '0');
INSERT INTO `sys_module` VALUES ('499', 'seo设置', 'adminsite', 'config', 'seoconfig', '528', '3', 'config/seoconfig', '0', '0', '2', 'seo设置', 'qq_login.png', '', '1', '1496750885', '1496751054');
INSERT INTO `sys_module` VALUES ('501', '微信支付', 'adminsite', 'config', 'payconfig', '221', '3', 'config/payconfig', '1', '0', '1', '微信支付', 'qq_login.png', '', '1', '1496821450', '0');
INSERT INTO `sys_module` VALUES ('502', '支付宝支付', 'adminsite', 'config', 'payaliconfig', '221', '3', 'config/payaliconfig', '1', '0', '2', '支付宝支付', 'qq_login.png', '', '1', '1496821780', '0');
INSERT INTO `sys_module` VALUES ('503', '会员提现设置', 'adminsite', 'config', 'memberwithdrawsetting', '504', '3', 'config/memberwithdrawsetting', '0', '0', '0', '会员提现设置', 'qq_login.png', '', '1', '1496821934', '1496822222');
INSERT INTO `sys_module` VALUES ('504', '会员提现', 'adminsite', 'member', 'usercommissionwithdrawlist', '137', '2', 'member/usercommissionwithdrawlist', '1', '0', '4', '', 'nav24.png', '', '1', '1496822171', '1496822242');
INSERT INTO `sys_module` VALUES ('506', '模板管理', 'adminsite', 'config', 'notifytemplate', '439', '3', 'config/notifytemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1496886539', '1496974268');
INSERT INTO `sys_module` VALUES ('509', '积分管理', 'adminsite', 'member', 'pointlist', '137', '2', 'member/pointlist', '1', '0', '5', '', 'nav25.png', '', '1', '1496906007', '1496906222');
INSERT INTO `sys_module` VALUES ('510', '余额管理', 'adminsite', 'member', 'accountlist', '137', '2', 'member/accountlist', '1', '0', '6', '', 'nav26.png', '', '1', '1496906142', '1496906242');
INSERT INTO `sys_module` VALUES ('512', '微信登录', 'adminsite', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '2', '微信登录', 'qq_login.png', '', '1', '1496907149', '1496907569');
INSERT INTO `sys_module` VALUES ('513', 'qq登录', 'adminsite', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '1', 'qq登录', 'qq_login.png', '', '1', '1496907238', '1496907552');
INSERT INTO `sys_module` VALUES ('515', '欢迎页', 'adminsite', 'index', 'index', '467', '2', 'index/index', '1', '0', '0', '欢迎页', 'nav1.png', '', '0', '1496979062', '0');
INSERT INTO `sys_module` VALUES ('518', '回收站列表', 'adminsite', 'goods', 'recyclelist', '150', '3', 'goods/recyclelist', '0', '0', '2', '', 'qq_login.png', '', '1', '1497445996', '1497445996');
INSERT INTO `sys_module` VALUES ('519', '货到付款地区管理', 'adminsite', 'config', 'distributionareamanagement', '529', '3', 'config/distributionareamanagement', '0', '0', '24', '', 'qq_login.png', '', '1', '1497706614', '1497706614');
INSERT INTO `sys_module` VALUES ('520', '自提点管理', 'adminsite', 'shop', 'pickuppointlist', '529', '3', 'shop/pickuppointlist', '0', '0', '80', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('521', '添加自提点', 'adminsite', 'shop', 'addpickuppoint', '529', '3', 'shop/addpickuppoint', '0', '0', '0', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('522', '修改自提点', 'adminsite', 'shop', 'updatepickuppoint', '529', '3', 'shop/updatepickuppoint', '0', '0', '0', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module` VALUES ('523', '物流跟踪设置', 'adminsite', 'config', 'expressmessage', '529', '3', 'config/expressmessage', '0', '0', '100', '', 'qq_login.png', '', '1', '1498198990', '1498198990');
INSERT INTO `sys_module` VALUES ('525', '运费模板列表', 'adminsite', 'express', 'freighttemplatelist', '529', '3', 'express/freighttemplatelist', '0', '0', '0', '', 'qq_login.png', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module` VALUES ('526', '编辑运费模板', 'adminsite', 'express', 'freighttemplateedit', '529', '3', 'express/freighttemplateedit', '0', '0', '2', '', 'qq_login.png', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module` VALUES ('527', '注册与访问', 'adminsite', 'config', 'registerAndVisit', '528', '3', 'config/registerandvisit', '0', '0', '20', '', 'qq_login.png', '', '1', '1498874511', '1498874511');
INSERT INTO `sys_module` VALUES ('528', '基础设置', 'adminsite', 'config', 'webconfig', '218', '2', 'config/webconfig', '1', '0', '1', '', 'nav60.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('529', '配送管理', 'adminsite', 'express', 'expresscompany', '218', '2', 'express/expresscompany', '1', '0', '3', '', 'nav62.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('530', '站点帮助', 'adminsite', 'config', 'helpclass', '477', '2', 'config/helpdocument', '1', '0', '9', '', 'nav58.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module` VALUES ('10001', '供货商', 'adminsite', 'member', 'supplierlist', '149', '2', 'member/supplierlist', '1', '0', '7', '', 'nav5.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10002', '添加供货商', 'adminsite', 'member', 'addsupplier', '10001', '3', 'member/addsupplier', '1', '0', '0', '', 'qq_login.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10003', '修改供货商', 'adminsite', 'member', 'updatesupplier', '10001', '3', 'member/updatesupplier', '1', '0', '1', '', 'qq_login.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module` VALUES ('10004', '店铺装修', 'adminsite', 'config', 'pctemplate', '477', '2', 'config/pctemplate', '0', '0', '4', '', 'nav53.png', '', '0', '1500608761', '1500608761');
INSERT INTO `sys_module` VALUES ('10005', '搜索', 'adminsite', 'config', 'searchconfig', '477', '2', 'config/searchconfig', '0', '0', '5', '', 'nav54.png', '', '0', '1500608765', '1500608765');
INSERT INTO `sys_module` VALUES ('10006', '促销版块', 'adminsite', 'system', 'goodsrecommendclassmobile', '10005', '3', 'system/goodsrecommendclassmobile', '0', '0', '20', '', 'qq_login.png', '', '1', '1500608766', '1500608766');
INSERT INTO `sys_module` VALUES ('10016', '自提点运费', 'adminsite', 'shop', 'pickuppointfreight', '529', '3', 'shop/pickuppointfreight', '1', '0', '4', '', 'qq_login.png', '', '1', '1501809931', '1501809931');
INSERT INTO `sys_module` VALUES ('10018', '手机模板', 'adminsite', 'config', 'waptemplate', '10005', '3', 'config/waptemplate', '0', '0', '3', '', 'qq_login.png', '', '1', '1501923272', '1501923272');
INSERT INTO `sys_module` VALUES ('10019', '客服', 'adminsite', 'config', 'customservice', '528', '3', 'config/customservice', '0', '0', '28', '', 'qq_login.png', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module` VALUES ('10021', '手机端模板', 'adminsite', 'config', 'fixedtemplate', '10004', '3', 'config/fixedtemplate', '0', '0', '2', '', 'qq_login.png', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module` VALUES ('10023', '商品楼层', 'adminsite', 'system', 'goodscategoryblock', '477', '2', 'system/goodscategoryblock', '1', '0', '3', '', 'nav52.png', '', '1', '0', '0');
INSERT INTO `sys_module` VALUES ('10024', '电脑端模板', 'adminsite', 'config', 'pctemplate', '10004', '3', 'config/pctemplate', '1', '0', '1', '', 'qq_login.png', '', '1', '1504697788', '1504697788');
INSERT INTO `sys_module` VALUES ('10075', '商家通知', 'adminsite', 'config', 'businessnotifytemplate', '439', '3', 'config/businessnotifytemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1505870490', '0');
INSERT INTO `sys_module` VALUES ('10077', '数据库管理', 'adminsite', 'dbdatabase', 'databaselist', '218', '2', 'dbdatabase/databaselist', '0', '0', '4', '', 'nav63.png', '', '0', '1506132536', '0');
INSERT INTO `sys_module` VALUES ('10078', '数据库恢复', 'adminsite', 'dbdatabase', 'importdatalist', '10077', '3', 'dbdatabase/importdatalist', '0', '0', '0', '', 'qq_login.png', '', '1', '1506132758', '0');
INSERT INTO `sys_module` VALUES ('10079', 'SQL执行与导入', 'adminsite', 'dbdatabase', 'sqlfilequery', '10077', '3', 'dbdatabase/sqlfilequery', '0', '0', '0', '', 'qq_login.png', '', '1', '1506132811', '0');
INSERT INTO `sys_module` VALUES ('10080', '添加首页公告', 'adminsite', 'config', 'addhomenotice', '445', '3', 'config/addhomenotice', '0', '0', '1', '', 'qq_login.png', '', '1', '1508152805', '0');
INSERT INTO `sys_module` VALUES ('10081', '公告编辑', 'adminsite', 'config', 'updatehomenotice', '445', '3', 'config/updatehomenotice', '0', '0', '2', '', 'qq_login.png', '', '1', '1508208576', '0');
INSERT INTO `sys_module` VALUES ('10082', '上传设置', 'adminsite', 'config', 'pictureuploadsetting', '528', '3', 'config/pictureuploadsetting', '0', '0', '21', '', 'qq_login.png', '', '1', '1508152805', '0');
INSERT INTO `sys_module` VALUES ('10083', '系统更新', 'adminsite', 'upgrade', 'upgradePatch', '524', '3', 'upgrade/upgradepatch', '0', '0', '0', '', 'qq_login.png', '', '1', '1508572839', '0');
INSERT INTO `sys_module` VALUES ('10084', '伪静态路由', 'adminsite', 'config', 'customPseudoStaticRule', '528', '3', 'config/customPseudoStaticRule', '0', '0', '24', '', 'qq_login.png', '', '1', '1509941657', '0');
INSERT INTO `sys_module` VALUES ('10085', '编辑路由规则', 'adminsite', 'config', 'updateRoutingRule', '10084', '3', 'config/updateRoutingRule', '0', '0', '0', '', 'qq_login.png', '', '1', '1509958647', '0');
INSERT INTO `sys_module` VALUES ('10086', '添加路由规则', 'adminsite', 'config', 'addRoutingRules', '10084', '3', 'config/addRoutingRules', '0', '0', '0', '', 'qq_login.png', '', '1', '1509951666', '1509959648');
INSERT INTO `sys_module` VALUES ('10087', '广告位管理', 'adminsite', 'system', 'shopadvpositionlist', '381', '3', 'system/shopadvpositionlist', '0', '0', '0', '', 'qq_login.png', '', '1', '1512180137', '0');
INSERT INTO `sys_module` VALUES ('10096', '交易设置', 'adminsite', 'config', 'shopset', '218', '2', 'config/shopset', '1', '0', '2', '', 'nav61.png', '', '1', '1517565416', '0');
INSERT INTO `sys_module` VALUES ('10097', '运营', 'adminsite', 'config', 'visitConfig', '528', '3', 'config/visitconfig', '1', '0', '2', '访问设置', 'qq_login.png', '', '1', '1517565417', '0');
INSERT INTO `sys_module` VALUES ('10101', '用户操作日志', 'adminsite', 'Member', 'userOperationLogList', '126', '2', 'Member/userOperationLogList', '1', '0', '10', '用户操作日志', 'qq_login.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10103', '奖励规则', 'adminsite', 'promotion', 'integral', '179', '2', 'promotion/integral', '1', '0', '10', '奖励规则', 'nav21.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10104', '一键关注设置', 'adminsite', 'wchat', 'keyConcernConfig', '335', '2', 'wchat/keyConcernConfig', '1', '0', '12', '一键关注设置', 'nav48.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10105', '商家服务', 'adminsite', 'config', 'merchantService', '528', '3', 'config/merchantService', '0', '0', '0', '商家服务', 'qq_login.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module` VALUES ('10106', '赠品发放记录', 'adminsite', 'promotion', 'giftGrantRecordsList', '195', '3', 'config/merchantService', '0', '0', '0', '赠品发放记录', 'qq_login.png', '', '1', '1517565421', '0');
INSERT INTO `sys_module` VALUES ('10113', '会员足迹', 'adminsite', 'member', 'newpath', '145', '3', 'member/newpath', '0', '0', '0', '会员足迹', 'qq_login.png', '', '1', '1522756901', '0');
INSERT INTO `sys_module` VALUES ('10119', '会员余额明细', 'adminsite', 'member', 'balancedetail', '145', '3', 'member/balancedetail', '1', '0', '0', '会员余额明细', 'qq_login.png', '', '1', '1522756903', '0');
INSERT INTO `sys_module` VALUES ('10120', '通知记录', 'adminsite', 'config', 'notifylist', '528', '3', 'config/notifylist', '1', '0', '0', '', 'qq_login.png', '', '1', '1522756903', '0');
INSERT INTO `sys_module` VALUES ('10121', '操作日志', 'adminsite', 'auth', 'authLog', '126', '3', 'auth/authLog', '0', '0', '5', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10122', '发票管理', 'adminsite', 'order', 'invoiceList', '184', '2', 'order/invoiceList', '1', '0', '15', '', 'nav13.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10123', '插件设置', 'adminsite', 'extend', 'addonsconfig', '10009', '3', 'extend/addonsconfig', '1', '0', '2', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10124', '客服管理', 'adminsite', 'Wchat', 'fansMessageManage', '335', '2', 'Wchat/fansMessageManage', '1', '0', '20', '', 'nav49.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10125', '粉丝留言', 'adminsite', 'wchat', 'fansMessageManage', '10156', '3', 'wchat/fansMessageManage', '1', '0', '1', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10126', '群发消息', 'adminsite', 'Wchat', 'sendGroupMessage', '10156', '3', 'Wchat/sendGroupMessage', '1', '0', '2', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module` VALUES ('10127', '售后服务', 'adminsite', 'Order', 'customerServiceList', '184', '2', 'Order/customerServiceList', '1', '0', '16', '售后服务', 'nav14.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10128', '售后详情', 'adminsite', 'Order', 'orderCustomerDetail', '10127', '3', 'Order/orderCustomerDetail', '0', '0', '0', '售后详情', 'qq_login.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10130', '优惠券发放记录', 'adminsite', 'promotion', 'couponGrantLog', '180', '3', 'promotion/couponGrantLog', '0', '0', '0', '', 'qq_login.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module` VALUES ('10135', '订单详情', 'adminsite', 'Orderpresell', 'orderDetail', '10131', '3', 'presellOrder/orderDetail', '1', '0', '0', '', 'qq_login.png', '', '1', '1522756925', '0');
INSERT INTO `sys_module` VALUES ('10136', '分销', 'adminsite', 'distributionnew', 'intercalate', '0', '1', 'distributionnew/intercalate', '1', '0', '6', '分销模块', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10137', '分销设置', 'adminsite', 'distributionnew', 'intercalate', '10136', '2', 'distributionnew/intercalate', '1', '0', '1', '分销设置', 'nav27.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10138', '推广员管理', 'adminsite', 'distributionnew', 'stayPromotersTubeList', '10136', '2', 'distributionnew/stayPromotersTubeList&state=0', '1', '0', '2', '推广员管理', 'nav30.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10139', '商品分销', 'adminsite', 'distributionnew', 'distributionGoodList', '10136', '2', 'distributionnew/distributionGoodList', '1', '0', '2', '商品分销', 'nav31.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10140', '推广员佣金', 'adminsite', 'distributionnew', 'commissionList', '10136', '2', 'distributionnew/commissionList', '1', '0', '2', '推广员佣金', 'nav32.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10141', '二级分销', 'adminsite', 'distributionnew', 'distributionLevelList', '10136', '2', 'distributionnew/distributionLevelList', '1', '0', '2', '三级分销', 'nav33.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10142', '佣金提现', 'adminsite', 'distributionnew', 'withdrawCashList', '10136', '2', 'distributionnew/withdrawCashList', '1', '0', '2', '佣金提现', 'nav3-4.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10143', '推广员等级', 'adminsite', 'distributionnew', 'rankRromotersList', '10137', '3', 'distributionnew/rankRromotersList', '0', '0', '3', '推广员等级', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10144', '推广员等级添加', 'adminsite', 'distributionnew', 'addrankRromoters', '10137', '3', 'distributionnew/addrankRromoters', '0', '0', '3', '推广员等级添加', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10145', '推广员等级修改', 'adminsite', 'distributionnew', 'updaterankRromoters', '10137', '3', 'distributionnew/updaterankRromoters', '0', '0', '3', '推广员等级修改', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10146', '帐户详情', 'adminsite', 'distributionnew', 'accountDetails', '10140', '3', 'distributionnew/accountDetails', '0', '0', '1', '帐户详情', 'nav28.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10147', '分销佣金明细', 'adminsite', 'distributionnew', 'commissions', '10140', '3', 'distributionnew/commissions', '0', '0', '1', '分销佣金明细', 'nav29.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10148', '待审核', 'adminsite', 'distributionnew', 'stayPromotersTubeList', '10138', '3', 'distributionnew/stayPromotersTubeList&state=1', '0', '0', '3', '推广员管理-待审核', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10152', '文章评论', 'adminsite', 'cms', 'getArticCommentList', '432', '3', 'cms/getArticCommentList', '0', '0', '3', '文章评论', '', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10153', '课程', 'adminsite', 'course', 'courseList', '0', '1', 'course/courseList', '1', '0', '6', '课程模块', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10154', '课程列表', 'adminsite', 'course', 'courseList', '10153', '2', 'course/courseList', '1', '0', '1', '课程列表', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10155', '课程添加', 'adminsite', 'course', 'addCourse', '10153', '2', 'course/addCourse', '1', '0', '2', '课程添加', 'course2.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10156', '课程修改', 'adminsite', 'course', 'addCourse', '10154', '3', 'course/addCourse', '0', '0', '3', '课程修改', 'course2.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10157', '回收站', 'adminsite', 'course', 'recycleList', '10154', '3', 'course/recycleList', '0', '0', '3', '回收站', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10158', '课程分类', 'adminsite', 'course', 'courseClassList', '10153', '2', 'course/courseClassList', '1', '0', '2', '课程分类', 'course3.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10159', '课程分类添加', 'adminsite', 'course', 'addCourseClass', '10158', '3', 'course/addCourseClass', '0', '0', '3', '课程分类添加', 'course3.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10160', '课程分类修改', 'adminsite', 'course', 'updateCourseClass', '10158', '3', 'course/updateCourseClass', '0', '0', '3', '课程分类修改', 'course3.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10161', '课程标签', 'adminsite', 'course', 'courseGroupList', '10153', '2', 'course/courseGroupList', '1', '0', '2', '课程标签', 'course4.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10162', '课程标签添加', 'adminsite', 'course', 'addCourseGroup', '10161', '3', 'course/addCourseGroup', '0', '0', '3', '课程标签添加', 'course4.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10163', '课程标签修改', 'adminsite', 'course', 'updateCourseGroup', '10161', '3', 'course/updateCourseGroup', '0', '0', '3', '课程标签修改', 'course4.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10164', '合作机构', 'adminsite', 'course', 'courseMechanismList', '10153', '2', 'course/courseMechanismList', '1', '0', '2', '合作机构', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10165', '合作机构添加', 'adminsite', 'course', 'addCourseMechanism', '10164', '3', 'course/addCourseMechanism', '0', '0', '3', '合作机构添加', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10166', '合作机构修改', 'adminsite', 'course', 'updateCourseMechanism', '10164', '3', 'course/updateCourseMechanism', '0', '0', '3', '合作机构修改', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10167', '课程老师', 'adminsite', 'course', 'courseTeacherList', '10164', '3', 'course/courseTeacherList', '0', '0', '3', '课程老师', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10168', '课程老师添加', 'adminsite', 'course', 'addCourseTeacher', '10167', '4', 'course/addCourseTeacher', '0', '0', '4', '课程老师修改', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10169', '课程老师修改', 'adminsite', 'course', 'updateCourseTeacher', '10167', '4', 'course/updateCourseTeacher', '0', '0', '4', '课程老师修改', 'course5.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10170', '课程订单', 'adminsite', 'course', 'courseOrderList', '10153', '2', 'course/courseOrderList', '1', '0', '2', '课程订单', 'course6.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10171', '课程评价', 'adminsite', 'course', 'assessList', '10153', '2', 'course/assessList', '0', '0', '2', '课程评价', 'course7.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10172', '课程目录', 'adminsite', 'course', 'courseCatalogueList', '10154', '3', 'course/courseCatalogueList', '0', '0', '3', '课程目录', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10173', '课程目录添加', 'adminsite', 'course', 'addCourseCatalogue', '10172', '4', 'course/addCourseCatalogue', '0', '0', '4', '课程目录添加', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10174', '课程目录修改', 'adminsite', 'course', 'updateCourseCatalogue', '10172', '4', 'course/updateCourseCatalogue', '0', '0', '4', '课程目录修改', 'course1.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module` VALUES ('10175', '课程视频添加', 'adminsite', 'course', 'addCourseCatalogueVideo', '10172', '4', 'course/addCourseCatalogueVideo', '0', '0', '4', '课程视频添加', 'course1.png', '', '1', '1480563210', '0');

-- ----------------------------
-- Table structure for `sys_module_copy`
-- ----------------------------
DROP TABLE IF EXISTS `sys_module_copy`;
CREATE TABLE `sys_module_copy` (
  `module_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块标题',
  `module` varchar(255) NOT NULL DEFAULT 'admin' COMMENT '项目名',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器名',
  `method` varchar(255) NOT NULL DEFAULT '' COMMENT '方法名',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '上级模块ID',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '深度等级',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_menu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是菜单',
  `is_dev` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `desc` text COMMENT '模块描述',
  `module_picture` varchar(255) NOT NULL DEFAULT '' COMMENT '模块图片',
  `icon_class` varchar(255) NOT NULL DEFAULT '' COMMENT '矢量图class',
  `is_control_auth` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否控制权限',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10153 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=606 COMMENT='系统模块表';

-- ----------------------------
-- Records of sys_module_copy
-- ----------------------------
INSERT INTO `sys_module_copy` VALUES ('120', '系统', 'adminsite', 'upgrade', 'onlineupdate', '0', '1', 'upgrade/onlineupdate', '0', '0', '999', '', 'qq_login.png', '', '0', '1477454152', '1477794717');
INSERT INTO `sys_module_copy` VALUES ('121', '模块列表', 'adminsite', 'system', 'modulelist', '120', '2', 'system/modulelist', '1', '1', '5', '', 'qq_login.png', '', '1', '0', '0');
INSERT INTO `sys_module_copy` VALUES ('122', '添加模块', 'adminsite', 'system', 'addmodule', '121', '3', 'system/addmodule', '0', '0', '1', '添加模块', 'qq_login.png', '', '1', '0', '1479976597');
INSERT INTO `sys_module_copy` VALUES ('123', '修改模块', 'adminsite', 'system', 'editmodule', '121', '3', 'system/editmodule', '0', '0', '2', '修改模块', 'qq_login.png', '', '1', '0', '1479976646');
INSERT INTO `sys_module_copy` VALUES ('126', '管理员列表', 'adminsite', 'auth', 'userlist', '218', '2', 'auth/userlist', '1', '0', '5', '', 'nav64.png', '', '1', '0', '1484650663');
INSERT INTO `sys_module_copy` VALUES ('127', '用户列表', 'adminsite', 'auth', 'userlist', '126', '3', 'auth/userlist', '0', '0', '1', null, 'qq_login.png', '', '1', '0', '0');
INSERT INTO `sys_module_copy` VALUES ('128', '权限组', 'adminsite', 'auth', 'authgrouplist', '126', '3', 'auth/authgrouplist', '0', '0', '2', '用户组', 'qq_login.png', '', '1', '0', '1479976919');
INSERT INTO `sys_module_copy` VALUES ('129', '删除模块', 'adminsite', 'system', 'delmodule', '121', '3', 'system/delmodule', '0', '0', '0', '模块列表', 'qq_login.png', '', '1', '1477618350', '1479976723');
INSERT INTO `sys_module_copy` VALUES ('133', '添加用户组', 'adminsite', 'auth', 'addusergroup', '128', '3', 'auth/addusergroup', '0', '0', '2', '用户组', 'qq_login.png', '', '1', '1477628544', '1479977008');
INSERT INTO `sys_module_copy` VALUES ('137', '会员', 'adminsite', 'member', 'memberlist', '0', '1', 'member/memberlist', '1', '0', '4', '', 'qq_login.png', '', '1', '1477994717', '1493206725');
INSERT INTO `sys_module_copy` VALUES ('139', '相册管理', 'adminsite', 'system', 'albumlist', '149', '2', 'system/albumlist', '1', '0', '10', '', 'nav11.png', '', '1', '1478158094', '1496819610');
INSERT INTO `sys_module_copy` VALUES ('144', '编辑用户', 'adminsite', 'auth', 'edituser', '127', '3', 'auth/edituser', '0', '0', '5', '用户', 'qq_login.png', '', '1', '1478837447', '1479976963');
INSERT INTO `sys_module_copy` VALUES ('145', '会员列表', 'adminsite', 'member', 'memberlist', '137', '2', 'member/memberlist', '1', '0', '1', '', 'nav22.png', '', '1', '1478846113', '1478846203');
INSERT INTO `sys_module_copy` VALUES ('149', '商品', 'adminsite', 'goods', 'goodslist', '0', '1', 'goods/goodslist', '1', '0', '1', '商品模块', 'qq_login.png', '', '1', '1479268148', '1493973167');
INSERT INTO `sys_module_copy` VALUES ('150', '商品列表', 'adminsite', 'goods', 'goodslist', '149', '2', 'goods/goodslist', '1', '0', '1', '', 'nav65.png', '', '1', '1479268236', '1491898725');
INSERT INTO `sys_module_copy` VALUES ('151', '商品发布', 'adminsite', 'goods', 'addgoods', '149', '2', 'goods/addgoods', '1', '0', '2', '', 'nav10.png', '', '1', '1479268307', '0');
INSERT INTO `sys_module_copy` VALUES ('169', '图片管理', 'adminsite', 'system', 'albumpicturelist', '139', '3', 'system/albumpicturelist', '0', '0', '5', '', 'qq_login.png', '', '1', '1479464708', '1479976790');
INSERT INTO `sys_module_copy` VALUES ('170', '添加运费模板', 'adminsite', 'express', 'transportationadd', '164', '3', 'express/transportationadd', '0', '0', '1', '添加运费模板', 'qq_login.png', '', '1', '1479700610', '1484894376');
INSERT INTO `sys_module_copy` VALUES ('171', '商品标签', 'adminsite', 'goods', 'goodsgrouplist', '149', '2', 'goods/goodsgrouplist', '1', '0', '3', '', 'nav7.png', '', '1', '1479873298', '1479960182');
INSERT INTO `sys_module_copy` VALUES ('172', '添加商品标签', 'adminsite', 'goods', 'addgoodsgroup', '171', '3', 'goods/addgoodsgroup', '0', '0', '6', '添加商品分组', 'qq_login.png', '', '1', '1479873424', '1479960243');
INSERT INTO `sys_module_copy` VALUES ('176', '运费模板修改', 'adminsite', 'express', 'transportationedit', '164', '3', 'express/transportationedit', '0', '0', '6', 'sd', 'qq_login.png', '', '1', '1480040625', '0');
INSERT INTO `sys_module_copy` VALUES ('179', '营销', 'adminsite', 'promotion', 'coupontypelist', '0', '1', 'promotion/coupontypelist', '1', '0', '3', '优惠券类型列表', 'qq_login.png', '', '1', '1480491652', '1480491725');
INSERT INTO `sys_module_copy` VALUES ('180', '优惠券', 'adminsite', 'promotion', 'coupontypelist', '179', '2', 'promotion/coupontypelist', '1', '0', '1', '', 'nav15.png', '', '1', '1480491846', '0');
INSERT INTO `sys_module_copy` VALUES ('184', '订单', 'adminsite', 'order', 'orderlist', '0', '1', 'order/orderlist', '1', '0', '2', '订单列表', 'qq_login.png', '', '1', '1480563137', '0');
INSERT INTO `sys_module_copy` VALUES ('185', '订单列表', 'adminsite', 'order', 'orderlist', '184', '2', 'order/orderlist', '1', '0', '1', '', 'nav12.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('186', '添加优惠券', 'adminsite', 'promotion', 'addcoupontype', '180', '3', 'promotion/addcoupontype', '1', '0', '2', '添加优惠券类型', 'qq_login.png', '', '1', '1480573171', '0');
INSERT INTO `sys_module_copy` VALUES ('187', '修改优惠券', 'adminsite', 'promotion', 'updatecoupontype', '180', '3', 'promotion/updatecoupontype', '1', '0', '3', '修改优惠券类型', 'qq_login.png', '', '1', '1480904943', '0');
INSERT INTO `sys_module_copy` VALUES ('189', '物流公司', 'adminsite', 'express', 'expresscompany', '529', '3', 'express/expresscompany', '0', '0', '60', '物流公司', 'qq_login.png', '', '1', '1481254866', '1484894344');
INSERT INTO `sys_module_copy` VALUES ('190', '订单详情', 'adminsite', 'order', 'orderdetail', '185', '3', 'order/orderdetail', '0', '0', '1', '订单详情', 'qq_login.png', '', '1', '1481258173', '0');
INSERT INTO `sys_module_copy` VALUES ('191', '添加物流公司', 'adminsite', 'express', 'addexpresscompany', '529', '3', 'express/addexpresscompany', '1', '0', '1', '添加物流公司', 'qq_login.png', '', '1', '1481267828', '0');
INSERT INTO `sys_module_copy` VALUES ('192', '物流公司修改', 'adminsite', 'express', 'updateexpresscompany', '529', '3', 'express/updateexpresscompany', '1', '0', '2', '物流公司修改排序', 'qq_login.png', '', '1', '1481271808', '0');
INSERT INTO `sys_module_copy` VALUES ('194', '退款详情', 'adminsite', 'order', 'orderrefunddetail', '185', '3', 'order/orderrefunddetail', '0', '0', '2', '退款详情', 'qq_login.png', '', '1', '1481872074', '0');
INSERT INTO `sys_module_copy` VALUES ('195', '赠品', 'adminsite', 'promotion', 'giftlist', '179', '2', 'promotion/giftlist', '1', '0', '3', '', 'nav17.png', '', '1', '1482113074', '1494215988');
INSERT INTO `sys_module_copy` VALUES ('196', '添加赠品', 'adminsite', 'promotion', 'addgift', '195', '3', 'promotion/addgift', '1', '0', '0', '添加赠品', 'qq_login.png', '', '1', '1482113664', '1482117539');
INSERT INTO `sys_module_copy` VALUES ('197', '修改赠品', 'adminsite', 'promotion', 'updategift', '195', '3', 'promotion/updategift', '1', '0', '0', '修改赠品', 'qq_login.png', '', '1', '1482113715', '1482117558');
INSERT INTO `sys_module_copy` VALUES ('198', '满减送', 'adminsite', 'promotion', 'mansonglist', '179', '2', 'promotion/mansonglist', '1', '0', '4', '', 'nav18.png', '', '1', '1482138580', '1482138597');
INSERT INTO `sys_module_copy` VALUES ('199', '添加满减满送', 'adminsite', 'promotion', 'addmansong', '198', '3', 'promotion/addmansong', '1', '0', '0', '满减送', 'qq_login.png', '', '1', '1482140311', '0');
INSERT INTO `sys_module_copy` VALUES ('200', '编辑满减送', 'adminsite', 'promotion', 'updatemansong', '198', '3', 'promotion/updatemansong', '1', '0', '1', '编辑满减送', 'qq_login.png', '', '1', '1482907059', '0');
INSERT INTO `sys_module_copy` VALUES ('201', '限时折扣', 'adminsite', 'promotion', 'getdiscountlist', '179', '2', 'promotion/getdiscountlist', '1', '0', '5', '', 'nav19.png', '', '1', '1483949283', '0');
INSERT INTO `sys_module_copy` VALUES ('202', '添加限时折扣', 'adminsite', 'promotion', 'adddiscount', '201', '3', 'promotion/adddiscount', '1', '0', '0', '添加限时折扣', 'qq_login.png', '', '1', '1483951104', '0');
INSERT INTO `sys_module_copy` VALUES ('203', '修改限时折扣', 'adminsite', 'promotion', 'updatediscount', '201', '3', 'promotion/updatediscount', '1', '0', '1', '修改限时折扣', 'qq_login.png', '', '1', '1483951151', '1483958451');
INSERT INTO `sys_module_copy` VALUES ('210', '修改商品标签', 'adminsite', 'goods', 'updategoodsgroup', '171', '3', 'goods/updategoodsgroup', '0', '0', '2', '修改商品分组', 'qq_login.png', '', '1', '1484120298', '1484125917');
INSERT INTO `sys_module_copy` VALUES ('218', '设置', 'adminsite', 'config', 'webconfig', '0', '1', 'config/webconfig', '1', '0', '11', '店铺设置', 'qq_login.png', '', '1', '1484617355', '1493348177');
INSERT INTO `sys_module_copy` VALUES ('221', '支付配置', 'adminsite', 'config', 'paymentconfig', '10096', '3', 'config/paymentconfig', '0', '0', '2', '支付配置', 'qq_login.png', '', '1', '1484623427', '1496820428');
INSERT INTO `sys_module_copy` VALUES ('334', '咨询管理', 'adminsite', 'saleservice', 'consultlist', '149', '2', 'saleservice/consultlist', '0', '0', '8', '', 'nav3.png', '', '0', '1488875702', '1496392553');
INSERT INTO `sys_module_copy` VALUES ('335', '微信', 'adminsite', 'wchat', 'config', '0', '1', 'wchat/config', '1', '0', '8', '微信', 'qq_login.png', '', '1', '1488945338', '1493015492');
INSERT INTO `sys_module_copy` VALUES ('336', '公众号管理', 'adminsite', 'wchat', 'config', '335', '2', 'wchat/config', '1', '0', '1', '', 'nav40.png', '', '1', '1488945416', '0');
INSERT INTO `sys_module_copy` VALUES ('339', '微信菜单管理', 'adminsite', 'wchat', 'menu', '335', '2', 'wchat/menu', '1', '0', '2', '', 'nav41.png', '', '1', '1489046481', '0');
INSERT INTO `sys_module_copy` VALUES ('340', '推广二维码管理', 'adminsite', 'wchat', 'weixinqrcodetemplate', '335', '2', 'wchat/weixinqrcodetemplate', '1', '0', '3', '', 'nav42.png', '', '1', '1489046596', '1490153341');
INSERT INTO `sys_module_copy` VALUES ('341', '回复设置', 'adminsite', 'wchat', 'replayconfig', '335', '2', 'wchat/replayconfig', '1', '0', '4', '', 'nav43.png', '', '1', '1489046662', '0');
INSERT INTO `sys_module_copy` VALUES ('342', '消息素材管理', 'adminsite', 'wchat', 'materialmessage', '335', '2', 'wchat/materialmessage', '1', '0', '6', '', 'nav44.png', '', '1', '1489046731', '0');
INSERT INTO `sys_module_copy` VALUES ('343', '分享内容设置', 'adminsite', 'wchat', 'shareconfig', '335', '2', 'wchat/shareconfig', '1', '0', '7', '', 'nav46.png', '', '1', '1489046804', '0');
INSERT INTO `sys_module_copy` VALUES ('358', '自定义推广二维码', 'adminsite', 'wchat', 'qrcode', '340', '3', 'wchat/qrcode', '0', '0', '1', '自定义二维码', 'qq_login.png', '', '1', '1490153257', '1490153278');
INSERT INTO `sys_module_copy` VALUES ('359', '添加回复', 'adminsite', 'wchat', 'addorupdatekeyreplay', '341', '3', 'wchat/addorupdatekeyreplay', '1', '0', '1', '', 'qq_login.png', '', '1', '1490236498', '0');
INSERT INTO `sys_module_copy` VALUES ('360', '添加用户', 'adminsite', 'auth', 'adduser', '127', '3', 'auth/adduser', '0', '0', '1', '添加用户', 'qq_login.png', '', '1', '1490236731', '0');
INSERT INTO `sys_module_copy` VALUES ('361', '一键关注设置', 'adminsite', 'wchat', 'onekeysubscribe', '335', '2', 'wchat/onekeysubscribe', '0', '0', '6', '一键关注设置', 'nav45.png', '', '1', '1490318979', '1496386363');
INSERT INTO `sys_module_copy` VALUES ('381', '广告管理', 'adminsite', 'system', 'shopadvlist', '477', '2', 'system/shopadvlist', '1', '0', '6', '', 'nav55.png', '', '1', '1490774263', '1496320676');
INSERT INTO `sys_module_copy` VALUES ('382', '广告管理', 'adminsite', 'system', 'shopadvlist', '381', '3', 'system/shopadvlist', '0', '0', '0', '', 'nav55.png', '', '1', '1490785255', '0');
INSERT INTO `sys_module_copy` VALUES ('383', '添加广告位', 'adminsite', 'system', 'addshopadvposition', '381', '3', 'system/addshopadvposition', '0', '0', '0', '添加广告位', 'qq_login.png', '', '1', '1490835009', '0');
INSERT INTO `sys_module_copy` VALUES ('387', '广告位编辑', 'adminsite', 'system', 'updateshopadvposition', '381', '3', 'system/updateshopadvposition', '1', '0', '0', '广告位编辑', 'qq_login.png', '', '1', '1490851266', '0');
INSERT INTO `sys_module_copy` VALUES ('388', '添加广告', 'adminsite', 'system', 'addshopadv', '381', '3', 'system/addshopadv', '0', '0', '0', '添加广告', 'qq_login.png', '', '1', '1490854140', '0');
INSERT INTO `sys_module_copy` VALUES ('389', '广告编辑', 'adminsite', 'system', 'updateshopadv', '381', '3', 'system/updateshopadv', '0', '0', '0', '', 'qq_login.png', '', '1', '1490857038', '0');
INSERT INTO `sys_module_copy` VALUES ('390', '促销版块', 'adminsite', 'system', 'goodsrecommendclass', '10004', '3', 'system/goodsrecommendclass', '0', '0', '10', '促销版块管理', 'qq_login.png', '', '1', '1490861814', '1496320694');
INSERT INTO `sys_module_copy` VALUES ('392', '首页楼层', 'adminsite', 'system', 'blocklist', '10004', '3', 'system/blocklist', '0', '0', '11', '', 'qq_login.png', '', '1', '1490947012', '1496320711');
INSERT INTO `sys_module_copy` VALUES ('394', '添加楼层', 'adminsite', 'system', 'addblock', '10004', '3', 'system/addblock', '0', '0', '0', '', 'qq_login.png', '', '1', '1490948318', '0');
INSERT INTO `sys_module_copy` VALUES ('395', '楼层编辑', 'adminsite', 'system', 'updateblock', '10004', '3', 'system/updateblock', '0', '0', '0', '', 'qq_login.png', '', '1', '1490948388', '1490952538');
INSERT INTO `sys_module_copy` VALUES ('398', '个人资料', 'adminsite', 'auth', 'userdetail', '126', '2', 'auth/userdetail', '1', '0', '0', '个人资料', 'qq_login.png', '', '0', '1491029995', '1494298490');
INSERT INTO `sys_module_copy` VALUES ('403', '销售排行', 'adminsite', 'account', 'shopgoodssalesrank', '409', '2', 'account/shopgoodssalesrank', '1', '0', '9', '', 'nav39.png', '', '1', '1491040090', '1496819701');
INSERT INTO `sys_module_copy` VALUES ('405', '商品销售统计', 'adminsite', 'account', 'shopgoodsaccountlist', '403', '3', 'account/shopgoodsaccountlist', '0', '0', '6', '商品销售统计', 'qq_login.png', '', '1', '1491042742', '0');
INSERT INTO `sys_module_copy` VALUES ('409', '数据', 'adminsite', 'account', 'shopsalesaccount', '0', '1', 'account/shopsalesaccount', '1', '0', '7', '资产', 'qq_login.png', '', '1', '1493281488', '1493974412');
INSERT INTO `sys_module_copy` VALUES ('418', '网站设置', 'adminsite', 'config', 'webconfig', '528', '3', 'config/webconfig', '0', '0', '2', '', 'qq_login.png', '', '1', '1492755047', '0');
INSERT INTO `sys_module_copy` VALUES ('419', '商品分类', 'adminsite', 'goods', 'goodscategorylist', '149', '2', 'goods/goodscategorylist', '1', '0', '2', '', 'nav9.png', '', '1', '1492755701', '0');
INSERT INTO `sys_module_copy` VALUES ('420', '添加商品分类', 'adminsite', 'goods', 'addgoodscategory', '419', '3', 'goods/addgoodscategory', '1', '0', '2', '添加商品分类', 'qq_login.png', '', '1', '1492755811', '1492755828');
INSERT INTO `sys_module_copy` VALUES ('421', '修改商品分类', 'adminsite', 'goods', 'updategoodscategory', '419', '3', 'goods/updategoodscategory', '1', '0', '1', '修改商品分类', 'qq_login.png', '', '1', '1492755920', '0');
INSERT INTO `sys_module_copy` VALUES ('422', '删除商品分类', 'adminsite', 'goods', 'deletegoodscategory', '419', '3', 'goods/deletegoodscategory', '1', '0', '2', '删除商品分类', 'qq_login.png', '', '1', '1492755973', '0');
INSERT INTO `sys_module_copy` VALUES ('423', '商品品牌', 'adminsite', 'goods', 'goodsbrandlist', '149', '2', 'goods/goodsbrandlist', '1', '0', '3', '', 'nav8.png', '', '1', '1492756038', '0');
INSERT INTO `sys_module_copy` VALUES ('424', '添加商品品牌', 'adminsite', 'goods', 'addgoodsbrand', '423', '3', 'goods/addgoodsbrand', '1', '0', '1', '添加商品品牌', 'qq_login.png', '', '1', '1492756096', '0');
INSERT INTO `sys_module_copy` VALUES ('425', '修改商品品牌', 'adminsite', 'goods', 'updategoodsbrand', '423', '3', 'goods/updategoodsbrand', '1', '0', '4', '修改商品品牌', 'qq_login.png', '', '1', '1492756169', '0');
INSERT INTO `sys_module_copy` VALUES ('427', '导航管理', 'adminsite', 'config', 'shopnavigationlist', '477', '2', 'config/shopnavigationlist', '1', '0', '2', '导航', 'nav51.png', '', '1', '1492761752', '1496320733');
INSERT INTO `sys_module_copy` VALUES ('428', '添加导航', 'adminsite', 'config', 'addshopnavigation', '427', '3', 'config/addshopnavigation', '0', '0', '1', '添加导航', 'qq_login.png', '', '0', '1492761909', '0');
INSERT INTO `sys_module_copy` VALUES ('429', '修改导航', 'adminsite', 'config', 'updateshopnavigation', '427', '3', 'config/updateshopnavigation', '0', '0', '2', '修改导航', 'qq_login.png', '', '0', '1492762515', '0');
INSERT INTO `sys_module_copy` VALUES ('430', '友情链接', 'adminsite', 'config', 'linklist', '477', '2', 'config/linklist', '0', '0', '10', '', 'nav59.png', '', '0', '1492765269', '1496320750');
INSERT INTO `sys_module_copy` VALUES ('431', '文章管理', 'adminsite', 'cms', 'articlelist', '477', '2', 'cms/articlelist', '1', '0', '7', '', 'nav56.png', '', '1', '1492782512', '1492782619');
INSERT INTO `sys_module_copy` VALUES ('432', '文章列表', 'adminsite', 'cms', 'articlelist', '431', '3', 'cms/articlelist', '0', '0', '1', '文章列表', 'qq_login.png', '', '1', '1492782808', '1492782837');
INSERT INTO `sys_module_copy` VALUES ('433', '文章分类', 'adminsite', 'cms', 'articleclasslist', '431', '3', 'cms/articleclasslist', '0', '0', '2', '文章列表', 'qq_login.png', '', '1', '1492782934', '1492782952');
INSERT INTO `sys_module_copy` VALUES ('434', '评论列表', 'adminsite', 'cms', 'commentarticle', '431', '2', 'cms/commentarticle', '0', '0', '3', '评论列表', 'qq_login.png', '', '1', '1492782991', '1497084797');
INSERT INTO `sys_module_copy` VALUES ('436', '添加友情链接', 'adminsite', 'config', 'addlink', '430', '3', 'config/addlink', '0', '0', '1', '添加友情链接', 'qq_login.png', '', '1', '1493190273', '1493190306');
INSERT INTO `sys_module_copy` VALUES ('437', '编辑友情链接', 'adminsite', 'config', 'updatelink', '430', '3', 'config/updatelink', '0', '0', '2', '编辑友情链接', 'qq_login.png', '', '1', '1493192018', '0');
INSERT INTO `sys_module_copy` VALUES ('439', '通知系统', 'adminsite', 'config', 'notifyindex', '528', '3', 'config/notifyindex', '0', '0', '26', 'messageConfig', 'qq_login.png', '', '1', '1493194795', '1496722814');
INSERT INTO `sys_module_copy` VALUES ('440', '帮助类型', 'adminsite', 'config', 'helpclass', '530', '3', 'config/helpclass', '0', '0', '10', '帮助类型', 'qq_login.png', '', '1', '1493199934', '1496320786');
INSERT INTO `sys_module_copy` VALUES ('441', '帮助内容', 'adminsite', 'config', 'helpdocument', '530', '3', 'config/helpdocument', '0', '0', '18', '', 'qq_login.png', '', '1', '1493201598', '1496320803');
INSERT INTO `sys_module_copy` VALUES ('442', '添加帮助类型', 'adminsite', 'config', 'addhelpclass', '530', '3', 'config/addhelpclass', '0', '0', '1', '添加帮助类型', 'qq_login.png', '', '1', '1493201673', '0');
INSERT INTO `sys_module_copy` VALUES ('443', '修改帮助内容', 'adminsite', 'config', 'updatedocument', '530', '3', 'config/updatedocument', '0', '0', '2', 'updateDocument.html', 'qq_login.png', '', '1', '1493203409', '0');
INSERT INTO `sys_module_copy` VALUES ('444', '添加帮助内容', 'adminsite', 'config', 'adddocument', '530', '3', 'config/adddocument', '0', '0', '2', 'aaddDocument', 'qq_login.png', '', '1', '1493205866', '0');
INSERT INTO `sys_module_copy` VALUES ('445', '首页公告', 'adminsite', 'config', 'usernotice', '477', '2', 'config/usernotice', '1', '0', '1', '', 'nav50.png', '', '1', '1493206256', '1496321121');
INSERT INTO `sys_module_copy` VALUES ('446', '积分管理', 'adminsite', 'promotion', 'pointconfig', '179', '2', 'promotion/pointconfig', '1', '0', '1', '', 'nav16.png', '', '1', '1493206530', '1496894015');
INSERT INTO `sys_module_copy` VALUES ('447', '粉丝列表', 'adminsite', 'member', 'weixinfanslist', '335', '2', 'member/weixinfanslist', '1', '0', '10', '', 'nav47.png', '', '1', '1493278702', '0');
INSERT INTO `sys_module_copy` VALUES ('450', '修改消息素材', 'adminsite', 'wchat', 'updatemedia', '342', '3', 'wchat/updatemedia', '1', '0', '1', '', 'qq_login.png', '', '1', '1493282078', '1493282297');
INSERT INTO `sys_module_copy` VALUES ('451', '添加消息素材', 'adminsite', 'wchat', 'addmedia', '342', '3', 'wchat/addmedia', '1', '0', '1', '', 'qq_login.png', '', '1', '1493282371', '0');
INSERT INTO `sys_module_copy` VALUES ('452', '添加文章', 'adminsite', 'cms', 'addarticle', '431', '3', 'cms/addarticle', '0', '0', '4', '', 'qq_login.png', '', '1', '1493287571', '1493289825');
INSERT INTO `sys_module_copy` VALUES ('454', '销售统计', 'adminsite', 'account', 'orderaccountcount', '409', '2', 'account/orderaccountcount', '0', '0', '6', '', 'nav38.png', '', '0', '1493289961', '1493981704');
INSERT INTO `sys_module_copy` VALUES ('455', '修改文章', 'adminsite', 'cms', 'updatearticle', '431', '3', 'cms/updatearticle', '0', '0', '2', '', 'qq_login.png', '', '1', '1493343780', '0');
INSERT INTO `sys_module_copy` VALUES ('456', '第三方登录', 'adminsite', 'config', 'partylogin', '528', '3', 'config/partylogin', '0', '0', '25', '', 'qq_login.png', '', '1', '1493347646', '1496903436');
INSERT INTO `sys_module_copy` VALUES ('457', '销售明细', 'adminsite', 'account', 'orderrecordslist', '454', '3', 'account/orderrecordslist', '0', '0', '2', '', 'qq_login.png', '', '1', '1493705080', '1493705419');
INSERT INTO `sys_module_copy` VALUES ('459', '销售概况', 'adminsite', 'account', 'shopsalesaccount', '409', '2', 'account/shopsalesaccount', '1', '0', '1', '', 'nav34.png', '', '1', '1493776001', '1493974321');
INSERT INTO `sys_module_copy` VALUES ('460', '热卖商品', 'adminsite', 'account', 'bestsellergoods', '463', '3', 'account/bestsellergoods', '0', '0', '1', '', 'qq_login.png', '', '1', '1493867120', '1493972190');
INSERT INTO `sys_module_copy` VALUES ('461', '同行热卖', 'adminsite', 'account', 'shopgoodsgroupsalecount', '409', '2', 'account/shopgoodsgroupsalecount', '1', '0', '4', '', 'nav36.png', '', '0', '1493946658', '1493950999');
INSERT INTO `sys_module_copy` VALUES ('462', '运营报告', 'adminsite', 'account', 'shopreport', '409', '2', 'account/shopreport', '0', '0', '5', '', 'nav37.png', '', '1', '1493947412', '0');
INSERT INTO `sys_module_copy` VALUES ('463', '商品分析', 'adminsite', 'account', 'shopgoodssaleslist', '409', '2', 'account/shopgoodssaleslist', '1', '0', '2', '', 'nav35.png', '', '1', '1493949799', '0');
INSERT INTO `sys_module_copy` VALUES ('467', '首页', 'adminsite', 'index', 'index', '0', '1', 'index/index', '1', '0', '0', '', 'qq_login.png', '', '0', '1494485612', '1497071676');
INSERT INTO `sys_module_copy` VALUES ('469', '满额包邮', 'adminsite', 'promotion', 'fullshipping', '179', '2', 'promotion/fullshipping', '1', '0', '6', '', 'nav20.png', '', '1', '1494928162', '0');
INSERT INTO `sys_module_copy` VALUES ('471', '商家地址', 'adminsite', 'order', 'returnsetting', '529', '3', 'order/returnsetting', '0', '0', '70', '退货设置', 'qq_login.png', '', '1', '1496215760', '1496216046');
INSERT INTO `sys_module_copy` VALUES ('472', '添加或修改', 'adminsite', 'order', 'addreturn', '529', '3', 'order/addreturn', '1', '0', '1', '添加退货', 'qq_login.png', '', '1', '1496215892', '1496216067');
INSERT INTO `sys_module_copy` VALUES ('474', '首页公告', 'adminsite', 'config', 'updatenotice', '10005', '3', 'config/updatenotice', '0', '0', '15', '公告', 'nav50.png', '', '1', '1496291567', '1496320766');
INSERT INTO `sys_module_copy` VALUES ('477', '网站', 'adminsite', 'config', 'shopnavigationlist', '0', '1', 'config/usernotice', '1', '0', '9', '', 'qq_login.png', '', '1', '1496303515', '1496821512');
INSERT INTO `sys_module_copy` VALUES ('478', '商品评价', 'adminsite', 'goods', 'goodscomment', '149', '2', 'goods/goodscomment', '1', '0', '8', '', 'nav2.png', '', '1', '1496310914', '0');
INSERT INTO `sys_module_copy` VALUES ('479', '商品规格', 'adminsite', 'goods', 'goodsspeclist', '149', '2', 'goods/goodsspeclist', '1', '0', '6', '', 'nav6.png', '', '1', '1496314078', '1496368479');
INSERT INTO `sys_module_copy` VALUES ('480', '添加商品规格', 'adminsite', 'goods', 'addgoodsspec', '479', '3', 'goods/addgoodsspec', '0', '0', '1', '', 'qq_login.png', '', '1', '1496368895', '0');
INSERT INTO `sys_module_copy` VALUES ('481', '修改商品规格', 'adminsite', 'goods', 'updategoodsspec', '479', '3', 'goods/updategoodsspec', '0', '0', '0', '', 'qq_login.png', '', '1', '1496386955', '0');
INSERT INTO `sys_module_copy` VALUES ('482', '商品类型', 'adminsite', 'goods', 'attributelist', '149', '2', 'goods/attributelist', '1', '0', '7', '', 'nav4.png', '', '1', '1496392434', '1496392497');
INSERT INTO `sys_module_copy` VALUES ('484', '添加商品类型', 'adminsite', 'goods', 'addattributeservice', '482', '3', 'goods/addattributeservice', '0', '0', '0', '', 'qq_login.png', '', '1', '1496395497', '1496457873');
INSERT INTO `sys_module_copy` VALUES ('485', '修改商品类型', 'adminsite', 'goods', 'updategoodsattribute', '482', '3', 'goods/updategoodsattribute', '0', '0', '0', '', 'qq_login.png', '', '1', '1496396084', '0');
INSERT INTO `sys_module_copy` VALUES ('486', '地区管理', 'adminsite', 'config', 'areamanagement', '529', '3', 'config/areamanagement', '0', '0', '50', '', 'qq_login.png', '', '1', '1496452390', '0');
INSERT INTO `sys_module_copy` VALUES ('487', '模板编辑', 'adminsite', 'express', 'expresstemplate', '529', '3', 'express/expresstemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1496459993', '0');
INSERT INTO `sys_module_copy` VALUES ('488', '会员等级', 'adminsite', 'member', 'memberlevellist', '137', '2', 'member/memberlevellist', '1', '0', '3', '', 'nav23.png', '', '1', '1496462360', '0');
INSERT INTO `sys_module_copy` VALUES ('489', '添加等级', 'adminsite', 'member', 'addmemberlevel', '488', '3', 'member/addmemberlevel', '1', '0', '1', '添加等级', 'qq_login.png', '', '1', '1496483895', '0');
INSERT INTO `sys_module_copy` VALUES ('490', '修改等级', 'adminsite', 'member', 'updatememberlevel', '488', '3', 'member/updatememberlevel', '1', '0', '0', '修改等级', 'qq_login.png', '', '1', '1496483933', '1496485692');
INSERT INTO `sys_module_copy` VALUES ('491', '专题列表', 'adminsite', 'cms', 'topiclist', '477', '2', 'cms/topiclist', '0', '0', '8', '', 'nav57.png', '', '0', '1496630179', '1496632713');
INSERT INTO `sys_module_copy` VALUES ('492', '添加专题', 'adminsite', 'cms', 'addtopic', '491', '3', 'cms/addtopic', '0', '0', '1', '添加专题', 'qq_login.png', '', '1', '1496630640', '1496632753');
INSERT INTO `sys_module_copy` VALUES ('493', '修改专题', 'adminsite', 'cms', 'updatetopic', '491', '3', 'cms/updatetopic', '1', '0', '2', '修改专题', 'qq_login.png', '', '1', '1496630696', '1496632781');
INSERT INTO `sys_module_copy` VALUES ('494', '购物设置', 'adminsite', 'config', 'shopset', '10096', '3', 'config/shopset', '0', '0', '1', '购物设置', 'qq_login.png', '', '1', '1496716845', '1496717062');
INSERT INTO `sys_module_copy` VALUES ('495', '邮件设置', 'adminsite', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', 'qq_login.png', '', '1', '1496731597', '0');
INSERT INTO `sys_module_copy` VALUES ('496', '短信设置', 'adminsite', 'config', 'messageconfig', '439', '3', 'config/messageconfig', '0', '0', '0', '', 'qq_login.png', '', '1', '1496731636', '0');
INSERT INTO `sys_module_copy` VALUES ('497', '会员积分明细', 'adminsite', 'member', 'pointdetail', '145', '3', 'member/pointdetail', '0', '0', '0', '', 'qq_login.png', '', '1', '1496739472', '0');
INSERT INTO `sys_module_copy` VALUES ('498', '会员余额明细', 'adminsite', 'member', 'accountdetail', '145', '3', 'member/accountdetail', '0', '0', '0', '', 'qq_login.png', '', '1', '1496744512', '0');
INSERT INTO `sys_module_copy` VALUES ('499', 'seo设置', 'adminsite', 'config', 'seoconfig', '528', '3', 'config/seoconfig', '0', '0', '2', 'seo设置', 'qq_login.png', '', '1', '1496750885', '1496751054');
INSERT INTO `sys_module_copy` VALUES ('501', '微信支付', 'adminsite', 'config', 'payconfig', '221', '3', 'config/payconfig', '1', '0', '1', '微信支付', 'qq_login.png', '', '1', '1496821450', '0');
INSERT INTO `sys_module_copy` VALUES ('502', '支付宝支付', 'adminsite', 'config', 'payaliconfig', '221', '3', 'config/payaliconfig', '1', '0', '2', '支付宝支付', 'qq_login.png', '', '1', '1496821780', '0');
INSERT INTO `sys_module_copy` VALUES ('503', '会员提现设置', 'adminsite', 'config', 'memberwithdrawsetting', '504', '3', 'config/memberwithdrawsetting', '0', '0', '0', '会员提现设置', 'qq_login.png', '', '1', '1496821934', '1496822222');
INSERT INTO `sys_module_copy` VALUES ('504', '会员提现', 'adminsite', 'member', 'usercommissionwithdrawlist', '137', '2', 'member/usercommissionwithdrawlist', '1', '0', '4', '', 'nav24.png', '', '1', '1496822171', '1496822242');
INSERT INTO `sys_module_copy` VALUES ('506', '模板管理', 'adminsite', 'config', 'notifytemplate', '439', '3', 'config/notifytemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1496886539', '1496974268');
INSERT INTO `sys_module_copy` VALUES ('509', '积分管理', 'adminsite', 'member', 'pointlist', '137', '2', 'member/pointlist', '1', '0', '5', '', 'nav25.png', '', '1', '1496906007', '1496906222');
INSERT INTO `sys_module_copy` VALUES ('510', '余额管理', 'adminsite', 'member', 'accountlist', '137', '2', 'member/accountlist', '1', '0', '6', '', 'nav26.png', '', '1', '1496906142', '1496906242');
INSERT INTO `sys_module_copy` VALUES ('512', '微信登录', 'adminsite', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '2', '微信登录', 'qq_login.png', '', '1', '1496907149', '1496907569');
INSERT INTO `sys_module_copy` VALUES ('513', 'qq登录', 'adminsite', 'config', 'loginconfig', '456', '3', 'config/loginconfig', '1', '0', '1', 'qq登录', 'qq_login.png', '', '1', '1496907238', '1496907552');
INSERT INTO `sys_module_copy` VALUES ('515', '欢迎页', 'adminsite', 'index', 'index', '467', '2', 'index/index', '1', '0', '0', '欢迎页', 'nav1.png', '', '0', '1496979062', '0');
INSERT INTO `sys_module_copy` VALUES ('518', '回收站列表', 'adminsite', 'goods', 'recyclelist', '150', '3', 'goods/recyclelist', '0', '0', '2', '', 'qq_login.png', '', '1', '1497445996', '1497445996');
INSERT INTO `sys_module_copy` VALUES ('519', '货到付款地区管理', 'adminsite', 'config', 'distributionareamanagement', '529', '3', 'config/distributionareamanagement', '0', '0', '24', '', 'qq_login.png', '', '1', '1497706614', '1497706614');
INSERT INTO `sys_module_copy` VALUES ('520', '自提点管理', 'adminsite', 'shop', 'pickuppointlist', '529', '3', 'shop/pickuppointlist', '0', '0', '80', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module_copy` VALUES ('521', '添加自提点', 'adminsite', 'shop', 'addpickuppoint', '529', '3', 'shop/addpickuppoint', '0', '0', '0', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module_copy` VALUES ('522', '修改自提点', 'adminsite', 'shop', 'updatepickuppoint', '529', '3', 'shop/updatepickuppoint', '0', '0', '0', '', 'qq_login.png', '', '1', '1498135759', '1498135759');
INSERT INTO `sys_module_copy` VALUES ('523', '物流跟踪设置', 'adminsite', 'config', 'expressmessage', '529', '3', 'config/expressmessage', '0', '0', '100', '', 'qq_login.png', '', '1', '1498198990', '1498198990');
INSERT INTO `sys_module_copy` VALUES ('524', '在线更新', 'adminsite', 'upgrade', 'onlineupdate', '120', '2', 'upgrade/onlineupdate', '1', '0', '1', '', 'qq_login.png', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module_copy` VALUES ('525', '运费模板列表', 'adminsite', 'express', 'freighttemplatelist', '529', '3', 'express/freighttemplatelist', '0', '0', '0', '', 'qq_login.png', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module_copy` VALUES ('526', '编辑运费模板', 'adminsite', 'express', 'freighttemplateedit', '529', '3', 'express/freighttemplateedit', '0', '0', '2', '', 'qq_login.png', '', '1', '1498733102', '1498733102');
INSERT INTO `sys_module_copy` VALUES ('527', '注册与访问', 'adminsite', 'config', 'registerAndVisit', '528', '3', 'config/registerandvisit', '0', '0', '20', '', 'qq_login.png', '', '1', '1498874511', '1498874511');
INSERT INTO `sys_module_copy` VALUES ('528', '基础设置', 'adminsite', 'config', 'webconfig', '218', '2', 'config/webconfig', '1', '0', '1', '', 'nav60.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module_copy` VALUES ('529', '配送管理', 'adminsite', 'express', 'expresscompany', '218', '2', 'express/expresscompany', '1', '0', '3', '', 'nav62.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module_copy` VALUES ('530', '站点帮助', 'adminsite', 'config', 'helpclass', '477', '2', 'config/helpdocument', '1', '0', '9', '', 'nav58.png', '', '1', '1499343015', '1499343015');
INSERT INTO `sys_module_copy` VALUES ('10001', '供货商', 'adminsite', 'member', 'supplierlist', '149', '2', 'member/supplierlist', '1', '0', '7', '', 'nav5.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module_copy` VALUES ('10002', '添加供货商', 'adminsite', 'member', 'addsupplier', '10001', '3', 'member/addsupplier', '1', '0', '0', '', 'qq_login.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module_copy` VALUES ('10003', '修改供货商', 'adminsite', 'member', 'updatesupplier', '10001', '3', 'member/updatesupplier', '1', '0', '1', '', 'qq_login.png', '', '1', '1499853120', '1499853120');
INSERT INTO `sys_module_copy` VALUES ('10004', '店铺装修', 'adminsite', 'config', 'pctemplate', '477', '2', 'config/pctemplate', '0', '0', '4', '', 'nav53.png', '', '0', '1500608761', '1500608761');
INSERT INTO `sys_module_copy` VALUES ('10005', '搜索', 'adminsite', 'config', 'searchconfig', '477', '2', 'config/searchconfig', '0', '0', '5', '', 'nav54.png', '', '0', '1500608765', '1500608765');
INSERT INTO `sys_module_copy` VALUES ('10006', '促销版块', 'adminsite', 'system', 'goodsrecommendclassmobile', '10005', '3', 'system/goodsrecommendclassmobile', '0', '0', '20', '', 'qq_login.png', '', '1', '1500608766', '1500608766');
INSERT INTO `sys_module_copy` VALUES ('10007', '授权信息', 'adminsite', 'upgrade', 'devolutioninfo', '120', '2', 'upgrade/devolutioninfo', '1', '0', '2', '', 'qq_login.png', '', '1', '1500608776', '1500608776');
INSERT INTO `sys_module_copy` VALUES ('10009', '插件管理', 'adminsite', 'extend', 'addonslist', '120', '2', 'extend/addonslist', '1', '0', '3', '', 'qq_login.png', '', '1', '1500633040', '0');
INSERT INTO `sys_module_copy` VALUES ('10010', '钩子管理', 'adminsite', 'extend', 'hookslist', '120', '2', 'extend/hookslist', '1', '0', '4', '', 'qq_login.png', '', '1', '1500633096', '0');
INSERT INTO `sys_module_copy` VALUES ('10011', '插件列表', 'adminsite', 'extend', 'pluginlist', '10008', '2', 'extend/pluginlist', '0', '0', '3', '', 'qq_login.png', '', '1', '1500633141', '0');
INSERT INTO `sys_module_copy` VALUES ('10012', '添加钩子', 'adminsite', 'extend', 'addhooks', '10010', '3', 'extend/addhooks', '1', '0', '0', '', 'qq_login.png', '', '1', '1500633268', '0');
INSERT INTO `sys_module_copy` VALUES ('10013', '修改钩子', 'adminsite', 'extend', 'updatehooks', '10010', '3', 'extend/updatehooks', '1', '0', '0', '', 'qq_login.png', '', '1', '1500633326', '0');
INSERT INTO `sys_module_copy` VALUES ('10014', '插件配置', 'adminsite', 'extend', 'pluginconfig', '10008', '2', 'extend/pluginconfig', '0', '0', '4', '', 'qq_login.png', '', '1', '1500633368', '0');
INSERT INTO `sys_module_copy` VALUES ('10015', '插件配置', 'adminsite', 'extend', 'addonsconfig', '10008', '2', 'extend/addonsconfig', '0', '0', '5', '', 'qq_login.png', '', '1', '1500633398', '0');
INSERT INTO `sys_module_copy` VALUES ('10016', '自提点运费', 'adminsite', 'shop', 'pickuppointfreight', '529', '3', 'shop/pickuppointfreight', '1', '0', '4', '', 'qq_login.png', '', '1', '1501809931', '1501809931');
INSERT INTO `sys_module_copy` VALUES ('10017', '版权', 'adminsite', 'config', 'copyrightinfo', '528', '3', 'config/copyrightinfo', '0', '0', '8', '', 'qq_login.png', '', '1', '1501810329', '1501810329');
INSERT INTO `sys_module_copy` VALUES ('10018', '手机模板', 'adminsite', 'config', 'waptemplate', '10005', '3', 'config/waptemplate', '0', '0', '3', '', 'qq_login.png', '', '1', '1501923272', '1501923272');
INSERT INTO `sys_module_copy` VALUES ('10019', '客服', 'adminsite', 'config', 'customservice', '528', '3', 'config/customservice', '0', '0', '28', '', 'qq_login.png', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module_copy` VALUES ('10021', '手机端模板', 'adminsite', 'config', 'fixedtemplate', '10004', '3', 'config/fixedtemplate', '0', '0', '2', '', 'qq_login.png', '', '1', '1502539867', '1502539867');
INSERT INTO `sys_module_copy` VALUES ('10023', '商品楼层', 'adminsite', 'system', 'goodscategoryblock', '477', '2', 'system/goodscategoryblock', '1', '0', '3', '', 'nav52.png', '', '1', '0', '0');
INSERT INTO `sys_module_copy` VALUES ('10024', '电脑端模板', 'adminsite', 'config', 'pctemplate', '10004', '3', 'config/pctemplate', '1', '0', '1', '', 'qq_login.png', '', '1', '1504697788', '1504697788');
INSERT INTO `sys_module_copy` VALUES ('10075', '商家通知', 'adminsite', 'config', 'businessnotifytemplate', '439', '3', 'config/businessnotifytemplate', '0', '0', '0', '', 'qq_login.png', '', '1', '1505870490', '0');
INSERT INTO `sys_module_copy` VALUES ('10077', '数据库管理', 'adminsite', 'dbdatabase', 'databaselist', '218', '2', 'dbdatabase/databaselist', '0', '0', '4', '', 'nav63.png', '', '0', '1506132536', '0');
INSERT INTO `sys_module_copy` VALUES ('10078', '数据库恢复', 'adminsite', 'dbdatabase', 'importdatalist', '10077', '3', 'dbdatabase/importdatalist', '0', '0', '0', '', 'qq_login.png', '', '1', '1506132758', '0');
INSERT INTO `sys_module_copy` VALUES ('10079', 'SQL执行与导入', 'adminsite', 'dbdatabase', 'sqlfilequery', '10077', '3', 'dbdatabase/sqlfilequery', '0', '0', '0', '', 'qq_login.png', '', '1', '1506132811', '0');
INSERT INTO `sys_module_copy` VALUES ('10080', '添加首页公告', 'adminsite', 'config', 'addhomenotice', '445', '3', 'config/addhomenotice', '0', '0', '1', '', 'qq_login.png', '', '1', '1508152805', '0');
INSERT INTO `sys_module_copy` VALUES ('10081', '公告编辑', 'adminsite', 'config', 'updatehomenotice', '445', '3', 'config/updatehomenotice', '0', '0', '2', '', 'qq_login.png', '', '1', '1508208576', '0');
INSERT INTO `sys_module_copy` VALUES ('10082', '上传设置', 'adminsite', 'config', 'pictureuploadsetting', '528', '3', 'config/pictureuploadsetting', '0', '0', '21', '', 'qq_login.png', '', '1', '1508152805', '0');
INSERT INTO `sys_module_copy` VALUES ('10083', '系统更新', 'adminsite', 'upgrade', 'upgradePatch', '524', '3', 'upgrade/upgradepatch', '0', '0', '0', '', 'qq_login.png', '', '1', '1508572839', '0');
INSERT INTO `sys_module_copy` VALUES ('10084', '伪静态路由', 'adminsite', 'config', 'customPseudoStaticRule', '528', '3', 'config/customPseudoStaticRule', '0', '0', '24', '', 'qq_login.png', '', '1', '1509941657', '0');
INSERT INTO `sys_module_copy` VALUES ('10085', '编辑路由规则', 'adminsite', 'config', 'updateRoutingRule', '10084', '3', 'config/updateRoutingRule', '0', '0', '0', '', 'qq_login.png', '', '1', '1509958647', '0');
INSERT INTO `sys_module_copy` VALUES ('10086', '添加路由规则', 'adminsite', 'config', 'addRoutingRules', '10084', '3', 'config/addRoutingRules', '0', '0', '0', '', 'qq_login.png', '', '1', '1509951666', '1509959648');
INSERT INTO `sys_module_copy` VALUES ('10087', '广告位管理', 'adminsite', 'system', 'shopadvpositionlist', '381', '3', 'system/shopadvpositionlist', '0', '0', '0', '', 'qq_login.png', '', '1', '1512180137', '0');
INSERT INTO `sys_module_copy` VALUES ('10096', '交易设置', 'adminsite', 'config', 'shopset', '218', '2', 'config/shopset', '1', '0', '2', '', 'nav61.png', '', '1', '1517565416', '0');
INSERT INTO `sys_module_copy` VALUES ('10097', '运营', 'adminsite', 'config', 'visitConfig', '528', '3', 'config/visitconfig', '1', '0', '2', '访问设置', 'qq_login.png', '', '1', '1517565417', '0');
INSERT INTO `sys_module_copy` VALUES ('10101', '用户操作日志', 'adminsite', 'Member', 'userOperationLogList', '126', '2', 'Member/userOperationLogList', '1', '0', '10', '用户操作日志', 'qq_login.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module_copy` VALUES ('10103', '奖励规则', 'adminsite', 'promotion', 'integral', '179', '2', 'promotion/integral', '1', '0', '10', '奖励规则', 'nav21.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module_copy` VALUES ('10104', '一键关注设置', 'adminsite', 'wchat', 'keyConcernConfig', '335', '2', 'wchat/keyConcernConfig', '1', '0', '12', '一键关注设置', 'nav48.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module_copy` VALUES ('10105', '商家服务', 'adminsite', 'config', 'merchantService', '528', '3', 'config/merchantService', '0', '0', '0', '商家服务', 'qq_login.png', '', '1', '1517565419', '0');
INSERT INTO `sys_module_copy` VALUES ('10106', '赠品发放记录', 'adminsite', 'promotion', 'giftGrantRecordsList', '195', '3', 'config/merchantService', '0', '0', '0', '赠品发放记录', 'qq_login.png', '', '1', '1517565421', '0');
INSERT INTO `sys_module_copy` VALUES ('10113', '会员足迹', 'adminsite', 'member', 'newpath', '145', '3', 'member/newpath', '0', '0', '0', '会员足迹', 'qq_login.png', '', '1', '1522756901', '0');
INSERT INTO `sys_module_copy` VALUES ('10119', '会员余额明细', 'adminsite', 'member', 'balancedetail', '145', '3', 'member/balancedetail', '1', '0', '0', '会员余额明细', 'qq_login.png', '', '1', '1522756903', '0');
INSERT INTO `sys_module_copy` VALUES ('10120', '通知记录', 'adminsite', 'config', 'notifylist', '528', '3', 'config/notifylist', '1', '0', '0', '', 'qq_login.png', '', '1', '1522756903', '0');
INSERT INTO `sys_module_copy` VALUES ('10121', '操作日志', 'adminsite', 'auth', 'authLog', '126', '3', 'auth/authLog', '0', '0', '5', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10122', '发票管理', 'adminsite', 'order', 'invoiceList', '184', '2', 'order/invoiceList', '1', '0', '15', '', 'nav13.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10123', '插件设置', 'adminsite', 'extend', 'addonsconfig', '10009', '3', 'extend/addonsconfig', '1', '0', '2', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10124', '客服管理', 'adminsite', 'Wchat', 'fansMessageManage', '335', '2', 'Wchat/fansMessageManage', '1', '0', '20', '', 'nav49.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10125', '粉丝留言', 'adminsite', 'wchat', 'fansMessageManage', '10156', '3', 'wchat/fansMessageManage', '1', '0', '1', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10126', '群发消息', 'adminsite', 'Wchat', 'sendGroupMessage', '10156', '3', 'Wchat/sendGroupMessage', '1', '0', '2', '', 'qq_login.png', '', '1', '1522756904', '0');
INSERT INTO `sys_module_copy` VALUES ('10127', '售后服务', 'adminsite', 'Order', 'customerServiceList', '184', '2', 'Order/customerServiceList', '1', '0', '16', '售后服务', 'nav14.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module_copy` VALUES ('10128', '售后详情', 'adminsite', 'Order', 'orderCustomerDetail', '10127', '3', 'Order/orderCustomerDetail', '0', '0', '0', '售后详情', 'qq_login.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module_copy` VALUES ('10129', '门店管理', 'adminsite', 'shop', 'pickuppointlist', '0', '3', 'shop/pickuppointlist', '0', '0', '0', '', 'qq_login.png', '', '0', '1522756923', '0');
INSERT INTO `sys_module_copy` VALUES ('10130', '优惠券发放记录', 'adminsite', 'promotion', 'couponGrantLog', '180', '3', 'promotion/couponGrantLog', '0', '0', '0', '', 'qq_login.png', '', '1', '1522756923', '0');
INSERT INTO `sys_module_copy` VALUES ('10135', '订单详情', 'adminsite', 'Orderpresell', 'orderDetail', '10131', '3', 'presellOrder/orderDetail', '1', '0', '0', '', 'qq_login.png', '', '1', '1522756925', '0');
INSERT INTO `sys_module_copy` VALUES ('10136', '分销', 'adminsite', 'distributionnew', 'intercalate', '0', '1', 'distributionnew/intercalate', '1', '0', '6', '分销模块', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10137', '分销设置', 'adminsite', 'distributionnew', 'intercalate', '10136', '2', 'distributionnew/intercalate', '1', '0', '1', '分销设置', 'nav27.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10138', '推广员管理', 'adminsite', 'distributionnew', 'stayPromotersTubeList', '10136', '2', 'distributionnew/stayPromotersTubeList&state=0', '1', '0', '2', '推广员管理', 'nav30.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10139', '商品分销', 'adminsite', 'distributionnew', 'distributionGoodList', '10136', '2', 'distributionnew/distributionGoodList', '1', '0', '2', '商品分销', 'nav31.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10140', '推广员佣金', 'adminsite', 'distributionnew', 'commissionList', '10136', '2', 'distributionnew/commissionList', '1', '0', '2', '推广员佣金', 'nav32.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10141', '二级分销', 'adminsite', 'distributionnew', 'distributionLevelList', '10136', '2', 'distributionnew/distributionLevelList', '1', '0', '2', '三级分销', 'nav33.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10142', '佣金提现', 'adminsite', 'distributionnew', 'withdrawCashList', '10136', '2', 'distributionnew/withdrawCashList', '1', '0', '2', '佣金提现', 'nav3-4.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10143', '推广员等级', 'adminsite', 'distributionnew', 'rankRromotersList', '10137', '3', 'distributionnew/rankRromotersList', '0', '0', '3', '推广员等级', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10144', '推广员等级添加', 'adminsite', 'distributionnew', 'addrankRromoters', '10137', '3', 'distributionnew/addrankRromoters', '0', '0', '3', '推广员等级添加', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10145', '推广员等级修改', 'adminsite', 'distributionnew', 'updaterankRromoters', '10137', '3', 'distributionnew/updaterankRromoters', '0', '0', '3', '推广员等级修改', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10146', '帐户详情', 'adminsite', 'distributionnew', 'accountDetails', '10136', '3', 'distributionnew/accountDetails', '0', '0', '1', '帐户详情', 'nav28.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10147', '分销佣金明细', 'adminsite', 'distributionnew', 'commissions', '10136', '3', 'distributionnew/commissions', '0', '0', '1', '分销佣金明细', 'nav29.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10148', '待审核', 'adminsite', 'distributionnew', 'stayPromotersTubeList', '10138', '3', 'distributionnew/stayPromotersTubeList&state=1', '0', '0', '3', '推广员管理-待审核', 'qq_login.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10149', '收银记录', 'adminsite', 'order', 'collectMoneyList', '184', '2', 'order/collectMoneyList', '1', '0', '2', '收银记录', 'nav66.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10151', '收银添加', 'adminsite', 'order', 'addCollectMoney', '10149', '3', 'order/addCollectMoney', '0', '0', '3', '收银添加', 'nav67.png', '', '1', '1480563210', '0');
INSERT INTO `sys_module_copy` VALUES ('10152', '文章评论', 'adminsite', 'cms', 'getArticCommentList', '432', '3', 'cms/getArticCommentList', '0', '0', '3', '文章评论', '', '', '1', '1480563210', '0');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shopid` int(11) NOT NULL COMMENT '店铺ID（单店版为0）',
  `notice_message` varchar(255) DEFAULT '' COMMENT '公告内容',
  `is_enable` tinyint(1) DEFAULT '0' COMMENT '是否启用（0：隐藏，1：显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站公告';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '0', '', '0');

-- ----------------------------
-- Table structure for `sys_notice_records`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_records`;
CREATE TABLE `sys_notice_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `send_type` int(11) NOT NULL DEFAULT '0' COMMENT '发送类型 1 短信发送  2邮箱发送',
  `send_account` varchar(255) NOT NULL DEFAULT '' COMMENT '发送账号',
  `send_config` text NOT NULL COMMENT '发送的配置信息',
  `records_type` int(11) NOT NULL DEFAULT '0' COMMENT '记录类型  1充值成功 2确认订单 3付款成功 4下单成功 5订单发货 6商家提醒退款订单 7 商家提醒订单提醒 8充值成功',
  `notice_title` varchar(255) NOT NULL DEFAULT '' COMMENT '通知标题',
  `notice_context` text NOT NULL COMMENT '通知内容',
  `is_send` varchar(255) NOT NULL DEFAULT '0' COMMENT '是否发送  0未发送   1发送成功  2发送失败',
  `send_message` varchar(255) NOT NULL DEFAULT '' COMMENT '发送返回结果',
  `create_date` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `send_date` int(11) NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知记录';

-- ----------------------------
-- Records of sys_notice_records
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template`;
CREATE TABLE `sys_notice_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `template_type` varchar(50) NOT NULL DEFAULT '' COMMENT '模板类型',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_code` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_title` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_content` text NOT NULL COMMENT '模板名称',
  `sign_name` varchar(50) NOT NULL DEFAULT '' COMMENT '签名',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否开启',
  `modify_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `notify_type` varchar(255) NOT NULL DEFAULT '' COMMENT '通知人类型',
  `notification_mode` text NOT NULL COMMENT '通知方式',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170 COMMENT='通知模版设置';

-- ----------------------------
-- Records of sys_notice_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice_template_item`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template_item`;
CREATE TABLE `sys_notice_template_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL DEFAULT '' COMMENT '项名称',
  `show_name` varchar(50) NOT NULL DEFAULT '' COMMENT '显示名称',
  `replace_name` varchar(50) NOT NULL DEFAULT '' COMMENT '替换字段名字',
  `type_ids` varchar(255) NOT NULL COMMENT '关联type类型',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1820 COMMENT='通知模板项';

-- ----------------------------
-- Records of sys_notice_template_item
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_notice_template_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_template_type`;
CREATE TABLE `sys_notice_template_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `template_code` varchar(50) NOT NULL DEFAULT '' COMMENT '模板编号',
  `template_type` varchar(50) NOT NULL DEFAULT '' COMMENT '模板类型',
  `notify_type` varchar(255) NOT NULL DEFAULT '' COMMENT '通知人类型',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='通知模板类型';

-- ----------------------------
-- Records of sys_notice_template_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_province`
-- ----------------------------
DROP TABLE IF EXISTS `sys_province`;
CREATE TABLE `sys_province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` tinyint(4) NOT NULL DEFAULT '0',
  `province_name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`province_id`),
  KEY `IDX_g_province_ProvinceName` (`province_name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=481;

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO `sys_province` VALUES ('1', '2', '北京市', '1');
INSERT INTO `sys_province` VALUES ('2', '2', '天津市', '0');
INSERT INTO `sys_province` VALUES ('3', '2', '河北省', '0');
INSERT INTO `sys_province` VALUES ('4', '2', '山西省', '0');
INSERT INTO `sys_province` VALUES ('5', '2', '内蒙古自治区', '0');
INSERT INTO `sys_province` VALUES ('6', '5', '辽宁省', '0');
INSERT INTO `sys_province` VALUES ('7', '5', '吉林省', '0');
INSERT INTO `sys_province` VALUES ('8', '5', '黑龙江省', '0');
INSERT INTO `sys_province` VALUES ('9', '1', '上海市', '0');
INSERT INTO `sys_province` VALUES ('10', '1', '江苏省', '0');
INSERT INTO `sys_province` VALUES ('11', '1', '浙江省', '0');
INSERT INTO `sys_province` VALUES ('12', '1', '安徽省', '0');
INSERT INTO `sys_province` VALUES ('13', '3', '福建省', '0');
INSERT INTO `sys_province` VALUES ('14', '1', '江西省', '0');
INSERT INTO `sys_province` VALUES ('15', '2', '山东省', '0');
INSERT INTO `sys_province` VALUES ('16', '4', '河南省', '0');
INSERT INTO `sys_province` VALUES ('17', '4', '湖北省', '0');
INSERT INTO `sys_province` VALUES ('18', '4', '湖南省', '0');
INSERT INTO `sys_province` VALUES ('19', '3', '广东省', '0');
INSERT INTO `sys_province` VALUES ('20', '3', '广西壮族自治区', '0');
INSERT INTO `sys_province` VALUES ('21', '3', '海南省', '0');
INSERT INTO `sys_province` VALUES ('22', '7', '重庆市', '0');
INSERT INTO `sys_province` VALUES ('23', '7', '四川省', '0');
INSERT INTO `sys_province` VALUES ('24', '7', '贵州省', '0');
INSERT INTO `sys_province` VALUES ('25', '7', '云南省', '0');
INSERT INTO `sys_province` VALUES ('26', '7', '西藏自治区', '0');
INSERT INTO `sys_province` VALUES ('27', '6', '陕西省', '0');
INSERT INTO `sys_province` VALUES ('28', '6', '甘肃省', '0');
INSERT INTO `sys_province` VALUES ('29', '6', '青海省', '0');
INSERT INTO `sys_province` VALUES ('30', '6', '宁夏回族自治区', '0');
INSERT INTO `sys_province` VALUES ('31', '6', '新疆维吾尔自治区', '0');
INSERT INTO `sys_province` VALUES ('32', '8', '香港特别行政区', '0');
INSERT INTO `sys_province` VALUES ('33', '8', '澳门特别行政区', '0');
INSERT INTO `sys_province` VALUES ('34', '8', '台湾省', '0');

-- ----------------------------
-- Table structure for `sys_shortcut_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_shortcut_menu`;
CREATE TABLE `sys_shortcut_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属店铺',
  `sort` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '模块id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=568 DEFAULT CHARSET=utf8 COMMENT='快捷菜单';

-- ----------------------------
-- Records of sys_shortcut_menu
-- ----------------------------
INSERT INTO `sys_shortcut_menu` VALUES ('567', '7', '0', '0', '185');
INSERT INTO `sys_shortcut_menu` VALUES ('563', '2', '0', '0', '0');
INSERT INTO `sys_shortcut_menu` VALUES ('566', '59', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_url_route`
-- ----------------------------
DROP TABLE IF EXISTS `sys_url_route`;
CREATE TABLE `sys_url_route` (
  `routeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` varchar(255) NOT NULL DEFAULT '' COMMENT '伪静态路由规则',
  `route` varchar(255) NOT NULL DEFAULT '' COMMENT '路由地址',
  `is_open` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统默认',
  `route_model` tinyint(4) NOT NULL DEFAULT '1' COMMENT '配置伪静态使用的模块1.shop2.wap3.admin',
  `remark` text NOT NULL COMMENT '简介',
  PRIMARY KEY (`routeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340 COMMENT='系统伪静态路由';

-- ----------------------------
-- Records of sys_url_route
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例信息',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_password` varchar(255) NOT NULL DEFAULT '' COMMENT '用户密码（MD5）',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态  用户状态默认为1',
  `user_headimg` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统后台用户 0 不是 1 是',
  `is_member` int(11) NOT NULL DEFAULT '0' COMMENT '是否是前台会员',
  `user_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `user_tel_bind` int(1) NOT NULL DEFAULT '0' COMMENT '手机号是否绑定 0 未绑定 1 绑定 ',
  `user_qq` varchar(255) DEFAULT '' COMMENT 'qq号',
  `qq_openid` varchar(255) NOT NULL DEFAULT '' COMMENT 'qq互联id',
  `qq_info` varchar(2000) NOT NULL DEFAULT '' COMMENT 'qq账号相关信息',
  `user_email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `user_email_bind` int(1) NOT NULL DEFAULT '0' COMMENT '是否邮箱绑定',
  `wx_openid` varchar(255) DEFAULT NULL COMMENT '微信用户openid',
  `wx_is_sub` int(1) NOT NULL DEFAULT '0' COMMENT '微信用户是否关注',
  `wx_info` varchar(2000) DEFAULT NULL COMMENT '微信用户信息',
  `other_info` varchar(255) DEFAULT NULL COMMENT '附加信息',
  `current_login_ip` varchar(255) DEFAULT NULL COMMENT '当前登录ip',
  `current_login_type` int(11) DEFAULT NULL COMMENT '当前登录的操作终端类型',
  `last_login_ip` varchar(255) DEFAULT NULL COMMENT '上次登录ip',
  `last_login_type` int(11) DEFAULT NULL COMMENT '上次登录的操作终端类型',
  `login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `real_name` varchar(50) DEFAULT '' COMMENT '真实姓名',
  `sex` smallint(6) DEFAULT '0' COMMENT '性别 0保密 1男 2女',
  `location` varchar(255) DEFAULT '' COMMENT '所在地',
  `nick_name` varchar(50) DEFAULT '姿博会用户' COMMENT '用户昵称',
  `wx_unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信unionid',
  `qrcode_template_id` int(11) NOT NULL DEFAULT '0' COMMENT '模板id',
  `wx_sub_time` int(11) DEFAULT '0' COMMENT '微信用户关注时间',
  `wx_notsub_time` int(11) DEFAULT '0' COMMENT '微信用户取消关注时间',
  `reg_time` int(11) DEFAULT '0' COMMENT '注册时间',
  `current_login_time` int(11) DEFAULT '0' COMMENT '当前登录时间',
  `last_login_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `birthday` int(11) DEFAULT '0',
  `is_promoters` tinyint(4) DEFAULT '0' COMMENT '是否为推广员 0 否(还未申请)   1 已通过 2 审核中 3 已拒绝',
  `applyTime` int(10) DEFAULT '0' COMMENT '推广员申请时间',
  `WxId` int(11) DEFAULT '0' COMMENT '微信公众号Id',
  `Pid` int(11) DEFAULT '0' COMMENT '上级Id',
  `level_id` int(11) DEFAULT '0' COMMENT '等级Id',
  `level_name` varchar(20) DEFAULT '' COMMENT '等级名称',
  `number` varchar(20) DEFAULT '' COMMENT '编号',
  `total_commission` decimal(12,2) DEFAULT '0.00' COMMENT '总佣金',
  `can_commission` decimal(12,2) DEFAULT '0.00' COMMENT '可提现金额',
  `stop_commission` decimal(12,2) DEFAULT '0.00' COMMENT '已提现金额',
  `collect_num` int(10) DEFAULT '0' COMMENT '课程收藏数量',
  `follow_num` int(10) DEFAULT '0' COMMENT '课程关注人数',
  `share_num` int(10) DEFAULT '0' COMMENT '课程分享数量',
  PRIMARY KEY (`uid`),
  KEY `IDX_sys_user_user_email` (`user_email`),
  KEY `IDX_sys_user_user_name` (`user_name`),
  KEY `IDX_sys_user_user_password` (`user_password`),
  KEY `IDX_sys_user_user_tel` (`user_tel`),
  KEY `IDX_sys_user_wx_openid` (`wx_openid`),
  KEY `IDX_sys_user_wx_unionid` (`wx_unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=372 COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2', '0', 'admin', '51bae8c7bfc6172e11e818d7476af994', '1', '', '1', '1', '', '0', '', '', '', '', '0', null, '0', null, null, '192.168.2.103', '1', '192.168.2.103', '1', '376', '', '0', '', 'admin', '', '0', '0', '0', '2018', '1544512861', '1544512790', '0', '0', '1532656055', '0', '0', '1', '初级推广员', 'ZBH000002', '19.35', '19.35', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('4', '0', 'mamw', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '1', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '20', '', '0', '', 'mamw', '', '0', '0', '0', '1530843646', '1538189105', '1538188942', '0', '0', '1532656055', '0', '0', '1', '初级推广员', 'ZBH000004', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('7', '0', 'cz', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '1', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '127.0.0.1', '1', '0.0.0.0', '1', '6', '', '0', '', 'cz', '', '0', '0', '0', '1531276263', '1538268039', '1538202730', '0', '0', '1532656055', '0', '0', '1', '初级推广员', 'ZBH000007', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('8', '0', 'gao123', 'e10adc3949ba59abbe56e057f20f883e', '1', 'upload/avator/1532164167.jpg', '0', '1', '18356985478', '0', '', '', '', '888888887@qq.com', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '4', '', '1', '', '煤老板', '', '0', '0', '0', '1532163700', '1534467992', '1533172972', '0', '1', '1532658769', '0', '10', '1', '一级分销', 'ZBH000001', '444.16', '444.16', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('9', '0', 'hu123', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '18356987456', '0', '', '', '', '88888888@qq.com', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '6', '', '1', '', '新月', '', '0', '0', '0', '1532309779', '1539598125', '1535094051', '0', '1', '1532658769', '0', '8', '2', '二级分销', 'ZBH000002', '1.29', '1.29', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('10', '0', 'ss', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '5', '', '0', '', 'ss', '', '0', '0', '0', '1532399689', '1544494259', '1544492578', '0', '1', '1532658769', '0', '9', '2', '二级分销', 'ZBH000003', '23.35', '23.35', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('23', '0', 'wocesi', 'e10adc3949ba59abbe56e057f20f883e', '1', 'upload/avator/1533196019.jpg', '0', '1', '18356985214', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '127.0.0.1', '1', '124', '', '1', '', '我是测试', '', '0', '0', '0', '1532658530', '1544510646', '1538976536', '0', '1', '1533008067', '0', '60', '1', '一级分销', 'ZBH000005', '70.47', '40.47', '30.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('56', '0', 'ddw', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '18314725836', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '4', '', '0', '', '其实这不是真的', '', '0', '0', '0', '1533533541', '1544497072', '1544426233', '0', '1', '1533533566', '0', '11', '1', '一级分销', 'ZBH000006', '25.78', '23.78', '2.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('59', '0', 'wjxit', 'a767764d753464419920712004718008', '1', '', '1', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '127.0.0.1', '1', '127.0.0.1', '1', '169', '', '0', '', 'wjxit', '', '0', '0', '0', '1534813172', '1546912179', '1546912023', '0', '0', '0', '0', '0', '0', '', '', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('60', '0', 'gygq', 'e10adc3949ba59abbe56e057f20f883e', '1', 'upload/avator/1546669830.jpg', '0', '1', '18358249108', '1', '', '', '', '', '0', '', '0', '', '', '127.0.0.1', '1', '127.0.0.1', '1', '67', '', '2', '', '孤月大师', '', '0', '0', '0', '1538095839', '1546914515', '1546856345', '0', '0', '0', '0', '0', '0', '', '', '0.00', '0.00', '0.00', '1', '2', '1');
INSERT INTO `sys_user` VALUES ('63', '0', '19967456398', '25f9e794323b453885f5181f1b624d0b', '1', '', '0', '1', '19967456398', '0', '', '', '', '', '0', '', '0', '', '', '127.0.0.1', '1', '127.0.0.1', '1', '3', '', '0', '', '19967456398', '', '0', '0', '0', '1539077880', '1539135170', '1539133975', '0', '0', '0', '0', '0', '0', '', '', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('92', '0', 'hgg', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '2', '', '0', '', 'hgg', '', '0', '0', '0', '1542764899', '1542764899', '1542764899', '0', '0', '1542764899', '0', '11', '0', '', '', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('93', '0', 'wgpj', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '0.0.0.0', '1', '0.0.0.0', '1', '2', '', '0', '', 'wgpj', '', '0', '0', '0', '1544505855', '1544505856', '1544505855', '0', '1', '1544505867', '0', '10', '1', '一级分销', 'ZBH000002', '0.00', '0.00', '0.00', '0', '0', '0');
INSERT INTO `sys_user` VALUES ('94', '0', 'whg', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '0', '1', '', '0', '', '', '', '', '0', '', '0', '', '', '192.168.2.186', '1', '0.0.0.0', '1', '3', '', '0', '', 'whg', '', '0', '0', '0', '1544506246', '1546406102', '1544506247', '0', '1', '1544506246', '0', '11', '1', '一级分销', 'ZBH000002', '0.00', '0.00', '0.00', '0', '0', '0');

-- ----------------------------
-- Table structure for `sys_user_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_admin`;
CREATE TABLE `sys_user_admin` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'user用户ID',
  `admin_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户姓名',
  `group_id_array` int(11) NOT NULL DEFAULT '0' COMMENT '系统用户组',
  `is_admin` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统管理员组',
  `admin_status` int(11) DEFAULT '1' COMMENT '状态 默认为1',
  `desc` text COMMENT '附加信息',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=910 COMMENT='后台管理员表';

-- ----------------------------
-- Records of sys_user_admin
-- ----------------------------
INSERT INTO `sys_user_admin` VALUES ('2', '管理员', '2', '1', '1', null);
INSERT INTO `sys_user_admin` VALUES ('4', 'mamw', '2', '0', '1', 'dd');
INSERT INTO `sys_user_admin` VALUES ('7', 'cz', '3', '0', '1', '');
INSERT INTO `sys_user_admin` VALUES ('59', 'wjxit', '2', '1', '1', '开发者帐号');

-- ----------------------------
-- Table structure for `sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `group_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `group_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户组状态',
  `is_system` int(1) NOT NULL DEFAULT '0' COMMENT '是否是系统用户组',
  `module_id_array` text NOT NULL COMMENT '系统模块ID组，用，隔开',
  `desc` text COMMENT '描述',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='系统用户组表';

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES ('2', '0', '管理员组', '1', '1', '10136,10137,10138,10139,10140,10141,10142,10143,10144,10145,10146,10147,10148,10149,10150,10151,10152,120,121,122,123,126,127,128,129,133,137,139,144,145,149,151,169,170,171,172,176,179,180,184,185,186,187,189,190,191,192,194,195,196,197,198,199,200,201,202,203,210,218,221,334,335,336,339,340,341,342,343,358,359,360,361,381,382,383,387,388,389,390,392,394,395,403,405,409,418,419,420,421,422,423,424,425,427,430,431,432,433,434,436,437,439,440,441,442,443,444,445,446,447,450,451,452,454,455,456,457,459,460,461,462,463,469,471,472,474,477,478,479,480,481,482,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,501,502,503,504,506,509,510,512,513,518,519,520,521,522,523,524,525,526,527,528,529,530,10001,10002,10003,10004,10005,10006,10007,10009,10010,10011,10012,10013,10014,10015,10016,10017,10018,10019,10021,10023,10024,10075,10077,10078,10079,10080,10081,10082,10083,10084,10085,10086,10087,10096,10097,10101,10103,10104,10105,10106,10113,10119,10120,10121,10122,10123,10124,10125,10126,10127,10128,10129,10130,10135', null, '2018', '0');
INSERT INTO `sys_user_group` VALUES ('3', '0', '打理员', '1', '0', '149,419,421,420,422,179,446,10136,10138,10148,335,341,359,477,431,432,433,455,434,452', '', '1530843540', '1538202720');
INSERT INTO `sys_user_group` VALUES ('4', '0', '操作组', '1', '0', '149,151,419,421,420,422,423,424,425,171,210,172,479,481,480,10001,10002,10003,482,484,485,334,478,139,169', '', '1531276231', '0');

-- ----------------------------
-- Table structure for `sys_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_log`;
CREATE TABLE `sys_user_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '操作用户ID',
  `user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名称',
  `is_system` int(11) NOT NULL DEFAULT '1' COMMENT '是否是后台操作',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '对应url',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '操作控制器',
  `method` varchar(255) NOT NULL DEFAULT '' COMMENT '操作方案',
  `data` text COMMENT '传输数据',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=82 COMMENT='用户操作日志';

-- ----------------------------
-- Records of sys_user_log
-- ----------------------------
INSERT INTO `sys_user_log` VALUES ('1', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545354193');
INSERT INTO `sys_user_log` VALUES ('2', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:aa', '127.0.0.1', '1545355163');
INSERT INTO `sys_user_log` VALUES ('3', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:aa', '127.0.0.1', '1545355664');
INSERT INTO `sys_user_log` VALUES ('4', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:aa', '127.0.0.1', '1545355731');
INSERT INTO `sys_user_log` VALUES ('5', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:aa', '127.0.0.1', '1545355752');
INSERT INTO `sys_user_log` VALUES ('6', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:aa', '127.0.0.1', '1545355767');
INSERT INTO `sys_user_log` VALUES ('7', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:aa-副本', '127.0.0.1', '1545355774');
INSERT INTO `sys_user_log` VALUES ('8', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/addCourseClass', '课程', '添加课程分类', '添加课程分类:aa', '127.0.0.1', '1545357652');
INSERT INTO `sys_user_log` VALUES ('9', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:aa', '127.0.0.1', '1545357673');
INSERT INTO `sys_user_log` VALUES ('10', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:aa', '127.0.0.1', '1545357680');
INSERT INTO `sys_user_log` VALUES ('11', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:烫发', '127.0.0.1', '1545357917');
INSERT INTO `sys_user_log` VALUES ('12', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:烫发', '127.0.0.1', '1545357990');
INSERT INTO `sys_user_log` VALUES ('13', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:染发', '127.0.0.1', '1545358047');
INSERT INTO `sys_user_log` VALUES ('14', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1545360985');
INSERT INTO `sys_user_log` VALUES ('15', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545360994');
INSERT INTO `sys_user_log` VALUES ('16', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545361000');
INSERT INTO `sys_user_log` VALUES ('17', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545362292');
INSERT INTO `sys_user_log` VALUES ('18', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545362312');
INSERT INTO `sys_user_log` VALUES ('19', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545362440');
INSERT INTO `sys_user_log` VALUES ('20', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545362470');
INSERT INTO `sys_user_log` VALUES ('21', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545362481');
INSERT INTO `sys_user_log` VALUES ('22', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:3国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1545362503');
INSERT INTO `sys_user_log` VALUES ('23', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545366900');
INSERT INTO `sys_user_log` VALUES ('24', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1545369874');
INSERT INTO `sys_user_log` VALUES ('25', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1545369908');
INSERT INTO `sys_user_log` VALUES ('26', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1545369923');
INSERT INTO `sys_user_log` VALUES ('27', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1545369935');
INSERT INTO `sys_user_log` VALUES ('28', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/batchAddcourseclass', '商品', '添加商品分类', '添加商品分类:', '127.0.0.1', '1545370907');
INSERT INTO `sys_user_log` VALUES ('29', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:经营管理', '127.0.0.1', '1545371456');
INSERT INTO `sys_user_log` VALUES ('30', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545371489');
INSERT INTO `sys_user_log` VALUES ('31', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:造型', '127.0.0.1', '1545371501');
INSERT INTO `sys_user_log` VALUES ('32', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:其他', '127.0.0.1', '1545371511');
INSERT INTO `sys_user_log` VALUES ('33', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:烫发', '127.0.0.1', '1545371694');
INSERT INTO `sys_user_log` VALUES ('34', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:aa', '127.0.0.1', '1545373738');
INSERT INTO `sys_user_log` VALUES ('35', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:aa-副本', '127.0.0.1', '1545373757');
INSERT INTO `sys_user_log` VALUES ('36', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545374028');
INSERT INTO `sys_user_log` VALUES ('37', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '192.168.2.186', '1545377401');
INSERT INTO `sys_user_log` VALUES ('38', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545383225');
INSERT INTO `sys_user_log` VALUES ('39', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545383326');
INSERT INTO `sys_user_log` VALUES ('40', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545383350');
INSERT INTO `sys_user_log` VALUES ('41', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545384590');
INSERT INTO `sys_user_log` VALUES ('42', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545440254');
INSERT INTO `sys_user_log` VALUES ('43', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:式', '127.0.0.1', '1545442719');
INSERT INTO `sys_user_log` VALUES ('44', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:式', '127.0.0.1', '1545442909');
INSERT INTO `sys_user_log` VALUES ('45', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545442938');
INSERT INTO `sys_user_log` VALUES ('46', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545442976');
INSERT INTO `sys_user_log` VALUES ('47', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545443026');
INSERT INTO `sys_user_log` VALUES ('48', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545443041');
INSERT INTO `sys_user_log` VALUES ('49', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545443056');
INSERT INTO `sys_user_log` VALUES ('50', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式', '127.0.0.1', '1545443078');
INSERT INTO `sys_user_log` VALUES ('51', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:1', '127.0.0.1', '1545443280');
INSERT INTO `sys_user_log` VALUES ('52', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443314');
INSERT INTO `sys_user_log` VALUES ('53', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443341');
INSERT INTO `sys_user_log` VALUES ('54', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443355');
INSERT INTO `sys_user_log` VALUES ('55', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443367');
INSERT INTO `sys_user_log` VALUES ('56', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545443576');
INSERT INTO `sys_user_log` VALUES ('57', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443802');
INSERT INTO `sys_user_log` VALUES ('58', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443831');
INSERT INTO `sys_user_log` VALUES ('59', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1', '127.0.0.1', '1545443849');
INSERT INTO `sys_user_log` VALUES ('60', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:1-副本', '127.0.0.1', '1545443862');
INSERT INTO `sys_user_log` VALUES ('61', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545445719');
INSERT INTO `sys_user_log` VALUES ('62', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updateCourseCatalogue', '课程', '修改目录', '修改目录:工11', '127.0.0.1', '1545447091');
INSERT INTO `sys_user_log` VALUES ('63', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545447475');
INSERT INTO `sys_user_log` VALUES ('64', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:3国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1545449100');
INSERT INTO `sys_user_log` VALUES ('65', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545454468');
INSERT INTO `sys_user_log` VALUES ('66', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545454598');
INSERT INTO `sys_user_log` VALUES ('67', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545454606');
INSERT INTO `sys_user_log` VALUES ('68', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545454613');
INSERT INTO `sys_user_log` VALUES ('69', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545454622');
INSERT INTO `sys_user_log` VALUES ('70', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:裁剪', '127.0.0.1', '1545454627');
INSERT INTO `sys_user_log` VALUES ('71', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:染发', '127.0.0.1', '1545458050');
INSERT INTO `sys_user_log` VALUES ('72', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:染发', '127.0.0.1', '1545458052');
INSERT INTO `sys_user_log` VALUES ('73', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545466363');
INSERT INTO `sys_user_log` VALUES ('74', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:3国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1545467382');
INSERT INTO `sys_user_log` VALUES ('75', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545613814');
INSERT INTO `sys_user_log` VALUES ('76', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseTeacher', '课程', '修改机构老师', '修改机构老师:式', '127.0.0.1', '1545616068');
INSERT INTO `sys_user_log` VALUES ('77', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseTeacher', '课程', '修改机构老师', '修改机构老师:NIKODAN', '127.0.0.1', '1545617665');
INSERT INTO `sys_user_log` VALUES ('78', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseTeacher', '课程', '修改机构老师', '修改机构老师:阿木 Wendy', '127.0.0.1', '1545617684');
INSERT INTO `sys_user_log` VALUES ('79', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545628537');
INSERT INTO `sys_user_log` VALUES ('80', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545629009');
INSERT INTO `sys_user_log` VALUES ('81', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545629933');
INSERT INTO `sys_user_log` VALUES ('82', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545635025');
INSERT INTO `sys_user_log` VALUES ('83', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545636863');
INSERT INTO `sys_user_log` VALUES ('84', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545637000');
INSERT INTO `sys_user_log` VALUES ('85', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545637058');
INSERT INTO `sys_user_log` VALUES ('86', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545637072');
INSERT INTO `sys_user_log` VALUES ('87', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545640478');
INSERT INTO `sys_user_log` VALUES ('88', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/batchAddgoodscategory', '商品', '添加商品分类', '添加商品分类:', '127.0.0.1', '1545640997');
INSERT INTO `sys_user_log` VALUES ('89', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545644077');
INSERT INTO `sys_user_log` VALUES ('90', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545644090');
INSERT INTO `sys_user_log` VALUES ('91', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545699614');
INSERT INTO `sys_user_log` VALUES ('92', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:施华蔻专业( SchwarzkopfProfessional )尚丝', '127.0.0.1', '1545700652');
INSERT INTO `sys_user_log` VALUES ('93', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545700681');
INSERT INTO `sys_user_log` VALUES ('94', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545700816');
INSERT INTO `sys_user_log` VALUES ('95', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:施华蔻专业( SchwarzkopfProfessional )尚丝', '127.0.0.1', '1545700835');
INSERT INTO `sys_user_log` VALUES ('96', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:施华蔻专业( SchwarzkopfProfessional )尚丝', '127.0.0.1', '1545700879');
INSERT INTO `sys_user_log` VALUES ('97', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545701215');
INSERT INTO `sys_user_log` VALUES ('98', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545701877');
INSERT INTO `sys_user_log` VALUES ('99', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:aa', '127.0.0.1', '1545701985');
INSERT INTO `sys_user_log` VALUES ('100', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:aa', '127.0.0.1', '1545702014');
INSERT INTO `sys_user_log` VALUES ('101', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:aa11', '127.0.0.1', '1545702132');
INSERT INTO `sys_user_log` VALUES ('102', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:施华蔻专业( SchwarzkopfProfessional )尚丝', '127.0.0.1', '1545702161');
INSERT INTO `sys_user_log` VALUES ('103', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:1国际联盟美发师顶尖强化班-副本-副本-副本-副本', '127.0.0.1', '1545702367');
INSERT INTO `sys_user_log` VALUES ('104', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545702530');
INSERT INTO `sys_user_log` VALUES ('105', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:1国际联盟美发师顶尖强化班-副本-副本-副本-副本', '127.0.0.1', '1545702544');
INSERT INTO `sys_user_log` VALUES ('106', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545702588');
INSERT INTO `sys_user_log` VALUES ('107', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545703471');
INSERT INTO `sys_user_log` VALUES ('108', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545704087');
INSERT INTO `sys_user_log` VALUES ('109', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545712797');
INSERT INTO `sys_user_log` VALUES ('110', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545718320');
INSERT INTO `sys_user_log` VALUES ('111', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545718352');
INSERT INTO `sys_user_log` VALUES ('112', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545727027');
INSERT INTO `sys_user_log` VALUES ('113', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545727111');
INSERT INTO `sys_user_log` VALUES ('114', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545786341');
INSERT INTO `sys_user_log` VALUES ('115', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:1国际联盟美发师顶尖强化班-副本-副本-副本-副本', '127.0.0.1', '1545800656');
INSERT INTO `sys_user_log` VALUES ('116', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1545803009');
INSERT INTO `sys_user_log` VALUES ('117', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1545803032');
INSERT INTO `sys_user_log` VALUES ('118', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545806668');
INSERT INTO `sys_user_log` VALUES ('119', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545872542');
INSERT INTO `sys_user_log` VALUES ('120', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545901171');
INSERT INTO `sys_user_log` VALUES ('121', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1545958857');
INSERT INTO `sys_user_log` VALUES ('122', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updateCourseCatalogue', '课程', '修改目录', '修改目录:第一款', '127.0.0.1', '1545986349');
INSERT INTO `sys_user_log` VALUES ('123', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updateCourseCatalogue', '课程', '修改目录', '修改目录:第一款', '127.0.0.1', '1545986481');
INSERT INTO `sys_user_log` VALUES ('124', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1545988298');
INSERT INTO `sys_user_log` VALUES ('125', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546392134');
INSERT INTO `sys_user_log` VALUES ('126', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546399021');
INSERT INTO `sys_user_log` VALUES ('127', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '192.168.2.186', '1546404509');
INSERT INTO `sys_user_log` VALUES ('128', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '添加商品', '添加商品:20190102洗发水', '192.168.2.186', '1546409144');
INSERT INTO `sys_user_log` VALUES ('129', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:施华蔻专业( SchwarzkopfProfessional )尚丝', '127.0.0.1', '1546415917');
INSERT INTO `sys_user_log` VALUES ('130', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546417186');
INSERT INTO `sys_user_log` VALUES ('131', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546477815');
INSERT INTO `sys_user_log` VALUES ('132', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1546477931');
INSERT INTO `sys_user_log` VALUES ('133', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:3国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1546477954');
INSERT INTO `sys_user_log` VALUES ('134', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1546477981');
INSERT INTO `sys_user_log` VALUES ('135', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:1国际联盟美发师顶尖强化班-副本-副本-副本', '127.0.0.1', '1546478014');
INSERT INTO `sys_user_log` VALUES ('136', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1546478100');
INSERT INTO `sys_user_log` VALUES ('137', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1546478149');
INSERT INTO `sys_user_log` VALUES ('138', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/goods/GoodsCreateOrUpdate', '商品', '修改商品', '修改商品:20190102洗发水', '127.0.0.1', '1546478196');
INSERT INTO `sys_user_log` VALUES ('139', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:3国际联盟美发师顶尖强化班-副本', '127.0.0.1', '1546484724');
INSERT INTO `sys_user_log` VALUES ('140', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1546485394');
INSERT INTO `sys_user_log` VALUES ('141', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546491924');
INSERT INTO `sys_user_log` VALUES ('142', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1546492153');
INSERT INTO `sys_user_log` VALUES ('143', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:国际联盟美发师顶尖强化班', '127.0.0.1', '1546493343');
INSERT INTO `sys_user_log` VALUES ('144', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1546499093');
INSERT INTO `sys_user_log` VALUES ('145', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546502150');
INSERT INTO `sys_user_log` VALUES ('146', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546506676');
INSERT INTO `sys_user_log` VALUES ('147', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546563791');
INSERT INTO `sys_user_log` VALUES ('148', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546649740');
INSERT INTO `sys_user_log` VALUES ('149', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546665464');
INSERT INTO `sys_user_log` VALUES ('150', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updateCourseCatalogue', '课程', '修改目录', '修改目录:第二款', '127.0.0.1', '1546668950');
INSERT INTO `sys_user_log` VALUES ('151', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updateCourseCatalogue', '课程', '修改目录', '修改目录:第三款', '127.0.0.1', '1546668974');
INSERT INTO `sys_user_log` VALUES ('152', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '添加课程', '添加课程:式', '127.0.0.1', '1546671933');
INSERT INTO `sys_user_log` VALUES ('153', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:式bb', '127.0.0.1', '1546671954');
INSERT INTO `sys_user_log` VALUES ('154', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/copycourse', '课程', '添加课程', '添加课程:式bb-副本', '127.0.0.1', '1546671977');
INSERT INTO `sys_user_log` VALUES ('155', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/addCourseClass', '课程', '添加课程分类', '添加课程分类:a', '127.0.0.1', '1546672138');
INSERT INTO `sys_user_log` VALUES ('156', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/batchAddcourseclass', '商品', '添加商品分类', '添加商品分类:', '127.0.0.1', '1546672144');
INSERT INTO `sys_user_log` VALUES ('157', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/batchAddcourseclass', '商品', '添加商品分类', '添加商品分类:', '127.0.0.1', '1546672151');
INSERT INTO `sys_user_log` VALUES ('158', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseclass', '课程', '修改课程分类', '修改课程分类:b1', '127.0.0.1', '1546672170');
INSERT INTO `sys_user_log` VALUES ('159', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1546672268');
INSERT INTO `sys_user_log` VALUES ('160', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecoursemechanism', '课程', '修改合作机构', '修改合作机构:', '127.0.0.1', '1546672285');
INSERT INTO `sys_user_log` VALUES ('161', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/updatecourseTeacher', '课程', '修改机构老师', '修改机构老师:aa11', '127.0.0.1', '1546672389');
INSERT INTO `sys_user_log` VALUES ('162', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/course/CourseCreateOrUpdate', '课程', '修改课程', '修改课程:2国际联盟美发师顶尖强化班-副本-副本', '127.0.0.1', '1546673866');
INSERT INTO `sys_user_log` VALUES ('163', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546836922');
INSERT INTO `sys_user_log` VALUES ('164', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546844623');
INSERT INTO `sys_user_log` VALUES ('165', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546853314');
INSERT INTO `sys_user_log` VALUES ('166', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546912023');
INSERT INTO `sys_user_log` VALUES ('167', '59', 'wjxit', '1', 'http://www.hairdressing.com/index.php?s=/adminsite/login/login', '用户', '用户登录', '', '127.0.0.1', '1546912179');

-- ----------------------------
-- Table structure for `sys_version_devolution`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_devolution`;
CREATE TABLE `sys_version_devolution` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `devolution_username` varchar(255) NOT NULL DEFAULT '' COMMENT '授权账户',
  `devolution_password` varchar(255) NOT NULL DEFAULT '' COMMENT '授权密码',
  `create_date` int(11) DEFAULT '0' COMMENT '更新时间',
  `devolution_code` varchar(255) NOT NULL DEFAULT '' COMMENT '授权码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='用户授权信息';

-- ----------------------------
-- Records of sys_version_devolution
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_version_patch`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_patch`;
CREATE TABLE `sys_version_patch` (
  `patch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `patch_type` int(11) NOT NULL DEFAULT '1' COMMENT '补丁类型  1. B2C单用户商城 2.B2C 单用户分销商城 3 B2B2C多用户商城',
  `patch_type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁类型名称',
  `patch_release` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁编号',
  `patch_name` varchar(255) NOT NULL DEFAULT '' COMMENT '补丁标题',
  `patch_no` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '版本号',
  `patch_file_name` varchar(50) NOT NULL DEFAULT '' COMMENT '补丁文件名称',
  `patch_log` text NOT NULL COMMENT '版本补丁更新日志',
  `patch_file_size` varchar(255) NOT NULL DEFAULT '' COMMENT '补丁文件大小',
  `is_up` int(11) NOT NULL DEFAULT '2' COMMENT '是否升级  1代表已升级  0未升级 2全部',
  `modify_date` int(11) DEFAULT '0' COMMENT '更新时间',
  `patch_download_url` varchar(255) NOT NULL DEFAULT '' COMMENT '更新地址',
  `is_new_update` int(11) NOT NULL DEFAULT '0' COMMENT '是否为最新的更新版本',
  `from_version` varchar(255) NOT NULL DEFAULT '' COMMENT '在多少版本之上升级',
  PRIMARY KEY (`patch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本补丁管理';

-- ----------------------------
-- Records of sys_version_patch
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_version_update_records`
-- ----------------------------
DROP TABLE IF EXISTS `sys_version_update_records`;
CREATE TABLE `sys_version_update_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_no` varchar(255) NOT NULL DEFAULT '' COMMENT '授权码',
  `update_type` int(11) NOT NULL DEFAULT '1' COMMENT '更新方式1. 线下2.在线',
  `version` varchar(50) NOT NULL DEFAULT '' COMMENT '当前版本',
  `update_version` varchar(255) NOT NULL DEFAULT '' COMMENT '升级版本',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `version_type` varchar(255) NOT NULL DEFAULT 'b2c' COMMENT '升级版本',
  `remark` text NOT NULL COMMENT '更新说明',
  `is_complete` int(11) NOT NULL DEFAULT '0' COMMENT '是否更新完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本升级记录表';

-- ----------------------------
-- Records of sys_version_update_records
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_wap_custom_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_wap_custom_template`;
CREATE TABLE `sys_wap_custom_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `template_name` varchar(250) DEFAULT '' COMMENT '自定义模板名称（暂时预留）',
  `template_data` longtext COMMENT '模板数据（JSON格式）',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间戳',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间戳',
  `is_enable` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用 0 不启用 1 启用',
  `is_default` int(11) DEFAULT '0' COMMENT '是否为默认模板 0 不是 1 是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机端自定义模板';

-- ----------------------------
-- Records of sys_wap_custom_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_website`
-- ----------------------------
DROP TABLE IF EXISTS `sys_website`;
CREATE TABLE `sys_website` (
  `website_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '网站标题',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT '网站logo',
  `web_desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '网站描述',
  `key_words` varchar(255) NOT NULL DEFAULT '' COMMENT '网站关键字',
  `web_icp` varchar(255) NOT NULL DEFAULT '' COMMENT '网站备案号',
  `style_id_pc` int(10) NOT NULL DEFAULT '2' COMMENT '前台网站风格（1：热情洋溢模板，2：蓝色清爽版）',
  `web_address` varchar(255) NOT NULL DEFAULT '' COMMENT '网站联系地址',
  `web_qrcode` varchar(255) NOT NULL DEFAULT '' COMMENT '网站公众号二维码',
  `web_url` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺网址',
  `web_email` varchar(255) NOT NULL DEFAULT '' COMMENT '网站邮箱',
  `web_phone` varchar(255) NOT NULL DEFAULT '' COMMENT '网站联系方式',
  `web_qq` varchar(255) NOT NULL DEFAULT '' COMMENT '网站qq号',
  `web_weixin` varchar(255) NOT NULL DEFAULT '' COMMENT '网站微信号',
  `web_status` int(10) NOT NULL DEFAULT '1' COMMENT '网站运营状态1.开启 2.关闭 ',
  `third_count` text NOT NULL COMMENT '第三方统计',
  `close_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '站点关闭原因',
  `wap_status` int(10) NOT NULL DEFAULT '1' COMMENT '手机端运营状态 1.开启2.关闭',
  `style_id_admin` int(10) DEFAULT '4' COMMENT '后台网站风格（3：旧模板，4：新模板）',
  `create_time` int(11) DEFAULT '0' COMMENT '网站创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '网站修改时间',
  `url_type` int(11) NOT NULL DEFAULT '0' COMMENT '网站访问模式',
  `web_popup_title` varchar(50) NOT NULL DEFAULT '' COMMENT '网站弹出框标题',
  `web_wechat_share_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '微信分享logo',
  `web_gov_record` varchar(60) NOT NULL DEFAULT '' COMMENT '网站公安备案信息',
  `web_gov_record_url` varchar(255) NOT NULL DEFAULT '' COMMENT '网站公安备案跳转链接地址',
  `is_show_follow` smallint(1) NOT NULL DEFAULT '1' COMMENT 'wap端是否显示顶部关注',
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站信息表';

-- ----------------------------
-- Records of sys_website
-- ----------------------------
INSERT INTO `sys_website` VALUES ('1', '齐刘海', 'upload/common/1544493306.png', '齐刘海', '齐刘海', '浙ICP备16030888号-1', '1', '杭州下城区新天地东楼130', 'upload/common/1544493324.png', 'http://192.168.2.123/hairdressing/index.php?s=/admin/index/index', '', '10086', '88888888', '', '1', '', '对不起，齐刘海商城维护中，大家敬请期待...', '1', '0', '1477452112', '1545298537', '0', '齐刘海', 'upload/common/1544493314.png', '', '', '1');

-- ----------------------------
-- Table structure for `sys_web_style`
-- ----------------------------
DROP TABLE IF EXISTS `sys_web_style`;
CREATE TABLE `sys_web_style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(50) NOT NULL DEFAULT '' COMMENT '样式名称',
  `style_path` varchar(255) NOT NULL DEFAULT '' COMMENT '样式路径',
  `stye_img` varchar(255) NOT NULL DEFAULT '' COMMENT '样式图片路径',
  `desc` text COMMENT '备注',
  `type` int(11) DEFAULT '1' COMMENT '1：前台样式，2：后台样式',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='网站前台样式表';

-- ----------------------------
-- Records of sys_web_style
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_auth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_auth`;
CREATE TABLE `sys_weixin_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `authorizer_appid` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的appid  授权之后不用刷新',
  `authorizer_refresh_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺授权之后的刷新token，每月刷新',
  `authorizer_access_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的公众号token，只有2小时',
  `func_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '授权项目',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号头像url',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号原始账号',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号原始名称',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号二维码url',
  `auth_time` int(11) DEFAULT '0' COMMENT '授权时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='店铺(实例)微信公众账号授权';

-- ----------------------------
-- Records of sys_weixin_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_default_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_default_replay`;
CREATE TABLE `sys_weixin_default_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of sys_weixin_default_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_fans`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_fans`;
CREATE TABLE `sys_weixin_fans` (
  `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `instance_id` int(11) NOT NULL COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_decode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `is_subscribe` bigint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  `subscribe_date` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_date` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `update_date` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  PRIMARY KEY (`fans_id`),
  KEY `IDX_sys_weixin_fans_openid` (`openid`),
  KEY `IDX_sys_weixin_fans_unionid` (`unionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微信公众号获取粉丝列表';

-- ----------------------------
-- Records of sys_weixin_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_follow_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_follow_replay`;
CREATE TABLE `sys_weixin_follow_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of sys_weixin_follow_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_functions_button`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_functions_button`;
CREATE TABLE `sys_weixin_functions_button` (
  `button_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `instance_id` int(11) NOT NULL COMMENT '实例',
  `button_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名',
  `keyname` varchar(20) NOT NULL DEFAULT '' COMMENT '触发关键词',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '触发网址',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发次数',
  `is_enabled` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `is_system` int(1) DEFAULT '0',
  `orders` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1489 COMMENT='微信功能按钮';

-- ----------------------------
-- Records of sys_weixin_functions_button
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_instance_msg`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_instance_msg`;
CREATE TABLE `sys_weixin_instance_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL COMMENT '店铺id（单店版为0）',
  `template_no` varchar(55) NOT NULL COMMENT '模版编号',
  `template_id` varbinary(55) DEFAULT NULL COMMENT '微信模板消息的ID',
  `title` varchar(100) NOT NULL COMMENT '模版标题',
  `is_enable` bit(1) DEFAULT b'0' COMMENT '是否启用',
  `headtext` varchar(255) NOT NULL COMMENT '头部文字',
  `bottomtext` varchar(255) NOT NULL COMMENT '底部文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 COMMENT='微信实例消息';

-- ----------------------------
-- Records of sys_weixin_instance_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_key_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_key_replay`;
CREATE TABLE `sys_weixin_key_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `key` varchar(255) NOT NULL COMMENT '关键词',
  `match_type` tinyint(4) NOT NULL COMMENT '匹配类型1模糊匹配2全部匹配',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关键词回复';

-- ----------------------------
-- Records of sys_weixin_key_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_media`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_media`;
CREATE TABLE `sys_weixin_media` (
  `media_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id店铺id',
  `type` varchar(255) NOT NULL DEFAULT '1' COMMENT '类型1文本(项表无内容) 2单图文 3多图文',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170;

-- ----------------------------
-- Records of sys_weixin_media
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_media_item`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_media_item`;
CREATE TABLE `sys_weixin_media_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `media_id` int(11) NOT NULL COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `show_cover_pic` tinyint(4) NOT NULL DEFAULT '1' COMMENT '封面图片显示在正文中',
  `summary` text,
  `content` text NOT NULL COMMENT '正文',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`),
  KEY `id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712;

-- ----------------------------
-- Records of sys_weixin_media_item
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_menu`;
CREATE TABLE `sys_weixin_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`menu_id`),
  KEY `IDX_biz_shop_menu_orders` (`sort`),
  KEY `IDX_biz_shop_menu_shopId` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微设置->微店菜单';

-- ----------------------------
-- Records of sys_weixin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_msg_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_msg_template`;
CREATE TABLE `sys_weixin_msg_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_no` varchar(55) NOT NULL COMMENT '编号',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `contents` varchar(255) NOT NULL DEFAULT '' COMMENT '内容示例',
  `template_id` varchar(55) DEFAULT '' COMMENT '模版id',
  `headtext` varchar(255) DEFAULT NULL COMMENT '头部文字',
  `bottomtext` varchar(255) DEFAULT NULL COMMENT '底部文字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信消息模版';

-- ----------------------------
-- Records of sys_weixin_msg_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_qrcode_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_qrcode_template`;
CREATE TABLE `sys_weixin_qrcode_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '实例ID',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `background` varchar(255) NOT NULL DEFAULT '' COMMENT '背景图片',
  `nick_font_color` varchar(255) NOT NULL DEFAULT '#000' COMMENT '昵称字体颜色',
  `nick_font_size` smallint(6) NOT NULL DEFAULT '12' COMMENT '昵称字体大小',
  `is_logo_show` smallint(6) NOT NULL DEFAULT '1' COMMENT 'logo是否显示',
  `header_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '头部左边距',
  `header_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '头部上边距',
  `name_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '昵称左边距',
  `name_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '昵称上边距',
  `logo_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT 'logo左边距',
  `logo_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT 'logo上边距',
  `code_left` varchar(6) NOT NULL DEFAULT '0px' COMMENT '二维码左边距',
  `code_top` varchar(6) NOT NULL DEFAULT '0px' COMMENT '二维码上边距',
  `is_check` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_remove` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除  0未删除 1删除',
  `template_url` varchar(255) NOT NULL DEFAULT '' COMMENT '模板样式路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461 COMMENT='微信推广二维码模板管理';

-- ----------------------------
-- Records of sys_weixin_qrcode_template
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_user_msg`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_user_msg`;
CREATE TABLE `sys_weixin_user_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `content` text,
  `is_replay` int(11) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `create_time` int(11) DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝openid',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息表';

-- ----------------------------
-- Records of sys_weixin_user_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_weixin_user_msg_replay`
-- ----------------------------
DROP TABLE IF EXISTS `sys_weixin_user_msg_replay`;
CREATE TABLE `sys_weixin_user_msg_replay` (
  `replay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `replay_uid` int(11) NOT NULL COMMENT '当前客服uid',
  `replay_type` varchar(255) NOT NULL,
  `content` text,
  `replay_time` int(11) DEFAULT '0',
  `nickname` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  PRIMARY KEY (`replay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息回复表';

-- ----------------------------
-- Records of sys_weixin_user_msg_replay
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_wexin_onekeysubscribe`
-- ----------------------------
DROP TABLE IF EXISTS `sys_wexin_onekeysubscribe`;
CREATE TABLE `sys_wexin_onekeysubscribe` (
  `instance_id` int(11) NOT NULL COMMENT '实例ID',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '一键关注url',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 COMMENT='微信一键关注设置';

-- ----------------------------
-- Records of sys_wexin_onekeysubscribe
-- ----------------------------
INSERT INTO `sys_wexin_onekeysubscribe` VALUES ('0', '');
