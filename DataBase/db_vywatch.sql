-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 27 août 2020 à 18:43
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_vywatch`
--

-- --------------------------------------------------------

--
-- Structure de la table `listsubject`
--

DROP TABLE IF EXISTS `listsubject`;
CREATE TABLE IF NOT EXISTS `listsubject` (
  `Idlist` int(11) NOT NULL AUTO_INCREMENT,
  `Namesub` varchar(255) DEFAULT NULL,
  `Imagesub` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Idlist`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listsubject`
--

INSERT INTO `listsubject` (`Idlist`, `Namesub`, `Imagesub`) VALUES
(1, 'potlitique', 'zzzzzzzzz');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstconnection` tinyint(1) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `sexe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `lastname`, `firstname`, `email`, `password`, `firstconnection`, `pseudo`, `date_birth`, `sexe`) VALUES
(28, 'cheibi', 'khalil', 'khalil@zz.ff', '$2a$10$Y84ufH7SAiewT4vvAy4PLe421TO1aGFMGE7sE75QfM8Gcd9gkwzQi', 1, 'toto95', '1999-01-22', 'Man'),
(29, 'rtfrt', 'ty', 'khalil@zz.ff', '$2a$10$S160RFa/jaJTpWssuhOOPOgVsJMZx4m1.ZB8YA6Wz/cYPTBPnCp/2', 1, 'tota95', '1992-03-22', 'Man'),
(30, 'zzzzz', 'Khalil', 'khalil@zz.ff', '$2a$10$nfR7IoTwuPqlxDAm2Oe52eSgSK0bbJDYUNAEhh3uL.qKHdoYxrNVe', 1, 'toto96', '2000-02-20', 'Man'),
(31, 'Loyer', 'Nicolas ', 'khalil@zz.ff', '$2a$10$3gIguNuhiw1eAcRi9ZjLvuUIsGUe39/CwIWfWo/cnoObNMRW55OYe', 1, 'toto97', '1989-03-20', 'Man'),
(32, 'ooooooo', 'oooo', 'khalil@zz.ff', '$2a$10$UqPSH5PfGKwDbuj6SKlGRuJw.hHkldkGSwi48k9dBbgTud93mWcai', 1, 'ppppp', '2001-02-21', 'Man'),
(33, '\'erfe', 'retgr', 'khalil@zz.ff', '$2a$10$Pj52bGP1Qn1spV9fuVynHuNirHoe1aLsMQ6uoWcHeuvICg.nRyWLa', 1, 'uuyu', '1997-02-20', 'Man'),
(34, 'sssss', 'ssss', 'khalil@zz.ff', '$2a$10$AKhLwdcUy/g8VKDNrKVxIe4SJUcCfldI7aQU5sodrRPByV4jrhTXS', 1, 'ssssss', '2000-01-19', 'Man'),
(35, 'iktrikt', 'uituit', 'khalil@zz.ff', '$2a$10$P/PdYZZFWemg2VhlZSJ67eFerqxhHVLegPw1cr3JMykTdBYwV4Emy', 1, 'ui', '2001-01-21', 'Man'),
(36, 'ooooooo', 'oooooo', 'khalil@zz.ff', '$2a$10$M.bUFG4g8wPom5592gWcMu1p92kRD8X./.L.H0mY5bxeRCLbrmd2C', 1, 'uitui', '2001-01-19', 'Man'),
(37, 'oooo', 'ooo', 'khalil@zz.ff', '$2a$10$xIkj4/jxsEt4bDIRd0PrpOqwkkiQkdMeqZCDFovHOSTfBData0FzG', 1, 'iiiii', '1946-02-22', 'Man'),
(38, 'dyujdty', 'dfèj', 'khalil@zz.ff', '$2a$10$BjTXsXreBJ2EzlSMh9ZRn.HI7hp70aKPslHvAGuzbfbAQUbNCrheG', 1, 'det-uyj', '2000-02-17', 'Man'),
(39, 't-\"r(e\"', 'tyg(', 'khalil@zz.ff', '$2a$10$25IOHYVCZY412tLlWyoElutP8JZdNN/8KctSMUQseRwsFQK7DL29K', 1, 't(rye', '2003-01-22', 'Man'),
(40, 'drtgrfg', 'fgrfgb', 'khalil@zz.ff', '$2a$10$xT4JjKUgU27y55VmgnNjlO6KvMoUt0SO/AefmfM/keapm0L7z2/Wy', 1, 'rfgvrf', '1999-04-20', 'Man'),
(41, 'oooo', 'oooo', 'khalil@zz.ff', '$2a$10$M1iClHm88Q1peZUF5Tvu/O1ffFfjPc.XWxJUPDv4bPtJ/8cppM/SS', 1, 'oooooo', '2001-03-21', 'Man'),
(42, 'ooo', 'Khalil', 'khalil@zz.ff', '$2a$10$LpfpfnodkCwVpPEYxkXH5O5Cw5h2c3gNC1Kok9Vr3LzKe3ljn24PK', 1, 'oooo', '2000-02-20', 'Man'),
(43, 'iii', 'ioiii', 'khalil@zz.ff', '$2a$10$7UR.ZjB98eCZ4xVgQLE5C.vqowivJICValrP0JG46UOvSx5w.MT5q', 1, 'uuuuuuuuuuuuuuuuuuuuu', '2001-03-22', 'Man'),
(44, '-ued(u', 'd-u-d', 'khalil@zz.ff', '$2a$10$rwA.zSO.F0TPeN4gzkTEEesp1nbzACSigbKb73/fg4vXEU/LxTIRu', 1, 'jtjuydtujdtuj', '2000-04-20', 'Man'),
(45, 'rdgv', 'rfe', 'khalil@zz.ff', '$2a$10$cLtZ.Z3oki35A8NfXQtQrOOoa/QKymckgg1Fe/fCRbl3pMdMAJhpq', 1, 'fgggggg', '1990-02-20', 'Man'),
(46, 'rfgrfgfr', 'refgdg', 'khalil@zz.ff', '$2a$10$bRKz.pjPZLxXnNJQcnzJjOe3670/5KOOV.nC3zlgsnOVrP9eOuazO', 1, 'dswfg', '1999-02-24', 'Man'),
(47, 'tgry', 'trh', 'khalil@zz.ff', '$2a$10$GbH1AZD3KLD84BqFtsrXWOPKMyDZty3asNZmA6F814SHGy1zsxE.G', 1, 'wfr', '2003-03-21', 'Man'),
(48, 'ii', 'oi', 'khalil@zz.ff', '$2a$10$HipuKMH7EPvyZlYDevIsUO5E2GcJU.0swatr6cksL2BWQa81N7vfm', 1, 'pppppppp', '2000-01-19', 'Man'),
(49, 'rer', 'rtfgter', 'khalil@zz.ff', '$2a$10$k8KS7kQBm/eftFWANKXWye4SzrxQQrKQ2J1zQp4vk4puXjfh/AX4a', 1, 'rrrrrr', '1995-02-22', 'Man'),
(50, 'iiiiii', 'iiii', 'khalil@zz.ff', '$2a$10$AiQL2/bbvvxgYNDUXO.XSe5q7wZrm3SaAptSSCc1QBe8t7T61H2Ru', 1, 'iiiiiiiiiiiii', '2002-03-20', 'Man'),
(51, 'uuu', 'uuu', 'khalil@zz.ff', '$2a$10$05OI2OA4Jnf32QxBx3NWm.y/FU5PLUB/iRNN30Ztqxpm90die5cDm', 1, 'iiiiii', '1994-03-21', 'Man'),
(52, 'iiiiii', 'iiiii', 'khalil@zz.ff', '$2a$10$BlX8vpkfeaxiIsbxPGd37O9He.IHP328VMrOHTe04N.AD0BKuE54u', 1, 'iç', '2002-01-19', 'Man'),
(53, 'eeeee', 'eeeeeee', 'khalil@zz.ff', '$2a$10$1NHnPoxNKeG1TqXpEZ7FruHwZjtPkmSsnYI0cNKj97ZkSPRC7AfKO', 1, 'eeeeeeee', '2001-02-21', 'Man'),
(54, 'oooooo', 'ooooooo', 'khalil@zz.ff', '$2a$10$E8cPIVZmV.mG.Ykz1RVqvuqN4pzn3sb.8/uFs9sKh3r8BqhRaEG9u', 1, 'ooooooo', '1999-01-20', 'Man'),
(55, 'erereer', 'erer', 'khalil@zz.ff', '$2a$10$Qq4rOuxYOiphB8k5zF3sbO35NnvLIoMI6BlkEmtQ/xh3/.4YTEM.6', 1, 'uyè', '2002-02-16', 'Man'),
(56, 'ooooooo', 'ooooooo', 'khalil@zz.ff', '$2a$10$sMvvRo2TTNof18JxRyBhnu2C6N1F/tJ2H27ejFy5cdoieL1qDq2eq', 1, 'pppppp', '1982-02-22', 'Man'),
(57, 'efeeffe', 'edfef', 'khalil@zz.ff', '$2a$10$OgVcwAhulxkLBeFY1PVMqeNIH4BZMyYcoqR1yUFAm2FfIGzGZnit6', 1, 'efefefef', '1994-02-22', 'Man'),
(58, 'oooo', 'ooo', 'khalil@zz.ff', '$2a$10$a2GmyysYaJsTaphdN5c/QeB0hvpq1NM/V8Yp/O9Lx3vcZnID0l7nu', 1, 'ooooooooo', '2001-03-02', 'Man'),
(59, 'pppp', '^^^pà', 'khalil@zz.ff', '$2a$10$dk3kx1YGvk0hovWlQf4t1uVB9NWuDio2QkhHyXE37KdOPd7asS3MW', 1, 'pppppp', '1993-02-03', 'Man'),
(60, 'ooooooooo', 'ooooooo', 'khalil@zz.ff', '$2a$10$k9/UsdpaiXISKX0rYJWELOr6b5jdjoXgBLAJffHmiPIFnKHT73DLK', 1, 'pppppppppppp', '2003-05-03', 'Man'),
(61, 'rtetg', 'zerfrtf', 'khalil@zz.ff', '$2a$10$xV9HUre4oxmnCpZwuNzKcuBKzZvW7C9zYxi4Dj6CuDaFqJiwgrYy2', 1, 'aaaaa', '1999-03-19', 'Man'),
(62, 'aaaaaaaa', 'aaaaaaaa', 'khalil@zz.ff', '$2a$10$lL/fefX/3CVNou3FpCZVwOg0.WzHdF4eV6U6DmGxvqLAqtW5XK2KG', 1, 'kkkkkk', '2001-04-22', 'Man'),
(63, 'uuuuuu', 'uuuuu', 'khalil@zz.ff', '$2a$10$R55C7HZA0TcUaSS.pP3W.eYUnvo6eSYvHmhPFMMUisy3DMtS1XUki', 1, 'uuuuuuuuu', '1989-02-19', 'Man'),
(64, 'iiiii', 'iiiii', 'khalil@zz.ff', '$2a$10$7CAOBwPJhpnQkEmIWm.42OJ0C.Xl4QXaP3tY.28kY1z2RHJvumAi2', 1, 'oooooooooooooo', '1999-02-21', 'Man'),
(65, 'eeeeee', 'eeee', 'khalil@zz.ff', '$2a$10$c1LLZ9T4lM5KrqhzTLDPbOzWzcVbvOeE6PY1AHT7lSad26YraL77G', 1, 'eeeeeee', '1993-04-22', 'Man'),
(66, 'pppppp', 'ppppp', 'khalil@zz.ff', '$2a$10$FbRGu7RXcyOZ0PsUfdX9iuBXPgHDJMJEQEvlL.GcH/O.jSqPdAovC', 1, 'ppppppp', '1998-03-20', 'Man'),
(67, 'pppppp', 'ppppp', 'khalil@zz.ff', '$2a$10$LmsMz2hRD511uiO3qijaUuLc.nnsniHA0M6Nyj1OC5iL5i8A51JLm', 1, 'ppppppp', '1998-03-20', 'Man'),
(68, 'zzzzzz', 'zzzzzz', 'khalil@zz.ff', '$2a$10$FUMSaZsyqzXKp2.ckuZCHO8ZmUW1u5tFWr823aG79QxZyvt/YYrhm', 1, 'zzzzzzz', '2000-03-18', 'Man'),
(69, 'zzzzzz', 'zzzzzz', 'khalil@zz.ff', '$2a$10$0UTwfPCRoKrUuYSjK6l1ju7yQvthA1930l4a9DR5Evf0SxcF8zXme', 1, 'zzzzzzz', '2000-03-18', 'Man'),
(70, 'kkkkk', 'kkkk', 'khalil@zz.ff', '$2a$10$EeligvemhBex6QOnFBuorez2rft1N3WvFCGdzI1AG3FwuD525Q4BC', 1, 'lllllllll', '2000-02-22', 'Man'),
(71, 'pppp', 'ppppp', 'khalil@zz.ff', '$2a$10$ZLN5JvTAiQ.0XidoKiRnWuNfw8e6jUuY7ymB0HsIELC75760qUfoO', 1, '^^ooooo', '2000-05-18', 'Man'),
(72, 'oooo', 'oooo', 'khalil@zz.ff', '$2a$10$EDfelc0Zijd/1oE/FbfuA.9uHET5i0n97qbeUlgXkd6xux9v0Iqu6', 1, 'ppppp', '2001-01-20', 'Man'),
(73, 'oooo', 'oooo', 'khalil@zz.ff', '$2a$10$7LnG7tKrtT3AmdXaonpYK.prCbStPn2O5XWbMZKp2rKt55gDpDvmK', 1, 'ppppp', '2001-01-20', 'Man'),
(74, 'ppppp', 'ppppp', 'khalil@zz.ff', '$2a$10$2d5JVr7ppIbmSmX0nLGGwuIVxfNq39VXcHQszrudbwLXdI9q.Jt4W', 1, 'ikkk', '1999-05-21', 'Man'),
(75, 'iiiiii', 'iiiiii', 'khalil@zz.ff', '$2a$10$uMLExWS9SXLk5yNJoy/RG.fmGsauKSIZPIb9WtSYiq3.MpODDgCqu', 1, 'ppppp', '2001-03-22', 'Man'),
(76, 'efdzfd', 'rfgfgr', 'khalil@zz.ff', '$2a$10$l7v/GbXQKpS932uEuz.HJ.1/Lz8PwIAoCsSXJWu9rzCdjYsMuzpEC', 1, 'eeee', '1999-01-18', 'Man'),
(77, 'i(èik_', '-tiçot-i', 'khalil@zz.ff', '$2a$10$4Jx4UYLCddJOak84OEoEcuoWJk7Rr71JYezf4aZubk8P8K1Aa8jq2', 1, 'ikoçt-', '1999-03-20', 'Man'),
(78, 'iiiii', 'iiii', 'khalil@zz.ff', '$2a$10$2RDgBtqJIGIZd6qMVoFhge/TbLTjgGGIzbshIDGeS3RiZF8EKKBc6', 1, 'ooooooooooooooooooooooooooo', '1997-01-20', 'Man'),
(79, 'ppppp', 'ppppp', 'khalil@zz.ff', '$2a$10$CtgxfaaL.4jvpmMaIbkNyOukFFB5FrEK7n/NnLY.Sr3t0Z8pEfA22', 1, 'pujàoçp)i', '2000-11-21', 'Man'),
(80, 'eeee', 'eee', 'khalil@zz.ff', '$2a$10$PcERNEFaxpQI/n0mAue.6uFHba7itXTfhDbSwxD6hxXI5LjgIt3Di', 1, 'eeeee', '1999-04-19', 'Man'),
(81, 'oooooooo', 'ooooooo', 'khalil@zz.ff', '$2a$10$1G.HGvfnaGfZMQKpi/QRquFJz12t5OFv76gYQKmDzzKf0gAMunJMu', 1, 'pooooo', '2001-01-20', NULL),
(82, 'oooo', '^^oooo', 'khalil@zz.ff', '$2a$10$IBOcw.jElyBrhXIDpTqAc.z24eUq2OkWoJ/tZsYupz/Zh2DLgJN92', 1, 'ppppppp', '1999-03-19', 'Man'),
(83, 'thghy', 'rfghg', 'khalil@zz.ff', '$2a$10$m7XBHO78pMnlp4JJ07xQjeGo21xetHXz.eMGjeVfkkhD4xhgeeiK6', 1, 'yuhtyuh', '2000-03-20', 'Man'),
(84, 'rtgetg', 'tgrtg', 'khalil@zz.ff', '$2a$10$hcFFztrLs8v45Qf9B30ag.T7FTLVsHR0JzPJ7ZKFuy32oMFEHtcVW', 1, 'tgrtgde', '2000-07-21', 'Man'),
(85, 'tgrfyh', 'thgf', 'khalil@zz.ff', '$2a$10$KZm6ugLMOoZy5qRbIKK7A.2UiLsNjLvvGlIdxfZLqMAGC9kC7ztE2', 1, 'cftyhuj', '1999-02-22', 'Man'),
(86, 'rtte', 'rtq', 'khalil@zz.ff', '$2a$10$WiDJtNAUxTB.5UIlKRblZutsCT1UmDdeNcVqXURrDLr2894VE2rzC', 1, 'stge', '2000-03-20', 'Man'),
(87, 'erfe\"rf', '\'rr\'t', 'khalil@zz.ff', '$2a$10$/klE9lz.r5Hzu3Evc3C3eenpo3j9qdnNzOZDcGGna5S84/DlCZDAi', 1, 'ggggg', '1994-04-20', 'Man'),
(88, 'erfze', 'zererfez', 'khalil@zz.ff', '$2a$10$VN0cj/9WAuQjz6IpkLtzhOVheM3z0xw4l7ed5tpYIOyp1BwYlw3iy', 1, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '2000-02-25', 'Man'),
(89, 'oliy_yo', '_oiol', 'khalil@zz.ff', '$2a$10$8AtmJ.uoKLTFMc6KodxVZu6SBTva9gtSO/Arhpu3RzzXntzs2P1Ke', 1, 'uiykuik', '1999-02-21', 'Man'),
(90, 'rgfbs', 'tg', 'khalil@zz.ff', '$2a$10$0RiDdsCHuTfKFeaYHQJ54.M0orUArjxMEtTrtbP65irxDpl.WYYZW', 1, 'tfghsdrgh', '2001-01-22', 'Man'),
(91, 'qrtg', 'qrdf', 'khalil@zz.ff', '$2a$10$us96dsp0KklYuSukBUPTverWNPM4XoEUn41il5dbwBYbTAuey9gAi', 1, 'grtfs', '2001-02-21', 'Man'),
(92, 'rxwdf', 'rd<g', 'khalil@zz.ff', '$2a$10$lI5GRJaL9iHsRB2qx/XcKeWZxIvGFpQmm/59R3fPwpXvQo6n9Vb8q', 1, 'xrfbhdxwrhwrft', '2001-02-22', 'Man'),
(93, 'rfg', 'tfgwrf', 'khalil@zz.ff', '$2a$10$H8/giin8k41ozqpo9/iKB.5n7jhNP2bwByZQ5qbM9.NpV1n9sY2pi', 1, 'tgrfyhtgfrh', '2001-01-22', 'Man'),
(94, 'tsxyhstdryh', 'tytgyhy', 'khalil@zz.ff', '$2a$10$I5aZoLHaaYvmjHmwUhMNWeWMdd0ttPT3Jh3Zlb5wwOLsKpmQHEBYS', 1, 'thryh', '1998-03-19', 'Man'),
(95, 'rftgg', 'qdrtgf', 'khalil@zz.ff', '$2a$10$rPzyEZzb7cKUICfYc2j05ux90YxCd.t3uoefxGTkNZcN/cPrRP8iu', 1, 'tgxhtg', '2000-03-21', 'Man'),
(96, 'rrrrrrrrrrrrrrr', 'rrrrrrrrrrr', 'khalil@zz.ff', '$2a$10$rbiMyEmouAlnUZLtWEpCW.xHib99nzryqPIbQ8ORYxSoPZ4vARvKG', 1, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '1994-01-19', 'Man'),
(97, 'ytujydruj', '(yr', 'khalil@zz.ff', '$2a$10$6bll1aMpvtzPr0Y4gbSu/.ro0ZFQ7FAz.2o3uUNULcujgZDCAYB2W', 1, 'uyfujy', '1999-03-21', 'Man'),
(98, 'ryhetfgyhyt', 'rtgfyry', 'khalil@zz.ff', '$2a$10$qQD/dXbWHvskBhrk7CFDM.IMpC3Nyv3z/qcHyA4vhMVCvkwQYaC/m', 1, 'rtgyhr', '2001-01-22', 'Man'),
(99, 'zzzz', 'zzzzz', 'khalil@zz.ff', '$2a$10$4LWCsHTJrctp.nPvGhnCROsZslLSgkaxncRJ.8WFhOeQiLDz0VJYm', 1, 'zzzzzzzzzzzzz', '2002-04-22', 'Man'),
(100, 'sssssss', 'sssssss', 'khalil@zz.ff', '$2a$10$LaK80gjmi7p0WVySIcDiL.qgrZRxaBa/Ku.ioJN/ov1f0jlDYB0uK', 1, 'sssssssssssssssssssss', '2000-03-18', 'Man'),
(101, 'eeeeeeeeeeeeeeeeeeeeeeeeeeee', 'eeeeeeeeeeeeeeeeeeee', 'khalil@zz.ff', '$2a$10$hr9SDVPDd6TsguFcQOlWeOkjr0fGVKhdYjWbUUNy9E5sKJUJKwMVW', 1, 'zzzzzzzzvvvvvvvvvvvvvvzzzzzzzzzzzzzzzzzz', '2002-01-19', 'Man'),
(102, 'ddddddddddddddddddddddddd', 'dddddddddddddddddd', 'khalil@zz.ff', '$2a$10$XtaskmlTgZ9euiQ0gHexH.YZxYkrCudBdG85U1p6UKbyM9OmmCpWi', 1, 'dddddddddzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2002-05-18', 'Man'),
(103, 'ertgertgergte', 'gretgqetge', 'khalil@zz.ff', '$2a$10$UVFfTKW8YhRewB7.7nKGXumNu2jV4KAjm3rUctsc.FM/mw8FiBNRe', 1, 'reyhtyrg', '1999-03-18', 'Man'),
(104, 'zeezre', 'reerqer', 'khalil@zz.ff', '$2a$10$VHK44DxlelH9hfa2Z5420ejyT.tU.w/K/w7ghSsTFjCWB4HMshRFy', 1, 'tfghdfgh', '2001-02-22', 'Man'),
(105, 'ezrrf', 'reezre', 'khalil@zz.ff', '$2a$10$riNkbsmrTDv/xiNQfKdHjOyFyt1GldIJTfk0qWhQv5C7RbwrxME/a', 1, 'ertetgretgrer', '1999-09-20', 'Man'),
(106, 'zzzzzzzzzzz', 'zzzzzzzz', 'khalil@zz.ff', '$2a$10$YPvrydUktB4uVOT28tbWpeBI1ecN5CR30onbJds/SsR.mfx6stmmS', 1, 'zzzzzzeeeeeeeeeeeeeeeee', '2002-01-21', 'Man'),
(107, 'zzzzzzzzzzz', 'zzzzzzzz', 'khalil@zz.ff', '$2a$10$tCuEvYV7xnKBPL7qjTtwM..eXrbwp5PNGkMvkXjJexNFoy86.FFdC', 1, 'zzzzzzeeeeeeeeeeeeeeeee', '2002-01-21', 'Man'),
(108, 'zzzzzzz', 'dsdzez', 'khalil@zz.ff', '$2a$10$S2mn88M.VREbFFHdXdLcwu1clCgnrQuE32yhbLWxvHsfhd1Eq4pHq', 1, 'zer\'e', '2001-03-19', 'Man'),
(109, 'reqrtge\'', 'rgqeretg', 'khalil@zz.ff', '$2a$10$RRM4WGZO2V7D/I3lerovKOYNkMjLNphMHd6yoYXvnpfPqSC3EaRK6', 1, 'rfffed', '2003-03-22', 'Man'),
(110, 'zdzdd', 'zdz', 'khalil@zz.ff', '$2a$10$kQk8/pKlrBcoSG9SVKgGSOeU35WZm1oRrVSVismJfQnjomT9ZvErW', 1, 'zedsadzs', '1992-05-21', 'Man');

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `Idlist` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`Idlist`,`idUser`),
  KEY `FK_userSubject_idUser_User` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `usersubject`
--
ALTER TABLE `usersubject`
  ADD CONSTRAINT `FK_userSubject_idListSub_listSubject` FOREIGN KEY (`Idlist`) REFERENCES `listsubject` (`Idlist`),
  ADD CONSTRAINT `FK_userSubject_idUser_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
