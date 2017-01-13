-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Janvier 2017 à 14:46
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

CREATE TABLE `billets` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_bin NOT NULL,
  `contenu` text COLLATE utf8_bin NOT NULL,
  `auteur` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_categorie` int(11) NOT NULL DEFAULT '1',
  `date_de_creations` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `billets`
--

INSERT INTO `billets` (`id`, `titre`, `contenu`, `auteur`, `id_categorie`, `date_de_creations`) VALUES
(7, 'star wars', '123', NULL, 1, '2017-01-11 15:03:10'),
(8, '1984', '123', NULL, 2, '2017-01-11 15:05:13'),
(9, 'oss 117', '123', NULL, 1, '2017-01-11 15:05:32'),
(10, '12', '123', NULL, 1, '2017-01-11 15:20:29'),
(11, 'ddf', 'fdf', NULL, 1, '2017-01-11 15:20:38'),
(12, 'ddf', 'fdf', NULL, 1, '2017-01-11 15:27:44'),
(13, 'ddf', 'fdf', NULL, 1, '2017-01-11 15:29:33'),
(14, 'ty', 'ty', NULL, 1, '2017-01-11 15:42:36'),
(15, 'ty', 'ty', NULL, 1, '2017-01-11 16:47:39'),
(16, 'meteo', 'hfff', NULL, 1, '2017-01-12 08:37:57'),
(17, 'meteo', 'hfff', NULL, 1, '2017-01-12 09:34:58'),
(18, 'dgdfg', 'gdqd', NULL, 1, '2017-01-12 11:09:40'),
(19, 'dgdfg', 'gdqd', NULL, 1, '2017-01-12 11:09:47'),
(20, 'dgdfg', 'gdqd', NULL, 1, '2017-01-12 11:09:53'),
(21, '1', 'ze', NULL, 1, '2017-01-12 11:13:07'),
(22, 'la fin', 'az', 'raphael', 1, '2017-01-12 11:37:33');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom_de_la_categories` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom_de_la_categories`) VALUES
(1, 'films'),
(2, 'livres');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `id_billets` int(11) NOT NULL,
  `auteur` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_commentaires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
