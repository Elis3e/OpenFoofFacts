--
-- Structure de la table `OFF_contributeur`
--

DROP TABLE IF EXISTS `OFF_contributeur`;
CREATE TABLE `OFF_contributeur` (
  `num_seq_contributeur` int NOT NULL,
  `pseudo` varchar(256) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `OFF_date`
--

DROP TABLE IF EXISTS `OFF_date`;
CREATE TABLE `OFF_date` (
  `num_seq_date` int NOT NULL,
  `jour` int DEFAULT NULL,
  `mois` int DEFAULT NULL,
  `annee` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `OFF_faits_produit`
--

DROP TABLE IF EXISTS `OFF_faits_produit`;
CREATE TABLE `OFF_faits_produit` (
  `num_seq_date_creation` int NOT NULL,
  `num_seq_pnns` int DEFAULT NULL,
  `num_seq_contributeur` int DEFAULT NULL,
  `nb_versions` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `OFF_faits_version_produit`
--

DROP TABLE IF EXISTS `OFF_faits_version_produit`;
CREATE TABLE `OFF_faits_version_produit` (
  `num_seq_date_version` int NOT NULL,
  `num_seq_nutriscore` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `OFF_nutriscore`
--

DROP TABLE IF EXISTS `OFF_nutriscore`;
CREATE TABLE `OFF_nutriscore` (
  `num_seq_nutriscore` int NOT NULL,
  `nutriscore_lettre` char(20) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Structure de la table `OFF_pnns`
--

DROP TABLE IF EXISTS `OFF_pnns`;
CREATE TABLE `OFF_pnns` (
  `num_seq_pnns` int NOT NULL,
  `pnns1` varchar(256) DEFAULT NULL,
  `pnns2` varchar(256) DEFAULT NULL
);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `OFF_contributeur`
--
ALTER TABLE `OFF_contributeur`
  ADD PRIMARY KEY (`num_seq_contributeur`);

--
-- Index pour la table `OFF_date`
--
ALTER TABLE `OFF_date`
  ADD PRIMARY KEY (`num_seq_date`);

--
-- Index pour la table `OFF_faits_produit`
--
ALTER TABLE `OFF_faits_produit`
  ADD KEY `num_seq_date_creation` (`num_seq_date_creation`),
  ADD KEY `num_seq_contributeur` (`num_seq_contributeur`),
  ADD KEY `num_seq_pnns` (`num_seq_pnns`);

--
-- Index pour la table `OFF_faits_version_produit`
--
ALTER TABLE `OFF_faits_version_produit`
  ADD KEY `num_seq_date_version` (`num_seq_date_version`),
  ADD KEY `num_seq_nutriscore` (`num_seq_nutriscore`);

--
-- Index pour la table `OFF_nutriscore`
--
ALTER TABLE `OFF_nutriscore`
  ADD PRIMARY KEY (`num_seq_nutriscore`);

--
-- Index pour la table `OFF_pnns`
--
ALTER TABLE `OFF_pnns`
  ADD PRIMARY KEY (`num_seq_pnns`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `OFF_contributeur`
--
ALTER TABLE `OFF_contributeur`
  MODIFY `num_seq_contributeur` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `OFF_date`
--
ALTER TABLE `OFF_date`
  MODIFY `num_seq_date` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `OFF_nutriscore`
--
ALTER TABLE `OFF_nutriscore`
  MODIFY `num_seq_nutriscore` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `OFF_pnns`
--
ALTER TABLE `OFF_pnns`
  MODIFY `num_seq_pnns` int NOT NULL AUTO_INCREMENT;
