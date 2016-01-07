-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 07 Janvier 2016 à 16:01
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
  `couleur cheveux` varchar(255) NOT NULL,
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

INSERT INTO `personnes` (`id`, `result`, `sexe`, `cheveux`, `couleur cheveux`, `yeux`, `service`, `lunette`, `promo`) VALUES
(1, 'Robin', 'M', 'court', 'brun', 'marron', 'pedago', 'N', 'prep'),
(2, 'Stéphanie GUBERN', 'F', 'long', 'blond', 'marron', 'pedago', 'N', 'etna');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `question`, `group_id`) VALUES
(1, 'Est-ce un homme ?', 1),
(2, 'Est-ce une femme ?', 1),
(3, 'Ses cheveux sont courts ?', 2),
(4, 'Ses cheveux sont longs ?', 2),
(5, 'Ses cheveux sont blonds ?', 2),
(6, 'Ses cheveux sont bruns ?', 2),
(7, 'Ses cheveux sont roux ?', 2),
(8, 'Ses cheveux sont blancs ?', 2),
(9, 'Ses cheveux sont gris ?', 2),
(10, 'Ses yeux sont bleus ?', 3),
(11, 'Ses yeux sont verts ?', 3),
(12, 'Ses yeux sont marrons ?', 3),
(13, 'Ses yeux sont noirs ?', 3),
(14, 'Porte elle des lunettes ?', 4),
(15, 'Appartient-elle au service pédagogique ?', 5),
(16, 'Appartient-elle au service ADM ?', 5),
(17, 'Appartient-elle au studio ?', 5),
(18, 'S''occupe elle des ETNA ?', 6),
(19, 'S''occupe elle des PrepEtna ?', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
