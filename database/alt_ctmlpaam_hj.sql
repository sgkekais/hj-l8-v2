-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 62.108.32.152:3306
-- Erstellungszeit: 05. Dez 2021 um 18:19
-- Server-Version: 5.7.36
-- PHP-Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ctmlpaam_hj`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '\"\"', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '\"\"', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '\"\"', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '\"\"', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '\"\"', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '\"{\\\"model\\\":\\\"TCG\\\\\\\\Voyager\\\\\\\\Models\\\\\\\\Role\\\",\\\"table\\\":\\\"roles\\\",\\\"type\\\":\\\"belongsTo\\\",\\\"column\\\":\\\"role_id\\\",\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"display_name\\\",\\\"pivot_table\\\":\\\"roles\\\",\\\"pivot\\\":\\\"0\\\"}\"', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '\"{\\\"model\\\":\\\"TCG\\\\\\\\Voyager\\\\\\\\Models\\\\\\\\Role\\\",\\\"table\\\":\\\"roles\\\",\\\"type\\\":\\\"belongsToMany\\\",\\\"column\\\":\\\"id\\\",\\\"key\\\":\\\"id\\\",\\\"label\\\":\\\"display_name\\\",\\\"pivot_table\\\":\\\"user_roles\\\",\\\"pivot\\\":\\\"1\\\",\\\"taggable\\\":\\\"0\\\"}\"', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '\"\"', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '\"\"', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '\"\"', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '\"\"', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '\"\"', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '\"\"', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '\"\"', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '\"\"', 9),
(57, 9, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 9, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(59, 9, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(60, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(61, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(62, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(63, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(83, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 12, 'title_short', 'text', 'Title Short', 1, 1, 1, 1, 1, 1, '{}', 2),
(85, 12, 'title_long', 'text', 'Title Long', 1, 1, 1, 1, 1, 1, '{}', 3),
(86, 12, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, '{}', 4),
(87, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(88, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(91, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 13, 'link_title', 'text', 'Link Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(93, 13, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(94, 13, 'title_short', 'text', 'Title Short', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 13, 'title_long', 'text', 'Title Long', 0, 1, 1, 1, 1, 1, '{}', 5),
(96, 13, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 6),
(97, 13, 'work_type', 'select_dropdown', 'Work Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"images\",\"options\":{\"images\":\"Images\",\"video\":\"Video\"}}', 7),
(98, 13, 'materials_used', 'text', 'Materials Used', 0, 1, 1, 1, 1, 1, '{}', 8),
(99, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 9),
(100, 13, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{\"thumbnails\":[{\"name\":\"small\",\"scale\":\"50%\"}]}', 10),
(101, 13, 'front_page', 'checkbox', 'Front Page', 1, 1, 1, 1, 1, 1, '{}', 11),
(102, 13, 'work_images', 'media_picker', 'Work Images', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":100,\"thumbnails\":[{\"type\":\"resize\",\"name\":\"small\",\"width\":500,\"height\":null}]}', 12),
(103, 13, 'work_video', 'text', 'Work Video', 0, 1, 1, 1, 1, 1, '{}', 13),
(104, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(105, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(9, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(12, 'static_pages', 'static-pages', 'Static Page', 'Static Pages', 'voyager-documentation', 'App\\StaticPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-07 12:41:25', '2019-02-07 13:14:43'),
(13, 'works', 'works', 'Work', 'Works', 'voyager-images', 'App\\Work', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-30 22:07:22', '2019-08-25 19:23:52');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-03 17:59:36', '2019-02-03 17:59:36');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-02-03 17:59:36', '2019-02-03 17:59:36', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-02-03 17:59:36', '2019-07-30 22:47:33', 'voyager.media.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2019-02-03 17:59:36', '2019-07-30 22:47:33', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2019-02-03 17:59:36', '2019-02-07 12:41:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-02-03 17:59:36', '2019-02-07 12:36:59', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-02-03 17:59:36', '2019-02-07 12:36:59', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-02-03 17:59:36', '2019-02-07 12:36:59', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-02-03 17:59:36', '2019-02-07 12:36:59', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2019-02-03 17:59:36', '2019-02-07 12:41:39', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-02-03 17:59:36', '2019-02-07 12:36:59', 'voyager.hooks', NULL),
(19, 1, 'Static Pages', '', '_self', 'voyager-documentation', NULL, NULL, 2, '2019-02-07 12:41:25', '2019-07-30 22:47:33', 'voyager.static-pages.index', NULL),
(20, 1, 'Works', '', '_self', NULL, NULL, NULL, 3, '2019-07-30 22:07:22', '2019-07-30 22:47:33', 'voyager.works.index', NULL),
(21, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-08-10 07:39:47', '2019-08-10 07:39:47', 'voyager.users.index', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2018_07_24_201404_create_static_pages_table', 1),
(24, '2018_07_24_201520_create_works_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2019_02_09_143654_add_video_columns_to_works_table', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(2, 'browse_bread', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(3, 'browse_database', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(4, 'browse_media', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(5, 'browse_compass', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(6, 'browse_menus', 'menus', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(7, 'read_menus', 'menus', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(8, 'edit_menus', 'menus', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(9, 'add_menus', 'menus', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(10, 'delete_menus', 'menus', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(11, 'browse_roles', 'roles', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(12, 'read_roles', 'roles', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(13, 'edit_roles', 'roles', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(14, 'add_roles', 'roles', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(15, 'delete_roles', 'roles', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(16, 'browse_users', 'users', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(17, 'read_users', 'users', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(18, 'edit_users', 'users', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(19, 'add_users', 'users', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(20, 'delete_users', 'users', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(21, 'browse_settings', 'settings', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(22, 'read_settings', 'settings', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(23, 'edit_settings', 'settings', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(24, 'add_settings', 'settings', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(25, 'delete_settings', 'settings', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(26, 'browse_hooks', NULL, '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(42, 'browse_categories', 'categories', '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(43, 'read_categories', 'categories', '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(44, 'edit_categories', 'categories', '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(45, 'add_categories', 'categories', '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(46, 'delete_categories', 'categories', '2019-02-07 12:31:05', '2019-02-07 12:31:05'),
(57, 'browse_static_pages', 'static_pages', '2019-02-07 12:41:25', '2019-02-07 12:41:25'),
(58, 'read_static_pages', 'static_pages', '2019-02-07 12:41:25', '2019-02-07 12:41:25'),
(59, 'edit_static_pages', 'static_pages', '2019-02-07 12:41:25', '2019-02-07 12:41:25'),
(60, 'add_static_pages', 'static_pages', '2019-02-07 12:41:25', '2019-02-07 12:41:25'),
(61, 'delete_static_pages', 'static_pages', '2019-02-07 12:41:25', '2019-02-07 12:41:25'),
(62, 'browse_works', 'works', '2019-07-30 22:07:22', '2019-07-30 22:07:22'),
(63, 'read_works', 'works', '2019-07-30 22:07:22', '2019-07-30 22:07:22'),
(64, 'edit_works', 'works', '2019-07-30 22:07:22', '2019-07-30 22:07:22'),
(65, 'add_works', 'works', '2019-07-30 22:07:22', '2019-07-30 22:07:22'),
(66, 'delete_works', 'works', '2019-07-30 22:07:22', '2019-07-30 22:07:22');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `permission_role`
--

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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-03 17:59:36', '2019-02-03 17:59:36'),
(2, 'user', 'Normal User', '2019-02-03 17:59:36', '2019-02-03 17:59:36');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Harry Jeon', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `static_pages`
--

CREATE TABLE `static_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_short` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_long` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `static_pages`
--

