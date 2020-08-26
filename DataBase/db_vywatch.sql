

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `listsubject`;
CREATE TABLE IF NOT EXISTS `listsubject` (
  `Idlist` int(11) NOT NULL AUTO_INCREMENT,
  `Namesub` varchar(255) DEFAULT NULL,
  `Imagesub` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Idlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `usersubject`;
CREATE TABLE IF NOT EXISTS `usersubject` (
  `Idlist` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idListSub`,`idUser`),
  KEY `FK_userSubject_idUser_User` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `usersubject`
  ADD CONSTRAINT `FK_userSubject_idListSub_listSubject` FOREIGN KEY (`Idlist`) REFERENCES `listsubject` (`Idlist`),
  ADD CONSTRAINT `FK_userSubject_idUser_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`id_user`);
COMMIT;
