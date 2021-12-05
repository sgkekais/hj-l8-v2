-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               5.7.33 - MySQL Community Server (GPL)
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für hj
CREATE DATABASE IF NOT EXISTS `hj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `hj`;

-- Exportiere Struktur von Tabelle hj.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.data_rows: ~36 rows (ungefähr)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 5, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
	(23, 5, 'link_title', 'text', 'Link Title', 1, 1, 1, 1, 1, 1, '{}', 2),
	(24, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
	(25, 5, 'title_short', 'text', 'Title Short', 0, 1, 1, 1, 1, 1, '{}', 4),
	(26, 5, 'title_long', 'text', 'Title Long', 0, 1, 1, 1, 1, 1, '{}', 5),
	(27, 5, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 6),
	(28, 5, 'work_type', 'select_dropdown', 'Work Type', 1, 1, 1, 1, 1, 1, '{"default":"images","options":{"images":"images","video":"video"}}', 7),
	(29, 5, 'materials_used', 'text', 'Materials Used', 0, 1, 1, 1, 1, 1, '{}', 8),
	(30, 5, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 9),
	(31, 5, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{}', 10),
	(32, 5, 'front_page', 'checkbox', 'Front Page', 1, 1, 1, 1, 1, 1, '{}', 11),
	(33, 5, 'work_images', 'multiple_images', 'Work Images', 0, 1, 1, 1, 1, 1, '{}', 12),
	(34, 5, 'work_video', 'text', 'Work Video', 0, 1, 1, 1, 1, 1, '{}', 13),
	(35, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
	(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 0, 1, '{}', 15);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.data_types: ~4 rows (ungefähr)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(5, 'works', 'works', 'Work', 'Works', NULL, 'App\\Models\\Work', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2021-12-03 14:04:23', '2021-12-03 14:25:16');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.failed_jobs: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.menus: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2021-12-03 13:44:17', '2021-12-03 13:44:17');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.menu_items: ~10 rows (ungefähr)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-12-03 13:44:17', '2021-12-03 13:44:17', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-12-03 13:44:17', '2021-12-03 13:44:17', 'voyager.settings.index', NULL),
	(11, 1, 'Works', '', '_self', NULL, NULL, NULL, 15, '2021-12-03 14:04:23', '2021-12-03 14:04:23', 'voyager.works.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.migrations: ~29 rows (ungefähr)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2021_11_29_214609_static_pages', 1),
	(7, '2021_11_29_214909_works', 1),
	(8, '2021_12_02_203458_create_sessions_table', 1),
	(9, '2016_01_01_000000_add_voyager_user_fields', 2),
	(10, '2016_01_01_000000_create_data_types_table', 2),
	(11, '2016_05_19_173453_create_menu_table', 2),
	(12, '2016_10_21_190000_create_roles_table', 2),
	(13, '2016_10_21_190000_create_settings_table', 2),
	(14, '2016_11_30_135954_create_permission_table', 2),
	(15, '2016_11_30_141208_create_permission_role_table', 2),
	(16, '2016_12_26_201236_data_types__add__server_side', 2),
	(17, '2017_01_13_000000_add_route_to_menu_items_table', 2),
	(18, '2017_01_14_005015_create_translations_table', 2),
	(19, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
	(20, '2017_03_06_000000_add_controller_to_data_types_table', 2),
	(21, '2017_04_21_000000_add_order_to_data_rows_table', 2),
	(22, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
	(23, '2017_08_05_000000_add_group_to_settings_table', 2),
	(24, '2017_11_26_013050_add_user_role_relationship', 2),
	(25, '2017_11_26_015000_create_user_roles_table', 2),
	(26, '2018_03_11_000000_add_user_settings', 2),
	(27, '2018_03_14_000000_add_details_to_data_types_table', 2),
	(28, '2018_03_16_000000_make_settings_value_nullable', 2),
	(29, '2020_11_26_000000_create_spammers_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.password_resets: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.permissions: ~30 rows (ungefähr)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(2, 'browse_bread', NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(3, 'browse_database', NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(4, 'browse_media', NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(5, 'browse_compass', NULL, '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(6, 'browse_menus', 'menus', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(7, 'read_menus', 'menus', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(8, 'edit_menus', 'menus', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(9, 'add_menus', 'menus', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(10, 'delete_menus', 'menus', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(11, 'browse_roles', 'roles', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(12, 'read_roles', 'roles', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(13, 'edit_roles', 'roles', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(14, 'add_roles', 'roles', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(15, 'delete_roles', 'roles', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(16, 'browse_users', 'users', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(17, 'read_users', 'users', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(18, 'edit_users', 'users', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(19, 'add_users', 'users', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(20, 'delete_users', 'users', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(21, 'browse_settings', 'settings', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(22, 'read_settings', 'settings', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(23, 'edit_settings', 'settings', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(24, 'add_settings', 'settings', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(25, 'delete_settings', 'settings', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(26, 'browse_works', 'works', '2021-12-03 14:04:23', '2021-12-03 14:04:23'),
	(27, 'read_works', 'works', '2021-12-03 14:04:23', '2021-12-03 14:04:23'),
	(28, 'edit_works', 'works', '2021-12-03 14:04:23', '2021-12-03 14:04:23'),
	(29, 'add_works', 'works', '2021-12-03 14:04:23', '2021-12-03 14:04:23'),
	(30, 'delete_works', 'works', '2021-12-03 14:04:23', '2021-12-03 14:04:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.permission_role: ~30 rows (ungefähr)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.personal_access_tokens: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.roles: ~2 rows (ungefähr)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2021-12-03 13:44:17', '2021-12-03 13:44:17'),
	(2, 'user', 'Normal User', '2021-12-03 13:44:17', '2021-12-03 13:44:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.sessions: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('XV0ZCAe5RMLCTIaJLoX8H7TUmK652qLa4tr44hrb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.43', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamVJQmpOc3FoVnJKWTdCd254U2VMWWI5MkpFbTJXVkszblRyb2RTVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9oai1sOC12Mi50ZXN0L2NvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1638724334);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.settings: ~10 rows (ungefähr)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.spammers
CREATE TABLE IF NOT EXISTS `spammers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` int(11) NOT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.spammers: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `spammers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spammers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.static_pages
CREATE TABLE IF NOT EXISTS `static_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_short` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.static_pages: ~2 rows (ungefähr)
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
INSERT INTO `static_pages` (`id`, `title_short`, `title_long`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'VITA', 'VITA', '<div class="text-muted">\r\n<p>Born in Seoul, South Korea</p>\r\n<p>Based in D&uuml;sseldorf, Germany</p>\r\n<h3>Education</h3>\r\n<p>2018</p>\r\n<p>Master-class student ("Meistersch&uuml;lerin") of Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2018-2012</p>\r\n<p>Liberal arts ("Freie Kunst"), Class Prof. Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2011-2010</p>\r\n<p>Internship, The Great Photostudio, Seoul, South Korea</p>\r\n<p>2008-2005</p>\r\n<p>Art Photography, Kaywon University of Art&amp;Design, Gyeonggi, South Korea</p>\r\n<h3>Exhibitions</h3>\r\n<p>2020</p>\r\n<p>&ldquo;Le Grand 2&rdquo;, G&auml;stezimmer, Kunstmuseum Gelsenkirchen, Gelsenkirchen, Deutschland</p>\r\n<p>2019</p>\r\n<p>&ldquo;Luft&rdquo;, kabawil e.V., D&uuml;sseldorf, Deutschland</p>\r\n<p>&ldquo;Vernetzt&rdquo;, Chorraum, St. Marien Kirche Eickel, Herne, Deutschland</p>\r\n<p>"Planet 58", K21 Kunstsammlung Nordrhein-Westfalen, D&uuml;sseldorf, Germany</p>\r\n<p>2018</p>\r\n<p>Conclusion Presentation, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>Die Grosse, Museum Kunstpalast D&uuml;sseldorf, Germany</p>\r\n<p>2017</p>\r\n<p>"Journy", KUMA, Gyeonggi, South Korea</p>\r\n<p>2015</p>\r\n<p>"Behind the Curtain", Gallery Anna Klinkhammer, D&uuml;sseldorf, Germany</p>\r\n<p>2007</p>\r\n<p>"Kaywon Photo wanderer", Gallery Deokwon, Seoul, South Korea</p>\r\n<p>&nbsp;</p>\r\n</div>', '2018-07-24 21:35:00', '2020-03-11 10:53:45'),
	(3, 'ABOUT', 'ABOUT', '<p class="MsoNormal"><span class="text-muted" lang="EN-US" style="line-height: 2em;">My work is based on my own past and I try to materialize my memories. I have always been interested in everyday objects. Rather than trying to create a new object, I want to give, with my own eyes, a third pupil that interprets and provides a new look and expression of existing objects, figures, and spaces. It is the point of my work to visualize the invisible thing by pulling out the nature that is inherent to the inanimate object. There is a third pupil for all of us. Though it is not visible.</span></p>', '2019-02-07 14:23:00', '2019-02-09 15:03:45');
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.translations: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.users: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
	(1, 1, 'harry', 'harry.jeon86@gmail.com', 'users/default.png', NULL, '$2y$10$aKEef2RQSf7JqVyv5oCs2OedEpcpZ2GI5TaTPQNaP3EL.MKRql3d6', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 13:45:01', '2021-12-03 13:45:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.user_roles: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle hj.works
CREATE TABLE IF NOT EXISTS `works` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materials_used` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` tinyint(1) NOT NULL DEFAULT '0',
  `work_images` text COLLATE utf8mb4_unicode_ci,
  `work_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `works_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportiere Daten aus Tabelle hj.works: ~8 rows (ungefähr)
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` (`id`, `link_title`, `slug`, `title_short`, `title_long`, `year`, `work_type`, `materials_used`, `description`, `cover_image`, `front_page`, `work_images`, `work_video`, `created_at`, `updated_at`) VALUES
	(2, '2017 / 2018', '2017-2018', '2017 / 2018', '2017 / 2018', '2018', 'images', 'polyester resin', NULL, 'works\\December2021\\N5JIVl027LHU3jFoaW8E.jpg', 0, '["works\\\\December2021\\\\kLbuavimCa6w80iXFSNK.jpg","works\\\\December2021\\\\sNsX3mH4RS7tmIc0Zrec.jpg","works\\\\December2021\\\\2ieV9zuXqF36SZQGlATQ.jpg","works\\\\December2021\\\\jCy81AAwRg5NaY9jj1Hl.jpg","works\\\\December2021\\\\DwPKUzcYkbTuQL503YTa.jpg","works\\\\December2021\\\\FieQh5U9kLSLly6DUzoz.jpg","works\\\\December2021\\\\fJlO2DIXztJb37Aur88s.jpg","works\\\\December2021\\\\tgz0UIH8eEtw8vSebJTV.jpg","works\\\\December2021\\\\hqOyS68UZoDNgGXt3MwP.jpg","works\\\\December2021\\\\Pck2gsSlTGTfgc9sOet3.jpg","works\\\\December2021\\\\WStqb8dEvriBubgKZo2X.jpg","works\\\\December2021\\\\nTOASumQ515zbmTS77Ej.jpg","works\\\\December2021\\\\C9n0RBbghNBC4daD8imD.jpg"]', NULL, '2019-02-07 14:11:00', '2021-12-04 13:45:15'),
	(3, 'LE GRAND', 'le-grand-2018', 'LE GRAND', 'LE GRAND', '2018', 'video', 'various - installation, video & livestream', 'two part video installation in public space, shown at Die Grosse - Museum Kunstpalast Düsseldorf', 'works\\December2021\\RQsnQO1A7tfyBB4eIaMh.jpg', 0, NULL, 'https://player.vimeo.com/video/316267772, https://player.vimeo.com/video/316586394', '2019-02-09 14:26:00', '2021-12-04 10:01:00'),
	(5, 'deflower', 'deflower', 'deflower', 'deflower', '2015', 'video', 'video', NULL, NULL, 0, NULL, 'https://player.vimeo.com/video/327604511', '2019-07-31 00:32:00', '2021-12-04 10:07:48'),
	(6, 'instinctively', 'instinctively', 'instinctively', 'instinctively', '2013', 'video', 'video', NULL, NULL, 0, NULL, 'https://player.vimeo.com/video/79070417', '2019-07-31 00:45:44', '2019-07-31 00:45:44'),
	(7, 'fake it', 'fake-it', 'fake it', 'fake it', '2013', 'images', 'foto', NULL, NULL, 0, '["works\\\\December2021\\\\yMAPd4ILBV1V0HW2CVcK.jpg","works\\\\December2021\\\\A5jG3t808WwgvanY0cX9.JPG","works\\\\December2021\\\\mfoedM9T92dweVgCho7k.jpg","works\\\\December2021\\\\sz2Obr0UX6hLvj0l7lYb.JPG"]', NULL, '2019-08-25 20:44:00', '2020-03-11 11:44:00'),
	(8, 'LE GRAND 2', 'le-grand-2-2020', 'LE GRAND 2', 'LE GRAND 2', '2020', 'images', 'various - installation, video & livestream', 'video installation in public space, shown in Gästezimmer no 7 - Kunstmuseum Gelsenkirchen', 'works\\December2021\\EQzMLym4lCicE78GJ2my.jpg', 0, '["works\\\\December2021\\\\hSBy74mLcaXxvYDtNqXE.jpg","works\\\\December2021\\\\lXjDVhnRjdQLY0RPoy0e.jpg","works\\\\December2021\\\\1VZ7yLO4B6rHVxJCdz87.jpg","works\\\\December2021\\\\RbMe1xHNc9JIrb3Ito0Q.jpg","works\\\\December2021\\\\sd4pGI78codEjfbDAbvt.jpg"]', NULL, '2020-03-11 11:42:00', '2021-12-04 11:56:36'),
	(9, 'AU MAGASIN DE NOUV', 'au-magasin-de-nouv', 'AU MAGASIN DE NOUV', 'AU MAGASIN DE NOUV', '2021', 'images', 'glas, photo on acrylic glas, photo', NULL, 'works\\December2021\\mZebpBbSe24U4ycSG84p.png', 1, '["works\\\\December2021\\\\PXI7X1Vgs0udcmDWr3W4.jpg","works\\\\December2021\\\\NlM0l535uIdK8DwRUgoo.png","works\\\\December2021\\\\ZN7yBwr2xsRZCStxP4vu.png"]', NULL, '2021-09-14 21:51:00', '2021-12-03 14:09:00'),
	(12, 'Airmail', 'airmail', 'Airmail', 'Airmail', '2019', 'images', 'pvc, wood', NULL, 'works\\December2021\\cfjv5GGXxJhZE8KFRJ59.png', 0, '["works\\\\December2021\\\\aDBbm4PSAtuRTFtF95tQ.png","works\\\\December2021\\\\lN14kvjcKRIdBSXhERAx.png","works\\\\December2021\\\\weO6Owzd4hNC353VX0Py.png","works\\\\December2021\\\\AMaS3XxaMQoSobyGRHJJ.png"]', NULL, '2021-12-04 13:43:54', '2021-12-04 13:43:54');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
