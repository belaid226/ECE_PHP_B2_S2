-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 avr. 2024 à 19:07
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_Admin` int(50) NOT NULL,
  `nom_Admin` varchar(256) DEFAULT NULL,
  `prénom_Admin` varchar(256) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `paseword` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'admin' CHECK (`role` in ('client','admin','standardist','intervenet'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_Admin`, `nom_Admin`, `prénom_Admin`, `user`, `paseword`, `role`) VALUES
(1, NULL, NULL, 'admin', 'admin', 'admin'),
(2, 'belaid', 'ioudjaoudene', 'beliad@gmail.com', 'amine23', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE `avoir` (
  `id_Intervention` int(50) NOT NULL,
  `id_Statut` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_Client` int(50) NOT NULL,
  `nom_Client` varchar(256) DEFAULT NULL,
  `prénom_Client` varchar(256) DEFAULT NULL,
  `téléphone_Client` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `Statut` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'client' CHECK (`role` in ('client','admin','standardist','intervenet')),
  `degré_d'urgence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_Client`, `nom_Client`, `prénom_Client`, `téléphone_Client`, `email`, `mot_de_passe`, `Statut`, `role`, `degré_d'urgence`) VALUES
(2, 'Belaid', 'KARA', 621654812, 'user@123', '$2y$10$TA3kofw4CgieVEr.ur9dC.vYe66m5SKwZD7RXeL0mxT1kNDfLAb/W', 'completed', 'intervenet', 0),
(3, 'Alexander', 'Müller', 669102504, '12@G.COM', '$2y$10$w7CflvtgaqPi7xBd/Jwx5uZdYN2dLfmry.glB19iQRKY7GnufS/8O', 'completed', 'admin', 0),
(4, 'Ernest', 'Jackson', 680548087, '1234@G.COM', '$2y$10$JcIiRw90BJidz2cD8lkURutbcsw3t/0p.8R5e90dDeKb3r90QP.Ue', 'completed', 'client', 0),
(5, 'Olivia', 'Weber\n', 6689897, '12@G.COM', '$2y$10$l3oe2aJfiVAdoUtUI/CTdu1.NSFKVjPUisyok7JIho1xJtePzn/.2', 'completed', 'client', 0),
(6, 'Thomas ', ' Patterson', 695432926, '12@G.COM', '$2y$10$D1CnoWUIwCuxrmkvsAB2XeA35PGqIJ1r2qPPvcBxfNR.55HD5bt56', 'completed', 'client', 0),
(7, 'Hannah', 'Schmidt', 635520375, '12@G.COM', '$2y$10$XHIZ//6kycCOxfdumSaEPuUSVS0eUtuz49dHyiZGlmizazNxSoF7K', 'completed', 'client', 0),
(8, 'Carla', 'Folger', 691303102, '12@G.COM', '$2y$10$EpUScFUGS7vtX1F0SVGeHe.jokdtpDIoO9Bn/26ngV27zfcdfQqgi', 'completed', 'client', 0),
(9, 'Antoine', 'Dubois', 649954385, '12@G.COM', '$2y$10$D6b/en/ZuPAXcpLbC7QRuuKf.M.G74znXwheQ8hSruEtmtqAC3PHK', 'completed', 'client', 0),
(10, 'Emilie ', ' Berger', 675862623, '12@G.COM', '$2y$10$79.wK9icm3TY4UuZ2muVW.CBZCiPzzM33ixwgyxmR492dRmGjDcYa', '', 'client', 0),
(11, 'Javier', 'Fernandez', 629449966, '12@G.COM', '$2y$10$ZMqCJ/6XQo0StvRzAJwzlObB/Zsq5GsCYlKDn6oEiZRP1QIPitjrm', '', 'client', 0),
(12, 'David', ' Lee', 619661962, '12@G.COM', '$2y$10$HhETchtDJJ.yEOPK6DBWXOAkALxjEMGqZf2ZhsoXdDrvWtH32GgPm', '', 'client', 0),
(13, 'Amine', 'IO', 609959915, 'amine@gmail.com', '$2y$10$PqfAvVLn6FRfyiGrkhGdI.A1sWZwnbY1u9LF.O4jc1PMvYK80VDRS', 'completed', 'client', 0),
(14, 'AENTON', 'ADAM', 690813694, 'AD@AD.COM', '$2y$10$a2wo2aF1e6td7LAXRcODwOlFo.vRdnLf7rw8k/NUKE.LvPnlfDVTu', '', 'client', 0),
(15, 'Isabella', 'Santos', 624188728, 'aa@gmail.com', '$2y$10$chJh9Ing0dDAJk8IUlc/8.eCh2rD2lY/c/gmT80R2/UAbyF/VvSGy', 'completed', 'client', 0),
(16, 'belaid', 'ioudjaoudene ', 556478, 'b@gmail.com', '123', '', 'client', 0),
(17, 'Luca', 'Bianchi', 648502562, '124@G.COM', '$2y$10$zsGd9SuGG22/WjkgnZL1ruR1dM8DM1v5NZQy/HXnsGBZI9AJjybny', '', 'client', 0),
(18, 'lars', 'Nielsen', 223456543, 'aa1@gmail.com', '$2y$10$QQ3FDGzc0vPazCSElssGQeeH4hR5O9XA04483rj18jebf09E1hGO6', '', 'client', 0),
(19, 'amine', 'ioudjaoudene ', 669946628, 'aminouche@GMAIL.COM', '$2y$10$uticRnCooZcWiG4Zy9NaQe5nEjC.F/L8RHGflbSd4zl.bTVkxbVhK', '', 'client', 0),
(20, 'Charlotte', 'Fischer', 604225458, 'belaid@gmail.com', '$2y$10$TAg01XSnQBUT90GVPOEpf.PlY4mBVnjyotzMSMDqdvcH0x6wBF8Ia', '', 'client', 0),
(21, 'Max ', 'Meyer', 611287411, 'belaidd@gmail.com', '$2y$10$C0u7hnl6B19m313sP6FhZ.mN5MuIIwBEEjpYmyuW1anY5WPSurSly', '', 'client', 0),
(23, 'Tyra', ' Clark', 682035731, 'belaidddd@gmail.com', '$2y$10$zD3zr2415bGZNxpRZHrXieYlrY4jBgNPr1bRkIEkL5LgBbWSTzL0K', '', 'client', 0),
(24, 'Hayed', 'Malouf', 663111807, 'kkkkkkk@zebi.fr', '$2y$10$stRjiBjnwcNyroZJ0M1gQueyR1ukjYPd2y3w29I/zMTCyapUZRlru', '', 'client', 0),
(25, 'lina', 'ait ', 609981758, 'lina12@gmail.com', '$2y$10$UMMS8nhZGMMIU.pGizufouW7e/wA.23Yn47bl6jWM/pqyKmInHlra', 'completed', 'admin', 0),
(26, 'belaid', 'ioudjaoudene ', 643086314, 'beliad@gmail.com', '$2y$10$Svy7tlnfKKVhosQzkNmzXezTp9kegHWLOxParRwnKSHp8rvmal9AK', '', 'client', 0),
(27, 'Sofia', 'Rossi', 659400418, 'bely@AZ.FR', '$2y$10$dYKgCgAUUhFOtaHVyqK.feBssLj/QKlwW7oHeE.Eoz/.UY8kE0GOO', '', 'client', 0);

--
-- Déclencheurs `client`
--
DELIMITER $$
CREATE TRIGGER `after_insert_client` AFTER INSERT ON `client` FOR EACH ROW BEGIN
    IF NEW.téléphone_Client IS NULL THEN
        UPDATE client
        SET téléphone_Client = CONCAT('06', LPAD(FLOOR(RAND() * 100000000), 8, '0'))
        WHERE id_Client = NEW.id_Client;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_client` BEFORE INSERT ON `client` FOR EACH ROW BEGIN
    IF NEW.téléphone_Client IS NULL THEN
        SET NEW.téléphone_Client = CONCAT('06', LPAD(FLOOR(RAND() * 100000000), 8, '0'));
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_Commentaire` int(50) NOT NULL,
  `description_Commentaire` varchar(256) DEFAULT NULL,
  `id_Client` int(50) DEFAULT NULL,
  `Statut` varchar(255) DEFAULT NULL,
  `id_Intervenant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_Commentaire`, `description_Commentaire`, `id_Client`, `Statut`, `id_Intervenant`) VALUES
(2, 'reseaux et internet', 4, 'no', 2),
(6, 'PRBLM DE CNX ', 4, 'no', NULL),
(7, 'PRBLM DE CNX ', 2, 'completed', NULL),
(8, 'PRBLM DE CNX ', 2, 'completed', NULL),
(9, 'bonjour', 14, 'completed', NULL),
(10, 'reseaux et internet', 14, 'no', NULL),
(11, 'zuzilze', 17, 'no', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ecrire`
--

CREATE TABLE `ecrire` (
  `id_Client` int(50) NOT NULL,
  `id_Commentaire` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

CREATE TABLE `intervenant` (
  `id_Intervenant` int(50) NOT NULL,
  `nom_Intervenant` varchar(256) DEFAULT NULL,
  `prénom_Intervenant` varchar(256) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `intervenant`
--

INSERT INTO `intervenant` (`id_Intervenant`, `nom_Intervenant`, `prénom_Intervenant`, `user`, `PASSWORD`) VALUES
(2, 'belaid', 'belaid', 'intervenant', 'intervenant'),
(4, 'amin', 'amin', 'Amin', 'Amin');

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE `intervention` (
  `id_Intervention` int(50) NOT NULL,
  `date_Intervention` date DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'intervenet' CHECK (`role` in ('client','admin','standardist','intervenet'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lier`
--

CREATE TABLE `lier` (
  `id_Intervenant` int(50) NOT NULL,
  `id_standardiste` int(50) NOT NULL,
  `id_Client` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id_Log` int(50) NOT NULL,
  `nom_utilisateur_Log` varchar(256) DEFAULT NULL,
  `mot_de_passe_Log` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `se_connecter`
--

CREATE TABLE `se_connecter` (
  `id__Log` int(50) NOT NULL,
  `id_Client` int(50) NOT NULL,
  `id_Intervenant` int(50) NOT NULL,
  `id_standardiste` int(50) NOT NULL,
  `id_Admin` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `standardiste`
--

CREATE TABLE `standardiste` (
  `id_standardiste` int(50) NOT NULL,
  `nom_standardiste` varchar(256) DEFAULT NULL,
  `prénom_standardiste` varchar(256) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'standardist' CHECK (`role` in ('client','admin','standardist','intervenet'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `standardiste`
--

INSERT INTO `standardiste` (`id_standardiste`, `nom_standardiste`, `prénom_standardiste`, `user`, `PASSWORD`, `role`) VALUES
(1, 'Standardiste', '1', 'standardiste1', '12341', 'standardist'),
(2, 'standardiste 2', 'standardiste 2', 'standardiste2', '1234', 'standardist'),
(3, 'standardiste 3', 'standardiste', 'standardiste 3', '12345', 'standardist');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_Statut` int(50) NOT NULL,
  `état_Statut` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `écrire`
--

CREATE TABLE `écrire` (
  `id_Client` int(50) NOT NULL,
  `id_Commentaire` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_Admin`);

--
-- Index pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD PRIMARY KEY (`id_Intervention`,`id_Statut`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_Client`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_Commentaire`),
  ADD KEY `fk_id_Client` (`id_Client`),
  ADD KEY `id_Intervenant` (`id_Intervenant`);

--
-- Index pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD PRIMARY KEY (`id_Client`,`id_Commentaire`),
  ADD KEY `id_Commentaire` (`id_Commentaire`);

--
-- Index pour la table `intervenant`
--
ALTER TABLE `intervenant`
  ADD PRIMARY KEY (`id_Intervenant`);

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id_Intervention`);

--
-- Index pour la table `lier`
--
ALTER TABLE `lier`
  ADD PRIMARY KEY (`id_Intervenant`,`id_standardiste`,`id_Client`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_Log`);

--
-- Index pour la table `se_connecter`
--
ALTER TABLE `se_connecter`
  ADD PRIMARY KEY (`id__Log`,`id_Client`,`id_Intervenant`,`id_standardiste`,`id_Admin`),
  ADD KEY `FK_se_connecter_id_Client` (`id_Client`),
  ADD KEY `FK_se_connecter_id_Intervenant` (`id_Intervenant`),
  ADD KEY `FK_se_connecter_id_standardiste` (`id_standardiste`),
  ADD KEY `FK_se_connecter_id_Admin` (`id_Admin`);

--
-- Index pour la table `standardiste`
--
ALTER TABLE `standardiste`
  ADD PRIMARY KEY (`id_standardiste`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_Statut`);

--
-- Index pour la table `écrire`
--
ALTER TABLE `écrire`
  ADD PRIMARY KEY (`id_Client`,`id_Commentaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_Admin` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `avoir`
--
ALTER TABLE `avoir`
  MODIFY `id_Intervention` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_Client` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_Commentaire` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ecrire`
--
ALTER TABLE `ecrire`
  MODIFY `id_Client` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `intervenant`
--
ALTER TABLE `intervenant`
  MODIFY `id_Intervenant` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id_Intervention` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lier`
--
ALTER TABLE `lier`
  MODIFY `id_Intervenant` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id_Log` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `se_connecter`
--
ALTER TABLE `se_connecter`
  MODIFY `id__Log` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `standardiste`
--
ALTER TABLE `standardiste`
  MODIFY `id_standardiste` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id_Statut` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `écrire`
--
ALTER TABLE `écrire`
  MODIFY `id_Client` int(50) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fk_id_Client` FOREIGN KEY (`id_Client`) REFERENCES `client` (`id_Client`),
  ADD CONSTRAINT `id_Intervenant` FOREIGN KEY (`id_Intervenant`) REFERENCES `intervenant` (`id_Intervenant`);

--
-- Contraintes pour la table `ecrire`
--
ALTER TABLE `ecrire`
  ADD CONSTRAINT `ecrire_ibfk_1` FOREIGN KEY (`id_Client`) REFERENCES `client` (`id_Client`),
  ADD CONSTRAINT `ecrire_ibfk_2` FOREIGN KEY (`id_Commentaire`) REFERENCES `commentaire` (`id_Commentaire`);

--
-- Contraintes pour la table `se_connecter`
--
ALTER TABLE `se_connecter`
  ADD CONSTRAINT `FK_se_connecter_id_Admin` FOREIGN KEY (`id_Admin`) REFERENCES `admin` (`id_Admin`),
  ADD CONSTRAINT `FK_se_connecter_id_Client` FOREIGN KEY (`id_Client`) REFERENCES `client` (`id_Client`),
  ADD CONSTRAINT `FK_se_connecter_id_Intervenant` FOREIGN KEY (`id_Intervenant`) REFERENCES `intervenant` (`id_Intervenant`),
  ADD CONSTRAINT `FK_se_connecter_id__Log` FOREIGN KEY (`id__Log`) REFERENCES `log` (`id_Log`),
  ADD CONSTRAINT `FK_se_connecter_id_standardiste` FOREIGN KEY (`id_standardiste`) REFERENCES `standardiste` (`id_standardiste`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
