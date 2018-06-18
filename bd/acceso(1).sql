-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-06-2018 a las 17:57:57
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acceso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-05-16 23:06:40', '2018-05-16 23:06:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobranzas`
--

CREATE TABLE `cobranzas` (
  `id` int(10) UNSIGNED NOT NULL,
  `Descripcion` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
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
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'Titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, NULL, 2),
(60, 7, 'Contenido', 'rich_text_box', 'Contenido', 0, 1, 1, 1, 1, 1, NULL, 4),
(61, 7, 'Imagen', 'image', 'Imagen', 0, 1, 0, 1, 1, 1, NULL, 5),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(64, 7, 'noticia_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(65, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 8),
(66, 7, 'Fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{\"format\":\"%d-%m\"}', 3),
(67, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(68, 8, 'Hubometro', 'number', 'Hubometro', 0, 1, 1, 1, 1, 1, NULL, 2),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(70, 9, 'Descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, NULL, 2),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(73, 8, 'Fecha', 'timestamp', 'Fecha', 0, 1, 1, 0, 0, 0, NULL, 3),
(74, 8, 'Almacen', 'text', 'Almacen', 0, 1, 1, 1, 1, 1, NULL, 4),
(75, 8, 'UnidadNegocio', 'checkbox', 'UnidadNegocio', 0, 1, 1, 1, 1, 1, '{\"on\":\"JC\",\"off\":\"Joselito\",\"checked\":true}', 5),
(76, 8, 'Grifo', 'checkbox', 'Grifo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Grifo 1\",\"off\":\"Grifo 2\",\"checked\":true}', 6),
(77, 8, 'Solicitante', 'text', 'Solicitante', 0, 1, 1, 1, 1, 1, NULL, 7),
(78, 8, 'UniTracto', 'text', 'UniTracto', 0, 1, 1, 1, 1, 1, NULL, 8),
(79, 8, 'UniRemol', 'text', 'UniRemol', 0, 1, 1, 1, 1, 1, NULL, 9),
(80, 8, 'Galonaje', 'number', 'Galonaje', 0, 1, 1, 1, 1, 1, NULL, 10),
(81, 8, 'Odometro', 'number', 'Odometro', 0, 1, 1, 1, 1, 1, NULL, 11),
(82, 8, 'Tanqueado', 'number', 'Tanqueado', 0, 1, 1, 1, 1, 1, NULL, 12),
(83, 8, 'ScanGalonaje', 'number', 'ScanGalonaje', 0, 1, 1, 1, 1, 1, NULL, 13),
(84, 8, 'KmViaje', 'number', 'KmViaje', 0, 1, 1, 1, 1, 1, NULL, 14),
(85, 8, 'Observacion', 'text_area', 'Observacion', 0, 1, 1, 1, 1, 1, NULL, 15),
(86, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 16),
(87, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
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
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-05-16 23:06:35', '2018-05-16 23:06:35'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-05-16 23:06:35', '2018-05-16 23:06:35'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-05-16 23:06:35', '2018-05-16 23:06:35'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-05-16 23:06:39', '2018-05-16 23:06:39'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(7, 'noticias', 'noticias', 'Noticia', 'Noticias', NULL, 'App\\Noticia', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(8, 'petroleo', 'petroleo', 'Petroleo', 'Petroleos', NULL, 'App\\Petroleo', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-13 20:12:12', '2018-06-13 20:13:05'),
(9, 'cobranzas', 'cobranzas', 'Cobranza', 'Cobranzas', NULL, 'App\\Cobranza', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-06-16 18:54:27', '2018-06-16 18:54:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-05-16 23:06:36', '2018-05-16 23:06:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
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
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-05-16 23:06:36', '2018-05-16 23:06:36', 'voyager.dashboard', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 23, 2, '2018-05-16 23:06:36', '2018-06-15 02:47:07', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 23, 1, '2018-05-16 23:06:36', '2018-06-15 02:47:03', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2018-05-16 23:06:36', '2018-06-15 02:47:05', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-05-16 23:06:36', '2018-05-18 01:30:11', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-05-16 23:06:36', '2018-05-18 01:30:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-05-16 23:06:36', '2018-05-18 01:30:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-05-16 23:06:36', '2018-05-18 01:30:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 6, '2018-05-16 23:06:36', '2018-06-15 02:45:48', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-05-16 23:06:44', '2018-05-18 01:30:11', 'voyager.hooks', NULL),
(15, 1, 'Noticias', '', '_self', 'voyager-news', '#000000', 22, 1, '2018-05-18 01:28:43', '2018-06-15 02:45:59', 'voyager.noticias.index', 'null'),
(19, 1, 'Mantenedores', '', '_self', 'voyager-folder', '#000000', NULL, 5, '2018-05-21 22:13:19', '2018-06-15 02:47:05', NULL, ''),
(21, 1, 'Gestion de Petroleo', '', '_self', NULL, '#000000', 19, 1, '2018-06-13 20:12:12', '2018-06-15 02:43:27', 'voyager.petroleo.index', 'null'),
(22, 1, 'Pagina Web', '', '_self', 'voyager-world', '#000000', NULL, 3, '2018-06-15 02:45:23', '2018-06-15 02:48:02', NULL, ''),
(23, 1, 'Admin', '', '_self', 'voyager-people', '#000000', NULL, 2, '2018-06-15 02:46:43', '2018-06-15 02:46:59', NULL, ''),
(24, 1, 'Gestion de Cobranzas', '', '_self', NULL, '#000000', 19, 2, '2018-06-16 18:54:27', '2018-06-16 18:55:25', 'voyager.cobranzas.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `Titulo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Contenido` text COLLATE utf8_unicode_ci,
  `Imagen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `Titulo`, `Fecha`, `Contenido`, `Imagen`, `created_at`, `updated_at`, `user_id`) VALUES
