-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 08 Janvier 2016 à 09:27
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `etnakitor`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE IF NOT EXISTS `personnes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(255) NOT NULL,
  `sexe` varchar(2) NOT NULL,
  `cheveux` varchar(20) NOT NULL,
  `couleur_cheveux` varchar(255) NOT NULL,
  `yeux` varchar(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `lunette` varchar(2) NOT NULL,
  `promo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `personnes`
--

INSERT INTO `personnes` (`id`, `result`, `sexe`, `cheveux`, `couleur_cheveux`, `yeux`, `service`, `lunette`, `promo`) VALUES
(1, 'Robin', 'M', 'court', 'brun', 'marron', 'pedago', 'N', 'prep'),
(2, 'Stéphanie GUBERN', 'F', 'long', 'blond', 'marron', 'pedago', 'N', 'etna');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `group_id` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `question`, `reponse`, `group_id`) VALUES
(1, 'Est-ce un homme ?', 'M', 'sexe'),
(2, 'Est-ce une femme ?', 'F', 'sexe'),
(3, 'Ses cheveux sont courts ?', 'court', 'cheveux'),
(4, 'Ses cheveux sont longs ?', 'long', 'cheveux'),
(5, 'Ses cheveux sont blonds ?', 'blond', 'couleur_cheveux'),
(6, 'Ses cheveux sont bruns ?', 'brun', 'couleur_cheveux'),
(7, 'Ses cheveux sont roux ?', 'roux', 'couleur_cheveux'),
(8, 'Ses cheveux sont blancs ?', 'blanc', 'couleur_cheveux'),
(9, 'Ses cheveux sont gris ?', 'gris', 'couleur_cheveux'),
(10, 'Ses yeux sont bleus ?', 'bleu', 'yeux'),
(11, 'Ses yeux sont verts ?', 'vert', 'yeux'),
(12, 'Ses yeux sont marrons ?', 'marron', 'yeux'),
(13, 'Ses yeux sont noirs ?', 'noir', 'yeux'),
(14, 'Porte elle des lunettes ?', 'O', 'lunette'),
(15, 'Appartient-elle au service pédagogique ?', 'pedago', 'service'),
(16, 'Appartient-elle au service ADM ?', 'ADM', 'service'),
(17, 'Appartient-elle au studio ?', 'studio', 'service'),
(18, 'S''occupe elle des ETNA ?', 'etna', 'promo'),
(19, 'S''occupe elle des PrepEtna ?', 'prep', 'promo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
