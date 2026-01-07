-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table projet.admins : ~2 rows (environ)
INSERT INTO `admins` (`id_admin`, `email`, `password`) VALUES
	(1, 'admin@gmail.com', '$2y$12$QXHFXRLOGKLFmPmzIbp0f.iOJTVLQWyMrYzqudw11QTgTXYGkcImK'),
	(2, 'prisca@gmail.com', '$2y$12$LZQtQg0KTbufNxplLO95W.JQEmCqVkBp3m7Oq9WPFFIjSY1Mz4CcW');

-- Listage des données de la table projet.carburants : ~6 rows (environ)
INSERT INTO `carburants` (`id_carburant`, `station`, `emplacement`, `produit`, `quantite`, `prix_total`, `date_achat`, `scan_recu`, `vehicule_id`, `created_at`, `updated_at`) VALUES
	(1, 'Shell', 'jhgy', 'gasoil', 14.00, 12000.00, '2025-12-10', '1764788296_AthTFfoh.png', 2, NULL, NULL),
	(2, '1', 'jjjjj', 'gasoil', 15.00, 50000.00, '2025-12-12', '1765513909_yfWZTSf3.png', 2, NULL, NULL),
	(3, 'Jovena', 'jjjjj', 'essence', 12.00, 45000.00, '2025-12-10', '1765514090_WtZM1v4u.png', 2, NULL, NULL),
	(4, 'Jovena', 'jjjjj', 'essence', 12.00, 45000.00, '2025-12-10', '1765514092_rLdpMpbT.png', 2, NULL, NULL),
	(5, 'Galana', 'jjjjj', 'essence', 45.00, 5000.00, '2025-12-13', '1765632741_gUy0KmX3.png', 6, NULL, NULL),
	(6, 'Galana', 'jjjjj', 'essence', 500000.00, 5000.00, '2025-12-13', '1765633028_U0tvbRsw.png', 4, NULL, NULL);

-- Listage des données de la table projet.chauffeurs : ~2 rows (environ)
INSERT INTO `chauffeurs` (`id_chauffeur`, `nom`, `prenom`, `telephone`, `statut`) VALUES
	(1, 'Anjara', 'Perline', '0330568770', 1),
	(2, 'Pierre', 'Tiaro', '0341851873', 1);

-- Listage des données de la table projet.entretiens : ~4 rows (environ)
INSERT INTO `entretiens` (`id_entretien`, `date_entretien`, `description`, `cout`, `garage`, `vehicule_id`, `chauffeur_id`, `created_at`, `updated_at`) VALUES
	(1, '2025-12-04', 'kjyt', 451.00, 'Garage Auto Plus', 2, NULL, '2025-12-03 18:10:15', '2025-12-03 18:10:15'),
	(2, '2025-12-04', 'kjyt', 451.00, 'Garage Auto Plus', 3, NULL, '2025-12-09 11:45:16', '2025-12-09 11:45:16'),
	(3, '2025-12-13', 'kjyt', 451.00, 'Garage Auto Plus', 6, NULL, '2025-12-13 12:17:33', '2025-12-13 12:17:33'),
	(4, '2025-12-20', 'kjyt', 451.00, 'Garage Auto Plus', 5, NULL, '2025-12-13 12:18:12', '2025-12-13 12:18:12');

-- Listage des données de la table projet.failed_jobs : ~0 rows (environ)

-- Listage des données de la table projet.migrations : ~19 rows (environ)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2025_10_21_201434_create-vehicules-table', 1),
	(6, '2025_10_21_203244_create-chauffeurs-table', 1),
	(7, '2025_10_21_205029_create-missions-table', 1),
	(8, '2025_10_21_210856_create-entretiens-table', 1),
	(9, '2025_10_21_212138_create-carburants-table', 1),
	(10, '2025_11_11_161800_add_chauffeur_id_to_entretiens_table', 1),
	(11, '2025_11_12_074919_add_statut_to_missions_table', 1),
	(12, '2025_11_25_140326_add_is_admin_to_users_table', 1),
	(13, '2025_11_25_142610_create_stations_table', 1),
	(14, '2025_11_26_170848_add_autorise_to_vehicules_table', 2),
	(15, '2025_11_26_170858_add_autorise_to_chauffeurs_table', 2),
	(16, '2025_11_04_170933_create__admin_table', 3),
	(17, '2025_11_05_182621_create_utilisateurs_table', 3),
	(18, '2025_12_06_113954_create_stations_table', 4),
	(19, '2025_12_06_151857_add_kilometrage_to_vehicules', 5);

-- Listage des données de la table projet.missions : ~2 rows (environ)
INSERT INTO `missions` (`id_mission`, `objet`, `client`, `lieu_depart`, `lieu_arrivee`, `date_depart`, `date_retour`, `kilometrage`, `remarque`, `vehicule_id`, `chauffeur_id`, `statut`) VALUES
	(4, 'Transfert de personel pour séminaire', 'Mada Tour Agency', 'Antsiranana', 'Fianarantsoa', '2025-12-19', '2025-12-23', 780, 'no comment', 2, 1, 'En cours'),
	(5, 'Transfert de personel pour séminaire', 'Mada Tour Agency', 'Tana', 'Fianarantsoa', '2025-12-13', '2025-12-13', 150, 'teste', 2, 1, 'En cours');

