-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 14 sep. 2020 à 16:47
-- Version du serveur :  5.7.28
-- Version de PHP :  7.4.0

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
  `picturecomment` mediumblob,
  `datecomment` datetime DEFAULT NULL,
  `idpost` int(11) NOT NULL,
  `pseudo` varchar(300) NOT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `idpost` (`idpost`),
  KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
CREATE TABLE IF NOT EXISTS `conversation` (
  `idconversation` varchar(10) NOT NULL,
  `datecreatconv` datetime DEFAULT NULL,
  `datelastmessage` datetime DEFAULT NULL,
  PRIMARY KEY (`idconversation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


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
-- Structure de la table `messageconversation`
--

DROP TABLE IF EXISTS `messageconversation`;
CREATE TABLE IF NOT EXISTS `messageconversation` (
  `idmessconv` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `datemessage` datetime DEFAULT NULL,
  `pseudo` varchar(250) NOT NULL,
  `idconversation` varchar(10) NOT NULL,
  PRIMARY KEY (`idmessconv`),
  KEY `pseudo` (`pseudo`),
  KEY `idconversation` (`idconversation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(250) NOT NULL,
  `datepost` datetime NOT NULL,
  `picturepost` mediumblob,
  `idteam` int(11) NOT NULL,
  `pseudo` varchar(300) NOT NULL,
  PRIMARY KEY (`idpost`),
  KEY `idteam` (`idteam`),
  KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `idteam` int(11) NOT NULL AUTO_INCREMENT,
  `nameteam` varchar(50) DEFAULT NULL,
  `image` mediumblob,
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
(1001, 'Groupe Histoire neutre', NULL, 'Groupe Histoire neutre', NULL, 'Histoire'),
(1002, 'Groupe Scientifique neutre', NULL, 'Groupe Scientifique neutre', NULL, 'Science'),
(1003, 'Groupe Politique neutre', NULL, 'Groupe Politique neutre', NULL, 'Politique'),
(1004, 'Groupe Religion neutre', NULL, 'Groupe Religions neutre', NULL, 'Religion');

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
  `pictureprofil` mediumblob,
  `description` varchar(50) DEFAULT NULL,
  `pictureban` mediumblob,
  PRIMARY KEY (`pseudo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`pseudo`, `lastname`, `firstname`, `date_Birth`, `email`, `password`, `firstconnection`, `sexe`, `pictureprofil`, `description`, `pictureban`) VALUES
('fdffddfhdfh', 'yukyukyu', 'ukyukyuk', '2002-10-15', 'uykuykyuk@htrhrh.ml', '$2a$10$cF0LQmJHkuVVETpr3T4VWe9u/SbfkKBHCvANKVAQC6Pzvq0fk1tHW', 1, 'Man', NULL, NULL, NULL),
('fontaine', 'fontaine', 'jean', '1999-03-12', 'fontaine@test.com', '$2a$10$QeG6cSZUj0raCYeZkZA0HOZcHANtLE7MmK3NPAwqGGfjPW5IvpUOy', 1, 'Man', NULL, NULL, NULL),
('pdel', 'del', 'pierre', '1990-08-12', 'pd@test.com', '$2a$10$ts5Z/XV9ga.EbInjv7RhTukrdXUbfpWmZhqM8994m0l/qnxa5qAnK', 1, 'Man', NULL, NULL, NULL),
('trhrthrthrthrthtrh', 'yukyuk', 'ukuyk', '1977-07-22', 'yukykuyuk@htrtrh.ghj', '$2a$10$mR.Nn6mufZKRNgl1T4vHtezNxM3.l9xW7FUVyWCePQlYHs5SfqbfK', 1, 'Man', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `userconversation`
--

DROP TABLE IF EXISTS `userconversation`;
CREATE TABLE IF NOT EXISTS `userconversation` (
  `iduserconversation` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(250) NOT NULL,
  `idconversation` varchar(10) NOT NULL,
  PRIMARY KEY (`iduserconversation`),
  KEY `pseudo` (`pseudo`),
  KEY `idconversation` (`idconversation`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `userconversation`
--

INSERT INTO `userconversation` (`iduserconversation`, `pseudo`, `idconversation`) VALUES
(1, 'fontaine', 1),
(2, 'trhrthrthrthrthtrh', 1),
(3, 'pdel', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usersubject`
--

INSERT INTO `usersubject` (`idusersubject`, `namesub`, `pseudo`) VALUES
(33, 'Science', 'fdffddfhdfh'),
(34, 'Histoire', 'trhrthrthrthrthtrh'),
(35, 'Politique', 'trhrthrthrthrthtrh'),
(36, 'Religion', 'trhrthrthrthrthtrh'),
(37, 'Science', 'trhrthrthrthrthtrh'),
(38, 'Histoire', 'fontaine'),
(39, 'Politique', 'fontaine'),
(40, 'Religion', 'fontaine'),
(41, 'Science', 'fontaine'),
(42, 'Histoire', 'pdel'),
(43, 'Politique', 'pdel'),
(44, 'Religion', 'pdel'),
(45, 'Science', 'pdel');

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