(28, 'NUEVA FLOTA DE TRANSPORTES JOSELITO', '2015-07-05', '<p>El Grupo Volvo Per&uacute; realiz&oacute; la entrega de 07 camiones Mack Vision mDrive y 03 Mack Vision Silver a Transportes y Servicios Generales Joselito, empresa l&iacute;der en el transporte de carga pesada a nivel nacional. De esta manera, la compa&ntilde;&iacute;a renueva su confianza en la marca americana e incrementa su flota a m&aacute;s de 80 camiones</p>', 'noticias\\June2018\\KXTTIbY6IiKHumJuWepu.jpg', '2018-05-21 19:29:00', '2018-06-15 02:12:15', 1),
(29, 'SALUD OCUPACIONAL', '2016-02-06', '<p>Cumpliendo con el Desarrollo de actividades asociadas a disciplinas multidisciplinarias, cuyo objetivo es la promoci&oacute;n y mantenimiento del m&aacute;s alto grado posible de bienestar f&iacute;sico</p>', 'noticias\\June2018\\V5aK8Zv9An0uPWt3Ck8J.JPG', '2018-05-21 19:30:00', '2018-06-15 02:31:17', 1),
(31, 'UN SOLO PUÑO \"CONTIGO PERU\"', NULL, '<p>Nuestro Capital Humano Unidos para Alentar a nuestra Selecci&oacute;n \"Arriba Per&uacute;\"</p>', 'noticias\\June2018\\kCG8C9zkXC8soFdZTEIL.JPG', '2018-05-21 19:33:00', '2018-06-15 02:31:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-05-16 23:06:42', '2018-05-16 23:06:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(2, 'browse_bread', NULL, '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(3, 'browse_database', NULL, '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(4, 'browse_media', NULL, '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(5, 'browse_compass', NULL, '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(6, 'browse_menus', 'menus', '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(7, 'read_menus', 'menus', '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(8, 'edit_menus', 'menus', '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(9, 'add_menus', 'menus', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(10, 'delete_menus', 'menus', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(11, 'browse_roles', 'roles', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(12, 'read_roles', 'roles', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(13, 'edit_roles', 'roles', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(14, 'add_roles', 'roles', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(15, 'delete_roles', 'roles', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(16, 'browse_users', 'users', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(17, 'read_users', 'users', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(18, 'edit_users', 'users', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(19, 'add_users', 'users', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(20, 'delete_users', 'users', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(21, 'browse_settings', 'settings', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(22, 'read_settings', 'settings', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(23, 'edit_settings', 'settings', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(24, 'add_settings', 'settings', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(25, 'delete_settings', 'settings', '2018-05-16 23:06:37', '2018-05-16 23:06:37'),
(26, 'browse_categories', 'categories', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(27, 'read_categories', 'categories', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(28, 'edit_categories', 'categories', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(29, 'add_categories', 'categories', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(30, 'delete_categories', 'categories', '2018-05-16 23:06:40', '2018-05-16 23:06:40'),
(31, 'browse_posts', 'posts', '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(32, 'read_posts', 'posts', '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(33, 'edit_posts', 'posts', '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(34, 'add_posts', 'posts', '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(35, 'delete_posts', 'posts', '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(36, 'browse_pages', 'pages', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(37, 'read_pages', 'pages', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(38, 'edit_pages', 'pages', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(39, 'add_pages', 'pages', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(40, 'delete_pages', 'pages', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(41, 'browse_hooks', NULL, '2018-05-16 23:06:44', '2018-05-16 23:06:44'),
(42, 'browse_noticias', 'noticias', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(43, 'read_noticias', 'noticias', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(44, 'edit_noticias', 'noticias', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(45, 'add_noticias', 'noticias', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(46, 'delete_noticias', 'noticias', '2018-05-18 01:28:43', '2018-05-18 01:28:43'),
(47, 'browse_petroleo', 'petroleo', '2018-06-13 20:12:12', '2018-06-13 20:12:12'),
(48, 'read_petroleo', 'petroleo', '2018-06-13 20:12:12', '2018-06-13 20:12:12'),
(49, 'edit_petroleo', 'petroleo', '2018-06-13 20:12:12', '2018-06-13 20:12:12'),
(50, 'add_petroleo', 'petroleo', '2018-06-13 20:12:12', '2018-06-13 20:12:12'),
(51, 'delete_petroleo', 'petroleo', '2018-06-13 20:12:12', '2018-06-13 20:12:12'),
(52, 'browse_cobranzas', 'cobranzas', '2018-06-16 18:54:27', '2018-06-16 18:54:27'),
(53, 'read_cobranzas', 'cobranzas', '2018-06-16 18:54:27', '2018-06-16 18:54:27'),
(54, 'edit_cobranzas', 'cobranzas', '2018-06-16 18:54:27', '2018-06-16 18:54:27'),
(55, 'add_cobranzas', 'cobranzas', '2018-06-16 18:54:27', '2018-06-16 18:54:27'),
(56, 'delete_cobranzas', 'cobranzas', '2018-06-16 18:54:27', '2018-06-16 18:54:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `petroleo`
--

CREATE TABLE `petroleo` (
  `id` int(10) UNSIGNED NOT NULL,
  `Hubometro` int(11) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Almacen` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnidadNegocio` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Grifo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Solicitante` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniTracto` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UniRemol` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Galonaje` int(11) DEFAULT NULL,
  `Odometro` int(11) DEFAULT NULL,
  `Tanqueado` int(11) DEFAULT NULL,
  `ScanGalonaje` int(11) DEFAULT NULL,
  `KmViaje` int(11) DEFAULT NULL,
  `Observacion` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `petroleo`
--

INSERT INTO `petroleo` (`id`, `Hubometro`, `Fecha`, `Almacen`, `UnidadNegocio`, `Grifo`, `Solicitante`, `UniTracto`, `UniRemol`, `Galonaje`, `Odometro`, `Tanqueado`, `ScanGalonaje`, `KmViaje`, `Observacion`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 18:49:39', '2018-06-18 18:49:39'),
(2, 1232, NULL, '123', '1', '1', 'awsdas', '123asd', 'as', 123, NULL, 123, 1231, 123, 'asdqwe', '2018-06-18 19:19:40', '2018-06-18 19:19:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-16 23:06:41', '2018-05-16 23:06:41'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-05-16 23:06:41', '2018-05-16 23:06:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-05-16 23:06:36', '2018-05-16 23:06:36'),
(2, 'user', 'Normal User', '2018-05-16 23:06:36', '2018-05-16 23:06:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
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
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', NULL, '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', NULL, '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2018\\VchqQyX8my9eK2mbQ8k7.JPG', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Panel de Control', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Empresa de Tranportes y Servicios Genrerales Joselito S.A.C.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\June2018\\u0CnwQrkPt1DdRkzCeYu.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\June2018\\XmcW3PCNtQDo7gXYc6yW.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
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
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-05-16 23:06:42', '2018-05-16 23:06:42'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-05-16 23:06:43', '2018-05-16 23:06:43'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-05-16 23:06:43', '2018-05-16 23:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\June2018\\i6nUzWBrlATIbqtqLahs.png', '$2y$10$Db4GUtAXlrGw.cm/Wv0/iunl9jh7QgzrjNWyBGx88aRAy8s6W5Gse', 'hbMQONN5iO98mRw88FygzwwgfgwyE6mden3441SbRjxRWOBRczxG5n9LUa7K', '{\"locale\":\"en\"}', '2018-05-16 23:06:40', '2018-06-18 18:21:20'),
(2, 1, 'André  Gianpierre Loayza Ascate', 'jefesistemas@transportesjoselito.com.pe', 'users\\May2018\\O1xuadYgEmpitjvQvqu9.jpg', '$2y$10$z8EYhTDPb7hbIq.WTmDJVuHk.eoneBG.I4F9if4zJGonJgL0XIa7i', NULL, '{\"locale\":\"en\"}', '2018-05-21 21:56:27', '2018-05-21 22:29:59'),
(16, 2, 'Cesar Solano', 'csolanor@upao.edu.pe', 'users/default.png', '$2y$10$hlJ9PqVNWyyug9T6eo3t7O/kd8ljXU3BHC206O2HudAFXLBsAYbyq', 'vEy72tojvjdWxDSB1zLqxH32D59bT3062tRN97qqNwOgoqsZ4Tv8vZkbDXsR', '{\"locale\":\"es\"}', '2018-06-16 18:50:45', '2018-06-16 18:50:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `cobranzas`
--
ALTER TABLE `cobranzas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `petroleo`
--
ALTER TABLE `petroleo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cobranzas`
--
ALTER TABLE `cobranzas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `petroleo`
--
ALTER TABLE `petroleo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
