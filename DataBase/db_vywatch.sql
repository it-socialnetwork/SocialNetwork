-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 29 août 2020 à 15:00
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listsubject`
--

INSERT INTO `listsubject` (`idlist`, `NameSub`, `ImageSub`) VALUES
(1, 'Politique', 'ezezezf'),
(2, 'Religion', 'gehtrtrhtrh');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `lastname`, `firstname`, `email`, `password`, `firstconnection`, `pseudo`, `date_Birth`, `sexe`) VALUES
(1, 'trhrthtrh', 'htrhrth', 'trhtrht@hthth.hj', '$2a$10$3BgDGFDtKJHTYTO4UsKlDugVULtVx64T9u1ydbQRG0yqsxcvWsaQO', 1, 'regergreg', '2000-09-08', 'Man'),
(2, 'trhrthtrh', 'htrhrth', 'trhtrht@hthth.hj', '$2a$10$vcKi8ksacn4sFWiVPq7rYe62CZuwBt793x/mtC0RWXTBPhmaVNVJm', 1, 'regergreg', '2000-09-08', 'Man'),
(3, 'thrhtrh', 'thrrth', 'thrhtrtrh@htrhtrh.ghj', '$2a$10$XYk6DzdJ3ChZRI6a8icGFO2VOPum3ioVvBXbGCVbb78.tMGAqglO2', 1, 'hrrerhererehreh', '1987-10-23', 'Man'),
(4, 'thrrth', 'trhtrh', 'trhtrhtr@rgreg.com', '$2a$10$DrQFNsBtmV8TtZs4xzUnbO3fnMySxrmPjjYsIlkCSNdeRFLn0S.wS', 1, 'regergregergerg', '1969-11-22', 'Man'),
(5, 'tyjytj', 'jtyjtyj', 'yjytyjyjty@hjrtjt.fgh', '$2a$10$gkclB8iBGNDULDaW.1BR.OTSBpXcNCD2XIq6pSjxz5.DK.LIUmvaW', 1, 'gjggjgjgtr', '1987-10-14', 'Man'),
(6, 'tyjytj', 'jtyjtyj', 'yjytyjyjty@hjrtjt.fgh', '$2a$10$aoI0e64RYbYC5UqEOEMgxue62HZ/MScsA98Pla9arxNOyaHL2hjeK', 1, 'gjggjgjgtr', '1987-10-14', 'Man'),
(7, 'jo', 'do', 'test@gmail.com', '$2a$10$V2gMJbGfReXzQ41Qh9y1C.Ezt3UHfJj7Bh6NpeGGmamObt5AMxNlm', 1, 'tete75', '1966-12-06', 'Man'),
(8, 'ytjytjtyj', 'htyjytjt', 'jytytjty@ththrttrh.com', '$2a$10$y4EINUBbLug0FWB4/rbPBuHJFt2fa/QpPk58IqkEB5tw6KJxzFFCW', 1, 'trhrthrthrthrt', '1976-10-12', 'Man');

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `iduser` int(11) NOT NULL,
  `idlist` int(11) NOT NULL,
  PRIMARY KEY (`iduser`,`idlist`),
  KEY `userSubject_listSubject0_FK` (`idlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `userteam`
--

DROP TABLE IF EXISTS `userteam`;
CREATE TABLE IF NOT EXISTS `userteam` (
  `iduser` int(11) NOT NULL,
  `idteam` int(11) NOT NULL,
  PRIMARY KEY (`iduser`,`idteam`),
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