-- Listage des données de la table projet.password_reset_tokens : ~0 rows (environ)

-- Listage des données de la table projet.personal_access_tokens : ~7 rows (environ)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 1, 'admin-token', '38eb03f18ada65b9b343ec457a14077a9ed7f278d98955e1012244a2abc2905e', '["*"]', NULL, NULL, '2025-11-25 14:14:33', '2025-11-25 14:14:33'),
	(2, 'App\\Models\\User', 1, 'admin-token', 'b0b0618f9883b8df2146b8a3e072896983154415d1f2945e75cfd5c5da8bb42f', '["*"]', NULL, NULL, '2025-11-25 14:27:14', '2025-11-25 14:27:14'),
	(3, 'App\\Models\\User', 1, 'adminToken', 'df5d56ac89b0da16e5be65ecad19f99643319b64f6af000175e2fea9e0838d96', '["*"]', NULL, NULL, '2025-11-25 14:48:38', '2025-11-25 14:48:38'),
	(4, 'App\\Models\\User', 1, 'adminToken', 'abe5d5edd2d6d1302bb0582342ab63e05fdcae7363776a70d37be0681a5c877f', '["*"]', NULL, NULL, '2025-11-25 14:48:40', '2025-11-25 14:48:40'),
	(5, 'App\\Models\\User', 1, 'adminToken', '413d781a050f1c6af54b7df3ce2ab8d3a94694ad5f709ccebf336eabb896cd82', '["*"]', NULL, NULL, '2025-11-25 15:44:57', '2025-11-25 15:44:57'),
	(6, 'App\\Models\\User', 1, 'adminToken', 'fe144ce0b98ccfa474d9a6cc4a1ec1e5ed8b737b1dd2878258c9af8757d16fd2', '["*"]', '2025-11-26 14:09:29', NULL, '2025-11-25 15:45:05', '2025-11-26 14:09:29'),
	(18, 'App\\Models\\Admin', 1, 'adminToken', '718e0cd4cedf2cd07240844da44cbba3b940b6786dfb3c646c3361640d52041b', '["*"]', NULL, NULL, '2025-12-13 12:18:51', '2025-12-13 12:18:51');

-- Listage des données de la table projet.stations : ~3 rows (environ)
INSERT INTO `stations` (`id`, `nom`, `created_at`, `updated_at`) VALUES
	(1, 'Galana', '2025-12-06 13:42:29', '2025-12-06 13:42:29'),
	(2, 'Jovena', '2025-12-06 13:42:54', '2025-12-06 13:42:54'),
	(3, 'Shel', '2025-12-12 06:11:35', '2025-12-12 06:18:58');

-- Listage des données de la table projet.users : ~1 rows (environ)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'prisca@gmail.com', NULL, '$2y$12$J3AlUJz7SgWSzfkCdD5lAO0Bu.sJ0eVsptNBvz0X9fxtoFd4w/4mW', 1, NULL, '2025-11-25 13:35:34', '2025-11-25 13:56:04');

-- Listage des données de la table projet.utilisateurs : ~2 rows (environ)
INSERT INTO `utilisateurs` (`id_utilisateur`, `nom_utilisateur`, `email_utilisateur`, `password_utilisateur`) VALUES
	(1, 'Mitia', 'mitia@gmail.com', '$2y$12$ukg2r9fESzvEJJJeOODL4ei0GMoD6XKFnKtBoBZQZpu5JKFLJP3BK'),
	(2, 'Angelynah', 'angelynah@gmail.com', '$2y$12$k4bGEIicJI0E7H6FotQ5UOjuas25zEgMVxl08M5TP34G4MQCwV4iu');

-- Listage des données de la table projet.vehicules : ~7 rows (environ)
INSERT INTO `vehicules` (`id_vehicule`, `immatriculation`, `marque`, `modele`, `annee`, `statut`, `created_at`, `updated_at`, `kilometrage`) VALUES
	(2, '1282FC', 'Toyota', 'Corolla', '2021', 1, NULL, NULL, 0),
	(3, 'kjg', 'hgt', 'mli', '2021', 0, NULL, NULL, 120),
	(4, 'kgffgfjh', 'hgt', 'mli', '2021', 1, NULL, NULL, 120),
	(5, 'kgffgfjhh', 'hgt', 'mli', '2021', 1, NULL, NULL, 148),
	(6, 'kgffgfjhhd', 'hgt', 'mli', '2021', 1, NULL, NULL, 80),
	(7, '124849AZE', 'hgt', 'mli', '2021', 0, NULL, NULL, 120),
	(8, 'kgffgfjhhdz', 'hgt', 'mli', '2021', 0, NULL, NULL, 120);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
