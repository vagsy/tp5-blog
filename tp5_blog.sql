-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-06 10:37:58
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp5_blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_admin`
--

CREATE TABLE `tp_admin` (
  `id` mediumint(9) NOT NULL,
  `username` varchar(30) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_admin`
--

INSERT INTO `tp_admin` (`id`, `username`, `password`) VALUES
(1, 'admin123', '0192023a7bbd73250516f069df18b500'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- 表的结构 `tp_article`
--

CREATE TABLE `tp_article` (
  `id` mediumint(9) NOT NULL COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `author` varchar(30) NOT NULL COMMENT '文章作者',
  `desc` varchar(255) NOT NULL COMMENT '文章简介',
  `keywords` varchar(255) NOT NULL COMMENT '文章关键词',
  `content` text NOT NULL COMMENT '文章内容',
  `pic` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_article`
--

INSERT INTO `tp_article` (`id`, `title`, `author`, `desc`, `keywords`, `content`, `pic`, `click`, `state`, `time`, `cateid`) VALUES
(1, '测试', '测试', '测试', '测试,文章', '<p>测试</p>', '', 2, 0, 1519974755, 1),
(2, 'test', 'test', 'test', 'test,文章', '<p>test</p>', '', 20, 1, 1519975271, 2),
(3, 'test', '', '', '养生,文章', '', '', 0, 0, 1519975536, 3),
(4, 'test', '', '', 'test,测试', '', '/uploads/20180302\\016a5493cc6afd0cddb2ac79ef4265b9.jpg', 1, 0, 1519977571, 4),
(5, 'test2', 'test2', 'test2', 'test2,文章', '<p>test2</p>', '/uploads/20180302\\c31b8e2ae71e1f6dafc87230ad60c086.jpg', 2, 1, 1519978462, 1),
(6, '广州公司聚餐好去处 聚餐休闲的好地方', '青蛙呱呱', '广州公司聚餐好去处有哪些呢？以下是小编整理的一些网友推荐的餐厅以及推荐理由，需要的朋友不妨来看看有没有让你满意的吧。', '聚餐', '<p style="text-align:center;list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;"><br/></p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;"><strong style="list-style: none; margin: 0px; padding: 0px;">1：香江大酒店茶皇厅</strong></p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">地址：番禺区大石迎宾路538号香江大酒店2楼(近沙溪大桥)</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">电话：020-84786888转 84786168</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">价格人均：￥79</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">网友评价：口味:21 环境:19 服务:19</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">餐厅简介: 虽说也做“中餐和早茶”，但自助餐才是真正的“拳头产品”。一落座，先送一份炖汤，“真材实料”，而且“每天不同”。自取的食物品种“多”，味道“好”，甚至有“不少”“普通自助吃不到”的“贵价食品”。“三文鱼、象拔蚌、北极贝任吃”，还有很多的<span style="list-style: none; margin: 0px; padding: 0px;text-decoration:underline;"><a href="file:///E:/jiehun/z96592.html" target="_blank" style="list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;">海鲜</a></span>、炖汤、甜水等。环境和服务都“好好”，“生日当天凭身份证”还可以“免费一位”。</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">推荐菜式: 三文鱼、象拔蚌、木瓜炖雪蛤、冻蟹。</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;"><strong style="list-style: none; margin: 0px; padding: 0px;">2：白虎西餐厅(长隆酒店)</strong></p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">地址：广州市番禺区大石迎宾路</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">电话：020-84786838</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">价格人均：￥159</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">网友评价：口味:22 环境:32 服务:26</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">推荐理由： 环境“一流”，自助餐种类“多”，口味“不错”。去的话，可以“随意”吃三文鱼而“不用排队”，还有“超多的海鲜、刺身、寿司之类”，点心、<span style="list-style: none; margin: 0px; padding: 0px;text-decoration:underline;"><a href="file:///E:/jiehun/shuiguo/" target="_blank" style="list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;">水果</a></span>也“相当好”。“最最喜欢”的是可以“一边看白虎，一边吃饭”，“不知不觉”总能“吃多”。吃完后，“一路走去”，还可以观赏“不少动物”。因此，就算价钱“超五星级”，也是“物有所值”。</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;"><strong style="list-style: none; margin: 0px; padding: 0px;">3：唐荔园餐厅</strong></p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">地址：荔湾区黄沙大道如意坊路口荔湾湖公园内</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">电话：020-81702228</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">价格人均：￥71</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">网友评价：口味:22 环境:26 服务:18</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">简介: 公园里的“园林酒家”，档次“不差”，性价比也“很好”。做的是“正宗<span style="list-style: none; margin: 0px; padding: 0px;text-decoration:underline;"><a href="file:///E:/jiehun/yuecai/" target="_blank" style="list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration-line: none; color: rgb(11, 59, 140); display: inline-block;">粤菜</a></span>”，颇具“西关风味”。早茶也“不错”，“一直开到中午”。环境“冇得弹”，临湖，空气“清新”。“靠湖边”的桌子“用绿色花栏隔开”，“不会相互干扰”。最爱等到“晚上”，湖中“各色彩灯”亮起时，到“湖心的小艇”上用餐(设最低消费)，“别有一番感受”。</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">推荐菜谱: 乳鸽、艇仔粥。</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;"><strong style="list-style: none; margin: 0px; padding: 0px;">4：利苑酒家</strong></p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">越秀店地址：越秀区建设六马路33号宜安广场4楼</p><p style="list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px;">越秀店电话：020-84786888转 84786168</p><p><br/></p>', '/uploads/20180305\\2752f212f7b9f893b31b775abc1a16ba.png', 15, 0, 1520238180, 1),
(7, '吃泡面有什么坏处 泡面危害致癌拯救泡面族(5)', '', '泡面虽然方便,冲泡容易,口味也可以,但您知道吃泡面有什么坏处吗?它潜藏着巨大的有害健康的危险因子!经医学临床报告,吃一包泡面就需要肝脏解毒32天。', '美食,test,文章,测试', '<p>泡面虽然方便,冲泡容易,口味也可以,但您知道吃泡面有什么坏处吗?它潜藏着巨大的有害健康的危险因子!经医学临床报告,吃一包泡面就需要肝脏解毒32天。</p>', '/uploads/20180305\\db627f916a0c5eba34764d4519223c1a.jpg', 1, 0, 1520238295, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_cate`
--

CREATE TABLE `tp_cate` (
  `id` mediumint(9) NOT NULL COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_cate`
--

INSERT INTO `tp_cate` (`id`, `catename`) VALUES
(1, '美食'),
(2, '健身'),
(3, '养生'),
(4, '服装'),
(6, '美食'),
(7, '美食'),
(8, '美食'),
(9, '美食');

-- --------------------------------------------------------

--
-- 表的结构 `tp_links`
--

CREATE TABLE `tp_links` (
  `id` mediumint(9) NOT NULL COMMENT '链接id',
  `title` varchar(30) NOT NULL COMMENT '链接标题',
  `url` varchar(60) NOT NULL COMMENT '链接地址',
  `desc` varchar(255) NOT NULL COMMENT '链接描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_links`
--

INSERT INTO `tp_links` (`id`, `title`, `url`, `desc`) VALUES
(1, '百度', 'http://www.baidu.com', '百度网');

-- --------------------------------------------------------

--
-- 表的结构 `tp_tags`
--

CREATE TABLE `tp_tags` (
  `id` mediumint(9) NOT NULL COMMENT 'tag标签id',
  `tagname` varchar(30) NOT NULL COMMENT 'tag标签名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_tags`
--

INSERT INTO `tp_tags` (`id`, `tagname`) VALUES
(3, '121'),
(2, '美食'),
(4, '测试');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_admin`
--
ALTER TABLE `tp_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_article`
--
ALTER TABLE `tp_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_cate`
--
ALTER TABLE `tp_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_links`
--
ALTER TABLE `tp_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_tags`
--
ALTER TABLE `tp_tags`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tp_admin`
--
ALTER TABLE `tp_admin`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `tp_article`
--
ALTER TABLE `tp_article`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `tp_cate`
--
ALTER TABLE `tp_cate`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `tp_links`
--
ALTER TABLE `tp_links`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id', AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `tp_tags`
--
ALTER TABLE `tp_tags`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'tag标签id', AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
