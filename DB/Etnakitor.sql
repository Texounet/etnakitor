-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Jeu 07 Janvier 2016 à 22:15
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `etnakitor`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `id` int(11) NOT NULL,
  `result` varchar(255) NOT NULL,
  `sexe` varchar(2) NOT NULL,
  `cheveux` varchar(20) NOT NULL,
  `couleur cheveux` varchar(255) NOT NULL,
  `yeux` varchar(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `lunette` varchar(2) NOT NULL,
  `promo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `question`, `reponse`, `group_id`) VALUES
(1, 'Est-ce un homme ?', 'M', 1),
(2, 'Est-ce une femme ?', 'F', 1),
(3, 'Ses cheveux sont courts ?', 'court', 7),
(4, 'Ses cheveux sont longs ?', 'long', 7),
(5, 'Ses cheveux sont blonds ?', 'blond', 2),
(6, 'Ses cheveux sont bruns ?', 'brun', 2),
(7, 'Ses cheveux sont roux ?', 'roux', 2),
(8, 'Ses cheveux sont blancs ?', 'blanc', 2),
(9, 'Ses cheveux sont gris ?', 'gris', 2),
(10, 'Ses yeux sont bleus ?', 'bleu', 3),
(11, 'Ses yeux sont verts ?', 'vert', 3),
(12, 'Ses yeux sont marrons ?', 'marron', 3),
(13, 'Ses yeux sont noirs ?', 'noir', 3),
(14, 'Porte elle des lunettes ?', 'O', 4),
(15, 'Appartient-elle au service pédagogique ?', 'pedago', 5),
(16, 'Appartient-elle au service ADM ?', 'ADM', 5),
(17, 'Appartient-elle au studio ?', 'studio', 5),
(18, 'S''occupe elle des ETNA ?', 'etna', 6),
(19, 'S''occupe elle des PrepEtna ?', 'prep', 6);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
