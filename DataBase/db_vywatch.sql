-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 15 juil. 2020 à 14:16
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
  `idListSub_listSubject` int(11) NOT NULL AUTO_INCREMENT,
  `nameSubject_listSubject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idListSub_listSubject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idUser_Users` int(11) NOT NULL AUTO_INCREMENT,
  `lastname_Users` varchar(255) DEFAULT NULL,
  `firstname_Users` varchar(255) DEFAULT NULL,
  `datenaissance_Users` varchar(255) DEFAULT NULL,
  `email_Users` varchar(255) DEFAULT NULL,
  `password_Users` varchar(255) DEFAULT NULL,
  `firstconnection_Users` tinyint(1) DEFAULT NULL,
  `sexe_Users` char(1) DEFAULT NULL,
  `admin_Users` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idUser_Users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `idListSub_listSubject` int(11) NOT NULL AUTO_INCREMENT,
  `idUser_Users` int(11) NOT NULL,
  PRIMARY KEY (`idListSub_listSubject`,`idUser_Users`),
  KEY `FK_userSubject_idUser_Users` (`idUser_Users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `usersubject`
--
ALTER TABLE `usersubject`
  ADD CONSTRAINT `FK_userSubject_idListSub_listSubject` FOREIGN KEY (`idListSub_listSubject`) REFERENCES `listsubject` (`idListSub_listSubject`),
  ADD CONSTRAINT `FK_userSubject_idUser_Users` FOREIGN KEY (`idUser_Users`) REFERENCES `users` (`idUser_Users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
