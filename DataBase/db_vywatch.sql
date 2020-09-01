-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 01 sep. 2020 à 09:07
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
-- Structure de la table `listsubject`
--

DROP TABLE IF EXISTS `listsubject`;
CREATE TABLE IF NOT EXISTS `listsubject` (
  `idlist` int(11) NOT NULL AUTO_INCREMENT,
  `NameSub` varchar(50) NOT NULL,
  `ImageSub` varchar(250) NOT NULL,
  PRIMARY KEY (`idlist`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listsubject`
--

INSERT INTO `listsubject` (`idlist`, `NameSub`, `ImageSub`) VALUES
(1, 'Politique', '../assets/Video/Politique.mp4'),
(2, 'Science', '../assets/Video/Science.mp4'),
(3, 'Histoire', '../assets/Video/Histoire.mp4'),
(4, 'Religion', '../assets/Video/Religion.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `idteam` int(11) NOT NULL AUTO_INCREMENT,
  `nameteam` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `idlist` int(11) NOT NULL,
  PRIMARY KEY (`idteam`),
  KEY `team_listSubject_FK` (`idlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `firstconnection` tinyint(1) NOT NULL,
  `pseudo` varchar(250) NOT NULL,
  `date_Birth` date NOT NULL,
  `sexe` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `lastname`, `firstname`, `email`, `password`, `firstconnection`, `pseudo`, `date_Birth`, `sexe`) VALUES
(1, 'nico', 'nico', 'nico@vw.fr', 'testest', 1, 'nico', '2020-09-30', 'Homme'),
(2, 'khalil', 'khalil', 'khalil@vw.fr', 'testest', 1, 'khalil', '2020-09-30', 'Homme'),
(3, 'regergerg', 'erergerg', 'regregerg@httr.ghj', '$2a$10$Qb57uTY91/58ZnDt8LdmBeAmkDLkJen46golHrR.Mh1Tr9V3rN3H6', 1, 'thrrtrth45693', '1995-10-22', 'Man'),
(4, 'rgergergerg', 'egergerger', 'ergergerg@gregr.com', '$2a$10$u9yac7UzD0oKkIJPEriVd.6ypFEynFE6qAjBjrJv/hEmODDBEe/x6', 1, 'trhrthrthrth756', '1986-09-22', 'Man'),
(5, 'fdbbfdb', 'bfdbfdb', 'fbdbfb@rrgre.hjk', '$2a$10$3Mm.seMR.W6qGO5/ANSGoeaylF2KCN/KNZCU9CD43Bcnki2JSJEq6', 1, 'httrhthrtrthrthrthrthgr', '1990-08-21', 'Man'),
(6, 'rthtrhrth', 'trhtrhtrh', 'rthtrhrth@trtrhtrh.com', '$2a$10$eYtdAosUzICw2xiFJCqdk.h9P196fIs5vclkrex/pDhMFoi.ld32m', 1, 'rregergregreg4556', '1970-10-23', 'Man');

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `iduser` int(11) NOT NULL,
  `idlist` int(11) NOT NULL,
  `idusersub` int(11) NOT NULL,
  PRIMARY KEY (`idusersub`),
  KEY `userSubject_user_FK` (`iduser`),
  KEY `userSubject_listSubject0_FK` (`idlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usersubject`
--

INSERT INTO `usersubject` (`iduser`, `idlist`, `idusersub`) VALUES
(2, 1, 1),
(1, 1, 2),
(2, 1, 3),
(2, 4, 4),
(1, 3, 5),
(4, 1, 6),
(5, 4, 7),
(5, 1, 8),
(5, 2, 9),
(6, 1, 10),
(6, 2, 11),
(6, 3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `userteam`
--

DROP TABLE IF EXISTS `userteam`;
CREATE TABLE IF NOT EXISTS `userteam` (
  `iduserteam` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idteam` int(11) NOT NULL,
  PRIMARY KEY (`iduserteam`),
  KEY `userteam_user_FK` (`iduser`),
  KEY `userteam_team0_FK` (`idteam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_listSubject_FK` FOREIGN KEY (`idlist`) REFERENCES `listsubject` (`idlist`);

--
-- Contraintes pour la table `usersubject`
--
ALTER TABLE `usersubject`
  ADD CONSTRAINT `userSubject_listSubject0_FK` FOREIGN KEY (`idlist`) REFERENCES `listsubject` (`idlist`),
  ADD CONSTRAINT `userSubject_user_FK` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `userteam`
--
ALTER TABLE `userteam`
  ADD CONSTRAINT `userteam_team0_FK` FOREIGN KEY (`idteam`) REFERENCES `team` (`idteam`),
  ADD CONSTRAINT `userteam_user_FK` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
