-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 23 août 2020 à 10:33
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
  `idListSub_listSubject` int(11) NOT NULL AUTO_INCREMENT,
  `nameSubject_listSubject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idListSub_listSubject`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstconnection` tinyint(1) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `sexe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `lastname`, `firstname`, `email`, `password`, `firstconnection`, `pseudo`, `date_birth`, `sexe`) VALUES
(1, 'TEST', 'Nicolas', 'test@gmail.com', 'test', 1, 'tete', NULL, 'Man'),
(2, 'tt', 'gg', 'gg@yy.com', 'test', 1, 'licorne24', '2011-05-04', 'Licorne'),
(3, 'jty', 'yjjty', 'ytjyjytyj@hkhk.com', 'testtest', 1, 'yytytjty', '1967-07-08', 'Man'),
(4, 'ytj', 'yj', 'yjyty@gjgfj.com', 'thrrhtrthhtr', 1, 'httrhtrh85', '1975-09-08', 'Man'),
(5, 'pierre', 'jean', 'jp@gmail.com', 'testtest', 1, 'jp99', '1999-08-08', 'Man'),
(6, 'gh', 'jea', 'test@gmail.com', 'test', 1, 'tete23', '1965-12-06', 'Man'),
(7, 'john', 'doe', 'test@gmail.com', '$2a$10$RYFjOo/WSx0aAQ7zJ3yXnOuFN4We6FtDuZfQEA.LqS2KuvIyxAF5q', 1, 'tete23', '1965-12-06', 'Man'),
(8, 'john', 'doe', 'test@gmail.com', '$2a$10$KH07jjruID5mVRLOqOV4beTayMmS.6Y1IGvQSI1TdqwfN47wQV6i2', 1, 'tete25', '1965-12-06', 'Man'),
(9, 'jo', 'do', 'test@gmail.com', '$2a$10$OVUZ7dg07voPzaQm7UV0FukOXjnxaLcDZ91yt0xRT2clsiu5y..m6', 1, 'tete26', '1966-12-06', 'Man'),
(10, 'jo', 'do', 'test@gmail.com', '$2a$10$bnA2iWl9OYhQxJqamIS1hebMRFqd0p5K3G/xLXHczF11VguvXSC4G', 1, 'tete22', '1966-12-06', 'Man'),
(11, 'jo', 'do', 'test@gmail.com', '$2a$10$1oVnqhdLPJlldBR3K.OvMeDkpaU0gLmYuS6viKZx5b5D5WOqvc4Da', 1, 'tete28', '1966-12-06', 'Man'),
(12, 'jo', 'do', 'test@gmail.com', '$2a$10$OiFVSH/DBxP31v0VLk0LhOex0LjLynzqw2liUC/inYRpnCKcfNFna', 1, 'tete29', '1966-12-06', 'Man'),
(13, 'jo', 'do', 'test@gmail.com', '$2a$10$81b3AipTA0JXKiRYR1HHEu8J1roXud7K/kKOod2Ct8iIpc3Lj6Mh2', 1, 'tete35', '1966-12-06', 'Man'),
(14, 'jo', 'do', 'test@gmail.com', '$2a$10$cH.s82sQ4sL2yAIwpvjeGOOccqFFGEfrrQgPyXqKdonQnNNWGh/Bi', 1, 'tete34', '1966-12-06', 'Man'),
(15, 'jo', 'do', 'test@gmail.com', '$2a$10$hqpPZJRxS.gU.nQLLWa8c.x4Ly4waLrYgifiifqv4NJFmemtoIon6', 1, 'tete56', '1966-12-06', 'Man'),
(16, 'jo', 'do', 'test@gmail.com', '$2a$10$CHPzN36mwvrHyLzpzmTWDewKEk18d.NBYJlqoopGDs.DfJacBmWP2', 1, 'tete57', '1966-12-06', 'Man'),
(17, 'jo', 'do', 'test@gmail.com', '$2a$10$d7iajAwLH.zybKqyeLMKkeCInhCnZ/y8qkqBcFNP8YFsgts3MZ7ga', 1, 'tete71', '1966-12-06', 'Man'),
(18, 'jo', 'do', 'test@gmail.com', '$2a$10$TxWXlUJ5vx9iMKFfIofZUOvnmWIJtUGbfwF3OqWAgg2AtQM3mGc.u', 1, 'tete73', '1966-12-06', 'Man'),
(19, 'jo', 'do', 'test@gmail.com', '$2a$10$U29GL5688vV7dAGLREXVOuR8uwkMScL8peT/cSGJ196Dgh4xD4gn2', 1, 'tete74', '1966-12-06', 'Man'),
(20, 'jo', 'do', 'test@gmail.com', '$2a$10$H.xsB8gzdgpD/Kq8alKJEelp/rvKYEKP70bKoWv1Ga3TSB.npexVu', 1, 'tete75', '1966-12-06', 'Man'),
(21, 'trhrthrth', 'thrrtrhrth', 'trhttrhtrh@ngjfg.fgh', '$2a$10$jZPVWh1kkIei1bOdiOUjdeXVjejjeRKeKZMJamk8Kdj1oZnHWBKWy', 1, 'ddsdsdgsdg', '1990-09-09', 'Man'),
(22, 'fgh', 'fgh', 'toto@gmail.com', '$2a$10$VNRLtAOrSfLSUoF3kTiRrug.0aUSpJiGvZcZL3Lqn5.3vvCeIBwd2', 1, 'toto45', '1986-10-12', 'Man'),
(23, 'trhrthrt', 'ttrtrh', 'trhtrhrth@hfgjgf.ghf', 'ffffffffff', 1, 'ffffff', '1986-08-04', 'Man'),
(24, 'fdbdfb', 'fbfdb', 'fbfbfd@fhfdh.com', '$2a$10$.hLR8BDWc813Foz2H2mPV..ZqfEWVHaxOiGBnsWDXr34KDLbm2b0C', 1, 'gngfnngf', '1980-12-08', 'Man'),
(25, 'rthrth', 'trhtrh', 'tot@toto.com', '$2a$10$zAd4cVnLBuM1rwT59tU3kOxWG72wMMNGg8gid9gws28ZU7RElmEfm', 1, 'toto10', '1996-07-06', 'Man'),
(26, 'jo', 'do', 'test@gmail.com', '$2a$10$J9anBrp5gmcX78rXjrWz8ON0EdRCjR1udpEk1iIqmAo4SKxNvu97.', 1, 'tete100', '1966-12-06', 'Man'),
(27, 'fdbdfb', 'trhtrh', 'feffeez@fgh.com', '$2a$10$n4zrYStlCnhklXNm0w9YOubhOoEUn7p6R0YT3j9GXLPyuSWNhDzsG', 1, 'toto95', '2000-09-26', 'Woman');

-- --------------------------------------------------------

--
-- Structure de la table `usersubject`
--

DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `idListSub_listSubject` int(11) NOT NULL AUTO_INCREMENT,
  `idUser_User` int(11) NOT NULL,
  PRIMARY KEY (`idListSub_listSubject`,`idUser_User`),
  KEY `FK_userSubject_idUser_User` (`idUser_User`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `usersubject`
--
ALTER TABLE `usersubject`
  ADD CONSTRAINT `FK_userSubject_idListSub_listSubject` FOREIGN KEY (`idListSub_listSubject`) REFERENCES `listsubject` (`idListSub_listSubject`),
  ADD CONSTRAINT `FK_userSubject_idUser_User` FOREIGN KEY (`idUser_User`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