INSERT INTO `static_pages` (`id`, `title_short`, `title_long`, `body`, `created_at`, `updated_at`) VALUES
(1, 'VITA', 'VITA', '<div class=\"text-muted\">\r\n<p>Born in Seoul, South Korea</p>\r\n<p>Based in D&uuml;sseldorf, Germany</p>\r\n<h3>Education</h3>\r\n<p>2018</p>\r\n<p>Master-class student (\"Meistersch&uuml;lerin\") of Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2018-2012</p>\r\n<p>Liberal arts (\"Freie Kunst\"), Class Prof. Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2011-2010</p>\r\n<p>Internship, The Great Photostudio, Seoul, South Korea</p>\r\n<p>2008-2005</p>\r\n<p>Art Photography, Kaywon University of Art&amp;Design, Gyeonggi, South Korea</p>\r\n<h3>Exhibitions</h3>\r\n<p>2020</p>\r\n<p>&ldquo;Le Grand 2&rdquo;, G&auml;stezimmer, Kunstmuseum Gelsenkirchen, Gelsenkirchen, Deutschland</p>\r\n<p>2019</p>\r\n<p>&ldquo;Luft&rdquo;, kabawil e.V., D&uuml;sseldorf, Deutschland</p>\r\n<p>&ldquo;Vernetzt&rdquo;, Chorraum, St. Marien Kirche Eickel, Herne, Deutschland</p>\r\n<p>\"Planet 58\", K21 Kunstsammlung Nordrhein-Westfalen, D&uuml;sseldorf, Germany</p>\r\n<p>2018</p>\r\n<p>Conclusion Presentation, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>Die Grosse, Museum Kunstpalast D&uuml;sseldorf, Germany</p>\r\n<p>2017</p>\r\n<p>\"Journy\", KUMA, Gyeonggi, South Korea</p>\r\n<p>2015</p>\r\n<p>\"Behind the Curtain\", Gallery Anna Klinkhammer, D&uuml;sseldorf, Germany</p>\r\n<p>2007</p>\r\n<p>\"Kaywon Photo wanderer\", Gallery Deokwon, Seoul, South Korea</p>\r\n<p>&nbsp;</p>\r\n</div>', '2018-07-24 19:35:00', '2020-03-11 09:53:45'),
(3, 'ABOUT', 'ABOUT', '<p class=\"MsoNormal\"><span class=\"text-muted\" lang=\"EN-US\" style=\"line-height: 2em;\">My work is based on my own past and I try to materialize my memories. I have always been interested in everyday objects. Rather than trying to create a new object, I want to give, with my own eyes, a third pupil that interprets and provides a new look and expression of existing objects, figures, and spaces. It is the point of my work to visualize the invisible thing by pulling out the nature that is inherent to the inanimate object. There is a third pupil for all of us. Though it is not visible.</span></p>', '2019-02-07 13:23:00', '2019-02-09 14:03:45');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 7, 'pt', 'Post', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(2, 'data_types', 'display_name_singular', 8, 'pt', 'Página', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(4, 'data_types', 'display_name_singular', 6, 'pt', 'Categoria', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(7, 'data_types', 'display_name_plural', 7, 'pt', 'Posts', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(8, 'data_types', 'display_name_plural', 8, 'pt', 'Páginas', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(10, 'data_types', 'display_name_plural', 6, 'pt', 'Categorias', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-02-07 12:16:32', '2019-02-07 12:16:32'),
(34, 'data_types', 'display_name_singular', 12, 'en', 'Static Page', '2019-02-07 13:14:44', '2019-02-07 13:14:44'),
(35, 'data_types', 'display_name_plural', 12, 'en', 'Static Pages', '2019-02-07 13:14:44', '2019-02-07 13:14:44'),
(36, 'data_types', 'display_name_singular', 13, 'en', 'Work', '2019-07-30 22:12:44', '2019-07-30 22:12:44'),
(37, 'data_types', 'display_name_plural', 13, 'en', 'Works', '2019-07-30 22:12:44', '2019-07-30 22:12:44');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(3, 1, 'harryj', 'harry.jeon86@gmail.com', 'users/default.png', '$2y$10$me49arLslHBkeT2H8LgGdOeplYnRJPUE1YYBw.avw7jp5MbFZ15M6', NULL, NULL, '2019-08-10 07:48:26', '2019-08-10 07:48:26');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `link_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_short` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materials_used` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` tinyint(1) NOT NULL DEFAULT '0',
  `work_images` text COLLATE utf8mb4_unicode_ci,
  `work_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `works`
--

INSERT INTO `works` (`id`, `link_title`, `slug`, `title_short`, `title_long`, `year`, `work_type`, `materials_used`, `description`, `cover_image`, `front_page`, `work_images`, `work_video`, `created_at`, `updated_at`) VALUES
(2, '2017 / 2018', '2017-2018', '2017 / 2018', '2017 / 2018', '2018', 'images', 'polyester resin', NULL, 'works/February2019/x87LpdkGvl2hShekE5jr.jpg', 0, '[\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_01.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_02.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_03.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_04.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_05.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_06.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_07.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_08.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_09.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_10.jpg\"]', NULL, '2019-02-07 13:11:00', '2021-11-29 18:59:06'),
(3, 'LE GRAND', 'le-grand-2018', 'LE GRAND', 'LE GRAND', '2018', 'video', 'video', NULL, 'works/February2019/l4nLmcsB7wGdc3FYe9TC.jpg', 0, NULL, 'https://player.vimeo.com/video/316267772, https://player.vimeo.com/video/316586394', '2019-02-09 13:26:00', '2019-08-25 18:40:44'),
(5, 'deflower', 'deflower', 'deflower', 'deflower', '2015', 'video', 'video', NULL, 'works/July2019/MilrG5W4cYDv7kepH5Pj.jpg', 0, NULL, 'https://player.vimeo.com/video/327604511', '2019-07-30 22:32:00', '2019-07-30 22:36:30'),
(6, 'instinctively', 'instinctively', 'instinctively', 'instinctively', '2013', 'video', 'video', NULL, NULL, 0, NULL, 'https://player.vimeo.com/video/79070417', '2019-07-30 22:45:44', '2019-07-30 22:45:44'),
(7, 'fake it', 'fake-it', 'fake it', 'fake it', '2013', 'images', 'foto', NULL, NULL, 0, '[\"works/August2019/0pC3duTzqtIJ12XgMbdV.JPG\",\"works/August2019/ED2dvXlpmVIDzLKZjaKo.jpg\",\"works/August2019/ih38iGGvq0onVbsnBagc.JPG\",\"works/August2019/SNHG9hVU6JZ6M41GEl85.jpg\"]', NULL, '2019-08-25 18:44:00', '2020-03-11 10:44:30'),
(8, 'LE GRAND 2', 'le-grand-2-2020', 'LE GRAND 2', 'LE GRAND 2', '2020', 'images', 'various, installation & video', NULL, NULL, 0, '[\"works/le-grand-2/IMG_5453 복사본_1.jpg\",\"works/le-grand-2/IMG_5401 복사본_1.jpg\",\"works/le-grand-2/IMG_5435 복사본_1.jpg\",\"works/le-grand-2/IMG_5374 복사본_1.jpg\",\"works/le-grand-2/IMG_5381 복사본_1.jpg\",\"works/le-grand-2/IMG_5444 복사본_1.jpg\"]', NULL, '2020-03-11 10:42:00', '2020-03-11 10:44:14'),
(9, 'AU MAGASIN DE NOUV', 'au-magasin-de-nouv', 'AU MAGASIN DE NOUV', 'AU MAGASIN DE NOUV', '2021', 'images', 'glas, photo on acrylic glas, photo', NULL, 'works/November2021/PpmAwfAOt8VBnpl4OdnL.jpg', 1, '[\"works/au-magasin-de-nouv/0.jpg\",\"works/au-magasin-de-nouv/1.jpg\",\"works/au-magasin-de-nouv/2.jpg\",\"works/au-magasin-de-nouv/3.jpg\",\"works/au-magasin-de-nouv/4.jpg\",\"works/au-magasin-de-nouv/5.jpg\"]', NULL, '2021-09-14 19:51:00', '2021-11-29 19:22:02');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indizes für die Tabelle `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indizes für die Tabelle `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indizes für die Tabelle `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indizes für die Tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indizes für die Tabelle `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indizes für die Tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indizes für die Tabelle `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indizes für die Tabelle `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indizes für die Tabelle `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `works_slug_unique` (`slug`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT für Tabelle `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT für Tabelle `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
