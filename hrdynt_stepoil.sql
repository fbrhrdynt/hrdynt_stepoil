-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 28 Jun 2025 pada 15.02
-- Versi server: 10.11.10-MariaDB-log
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u597510649_hrdynt_hlbss`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `additional`
--

CREATE TABLE `additional` (
  `id_add` int(10) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `bssactivity` longtext DEFAULT NULL,
  `rigactivity` longtext DEFAULT NULL,
  `vctodryer_bbls` varchar(10) DEFAULT NULL,
  `vctodryer_m3` varchar(10) DEFAULT NULL,
  `vcfrdryer_bbls` varchar(10) DEFAULT NULL,
  `vcfrdryer_m3` varchar(10) DEFAULT NULL,
  `vcfrcf1_bbls` varchar(10) DEFAULT NULL,
  `vcfrcf1_m3` varchar(10) DEFAULT NULL,
  `vcfrcf2_bbls` varchar(10) DEFAULT NULL,
  `vcfrcf2_m3` varchar(10) DEFAULT NULL,
  `vcfrcf3_bbls` varchar(10) DEFAULT NULL,
  `vcfrcf3_m3` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets_list`
--

CREATE TABLE `assets_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pm_category` bigint(20) UNSIGNED NOT NULL,
  `asset_name` varchar(255) NOT NULL,
  `mfg_sn` varchar(255) NOT NULL,
  `company_asset` varchar(255) NOT NULL,
  `coc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_reset_token_06Swzi6uf8XLYHAvlTudyuKvDYHjadKsjNFHp6QmbTJLgpUg898ei3kveciUrfZ7', 's:26:\"febroherdyanto98@gmail.com\";', 1750700378);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuttingsbypassed`
--

