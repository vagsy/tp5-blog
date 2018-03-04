-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-02 11:21:08
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
(1, '测试', '测试', '测试', '测试', '<p>测试</p>', '', 0, 0, 1519974755, 1),
(2, 'test', 'test', 'test', 'test', '<p>test</p>', '', 0, 1, 1519975271, 2),
(3, 'test', '', '', '', '', '', 0, 0, 1519975536, 3),
(4, 'test', '', '', '', '', '/uploads/20180302\\016a5493cc6afd0cddb2ac79ef4265b9.jpg', 0, 0, 1519977571, 4),
(5, 'test2', 'test2', 'test2', 'test2', '<p>test2</p>', '/uploads/20180302\\c31b8e2ae71e1f6dafc87230ad60c086.jpg', 0, 1, 1519978462, 1);

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
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id', AUTO_INCREMENT=6;
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
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'tag标签id';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
