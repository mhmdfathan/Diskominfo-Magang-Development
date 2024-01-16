-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 04:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi_magang_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refreshTokens` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `password`, `refreshTokens`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin1', 'Admin1', '$2a$12$EzfSRYTdVR9DroSUClbuXeoF0WuxshMhHxHw65.mmQVq8P/TPE7L.', NULL, '2023-10-27 01:25:13', '2023-10-27 01:25:13'),
(29, 'adminAjg', 'ajg123', '$2a$10$OASPHhfb1QEQKfaXVk22QOcyHzfIuVFeCGCczA9nMLxsmBIeaqRiK', NULL, '2024-01-16 03:28:56', '2024-01-16 03:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_magangs`
--

CREATE TABLE `peserta_magangs` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `asal_univ` varchar(255) DEFAULT NULL,
  `asal_jurusan` varchar(255) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refreshTokens` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta_magangs`
--

INSERT INTO `peserta_magangs` (`id`, `nama`, `asal_univ`, `asal_jurusan`, `tanggal_mulai`, `tanggal_selesai`, `status_aktif`, `username`, `password`, `refreshTokens`, `createdAt`, `updatedAt`) VALUES
(8, 'Yosia', 'UNDIP', 'Komputer', '2023-10-27', '2023-11-30', 0, 'yosiaxxxx', '$2a$10$ThyIArm8vWC3DUCMJi6CYeG9bICRfGj0Oj4GQ0lHu6VS7LhQVCslq', NULL, '2023-10-27 10:21:55', '2023-11-09 17:58:04'),
(11, 'Abdul Jawar 6', 'UNDIP', 'Komputer', '2023-10-28', '2023-12-09', 0, 'yosia1234xxx', '$2a$10$BNAXCJqkFe3xqBwarRO7S.42wOWAFsRtBeT3Gpyqfn04aRrTDrdlm', NULL, '2023-10-27 13:04:02', '2024-01-15 03:09:53'),
(12, 'Abdul Jawar', 'UNDIP', 'Komputer', '2023-10-01', '2023-11-02', 0, 'yosia123323', '$2a$10$X9A1qpp4MtkOLyqbiufmxuV0.YIyJ66Iimi856oxyyUyhCDgDkxJO', NULL, '2023-10-27 19:37:53', '2023-11-10 00:55:59'),
(145, 'Liam White', 'Stanford', 'Biologi', '2025-01-13', '2025-01-18', 1, 'liam_176', '734', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Mia Clark', 'Harvard', 'Ilmu Komputer', '2025-01-18', '2025-01-23', 1, 'mia_177', '294', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Olivia Adams', 'Yale', 'Psikologi', '2025-01-28', '2025-02-02', 1, 'olivia_179', '531', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Patrick Davis', 'Princeton', 'Ilmu Politik', '2025-02-02', '2025-02-07', 1, 'patrick_180', '971', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Abdul Jawar 1111', 'UNDIP', 'Komputer', '2023-11-15', '2023-12-09', 0, 'mb1233333', '$2a$10$j.R/xdmYkV/tkyBav71PZ.JUbFLG7iT9KTMnc8OUFOMmb7zyzeWWu', NULL, '2023-11-03 16:27:51', '2024-01-15 03:09:53'),
(157, 'Abdul Jawar 999', 'UNDIP', 'Komputer', '2023-11-04', '2023-11-05', 0, 'mbstar12345', '$2a$10$UxyTS5psFvuFNBB/hJB9ae.L88vZhUef5D1AzEx6pkAZxxZrcmSwm', NULL, '2023-11-04 23:45:10', '2023-11-06 12:06:01'),
(158, 'Abdul Jawar 1111111', 'UNDIP', 'Komputer', '2023-11-01', '2023-11-07', 0, 'mbstar123456789', '$2a$10$z00HUYBQFz0O3Qzv3XfkkutbuenZXUY10AQyngeivZxTsWzIehMBe', NULL, '2023-11-04 23:46:50', '2023-11-09 18:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `presensis`
--

CREATE TABLE `presensis` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `image_url_in` varchar(255) DEFAULT NULL,
  `image_url_out` varchar(255) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensis`
--

INSERT INTO `presensis` (`id`, `tanggal`, `check_in`, `check_out`, `image_url_in`, `image_url_out`, `p_id`, `createdAt`, `updatedAt`) VALUES
(89, '2023-10-27', '2023-10-30 08:00:00', NULL, 'http://localhost:3000/uploads/1696123852384.JPG', NULL, 8, '2023-10-27 10:21:55', '2023-10-27 10:21:55'),
(90, '2023-10-30', '2023-10-30 00:59:59', NULL, 'http://localhost:3000/uploads/1698636344085.jpeg', NULL, 8, '2023-10-27 10:21:55', '2023-10-30 03:25:44'),
(91, '2023-10-31', NULL, NULL, NULL, NULL, 8, '2023-10-27 10:21:55', '2023-10-27 10:21:55'),
(98, '2023-10-30', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(99, '2023-10-31', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(100, '2023-11-01', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(101, '2023-11-02', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(102, '2023-11-03', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(103, '2023-11-06', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(104, '2023-11-07', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(105, '2023-11-08', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(106, '2023-11-09', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(107, '2023-11-10', NULL, NULL, NULL, NULL, 11, '2023-10-27 13:04:02', '2023-10-27 13:04:02'),
(112, '2023-10-02', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(113, '2023-10-03', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(114, '2023-10-04', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(115, '2023-10-05', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(116, '2023-10-06', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(117, '2023-10-09', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(118, '2023-10-10', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(119, '2023-10-11', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(120, '2023-10-12', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(121, '2023-10-13', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(122, '2023-10-16', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(123, '2023-10-17', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(124, '2023-10-18', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(125, '2023-10-19', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(126, '2023-10-20', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(127, '2023-10-23', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(128, '2023-10-24', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(129, '2023-10-25', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(130, '2023-10-26', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(131, '2023-10-27', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(132, '2023-10-30', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(133, '2023-10-31', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(134, '2023-11-01', NULL, NULL, NULL, NULL, 12, '2023-10-27 19:37:53', '2023-10-27 19:37:53'),
(143, '2023-11-15', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(144, '2023-11-16', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(145, '2023-11-17', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(146, '2023-11-20', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(147, '2023-11-21', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(148, '2023-11-22', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(149, '2023-11-23', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(150, '2023-11-24', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(151, '2023-11-27', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(152, '2023-11-28', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(153, '2023-11-29', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(154, '2023-11-30', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(155, '2023-12-01', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(156, '2023-12-04', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(157, '2023-12-05', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(158, '2023-12-06', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(159, '2023-12-07', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(160, '2023-12-08', NULL, NULL, NULL, NULL, 155, '2023-11-03 16:27:51', '2023-11-03 16:27:51'),
(177, '2023-11-01', NULL, NULL, NULL, NULL, 158, '2023-11-04 23:46:50', '2023-11-04 23:46:50'),
(178, '2023-11-02', NULL, NULL, NULL, NULL, 158, '2023-11-04 23:46:50', '2023-11-04 23:46:50'),
(179, '2023-11-03', NULL, NULL, NULL, NULL, 158, '2023-11-04 23:46:50', '2023-11-04 23:46:50'),
(180, '2023-11-01', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(181, '2023-11-02', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(182, '2023-11-03', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(183, '2023-11-06', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(184, '2023-11-07', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(185, '2023-11-08', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(186, '2023-11-09', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(187, '2023-11-10', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(188, '2023-11-13', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(189, '2023-11-14', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(190, '2023-11-15', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(191, '2023-11-16', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(192, '2023-11-17', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(193, '2023-11-20', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(194, '2023-11-21', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(195, '2023-11-22', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(196, '2023-11-23', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(197, '2023-11-24', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(198, '2023-11-27', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(199, '2023-11-28', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(200, '2023-11-29', NULL, NULL, NULL, NULL, 8, '2023-11-09 17:02:01', '2023-11-09 17:02:01'),
(201, '2023-11-13', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(202, '2023-11-14', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(203, '2023-11-15', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(204, '2023-11-16', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(205, '2023-11-17', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(206, '2023-11-20', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(207, '2023-11-21', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(208, '2023-11-22', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(209, '2023-11-23', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(210, '2023-11-24', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(211, '2023-11-27', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(212, '2023-11-28', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(213, '2023-11-29', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:02:22', '2023-11-09 17:02:22'),
(214, '2023-11-30', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(215, '2023-12-01', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(216, '2023-12-04', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(217, '2023-12-05', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(218, '2023-12-06', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(219, '2023-12-07', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(220, '2023-12-08', NULL, NULL, NULL, NULL, 11, '2023-11-09 17:58:18', '2023-11-09 17:58:18'),
(221, '2023-11-06', NULL, NULL, NULL, NULL, 158, '2023-11-09 18:07:35', '2023-11-09 18:07:35'),
(222, '2023-11-07', NULL, NULL, NULL, NULL, 158, '2023-11-09 18:07:35', '2023-11-09 18:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230917090945-create-peserta-magang.js'),
('20230917091615-create-admin.js'),
('20230917091836-create-presensi.js'),
('20230917092231-create-tugas.js'),
('20230917093126-create-status-tugas.js');

-- --------------------------------------------------------

--
-- Table structure for table `status_tugas`
--

CREATE TABLE `status_tugas` (
  `id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `tugas_url` varchar(255) DEFAULT NULL,
  `status_pengerjaan` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_tugas`
--

INSERT INTO `status_tugas` (`id`, `p_id`, `t_id`, `tugas_url`, `status_pengerjaan`, `createdAt`, `updatedAt`) VALUES
(1, 8, 1, 'http://localhost:3000/uploads/1696123852384.JPG', 1, '2023-10-28 10:44:22', '2023-10-28 10:44:22'),
(2, 11, 1, 'http://localhost:3000/uploads/1696123852384.JPG', 1, '2023-10-28 10:44:22', '2023-10-28 10:44:22'),
(3, 12, 1, NULL, 0, '2023-10-28 10:44:22', '2023-10-28 10:44:22'),
(4, 8, 2, 'http://localhost:3000/uploads/1696123852384.JPG', 1, '2023-10-28 10:45:09', '2023-10-28 10:45:09'),
(5, 11, 2, NULL, 0, '2023-10-28 10:45:09', '2023-10-28 10:45:09'),
(6, 12, 2, NULL, 0, '2023-10-28 10:45:09', '2023-10-28 10:45:09'),
(7, 8, 3, NULL, 0, '2023-10-28 10:45:38', '2023-10-28 10:45:38'),
(8, 11, 3, 'http://localhost:3000/uploads/1696123852384.JPG', 1, '2023-10-28 10:45:38', '2023-10-28 10:45:38'),
(9, 12, 3, NULL, 0, '2023-10-28 10:45:38', '2023-10-28 10:45:38'),
(10, 8, 4, NULL, 0, '2023-10-28 12:28:09', '2023-10-28 12:28:09'),
(11, 11, 4, NULL, 0, '2023-10-28 12:28:09', '2023-10-28 12:28:09'),
(12, 12, 4, NULL, 0, '2023-10-28 12:28:09', '2023-10-28 12:28:09'),
(13, 8, 5, NULL, 0, '2023-10-29 03:16:51', '2023-10-29 03:16:51'),
(14, 11, 5, NULL, 0, '2023-10-29 03:16:51', '2023-10-29 03:16:51'),
(15, 12, 5, NULL, 0, '2023-10-29 03:16:51', '2023-10-29 03:16:51'),
(16, 8, 6, NULL, 0, '2023-10-29 03:17:31', '2023-10-29 03:17:31'),
(17, 11, 6, NULL, 0, '2023-10-29 03:17:31', '2023-10-29 03:17:31'),
(18, 12, 6, NULL, 0, '2023-10-29 03:17:31', '2023-10-29 03:17:31'),
(19, 8, 7, NULL, 0, '2023-10-29 03:17:35', '2023-10-29 03:17:35'),
(20, 11, 7, NULL, 0, '2023-10-29 03:17:35', '2023-10-29 03:17:35'),
(21, 12, 7, NULL, 0, '2023-10-29 03:17:35', '2023-10-29 03:17:35'),
(22, 8, 8, NULL, 0, '2023-10-29 03:17:39', '2023-10-29 03:17:39'),
(23, 11, 8, NULL, 0, '2023-10-29 03:17:39', '2023-10-29 03:17:39'),
(24, 12, 8, NULL, 0, '2023-10-29 03:17:39', '2023-10-29 03:17:39'),
(25, 8, 9, NULL, 0, '2023-10-29 03:23:23', '2023-10-29 03:23:23'),
(26, 11, 9, NULL, 0, '2023-10-29 03:23:23', '2023-10-29 03:23:23'),
(27, 12, 9, NULL, 0, '2023-10-29 03:23:23', '2023-10-29 03:23:23'),
(28, 11, 3, 'http://localhost:3000/uploads/1696123852384.JPG', 1, '2023-10-28 10:45:38', '2023-10-28 10:45:38'),
(29, 11, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23'),
(30, 145, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23'),
(31, 146, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23'),
(32, 148, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23'),
(33, 149, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23'),
(34, 155, 10, NULL, 0, '2023-11-10 01:21:23', '2023-11-10 01:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tugas_url` varchar(255) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `judul`, `tugas_url`, `dueDate`, `createdAt`, `updatedAt`) VALUES
(1, 'Survei', 'www.kucingpoi.com isi survei dilink berikut', '0000-00-00 00:00:00', '2023-10-28 10:44:22', '2023-10-28 10:44:22'),
(2, 'Survei', 'www.kucingpoi.com isi survei dilink berikut', '0000-00-00 00:00:00', '2023-10-28 10:45:09', '2023-10-28 10:45:09'),
(3, 'Survei', 'www.kucingpoi.com isi survei dilink berikut', '2023-10-30 23:59:59', '2023-10-28 10:45:38', '2023-10-28 10:45:38'),
(4, 'Abdul Jawar', 'www', '2023-10-31 12:28:00', '2023-10-28 12:28:09', '2023-10-28 12:28:09'),
(5, 'Abdul Jawar', 'www', '2023-10-30 23:59:00', '2023-10-29 03:16:51', '2023-10-29 03:16:51'),
(6, 'Abdul Jawar', 'www', '2023-10-30 23:59:00', '2023-10-29 03:17:31', '2023-10-29 03:17:31'),
(7, 'Abdul Jawar', 'www', '2023-10-30 23:59:00', '2023-10-29 03:17:35', '2023-10-29 03:17:35'),
(8, 'Abdul Jawar', 'www', '2023-10-30 23:59:00', '2023-10-29 03:17:39', '2023-10-29 03:17:39'),
(9, 'Abdul', 'www', '2023-10-31 16:59:00', '2023-10-29 03:23:23', '2023-10-29 03:23:23'),
(10, 'Abdul', 'www', '2023-11-30 16:00:00', '2023-11-10 01:21:23', '2023-11-10 01:21:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_magangs`
--
ALTER TABLE `peserta_magangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `status_tugas`
--
ALTER TABLE `status_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `peserta_magangs`
--
ALTER TABLE `peserta_magangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `status_tugas`
--
ALTER TABLE `status_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `presensis`
--
ALTER TABLE `presensis`
  ADD CONSTRAINT `presensis_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `peserta_magangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status_tugas`
--
ALTER TABLE `status_tugas`
  ADD CONSTRAINT `status_tugas_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `peserta_magangs` (`id`),
  ADD CONSTRAINT `status_tugas_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `tugas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