CREATE TABLE `cuttingsbypassed` (
  `id_cuttingbypassed` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `percentage` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `from_depth` double DEFAULT NULL,
  `each_from_depth` varchar(255) DEFAULT NULL,
  `to_depth` double DEFAULT NULL,
  `each_to_depth` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dailywaste`
--

CREATE TABLE `dailywaste` (
  `id_dailywaste` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `dailywaste_generated` double DEFAULT NULL,
  `avg_moc` double DEFAULT NULL,
  `avg_discharge` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `desanders`
--

CREATE TABLE `desanders` (
  `id_desander` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `run_hour` int(11) DEFAULT NULL,
  `feed_rate` varchar(255) DEFAULT NULL,
  `feed_dens` varchar(255) DEFAULT NULL,
  `overflow_dens` varchar(255) DEFAULT NULL,
  `underflow_dens` varchar(255) DEFAULT NULL,
  `vol_discharge` varchar(255) DEFAULT NULL,
  `mudoncuttings` varchar(255) DEFAULT NULL,
  `volmud_discharge` varchar(255) DEFAULT NULL,
  `head_pressure` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `desilters`
--

CREATE TABLE `desilters` (
  `id_desilter` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `run_hour` int(11) DEFAULT NULL,
  `feed_rate` varchar(255) DEFAULT NULL,
  `feed_dens` varchar(255) DEFAULT NULL,
  `overflow_dens` varchar(255) DEFAULT NULL,
  `underflow_dens` varchar(255) DEFAULT NULL,
  `vol_discharge` varchar(255) DEFAULT NULL,
  `mudoncuttings` varchar(255) DEFAULT NULL,
  `volmud_discharge` varchar(255) DEFAULT NULL,
  `head_pressure` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `id_details` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `mudcheck_type` varchar(100) DEFAULT NULL,
  `depth_each` varchar(10) DEFAULT NULL,
  `depth1bef` double DEFAULT NULL,
  `bitsize` double DEFAULT NULL,
  `bittype` varchar(30) DEFAULT NULL,
  `washout` double DEFAULT NULL,
  `mudweight` double DEFAULT NULL,
  `mwunit` varchar(20) DEFAULT NULL,
  `curdepth` double DEFAULT NULL,
  `volholedrill` double DEFAULT NULL,
  `volholeunit` varchar(20) DEFAULT NULL,
  `avgrop` double DEFAULT NULL,
  `lgsactive` double DEFAULT NULL,
  `datenow` date DEFAULT NULL,
  `cirrategpm` double DEFAULT NULL,
  `hgsactive` double DEFAULT NULL,
  `sgbasefluid` double DEFAULT NULL,
  `fluidtype` varchar(100) DEFAULT NULL,
  `rigpresentact` varchar(200) DEFAULT NULL,
  `activesysvol` double DEFAULT NULL,
  `pv` double DEFAULT NULL,
  `yp` double DEFAULT NULL,
  `sandcontent` double DEFAULT NULL,
  `basefluid` double DEFAULT NULL,
  `chlorides` double DEFAULT NULL,
  `mudtemp` double DEFAULT NULL,
  `tempunit` varchar(20) DEFAULT NULL,
  `categories1` varchar(20) DEFAULT NULL,
  `categories2` double DEFAULT NULL,
  `sgdrillsolid` double DEFAULT NULL,
  `sh1_name` varchar(200) DEFAULT NULL,
  `sh1_model` varchar(200) DEFAULT NULL,
  `sh1_screensize` varchar(255) DEFAULT NULL,
  `sh1_runninghour` varchar(10) DEFAULT NULL,
  `sh2_name` varchar(200) DEFAULT NULL,
  `sh2_model` varchar(200) DEFAULT NULL,
  `sh2_screensize` varchar(255) DEFAULT NULL,
  `sh2_runninghour` varchar(10) DEFAULT NULL,
  `sh3_name` varchar(200) DEFAULT NULL,
  `sh3_model` varchar(200) DEFAULT NULL,
  `sh3_screensize` varchar(255) DEFAULT NULL,
  `sh3_runninghour` varchar(10) DEFAULT NULL,
  `sh4_name` varchar(200) DEFAULT NULL,
  `sh4_model` varchar(200) DEFAULT NULL,
  `sh4_screensize` varchar(255) DEFAULT NULL,
  `sh4_runninghour` varchar(10) DEFAULT NULL,
  `sh5_name` varchar(200) DEFAULT NULL,
  `sh5_model` varchar(200) DEFAULT NULL,
  `sh5_screensize` varchar(255) DEFAULT NULL,
  `sh5_runninghour` varchar(10) DEFAULT NULL,
  `sh6_name` varchar(200) DEFAULT NULL,
  `sh6_model` varchar(200) DEFAULT NULL,
  `sh6_screensize` varchar(255) DEFAULT NULL,
  `sh6_runninghour` varchar(10) DEFAULT NULL,
  `screens_changed` varchar(200) DEFAULT NULL,
  `cf1_sn` varchar(20) DEFAULT NULL,
  `cf1_model` varchar(50) DEFAULT NULL,
  `cf1_modeofopr` varchar(100) DEFAULT NULL,
  `cf1_weirplate` double DEFAULT NULL,
  `cf1_bowlspeed` double DEFAULT NULL,
  `cf1_bowlconv` double DEFAULT NULL,
  `cf1_feedsuc` varchar(100) DEFAULT NULL,
  `cf1_effluentreturn` varchar(100) DEFAULT NULL,
  `cf1_underflow` varchar(100) DEFAULT NULL,
  `cf1_runninghour` double DEFAULT NULL,
  `cf1_feedinrate` double DEFAULT NULL,
  `cf1_feedindensity` double DEFAULT NULL,
  `cf1_centratedens` double DEFAULT NULL,
  `cf1_cakediscdens` double DEFAULT NULL,
  `cf1_centratereturn` varchar(20) DEFAULT NULL,
  `cf1_cakediscflow` varchar(20) DEFAULT NULL,
  `cf1_masscake` varchar(20) DEFAULT NULL,
  `cf1_volcake` varchar(20) DEFAULT NULL,
  `cf2_sn` varchar(20) DEFAULT NULL,
  `cf2_model` varchar(50) DEFAULT NULL,
  `cf2_modeofopr` varchar(100) DEFAULT NULL,
  `cf2_weirplate` double DEFAULT NULL,
  `cf2_bowlspeed` double DEFAULT NULL,
  `cf2_bowlconv` double DEFAULT NULL,
  `cf2_feedsuc` varchar(100) DEFAULT NULL,
  `cf2_effluentreturn` varchar(100) DEFAULT NULL,
  `cf2_underflow` varchar(100) DEFAULT NULL,
  `cf2_runninghour` double DEFAULT NULL,
  `cf2_feedinrate` double DEFAULT NULL,
  `cf2_feedindensity` double DEFAULT NULL,
  `cf2_centratedens` double DEFAULT NULL,
  `cf2_cakediscdens` double DEFAULT NULL,
  `cf2_centratereturn` varchar(20) DEFAULT NULL,
  `cf2_cakediscflow` varchar(20) DEFAULT NULL,
  `cf2_masscake` varchar(20) DEFAULT NULL,
  `cf2_volcake` varchar(20) DEFAULT NULL,
  `cf3_sn` varchar(20) DEFAULT NULL,
  `cf3_model` varchar(50) DEFAULT NULL,
  `cf3_modeofopr` varchar(100) DEFAULT NULL,
  `cf3_weirplate` double DEFAULT NULL,
  `cf3_bowlspeed` double DEFAULT NULL,
  `cf3_bowlconv` double DEFAULT NULL,
  `cf3_feedsuc` varchar(100) DEFAULT NULL,
  `cf3_effluentreturn` varchar(100) DEFAULT NULL,
  `cf3_underflow` varchar(100) DEFAULT NULL,
  `cf3_runninghour` double DEFAULT NULL,
  `cf3_feedinrate` double DEFAULT NULL,
  `cf3_feedindensity` double DEFAULT NULL,
  `cf3_centratedens` double DEFAULT NULL,
  `cf3_cakediscdens` double DEFAULT NULL,
  `cf3_centratereturn` varchar(20) DEFAULT NULL,
  `cf3_cakediscflow` varchar(20) DEFAULT NULL,
  `cf3_masscake` varchar(20) DEFAULT NULL,
  `cf3_volcake` varchar(20) DEFAULT NULL,
  `cdu1_sn` varchar(100) DEFAULT NULL,
  `cdu1_model` varchar(100) DEFAULT NULL,
  `cdu1_screensize` double DEFAULT NULL,
  `cdu1_runninghour` double DEFAULT NULL,
  `cdu1_centrateppg` double DEFAULT NULL,
  `cdu1_scroll` double DEFAULT NULL,
  `cdu1_sampledepth` double DEFAULT NULL,
  `cdu2_sn` varchar(100) DEFAULT NULL,
  `cdu2_model` varchar(100) DEFAULT NULL,
  `cdu2_screensize` double DEFAULT NULL,
  `cdu2_runninghour` double DEFAULT NULL,
  `cdu2_centrateppg` double DEFAULT NULL,
  `cdu2_scroll` double DEFAULT NULL,
  `cdu2_sampledepth` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inspection_category`
--

CREATE TABLE `inspection_category` (
  `id_inspection` bigint(20) UNSIGNED NOT NULL,
  `name_inspection` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inspection_category`
--

INSERT INTO `inspection_category` (`id_inspection`, `name_inspection`, `notes`, `created_at`, `updated_at`) VALUES
(9, 'Lifting Certificate', '6 Month period', '2025-06-18 18:57:39', '2025-06-22 08:30:54'),
(10, 'MPI', NULL, '2025-06-18 18:57:54', '2025-06-18 18:57:54'),
(11, 'Load Test', '4 Year Period', '2025-06-22 08:28:33', '2025-06-22 08:38:44'),
(12, 'Wall Thickness', NULL, '2025-06-22 08:28:56', '2025-06-22 08:28:56'),
(13, 'Zone 2', '1 Year Period', '2025-06-22 08:29:17', '2025-06-22 08:29:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inspection_detail`
--

CREATE TABLE `inspection_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_inspection` bigint(20) UNSIGNED NOT NULL,
  `id_asset_list` bigint(20) UNSIGNED NOT NULL,
  `inspection_date` date DEFAULT NULL,
  `inspection_exp` date DEFAULT NULL,
  `cert` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_03_29_044055_create_project_table', 1),
(2, '2025_03_29_044058_create_xusers_table', 1),
(3, '2025_03_29_044831_create_wellinfo_table', 1),
(4, '2025_03_29_044944_create_additional_table', 1),
(5, '2025_03_29_153548_create_details_table', 1),
(8, '2025_03_29_154905_create_warning_table', 1),
(9, '2025_03_29_172338_create_sessions_table', 1),
(10, '2025_04_03_105256_create_desanders_table', 1),
(11, '2025_04_03_105317_create_desilters_table', 1),
(14, '2025_03_29_154811_create_retorts_table', 1),
(17, '2025_04_03_105357_create_dailywaste_table', 3),
(18, '2025_04_03_105343_create_cuttingsbypassed_table', 4),
(19, '2025_03_29_154624_create_personnel_table', 5),
(20, '2025_04_16_154413_create_pm_categories_table', 6),
(21, '2025_04_16_154507_create_pm_data_table', 7),
(22, '2025_04_16_175818_create_cache_table', 8),
(23, '2025_04_19_053546_create_assets_list_table', 9),
(24, '2025_04_19_053557_create_inspection_category_table', 10),
(25, '2025_04_19_053558_create_pm_detail_category_table', 11),
(26, '2025_04_19_053558_create_pm_details_table', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personnel`
--

CREATE TABLE `personnel` (
  `id_personnel` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `ds1_name` varchar(255) DEFAULT NULL,
  `ds2_name` varchar(255) DEFAULT NULL,
  `ns1_name` varchar(255) DEFAULT NULL,
  `ns2_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_categories`
--

CREATE TABLE `pm_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pm_categories`
--

INSERT INTO `pm_categories` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(9, 'Shakers', NULL, '2025-06-18 17:53:50', '2025-06-18 17:53:50'),
(11, 'Cavity Pump', NULL, '2025-06-22 07:26:33', '2025-06-22 07:26:33'),
(12, 'Centrifugal', NULL, '2025-06-22 08:15:30', '2025-06-22 08:15:30'),
(14, 'Skid / Stand', NULL, '2025-06-22 08:15:59', '2025-06-22 08:15:59'),
(15, 'Compressor', NULL, '2025-06-22 08:16:54', '2025-06-22 08:16:54'),
(16, 'Filtration', NULL, '2025-06-22 08:17:21', '2025-06-22 08:17:21'),
(17, '12\" Screw Conveyor', NULL, '2025-06-22 08:17:44', '2025-06-22 08:17:44'),
(18, '14\" Screw Conveyor', NULL, '2025-06-22 08:18:05', '2025-06-22 08:18:05'),
(19, 'VSD Unit', NULL, '2025-06-22 08:19:13', '2025-06-22 08:19:13'),
(20, 'FSD Unit', NULL, '2025-06-22 08:19:29', '2025-06-22 08:19:29'),
(21, 'Elgin Centrifuge', NULL, '2025-06-22 08:19:59', '2025-06-22 08:19:59'),
(22, 'G-Tech Centrifuge', NULL, '2025-06-22 08:20:16', '2025-06-22 08:20:16'),
(23, 'Derrick Centrifuge', NULL, '2025-06-22 08:20:37', '2025-06-22 08:20:37'),
(24, 'G-Tech Panel', NULL, '2025-06-22 08:20:55', '2025-06-22 08:20:55'),
(25, 'Elgin Panel', NULL, '2025-06-22 08:21:08', '2025-06-22 08:21:08'),
(26, 'Air Pump', NULL, '2025-06-22 08:22:02', '2025-06-22 08:22:02'),
(27, 'CRI Unit', NULL, '2025-06-22 08:22:30', '2025-06-22 08:22:30'),
(28, 'Basket', NULL, '2025-06-22 08:23:03', '2025-06-22 08:23:03'),
(29, 'Open Top Container', NULL, '2025-06-22 08:23:17', '2025-06-22 08:23:17'),
(30, 'Office Container', NULL, '2025-06-22 08:23:34', '2025-06-22 08:23:34'),
(31, 'SV 400', NULL, '2025-06-22 08:24:46', '2025-06-22 08:24:46'),
(32, 'SV 60', NULL, '2025-06-22 08:24:55', '2025-06-22 08:24:55'),
(33, 'Pressure Washer', NULL, '2025-06-22 08:25:08', '2025-06-22 08:25:08'),
(34, 'Cooling System', NULL, '2025-06-22 08:26:07', '2025-06-22 08:26:07'),
(35, 'BaraLogix', NULL, '2025-06-22 08:26:19', '2025-06-22 08:26:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_data`
--

CREATE TABLE `pm_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_details`
--

CREATE TABLE `pm_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pm_detail_category` bigint(20) UNSIGNED NOT NULL,
  `id_asset_list` bigint(20) UNSIGNED NOT NULL,
  `pm_start` date DEFAULT NULL,
  `pm_due` date DEFAULT NULL,
  `pm_status` varchar(255) DEFAULT NULL,
  `performed_by` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_detail_category`
--

CREATE TABLE `pm_detail_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pm_name` varchar(255) NOT NULL,
  `frequency` int(11) NOT NULL,
  `frequency_unit` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pm_detail_category`
--

INSERT INTO `pm_detail_category` (`id`, `pm_name`, `frequency`, `frequency_unit`, `notes`, `created_at`, `updated_at`) VALUES
(17, 'Shop PM Monthly', 1, 'Month', NULL, '2025-06-18 18:58:22', '2025-06-18 18:58:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id_project` bigint(20) UNSIGNED NOT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `operator_name` varchar(255) DEFAULT NULL,
  `drillingrig` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `wellname` varchar(255) DEFAULT NULL,
  `kodeakses` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retorts`
--

CREATE TABLE `retorts` (
  `id_retort` bigint(20) UNSIGNED NOT NULL,
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `rt_sh_sampletime` varchar(255) DEFAULT NULL,
  `rt_cdu_sampletime` varchar(255) DEFAULT NULL,
  `rt_cf1_sampletime` varchar(255) DEFAULT NULL,
  `rt_cf2_sampletime` varchar(255) DEFAULT NULL,
  `rt_cf3_sampletime` varchar(255) DEFAULT NULL,
  `rt_sh_sampledepth` varchar(10) DEFAULT NULL,
  `rt_sh_emptycell` decimal(10,2) DEFAULT NULL,
  `rt_sh_emptycellwetsamp` decimal(10,2) DEFAULT NULL,
  `rt_sh_celldrycut` decimal(10,2) DEFAULT NULL,
  `rt_sh_emptycylinder` decimal(10,2) DEFAULT NULL,
  `rt_sh_watervolin` decimal(10,2) DEFAULT NULL,
  `rt_sh_basefluidvolincyl` decimal(10,2) DEFAULT NULL,
  `rt_sh_wtcylwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_sh_massofcutting` decimal(10,2) DEFAULT NULL,
  `rt_sh_massofdry` decimal(10,2) DEFAULT NULL,
  `rt_sh_wtofwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_sh_massofbf` decimal(10,2) DEFAULT NULL,
  `rt_sh_mudoncutting` decimal(10,2) DEFAULT NULL,
  `rt_sh_percofcutting` decimal(10,2) DEFAULT NULL,
  `rt_sh_volbfoildisc` decimal(10,2) DEFAULT NULL,
  `rt_sh_volmuddisc` decimal(10,2) DEFAULT NULL,
  `rt_sh_ooc` decimal(10,2) DEFAULT NULL,
  `rt_cdu_sampledepth` decimal(10,2) DEFAULT NULL,
  `rt_cdu_emptycell` decimal(10,2) DEFAULT NULL,
  `rt_cdu_emptycellwetsamp` decimal(10,2) DEFAULT NULL,
  `rt_cdu_celldrycut` decimal(10,2) DEFAULT NULL,
  `rt_cdu_emptycylinder` decimal(10,2) DEFAULT NULL,
  `rt_cdu_watervolin` decimal(10,2) DEFAULT NULL,
  `rt_cdu_basefluidvolincyl` decimal(10,2) DEFAULT NULL,
  `rt_cdu_wtcylwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cdu_massofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cdu_massofdry` decimal(10,2) DEFAULT NULL,
  `rt_cdu_wtofwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cdu_massofbf` decimal(10,2) DEFAULT NULL,
  `rt_cdu_mudoncutting` decimal(10,2) DEFAULT NULL,
  `rt_cdu_percofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cdu_volbfoildisc` decimal(10,2) DEFAULT NULL,
  `rt_cdu_volmuddisc` decimal(10,2) DEFAULT NULL,
  `rt_cdu_ooc` decimal(10,2) DEFAULT NULL,
  `rt_cf1_sampledepth` decimal(10,2) DEFAULT NULL,
  `rt_cf1_emptycell` decimal(10,2) DEFAULT NULL,
  `rt_cf1_emptycellwetsamp` decimal(10,2) DEFAULT NULL,
  `rt_cf1_celldrycut` decimal(10,2) DEFAULT NULL,
  `rt_cf1_emptycylinder` decimal(10,2) DEFAULT NULL,
  `rt_cf1_watervolin` decimal(10,2) DEFAULT NULL,
  `rt_cf1_basefluidvolincyl` decimal(10,2) DEFAULT NULL,
  `rt_cf1_wtcylwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf1_massofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf1_massofdry` decimal(10,2) DEFAULT NULL,
  `rt_cf1_wtofwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf1_massofbf` decimal(10,2) DEFAULT NULL,
  `rt_cf1_mudoncutting` decimal(10,2) DEFAULT NULL,
  `rt_cf1_percofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf1_volbfoildisc` decimal(10,2) DEFAULT NULL,
  `rt_cf1_volmuddisc` decimal(10,2) DEFAULT NULL,
  `rt_cf1_ooc` decimal(10,2) DEFAULT NULL,
  `rt_cf2_sampledepth` decimal(10,2) DEFAULT NULL,
  `rt_cf2_emptycell` decimal(10,2) DEFAULT NULL,
  `rt_cf2_emptycellwetsamp` decimal(10,2) DEFAULT NULL,
  `rt_cf2_celldrycut` decimal(10,2) DEFAULT NULL,
  `rt_cf2_emptycylinder` decimal(10,2) DEFAULT NULL,
  `rt_cf2_watervolin` decimal(10,2) DEFAULT NULL,
  `rt_cf2_basefluidvolincyl` decimal(10,2) DEFAULT NULL,
  `rt_cf2_wtcylwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf2_massofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf2_massofdry` decimal(10,2) DEFAULT NULL,
  `rt_cf2_wtofwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf2_massofbf` decimal(10,2) DEFAULT NULL,
  `rt_cf2_mudoncutting` decimal(10,2) DEFAULT NULL,
  `rt_cf2_percofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf2_volbfoildisc` decimal(10,2) DEFAULT NULL,
  `rt_cf2_volmuddisc` decimal(10,2) DEFAULT NULL,
  `rt_cf2_ooc` decimal(10,2) DEFAULT NULL,
  `rt_cf3_sampledepth` decimal(10,2) DEFAULT NULL,
  `rt_cf3_emptycell` decimal(10,2) DEFAULT NULL,
  `rt_cf3_emptycellwetsamp` decimal(10,2) DEFAULT NULL,
  `rt_cf3_celldrycut` decimal(10,2) DEFAULT NULL,
  `rt_cf3_emptycylinder` decimal(10,2) DEFAULT NULL,
  `rt_cf3_watervolin` decimal(10,2) DEFAULT NULL,
  `rt_cf3_basefluidvolincyl` decimal(10,2) DEFAULT NULL,
  `rt_cf3_wtcylwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf3_massofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf3_massofdry` decimal(10,2) DEFAULT NULL,
  `rt_cf3_wtofwaterbf` decimal(10,2) DEFAULT NULL,
  `rt_cf3_massofbf` decimal(10,2) DEFAULT NULL,
  `rt_cf3_mudoncutting` decimal(10,2) DEFAULT NULL,
  `rt_cf3_percofcutting` decimal(10,2) DEFAULT NULL,
  `rt_cf3_volbfoildisc` decimal(10,2) DEFAULT NULL,
  `rt_cf3_volmuddisc` decimal(10,2) DEFAULT NULL,
  `rt_cf3_ooc` decimal(10,2) DEFAULT NULL,
  `oil_recovered` decimal(10,2) DEFAULT NULL,
  `mud_recovered` decimal(10,2) DEFAULT NULL,
  `cum_oil` decimal(10,2) DEFAULT NULL,
  `cum_mud` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D2rGlWkNOlZ4H58MIgoOGZJZ0Y353I0uaqIQzMMk', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNmhHMkpqUHFWVVpodE9sdXJocmhZT0ZsaVJWRUUzNm1uRllXYUg4OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Qvc3RlcG9pbC9wdWJsaWMvbG9naW4iO31zOjQ6InVzZXIiO086MTY6IkFwcFxNb2RlbHNcWFVzZXIiOjMyOntzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjg6IgAqAHRhYmxlIjtzOjY6Inh1c2VycyI7czoxMzoiACoAcHJpbWFyeUtleSI7czo3OiJpZF91c2VyIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTk6InByZXZlbnRzTGF6eUxvYWRpbmciO2I6MDtzOjEwOiIAKgBwZXJQYWdlIjtpOjE1O3M6NjoiZXhpc3RzIjtiOjE7czoxODoid2FzUmVjZW50bHlDcmVhdGVkIjtiOjA7czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6MTM6IgAqAGF0dHJpYnV0ZXMiO2E6OTp7czo3OiJpZF91c2VyIjtpOjg7czoxMToiZW1wbG95ZWVfaWQiO3M6MTQ6ImZlYnJvaGVyZHlhbnRvIjtzOjEzOiJlbXBsb3llZV9uYW1lIjtzOjI5OiJGZWJybyBIZXJkeWFudG8gQWRtaW5pc3RyYXRvciI7czo1OiJlbWFpbCI7czoyNjoiZmVicm9oZXJkeWFudG85OEBnbWFpbC5jb20iO3M6MTA6ImtvZGVfbG9naW4iO3M6MTQ6ImZlYnJvaGVyZHlhbnRvIjtzOjEwOiJwYXNzX2xvZ2luIjtzOjYwOiIkMnkkMTAkcHdTa2Flbno2dDdRckd0UGZ1SS5GT2RvRXhXTGY0cjRsc1FGQ25MNVRxRHpUUmZLb3NsRE8iO3M6NToibGV2ZWwiO3M6NjoiTUFTVEVSIjtzOjEwOiJpZF9wcm9qZWN0IjtOO3M6Njoic3RhdHVzIjtzOjE6IlkiO31zOjExOiIAKgBvcmlnaW5hbCI7YTo5OntzOjc6ImlkX3VzZXIiO2k6ODtzOjExOiJlbXBsb3llZV9pZCI7czoxNDoiZmVicm9oZXJkeWFudG8iO3M6MTM6ImVtcGxveWVlX25hbWUiO3M6Mjk6IkZlYnJvIEhlcmR5YW50byBBZG1pbmlzdHJhdG9yIjtzOjU6ImVtYWlsIjtzOjI2OiJmZWJyb2hlcmR5YW50bzk4QGdtYWlsLmNvbSI7czoxMDoia29kZV9sb2dpbiI7czoxNDoiZmVicm9oZXJkeWFudG8iO3M6MTA6InBhc3NfbG9naW4iO3M6NjA6IiQyeSQxMCRwd1NrYWVuejZ0N1FyR3RQZnVJLkZPZG9FeFdMZjRyNGxzUUZDbkw1VHFEelRSZktvc2xETyI7czo1OiJsZXZlbCI7czo2OiJNQVNURVIiO3M6MTA6ImlkX3Byb2plY3QiO047czo2OiJzdGF0dXMiO3M6MToiWSI7fXM6MTA6IgAqAGNoYW5nZXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6MTc6IgAqAGNsYXNzQ2FzdENhY2hlIjthOjA6e31zOjIxOiIAKgBhdHRyaWJ1dGVDYXN0Q2FjaGUiO2E6MDp7fXM6MTM6IgAqAGRhdGVGb3JtYXQiO047czoxMDoiACoAYXBwZW5kcyI7YTowOnt9czoxOToiACoAZGlzcGF0Y2hlc0V2ZW50cyI7YTowOnt9czoxNDoiACoAb2JzZXJ2YWJsZXMiO2E6MDp7fXM6MTI6IgAqAHJlbGF0aW9ucyI7YToxOntzOjc6InByb2plY3QiO047fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MDtzOjEzOiJ1c2VzVW5pcXVlSWRzIjtiOjA7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjg6e2k6MDtzOjExOiJlbXBsb3llZV9pZCI7aToxO3M6MTM6ImVtcGxveWVlX25hbWUiO2k6MjtzOjU6ImVtYWlsIjtpOjM7czoxMDoia29kZV9sb2dpbiI7aTo0O3M6MTA6InBhc3NfbG9naW4iO2k6NTtzOjU6ImxldmVsIjtpOjY7czoxMDoiaWRfcHJvamVjdCI7aTo3O3M6Njoic3RhdHVzIjt9czoxMDoiACoAZ3VhcmRlZCI7YToxOntpOjA7czoxOiIqIjt9czoxOToiACoAYXV0aFBhc3N3b3JkTmFtZSI7czo4OiJwYXNzd29yZCI7czoyMDoiACoAcmVtZW1iZXJUb2tlbk5hbWUiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjt9czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NzoiaHR0cDovL2xvY2FsaG9zdC9zdGVwb2lsL3B1YmxpYy9wbS1hZG1pbi8xL3Nob3ciO319', 1744901589),
('T6V6h8kIxgB4JAly9ReGAE1Jmfr5yad2lRfh0NkH', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1FtZTdsZUloQ2pnemxwNDIzSlZ3RjBMcFNjZTdsYzU2TEpZQmFWbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Qvc3RlcG9pbC9wdWJsaWMvbG9naW4iO319', 1744897882),
('u5XEE4cGEU6KiMWaKrO3H9MrKFoXJCiNzGS1s3tA', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.6 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDZvMGlkQnJaNDhNQWlGSDg5OGlFelJpSjJuUmxyNlhIUU5PTXpKayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3Qvc3RlcG9pbC9wdWJsaWMvcG0tYWRtaW4vMS9zaG93Ijt9czo0OiJ1c2VyIjtPOjE2OiJBcHBcTW9kZWxzXFhVc2VyIjozMDp7czoxMzoiACoAY29ubmVjdGlvbiI7czo1OiJteXNxbCI7czo4OiIAKgB0YWJsZSI7czo2OiJ4dXNlcnMiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6NzoiaWRfdXNlciI7czoxMDoiACoAa2V5VHlwZSI7czozOiJpbnQiO3M6MTI6ImluY3JlbWVudGluZyI7YjoxO3M6NzoiACoAd2l0aCI7YTowOnt9czoxMjoiACoAd2l0aENvdW50IjthOjA6e31zOjE5OiJwcmV2ZW50c0xhenlMb2FkaW5nIjtiOjA7czoxMDoiACoAcGVyUGFnZSI7aToxNTtzOjY6ImV4aXN0cyI7YjoxO3M6MTg6Indhc1JlY2VudGx5Q3JlYXRlZCI7YjowO3M6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjk6e3M6NzoiaWRfdXNlciI7aTo4O3M6MTE6ImVtcGxveWVlX2lkIjtzOjE0OiJmZWJyb2hlcmR5YW50byI7czoxMzoiZW1wbG95ZWVfbmFtZSI7czoyOToiRmVicm8gSGVyZHlhbnRvIEFkbWluaXN0cmF0b3IiO3M6NToiZW1haWwiO3M6MjY6ImZlYnJvaGVyZHlhbnRvOThAZ21haWwuY29tIjtzOjEwOiJrb2RlX2xvZ2luIjtzOjE0OiJmZWJyb2hlcmR5YW50byI7czoxMDoicGFzc19sb2dpbiI7czo2MDoiJDJ5JDEwJHB3U2thZW56NnQ3UXJHdFBmdUkuRk9kb0V4V0xmNHI0bHNRRkNuTDVUcUR6VFJmS29zbERPIjtzOjU6ImxldmVsIjtzOjY6Ik1BU1RFUiI7czoxMDoiaWRfcHJvamVjdCI7TjtzOjY6InN0YXR1cyI7czoxOiJZIjt9czoxMToiACoAb3JpZ2luYWwiO2E6OTp7czo3OiJpZF91c2VyIjtpOjg7czoxMToiZW1wbG95ZWVfaWQiO3M6MTQ6ImZlYnJvaGVyZHlhbnRvIjtzOjEzOiJlbXBsb3llZV9uYW1lIjtzOjI5OiJGZWJybyBIZXJkeWFudG8gQWRtaW5pc3RyYXRvciI7czo1OiJlbWFpbCI7czoyNjoiZmVicm9oZXJkeWFudG85OEBnbWFpbC5jb20iO3M6MTA6ImtvZGVfbG9naW4iO3M6MTQ6ImZlYnJvaGVyZHlhbnRvIjtzOjEwOiJwYXNzX2xvZ2luIjtzOjYwOiIkMnkkMTAkcHdTa2Flbno2dDdRckd0UGZ1SS5GT2RvRXhXTGY0cjRsc1FGQ25MNVRxRHpUUmZLb3NsRE8iO3M6NToibGV2ZWwiO3M6NjoiTUFTVEVSIjtzOjEwOiJpZF9wcm9qZWN0IjtOO3M6Njoic3RhdHVzIjtzOjE6IlkiO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czoyMToiACoAYXR0cmlidXRlQ2FzdENhY2hlIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MTp7czo3OiJwcm9qZWN0IjtOO31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjEwOiJ0aW1lc3RhbXBzIjtiOjA7czoxMzoidXNlc1VuaXF1ZUlkcyI7YjowO3M6OToiACoAaGlkZGVuIjthOjA6e31zOjEwOiIAKgB2aXNpYmxlIjthOjA6e31zOjExOiIAKgBmaWxsYWJsZSI7YTo4OntpOjA7czoxMToiZW1wbG95ZWVfaWQiO2k6MTtzOjEzOiJlbXBsb3llZV9uYW1lIjtpOjI7czo1OiJlbWFpbCI7aTozO3M6MTA6ImtvZGVfbG9naW4iO2k6NDtzOjEwOiJwYXNzX2xvZ2luIjtpOjU7czo1OiJsZXZlbCI7aTo2O3M6MTA6ImlkX3Byb2plY3QiO2k6NztzOjY6InN0YXR1cyI7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MTp7aTowO3M6MToiKiI7fX19', 1744828609);

-- --------------------------------------------------------

--
-- Struktur dari tabel `warning`
--

CREATE TABLE `warning` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_warning` varchar(20) NOT NULL,
  `detail_warning` text NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status_warning` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wellinfo`
--

CREATE TABLE `wellinfo` (
  `id_wellinfo` bigint(20) UNSIGNED NOT NULL,
  `curdate` date DEFAULT NULL,
  `id_project` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `wellname` varchar(100) DEFAULT NULL,
  `spud_date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `companyman` varchar(255) DEFAULT NULL,
  `oim` varchar(100) DEFAULT NULL,
  `mudeng` varchar(255) DEFAULT NULL,
  `urut` varchar(20) DEFAULT NULL,
  `lockreport` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `xusers`
--

CREATE TABLE `xusers` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kode_login` varchar(255) NOT NULL,
  `pass_login` varchar(255) NOT NULL,
  `level` varchar(20) DEFAULT NULL,
  `id_project` int(11) DEFAULT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `xusers`
--

INSERT INTO `xusers` (`id_user`, `employee_id`, `employee_name`, `email`, `kode_login`, `pass_login`, `level`, `id_project`, `status`) VALUES
(8, 'febroherdyanto', 'Febro Herdyanto Administrator', 'febroherdyanto98@gmail.com', 'febroherdyanto', '$2y$12$ucWq4hQJK0Zex2Xm00JtMOgzGw4LrjylwcSdoM85.jsXQKxRKxJQq', 'MASTER', 0, 'Y'),
(10, 'H248044', 'Bobby Setiawan', 'bobby.setiawan@halliburton.com', 'bobby.setiawan', '$2y$12$/tpJ/IhXAYPF.dT0PF84AOy1BhOq2.emLUboR6EIsk0AIRn0Ikb/q', 'MASTER', 0, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `additional`
--
ALTER TABLE `additional`
  ADD PRIMARY KEY (`id_add`),
  ADD KEY `additional_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `assets_list`
--
ALTER TABLE `assets_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_list_id_pm_category_foreign` (`id_pm_category`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cuttingsbypassed`
--
ALTER TABLE `cuttingsbypassed`
  ADD PRIMARY KEY (`id_cuttingbypassed`),
  ADD KEY `cuttingsbypassed_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `dailywaste`
--
ALTER TABLE `dailywaste`
  ADD PRIMARY KEY (`id_dailywaste`),
  ADD KEY `dailywaste_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `desanders`
--
ALTER TABLE `desanders`
  ADD PRIMARY KEY (`id_desander`),
  ADD KEY `desanders_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `desilters`
--
ALTER TABLE `desilters`
  ADD PRIMARY KEY (`id_desilter`),
  ADD KEY `desilters_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id_details`),
  ADD KEY `fk_details_wellinfo` (`id_wellinfo`);

--
-- Indeks untuk tabel `inspection_category`
--
ALTER TABLE `inspection_category`
  ADD PRIMARY KEY (`id_inspection`);

--
-- Indeks untuk tabel `inspection_detail`
--
ALTER TABLE `inspection_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id_personnel`),
  ADD KEY `personnel_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `pm_categories`
--
ALTER TABLE `pm_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_data`
--
ALTER TABLE `pm_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pm_data_category_id_foreign` (`category_id`),
  ADD KEY `pm_data_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `pm_details`
--
ALTER TABLE `pm_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pm_details_id_pm_detail_category_foreign` (`id_pm_detail_category`),
  ADD KEY `pm_details_id_asset_list_foreign` (`id_asset_list`);

--
-- Indeks untuk tabel `pm_detail_category`
--
ALTER TABLE `pm_detail_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id_project`),
  ADD KEY `projects_kodeakses_index` (`kodeakses`);

--
-- Indeks untuk tabel `retorts`
--
ALTER TABLE `retorts`
  ADD PRIMARY KEY (`id_retort`),
  ADD KEY `retorts_id_wellinfo_foreign` (`id_wellinfo`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `warning`
--
ALTER TABLE `warning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warning_code_warning_index` (`code_warning`),
  ADD KEY `warning_status_warning_index` (`status_warning`);

--
-- Indeks untuk tabel `wellinfo`
--
ALTER TABLE `wellinfo`
  ADD PRIMARY KEY (`id_wellinfo`),
  ADD KEY `wellinfo_id_project_foreign` (`id_project`);

--
-- Indeks untuk tabel `xusers`
--
ALTER TABLE `xusers`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `additional`
--
ALTER TABLE `additional`
  MODIFY `id_add` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `assets_list`
--
ALTER TABLE `assets_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `cuttingsbypassed`
--
ALTER TABLE `cuttingsbypassed`
  MODIFY `id_cuttingbypassed` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `dailywaste`
--
ALTER TABLE `dailywaste`
  MODIFY `id_dailywaste` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `desanders`
--
ALTER TABLE `desanders`
  MODIFY `id_desander` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `desilters`
--
ALTER TABLE `desilters`
  MODIFY `id_desilter` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id_details` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `inspection_category`
--
ALTER TABLE `inspection_category`
  MODIFY `id_inspection` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `inspection_detail`
--
ALTER TABLE `inspection_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id_personnel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pm_categories`
--
ALTER TABLE `pm_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `pm_data`
--
ALTER TABLE `pm_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pm_details`
--
ALTER TABLE `pm_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pm_detail_category`
--
ALTER TABLE `pm_detail_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id_project` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `retorts`
--
ALTER TABLE `retorts`
  MODIFY `id_retort` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `warning`
--
ALTER TABLE `warning`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wellinfo`
--
ALTER TABLE `wellinfo`
  MODIFY `id_wellinfo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `xusers`
--
ALTER TABLE `xusers`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `additional`
--
ALTER TABLE `additional`
  ADD CONSTRAINT `additional_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `assets_list`
--
ALTER TABLE `assets_list`
  ADD CONSTRAINT `assets_list_id_pm_category_foreign` FOREIGN KEY (`id_pm_category`) REFERENCES `pm_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cuttingsbypassed`
--
ALTER TABLE `cuttingsbypassed`
  ADD CONSTRAINT `cuttingsbypassed_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dailywaste`
--
ALTER TABLE `dailywaste`
  ADD CONSTRAINT `dailywaste_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `desanders`
--
ALTER TABLE `desanders`
  ADD CONSTRAINT `desanders_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `desilters`
--
ALTER TABLE `desilters`
  ADD CONSTRAINT `desilters_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `fk_details_wellinfo` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pm_data`
--
ALTER TABLE `pm_data`
  ADD CONSTRAINT `pm_data_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `pm_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pm_data_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `xusers` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pm_details`
--
ALTER TABLE `pm_details`
  ADD CONSTRAINT `pm_details_id_asset_list_foreign` FOREIGN KEY (`id_asset_list`) REFERENCES `assets_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pm_details_id_pm_detail_category_foreign` FOREIGN KEY (`id_pm_detail_category`) REFERENCES `pm_detail_category` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `retorts`
--
ALTER TABLE `retorts`
  ADD CONSTRAINT `retorts_id_wellinfo_foreign` FOREIGN KEY (`id_wellinfo`) REFERENCES `wellinfo` (`id_wellinfo`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wellinfo`
--
ALTER TABLE `wellinfo`
  ADD CONSTRAINT `wellinfo_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id_project`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
