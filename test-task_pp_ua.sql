-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 01 2016 г., 19:35
-- Версия сервера: 5.7.13-0ubuntu0.16.04.2
-- Версия PHP: 5.6.24-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test-task.pp.ua`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `reviews` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `author`, `filename`, `reviews`) VALUES
(1, 'ad', 7, 'flags/ad.png', 14),
(2, 'ae', 5, 'flags/ae.png', 3),
(3, 'af', 7, 'flags/af.png', 19),
(4, 'ag', 7, 'flags/ag.png', 45),
(5, 'ai', 2, 'flags/ai.png', 12),
(6, 'al', 2, 'flags/al.png', 30),
(7, 'am', 6, 'flags/am.png', 18),
(8, 'an', 5, 'flags/an.png', 16),
(9, 'ao', 7, 'flags/ao.png', 21),
(10, 'ar', 5, 'flags/ar.png', 25),
(11, 'as', 3, 'flags/as.png', 45),
(12, 'at', 4, 'flags/at.png', 26),
(13, 'au', 4, 'flags/au.png', 36),
(14, 'aw', 5, 'flags/aw.png', 10),
(15, 'ax', 2, 'flags/ax.png', 5),
(16, 'az', 2, 'flags/az.png', 5),
(17, 'ba', 3, 'flags/ba.png', 41),
(18, 'bb', 2, 'flags/bb.png', 15),
(19, 'bd', 2, 'flags/bd.png', 7),
(20, 'be', 2, 'flags/be.png', 20),
(21, 'bf', 3, 'flags/bf.png', 23),
(22, 'bg', 1, 'flags/bg.png', 5),
(23, 'bh', 6, 'flags/bh.png', 29),
(24, 'bi', 4, 'flags/bi.png', 40),
(25, 'bj', 1, 'flags/bj.png', 2),
(26, 'bm', 3, 'flags/bm.png', 17),
(27, 'bn', 7, 'flags/bn.png', 38),
(28, 'bo', 6, 'flags/bo.png', 23),
(29, 'br', 4, 'flags/br.png', 28),
(30, 'bs', 5, 'flags/bs.png', 34),
(31, 'bt', 5, 'flags/bt.png', 42),
(32, 'bv', 6, 'flags/bv.png', 2),
(33, 'bw', 5, 'flags/bw.png', 49),
(34, 'by', 3, 'flags/by.png', 42),
(35, 'bz', 1, 'flags/bz.png', 27),
(36, 'ca', 2, 'flags/ca.png', 25),
(37, 'cc', 7, 'flags/cc.png', 12),
(38, 'cd', 5, 'flags/cd.png', 41),
(39, 'cf', 6, 'flags/cf.png', 2),
(40, 'cg', 5, 'flags/cg.png', 42),
(41, 'ch', 1, 'flags/ch.png', 45),
(42, 'ci', 2, 'flags/ci.png', 1),
(43, 'ck', 5, 'flags/ck.png', 1),
(44, 'cl', 4, 'flags/cl.png', 5),
(45, 'cm', 5, 'flags/cm.png', 8),
(46, 'cn', 6, 'flags/cn.png', 11),
(47, 'co', 1, 'flags/co.png', 29),
(48, 'cr', 2, 'flags/cr.png', 33),
(49, 'cs', 4, 'flags/cs.png', 31),
(50, 'cu', 4, 'flags/cu.png', 33),
(51, 'cv', 2, 'flags/cv.png', 37),
(52, 'cx', 2, 'flags/cx.png', 6),
(53, 'cy', 7, 'flags/cy.png', 40),
(54, 'cz', 7, 'flags/cz.png', 41),
(55, 'de', 6, 'flags/de.png', 27),
(56, 'dj', 5, 'flags/dj.png', 48),
(57, 'dk', 4, 'flags/dk.png', 42),
(58, 'dm', 7, 'flags/dm.png', 4),
(59, 'do', 7, 'flags/do.png', 24),
(60, 'dz', 2, 'flags/dz.png', 22),
(61, 'ec', 5, 'flags/ec.png', 49),
(62, 'ee', 5, 'flags/ee.png', 32),
(63, 'eg', 4, 'flags/eg.png', 47),
(64, 'eh', 3, 'flags/eh.png', 4),
(65, 'england', 4, 'flags/england.png', 40),
(66, 'er', 6, 'flags/er.png', 34),
(67, 'es', 4, 'flags/es.png', 47),
(68, 'et', 6, 'flags/et.png', 26),
(69, 'fam', 6, 'flags/fam.png', 38),
(70, 'fi', 3, 'flags/fi.png', 28),
(71, 'fj', 3, 'flags/fj.png', 0),
(72, 'fk', 4, 'flags/fk.png', 38),
(73, 'fm', 6, 'flags/fm.png', 24),
(74, 'fo', 6, 'flags/fo.png', 35),
(75, 'fr', 7, 'flags/fr.png', 1),
(76, 'ga', 1, 'flags/ga.png', 30),
(77, 'gb', 7, 'flags/gb.png', 40),
(78, 'gd', 2, 'flags/gd.png', 27),
(79, 'ge', 6, 'flags/ge.png', 27),
(80, 'gh', 5, 'flags/gh.png', 13),
(81, 'gi', 3, 'flags/gi.png', 19),
(82, 'gl', 7, 'flags/gl.png', 44),
(83, 'gm', 3, 'flags/gm.png', 39),
(84, 'gn', 3, 'flags/gn.png', 1),
(85, 'gp', 4, 'flags/gp.png', 37),
(86, 'gq', 5, 'flags/gq.png', 43),
(87, 'gr', 6, 'flags/gr.png', 5),
(88, 'gs', 5, 'flags/gs.png', 29),
(89, 'gt', 5, 'flags/gt.png', 21),
(90, 'gu', 2, 'flags/gu.png', 28),
(91, 'gw', 4, 'flags/gw.png', 20),
(92, 'gy', 2, 'flags/gy.png', 22),
(93, 'hk', 2, 'flags/hk.png', 20),
(94, 'hn', 7, 'flags/hn.png', 46),
(95, 'hr', 7, 'flags/hr.png', 31),
(96, 'ht', 2, 'flags/ht.png', 13),
(97, 'hu', 1, 'flags/hu.png', 6),
(98, 'id', 2, 'flags/id.png', 16),
(99, 'ie', 7, 'flags/ie.png', 27),
(100, 'il', 3, 'flags/il.png', 21),
(101, 'in', 2, 'flags/in.png', 48),
(102, 'io', 2, 'flags/io.png', 1),
(103, 'iq', 1, 'flags/iq.png', 44),
(104, 'ir', 5, 'flags/ir.png', 34),
(105, 'is', 3, 'flags/is.png', 44),
(106, 'it', 2, 'flags/it.png', 37),
(107, 'jm', 2, 'flags/jm.png', 19),
(108, 'jo', 2, 'flags/jo.png', 22),
(109, 'jp', 6, 'flags/jp.png', 8),
(110, 'ke', 3, 'flags/ke.png', 37),
(111, 'kg', 6, 'flags/kg.png', 27),
(112, 'kh', 1, 'flags/kh.png', 39),
(113, 'ki', 5, 'flags/ki.png', 7),
(114, 'km', 1, 'flags/km.png', 28),
(115, 'kn', 5, 'flags/kn.png', 23),
(116, 'kp', 7, 'flags/kp.png', 49),
(117, 'kr', 3, 'flags/kr.png', 13),
(118, 'kw', 7, 'flags/kw.png', 24),
(119, 'ky', 1, 'flags/ky.png', 29),
(120, 'kz', 2, 'flags/kz.png', 21),
(121, 'la', 4, 'flags/la.png', 19),
(122, 'lb', 2, 'flags/lb.png', 36),
(123, 'lc', 6, 'flags/lc.png', 17),
(124, 'li', 2, 'flags/li.png', 29),
(125, 'lk', 4, 'flags/lk.png', 26),
(126, 'lr', 3, 'flags/lr.png', 14),
(127, 'ls', 1, 'flags/ls.png', 15),
(128, 'lt', 1, 'flags/lt.png', 36),
(129, 'lu', 4, 'flags/lu.png', 8),
(130, 'lv', 2, 'flags/lv.png', 6),
(131, 'ly', 5, 'flags/ly.png', 13),
(132, 'ma', 1, 'flags/ma.png', 2),
(133, 'mc', 4, 'flags/mc.png', 4),
(134, 'md', 4, 'flags/md.png', 34),
(135, 'mg', 5, 'flags/mg.png', 35),
(136, 'mh', 1, 'flags/mh.png', 5),
(137, 'mk', 1, 'flags/mk.png', 13),
(138, 'ml', 6, 'flags/ml.png', 44),
(139, 'mm', 5, 'flags/mm.png', 50),
(140, 'mn', 4, 'flags/mn.png', 6),
(141, 'mo', 4, 'flags/mo.png', 37),
(142, 'mp', 3, 'flags/mp.png', 28),
(143, 'mq', 1, 'flags/mq.png', 23),
(144, 'mr', 2, 'flags/mr.png', 25),
(145, 'ms', 5, 'flags/ms.png', 28),
(146, 'mt', 5, 'flags/mt.png', 13),
(147, 'mu', 6, 'flags/mu.png', 37),
(148, 'mv', 3, 'flags/mv.png', 18),
(149, 'mw', 6, 'flags/mw.png', 43),
(150, 'mx', 1, 'flags/mx.png', 25),
(151, 'my', 4, 'flags/my.png', 6),
(152, 'mz', 5, 'flags/mz.png', 32),
(153, 'na', 3, 'flags/na.png', 22),
(154, 'nc', 4, 'flags/nc.png', 0),
(155, 'ne', 3, 'flags/ne.png', 48),
(156, 'nf', 1, 'flags/nf.png', 46),
(157, 'ng', 5, 'flags/ng.png', 27),
(158, 'ni', 4, 'flags/ni.png', 37),
(159, 'nl', 1, 'flags/nl.png', 38),
(160, 'no', 2, 'flags/no.png', 33),
(161, 'np', 3, 'flags/np.png', 44),
(162, 'nr', 7, 'flags/nr.png', 7),
(163, 'nu', 5, 'flags/nu.png', 11),
(164, 'nz', 4, 'flags/nz.png', 21),
(165, 'om', 1, 'flags/om.png', 27),
(166, 'pa', 7, 'flags/pa.png', 31),
(167, 'pe', 5, 'flags/pe.png', 26),
(168, 'pf', 2, 'flags/pf.png', 3),
(169, 'pg', 7, 'flags/pg.png', 39),
(170, 'ph', 1, 'flags/ph.png', 19),
(171, 'pk', 6, 'flags/pk.png', 11),
(172, 'pl', 3, 'flags/pl.png', 20),
(173, 'pm', 6, 'flags/pm.png', 39),
(174, 'pn', 2, 'flags/pn.png', 39),
(175, 'pr', 4, 'flags/pr.png', 19),
(176, 'ps', 3, 'flags/ps.png', 43),
(177, 'pt', 2, 'flags/pt.png', 17),
(178, 'pw', 7, 'flags/pw.png', 43),
(179, 'py', 4, 'flags/py.png', 25),
(180, 'qa', 2, 'flags/qa.png', 32),
(181, 'ro', 1, 'flags/ro.png', 10),
(182, 'ru', 2, 'flags/ru.png', 36),
(183, 'rw', 6, 'flags/rw.png', 26),
(184, 'sa', 6, 'flags/sa.png', 35),
(185, 'sb', 3, 'flags/sb.png', 43),
(186, 'sc', 1, 'flags/sc.png', 0),
(187, 'scotland', 1, 'flags/scotland.png', 18),
(188, 'sd', 3, 'flags/sd.png', 43),
(189, 'se', 1, 'flags/se.png', 28),
(190, 'sg', 5, 'flags/sg.png', 33),
(191, 'sh', 7, 'flags/sh.png', 2),
(192, 'si', 4, 'flags/si.png', 9),
(193, 'sk', 3, 'flags/sk.png', 24),
(194, 'sl', 1, 'flags/sl.png', 49),
(195, 'sm', 7, 'flags/sm.png', 16),
(196, 'sn', 5, 'flags/sn.png', 1),
(197, 'so', 4, 'flags/so.png', 44),
(198, 'sr', 6, 'flags/sr.png', 13),
(199, 'st', 3, 'flags/st.png', 25),
(200, 'sv', 7, 'flags/sv.png', 34),
(201, 'sy', 3, 'flags/sy.png', 1),
(202, 'sz', 5, 'flags/sz.png', 23),
(203, 'tc', 3, 'flags/tc.png', 5),
(204, 'td', 3, 'flags/td.png', 25),
(205, 'tf', 5, 'flags/tf.png', 47),
(206, 'tg', 2, 'flags/tg.png', 31),
(207, 'th', 7, 'flags/th.png', 33),
(208, 'tj', 6, 'flags/tj.png', 20),
(209, 'tk', 2, 'flags/tk.png', 43),
(210, 'tl', 3, 'flags/tl.png', 6),
(211, 'tm', 2, 'flags/tm.png', 48),
(212, 'tn', 2, 'flags/tn.png', 36),
(213, 'to', 6, 'flags/to.png', 44),
(214, 'tr', 7, 'flags/tr.png', 10),
(215, 'tt', 3, 'flags/tt.png', 48),
(216, 'tv', 7, 'flags/tv.png', 38),
(217, 'tw', 7, 'flags/tw.png', 30),
(218, 'tz', 2, 'flags/tz.png', 17),
(219, 'ua', 5, 'flags/ua.png', 26),
(220, 'ug', 6, 'flags/ug.png', 19),
(221, 'um', 4, 'flags/um.png', 0),
(222, 'us', 7, 'flags/us.png', 22),
(223, 'uy', 5, 'flags/uy.png', 40),
(224, 'uz', 6, 'flags/uz.png', 40),
(225, 'va', 5, 'flags/va.png', 9),
(226, 'vc', 7, 'flags/vc.png', 41),
(227, 've', 2, 'flags/ve.png', 4),
(228, 'vg', 4, 'flags/vg.png', 49),
(229, 'vi', 7, 'flags/vi.png', 26),
(230, 'vn', 2, 'flags/vn.png', 17),
(231, 'vu', 4, 'flags/vu.png', 4),
(232, 'wales', 1, 'flags/wales.png', 22),
(233, 'wf', 5, 'flags/wf.png', 15),
(234, 'ws', 6, 'flags/ws.png', 19),
(235, 'ye', 6, 'flags/ye.png', 32),
(236, 'yt', 6, 'flags/yt.png', 14),
(237, 'za', 5, 'flags/za.png', 38),
(238, 'zm', 6, 'flags/zm.png', 15),
(239, 'zw', 4, 'flags/zw.png', 28);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `on_stock` int(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `on_stock`, `category`, `price`) VALUES
(28, 'Товар 1', 939, 5, '100.0000'),
(29, 'Товар 2', 999, 6, '279.9900'),
(30, 'Товар 3', 7, 9, '100.0000'),
(31, 'Товар 4', 1000, 1, '80.0000'),
(32, 'Товар 5', 20, 8, '100.0000'),
(33, 'Товар 6', 1000, 1, '200.0000'),
(34, 'Товар 7', 2, 8, '100.0000'),
(35, 'Товар 8', 1000, 1, '100.0000'),
(36, 'Товар 9', 5, 8, '100.0000'),
(40, 'Товар 11', 7, 8, '101.0000'),
(41, 'Товар 14', 4, 8, '100.0000'),
(42, 'Товар 15', 2, 8, '100.0000'),
(43, 'Товар 16', 17, 8, '500.0000'),
(44, 'Товар 17', 10, 8, '1000.0000'),
(45, 'Товар 18', 3, 8, '2000.0000'),
(46, 'Товар 19', 1000, 10, '1000.0000'),
(47, 'Товар 21', 1000, 7, '100.0000'),
(48, 'Товар 20', 7, 8, '100.0000'),
(49, 'SAM1', 0, 1, '199.9900');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
