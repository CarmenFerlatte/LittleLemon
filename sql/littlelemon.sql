-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 02 mars 2025 à 05:40
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `littlelemon`
--

-- --------------------------------------------------------

--
-- Structure de la table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('626018bd943a572e7492f4c5951ad2e478dd8ee7', '2025-02-28 18:40:01.791390', 1);

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add menu', 8, 'add_menu'),
(30, 'Can change menu', 8, 'change_menu'),
(31, 'Can delete menu', 8, 'delete_menu'),
(32, 'Can view menu', 8, 'view_menu'),
(33, 'Can add menu item', 9, 'add_menuitem'),
(34, 'Can change menu item', 9, 'change_menuitem'),
(35, 'Can delete menu item', 9, 'delete_menuitem'),
(36, 'Can view menu item', 9, 'view_menuitem'),
(37, 'Can add Token', 10, 'add_token'),
(38, 'Can change Token', 10, 'change_token'),
(39, 'Can delete Token', 10, 'delete_token'),
(40, 'Can view Token', 10, 'view_token'),
(41, 'Can add Token', 11, 'add_tokenproxy'),
(42, 'Can change Token', 11, 'change_tokenproxy'),
(43, 'Can delete Token', 11, 'delete_tokenproxy'),
(44, 'Can view Token', 11, 'view_tokenproxy');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$Fqac14MqYWBFh3yVFPyBD4$sJTqgfQ0+Tgv3ojhPj1IYvaxufhwhQpP6rpNWhYOCzE=', '2025-03-02 05:26:02.581260', 1, 'Admin', '', '', 'carmenferlatte@hotmail.com', 1, 1, '2025-02-27 03:06:27.356529');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-02-28 18:40:01.792652', '1', '626018bd943a572e7492f4c5951ad2e478dd8ee7', 1, '[{\"added\": {}}]', 11, 1),
(2, '2025-03-01 20:32:20.235066', '1', 'Pizza aux fruits de mer - 35.00', 1, '[{\"added\": {}}]', 8, 1),
(3, '2025-03-02 02:34:29.006564', '2', 'Kim Smith', 1, '[{\"added\": {}}]', 7, 1),
(4, '2025-03-02 02:36:12.038987', '2', 'Pastas', 1, '[{\"added\": {}}]', 8, 1),
(5, '2025-03-02 02:36:36.632293', '3', 'Salad', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'authtoken', 'token'),
(11, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(7, 'restaurant', 'booking'),
(8, 'restaurant', 'menu'),
(9, 'restaurant', 'menuitem'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-24 21:00:34.212201'),
(2, 'auth', '0001_initial', '2025-02-24 21:00:34.503849'),
(3, 'admin', '0001_initial', '2025-02-24 21:00:34.564583'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-24 21:00:34.568545'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-24 21:00:34.574092'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-24 21:00:34.639101'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-24 21:00:34.682823'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-24 21:00:34.714141'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-24 21:00:34.719636'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-24 21:00:34.769381'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-24 21:00:34.771561'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-24 21:00:34.775882'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-24 21:00:34.831679'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-24 21:00:34.888185'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-24 21:00:34.910816'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-24 21:00:34.916233'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-24 21:00:34.958594'),
(18, 'sessions', '0001_initial', '2025-02-24 21:00:34.981083'),
(19, 'restaurant', '0001_initial', '2025-02-25 01:44:54.115510'),
(20, 'restaurant', '0002_menuitem', '2025-02-27 02:48:31.240314'),
(21, 'authtoken', '0001_initial', '2025-02-28 18:09:29.656172'),
(22, 'authtoken', '0002_auto_20160226_1747', '2025-02-28 18:09:29.677892'),
(23, 'authtoken', '0003_tokenproxy', '2025-02-28 18:09:29.680926'),
(24, 'authtoken', '0004_alter_tokenproxy_options', '2025-02-28 18:09:29.682979');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4xqf9gclx064fn9225ng5rcfnx5on98f', '.eJxVjDsOwjAQBe_iGln-yD9Kes5g7WbXOIBsKU4qxN0hUgpo38y8l8iwrTVvg5c8kzgLLU6_G8L04LYDukO7dTn1ti4zyl2RBx3y2omfl8P9O6gw6rdOITkfPNhQCisKTlEszhrggobBK_BWp2iMNUZBRGSNSUdSCkIMROL9AdaMN6M:1toSvT:SCRviw1uJSq1jdNBI7u3ibeonogeQBdoJQZBWqblQ2o', '2025-03-15 19:55:07.139315'),
('izryy1us3clu5bvh97olswoptbnsqh6k', '.eJxVjDsOwjAQBe_iGln-yD9Kes5g7WbXOIBsKU4qxN0hUgpo38y8l8iwrTVvg5c8kzgLLU6_G8L04LYDukO7dTn1ti4zyl2RBx3y2omfl8P9O6gw6rdOITkfPNhQCisKTlEszhrggobBK_BWp2iMNUZBRGSNSUdSCkIMROL9AdaMN6M:1tobpy:HfQJm_JE6lPMcCUPT0XIF4iJ1ZYaFc9oXSK9OUhjcvw', '2025-03-16 05:26:02.583780'),
('x4atnj5uuqc4k8w0k3xwkvmf9cmadxbg', '.eJxVjDsOwjAQBe_iGln-yD9Kes5g7WbXOIBsKU4qxN0hUgpo38y8l8iwrTVvg5c8kzgLLU6_G8L04LYDukO7dTn1ti4zyl2RBx3y2omfl8P9O6gw6rdOITkfPNhQCisKTlEszhrggobBK_BWp2iMNUZBRGSNSUdSCkIMROL9AdaMN6M:1tnUao:a_NPCpTFYi_WXT6AEz70HcTnzU4V4RkmhpNPXEj-AHk', '2025-03-13 03:29:46.216793');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_booking`
--

CREATE TABLE `restaurant_booking` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `no_of_guests` int NOT NULL,
  `BookingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurant_booking`
--

INSERT INTO `restaurant_booking` (`id`, `name`, `no_of_guests`, `BookingDate`) VALUES
(1, 'Carmen', 4, '2025-03-06'),
(2, 'Kim Smith', 6, '2025-03-28');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_menu`
--

CREATE TABLE `restaurant_menu` (
  `id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `inventory` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurant_menu`
--

INSERT INTO `restaurant_menu` (`id`, `title`, `inventory`) VALUES
(1, 'Pizzas', 100),
(2, 'Pastas', 300),
(3, 'Salad', 300);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_menuitem`
--

CREATE TABLE `restaurant_menuitem` (
  `id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `price_item` decimal(6,2) DEFAULT NULL,
  `menu_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `restaurant_menuitem`
--

INSERT INTO `restaurant_menuitem` (`id`, `name`, `description`, `price_item`, `menu_id`) VALUES
(1, 'Pizza aux fruits de mer 12\"', 'Crevettes nordiques, crème fraîches. oignons et épices.', 35.00, 1),
(2, 'Pizza aux fruits de mer 12\"', 'Crevettes nordiques, crème fraîches. oignons et épices.', 35.00, 1),
(3, 'Pizza végétarienne 12\"', 'Brocoli, piment vert, piment rouge, oignons, fromage', 25.00, 1),
(4, 'Pizza végétarienne 12\"', 'Brocoli, piment vert, piment rouge, oignons, fromage', 25.00, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `restaurant_booking`
--
ALTER TABLE `restaurant_booking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant_menuitem`
--
ALTER TABLE `restaurant_menuitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_menuitem_menu_id_94bfdfc4_fk_restaurant_menu_id` (`menu_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `restaurant_booking`
--
ALTER TABLE `restaurant_booking`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `restaurant_menu`
--
ALTER TABLE `restaurant_menu`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `restaurant_menuitem`
--
ALTER TABLE `restaurant_menuitem`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `restaurant_menuitem`
--
ALTER TABLE `restaurant_menuitem`
  ADD CONSTRAINT `restaurant_menuitem_menu_id_94bfdfc4_fk_restaurant_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `restaurant_menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
