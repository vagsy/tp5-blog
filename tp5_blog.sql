-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-01 11:09:28
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
  `pic` varchar(100) NOT NULL COMMENT '缩略图',
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐 1：推荐',
  `time` int(10) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) DEFAULT NULL COMMENT '所属栏目'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_cate`
--

CREATE TABLE `tp_cate` (
  `id` mediumint(9) NOT NULL COMMENT '栏目id',
  `catename` varchar(30) NOT NULL COMMENT '栏目名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id';
--
-- 使用表AUTO_INCREMENT `tp_cate`
--
ALTER TABLE `tp_cate`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id';
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
