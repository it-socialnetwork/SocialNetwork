-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 06 sep. 2020 à 14:27
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
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `idcomment` int(11) NOT NULL AUTO_INCREMENT,
  `textcomment` varchar(250) DEFAULT NULL,
  `picturecomment` mediumblob DEFAULT NULL,
  `datecomment` datetime DEFAULT NULL,
  `idpost` int(11) NOT NULL,
  `pseudo` varchar(300) NOT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `idpost` (`idpost`),
  KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `friendlist`
--

DROP TABLE IF EXISTS `friendlist`;
CREATE TABLE IF NOT EXISTS `friendlist` (
  `pseudo` varchar(300) DEFAULT NULL,
  `pseudo_friend` int(11) DEFAULT NULL,
  `idfriendlist` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idfriendlist`),
  UNIQUE KEY `idfriendlist` (`idfriendlist`),
  KEY `pseudo` (`pseudo`),
  KEY `pseudo_friend` (`pseudo_friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `listsubject`
--

DROP TABLE IF EXISTS `listsubject`;
CREATE TABLE IF NOT EXISTS `listsubject` (
  `namesub` varchar(50) NOT NULL,
  `Imagesub` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`namesub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listsubject`
--

INSERT INTO `listsubject` (`namesub`, `Imagesub`) VALUES
('Histoire', '../assets/Video/Histoire.mp4'),
('Politique', '../assets/Video/Politique.mp4'),
('Religion', '../assets/Video/Religion.mp4'),
('Science', '../assets/Video/Science.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) NOT NULL,
  `datepost` datetime NOT NULL,
  `picturepost` mediumblob DEFAULT NULL,
  `idteam` int(11) NOT NULL,
  `pseudo` varchar(300) NOT NULL,
  PRIMARY KEY (`idpost`),
  KEY `idteam` (`idteam`),
  KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`idpost`, `text`, `datepost`, `picturepost`, `idteam`, `pseudo`) VALUES
(4, 'Test numéro 1 post sur les chats', '2020-09-08 00:00:00', NULL, 1005, 'khalilou'),
(5, 'Test numéro  post sur les avions', '2020-09-16 00:00:00', NULL, 1006, 'test2020');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `idteam` int(11) NOT NULL AUTO_INCREMENT,
  `nameteam` varchar(50) DEFAULT NULL,
  `image` mediumblob DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `pseudo` varchar(300) DEFAULT NULL,
  `namesub` varchar(300) NOT NULL,
  PRIMARY KEY (`idteam`),
  KEY `pseudo` (`pseudo`),
  KEY `namesub` (`namesub`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`idteam`, `nameteam`, `image`, `description`, `pseudo`, `namesub`) VALUES
(1005, 'Groupe religion neutre', NULL, 'Groupe religion neutre', NULL, 'Religion'),
(1006, 'Groupe Scientifique neutre', NULL, 'Groupe Scientifique neutre', NULL, 'Science'),
(1007, 'Groupe Politique neutre', NULL, 'Groupe Politique neutre', NULL, 'Politique'),
(1008, 'Groupe Religieux neutre', NULL, 'Groupe Religieux neutre', '', 'Religion');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `pseudo` varchar(250) NOT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `date_Birth` date DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `firstconnection` tinyint(1) NOT NULL,
  `sexe` varchar(100) DEFAULT NULL,
  `pictureprofil` mediumblob DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `pictureban` mediumblob DEFAULT NULL,
  PRIMARY KEY (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`pseudo`, `lastname`, `firstname`, `date_Birth`, `email`, `password`, `firstconnection`, `sexe`, `pictureprofil`, `description`, `pictureban`) VALUES
('aaaaaaaaaa', 'zddzdaaaaa', 'zzedzd', '2001-06-19', 'khalil@zz.ff', '$2a$10$ucKSKfijSHLruXdwHS5JAuMgsgDSMGZeAkuDUV8eUfO.cAuQT20Z6', 1, 'Man', NULL, NULL, NULL),
('aaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaa', 'zzzz', '1996-02-19', 'khalil@zz.ff', '$2a$10$f9kUzqrHXjs/eEN/0iccc.98u1Y7CJKfBqRU.2qVMhJ8yNMLDXQue', 1, 'Man', NULL, NULL, NULL),
('adddddddddddddddddda', 'zdddddddd', 'zddddddd', '2002-02-19', 'khalil@zz.ff', '$2a$10$KHV9uufzy2q1b3bCMkBskOXSwRklbH6TMDxb2hU87ilVgvuehL5HG', 1, 'Man', NULL, NULL, NULL),
('adzdzdazdazzaazd', 'zdzdzdzdzdzd', 'dzzdzdzdzd', '2001-05-23', 'khalil@zz.ff', '$2a$10$dHK0WasEgDHsnLAcDElaeu.N1XKR63BqB8U8PSsErK12QvLDPzA6.', 1, 'Man', NULL, NULL, NULL),
('azzdazadazddd', 'zdzdzdzd', 'zdzzdzdzd', '1999-03-16', 'khalil@zz.ff', '$2a$10$NBEWI8t6PJBFpXOEZQzwYuL9uOKpgbgbfDn1KXksufJ3/KKHkh.gi', 1, 'Man', NULL, NULL, NULL),
('daaaaaaaaaaaaadddddddddddaaaaaaaaa', 'dzzzzzzzzzzzzz', 'dzzzzzzzzzzzzzzzzz', '2002-02-21', 'khalil@zz.ff', '$2a$10$zD09.7x4WRKy3.T9RT7.SO09whpgW1i1ebN8f.DeSMLqH/32oX57C', 1, 'Man', NULL, NULL, NULL),
('dzzdzdaazadazdazddzzda', 'zdzdzdzd', 'dzzdzdzd', '1999-01-19', 'khalil@zz.ff', '$2a$10$j/5YbuHMsJadMf/FGfq3euJhYVCinnprB760vKzorZjAqslQDCmz6', 1, 'Man', NULL, NULL, NULL),
('dzzzdzddzzddzdzd', 'rfzeffzf', 'szzz\"', '1997-03-18', 'khalil@zz.ff', '$2a$10$Kqx3Cxz.6SVS728fEfUa2eE0oJs96rFh00eZZsSDzR8.XdbhHcCcq', 1, 'Man', NULL, NULL, NULL),
('efefefzfzefe', 'efefeff', 'efefeffe', '2000-04-23', 'khalil@zz.ff', '$2a$10$kKMGsx4gv5glYRnKK/nQUe.P2QkeH0g/Dm/ygJVqK4LkjG0SOa1Z6', 1, 'Man', NULL, NULL, NULL),
('feefefefeefefef', 'hhahahahahah', 'ahahahah', '1999-06-15', 'khalil@zz.ff', '$2a$10$agp.H3iHFFAxyujePU0h8..mCUtFdbrpZl6I/nwSKAWXCPxwTft3m', 1, 'Man', NULL, NULL, NULL),
('fefefeef', 'effeefef', 'effefefe', '1999-12-23', 'khalil@zz.ff', '$2a$10$0tcTkgZcjDxzcvu//KDxIeS4NBqAzT6in8brcmR8peyDPZNPEBk9O', 1, 'Man', NULL, NULL, NULL),
('feffefefe', 'feffefeef', 'feefef', '2001-05-21', 'khalil@zz.ff', '$2a$10$z9g4ikWt5hkVwECH7IacqOVVsdWi4XlBXHWkXzRsBxFAZn4Kd7fcC', 1, 'Man', NULL, NULL, NULL),
('khalilou', 'Cheibi', 'Khalil', '1996-12-11', 'khalil@zz.ff', '$2a$10$7rUvgYb4YmFalqCT91KAEuzF72/zqDV/sSfCJOmVxLegZ0D4lOdq.', 1, 'Man', NULL, NULL, NULL),
('test2020', 'test', 'test2000a', '1999-04-19', 'khalil@zz.ff', '$2a$10$zLuBmdu7QbOvoYMwrjJ.Du/qUOExTmmhGMkypEPdJVj94hTZ50Tl2', 1, 'Man', NULL, NULL, NULL),
('vceveeee', 'grrrrgrge', 'rztr\'gtr', '1999-07-17', 'khalil@zz.ff', '$2a$10$qV7UtVuK48OXmMei9fo3neukXjJOhckILxG2B04QvcFhqHcgHkvCG', 1, 'Man', NULL, NULL, NULL),
('zadzdzazdd', 'fzzzfeee', 'effeeffeef', '2001-02-20', 'khalil@zz.ff', '$2a$10$KEFW1AzFh9xqSxWjx2rPzepPPzgICS.PSBBdnxZe9mTnv1F.UIbYO', 1, 'Man', NULL, NULL, NULL),
('zddddddddddddddddddddddd', 'zzzzz', 'zzzzzzzzzz', '2001-01-19', 'khalil@zz.ff', '$2a$10$ZFGApTZDLmMpVuRSxUcuEO3ah4nZgWsO0kemGx3Y1K3U.5IEyOOhO', 1, 'Man', NULL, NULL, NULL),
('zdzdadzdz', 'zddzdz', 'zddzdz', '1999-02-18', 'khalil@zz.ff', '$2a$10$54Vvz5yTlF9dt9pfda2vNehQzwVSwc2hWBbYVs5XL9.TpT8XGSpI2', 1, 'Man', NULL, NULL, NULL),
('zdzdz', 'iiiii', 'iiii', '1997-05-22', 'khalil@zz.ff', '$2a$10$0Hv7NAaT3WT9Y./14iBo2eafdJ1r.daOKzrnTCE/Eo5Ze/fGd6fSm', 1, 'Man', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `idusersubject` int(11) NOT NULL AUTO_INCREMENT,
  `namesub` varchar(250) NOT NULL,
  `pseudo` varchar(250) NOT NULL,
  PRIMARY KEY (`idusersubject`),
  KEY `NameSub` (`namesub`),
  KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usersubject`
--

INSERT INTO `usersubject` (`idusersubject`, `namesub`, `pseudo`) VALUES
(13, '', 'test2020'),
(14, '', 'test2020'),
(15, '', 'test2020'),
(16, '', 'test2020'),
(17, '', 'adzdzdazdazzaazd'),
(18, '', 'adzdzdazdazzaazd'),
(19, '', 'adzdzdazdazzaazd'),
(20, '', 'adzdzdazdazzaazd'),
(21, '', 'azzdazadazddd'),
(22, '', 'azzdazadazddd'),
(23, '', 'azzdazadazddd'),
(24, '', 'azzdazadazddd'),
(25, '', 'zadzdzazdd'),
(26, '', 'zadzdzazdd'),
(27, '', 'zadzdzazdd'),
(28, '', 'zadzdzazdd'),
(29, 'Histoire', 'adddddddddddddddddda'),
(30, 'Politique', 'adddddddddddddddddda'),
(31, 'Religion', 'adddddddddddddddddda'),
(32, 'Science', 'adddddddddddddddddda');

-- --------------------------------------------------------

--
-- Structure de la table `userteam`
--

DROP TABLE IF EXISTS `userteam`;
CREATE TABLE IF NOT EXISTS `userteam` (
  `pseudo` varchar(250) DEFAULT NULL,
  `idteam` int(11) DEFAULT NULL,
  `iduserteam` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`iduserteam`),
  UNIQUE KEY `iduserteam` (`iduserteam`),
  KEY `pseudo` (`pseudo`),
  KEY `idteam` (`idteam`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
