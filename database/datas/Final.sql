-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 09:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bof_sims`
--

-- --------------------------------------------------------

--
-- Table structure for table `booknotesheets`
--

CREATE TABLE `booknotesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookOpenDate` date NOT NULL,
  `bookCloseDate` date DEFAULT NULL,
  `bookDescription` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booknotesheets`
--

INSERT INTO `booknotesheets` (`id`, `bookName`, `bookNumber`, `bookOpenDate`, `bookCloseDate`, `bookDescription`, `created_at`, `updated_at`) VALUES
(11, 'কম্পিউটার সফটওয়্যার এর বাজেট', '৪১১৩৩০১', '2021-02-01', NULL, 'কম্পিউটার সফটওয়্যার  ৪১১৩৩০১  এক্সপেন্স বিবরণী রেজিস্টার এ ০১ হতে ৯২ পর্যন্ত মোট ৯২ টি পাতা রয়েছে এবং প্রতিটি পাতায় অনুস্বাক্ষর রয়েছে', '2022-02-26 19:34:46', '2022-03-09 19:55:00'),
(12, 'বিওএফ প্রাইভেট ফান্ড এর বাজেট', '--------', '2021-02-01', NULL, 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী রেজিস্টারে ০১ হতে ৯২ পর্যন্ত মোট ৯২ টি পাতা রয়েছে এবং প্রতিটি পাতায় অনুসাক্ষর  রয়েছে', '2022-02-26 20:23:59', '2022-03-09 19:58:08'),
(13, 'কম্পিউটার আনুষঙ্গিক এর বাজেট', '৪১১২২০২', '2021-02-01', NULL, 'বিওএফ কম্পিউটার ও আনুষঙ্গিক এর ব্যয় বিবরণী রেজিস্টারে ০১ হতে ৯২ পর্যন্ত মোট ৯২ টি পাতা রয়েছে এবং প্রতিটি পাতায় অনুসাক্ষর  রয়েছে', '2022-02-26 23:32:23', '2022-03-09 19:58:45'),
(14, 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর বাজেট', '-------------', '2021-02-01', NULL, 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী রেজিস্টারে ০১ হতে ৯২ পর্যন্ত মোট ৯২ টি পাতা রয়েছে এবং প্রতিটি পাতায় অনুসাক্ষর  রয়েছে', '2022-02-27 00:02:52', '2022-03-09 19:58:58');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Apple', '2021-08-30 23:08:47', '2021-08-30 23:08:47'),
(14, 'HP', '2021-08-30 23:08:52', '2021-08-30 23:08:52'),
(15, 'Delux', '2021-08-30 23:09:32', '2021-08-30 23:09:32'),
(16, 'General', '2021-08-30 23:09:38', '2021-08-30 23:09:38'),
(17, 'Space', '2021-08-30 23:09:51', '2021-08-30 23:09:51'),
(18, 'Transnet', '2021-08-30 23:09:59', '2021-08-30 23:09:59'),
(19, 'Ultra', '2021-08-30 23:10:20', '2021-08-30 23:10:20'),
(20, 'LG Chasis', '2021-08-30 23:10:33', '2021-08-30 23:10:33'),
(21, 'Segotep', '2021-08-30 23:10:42', '2021-08-30 23:10:42'),
(22, 'Work Station', '2021-08-30 23:10:56', '2021-10-04 22:36:56'),
(23, 'OVO', '2021-08-30 23:11:05', '2021-08-30 23:11:05'),
(24, 'Digital', '2021-08-30 23:11:12', '2021-08-30 23:11:12'),
(25, 'XLAB', '2021-08-30 23:11:26', '2021-08-30 23:11:26'),
(26, 'Pro Desk', '2021-08-30 23:11:49', '2021-08-30 23:11:49'),
(27, 'A0 Tech', '2021-08-30 23:11:58', '2021-08-30 23:11:58'),
(28, 'HP Pro', '2021-08-30 23:13:01', '2021-08-30 23:13:01'),
(29, 'Vallue top', '2021-08-30 23:13:09', '2021-08-30 23:13:09'),
(30, 'Epson', '2021-08-30 23:27:15', '2021-08-30 23:27:15'),
(31, 'LBP', '2021-08-30 23:27:38', '2021-08-30 23:27:38'),
(32, 'Toshiba', '2021-08-30 23:27:56', '2021-08-30 23:27:56'),
(33, 'M402-dn', '2021-08-30 23:29:31', '2021-08-30 23:29:31'),
(34, 'Toshiba-estud', '2021-08-30 23:29:53', '2021-08-30 23:29:53'),
(35, 'Samsung', '2021-08-30 23:30:51', '2021-08-30 23:30:51'),
(36, 'Laser Jet Pro', '2021-08-30 23:31:06', '2021-08-30 23:31:06'),
(37, 'Canon', '2021-08-30 23:31:20', '2021-08-30 23:31:20'),
(38, 'Fuzitsu', '2021-08-30 23:59:53', '2021-08-30 23:59:53'),
(39, 'DELL', '2021-08-31 00:05:11', '2021-08-31 00:05:11'),
(40, 'ASUS', '2021-08-31 00:24:18', '2021-08-31 00:24:18'),
(41, 'CSM', '2021-08-31 21:05:28', '2021-08-31 21:05:28'),
(47, 'Microtic', '2021-09-15 19:36:30', '2021-09-15 19:36:30'),
(48, 'Cisco', '2021-09-15 19:36:35', '2021-09-15 19:36:35'),
(49, 'Juniper', '2021-09-15 19:36:41', '2021-09-15 19:36:41'),
(51, 'Tenda', '2021-09-15 20:59:26', '2021-09-15 20:59:26'),
(52, 'TP-Link', '2021-09-15 21:08:06', '2021-09-15 21:08:06'),
(53, 'D-Link', '2021-09-15 21:08:11', '2021-09-15 21:08:11'),
(54, 'Vivanco', '2021-09-17 20:30:44', '2021-09-17 20:30:44'),
(55, 'Brother', '2021-09-17 20:43:57', '2021-09-17 20:43:57'),
(56, 'Intel', '2021-09-18 20:06:43', '2021-09-18 20:06:43'),
(57, 'Towinmos', '2021-09-20 20:24:34', '2021-09-20 20:24:34'),
(58, 'ADATA', '2021-09-20 20:26:51', '2021-09-20 20:26:51'),
(59, 'Transtic', '2021-09-20 20:27:05', '2021-09-20 20:27:05'),
(60, 'Targus', '2021-09-20 23:53:21', '2021-09-20 23:53:21'),
(61, 'Baseus', '2021-09-20 23:53:28', '2021-09-20 23:53:28'),
(62, 'Logitech', '2021-09-21 00:25:18', '2021-09-21 00:25:18'),
(63, 'Micropack', '2021-09-21 19:39:42', '2021-09-21 19:39:42'),
(64, 'HDMI', '2021-09-21 23:01:27', '2021-09-21 23:01:27'),
(65, 'A4 Tech', '2021-09-22 19:36:53', '2021-09-22 19:36:53'),
(66, 'TEST_BRAND', '2021-09-25 18:45:57', '2021-09-25 18:45:57'),
(67, 'Kaspersky', '2021-09-28 00:40:50', '2021-09-28 00:40:50'),
(68, 'AVIRA', '2021-09-28 00:41:07', '2021-09-28 00:41:07'),
(69, 'Hitachi', '2021-09-28 01:45:25', '2021-09-28 01:45:25'),
(70, 'Maxcell', '2021-09-28 01:45:45', '2021-09-28 01:45:45'),
(71, 'Philips', '2021-10-10 21:29:47', '2021-10-10 21:29:47'),
(72, 'Viewsonic', '2021-10-10 21:37:44', '2021-10-10 21:37:44'),
(73, 'Clone', '2021-10-10 21:41:39', '2021-10-10 21:41:39'),
(74, 'Nokia 106', '2021-10-29 19:24:45', '2021-10-29 19:24:45'),
(75, 'Pentium', '2021-11-14 00:17:54', '2021-11-14 00:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `cameradetails`
--

CREATE TABLE `cameradetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ictNo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cameraParentLoccation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specificLocationOfCamera` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cameraType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaultIpAddress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usedIpAddress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nvr` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cameradetails`
--

INSERT INTO `cameradetails` (`id`, `ictNo`, `cameraParentLoccation`, `specificLocationOfCamera`, `cameraType`, `defaultIpAddress`, `usedIpAddress`, `remarks`, `created_at`, `updated_at`, `nvr`) VALUES
(3, 'ICT-CC0068', 'Zahurul Islam Gate', 'Zah. Islam gate Inward', 'PTZ', '192.168. 0.100', '192.168.9.103', NULL, '2021-10-27 01:09:28', '2021-11-13 19:42:48', 'ICT-NVR0002'),
(4, 'ICT-CC0002', 'Zahurul Islam Gate', 'Zah. Islam gate outward', 'PTZ', '192.168. 0.100', '192.168.9.68', NULL, '2021-10-27 01:09:28', '2021-11-13 19:43:03', 'ICT-NVR0002'),
(5, 'ICT-CC0074', 'Zahurul Islam Gate', 'Zah. Islam gate Off. In', 'Bullet', '192.168.1.250', '172.20.1.11', NULL, '2021-10-27 01:09:28', '2021-11-13 20:30:12', 'ICT-NVR0003'),
(6, 'ICT-CC0072', 'Zahurul Islam Gate', 'Zah. Islam gate Off. Out', 'Bullet(CP Plus)', '192.168.1.250', '172.20.1.247', NULL, '2021-10-27 01:09:28', '2021-11-13 19:39:46', 'ICT-NVR0003'),
(7, 'ICT-CC0080', 'Zahurul Islam Gate', 'Zah. Islam gate male In', 'Bullet', '192.168.1.250', '172.20.1.20', NULL, '2021-10-27 01:09:28', '2021-11-13 21:06:40', 'ICT-NVR0003'),
(8, 'ICT-CC0071', 'Zahurul Islam Gate', 'Zah. Islam gate male Out', 'Bullet(CP Plus)', '192.168.1.250', '172.20.1.248', NULL, '2021-10-27 01:09:28', '2021-11-13 19:40:04', 'ICT-NVR0003'),
(9, 'ICT-CC0006', 'Zahurul Islam Gate', 'Zah. Islam gate female In', 'Bullet(Acti)', '192.168.0.100', '192.168.9.58', NULL, '2021-10-27 01:09:28', '2021-11-13 19:55:45', 'ICT-NVR0002'),
(10, 'ICT-CC0011', 'Zahurul Islam Gate', 'Zah. Islam gate female Out', 'Bullet(Acti)', '192.168.0.100', 'N/A', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(11, 'ICT-CC0007', 'Zahurul Islam Gate', 'Zah. Islam gate Locker Box', 'Bullet(Acti)', '192.168.0.100', '192.168.9.50', NULL, '2021-10-27 01:09:28', '2021-11-13 19:52:51', 'ICT-NVR0002'),
(12, 'ICT-CC0081', 'Zahurul Islam Gate', 'Zah. Islam gate female Varanda', 'Bullet', '192.168.1.250', '172.20.1.21', NULL, '2021-10-27 01:09:28', '2021-11-14 21:11:39', 'ICT-NVR0003'),
(13, 'ICT-CC0014', 'Zahurul Islam Gate', 'Zah. Islam gate Vehicles Out', 'Bullet(Acti)', '192.168.0.100', '192.168.9.52', NULL, '2021-10-27 01:09:28', '2021-11-13 19:53:09', 'ICT-NVR0002'),
(14, 'ICT-CC0004', 'Samarastra Gate', 'Samarastra Gate out', 'PTZ', '192.168. 0.100', '192.168.9.205', NULL, '2021-10-27 01:09:28', '2021-11-13 19:56:26', 'ICT-NVR0002'),
(15, 'ICT-CC0005', 'Samarastra Gate', 'Samarastra Gate in', 'PTZ', '192.168. 0.100', '192.168.9.208', NULL, '2021-10-27 01:09:28', '2021-11-13 19:56:42', 'ICT-NVR0002'),
(16, 'ICT-CC0009', 'Samarastra Gate ', 'Samarastra gate before museum', 'Bullet(Acti)', '192.168.0.100', 'N/A', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(17, 'ICT-CC0015', 'Samarastra Gate', 'Samarastra gate before mainroad', 'Bullet(Acti)', '192.168.0.100', '192.168.9.39', NULL, '2021-10-27 01:09:28', '2021-11-13 19:57:02', 'ICT-NVR0002'),
(18, 'ICT-CC0016', 'Samarastra Gate', 'Samarastra gate Pocket In', 'Bullet(Acti)', '192.168.0.100', '192.168.9.125', NULL, '2021-10-27 01:09:28', '2021-11-13 19:57:20', 'ICT-NVR0002'),
(19, 'ICT-CC0017', 'Samarastra Gate', 'Samarastra gate Pocket Out', 'Bullet(Acti)', '192.168.0.100', '192.168.9.26', NULL, '2021-10-27 01:09:28', '2021-11-13 19:57:37', 'ICT-NVR0002'),
(20, 'ICT-CC0025', 'Naimul Islam Gate', 'Naimul Islam Gate Pocket inside', 'Bullet(Acti)', '192.168.0.100', '192.168.9.29', NULL, '2021-10-27 01:09:28', '2021-11-13 20:02:48', 'ICT-NVR0002'),
(21, 'ICT-CC0026', 'Naimul Islam Gate', 'Naimul Islam Gate inside', 'Bullet(Acti)', '192.168.0.100', '192.168.9.27', NULL, '2021-10-27 01:09:28', '2021-11-13 20:00:15', 'ICT-NVR0002'),
(22, 'ICT-CC0027', 'Naimul Islam Gate', 'Naimul Islam Gate outside', 'Bullet(Acti)', '192.168.0.100', '192.168.9.169', NULL, '2021-10-27 01:09:28', '2021-11-13 20:00:55', 'ICT-NVR0002'),
(23, 'ICT-CC0028', 'Naimul Islam Gate', 'Naimul Islam Gate inside Yard', 'Bullet(Acti)', '192.168. 0.100', '192.168.9.93', NULL, '2021-10-27 01:09:28', '2021-11-13 20:02:07', 'ICT-NVR0002'),
(24, 'ICT-CC0021', 'Arsenal Gate', 'Arsenal Gate West', 'Bullet(Acti)', '192.168.0.100', '192.168.9.67', NULL, '2021-10-27 01:09:28', '2021-11-13 20:18:29', 'ICT-NVR0002'),
(25, 'ICT-CC0022', 'Arsenal Gate', 'Arsenal Gate Outward', 'Bullet(Acti)', '192.168.0.100', '192.168.9.22', NULL, '2021-10-27 01:09:28', '2021-11-13 20:18:38', 'ICT-NVR0002'),
(26, 'ICT-CC0023', 'Arsenal Gate', 'Arsenal Gate Outward-2', 'Bullet(Acti)', '192.168.0.100', '192.168.9.21', NULL, '2021-10-27 01:09:28', '2021-11-13 20:18:58', 'ICT-NVR0002'),
(27, 'ICT-CC0024', 'Arsenal Gate', 'Arsenal Gate Inward-1', 'Bullet(Acti)', '192.168.0.100', '192.168.9.65', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:06', 'ICT-NVR0002'),
(28, 'ICT-CC0058', 'Muitions Gate', 'Muitions Gate East', 'Bullet(Acti)', '192.168.0.100', '192.168.9.61', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:15', 'ICT-NVR0002'),
(29, 'ICT-CC0018', 'Reception', 'Reception', 'Bullet(Acti)', '192.168.0.100', '192.168.9.34', NULL, '2021-10-27 01:09:28', '2021-12-12 19:11:21', 'ICT-NVR0002'),
(30, 'ICT-CC0013', 'Ration Store', 'Ration Store', 'Bullet', 'N/A', '192.168.9.159', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:30', 'ICT-NVR0002'),
(31, 'ICT-CC0019', 'DA Gate', 'DA Gate In', 'Bullet', 'N/A', '192.168.9.181', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:36', 'ICT-NVR0002'),
(32, 'ICT-CC0020', 'DA Gate', 'DA Gate Out', 'Bullet(Acti)', '192.168.0.100', '192.168.9.149', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:44', 'ICT-NVR0002'),
(33, 'ICT-CC0029', 'RM Shops', 'RM-1', 'Bullet(Acti)', '192.168.0.100', '192.168.9.15', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:50', 'ICT-NVR0002'),
(34, 'ICT-CC0003', 'RM Shops', 'RM-1 Center West', 'Bullet(Acti)', '192.168.0.100', 'N/A', NULL, '2021-10-27 01:09:28', '2021-11-13 20:19:57', 'ICT-NVR0002'),
(35, 'ICT-CC0030', 'RM Shops', 'RM 2 East', 'Bullet(Acti)', '192.168.0.100', '192.169.9.157', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:03', 'ICT-NVR0002'),
(36, 'ICT-CC0031', 'RM Shops', 'RM-1 WN Gate', 'Bullet(Acti)', '192.168.0.100', '192.168.9.12', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:15', 'ICT-NVR0002'),
(37, 'ICT-CC0032', 'RM Shops', 'RM-2 Assembly', 'Bullet(Acti)', '192.168.0.100', '192.168.9.156', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:24', 'ICT-NVR0002'),
(38, 'ICT-CC0033', 'RM Shops', 'Channel-42(RM-2 Assembly Gate)', 'Bullet(Acti)', '192.168.0.100', '192.168.9.155', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:32', 'ICT-NVR0002'),
(39, 'ICT-CC0034', 'RM Shops', 'RM-3-1', 'Bullet(Acti)', '192.168.0.100', '192.168.9.14', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:39', 'ICT-NVR0002'),
(40, 'ICT-CC0035', 'RM Shops', 'RM-3', 'Bullet(Acti)', '192.168.0.100', '192.168.9.13', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:46', 'ICT-NVR0002'),
(41, 'ICT-CC0036', 'Store', 'Store-5', 'Bullet(Acti)', '192.168.0.100', '192.168.9.19', NULL, '2021-10-27 01:09:28', '2021-11-13 20:20:54', 'ICT-NVR0002'),
(42, 'ICT-CC0037', 'Store', 'Store Gate', 'Bullet(Acti)', '192.168.0.100', '192.168.9.35', NULL, '2021-10-27 01:09:28', '2021-11-13 20:21:02', 'ICT-NVR0002'),
(43, 'ICT-CC0038', 'Store', 'Channel-43(Store-1 gate)', 'Bullet(Acti)', '192.168.0.100', '192.168.9.32', NULL, '2021-10-27 01:09:28', '2021-11-13 20:21:09', 'ICT-NVR0002'),
(44, 'ICT-CC0039', 'Hanger', 'Channel-44(Store Hanger-7)', 'Bullet(Acti)', '192.168.0.100', '192.168.9.20', NULL, '2021-10-27 01:09:28', '2021-11-13 20:21:15', 'ICT-NVR0002'),
(45, 'ICT-CC0040', 'GEBF', 'GEBF', 'Bullet(Acti)', '192.168.0.100', '192.168.9.17', NULL, '2021-10-27 01:09:28', '2021-11-13 20:21:20', 'ICT-NVR0002'),
(46, 'ICT-CC0041', 'GEBF ', 'GEBF-Check In', 'Bullet(Acti)', '192.168.0.100', '192.168.9.145', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(47, 'ICT-CC0042', 'GEBF ', 'GEBF Filling', 'Bullet(Acti)', '192.168.0.100', '192.168.9.140', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(48, 'ICT-CC0043', 'GEBF ', 'GEBF Finishing', 'Bullet(Acti)', '192.168.0.100', '192.168.9.142', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(49, 'ICT-CC0044', 'GEBF ', 'GEBF Packing', 'Bullet(Acti)', '192.168.0.100', '192.168.9.141', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(50, 'ICT-CC0045', 'FP', 'FP-1 Inside-2', 'Bullet(Acti)', '192.168.0.100', '192.168.9.57', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(51, 'ICT-CC0046', 'FP', 'FP-1 Inside', 'Bullet(Acti)', '192.168.0.100', '192.168.9.56', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(52, 'ICT-CC0047', 'FP', 'FP-1 Corridor', 'Bullet(Acti)', '192.168.0.100', '192.168.9.51', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(53, 'ICT-CC0048', 'FP', 'Channel-58(FP-2 QCL)', 'Bullet(Acti)', '192.168.0.100', '192.168.9.54', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(54, 'ICT-CC0049', 'CM', 'Channel-59(Maint..)', 'Bullet(Acti)', '192.168.0.100', '192.168.9.55', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(55, 'ICT-CC0050', 'CC', 'CC-1-1', 'Bullet(Acti)', '192.168.0.100', '192.168.9.152', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(56, 'ICT-CC0051', 'CC', 'CC-2-1', 'Bullet(Acti)', '192.168.0.100', '192.168.9.151', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(57, 'ICT-CC0052', 'CC', 'CC-2-2', 'Bullet(Acti)', '192.168.0.100', '192.168.9.150', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(58, 'ICT-CC0054', 'CM', 'CM', 'Bullet(Acti)', '192.168.0.100', '192.168.9.105', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(59, 'ICT-CC0067', 'CM', 'CM South Gate', 'Bullet', 'N/A', 'N/A', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(60, 'ICT-CC0055', 'CTM', 'CM West', 'Bullet(Acti)', '192.168.0.100', '192.168.9.106', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(61, 'ICT-CC0053', 'CTM', 'CTM', 'Bullet(Acti)', '192.168.0.100', '192.168.9.11', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(62, 'ICT-CC0056', 'CTM', 'CTM East', 'Bullet(Acti)', '192.168.0.100', '192.168.9.109', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(63, 'ICT-CC0057', 'CTM', 'CTM ', 'Bullet(Acti)', '192.168.0.100', '192.168.9.110', NULL, '2021-10-27 01:09:28', '2021-10-27 01:09:28', NULL),
(64, 'ICT-CC0059', 'Bangabandhu Corner', 'Bangabandhu Corner West', 'Hik Vision', '192.168.1.64', '192.168.101.52', NULL, '2021-10-27 01:09:28', '2021-11-14 22:31:27', 'ICT-NVR0004'),
(65, 'ICT-CC0060', 'Bangabandhu Corner', 'Bangabandhu Corner East', 'Hik Vision', '192.168.1.64', '192.168.101.54', NULL, '2021-10-27 01:09:28', '2021-11-14 22:31:38', 'ICT-NVR0004'),
(66, 'ICT-CC0061', 'BOF Museum', 'Museum Inside', 'HIk Vision', '192.168.1.64', '192.168.101.11', NULL, '2021-10-27 01:09:28', '2021-11-14 22:30:37', 'ICT-NVR0004'),
(67, 'ICT-CC0062', 'BOF Museum', 'Museum Outdoor', 'HIk Vision', '192.168.1.64', '192.168.101.7', NULL, '2021-10-27 01:09:28', '2021-11-14 22:30:51', 'ICT-NVR0004'),
(68, 'ICT-CC0063', 'BOF Museum', 'Museum Inside-2', 'HIk Vision', '192.168.1.64', '192.168.101.13', NULL, '2021-10-27 01:09:28', '2021-11-14 22:31:02', 'ICT-NVR0004'),
(69, 'ICT-CC0064', 'BOF Museum', 'Museum main gate', 'HIk Vision', '192.168.1.64', '192.168.101.2', NULL, '2021-10-27 01:09:28', '2021-11-14 22:31:14', 'ICT-NVR0004'),
(70, 'ICT-CC0065', 'BOF Museum', 'Meseum Camera-2', 'HIk Vision', '192.168.1.64', '192.168.101.8', NULL, '2021-10-27 01:09:28', '2021-11-14 22:30:27', 'ICT-NVR0004'),
(71, 'ICT-CC0066', 'BOF Museum', 'Museum Inside Yard', 'HIk Vision', '192.168.1.64', '192.168.101.16', NULL, '2021-10-27 01:09:28', '2021-11-14 22:30:15', 'ICT-NVR0004'),
(72, 'ICT-CC0076', 'ICT Cell', 'Data Center ICT Cell', 'Bullet', '192.168.1.250', '172.20.1.14', NULL, '2021-10-31 00:07:54', '2021-11-09 01:07:45', 'ICT-NVR0005'),
(73, 'ICT-CC0078', 'ICT Cell', 'ICT Front Desk', 'Bullet', '192.168.1.250', '172.20.1.16', NULL, '2021-10-31 00:08:35', '2021-11-09 01:07:51', 'ICT-NVR0005'),
(74, 'ICT-CC0075', 'ICT Cell', 'Data Center Corridor ICT Cell', 'Bullet', '192.168.1.250', '172.20.1.12', NULL, '2021-11-03 00:27:50', '2021-11-09 01:07:56', 'ICT-NVR0005'),
(75, 'ICT-CC0073', 'ICT Cell', 'Server Room ICT Cell', 'Bullet', '192.168.1.250', '172.20.1.18', NULL, '2021-11-03 00:29:05', '2021-11-09 01:08:00', 'ICT-NVR0005'),
(76, 'ICT-CC0079', 'ICT Cell', 'DR Server Room', 'Bullet', '192.168.1.250', '172.20.1.17', NULL, '2021-11-03 00:30:37', '2021-11-09 01:07:34', 'ICT-NVR0005'),
(77, 'ICT-CC0077', 'ICT Cell', 'ICT Cell Corridor', 'Bullet', '192.168.1.250', '172.20.1.15', NULL, '2021-11-03 00:32:13', '2021-11-09 01:07:27', 'ICT-NVR0005'),
(78, 'ICT-CC0082', 'ICT Cell', 'ICT-CELL-STORE', 'Bullet', '192.168.1.250', '172.20.1.22', NULL, '2021-11-03 00:35:12', '2021-11-09 01:07:01', 'ICT-NVR0005'),
(81, 'ICT-CC0083', 'ICT Cell', 'ICT Cell Outdoor', 'Bullet', '192.168.1.250', '172.20.1.23', NULL, '2021-11-15 23:41:00', '2021-11-15 23:41:16', 'ICT-NVR0003'),
(82, 'ICT-CC0085', 'MODC', 'MODC Koth', 'Bullet', '192.168.1.108', '172.20.1.25', NULL, '2021-11-30 19:48:29', '2021-12-07 22:56:34', 'ICT-NVR0003'),
(83, 'ICT-CC0086', 'MODC', 'MODC Koth Office', 'Bullet', '192.168.1.108', '172.20.1.26', NULL, '2021-11-30 19:49:34', '2021-12-07 22:56:07', 'ICT-NVR0003'),
(84, 'ICT-CC0087', 'MODC', 'MODC Koth', 'Bullet', '192.168.1.108', '172.20.1.27', NULL, '2021-11-30 19:50:19', '2021-12-07 22:57:02', 'ICT-NVR0003'),
(85, 'ICT-CC0084', 'MODC', 'MODC Magazine Corridor', 'Bullet', '192.168.1.250', '172.20.1.24', NULL, '2021-11-30 19:52:12', '2021-12-13 00:28:16', 'ICT-NVR0003'),
(86, 'ICT-CC0089', 'MODC', 'MODC Koth Corridor', 'Bullet', '192.168.1.108', '192.168.9.235', NULL, '2021-11-30 19:53:01', '2021-12-07 22:57:51', 'ICT-NVR0003');

-- --------------------------------------------------------

--
-- Table structure for table `cameralocations`
--

CREATE TABLE `cameralocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locationName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locationDetails` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalCamera` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cameralocations`
--

INSERT INTO `cameralocations` (`id`, `locationName`, `locationDetails`, `totalCamera`, `created_at`, `updated_at`) VALUES
(2, 'ICT Cell', NULL, 2, '2021-10-31 00:05:39', '2021-10-31 00:05:39'),
(3, 'Zahurul Islam Gate', NULL, NULL, '2021-11-03 22:06:39', '2021-11-03 22:06:39'),
(4, 'Samarastra Gate', NULL, NULL, '2021-11-03 22:08:23', '2021-11-03 22:08:23'),
(5, 'Naimul Islam Gate', NULL, NULL, '2021-11-03 22:08:56', '2021-11-03 22:08:56'),
(6, 'Arsenal Gate', NULL, NULL, '2021-11-03 22:09:40', '2021-11-03 22:09:40'),
(7, 'Muitions Gate', NULL, NULL, '2021-11-03 22:10:02', '2021-11-03 22:10:02'),
(8, 'BOF Museum', NULL, NULL, '2021-11-03 22:13:42', '2021-11-03 22:13:42'),
(9, 'Bangabandhu Corner', NULL, NULL, '2021-11-03 22:14:22', '2021-11-03 22:14:22'),
(10, 'CTM', NULL, NULL, '2021-11-03 22:14:40', '2021-11-03 22:14:40'),
(11, 'CM', NULL, NULL, '2021-11-03 22:14:50', '2021-11-03 22:14:50'),
(12, 'CC', NULL, NULL, '2021-11-03 22:14:54', '2021-11-03 22:14:54'),
(13, 'FP', NULL, NULL, '2021-11-03 22:15:15', '2021-11-03 22:15:15'),
(14, 'GEBF', NULL, NULL, '2021-11-03 22:15:22', '2021-11-03 22:15:22'),
(15, 'Hanger', NULL, NULL, '2021-11-03 22:15:39', '2021-11-03 22:15:39'),
(16, 'Store', NULL, NULL, '2021-11-03 22:15:51', '2021-11-03 22:15:51'),
(17, 'RM Shops', NULL, NULL, '2021-11-03 22:16:01', '2021-11-03 22:16:01'),
(18, 'DA Gate', NULL, NULL, '2021-11-03 22:16:17', '2021-11-03 22:16:17'),
(19, 'Ration Store', NULL, NULL, '2021-11-03 22:16:27', '2021-11-03 22:16:27'),
(20, 'Reception', NULL, NULL, '2021-11-03 22:16:37', '2021-11-03 22:16:37'),
(21, 'MODC', NULL, 7, '2021-11-30 19:47:34', '2021-11-30 19:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Desktop', '2021-08-30 23:07:06', '2021-08-30 23:07:06'),
(9, 'Laptop', '2021-08-30 23:07:11', '2021-08-30 23:07:11'),
(10, 'Printer', '2021-08-30 23:07:16', '2021-08-30 23:07:16'),
(11, 'Workstation PC', '2021-08-31 21:22:14', '2021-08-31 21:22:14'),
(17, 'Router', '2021-09-15 19:34:53', '2021-09-15 19:34:53'),
(18, 'test Category', '2021-09-15 19:49:13', '2021-09-15 19:49:13'),
(19, 'Portable Hard Disk', '2021-09-15 22:37:59', '2021-09-15 22:37:59'),
(20, 'Internal Hard Disk', '2021-09-15 23:07:45', '2021-09-15 23:07:45'),
(21, 'Firewall', '2021-09-17 19:39:25', '2021-09-17 19:39:25'),
(22, 'Switch', '2021-09-17 19:42:56', '2021-09-17 19:42:56'),
(23, 'Server', '2021-09-17 20:20:11', '2021-09-17 20:20:11'),
(24, 'Rack', '2021-09-17 20:28:48', '2021-09-17 20:28:48'),
(26, 'Monitor', '2021-09-19 22:34:20', '2021-09-19 22:34:20'),
(27, 'Pendrive', '2021-09-20 20:21:39', '2021-09-20 20:21:39'),
(28, 'Pointer', '2021-09-20 23:49:10', '2021-09-20 23:49:10'),
(29, 'Webcamera', '2021-09-21 00:22:54', '2021-09-21 00:25:00'),
(30, 'Mouse', '2021-09-21 19:37:37', '2021-09-21 19:37:37'),
(31, 'SSD', '2021-09-21 21:26:48', '2021-09-21 21:26:48'),
(32, 'HDD Inclosoure', '2021-09-21 21:55:05', '2021-09-21 21:55:05'),
(33, 'Microsoft Office (Licensed)', '2021-09-21 22:06:29', '2021-09-21 22:06:29'),
(34, 'Mother Board', '2021-09-21 22:22:40', '2021-09-21 22:22:40'),
(35, 'Projector', '2021-09-21 23:00:31', '2021-09-21 23:00:31'),
(36, 'Projector-Screen', '2021-09-21 23:09:18', '2021-09-21 23:09:18'),
(37, 'RAM', '2021-09-21 23:18:45', '2021-09-21 23:18:45'),
(40, 'Keyboard', '2021-09-22 19:39:03', '2021-09-22 19:39:03'),
(41, 'Mouse Pad', '2021-09-22 22:39:40', '2021-09-22 22:39:40'),
(42, 'DVD/CD Disk', '2021-09-23 01:35:09', '2021-09-23 01:35:09'),
(43, 'UPS', '2021-09-24 19:18:47', '2021-09-24 19:18:47'),
(44, 'Multi Socket', '2021-09-24 21:27:21', '2021-09-24 21:27:21'),
(45, 'Power Supply', '2021-09-24 22:38:08', '2021-09-24 22:38:08'),
(46, 'CC Camera (High Resolution)', '2021-09-25 01:37:06', '2021-09-25 01:37:06'),
(47, 'TEST_CATEGORY', '2021-09-25 18:45:25', '2021-09-25 18:45:25'),
(48, 'Camera (IP)', '2021-09-25 20:51:29', '2021-09-25 20:51:29'),
(49, 'Bluetooth Earphone (china)', '2021-09-25 21:10:11', '2021-09-25 21:51:09'),
(50, 'Speaker (Wired)', '2021-09-25 21:21:26', '2021-09-25 21:21:26'),
(51, 'Photocopier', '2021-09-25 22:59:16', '2021-09-25 22:59:16'),
(52, 'Cable', '2021-09-26 00:17:22', '2021-09-29 00:23:55'),
(53, 'Fan(Cabling,Colling-Fan)', '2021-09-26 19:00:51', '2021-09-26 19:00:51'),
(54, 'Processor', '2021-09-26 19:25:24', '2021-09-26 19:25:24'),
(57, 'Antivirus', '2021-09-28 00:39:50', '2021-09-28 00:39:50'),
(58, 'Phone', '2021-09-28 22:04:04', '2021-09-28 22:04:04'),
(59, 'OTDR', '2021-09-28 23:01:24', '2021-09-28 23:01:24'),
(60, 'Microprocessor', '2021-11-21 19:55:19', '2021-11-21 19:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintDesignation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintReceiverName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolverTechnicianName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolutionDate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolutionDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `productName`, `product_id`, `date`, `time`, `complaintName`, `complaintDesignation`, `complaintDescription`, `complaintReceiverName`, `complaintSolverTechnicianName`, `complaintSolutionDate`, `complaintSolutionDescription`, `productStatus`, `ic`, `oic`, `created_at`, `updated_at`) VALUES
(29, 'D19225', 265, '2021-09-22', '11:20', 'Shahina Rahman', 'Acting Manager, R & D', 'Computer gets hang sometimes & slow', 'Forhad Hossain', 'Ashraf_tech', '2021-09-25', 'Windows Setup', 'Issued', NULL, NULL, '2021-10-03 19:17:20', '2021-10-03 19:17:20'),
(30, 'L-19028', 94, '2021-09-14', '11:30', 'DD Tajimul Islam', 'D D', 'Laptop is not charging properly , laptop is not start', 'Abdur Rahman', 'Abdur Rahman', '2021-09-18', 'Windows Setup   & Anti virus setup', 'Issued', NULL, NULL, '2021-10-03 19:21:36', '2021-10-03 19:21:36'),
(31, 'D19211', 167, '2021-09-21', '10:17', 'Abul Hashem', 'Godown Keeper', 'Operation system setup problem & computer is not opening', 'Abdur Rahman', 'Abdur Rahman', '2021-09-22', 'Windows Setup', 'Issued', NULL, NULL, '2021-10-03 19:23:24', '2021-10-03 19:23:24'),
(33, 'D19234', 282, '2021-09-16', '09:36', 'Nurul Alam', 'Sub Assistent Engineer', 'Computer is not opening', 'Abdur Rahman', 'Shiblu', '2021-10-16', 'Operating system setup', 'Issued', NULL, NULL, '2021-10-03 19:30:08', '2021-10-03 19:30:08'),
(34, 'DA11215', 1572, '2021-09-12', '07:11', 'Assistant Fire Officer', 'Assistant Fire Officer', 'Power switch proplem', 'Abdur Rahman', 'Abdur Rahman', '2021-09-15', 'power switch added', 'Issued', NULL, NULL, '2021-10-03 19:33:18', '2021-10-03 19:33:18'),
(35, 'D19268', 255, '2021-08-25', '11:50', 'Abdus Satter', 'Sub Assistent Engineer', 'Power Problem', 'Abdur Rahman', 'Shiblu', '2021-08-25', 'power problem solved', 'Issued', NULL, NULL, '2021-10-03 19:35:40', '2021-10-03 19:35:40'),
(36, 'D19188', 246, '2021-08-26', '09:30', 'Asad', 'Sub Assistent Engineer', 'Computer Problem', 'Mehedi', 'Shiblu', '2021-10-26', 'Operating system setup', 'Issued', NULL, NULL, '2021-10-03 19:37:46', '2021-10-03 19:37:46'),
(38, 'D19201', 279, '2021-08-10', '10:10', 'Abbus', 'Chemist', 'CPU is not running', 'technician', 'technician', '2021-09-10', 'Mother Board Added', 'Issued', 'on', NULL, '2021-10-03 19:46:38', '2021-10-03 19:46:38'),
(40, 'L-19015', 52, '2021-09-09', '00:45', 'Major Mohammad Ahsan Ullah', 'Major', 'Laptop charge problem', 'Mehedi hasan', 'Shiblu', '2021-10-04', 'battery charger has changed', 'Issued', NULL, NULL, '2021-10-03 22:44:00', '2021-10-03 22:44:00'),
(41, 'D-19024', 474, '2021-08-25', '09:00', 'Major Mijanur Rahman', 'Major', 'Cpu is not opening', 'Mehedi hasan', 'Mehedi Hasan Shohag', '2021-08-26', 'Mother Board & Power supply added', 'Issued', NULL, NULL, '2021-10-03 22:48:11', '2021-10-03 22:48:11'),
(43, 'D19176', 285, '2021-09-02', '00:15', 'Rakibul Hasan', 'Sub Assistant Engineer', 'Windows Problem', 'technician', 'technician', '2021-08-02', 'windows setup', 'Issued', NULL, NULL, '2021-10-03 22:56:12', '2021-10-03 22:56:12'),
(44, 'D19128', 342, '2021-08-02', '11:00', 'Major Bashar', 'Major', 'Windows Problem', 'technician', 'technician', '2021-08-02', 'windows setup', 'Issued', NULL, NULL, '2021-10-03 22:57:20', '2021-10-03 22:57:20'),
(45, 'D19156', 108, '2021-08-01', '10:30', 'Main Gate', 'Main Gate', 'Windows Problem', 'technician', 'technician', '2021-08-01', 'windows setup', 'Issued', NULL, NULL, '2021-10-03 22:58:31', '2021-10-03 22:58:31'),
(46, 'D19070', 86, '2021-08-01', '10:30', 'Nassir Uddin', 'Office Assistant', 'power problem', 'technician', 'technician', '2021-08-02', 'power supply added', 'Issued', NULL, NULL, '2021-10-03 22:59:58', '2021-10-03 22:59:58'),
(47, 'D19174', 1609, '2021-07-31', '10:12', 'Atik', 'Office Assistant', 'Display is not opening', 'technician', 'technician', '2021-08-09', 'MB G41 with processor , Casin old , DVD drive old , RAM - 2 GB old', 'Issued', NULL, NULL, '2021-10-03 23:03:08', '2021-10-03 23:03:08'),
(48, 'Test-x', 1069, '2021-10-05', '12:12', 'Test User', 'Test Designation', 'Test Description', 'Test Receiver', 'technician', '2021-10-05', 'Test Solution', 'Expire', NULL, NULL, '2021-10-04 19:37:19', '2021-10-04 23:00:36'),
(49, 'Test-Product-101', 1699, '2021-10-03', '12:12', 'Test User 1', 'Test  Designation 1', 'Testing Problem', 'Technician', 'technician', '2021-09-26', 'For Demo Testing Perpous', 'Issued', NULL, NULL, '2021-10-06 18:56:57', '2021-10-06 18:56:57'),
(50, 'Test-Product-101', 1699, '2021-10-04', '12:12', 'Test User 1', 'Test  Designation 1', 'Test information', 'technician', 'technician', '2021-10-14', 'Windows Setup', 'Repair Cell', NULL, NULL, '2021-10-06 19:01:51', '2021-10-06 19:01:51'),
(51, 'D19128', 342, '2021-10-13', '07:45', 'Major K M Saiful Bashar', 'Major', 'Computer Crash Windows.', 'Farhad Ahmed', 'Abdur Rahman', '2021-10-14', 'Widows Setup, Partition , HDD & Others Software Installion.', 'Issued', NULL, NULL, '2021-10-15 21:04:16', '2021-10-15 21:04:16'),
(52, 'D19071', 201, '2021-10-14', '08:00', 'Nojir Hossen', 'Jr. Technician', 'The computer does not turn on.', 'Farhad Hossen', 'Abdur Rahman', '2021-10-14', 'Motherboard Repair.', 'Issued', NULL, NULL, '2021-10-15 21:11:21', '2021-10-15 21:11:21'),
(53, 'D19261', 361, '2021-10-12', '08:00', 'MD: Shahinur Alam', 'Let. Colonel', 'Computer automatic  turn of when it is trying to turn on.', 'Farhad Hossen', 'Abdur Rahman', '2021-10-14', 'Widows Setup, Partition , HDD & Others Software Installion.', 'Issued', NULL, NULL, '2021-10-15 21:14:53', '2021-10-15 21:14:53'),
(54, 'D19066', 32, '2021-10-24', '10:30', 'Md Shahidullah', 'Manager', 'Computer is Not Opening', 'Abdur Rahman', 'Abdur Rahman', '2021-10-25', 'windows & other software installation', 'Issued', NULL, NULL, '2021-10-30 22:54:29', '2021-10-30 22:54:29'),
(55, 'D19233', 336, '2021-10-27', '08:30', 'Lutfor Rahman Salim', 'Office Assistant', 'Computer is Not Opening', 'Abdur Rahman', 'Abdur Rahman', '2021-10-29', 'windows & other software installation', 'Issued', NULL, NULL, '2021-10-30 22:58:17', '2021-10-30 22:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demandPerpousDescription` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demandDate` date NOT NULL,
  `issueDate` date DEFAULT NULL,
  `specification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demandQuantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiveQuantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remainingQuantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Remarks` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`id`, `department`, `demandPerpousDescription`, `demandDate`, `issueDate`, `specification`, `item`, `demandQuantity`, `receiveQuantity`, `remainingQuantity`, `Remarks`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DD Purchase & Mat', 'for emergency use', '2021-11-28', '2021-11-28', 'From DD Purchase and Matt', 'Computer', '12', NULL, NULL, NULL, NULL, '2021-11-27 20:47:06', '2021-11-27 20:47:06'),
(2, 'DD Purchase & Mat', 'This is good', '2021-11-28', '2021-11-28', 'From DD Purchase and Matt', 'desktop', '10', NULL, NULL, NULL, NULL, '2021-11-27 20:47:06', '2021-11-27 20:47:06'),
(3, 'DD SAA', 'for anti virus', '2021-11-28', NULL, 'we have been facing so many problems', 'Kasperaskey Anti virus', '2', NULL, NULL, NULL, NULL, '2021-11-27 23:38:36', '2021-11-27 23:38:36'),
(4, 'DD SAA', 'for office work', '2021-11-28', NULL, 'we have been facing so many problems', 'Laptop', '2', NULL, NULL, NULL, NULL, '2021-11-27 23:38:36', '2021-11-27 23:38:36'),
(5, 'DD SAA', 'for officer', '2021-11-28', NULL, 'we have been facing so many problems', 'desktop', '3', NULL, NULL, NULL, NULL, '2021-11-27 23:38:36', '2021-11-27 23:38:36'),
(6, 'DD SAA', 'for office work', '2021-11-28', NULL, 'we have been facing so many problems', 'printer', '1', NULL, NULL, NULL, NULL, '2021-11-27 23:38:36', '2021-11-27 23:38:36'),
(7, 'TEST DEPT_1', 'This is very important', '2022-01-01', '2022-01-01', 'From DD Purchase and Matt', 'Kasperaskey Anti virus', '2', NULL, NULL, NULL, NULL, '2022-01-01 00:55:09', '2022-01-01 00:55:09'),
(8, 'TEST DEPT_1', 'for emergency use', '2022-01-01', '2022-01-01', 'From DD Purchase and Matt', 'Kasperaskey Anti virus', '2', NULL, NULL, NULL, NULL, '2022-01-01 00:55:09', '2022-01-01 00:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'SA purchase', '2021-08-31 20:39:17', '2021-08-31 20:39:17'),
(5, 'PKS', '2021-08-31 20:39:29', '2021-08-31 20:39:29'),
(6, 'SAE Purchase', '2021-08-31 20:39:33', '2021-08-31 20:39:33'),
(7, 'OA Purchase', '2021-08-31 20:39:45', '2021-08-31 20:39:45'),
(8, 'Man main store', '2021-08-31 20:40:00', '2021-08-31 20:40:00'),
(9, 'Am main store', '2021-08-31 20:40:08', '2021-08-31 20:40:08'),
(10, 'Dir Admin & Mat', '2021-08-31 20:40:10', '2021-08-31 20:40:10'),
(11, 'PO Receive Control', '2021-08-31 20:40:21', '2021-08-31 20:40:21'),
(12, 'DD Admin & Mat', '2021-08-31 20:40:30', '2021-08-31 20:40:30'),
(13, 'APO main store', '2021-08-31 20:40:31', '2021-08-31 20:40:31'),
(14, 'GK main store', '2021-08-31 20:40:38', '2021-08-31 20:40:38'),
(15, 'OA officers mess', '2021-08-31 20:40:45', '2021-08-31 20:40:45'),
(16, 'SA MT', '2021-08-31 20:40:51', '2021-08-31 20:40:51'),
(17, 'OS MT', '2021-08-31 20:40:56', '2021-08-31 20:40:56'),
(18, 'DD Admin', '2021-08-31 20:40:57', '2021-08-31 20:40:57'),
(19, 'OIC ICT cell', '2021-08-31 20:41:05', '2021-08-31 20:41:05'),
(20, 'SAE ICT cell', '2021-08-31 20:41:12', '2021-08-31 20:41:12'),
(21, 'MAP', '2021-08-31 20:41:17', '2021-08-31 20:41:17'),
(22, 'OA ICT cell', '2021-08-31 20:41:20', '2021-08-31 20:41:20'),
(23, 'Server Room', '2021-08-31 20:41:27', '2021-08-31 20:41:27'),
(24, 'NOC', '2021-08-31 20:41:31', '2021-08-31 20:41:31'),
(25, 'R & T', '2021-08-31 20:41:37', '2021-08-31 20:41:37'),
(26, 'AD server', '2021-08-31 20:41:38', '2021-08-31 20:41:38'),
(27, 'ERP Server', '2021-08-31 20:41:47', '2021-08-31 20:41:47'),
(28, 'CR', '2021-08-31 20:41:52', '2021-08-31 20:41:52'),
(29, 'APO Finance', '2021-08-31 20:41:54', '2021-08-31 20:41:54'),
(30, 'Sy. Camera', '2021-08-31 20:42:05', '2021-08-31 20:42:05'),
(31, 'MT.', '2021-08-31 20:42:09', '2021-08-31 20:42:09'),
(32, 'DIR production Office', '2021-08-31 20:42:21', '2021-08-31 20:42:21'),
(33, 'Workman Record', '2021-08-31 20:42:23', '2021-08-31 20:42:23'),
(34, 'Production C-cordiant Cell', '2021-08-31 20:42:36', '2021-08-31 20:42:36'),
(35, 'Staff Record', '2021-08-31 20:42:37', '2021-09-17 21:41:54'),
(36, 'Small Arms Ammo (SAA)', '2021-08-31 20:42:51', '2021-08-31 20:42:51'),
(37, 'DD HAG', '2021-08-31 20:42:59', '2021-08-31 20:42:59'),
(38, 'DD HAG Office', '2021-08-31 20:43:07', '2021-08-31 20:43:07'),
(39, 'GP-3 Office', '2021-08-31 20:43:19', '2021-08-31 20:43:19'),
(40, 'Budget & Cash', '2021-08-31 20:43:28', '2021-08-31 20:43:28'),
(41, 'Dir PLG & maint Office', '2021-08-31 20:43:48', '2021-08-31 20:43:48'),
(42, 'Budget', '2021-08-31 20:43:54', '2021-08-31 20:43:54'),
(43, 'Cash', '2021-08-31 20:44:01', '2021-08-31 20:44:01'),
(44, 'DD PlG office', '2021-08-31 20:44:02', '2021-08-31 20:44:02'),
(45, 'P & P', '2021-08-31 20:44:09', '2021-08-31 20:44:09'),
(46, 'Finance', '2021-08-31 20:44:12', '2021-08-31 20:44:12'),
(47, 'PSI', '2021-08-31 20:44:13', '2021-08-31 20:44:13'),
(48, 'WISA', '2021-08-31 20:44:18', '2021-08-31 20:44:18'),
(49, 'MC', '2021-08-31 20:44:21', '2021-08-31 20:44:21'),
(50, 'CC R & R', '2021-08-31 20:44:33', '2021-08-31 20:44:33'),
(51, 'Billing', '2021-08-31 20:44:34', '2021-08-31 20:44:34'),
(52, 'CC R & Office', '2021-08-31 20:44:46', '2021-08-31 20:44:46'),
(53, 'Drawing', '2021-08-31 20:45:00', '2021-08-31 20:45:00'),
(54, 'Matlab', '2021-08-31 20:45:05', '2021-08-31 20:45:05'),
(55, 'ISI', '2021-08-31 20:45:22', '2021-08-31 20:45:22'),
(56, 'CTM', '2021-08-31 20:45:30', '2021-08-31 20:45:30'),
(57, 'Pension', '2021-08-31 20:45:31', '2021-09-17 21:45:57'),
(58, 'CTG', '2021-08-31 20:45:34', '2021-08-31 20:45:34'),
(59, 'Man MM', '2021-08-31 20:45:40', '2021-08-31 20:45:40'),
(60, 'Service Office', '2021-08-31 20:45:47', '2021-08-31 20:45:47'),
(61, 'MRO', '2021-08-31 20:45:51', '2021-08-31 20:45:51'),
(62, 'ME', '2021-08-31 20:45:54', '2021-08-31 20:45:54'),
(63, 'Exchange', '2021-08-31 20:46:07', '2021-08-31 20:46:07'),
(64, 'Officer Record', '2021-08-31 20:46:13', '2021-08-31 20:46:13'),
(65, 'Medical', '2021-08-31 20:46:29', '2021-08-31 20:46:29'),
(66, 'Security', '2021-08-31 20:46:30', '2021-08-31 20:46:30'),
(67, 'MAG', '2021-08-31 20:46:39', '2021-08-31 20:46:39'),
(68, 'Miscellaneous', '2021-08-31 20:46:48', '2021-08-31 20:46:48'),
(69, 'Welfare', '2021-08-31 20:46:55', '2021-08-31 20:46:55'),
(70, 'Recident', '2021-08-31 20:47:00', '2021-08-31 20:47:00'),
(71, 'Ration', '2021-08-31 20:47:10', '2021-08-31 20:47:10'),
(72, 'Fire', '2021-08-31 20:47:14', '2021-08-31 20:47:14'),
(73, 'Purchase', '2021-08-31 20:47:25', '2021-08-31 20:47:25'),
(74, 'Man Plg Office', '2021-08-31 20:53:26', '2021-08-31 20:53:26'),
(75, 'CM', '2021-08-31 21:01:58', '2021-08-31 21:01:58'),
(76, 'Service', '2021-08-31 21:12:59', '2021-08-31 21:12:59'),
(77, 'R & D', '2021-08-31 21:22:53', '2021-08-31 21:22:53'),
(78, 'CC R & D', '2021-08-31 21:27:55', '2021-08-31 21:27:55'),
(79, 'Man service', '2021-08-31 21:41:28', '2021-08-31 21:41:28'),
(80, 'MM', '2021-08-31 21:42:27', '2021-08-31 21:42:27'),
(81, 'HAG', '2021-08-31 22:13:46', '2021-08-31 22:13:46'),
(82, 'ICT', '2021-08-31 22:36:30', '2021-08-31 22:36:30'),
(83, 'Officers Mess', '2021-08-31 22:57:36', '2021-08-31 22:57:36'),
(84, 'Maint Store', '2021-08-31 22:58:49', '2021-08-31 22:58:49'),
(85, 'Main store', '2021-08-31 22:59:47', '2021-08-31 22:59:47'),
(86, 'Receive Control', '2021-08-31 23:01:02', '2021-08-31 23:01:02'),
(87, 'Comdt', '2021-08-31 23:43:52', '2021-08-31 23:43:52'),
(88, 'GE Army', '2021-08-31 23:51:58', '2021-08-31 23:51:58'),
(89, 'DD SA', '2021-08-31 23:54:03', '2021-08-31 23:54:03'),
(90, 'Comdt C Room', '2021-08-31 23:57:18', '2021-08-31 23:57:18'),
(91, 'Mosque', '2021-09-01 00:10:15', '2021-09-01 00:10:15'),
(92, 'OPS Room', '2021-09-01 00:11:59', '2021-09-01 00:11:59'),
(93, 'Golf Club', '2021-09-01 00:16:38', '2021-09-01 00:16:38'),
(94, 'Conference Room', '2021-09-01 00:16:58', '2021-09-01 00:16:58'),
(95, 'DD PLG', '2021-09-01 00:17:21', '2021-09-01 00:17:21'),
(96, 'Comdt BOF', '2021-09-01 00:17:34', '2021-09-01 00:17:34'),
(97, 'Dy condd', '2021-09-01 00:24:44', '2021-09-01 00:24:44'),
(98, 'GSO-2', '2021-09-01 00:27:52', '2021-09-01 00:27:52'),
(99, 'Planning', '2021-09-01 23:02:10', '2021-09-01 23:02:10'),
(105, 'ICT-Office', '2021-09-15 21:11:00', '2021-09-15 21:11:00'),
(106, 'Bangabondhu Cornar', '2021-09-15 21:15:06', '2021-09-15 21:15:06'),
(107, 'Comdt Conference Room', '2021-09-15 21:21:55', '2021-09-15 21:21:55'),
(108, 'Deputy Comdt Bhabon', '2021-09-15 21:27:31', '2021-09-15 21:27:31'),
(109, 'Admin', '2021-09-15 22:14:45', '2021-09-15 22:14:45'),
(110, 'Deputy Comdt Office', '2021-09-15 22:58:15', '2021-09-15 22:58:15'),
(111, 'Small Arms (SA)', '2021-09-15 23:13:03', '2021-09-15 23:13:03'),
(112, 'Central Record', '2021-09-19 00:15:32', '2021-09-19 00:15:32'),
(113, 'IA & E', '2021-09-20 00:02:05', '2021-09-20 00:02:05'),
(114, 'DD Maintenance', '2021-09-20 20:51:25', '2021-09-20 20:51:25'),
(115, 'TPT', '2021-09-21 23:46:33', '2021-09-21 23:46:33'),
(116, 'PLG', '2021-09-21 23:56:50', '2021-09-21 23:56:50'),
(117, 'QCL', '2021-09-22 20:02:32', '2021-09-22 20:02:32'),
(118, 'Residential', '2021-09-22 21:02:36', '2021-09-22 21:02:36'),
(119, 'Telephone Exchange', '2021-09-22 21:35:32', '2021-09-22 21:35:32'),
(120, 'CC-01', '2021-09-23 00:25:38', '2021-09-23 00:25:38'),
(121, 'RM-2', '2021-09-24 20:07:15', '2021-09-24 20:07:15'),
(122, 'RM-1', '2021-09-24 20:48:18', '2021-09-24 20:48:18'),
(123, 'TEST DEPT_1', '2021-09-25 18:45:10', '2021-09-25 18:45:10'),
(124, 'Recruitment', '2021-09-25 23:29:59', '2021-09-25 23:29:59'),
(125, 'MEP', '2021-09-27 20:41:33', '2021-09-27 20:41:33'),
(126, 'TTC', '2021-09-28 01:54:43', '2021-09-28 01:54:43'),
(127, 'RM-3', '2021-09-29 23:34:43', '2021-09-29 23:34:43'),
(128, 'RM-4', '2021-10-02 20:13:59', '2021-10-02 20:13:59'),
(129, 'DD SAA', '2021-10-29 19:20:54', '2021-10-29 19:20:54'),
(130, 'ICT Stock', '2021-11-20 19:26:10', '2021-11-20 19:26:10'),
(131, 'DD Purchase & Mat', '2021-11-24 19:24:25', '2021-11-24 19:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `erpmodifications`
--

CREATE TABLE `erpmodifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `problem_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problemFindingDate` date NOT NULL,
  `problemSolutionDate` date DEFAULT NULL,
  `form_link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problemDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_detected_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suggation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `erpmodifications`
--

INSERT INTO `erpmodifications` (`id`, `problem_id`, `module`, `problemFindingDate`, `problemSolutionDate`, `form_link`, `image`, `problemDescription`, `status`, `problem_detected_by`, `remarks`, `suggation`, `created_at`, `updated_at`) VALUES
(1, '07December 2021', 'Security', '2021-12-07', NULL, 'http://103.149.143.53/#/security/2/instant-gate-pass-application/add', NULL, '(Field )Gate Pass Type :\r\n	1)Meet\r\n            2)Products Collection \r\n            3)Return Rejected Goods \r\n            4)Rejected Riels Return \r\n            5)Tender Discussion Related\r\n            6)Contractual discussion / Contractual Signature \r\n            7) Special Interview \r\n            8)Machine Repair *\r\n            9)Machine Construction*\r\n           10)Cell body Rom *(Eitar mane ami jani na unara jevabe bolse .. please check the validity )\r\n[ NB : Star marks are most important for gate pass type ]\r\n(Field)Reference Employee : EmployeeId + EmployeeName + Designation+ Department/Section \r\nExample : \r\n0036 Md Ruhul Amin (SoftSupEng)ICTCell\r\n(Field)Area : (they told it is not needed) \r\nSecurity’s  Suggestion: (Instead of area please provide a list of all the departments or sections  to select where he wants to arrive)\r\n\r\n****Update : \r\nAll the information of Report In Out Has to be in Bangla (They send a copy to the Commandant,  Director admin )', 'Solved', 'Md Ruhul Amin ( SoftSupEng)', NULL, '0036 Md Ruhul Amin (SoftSupEng)ICTCell', '2022-01-02 23:46:52', '2022-01-02 23:46:52'),
(2, '08December2021', 'Security', '2021-12-08', NULL, 'http://103.149.143.53/#/security/2/instant-gate-pass-application/add', NULL, '1)References Employee Field  Has to be All Officers (First Class & Second Class)\r\n\r\n[Note : Reference Employee Field is very Important please swap the position of  Visit Office html tag  with Reference Employee html tag \r\nthe select option field  need More Space for reviewing the Officer’s Information .]\r\n\r\n(BOF ID Name Designation Department )\r\n2)Organization Name field must be Required**\r\n3)Visit Office field Must be all the sections all the departments 	\r\n         Example : I am attaching a pdf file .Please do not use it as reference For ERP', 'Solved', 'Md Ruhul Amin ( SoftSupEng)', NULL, NULL, '2022-01-02 23:55:56', '2022-01-02 23:55:56'),
(3, '09December2021_A', 'Administration', '2021-12-09', NULL, 'http://103.149.143.53/#/administration/1/officer-employee-information', '1641189438.png', 'I don’t understand why designation field is showing\r\n“ jr network support Engineer .” or Third Class worker’s information in \r\nofficers record.\r\nsimilarly in workman and staff  records.\r\nSecondly branch , wing are not working properly', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Can you please review them again?', '2022-01-02 23:57:18', '2022-01-02 23:57:18'),
(4, '09December2021_B', 'Security', '2021-12-09', NULL, 'http://103.149.143.53/#/security/2/card-issue', '1641189533.png', 'As Entry Time is showing 8:05, But what actually happens the security officers are very much busy to conduct with the visitors. they write manually in khata \r\nproperly . After writing the visitor’s information they keep on working with other staff. When they get a free time , they start writing them in ERP Software .\r\nSuppose Card is  issued at 7.00 AM and the information is  written manually in khata . When he write it on ERP that time The Entry Time of the Visitor gets false\r\ninformation .\r\n \r\n\r\n\r\nConsider  3 visitors have issued  at 8.30 AM , 9.30 AM and 10.00 AM\r\naccordingly . Security officer is free at 10.30 AM . When he starts entering data in ERP Software the Entry time of all  the visitors are 10.30 AM or IN Time 10.30 AM which is a false information .', 'Solved', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Can you please contact with the security officers about this issue ?', '2022-01-02 23:58:53', '2022-01-02 23:58:53'),
(5, '13December2021', 'ICT', '2021-12-13', NULL, 'form_link', NULL, 'The alignment is ok on fly view but after printing the left side of the table is broken and the left margin is not aligned clearly.', 'Solved', 'Md Ruhul Amin ( SoftSupEng)', NULL, NULL, '2022-01-03 00:00:32', '2022-01-03 22:28:06'),
(6, '1January2022', 'Administration', '2022-01-01', NULL, 'http://103.149.143.53/#/dashboard/common-note-sheet', '1641189760.png', 'Please remove the red marking character from view file.', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, NULL, '2022-01-03 00:02:40', '2022-01-03 00:02:40'),
(7, '02January2022_A', 'Common Dashboard', '2022-01-02', NULL, 'http://103.149.143.53/#/dashboard/office-opening-and-closing/add', '1641189970.png', 'Problem Description : To Select an Employee , I found the searchable employee list taking 1 min 16 seconds to serve(first Figure).', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Can you please review them again?', '2022-01-03 00:06:10', '2022-01-03 00:06:10'),
(8, '02January2022_B', 'Common Dashboard', '2022-01-02', NULL, 'http://103.149.143.53/#/administration/1/stuff-leave-part-two', '1641190128.png', 'Sometimes the Employees List is not showing (second Figure)', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Can you  review the form once again please ?!', '2022-01-03 00:08:48', '2022-01-03 00:08:48'),
(9, '02January2022_C', 'ICT', '2022-01-02', NULL, 'form_link', NULL, 'I really don’t understand is it for poor internet service or test database server ??', 'Solved', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Can you please review the form again?', '2022-01-03 00:10:21', '2022-01-03 22:28:31'),
(10, '02January2022_D', 'ICT', '2022-01-02', NULL, 'form_link', NULL, ': If the product is reusable , the product warranty date is a required field .\r\npreviously the warranty date was required filed , recently I have found the warranty date is not required. It is highly recommend to make the product warranty date field required, the store keeper may not include the warranty date in ERP .\r\nIn product’s life cycle , if the product is repairmentable  and product has warranty date, ERP operator can notify the vendor. \r\n[If anyone wants to change the requirement or modify anything, you are requested to notify me ]', 'In Process', 'Md Ruhul Amin ( SoftSupEng)', NULL, 'Please make the warranty date  filed required', '2022-01-03 00:11:52', '2022-01-03 22:29:36'),
(11, '02January2022_E', 'ICT', '2022-01-02', NULL, 'Link Not Found', NULL, 'Module : ICT \r\nproblem description : After processing a new service request , the repairmentable product has a status .\r\nThe status are:\r\n1)In Stock 2)Issued 3)Repair cell 4) Out of order \r\n\r\n5) unserviceable 6) Dispose 7) Expire\r\nThe ERP Operator can change product status from (1-4)\r\nbut if the Product is 7) Expired it’s status can never be changed to dispose.\r\nIf it is dispose it can be Expire but not unserviceable . If it is unserviceable\r\nthe product status can be changed only in Dispose. \r\n\r\nproduct status work flow from 5-7\r\n[Valid ]\r\n5)unserviceable  6) Dispose \r\n6) Dispose  Expired\r\n\r\n\r\n[Invalid ] \r\n5)unserviceable  7) Expire\r\n7) Expire   Dispose \r\n8)Expire  Unserviceable', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, NULL, '2022-01-03 00:13:02', '2022-01-03 00:13:02'),
(12, '04December2022_A', 'ICT', '2021-12-06', NULL, 'http://103.149.143.53/#/dashboard/report-configure', '1641259398.png', 'The  Select option for the indentation should be sorted desc by createt_at colum and the select option field has to be searchable', 'Unsolved', 'Md Ruhul Amin ( SoftSupEng)', NULL, NULL, '2022-01-03 19:23:18', '2022-01-03 19:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Dot Matrix Printer', '2021-08-30 23:37:54', '2021-08-30 23:37:54'),
(14, 'Micro Dry (MD)', '2021-08-30 23:39:56', '2021-08-30 23:39:56'),
(20, 'CR1016-12S-1S+', '2021-09-15 19:38:19', '2021-09-15 19:38:19'),
(21, 'Cisco ASA 5520 Serise', '2021-09-17 19:40:58', '2021-09-17 19:40:58'),
(22, 'SG350-28SFP', '2021-09-17 19:54:45', '2021-09-17 19:54:45'),
(23, 'SG350-24SP', '2021-09-17 19:56:06', '2021-09-17 19:56:06'),
(24, 'SF 350-24p', '2021-09-17 19:56:18', '2021-09-17 19:56:18'),
(25, '2960XR series', '2021-09-17 19:56:49', '2021-09-17 19:56:49'),
(26, 'SFP +', '2021-09-17 20:08:32', '2021-09-17 20:08:32'),
(27, 'UCS C240 M5', '2021-09-17 20:20:51', '2021-09-17 20:22:07'),
(28, 'VE:6042.56.100', '2021-09-17 20:29:54', '2021-09-17 20:29:54'),
(29, 'VA 561501100', '2021-09-17 20:30:07', '2021-09-17 20:30:07'),
(30, 'VSA 6609.01.100', '2021-09-17 20:30:20', '2021-09-17 20:30:20'),
(31, 'TEST_ITEM', '2021-09-25 18:46:08', '2021-09-25 18:46:08'),
(32, 'Face Plate', '2021-09-26 20:14:04', '2021-09-26 20:14:04'),
(33, 'LEN Card', '2021-09-26 20:14:23', '2021-09-26 20:14:23'),
(34, 'Moduler', '2021-09-26 20:41:58', '2021-09-26 20:41:58'),
(35, 'Screw Drill Machine', '2021-09-26 20:52:54', '2021-09-26 20:52:54'),
(36, 'Cable Tester', '2021-09-26 21:30:45', '2021-09-26 21:30:45'),
(37, 'Switch (8port)', '2021-09-26 21:32:09', '2021-09-26 21:32:09'),
(39, 'Media Converter', '2021-09-28 23:25:49', '2021-09-28 23:25:49'),
(40, 'RJ-45 Connector', '2021-09-29 22:52:06', '2021-09-29 22:52:06'),
(41, 'M21', '2021-10-01 20:00:36', '2021-10-01 20:00:36'),
(42, 'J7Nxt', '2021-10-01 20:00:55', '2021-10-01 20:00:55'),
(43, 'J2pro', '2021-10-01 20:01:08', '2021-10-01 20:01:08'),
(44, 'J2Galaxy', '2021-10-01 20:01:32', '2021-10-01 20:01:32'),
(45, 'J7Max', '2021-10-01 20:01:46', '2021-10-01 20:01:46'),
(46, 'A20s', '2021-10-01 20:01:58', '2021-10-01 20:01:58'),
(47, 'J1DOUS', '2021-10-01 20:02:22', '2021-10-01 20:02:22'),
(48, 'A51', '2021-10-01 20:03:08', '2021-10-01 20:03:08'),
(49, 'A71', '2021-10-01 20:03:14', '2021-10-01 20:03:14'),
(50, 'External DVD Drive', '2021-10-02 19:09:20', '2021-10-02 19:09:20'),
(51, 'ONU', '2021-10-02 19:22:55', '2021-10-02 19:22:55'),
(52, 'Head Phone', '2021-10-02 19:30:01', '2021-10-02 19:30:01'),
(53, 'MK Box', '2021-10-02 19:44:32', '2021-10-02 19:44:32'),
(54, 'TJ Box', '2021-10-02 19:51:19', '2021-10-02 19:51:19'),
(55, 'Electric Socket(Smart)', '2021-10-02 20:29:00', '2021-10-02 20:29:00'),
(56, 'Settle Clump', '2021-10-02 20:39:26', '2021-10-02 20:39:26'),
(57, 'Patch Card', '2021-10-02 20:58:30', '2021-10-02 20:58:30'),
(58, 'Cable Tie', '2021-10-02 21:27:39', '2021-10-02 21:27:39'),
(59, 'Mobile Memory Card', '2021-10-02 21:51:18', '2021-10-02 21:51:18'),
(60, 'VGA To HDMI Converter', '2021-10-02 22:08:00', '2021-10-02 22:08:00'),
(61, 'Office 2010', '2021-10-02 22:15:32', '2021-10-02 22:15:32'),
(62, 'Smoke Detector', '2021-10-02 22:49:49', '2021-10-02 22:49:49'),
(63, 'Hammer Ball Peen', '2021-10-02 23:05:37', '2021-10-02 23:08:00'),
(64, 'Cutting Pliers', '2021-10-02 23:12:14', '2021-10-02 23:12:14'),
(65, 'Nose Pliers', '2021-10-02 23:16:16', '2021-10-02 23:16:16'),
(66, 'Mixer Amplifire', '2021-10-02 23:33:42', '2021-10-02 23:33:42'),
(67, 'Celling Speaker', '2021-10-02 23:37:29', '2021-10-02 23:37:29'),
(68, 'Cartridge & Toner', '2021-10-03 20:46:58', '2021-10-03 20:46:58'),
(69, 'Casst (Tape)', '2021-10-04 22:48:20', '2021-10-04 22:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2021_08_29_034625_create_products_table', 1),
(24, '2014_10_12_000000_create_users_table', 2),
(25, '2014_10_12_100000_create_password_resets_table', 2),
(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(27, '2019_08_19_000000_create_failed_jobs_table', 2),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(29, '2021_08_10_102727_create_sessions_table', 2),
(30, '2021_08_10_122712_create_categories_table', 2),
(31, '2021_08_10_171818_create_brands_table', 2),
(32, '2021_08_29_012557_create_subcategories_table', 2),
(33, '2021_08_29_024729_create_types_table', 2),
(34, '2021_08_29_041702_create_items_table', 2),
(35, '2021_08_29_134625_create_products_table', 2),
(39, '2021_08_29_434625_create_products_table', 3),
(40, '2021_09_01_020206_create_departments_table', 4),
(41, '2021_09_04_021435_add_role_to_users_table', 5),
(45, '2021_09_07_030255_create_complaints_table', 6),
(46, '2021_09_12_023921_add_designation_to_users_table', 7),
(48, '2021_09_12_072704_create_productissueds_table', 8),
(49, '2021_09_13_054508_add_bofid_to_productissueds', 9),
(50, '2021_09_12_0121112_create_productissueds_table', 10),
(52, '2021_09_14_020518_product_productissudes', 11),
(53, '2021_09_18_061113_create_stocks_table', 12),
(54, '2021_09_19_011421_create_accessories_table', 13),
(55, '2021_09_18_191113_create_stocks_table', 14),
(56, '2021_09_18_191223_create_stocks_table', 15),
(57, '2021_09_18_201223_create_stocks_table', 16),
(58, '2021_09_18_271223_create_stocks_table', 17),
(59, '2020_05_21_100000_create_teams_table', 18),
(60, '2020_05_21_200000_create_team_user_table', 18),
(61, '2020_05_21_300000_create_team_invitations_table', 18),
(62, '2021_09_18_271228_create_stocks_table', 18),
(63, '2021_10_05_012403_add_product_status_to_complaints_table', 19),
(64, '2021_10_06_053322_add_index_to_products_table', 20),
(65, '2021_10_27_011939_create_cameralocations_table', 21),
(66, '2021_10_27_024725_create_cameradetails_table', 22),
(67, '2021_10_27_012039_create_cameralocations_table', 23),
(68, '2021_11_04_013616_add_nvr_to_cameradetails_table', 24),
(69, '2021_11_18_012419_add_productstatus_to_products_table', 25),
(70, '2021_11_20_033319_create_product_issue_to_user_details_table', 26),
(71, '2021_11_31_033319_create_product_issue_to_user_details_table', 27),
(72, '2021_11_27_033551_create_demands_table', 28),
(73, '2021_11_27_053551_create_demands_table', 29),
(74, '2021_11_27_053511_create_demands_table', 30),
(75, '2022_01_03_012126_create_erpmodifications_table', 31),
(76, '2022_01_03_021253_add_module_to_erpmodifications_table', 32),
(77, '2022_01_03_412126_create_erpmodifications_table', 33),
(78, '2022_01_03_041253_add_module_to_erpmodifications_table', 34),
(79, '2022_01_03_412226_create_erpmodifications_table', 35),
(80, '2022_01_03_041254_add_module_to_erpmodifications_table', 36),
(81, '2022_02_15_012744_create_notesheets_table', 37),
(82, '2022_02_15_021742_create_booknotesheets_table', 38),
(83, '2022_02_15_026742_create_booknotesheets_table', 39),
(84, '2022_02_15_026748_create_booknotesheets_table', 40),
(85, '2022_02_15_026_create_booknotesheets_table', 41),
(86, '2022_02_15_032330_create_notesheets_table', 42),
(87, '2022_02_15_032430_create_notesheets_table', 43),
(88, '2022_02_15_032630_create_notesheets_table', 44),
(89, '2022_02_15_032730_create_notesheets_table', 45),
(90, '2022_02_15_032740_create_notesheets_table', 46),
(91, '2022_02_16_011748_create_notesheetdetails_table', 47),
(92, '2022_02_16_0211748_create_notesheetdetails_table', 48),
(93, '2022_02_15_032741_create_notesheets_table', 49),
(94, '2022_02_16_0211749_create_notesheetdetails_table', 49),
(95, '2022_02_15_032742_create_notesheets_table', 50),
(96, '2022_02_16_0211750_create_notesheetdetails_table', 50),
(97, '2022_02_16_0211751_create_notesheetdetails_table', 51),
(98, '2022_02_16_0211752_create_notesheetdetails_table', 52);

-- --------------------------------------------------------

--
-- Table structure for table `notesheetdetails`
--

CREATE TABLE `notesheetdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notesheet_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `PVRV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` bigint(20) DEFAULT 12,
  `debit` bigint(20) DEFAULT 12,
  `cashbalance` bigint(20) DEFAULT 12,
  `ic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `erp_indent_voucher_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `erp_entry_date` date DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notesheetdetails`
--

INSERT INTO `notesheetdetails` (`id`, `notesheet_id`, `book_id`, `PVRV`, `date`, `details`, `credit`, `debit`, `cashbalance`, `ic`, `oic`, `erp_indent_voucher_no`, `erp_entry_date`, `comments`, `created_at`, `updated_at`) VALUES
(1, 8, 11, 'RV-ICT-145', '2021-02-21', 'Licenced Software ক্রয়', 657100, 0, 657100, NULL, NULL, NULL, NULL, NULL, '2022-02-26 19:55:37', '2022-03-09 21:19:48'),
(2, 8, 11, 'PV-145/01', '2021-05-27', 'CNC Machine Software', NULL, 190000, 467100, NULL, NULL, NULL, NULL, NULL, '2022-02-26 19:58:09', '2022-02-26 19:58:09'),
(3, 8, 11, 'PV-145/02', '2021-05-24', 'Microsoft Office Pro, Windows Server 2019', NULL, 213800, 253300, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:00:02', '2022-02-26 20:00:02'),
(4, 8, 11, 'PV-145/03', '2022-10-16', 'Anti -Virus E-SET', NULL, 210000, 43300, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:02:29', '2022-02-26 20:02:29'),
(5, 8, 11, 'PV-145/04', '2021-07-15', 'Microsoft 365', NULL, 7000, 36300, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:04:15', '2022-02-26 20:04:15'),
(6, 8, 11, 'PV-145/05', '2021-11-04', 'Windows to Disk , Remote Battery', NULL, 400, 35900, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:06:07', '2022-02-26 20:06:07'),
(7, 8, 11, 'PV-145/06', '2021-11-25', 'GP SIM (200)', NULL, 4000, 31900, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:07:16', '2022-02-26 20:07:16'),
(8, 8, 11, 'PV-145/07', '2021-12-01', 'McaFec Anti-virus', NULL, 3060, 28840, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:08:54', '2022-02-26 20:08:54'),
(9, 8, 11, 'PV-145/08', '2022-01-19', 'Windows to Disk', NULL, 350, 28490, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:10:25', '2022-02-26 20:10:25'),
(10, 8, 11, 'PV-145/09', '2022-02-19', 'Internet Download Manager (Lifetime)', NULL, 1550, 26940, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:11:30', '2022-02-26 20:11:30'),
(11, 9, 12, 'RV-ICT/142', '2021-05-06', 'প্রিন্টার ও ফটোকপিয়ার কার্টিজ / টোনার ক্রয়', 889000, 0, 889000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:36:03', '2022-03-06 19:31:12'),
(12, 9, 12, 'PV-142/01', '2021-05-05', 'Toner & Cartridge ক্রয়', NULL, 785000, 104000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:37:53', '2022-02-26 20:37:53'),
(13, 9, 12, 'PV-142/02', '2021-05-19', 'Toner / Cartridge for M 180 nw', NULL, 20000, 84000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:54:14', '2022-02-26 20:54:14'),
(14, 9, 12, 'PV-142/03', '2021-05-29', 'Toner 402 , 404 , e-studio 2303a', NULL, 23800, 60200, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:55:42', '2022-02-26 20:55:42'),
(15, 9, 12, 'PV-142/04', '2021-01-31', 'Refill EPSON 4120', NULL, 1200, 59000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:57:20', '2022-02-26 20:57:20'),
(16, 9, 12, 'PV-142/05', '2021-02-02', 'Toner Canon 325', NULL, 9100, 49900, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:58:28', '2022-02-26 20:58:28'),
(17, 9, 12, 'PV-142/06', '2021-06-01', 'Admin Rolling Fund Transfer', NULL, 49900, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 21:00:54', '2022-02-26 21:00:54'),
(18, 10, 12, 'RV-ICT/143', '2021-04-23', 'সি সি টিভি ক্যামেরা স্থাপন', 180000, 0, 180000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 21:07:58', '2022-02-26 21:07:58'),
(19, 10, 12, 'PV-143/01', '2021-05-06', 'C C Camera Accessories', NULL, 35000, 145000, NULL, NULL, NULL, NULL, NULL, '2022-02-26 21:11:05', '2022-02-26 21:11:05'),
(20, 10, 12, 'PV-143/02', '2021-05-06', 'O2xNVR with 10 CC Camera', NULL, 144500, 500, NULL, NULL, NULL, NULL, NULL, '2022-02-26 22:47:38', '2022-02-26 22:47:38'),
(21, 10, 12, 'PV-143/03', '2021-05-07', 'Admin Rolling Fund Transfer', NULL, 500, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 22:49:58', '2022-02-26 22:49:58'),
(22, 11, 12, 'RV-ICT/144', '2021-04-07', 'Zoom Standard Pro Annuel License ক্রয়', 19067, 0, 19067, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:02:15', '2022-02-26 23:02:15'),
(23, 11, 12, 'PV-144/01', '2021-03-04', 'Zoom Standard Pro Annuel License', NULL, 19067, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:03:42', '2022-02-26 23:03:42'),
(24, 12, 12, 'RV-ICT/146', '2021-06-14', '43\'\' Smart LED Television ক্রয়', 40388, 0, 40388, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:12:36', '2022-02-26 23:12:36'),
(25, 12, 12, 'PV-146/01', '2021-05-06', 'WALTON 43\'\' LED Television', NULL, 40388, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:14:39', '2022-02-26 23:14:39'),
(26, 13, 12, 'RV-ICT/148', '2021-10-19', 'আই সি টি অফিস আপ্যায়ন বিল', 12542, 0, 12542, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:26:09', '2022-02-26 23:26:09'),
(27, 13, 12, 'PV-148/01', '2021-08-08', 'জুলাই -২০২১ অফিস আপ্যায়ন বিল', NULL, 12542, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:27:34', '2022-02-26 23:27:34'),
(28, 14, 13, 'RV-153', '2021-12-02', 'প্রুফ রেঞ্জ টার্গেট মনিটরিং', 202050, 0, 202050, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:52:59', '2022-02-26 23:52:59'),
(29, 14, 13, 'PV-153/01', '2021-12-19', 'Bullet AHD Camera , Converter Over Fiber , 32\"  Monitor , Power Cable , 50 + 30 wt Light , Accessories', NULL, 202050, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-26 23:56:28', '2022-02-26 23:56:28'),
(30, 15, 14, 'RV-BRIS/33', '2021-06-13', 'Res Internet মান উন্নয়ন', 440000, 0, 440000, NULL, 'Authorized', NULL, NULL, NULL, '2022-02-27 00:10:21', '2022-03-13 22:58:47'),
(31, 15, 14, 'PV-33/01', '2021-12-28', '40\'\' LED Tuble, Channel , তার , রয়েল প্লাগ', NULL, 2026, 437974, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:12:21', '2022-03-11 21:04:43'),
(32, 15, 14, 'PV-33/02', '2021-12-22', 'SAS Radius 4 - 1000 User', NULL, 10899, 427075, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:14:35', '2022-03-11 21:04:43'),
(33, 15, 14, 'PV-33/03', '2021-12-20', 'PVC বোর্ড , স্ক্র , টেপ , পুটিং', NULL, 5960, 421115, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:18:36', '2022-02-27 00:18:36'),
(34, 15, 14, 'PV-33/04', '2021-12-08', '৩.৬ SPD OFF White , চক পাউডার , T-6', NULL, 1170, 419945, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:31:33', '2022-02-27 00:31:33'),
(35, 15, 14, 'PV-33/05', '2021-08-08', 'Developer Reg. Fee', NULL, 2124, 417821, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:32:53', '2022-02-27 00:32:53'),
(36, 15, 14, 'PV-33/06', '2021-08-11', 'BRIS Mobile App', NULL, 70000, 347821, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:34:13', '2022-02-27 00:34:13'),
(37, 15, 14, 'PV-33/07', '2021-09-28', 'Onu , Switch , Fiber , UTP Cat - 6', NULL, 24450, 323371, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:36:52', '2022-02-27 00:36:52'),
(38, 15, 14, 'PV-33/08', '2021-06-15', 'Power Strip , Onu , TJ Box , Router , Switch , SSD', NULL, 39840, 283531, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:39:07', '2022-02-27 00:39:07'),
(39, 15, 14, 'PV-33/09', '2021-07-03', 'SAS Radius 4 Gold Pack , Gate way', NULL, 15707, 267824, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:40:43', '2022-02-27 00:40:43'),
(40, 15, 14, 'PV-33/10', '2021-12-07', 'Swing Door , Glass Partition', NULL, 46000, 221824, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:41:52', '2022-02-27 00:41:52'),
(41, 15, 14, 'PV-33/11', '2021-12-17', 'Destemper Salary', NULL, 1800, 220024, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:42:54', '2022-02-27 00:42:54'),
(42, 15, 14, 'PV-33/12', '2021-09-28', 'P/C 1x2 , 1x4 , 1x48 , Paccoad , Router , Onu', NULL, 22825, 197199, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:44:41', '2022-02-27 00:44:41'),
(43, 15, 14, 'PV-33/13', '2021-07-05', 'গাম , খাম', NULL, 1430, 195769, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:47:48', '2022-02-27 00:47:48'),
(44, 15, 14, 'PV-33/14', '2021-10-18', 'CAT - 6 Cable', NULL, 5800, 189969, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:50:00', '2022-02-27 00:50:00'),
(45, 15, 14, 'PV-33/15', '2021-11-21', 'PLC SP: 1x2', NULL, 2500, 187469, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:51:17', '2022-02-27 00:51:17'),
(46, 15, 14, 'PV-33/16', '2021-05-21', 'Domain', NULL, 4600, 182869, NULL, NULL, NULL, NULL, NULL, '2022-02-27 00:52:32', '2022-02-27 00:52:32'),
(47, 15, 14, 'PV-33/17', '2021-12-23', 'ICT Cubicles', NULL, 42600, 140269, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:01:58', '2022-02-27 01:01:58'),
(48, 15, 14, 'PV-33/18', '2021-12-09', 'Floor Mat', NULL, 3358, 136911, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:03:19', '2022-02-27 01:03:19'),
(49, 15, 14, 'PV-33/19', '2021-12-29', 'Bannar', NULL, 1200, 135711, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:05:47', '2022-02-27 01:05:47'),
(50, 15, 14, 'PV-33/20', '2021-09-19', '1100/= PCS Prepaid Card Print', NULL, 45000, 90711, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:07:02', '2022-02-27 01:07:02'),
(51, 15, 14, 'PV-33/21', '2021-06-14', 'Giga Switch 8 Port , 10/100 Switch 8 Port', NULL, 9750, 80961, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:08:46', '2022-02-27 01:08:46'),
(52, 15, 14, 'PV-33/22', '2022-01-16', 'Mikrotic Router & BDCOM OLT', NULL, 80000, 961, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:10:22', '2022-02-27 01:10:22'),
(53, 16, 14, 'RV-BRIS-35', '2021-12-15', 'মোবাইল ক্রয় (অর্থ মন্ত্রনালয় প্রশাসনিক)', 12000, 0, 12000, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:23:14', '2022-02-27 01:23:14'),
(54, 16, 14, 'PV-35/01', '2021-12-19', 'Realme C21T', NULL, 12000, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 01:24:18', '2022-02-27 01:24:18'),
(55, 17, 14, 'RV-BRIS/36', '2021-10-20', 'অফিসার মেস (পুরাতন) বিল্ডিং ইন্টারনেট রিস্ট্রাকচার', 71150, 0, 71150, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:09:04', '2022-02-27 20:09:04'),
(56, 17, 14, 'PV-36/01', '2021-10-22', 'UPS 1200VA,CAT-6 , TP Link Router', NULL, 51600, 19550, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:10:51', '2022-02-27 20:10:51'),
(57, 17, 14, 'PV-36/02', '2021-11-06', 'Cable Clip , তালা,1.3 RM Cable , পাইপ , DB BOX', NULL, 6018, 13532, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:12:32', '2022-02-27 20:12:32'),
(58, 17, 14, 'PV-36/03', '2021-10-20', 'Customer Service Mobile', NULL, 1850, 11682, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:13:38', '2022-02-27 20:13:38'),
(59, 17, 14, 'PV-36/04', '2021-10-30', 'NVR CP PLUS FOR ICT CELL', NULL, 4500, 7182, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:15:02', '2022-02-27 20:15:02'),
(60, 17, 14, 'PV-36/05', '2021-11-26', 'Active Power , Tool Box , Digital Miter', NULL, 5850, 1332, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:18:32', '2022-02-27 20:18:32'),
(61, 17, 14, 'PV-36/06', '2021-11-09', 'Soldering Iron Bit', NULL, 150, 1182, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:19:46', '2022-02-27 20:19:46'),
(62, 17, 14, 'PV-36/07', '2021-11-30', 'MC', NULL, 1100, 82, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:20:28', '2022-02-27 20:20:28'),
(63, 17, 14, 'PV-36/08', '2022-01-01', 'বোর্ড , সুইচ , তার , সকেট', NULL, 82, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:21:37', '2022-02-27 20:21:37'),
(64, 18, 14, 'Rv-BRIS/37', '2022-01-02', 'নভেম্বর - ২০২১ মাসের খরচাদি', 71616, 0, 71616, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:36:14', '2022-02-27 20:36:14'),
(65, 18, 14, 'PV-37/01', '2021-12-04', 'Salary of Sr Service Technician', NULL, 12000, 59616, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:41:07', '2022-02-27 20:41:07'),
(66, 18, 14, 'PV-37/02', '2021-12-04', 'Salary of Jr Service Tech', NULL, 9000, 50616, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:42:12', '2022-02-27 20:42:12'),
(67, 18, 14, 'PV-37/03(1)', '2021-12-05', 'Salary of General Helper', NULL, 3000, 47616, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:43:11', '2022-02-27 20:43:11'),
(68, 18, 14, 'PV-37/03(2)', '2021-12-05', 'Salary General Helper', NULL, 3000, 44616, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:43:59', '2022-02-27 20:43:59'),
(69, 18, 14, 'PV-37/04', '2021-12-20', '05X Mobile Bill', NULL, 1700, 42916, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:44:52', '2022-02-27 20:44:52'),
(70, 18, 14, 'PV-37/05', '2021-12-05', '04X Honourary', NULL, 3500, 39416, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:46:02', '2022-02-27 20:46:02'),
(71, 18, 14, 'PV-37/06', '2021-12-09', 'দোকান ভাড়া', NULL, 5000, 34416, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:47:26', '2022-02-27 20:47:26'),
(72, 18, 14, 'PV-37/7', '2021-12-15', 'বিদ্যুৎ বিল', NULL, 216, 34200, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:48:34', '2022-02-27 20:48:34'),
(73, 18, 14, 'PV-37/00(1)', '2021-11-24', 'সীল', NULL, 249, 33951, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:49:45', '2022-02-27 20:49:45'),
(74, 18, 14, 'PV-37/08(2)', '2021-11-28', 'বাই সাইকেল , সীট কভার , তালা', NULL, 7150, 26801, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:51:03', '2022-02-27 20:51:03'),
(75, 18, 14, 'PV-37/08(3)', '2021-11-02', 'Optical Multi Meter , Switch , Modular, Cable Tester', NULL, 11880, 14921, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:52:41', '2022-02-27 20:52:41'),
(76, 18, 14, 'PV-37/08(04)', '2021-11-01', 'Alkohal Pad , Sanitizar , Tisue', NULL, 845, 14076, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:53:39', '2022-02-27 20:53:39'),
(77, 18, 14, 'PV-37/08(5)', '2021-11-01', 'Optical Cable , CAT - 6 , TJ BOX', NULL, 14076, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 20:54:45', '2022-02-27 20:54:45'),
(78, 19, 14, 'RV-BRIS/38', '2021-10-12', 'Res NOC চন্দ্রিমা মার্কেট এ স্থানান্তর', 110000, 0, 110000, NULL, NULL, NULL, NULL, NULL, '2022-02-27 22:21:11', '2022-02-27 22:21:11'),
(79, 19, 14, 'PV-38/01', '2021-10-30', 'গ্লাস পার্টিশন , টেম্পার ডোর , ছিলিং , টেবিল ওয়াল', NULL, 108900, 1100, NULL, NULL, NULL, NULL, NULL, '2022-02-27 22:43:58', '2022-02-27 22:43:58'),
(80, 19, 14, 'PV-38/02', '2021-12-02', 'ট্রেড লাইসেন্স', NULL, 1100, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 22:44:58', '2022-02-27 22:44:58'),
(81, 20, 14, 'Rv-BRIS/40', '2022-01-15', 'ডিসেম্বর - ২০২১ মাসের খরচাদি প্রসঙ্গে', 66955, 0, 66955, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:08:02', '2022-02-27 23:08:02'),
(82, 20, 14, 'PV-40/01', '2022-01-05', 'Salary of Sr Service Technician', NULL, 9000, 57955, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:09:49', '2022-02-27 23:09:49'),
(83, 20, 14, 'PV-40/02', '2022-01-05', 'Salary of Store Keeper', NULL, 6000, 51955, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:10:44', '2022-02-27 23:10:44'),
(84, 20, 14, 'PV-40/03', '2022-01-04', '8X Mobile Bill', NULL, 1500, 50455, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:11:30', '2022-02-27 23:11:30'),
(85, 20, 14, 'PV-40/04', '2022-01-05', '2X Honaurary Bill', NULL, 2000, 48455, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:12:42', '2022-02-27 23:12:42'),
(86, 20, 14, 'PV-40/05', '2022-01-11', 'দোকান ভাড়া', NULL, 5000, 43456, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:13:39', '2022-02-27 23:13:39'),
(87, 20, 14, 'PV-40/6(1)', '2021-12-08', 'ইনছুলেটর , জিয়াই তার', NULL, 430, 43025, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:14:54', '2022-02-27 23:14:54'),
(88, 20, 14, 'PV-40/6(2)', '2021-12-06', 'Optical cable', NULL, 3850, 39175, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:15:44', '2022-02-27 23:15:44'),
(89, 20, 14, 'PV-40/6(3)', '2021-12-27', 'Optical cable , TP Link  Router', NULL, 39175, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:16:53', '2022-02-27 23:16:53'),
(90, 21, 14, 'RV-BRIS/42', '2022-02-24', 'জানুয়ারি - ২০২২ মাসের খরচাদি প্রসঙ্গে', 69360, 0, 69360, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:37:08', '2022-02-27 23:37:08'),
(91, 21, 14, 'PV-42/01', '2022-02-10', 'Salary of Jr Service Tech', NULL, 9000, 60360, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:38:12', '2022-02-27 23:38:12'),
(92, 21, 14, 'PV-42/02', '2022-02-10', 'Salary of Support Service Helper', NULL, 10000, 50360, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:39:09', '2022-02-27 23:39:09'),
(93, 21, 14, 'PV-42/03', '2022-02-10', 'Salary of Store Keeper', NULL, 6000, 44360, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:41:11', '2022-02-27 23:41:11'),
(94, 21, 14, 'PV-42/04', '2022-02-10', '04 x Mobile Bill', NULL, 1500, 42860, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:42:03', '2022-02-27 23:42:03'),
(95, 21, 14, 'PV-42/05', '2022-02-10', '02 x Honourary', NULL, 2000, 40860, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:42:42', '2022-02-27 23:42:42'),
(96, 21, 14, 'PV-42/06', '2022-02-10', 'দোকান ভাড়া', NULL, 5000, 35860, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:43:32', '2022-02-27 23:43:32'),
(97, 21, 14, 'PV-42/07(1)', '2022-01-16', 'ঝাড়ু , ইন্সুলেটর , খাবার বিল , তালা', NULL, 4010, 31850, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:44:54', '2022-02-27 23:44:54'),
(98, 21, 14, 'PV-42/07(2)', '2022-01-29', 'Optical Fiber , MC , Cable Type', NULL, 16650, 15200, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:46:05', '2022-02-27 23:46:05'),
(99, 21, 14, 'PV-42/07(3)', '2022-01-22', 'Optical Cable , Cat - 6', NULL, 8950, 6250, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:47:09', '2022-02-27 23:47:09'),
(100, 21, 14, 'PV-42/07(4)', '2022-01-17', 'SFT Module , TJ BOX , Switch - 8 port', NULL, 5400, 850, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:48:21', '2022-02-27 23:48:21'),
(101, 21, 14, 'PV-42/07(5)', '2022-01-25', 'TJ BOX', NULL, 850, 0, NULL, NULL, NULL, NULL, NULL, '2022-02-27 23:49:03', '2022-02-27 23:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `notesheets`
--

CREATE TABLE `notesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booknotesheet_id` bigint(20) UNSIGNED NOT NULL,
  `notesheetDate` date NOT NULL,
  `notesheet_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasonForTheNoteSheet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL DEFAULT 12,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notesheets`
--

INSERT INTO `notesheets` (`id`, `booknotesheet_id`, `notesheetDate`, `notesheet_no`, `reasonForTheNoteSheet`, `bookName`, `amount`, `created_at`, `updated_at`) VALUES
(8, 11, '2021-04-04', 'নোটসীট নং ১৪৫', '২১-০৪-২১ অনুমোদনকৃত নোটসীট নং ১৪৫ , licensed Software ক্রয়বাবদ ৬৫৭১০০ টাকা উত্তলন করা হয়', 'কম্পিউটার সফটওয়্যার ৪১১৩৩০১ এক্সপেন্স বিবরনি', 657100, '2022-02-26 19:51:50', '2022-02-26 19:51:50'),
(9, 12, '2021-05-06', 'নোটসীট নং ১৪২', '০৬/০৫/২১ তারিখে অনুমোদনকৃত নোটসীট - ১৪২ , প্রিন্টার ও ফটোকপিয়ার কার্টিজ / টোনার ক্রয় বাবদ ৮৮৯০০০/= (আট লক্ষ উননব্বই হাজার ) টাকা উওলোন করা হলো ।', 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী - ০১', 889000, '2022-02-26 20:30:06', '2022-02-26 20:30:06'),
(10, 12, '2021-04-23', 'নোটসীট নং ১৪৩', '২৩/০৪/২১ তারিখে অনুমোদনকৃত নোটসীট নং ১৪৩ , বঙ্গবন্ধু  কর্নার ও মিঊজিয়ামে সিসিটিভি স্থাপন বাবদ ১৮০০০০/= (এক লক্ষ আশি হাজার) টাকা উওলন করা হয় ।', 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী - ০১', 180000, '2022-02-26 21:05:59', '2022-02-26 21:05:59'),
(11, 12, '2021-04-07', 'নোটসীট নং ১৪৪', '০৭/০৪/২০২১ তারিখে অনুমোদনকৃত নোটসীট  নং ১৪৪  Zoom Standard Pro Annual Licenses(2) ক্রয় বাবদ ১৯০৬৭/= (উনিশ হাজার সাতসট্টি) টাকা উওলন করা হয় ।', 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী - ০১', 19067, '2022-02-26 23:00:31', '2022-02-26 23:00:31'),
(12, 12, '2021-06-14', 'নোটসীট নং ১৪৬', '১৪/০৬/২১ তারিখে অনুমোদনকৃত নোটসীট - ১৪৬ , Visitor,s Lounge এ 43\'\' Smart LED Television ক্রয় বাবদ ৪০৩৮৮/=  (চল্লিশ হাজার তিনশত আটাশি ) টাকা উওলন করা হয় ।', 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী - ০১', 40388, '2022-02-26 23:10:56', '2022-02-26 23:10:56'),
(13, 12, '2021-10-19', 'নোটসীট নং ১৪৮', '১৯/১০/২১ তারিখে অনুমোদনকৃত নোটসীট নং ১৪৮ , আই সি টি অফিস আপ্যায়ন বিল বাবদ ১২৫৪২/= টাকা উওলন করা হয় ।', 'বিওএফ প্রাইভেট ফান্ড এর ব্যয় বিবরণী - ০১', 12542, '2022-02-26 23:21:40', '2022-02-26 23:21:40'),
(14, 13, '2021-12-02', 'নোটসীট নং ১৫৩', '02/12/21 তারিখে অনুমোদনকৃত নোটসীট নং ১৫৩ , বিওএফ প্রুফ্ররেঞ্জ এ টার্গেট মনিটরিং এর প্রয়োজনে যন্ত্রাংশ ক্রয় বাবদ ২০২০৫০/= (দুই লক্ষ দুই হাজার পঞ্চাশ ) টাকা উওলন করা হয় ।', 'কম্পিউটার আনুষঙ্গিক (৪১১২২০২) ব্যয় বিবরণী - ০১', 202050, '2022-02-26 23:51:22', '2022-02-26 23:51:22'),
(15, 14, '2021-06-06', 'নোটসীট নং ০৩৩', '১৩/০৬/২১ তারিখ অনুমোদনকৃত BRIS নোটসীট নং ৩৩ , Residential Internet Service এর মান ঊন্নয়ন সম্পর্কিত পর্ষদ এর সুপারিশ সমূহ বাস্তবায়ন এর জন্য ৪৪০০০০/= (চার লক্ষ চল্লিশ হাজার )টাকা উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 440000, '2022-02-27 00:07:54', '2022-02-27 00:07:54'),
(16, 14, '2021-12-15', 'নোটসীট নং ৩৫', '১৫/১২/২১ তারিখ অনুমোদনকৃত BRIS নোটসীট নং ৩৫ , মোবাইল ক্রয় এর জন্য ১২০০০ (বার হাজার টাকা) উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 12000, '2022-02-27 01:19:29', '2022-02-27 01:19:29'),
(17, 14, '2021-10-20', 'নোটসীট নং ৩৬', '২০/০৯/২০২১ তারিখ অনুমোদনকৃত BRIS নোটসীট নং ৩৬ , অফিসার মেস (পুরাতন ) বিল্ডিং এ ইন্টারনেট রিস্ট্রাকচার করনের জন্য ৭১১৫০/= (একাত্তর হাজার একশত পঞ্চাশ ) টাকা উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 71150, '2022-02-27 20:06:57', '2022-02-27 20:06:57'),
(18, 14, '2022-01-02', 'নোটসীট নং ৩৭', '০২/০১/২০২২ তারিখে অনুমোদনকৃত BRIS নোটসীট নং ৩৭ , BRIS Service Support এর নভেম্বর - ২০২১ মাসের খরচাদি পরিশোধের জন্য ৭১৬১৬/=  (একাত্তর হাজার ছয়শত ষোল ) টাকা উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 71616, '2022-02-27 20:34:02', '2022-02-27 20:34:02'),
(19, 14, '2021-10-12', 'নোটসীট নং ৩৮', '১২/১০/২০২১ তারিখে অনুমোদনকৃত BRIS নোটসীট নং ৩৮ , Residential Internet NOC চন্দ্রিমা মার্কেট স্থানান্তর করনের জন্য ১১০০০০/= (এক লক্ষ দশ হাজার ) টাকা উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 110000, '2022-02-27 22:19:42', '2022-02-27 22:19:42'),
(20, 14, '2021-01-15', 'নোটসীট নং ৪০', '১৫/০১/২১ তারিখে অনুমোদনকৃত BRIS নোটসীট নং ৪০ , BRIS এর সাপোর্ট সার্ভিস ডিসেম্বর - ২০২১ মাসের খরচাদি অনুমোদন এর জন্য  ৬৬৯৫৫/= (ছেষট্টি হাজার নয়শত পঞ্চাশ) টাকা উওলন করা হয়।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 66955, '2022-02-27 23:06:04', '2022-02-27 23:06:04'),
(21, 14, '2022-02-24', 'নোটসীট নং ৪২', '২৪/০২/২০২২ তারিখে অনুমোদনকৃত BRIS নোটসীট নমগ ৪২ , BOF RIS এর Support Service এর জন্য মাসিক খরচাদি অনুমোদন বাবদ ৬৯৩৬০/= (উনসত্তর হাজার তিনশত ষাট ) টাকা উওলন করা হয় ।', 'বিওএফ রেসিডেন্সিয়াল ইন্টারনেট সার্ভিস এর ব্যয় বিবরণী - ০১', 69360, '2022-02-27 23:35:41', '2022-02-27 23:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$72E.5NsI4SrQm2Ml6pKH.e0XcM4clv8zWU6nhp3kE937AaP7q9L.O', '2021-09-17 22:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productissueds`
--

CREATE TABLE `productissueds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bofid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productissueds`
--

INSERT INTO `productissueds` (`id`, `bofid`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(49, 'BA-3219', 'Sheikh Pasha Habib Uddin', 'Major General', '2021-10-03 01:34:03', '2021-10-03 01:34:03'),
(50, 'BA-3534', 'Kazi Mohammad Kaiser Hossain', 'Brig Gen', '2021-10-03 01:34:58', '2021-10-03 01:34:58'),
(51, 'BA-4146', 'Md Mahboob Karim', 'Birg Gen', '2021-10-03 01:35:29', '2021-10-03 01:35:29'),
(52, 'BA-4599', 'Md Munirul Islam', 'Brig Gen', '2021-10-03 01:36:18', '2021-10-03 01:36:18'),
(53, 'BA-4903', 'Md Mahbubur Rasel', 'Brig Gen', '2021-10-03 01:36:59', '2021-10-03 01:36:59'),
(54, 'BA-5031', 'Md Mizanuzzaman', 'Col', '2021-10-03 01:37:47', '2021-10-03 01:37:47'),
(55, 'BA-4282', 'Md Shahinoor Alam', 'Lt Col', '2021-10-03 01:38:23', '2021-10-03 01:38:23'),
(56, 'BA-6018', 'Mohammad Nurul Aziz', 'Lt Col', '2021-10-03 01:39:02', '2021-10-03 01:39:02'),
(57, 'BA-6084', 'Abdul Khaleque Mohammad Kamruzzaman', 'Lt Col', '2021-10-03 01:43:08', '2021-10-03 01:43:08'),
(58, 'BA-7033', 'Samira Akter', 'Lt Col', '2021-10-03 01:43:42', '2021-10-03 01:43:42'),
(59, 'BA-5467', 'Md Zahidul Islam', 'Major', '2021-10-03 01:44:26', '2021-10-03 01:44:26'),
(60, 'BA-5676', 'Md Mizanur Rahman Mandol', 'Major', '2021-10-03 01:45:19', '2021-10-03 01:45:19'),
(61, 'BA-118070', 'SM Salauddin Islam Siddiky', 'Major', '2021-10-03 01:46:01', '2021-10-03 01:46:01'),
(62, 'BA-6137', 'Mohammad Ahasan Ullah', 'Major', '2021-10-03 01:46:40', '2021-10-03 01:46:40'),
(63, 'BA-6454', 'Muhammad Mahfuzur Rahman', 'Major', '2021-10-03 01:47:32', '2021-10-03 01:47:32'),
(64, 'BA-6897', 'Khondakar Mohammad Rakibul Hasan', 'Major', '2021-10-03 01:48:51', '2021-10-03 01:48:51'),
(65, 'BA-6921', 'K M Siful Bashar', 'Major', '2021-10-03 01:49:30', '2021-10-03 01:49:30'),
(67, 'BA-9214', 'Md Farhan Fuad', 'Captain', '2021-10-03 02:00:18', '2021-10-03 02:00:18'),
(68, '1006', 'KAZI  IQBAL HOSSAIN', 'Deputy Director of Administration', '2021-10-03 19:10:55', '2021-10-03 19:10:55'),
(69, '1014', 'KHAN  HABIBUR RAHMAN', 'Deputy Director', '2021-10-03 19:13:44', '2021-10-03 19:13:44'),
(70, '1007', 'MD. TAZEMUL ISLAM', 'Manager', '2021-10-03 19:14:03', '2021-10-03 19:14:03'),
(71, '1016', 'MD. SHAHIDULLAH', 'Manager', '2021-10-03 19:14:19', '2021-10-03 19:14:19'),
(72, '1464', 'MD. AMINUR RAHMAN', 'Manager', '2021-10-03 19:14:39', '2021-10-03 19:14:39'),
(73, '1703', 'SHAHINA  RAHMAN', 'Manager', '2021-10-03 19:14:58', '2021-10-03 19:14:58'),
(74, '1701', 'A. N. M   ZAKARIA', 'Manager', '2021-10-03 19:15:13', '2021-10-03 19:15:13'),
(75, '1702', 'MD. NURUNNABI  ISLAM', 'Manager', '2021-10-03 19:15:29', '2021-10-03 19:15:29'),
(76, '1095', 'MD. EFTHA  KHAIRUL  ALAM', 'Manager', '2021-10-03 19:15:47', '2021-10-03 19:15:47'),
(77, '1849', 'MD. KAMRUL HASAN  PARVEZ', 'Manager', '2021-10-03 19:16:02', '2021-10-03 19:16:02'),
(78, '1850', 'MD. MAHADI  HASAN', 'Manager', '2021-10-03 19:16:16', '2021-10-03 19:16:16'),
(79, '1851', 'MD.  MIZANUR  RAHMAN', 'Manager', '2021-10-03 19:16:49', '2021-10-03 19:16:49'),
(80, '1924', 'MOLLA ARIFUL HAQUE', 'Manager', '2021-10-03 19:17:05', '2021-10-03 19:17:05'),
(81, '1852', 'URME  MOSTOFA', 'Assist Manager', '2021-10-03 19:17:33', '2021-10-03 19:17:33'),
(82, '1853', 'MD. MOSHAROF HOSSAIN', 'Assist Manager', '2021-10-03 19:17:48', '2021-10-03 19:17:48'),
(83, '1096', 'BELAL HUSSAIN', 'Assist Manager', '2021-10-03 19:18:04', '2021-10-03 19:18:04'),
(84, '1127', 'MST. SELINA AKHTER', 'Assist Manager', '2021-10-03 19:19:01', '2021-10-03 19:19:01'),
(85, '2027', 'MD ABBAS ALI', 'Chemist', '2021-10-03 19:19:15', '2021-10-03 19:19:15'),
(86, '2028', 'MD. BOKUL HOSSEN PK.', 'Assist Manager', '2021-10-03 19:19:29', '2021-10-03 19:19:29'),
(87, '2029', 'MASUD AHMED', 'Assist Manager', '2021-10-03 19:19:53', '2021-10-03 19:19:53'),
(88, '2030', 'MD MAHMUDUR RAHMAN', 'Assist Manager', '2021-10-03 19:20:07', '2021-10-03 19:20:07'),
(89, '1067', 'MD. RAMJAN ALI', 'Assist Engineer', '2021-10-03 19:20:23', '2021-10-03 19:20:23'),
(90, '2046', 'SHAH MD. AHSAN HABIB', 'Personnel Officer', '2021-10-03 19:20:42', '2021-10-03 19:20:42'),
(91, '2047', 'MASUM BILLAH', 'Assist Engineer', '2021-10-03 19:20:56', '2021-10-03 19:20:56'),
(92, '2048', 'HUMAYUN KABIR', 'Assist Engineer', '2021-10-03 19:21:09', '2021-10-03 19:21:09'),
(93, '2050', 'TOFAEL AHMED', 'Assist Engineer', '2021-10-03 19:21:23', '2021-10-03 19:21:23'),
(94, '2051', 'MD. LUTFOR RAHMAN SELIM', 'Assist Engineer', '2021-10-03 19:21:35', '2021-10-03 19:21:35'),
(95, '1069', 'MD BAZLUR RAHMAN', 'Assist Engineer', '2021-10-03 19:21:48', '2021-10-03 19:21:48'),
(96, '1688', 'MOHAMMAD ABDUL ALIM SHEIKH', 'Personnel Officer', '2021-10-03 19:22:03', '2021-10-03 19:22:03'),
(97, '1442', 'MD MUSTAFIZUR RAHMAN', 'Assist Engineer', '2021-10-03 19:22:24', '2021-10-03 19:22:24'),
(98, '1443', 'MD MOZIBUR RAHMAN', 'Assist Engineer', '2021-10-03 19:22:37', '2021-10-03 19:22:37'),
(99, '1444', 'Anisur Rahman', 'Assist Engineer', '2021-10-03 19:24:04', '2021-10-03 19:24:04'),
(100, '1445', 'MD ABDUL QUAYYUM KHAN', 'Assist Engineer', '2021-10-03 19:24:21', '2021-10-03 19:24:21'),
(101, '2052', 'MD RIPON MIA', 'Personnel Officer', '2021-10-03 19:24:39', '2021-10-03 19:24:39'),
(102, '2054', 'ABU SALEH MD MAMUN', 'Assist Engineer', '2021-10-03 19:24:59', '2021-10-03 19:24:59'),
(103, '2057', 'RUJBANA NURI', 'Assist Engineer', '2021-10-03 19:25:10', '2021-10-03 19:25:10'),
(104, '2060', 'MD HASANUR RAHMAN', 'Assist Engineer', '2021-10-03 19:25:22', '2021-10-03 19:25:22'),
(105, '1446', 'MD. ALIUR RAHMAN', 'Assist Engineer', '2021-10-03 19:25:40', '2021-10-03 19:25:40'),
(106, '1447', 'MD. ABUL HOSSAIN', 'Assist Engineer', '2021-10-03 19:25:56', '2021-10-03 19:25:56'),
(107, '1015', 'Md. Abdul Bari', 'Manager', '2021-10-03 19:30:40', '2021-10-03 19:30:40'),
(108, 'Test-Employee-101', 'Test User', 'Test Designation', '2021-10-06 18:42:56', '2021-10-06 18:42:56'),
(109, 'BA-5603', 'Lt. Col. Md. Aslam Uddin', 'Deputy Director', '2021-11-26 22:53:41', '2021-11-26 22:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `productStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(9, 'D19062', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1634025254.jpg', NULL, 'Dir Admin & Mat', '2021-08-30 23:47:20', '2021-10-12 01:54:14', 'Issued'),
(10, 'D19125', 'Desktop', 'Brand Desktop', NULL, NULL, 'Apple', '1630894906.jpg', NULL, 'Bof Hq', '2021-08-30 23:50:46', '2021-09-05 20:21:46', 'Issued'),
(11, 'D19126', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630894888.jpg', NULL, 'Bof Hq', '2021-08-30 23:53:27', '2021-09-05 20:21:28', 'Issued'),
(12, 'D19121', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Canon', '1630894876.jpg', NULL, 'Bof Hq', '2021-08-30 23:54:18', '2021-09-05 20:21:16', 'Issued'),
(13, 'D19103', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633924993.jpg', NULL, 'Bof Hq', '2021-08-30 23:55:24', '2021-10-10 22:03:13', 'Issued'),
(14, 'D19123', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1634024974.jpg', NULL, 'Bof Hq', '2021-08-30 23:56:44', '2021-10-12 01:49:34', 'Issued'),
(15, 'D19124', 'Desktop', 'Clone Desktop', NULL, NULL, 'Clone', '1634024874.jpg', NULL, 'Bof Hq', '2021-08-30 23:57:21', '2021-10-12 01:47:54', 'Issued'),
(16, 'D19064', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630894818.jpg', 'Deputy Comdt, All in One Pc.', 'Bof Hq', '2021-08-30 23:58:01', '2021-10-14 00:15:40', 'Issued'),
(17, 'L-19005', 'Laptop', NULL, 'Core i3', NULL, 'Fuzitsu', '1630894802.jpg', NULL, 'R & D', '2021-08-30 23:58:53', '2021-11-02 21:00:29', 'Issued'),
(18, 'D19065', 'Desktop', 'Clone Desktop', '2 Duo', NULL, 'Philips', '1630895092.jpg', NULL, 'Bof Hq', '2021-08-31 00:00:11', '2021-10-10 21:30:50', 'Issued'),
(19, 'D19269', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895078.jpg', NULL, 'Bof Hq', '2021-08-31 00:01:04', '2021-09-05 20:24:38', 'Issued'),
(20, 'L-19001', 'Laptop', NULL, 'Core i7', NULL, 'HP', '1630895062.jpg', 'Comdt SIr returned 8/11/2021 (i7 , 7gen,HP)', 'ICT Stock', '2021-08-31 00:01:46', '2021-11-21 21:15:02', 'In Stock'),
(21, 'D19004', 'Desktop', NULL, '2 Duo', NULL, 'HP', '1633923117.jpg', NULL, 'PKS', '2021-08-31 00:01:54', '2021-10-10 21:31:57', 'Issued'),
(22, 'D19007', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1634025168.jpg', NULL, 'PKS', '2021-08-31 00:02:24', '2021-10-12 01:52:48', 'Issued'),
(23, 'L-19003', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630894989.jpg', 'This product is now damaged', NULL, '2021-08-31 00:03:23', '2022-02-02 20:52:38', 'Expire'),
(24, 'D19009', 'Desktop', NULL, 'Core i5', NULL, 'Delux', '1634025019.jpg', NULL, 'PKS', '2021-08-31 00:03:23', '2021-10-12 01:50:19', 'Issued'),
(26, 'D19060', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'DELL', '1633923257.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:05:05', '2021-10-10 21:34:17', 'Issued'),
(27, 'D19059', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1633923342.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:05:48', '2021-10-10 21:35:42', 'Issued'),
(28, 'D19058', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Samsung', '1634025048.jpg', NULL, 'DD Admin', '2021-08-31 00:06:37', '2021-10-12 01:50:48', 'Issued'),
(29, 'L-19006', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630895209.jpg', 'GSO-2  Return (11/11/2021)', 'ICT Stock', '2021-08-31 00:06:52', '2021-11-20 19:31:30', 'In Stock'),
(30, 'D19052', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Viewsonic', '1634025076.jpg', NULL, 'DD Admin', '2021-08-31 00:07:19', '2021-10-12 01:51:16', 'Issued'),
(32, 'D19066', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634025102.jpg', NULL, 'MAP', '2021-08-31 00:08:33', '2021-10-12 01:51:42', 'Issued'),
(33, 'L-21003', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630895141.jpg', 'Entry Date: 18/9/2021, 01 pc. Dir Admin & Mat Sir. \r\nPresent :Dir planning & Mantenance (Brig G Mahabub Rasel) Return Date : 14 /12/2021\r\nNew Issue : 23/12/21 (issue for conference room)', 'Conference Room', '2021-08-31 00:08:59', '2021-12-31 19:24:29', 'Issued'),
(34, 'L-19007', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810160.jpg', 'Comdt Sir Returned 8/11/2021 (i5 , 7 gen , HP)\r\nThis product has taken by x-comdt sir (shekh pasha habib uddin)', NULL, '2021-08-31 00:10:00', '2022-02-02 20:53:51', 'Out Of Order'),
(35, 'D19063', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895125.jpg', NULL, 'R & T', '2021-08-31 00:11:10', '2021-09-05 20:25:25', 'Issued'),
(36, 'L-21004', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630810130.jpg', NULL, 'R & D', '2021-08-31 00:11:35', '2021-10-16 20:39:31', 'Issued'),
(37, 'D19056', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630895112.jpg', NULL, 'R & T', '2021-08-31 00:12:07', '2021-09-05 20:25:12', 'Issued'),
(38, 'D19057', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1634025132.jpg', NULL, 'R & T', '2021-08-31 00:12:56', '2021-10-12 01:52:12', 'Issued'),
(39, 'D19118', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634025201.jpg', NULL, 'CR', '2021-08-31 00:13:45', '2021-10-12 01:53:21', 'Issued'),
(40, 'D19028', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895284.jpg', NULL, 'Workman Record', '2021-08-31 00:14:43', '2021-09-05 20:28:04', 'Issued'),
(41, 'L-19010', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630810101.jpg', 'i3 , 7 Gen', 'DD SA', '2021-08-31 00:15:08', '2021-11-08 19:50:23', 'Issued'),
(42, 'D19027', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Samsung', '1634025229.jpg', NULL, 'Workman Record', '2021-08-31 00:15:26', '2021-10-12 01:53:49', 'Issued'),
(43, 'L-19011', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810075.jpg', NULL, 'DD PLG', '2021-08-31 00:16:04', '2021-09-04 20:47:55', 'Issued'),
(44, 'L-19012', 'Laptop', NULL, 'Core i5', NULL, 'ASUS', '1630810045.jpg', 'Present Dir Admin & Mat', 'Dir PLG & maint Office', '2021-08-31 00:17:07', '2021-11-02 23:22:19', 'Issued'),
(45, 'D19026', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634025326.jpg', NULL, 'Workman Record', '2021-08-31 00:17:19', '2021-10-12 01:55:26', 'Issued'),
(46, 'L-19013', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630810014.jpg', 'Commandant Display', 'Conference Room', '2021-08-31 00:17:48', '2021-10-16 22:16:46', 'Issued'),
(47, 'D19029', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1634025294.jpg', NULL, 'Workman Record', '2021-08-31 00:18:01', '2021-10-12 01:54:54', 'Issued'),
(48, 'D19030', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1634025364.jpg', NULL, 'Workman Record', '2021-08-31 00:18:24', '2021-10-12 01:56:04', 'Issued'),
(49, 'L-19014', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630809983.jpg', NULL, 'Conference Room', '2021-08-31 00:18:33', '2021-09-04 20:46:23', 'Issued'),
(50, 'D19031', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895396.jpg', NULL, 'Stuff Record', '2021-08-31 00:18:50', '2021-09-05 20:29:56', 'Issued'),
(51, 'D19032', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1634025422.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:13', '2021-10-12 01:57:02', 'Issued'),
(52, 'L-19015', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630809950.jpg', NULL, 'Golf Club', '2021-08-31 00:19:19', '2021-09-04 20:45:50', 'Issued'),
(53, 'D19033', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895368.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:26', '2021-09-05 20:29:28', 'Issued'),
(54, 'D19034', 'Desktop', 'Clone Desktop', NULL, NULL, 'Clone', '1634025394.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:50', '2021-10-12 01:56:34', 'Issued'),
(55, 'L-19016', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630809924.jpg', NULL, 'CC R & D', '2021-08-31 00:19:55', '2021-09-04 20:45:24', 'Issued'),
(56, 'D19035', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895337.jpg', NULL, 'Stuff Record', '2021-08-31 00:20:07', '2021-09-05 20:28:57', 'Issued'),
(57, 'L-19017', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630809892.jpg', NULL, 'DD HAG', '2021-08-31 00:20:25', '2021-09-04 20:44:52', 'Issued'),
(58, 'D19036', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633923858.jpg', NULL, 'MAP', '2021-08-31 00:20:57', '2021-10-10 21:44:18', 'Issued'),
(60, 'D19041', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895507.jpg', NULL, 'Budget & Cash', '2021-08-31 00:21:18', '2021-09-05 20:31:47', 'Issued'),
(63, 'D19038', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1634025511.jpg', NULL, 'Budget', '2021-08-31 00:21:55', '2021-10-12 01:58:31', 'Issued'),
(64, 'L-19019', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630808351.jpg', NULL, 'Mosque', '2021-08-31 00:22:12', '2021-09-04 20:19:11', 'Issued'),
(66, 'D19039', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1634025678.jpg', NULL, 'Finance', '2021-08-31 00:22:34', '2021-10-12 02:01:18', 'Issued'),
(67, 'L-19020', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630808324.jpg', NULL, 'Purchase', '2021-08-31 00:22:49', '2021-09-04 20:18:44', 'Issued'),
(68, 'D19040', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634025762.jpg', NULL, 'Finance', '2021-08-31 00:22:51', '2021-10-12 02:02:42', 'Issued'),
(69, 'D19045', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895755.jpg', NULL, 'Finance', '2021-08-31 00:23:07', '2021-09-05 20:35:55', 'Issued'),
(72, 'D19046', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087439.jpg', NULL, 'Finance', '2021-08-31 00:24:21', '2021-10-12 19:10:39', 'Issued'),
(73, 'D19042', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895688.jpg', NULL, 'Billing', '2021-08-31 00:24:34', '2021-09-05 20:34:48', 'Issued'),
(74, 'D19043', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1634087470.jpg', NULL, 'Billing', '2021-08-31 00:24:54', '2021-10-12 19:11:10', 'Issued'),
(75, 'L-19021', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808299.jpg', NULL, 'DIR production Office', '2021-08-31 00:24:57', '2021-09-04 20:18:19', 'Issued'),
(76, 'D19044', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634025547.jpg', NULL, 'Billing', '2021-08-31 00:25:07', '2021-10-12 01:59:07', 'Issued'),
(77, 'D19047', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1630895644.jpg', NULL, 'Pension', '2021-08-31 00:25:24', '2021-10-10 21:52:53', 'Issued'),
(78, 'L-19022', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808268.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 00:25:31', '2021-09-04 20:17:48', 'Issued'),
(79, 'D19048', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087590.jpg', NULL, 'Pension', '2021-08-31 00:25:47', '2021-10-12 19:13:10', 'Issued'),
(80, 'D19049', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1634025639.jpg', NULL, 'Officer Record', '2021-08-31 00:26:01', '2021-10-12 02:00:39', 'Issued'),
(81, 'L-19023', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808243.jpg', NULL, 'DD HAG', '2021-08-31 00:26:07', '2021-09-04 20:17:23', 'Issued'),
(82, 'D19050', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895868.jpg', NULL, 'Officer Record', '2021-08-31 00:26:17', '2021-09-05 20:37:48', 'Issued'),
(83, 'D19051', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1634087624.jpg', NULL, 'Officer Record', '2021-08-31 00:26:38', '2021-10-12 19:13:44', 'Issued'),
(84, 'L-19024', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808219.jpg', NULL, 'DD Admin', '2021-08-31 00:26:58', '2021-09-04 20:16:59', 'Issued'),
(85, 'D19001', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'HP', '1634025804.jpg', NULL, 'Security', '2021-08-31 00:27:05', '2021-10-12 02:03:24', 'Issued'),
(86, 'D19070', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087690.jpg', NULL, 'Security', '2021-08-31 00:27:43', '2021-10-12 19:14:50', 'Issued'),
(88, 'L-19025', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808194.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:27:59', '2021-09-04 20:16:34', 'Issued'),
(89, 'D19072', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895984.jpg', NULL, 'Security', '2021-08-31 00:28:08', '2021-09-05 20:39:44', 'Issued'),
(90, 'L-19026', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808171.jpg', NULL, 'Comdt C Room', '2021-08-31 00:28:21', '2021-09-04 20:16:11', 'Issued'),
(91, 'D19073', 'Desktop', 'Clone Desktop', '2 Duo', NULL, 'Clone', '1634025893.jpg', NULL, 'Security', '2021-08-31 00:28:25', '2021-10-12 02:04:53', 'Issued'),
(92, 'D19074', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895937.jpg', NULL, 'Security', '2021-08-31 00:28:39', '2021-09-05 20:38:57', 'Issued'),
(93, 'L-19027', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808135.jpg', NULL, 'R & D', '2021-08-31 00:28:48', '2021-09-04 20:15:35', 'Issued'),
(94, 'L-19028', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808103.jpg', NULL, 'DD SAA', '2021-08-31 00:30:05', '2021-10-29 19:21:33', 'Issued'),
(96, 'L-19030', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630808059.jpg', '15/11/2020,', 'GE Army', '2021-08-31 00:31:21', '2021-10-16 20:44:06', 'Issued'),
(97, 'L-21001', 'Laptop', NULL, 'Core i5', NULL, 'ASUS', '1630808036.jpg', '31/01/2021, Man Security.', 'Security', '2021-08-31 00:32:15', '2021-10-16 20:45:03', 'Issued'),
(98, 'L-21002', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630808014.jpg', '02/02/2021', 'DD Admin & Mat', '2021-08-31 00:32:56', '2021-10-16 20:46:16', 'Issued'),
(99, 'L-19008', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630807988.jpg', 'From ICT To medical Date : 28/3/2022', 'Medical', '2021-08-31 00:34:41', '2022-03-28 19:53:19', 'Issued'),
(100, 'D19076', 'Desktop', NULL, NULL, NULL, NULL, '1634025939.jpg', NULL, 'Security', '2021-08-31 00:34:58', '2021-10-12 02:05:39', 'Issued'),
(102, 'L-19033', 'Laptop', NULL, NULL, NULL, NULL, '1630807941.jpg', 'Selection board   Date : 10/8/2020', 'Comdt', '2021-08-31 00:35:35', '2021-10-16 22:18:15', 'Issued'),
(103, 'L-19031', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630807916.jpg', 'From SAE Sohidul Islam', 'ICT', '2021-08-31 00:35:44', '2021-10-16 20:50:19', 'Issued'),
(104, 'D20005', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633924548.jpg', 'CMC Room', 'Security', '2021-08-31 00:35:48', '2021-10-14 00:11:05', 'Issued'),
(105, 'D19246', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087555.jpg', NULL, 'Security', '2021-08-31 00:36:11', '2021-10-12 19:12:35', 'Issued'),
(106, 'D19155', 'Desktop', NULL, NULL, NULL, NULL, '1630899233.jpg', NULL, 'Security', '2021-08-31 00:36:30', '2021-09-05 21:33:53', 'Issued'),
(107, 'D19122', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087736.jpg', NULL, 'Security', '2021-08-31 00:36:41', '2021-10-12 19:15:36', 'Issued'),
(108, 'D19156', 'Desktop', NULL, NULL, NULL, NULL, '1634087859.jpg', NULL, 'Security', '2021-08-31 00:36:55', '2021-10-12 19:17:39', 'Issued'),
(109, 'D19069', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'HP', '1634025719.jpg', NULL, 'Security', '2021-08-31 00:37:09', '2021-10-12 02:01:59', 'Issued'),
(110, 'D19098', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1633924685.jpg', NULL, 'Medical', '2021-08-31 00:39:02', '2021-10-10 21:58:05', 'Issued'),
(113, 'D19100', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634025849.jpg', NULL, 'Medical', '2021-08-31 00:42:18', '2021-10-12 02:04:09', 'Issued'),
(114, 'D19101', 'Desktop', 'Clone Desktop', '2 Duo', NULL, 'HP', '1634087513.jpg', NULL, 'Medical', '2021-08-31 00:43:27', '2021-10-12 19:11:53', 'Issued'),
(115, 'D19104', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1634007314.jpg', NULL, 'Medical', '2021-08-31 00:43:41', '2021-10-11 20:55:14', 'Issued'),
(117, 'D19105', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087901.jpg', NULL, 'Medical', '2021-08-31 00:44:08', '2021-10-12 19:18:21', 'Issued'),
(118, 'D19106', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633924823.jpg', NULL, 'Medical', '2021-08-31 00:44:19', '2021-10-10 22:00:23', 'Issued'),
(119, 'D19107', 'Desktop', 'Clone Desktop', 'Core i7', NULL, 'HP', '1633924864.jpg', NULL, 'Medical', '2021-08-31 00:44:31', '2021-10-10 22:01:04', 'Issued'),
(120, 'D19108', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630900796.jpg', NULL, 'Welfare', '2021-08-31 00:44:55', '2021-09-05 21:59:56', 'Issued'),
(121, 'D19241', 'Desktop', NULL, NULL, NULL, NULL, '1630900774.jpg', NULL, 'Medical', '2021-08-31 00:45:06', '2021-09-05 21:59:34', 'Issued'),
(122, 'D20001', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', '1634087340.jpg', 'Medical Store.', 'Medical', '2021-08-31 00:45:30', '2021-10-14 00:25:07', 'Issued'),
(124, 'D19109', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630900700.jpg', NULL, 'Miscellaneous', '2021-08-31 00:46:20', '2021-09-05 21:58:20', 'Issued'),
(125, 'D19110', 'Desktop', NULL, NULL, NULL, NULL, '1630900676.jpg', NULL, 'Miscellaneous', '2021-08-31 00:46:30', '2021-09-05 21:57:56', 'Issued'),
(126, 'D19111', 'Desktop', NULL, NULL, NULL, NULL, '1630900649.jpg', NULL, 'Welfare', '2021-08-31 00:46:39', '2021-09-05 21:57:29', 'Issued'),
(127, 'D19112', 'Desktop', NULL, NULL, NULL, NULL, '1630900631.jpg', NULL, 'Welfare', '2021-08-31 00:46:49', '2021-09-05 21:57:11', 'Issued'),
(129, 'D19115', 'Desktop', NULL, NULL, NULL, NULL, '1630902812.jpg', NULL, 'Recident', '2021-08-31 00:47:05', '2021-09-05 22:33:32', 'Issued'),
(131, 'D19116', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630902766.jpg', NULL, 'Recident', '2021-08-31 00:47:33', '2021-09-05 22:32:46', 'Issued'),
(132, 'D19117', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630902738.jpg', NULL, 'Recident', '2021-08-31 00:48:07', '2021-09-05 22:32:18', 'Issued'),
(133, 'D19119', 'Desktop', NULL, NULL, NULL, NULL, '1630902716.jpg', NULL, 'Recident', '2021-08-31 00:48:17', '2021-09-05 22:31:56', 'Issued'),
(134, 'D19120', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633925083.jpg', NULL, 'Ration', '2021-08-31 00:48:32', '2021-10-10 22:04:43', 'Issued'),
(135, 'D19210', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634020474.jpg', NULL, 'Fire', '2021-08-31 00:48:42', '2021-10-12 00:34:34', 'Issued'),
(136, 'D19209', 'Desktop', NULL, 'Core i3', NULL, 'Intel', '1634020529.jpg', NULL, 'Fire', '2021-08-31 00:48:52', '2021-10-12 00:35:29', 'Issued'),
(155, 'D19150', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633925130.jpg', NULL, 'Purchase', '2021-08-31 00:55:56', '2021-10-10 22:05:30', 'Issued'),
(156, 'D19151', 'Desktop', NULL, 'Core i5', NULL, 'Clone', '1633925193.jpg', NULL, 'Purchase', '2021-08-31 00:56:04', '2021-10-10 22:06:33', 'Issued'),
(157, 'D19152', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633925233.jpg', NULL, 'Purchase', '2021-08-31 00:56:16', '2021-10-10 22:07:13', 'Issued'),
(158, 'D19153', 'Desktop', NULL, 'Core i3', NULL, 'Clone', '1633925281.jpg', NULL, 'Purchase', '2021-08-31 00:56:25', '2021-10-10 22:08:01', 'Issued'),
(159, 'D19154', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630903766.jpg', NULL, 'Purchase', '2021-08-31 00:56:40', '2021-09-05 22:49:26', 'Issued'),
(160, 'D19235', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630904355.jpg', NULL, 'Purchase', '2021-08-31 00:56:53', '2021-09-05 22:59:15', 'Issued'),
(162, 'D19207', 'Desktop', NULL, NULL, NULL, NULL, '1630904300.jpg', NULL, 'Main store', '2021-08-31 00:57:12', '2021-09-05 22:58:20', 'Issued'),
(163, 'D19205', 'Desktop', NULL, NULL, NULL, NULL, '1630904275.jpg', NULL, 'Main store', '2021-08-31 00:57:19', '2021-09-05 22:57:55', 'Issued'),
(165, 'D19157', 'Desktop', NULL, NULL, NULL, NULL, '1630904225.jpg', NULL, 'Receive Control', '2021-08-31 00:57:35', '2021-09-05 22:57:05', 'Issued'),
(166, 'D19206', 'Desktop', NULL, NULL, NULL, NULL, '1630904194.jpg', NULL, 'Main store', '2021-08-31 00:57:42', '2021-09-05 22:56:34', 'Issued'),
(167, 'D19211', 'Desktop', NULL, NULL, NULL, NULL, '1630904170.jpg', NULL, 'Main store', '2021-08-31 00:57:49', '2021-09-05 22:56:10', 'Issued'),
(168, 'D20004', 'Desktop', NULL, NULL, NULL, 'HP', '1630904130.jpg', NULL, 'Officers Mess', '2021-08-31 00:57:56', '2021-10-14 00:26:04', 'Issued'),
(170, 'D19222', 'Desktop', NULL, NULL, NULL, NULL, '1630904949.jpg', NULL, 'MT.', '2021-08-31 00:58:12', '2021-09-05 23:09:09', 'Issued'),
(171, 'W19281', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634009940.jpg', 'OIC ICT Cell', 'ICT', '2021-08-31 00:58:37', '2021-10-11 21:39:00', 'Issued'),
(173, 'D19025', 'Desktop', NULL, NULL, NULL, NULL, '1630904875.jpg', NULL, 'ICT', '2021-08-31 00:58:56', '2021-09-05 23:07:55', 'Issued'),
(174, 'D19247', 'Desktop', NULL, NULL, NULL, NULL, '1634007589.jpg', 'AD Server', 'ICT', '2021-08-31 00:59:06', '2021-10-11 20:59:49', 'Issued'),
(177, 'W0024', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634007747.jpg', 'ERP Room', 'ICT', '2021-08-31 00:59:54', '2021-10-11 21:02:27', 'Issued'),
(178, 'W0029', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634006871.jpg', 'ERP Room', 'ICT', '2021-08-31 01:00:07', '2021-10-11 20:47:51', 'Issued'),
(179, 'W0030', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634006791.jpg', 'ERP Room', 'ICT', '2021-08-31 01:00:21', '2021-10-11 20:46:31', 'Issued'),
(180, 'W0031', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634007707.jpg', 'ERP Room', 'ICT', '2021-08-31 01:00:39', '2021-10-11 21:01:47', 'Issued'),
(181, 'W0033', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634006745.jpg', NULL, 'ICT', '2021-08-31 01:00:49', '2021-10-11 20:45:45', 'Issued'),
(182, 'W0034', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905215.jpg', NULL, 'ICT', '2021-08-31 01:01:02', '2021-09-18 23:44:00', 'Issued'),
(183, 'W0037', 'Workstation PC', NULL, 'Core i7', NULL, 'Work Station', '1634022005.jpg', 'RM-04, Training Center', 'Small Arms (SA)', '2021-08-31 01:01:12', '2021-10-12 01:00:05', 'Issued'),
(189, 'W21002', 'Workstation PC', NULL, 'Core i7', NULL, 'Work Station', '1630905006.jpg', 'ETL Project.', 'R & D', '2021-08-31 01:02:10', '2021-10-14 00:12:30', 'Issued'),
(191, '19278', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906102.jpg', NULL, 'APO Finance', '2021-08-31 01:53:47', '2021-09-05 23:28:22', 'Issued'),
(195, '19275', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906010.jpg', NULL, 'Recident', '2021-08-31 01:58:50', '2021-09-05 23:26:50', 'Issued'),
(196, '19291', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905919.jpg', NULL, 'Welfare', '2021-08-31 01:59:36', '2021-09-05 23:25:19', 'Issued'),
(197, '19294', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905888.jpg', NULL, 'Miscellaneous', '2021-08-31 02:00:23', '2021-09-05 23:24:48', 'Issued'),
(198, '19240', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905861.jpg', NULL, 'Miscellaneous', '2021-08-31 02:00:52', '2021-09-05 23:24:21', 'Issued'),
(199, 'D19286', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633925783.jpg', NULL, 'Medical', '2021-08-31 02:01:55', '2021-10-10 22:16:23', 'Issued'),
(200, 'D19287', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633925827.jpg', NULL, 'Sy. Camera', '2021-08-31 02:03:39', '2021-10-10 22:17:07', 'Issued'),
(201, 'D19071', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633925888.jpg', NULL, 'Admin', '2021-08-31 02:07:26', '2021-10-10 22:18:08', 'Issued'),
(202, 'D19285', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633925946.jpg', NULL, 'purchase', '2021-08-31 19:02:15', '2021-10-10 22:19:06', 'Issued'),
(203, 'D19289', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633925992.jpg', NULL, 'MT.', '2021-08-31 19:03:38', '2021-10-10 22:19:52', 'Issued'),
(204, 'D19220', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633926042.jpg', NULL, 'MT.', '2021-08-31 19:04:27', '2021-10-10 22:20:42', 'Issued'),
(205, 'D19055', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906585.jpg', NULL, 'DIR production Office', '2021-08-31 19:06:14', '2021-09-05 23:36:25', 'Issued'),
(206, 'D19054', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906565.jpg', NULL, 'DIR production Office', '2021-08-31 19:08:00', '2021-09-05 23:36:05', 'Issued'),
(207, 'D19270', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906529.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:08:51', '2021-09-05 23:35:29', 'Issued'),
(208, 'D19264', 'Desktop', NULL, 'Core i5', NULL, 'Space', '1630906508.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:09:17', '2021-09-05 23:35:08', 'Issued'),
(209, 'D19053', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906490.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:09:29', '2021-09-05 23:34:50', 'Issued'),
(211, 'D190', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630906447.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:09:56', '2021-09-05 23:34:07', 'Issued'),
(212, 'D19262', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926085.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:10:28', '2021-10-10 22:21:25', 'Issued'),
(213, 'D19080', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633926121.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:10:51', '2021-10-10 22:22:01', 'Issued'),
(214, 'D19097', 'Desktop', NULL, 'Core i3', NULL, 'Ultra', '1630906385.jpg', NULL, 'DD HAG', '2021-08-31 19:11:20', '2021-09-05 23:33:05', 'Issued'),
(215, 'D19078', 'Desktop', 'Clone Desktop', '2 Duo', NULL, 'Clone', '1633926163.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:11:30', '2021-10-10 22:22:43', 'Issued'),
(216, 'D19096', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926222.jpg', NULL, 'DD HAG Office', '2021-08-31 19:11:51', '2021-10-10 22:23:42', 'Issued'),
(217, 'D19079', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906314.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:12:10', '2021-09-05 23:31:54', 'Issued'),
(218, 'D19272', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634024845.jpg', NULL, 'DD HAG Office', '2021-08-31 19:12:20', '2021-10-12 01:47:25', 'Issued'),
(219, 'D19081', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906155.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:12:44', '2021-09-05 23:29:15', 'Issued'),
(220, 'D19095', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926340.jpg', NULL, 'DD HAG', '2021-08-31 19:13:04', '2021-10-10 22:25:40', 'Issued'),
(221, 'D19082', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633926388.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:13:18', '2021-10-10 22:26:28', 'Issued'),
(222, 'D19091', 'Desktop', NULL, 'Core i5', NULL, 'Ultra', '1630816993.jpg', NULL, 'GP-3 Office', '2021-08-31 19:13:39', '2021-09-04 22:43:13', 'Issued'),
(223, 'D19083', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633926423.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:13:56', '2021-10-10 22:27:03', 'Issued'),
(224, 'D19092', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926460.jpg', NULL, 'GP-3 Office', '2021-08-31 19:14:05', '2021-10-10 22:27:40', 'Issued'),
(225, 'D19084', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634105969.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:14:34', '2021-10-13 00:19:29', 'Issued'),
(226, 'D19093', NULL, NULL, 'Core i7', NULL, 'LG Chasis', '1630816770.jpg', NULL, 'HAG', '2021-08-31 19:14:36', '2021-09-04 22:39:30', 'Issued'),
(227, 'D19238', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926573.jpg', NULL, 'HAG', '2021-08-31 19:15:00', '2021-10-10 22:29:33', 'Issued'),
(228, 'D19090', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630816652.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:10', '2021-09-04 22:37:32', 'Issued'),
(229, 'D19248', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630816611.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:28', '2021-09-04 22:36:51', 'Issued'),
(230, 'D19085', 'Desktop', NULL, 'Core i5', NULL, 'Delux', '1630816571.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:54', '2021-09-04 22:36:11', 'Issued'),
(232, 'D19190', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633926616.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:16:26', '2021-10-10 22:30:16', 'Issued'),
(233, 'D19182', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1633926655.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:16:46', '2021-10-10 22:30:55', 'Issued'),
(234, 'D19089', 'Desktop', NULL, '2 Duo', NULL, 'General', '1630816450.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:16:46', '2021-09-04 22:34:10', 'Issued'),
(235, 'D19183', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1633926702.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:17:10', '2021-10-10 22:31:42', 'Issued'),
(237, 'D19184', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634106059.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:17:32', '2021-10-13 00:20:59', 'Issued'),
(238, 'D19185', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926783.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:17:59', '2021-10-10 22:33:04', 'Issued'),
(239, 'D19087', 'Desktop', NULL, 'Core i5', NULL, 'Space', '1630816252.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:59', '2021-09-04 22:30:52', 'Issued'),
(241, 'D19187', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926827.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:18:40', '2021-10-10 22:33:47', 'Issued'),
(242, 'D19189', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634106025.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:19:05', '2021-10-13 00:20:25', 'Issued'),
(243, 'D19171', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633926951.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:19:26', '2021-10-10 22:35:51', 'Issued'),
(244, 'D19276', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633926992.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:19:46', '2021-10-10 22:36:32', 'Issued'),
(245, 'D19088', 'Desktop', NULL, 'Intel Pentium', NULL, 'Transnet', '1630815769.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:20:04', '2021-09-04 22:22:49', 'Issued'),
(246, 'D19188', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634088404.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:20:18', '2021-10-12 19:26:44', 'Issued'),
(248, 'D19266', 'Desktop', NULL, 'Core i7', NULL, 'Segotep', '1634088094.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:20:54', '2021-10-12 19:21:34', 'Issued'),
(250, 'W19267', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1633927127.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:21:28', '2021-10-10 22:38:47', 'Issued'),
(251, 'D19168', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815451.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:21:51', '2021-09-04 22:17:31', 'Issued'),
(252, 'D19180', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630815418.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:22:00', '2021-09-04 22:16:58', 'Issued'),
(253, 'D19169', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630815382.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:22:13', '2021-09-04 22:16:22', 'Issued'),
(255, 'D19268', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1633928006.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:22:38', '2021-10-10 22:53:26', 'Issued'),
(256, 'D19299', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633928045.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:23:02', '2021-10-10 22:54:05', 'Issued'),
(257, 'D19296', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634088052.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:23:24', '2021-10-12 19:20:52', 'Issued'),
(259, 'D19274', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1634087997.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:23:56', '2021-10-12 19:19:57', 'Issued'),
(260, 'D19113', NULL, NULL, 'Core i5', NULL, 'HP', '1630815144.jpg', NULL, 'Welfare', '2021-08-31 19:24:11', '2021-09-04 22:12:24', 'Issued'),
(261, 'D19293', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1633928212.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:24:18', '2021-10-10 22:56:52', 'Issued'),
(262, 'W19284', 'Desktop', NULL, NULL, NULL, 'Work Station', '1633928258.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:25:06', '2021-10-10 22:57:38', 'Issued'),
(263, 'D19181', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633928302.jpg', NULL, 'Small Arms (SA)', '2021-08-31 19:25:40', '2021-10-10 22:58:22', 'Issued'),
(264, 'D19298', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633928364.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:26:33', '2021-10-10 22:59:24', 'Issued'),
(265, 'D19225', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1633928405.jpg', NULL, 'R & D', '2021-08-31 19:27:22', '2021-10-10 23:00:05', 'Issued'),
(268, 'D19067', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630814999.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 20:49:04', '2021-09-04 22:09:59', 'Issued'),
(269, 'D19068', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814979.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 20:50:05', '2021-09-04 22:09:39', 'Issued'),
(270, 'D19230', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814944.jpg', NULL, 'R & D', '2021-08-31 20:50:19', '2021-09-04 22:09:04', 'Issued'),
(271, 'D19223', 'Desktop', NULL, NULL, NULL, NULL, '1630814913.jpg', NULL, 'DD PlG office', '2021-08-31 20:50:56', '2021-09-04 22:08:33', 'Issued'),
(272, 'D19203', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814884.jpg', NULL, 'Drawing', '2021-08-31 20:51:10', '2021-09-04 22:08:04', 'Issued'),
(273, 'D192107', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814845.jpg', NULL, 'R & D', '2021-08-31 20:51:56', '2021-09-04 22:07:25', 'Issued'),
(274, 'D19005', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814819.jpg', NULL, 'Drawing', '2021-08-31 20:52:43', '2021-09-04 22:06:59', 'Issued'),
(276, 'W19282', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Work Station', '1634006346.jpg', NULL, 'Man Plg Office', '2021-08-31 20:54:14', '2021-10-11 20:39:06', 'Issued'),
(277, 'D19290', 'Desktop', NULL, 'Core i5', NULL, 'Segotep', '1630814688.jpg', NULL, 'Matlab', '2021-08-31 20:54:22', '2021-09-04 22:04:48', 'Issued'),
(278, 'D19003', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814652.jpg', NULL, 'Man Plg Office', '2021-08-31 20:55:10', '2021-09-04 22:04:12', 'Issued'),
(279, 'D19201', 'Desktop', NULL, NULL, NULL, 'Delux', '1630814619.jpg', NULL, 'Matlab', '2021-08-31 20:55:14', '2021-09-04 22:03:39', 'Issued'),
(280, 'W20014', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630814585.jpg', NULL, 'Man Plg Office', '2021-08-31 20:55:54', '2021-09-04 22:03:05', 'Issued'),
(281, 'D19229', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814555.jpg', NULL, 'Matlab', '2021-08-31 20:55:55', '2021-09-04 22:02:35', 'Issued'),
(282, 'D19234', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814529.jpg', NULL, 'ISI', '2021-08-31 20:56:33', '2021-09-04 22:02:09', 'Issued'),
(283, 'D19204', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814493.jpg', NULL, 'ISI', '2021-08-31 20:57:06', '2021-09-04 22:01:33', 'Issued'),
(284, 'D19217', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814462.jpg', NULL, 'P & P', '2021-08-31 20:57:25', '2021-09-04 22:01:02', 'Issued'),
(285, 'D19176', 'Desktop', NULL, 'Core i5', NULL, 'Delux', '1630814432.jpg', NULL, 'CTM', '2021-08-31 20:57:45', '2021-09-04 22:00:32', 'Issued'),
(287, 'D19178', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814372.jpg', NULL, 'CTM', '2021-08-31 20:59:04', '2021-09-04 21:59:32', 'Issued'),
(288, 'D19273', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814346.jpg', NULL, 'CTM', '2021-08-31 20:59:57', '2021-09-04 21:59:06', 'Issued'),
(289, 'D19011', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814317.jpg', NULL, 'P & P', '2021-08-31 21:00:15', '2021-09-04 21:58:37', 'Issued'),
(290, 'D19147', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814295.jpg', NULL, 'CTM', '2021-08-31 21:00:41', '2021-09-04 21:58:15', 'Issued'),
(292, 'D19012', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814237.jpg', NULL, 'P & P', '2021-08-31 21:01:35', '2021-09-04 21:57:17', 'Issued'),
(293, 'D19198', 'Desktop', NULL, 'Core i5', NULL, 'Ultra', '1630814187.jpg', NULL, 'CM', '2021-08-31 21:02:26', '2021-09-04 21:56:27', 'Issued'),
(294, 'D19013', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814159.jpg', NULL, 'P & P', '2021-08-31 21:02:27', '2021-09-04 21:55:59', 'Issued'),
(295, 'D19197', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814126.jpg', NULL, 'CM', '2021-08-31 21:03:01', '2021-09-04 21:55:26', 'Issued'),
(296, 'D19196', 'Desktop', NULL, NULL, NULL, 'General', '1630814088.jpg', NULL, 'CM', '2021-08-31 21:03:33', '2021-09-04 21:54:48', 'Issued'),
(297, 'D19288', 'Desktop', NULL, 'Core i5', NULL, 'Segotep', '1630814063.jpg', NULL, 'CM', '2021-08-31 21:04:32', '2021-09-04 21:54:23', 'Issued'),
(298, 'D19014', 'Desktop', NULL, 'Core i5', NULL, 'OVO', '1630814037.jpg', NULL, 'P & P', '2021-08-31 21:05:02', '2021-09-04 21:53:57', 'Issued'),
(299, 'D19245', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814003.jpg', NULL, 'PSI', '2021-08-31 21:05:58', '2021-09-04 21:53:23', 'Issued'),
(300, 'D19193', 'Desktop', NULL, 'Intel i3', NULL, 'CSM', '1630813963.jpg', NULL, 'Man MM', '2021-08-31 21:06:41', '2021-09-04 21:52:43', 'Issued'),
(301, 'D20006', 'Desktop', NULL, 'Core i3', NULL, 'HP Pro', '1630812483.jpg', 'OA Najrul Islam', 'WISA', '2021-08-31 21:06:45', '2021-10-14 00:13:59', 'Issued'),
(302, 'D19015', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812443.jpg', NULL, 'MC', '2021-08-31 21:07:30', '2021-09-04 21:27:23', 'Issued'),
(303, 'D20002', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812417.jpg', 'Progress Office (MM)', 'MM', '2021-08-31 21:07:33', '2021-10-14 00:04:35', 'Issued'),
(304, 'D19192', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812388.jpg', NULL, 'Man service', '2021-08-31 21:08:14', '2021-09-04 21:26:28', 'Issued'),
(305, 'D19016', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630812362.jpg', NULL, 'MC', '2021-08-31 21:09:16', '2021-09-04 21:26:02', 'Issued'),
(306, 'D19194', 'Desktop', NULL, 'Duel Core', NULL, 'Delux', '1630812338.jpg', NULL, 'Service Office', '2021-08-31 21:10:12', '2021-09-04 21:25:38', 'Issued'),
(307, 'D19195', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812311.jpg', NULL, 'Service Office', '2021-08-31 21:10:48', '2021-09-04 21:25:11', 'Issued'),
(308, 'D19164', 'Desktop', NULL, 'Core i5', NULL, 'Pro Desk', '1630812282.jpg', NULL, 'Service Office', '2021-08-31 21:11:42', '2021-09-04 21:24:42', 'Issued'),
(309, 'D19200', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812253.jpg', NULL, 'ME', '2021-08-31 21:14:33', '2021-09-04 21:24:13', 'Issued'),
(310, 'D19199', 'Desktop', NULL, 'Core i3', NULL, 'A0 Tech', '1630812231.jpg', NULL, 'ME', '2021-08-31 21:15:54', '2021-09-04 21:23:51', 'Issued'),
(311, 'D19165', 'Desktop', NULL, 'Core i3', NULL, 'Ultra', '1630812208.jpg', NULL, 'ME', '2021-08-31 21:16:30', '2021-09-04 21:23:28', 'Issued'),
(312, 'D19295', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812184.jpg', 'ERS Tech Likhon', 'ME', '2021-08-31 21:17:01', '2021-10-14 00:23:35', 'Issued'),
(313, 'D19138', 'Desktop', NULL, NULL, NULL, NULL, '1630811529.jpg', NULL, 'MRO', '2021-08-31 21:17:26', '2021-09-04 21:12:09', 'Issued'),
(314, 'D1939', 'Desktop', NULL, NULL, NULL, NULL, '1630811482.jpg', NULL, 'MRO', '2021-08-31 21:17:40', '2021-09-04 21:11:22', 'Issued'),
(315, 'D19140', 'Desktop', NULL, NULL, NULL, NULL, '1630811459.jpg', NULL, 'MRO', '2021-08-31 21:17:55', '2021-09-04 21:10:59', 'Issued'),
(316, 'D19141', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1633924921.jpg', NULL, 'MRO', '2021-08-31 21:18:07', '2021-10-10 22:02:01', 'Issued'),
(317, 'D19017', 'Desktop', NULL, 'Pentium', NULL, 'Digital', '1630811370.jpg', NULL, 'MC', '2021-08-31 21:18:13', '2021-09-04 21:09:30', 'Issued'),
(318, 'D19159', 'Desktop', NULL, 'Core i5', NULL, 'DELL', '1630811323.jpg', NULL, 'Exchange', '2021-08-31 21:18:30', '2021-09-04 21:08:43', 'Issued'),
(319, 'D19018', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630811303.jpg', NULL, 'MC', '2021-08-31 21:18:57', '2021-09-04 21:08:23', 'Issued'),
(320, 'D19161', 'Desktop', NULL, 'Core i3', NULL, 'HP Pro', '1630811281.jpg', 'This is HP pro', 'Exchange', '2021-08-31 21:18:59', '2021-09-04 21:08:01', 'Issued'),
(321, 'D19160', 'Desktop', NULL, 'Pentium', NULL, 'Space', '1630811265.jpg', 'Exchange', 'Exchange', '2021-08-31 21:19:28', '2021-09-04 21:07:45', 'Issued'),
(322, 'D19162', 'Desktop', NULL, NULL, NULL, NULL, '1630811202.jpg', NULL, 'Exchange', '2021-08-31 21:19:59', '2021-09-04 21:06:42', 'Issued'),
(323, 'D19218', 'Desktop', NULL, 'Core i5', NULL, 'DELL', '1630811170.jpg', NULL, 'Exchange', '2021-08-31 21:20:52', '2021-09-04 21:06:10', 'Issued'),
(324, 'D19019', 'Desktop', NULL, 'Duel Core', NULL, 'Delux', '1630811142.jpg', NULL, 'MC', '2021-08-31 21:21:10', '2021-09-04 21:05:42', 'Issued'),
(327, 'W0039', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021873.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-08-31 21:23:27', '2021-10-12 00:57:53', 'Issued'),
(328, 'W0038', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1630811023.jpg', 'ICT', 'ICT', '2021-08-31 21:23:36', '2021-10-18 22:20:30', 'Issued'),
(331, 'D19020', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630810942.jpg', 'test', 'MC', '2021-08-31 21:24:24', '2021-09-04 21:02:22', 'Issued'),
(332, 'D19172', 'Desktop', NULL, 'Core i3', NULL, 'OVO', '1630810914.jpg', NULL, 'R & D', '2021-08-31 21:24:50', '2021-09-04 21:01:54', 'Issued'),
(333, 'D19021', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630809824.jpg', NULL, 'MC', '2021-08-31 21:25:22', '2021-09-04 20:43:44', 'Issued'),
(334, 'D19244', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809801.jpg', NULL, 'Drawing', '2021-08-31 21:25:28', '2021-09-04 20:43:21', 'Issued'),
(335, 'D19297', 'Desktop', NULL, 'Core i5', NULL, 'Vallue top', '1630809777.jpg', NULL, 'ISI', '2021-08-31 21:25:58', '2021-09-04 20:42:57', 'Issued'),
(336, 'D19233', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630809755.jpg', NULL, 'MC', '2021-08-31 21:26:09', '2021-09-04 20:42:35', 'Issued'),
(337, 'D19023', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630809734.jpg', NULL, 'MC', '2021-08-31 21:26:51', '2021-09-04 20:42:14', 'Issued'),
(338, 'D20003', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630809704.jpg', 'SAE Shamim', 'CC R & D', '2021-08-31 21:29:27', '2021-10-14 00:06:21', 'Issued'),
(339, 'W0017', 'Workstation PC', NULL, NULL, NULL, 'Work Station', '1630809670.jpg', 'AE Showkot Hasan', 'CC R & D', '2021-08-31 21:30:07', '2021-10-14 00:09:49', 'Issued'),
(341, 'D19142', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809627.jpg', NULL, 'Purchase', '2021-09-01 22:47:15', '2021-09-04 20:40:27', 'Issued'),
(342, 'D19128', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809606.jpg', NULL, 'Purchase', '2021-09-01 22:48:10', '2021-09-04 20:40:06', 'Issued'),
(343, 'D19127', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633930195.jpg', NULL, 'Purchase', '2021-09-01 22:48:45', '2021-10-10 23:29:55', 'Issued'),
(344, 'D19130', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630807776.jpg', NULL, 'Purchase', '2021-09-01 22:49:13', '2021-09-04 20:09:36', 'Issued'),
(345, 'D19131', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630807755.jpg', NULL, 'Purchase', '2021-09-01 22:49:46', '2021-09-04 20:09:15', 'Issued'),
(346, 'D19132', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633930230.jpg', NULL, 'Purchase', '2021-09-01 22:50:18', '2021-10-10 23:30:30', 'Issued'),
(347, 'D19133', 'Desktop', 'Clone Desktop', 'Pentium', NULL, 'Clone', '1633930259.jpg', NULL, 'Purchase', '2021-09-01 22:50:54', '2021-10-10 23:30:59', 'Issued'),
(348, 'D19134', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633930331.jpg', NULL, 'Purchase', '2021-09-01 22:51:37', '2021-10-10 23:32:11', 'Issued'),
(349, 'D19135', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633930365.jpg', NULL, 'Purchase', '2021-09-01 22:52:18', '2021-10-10 23:32:45', 'Issued'),
(350, 'D19136', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806539.jpg', NULL, 'Purchase', '2021-09-01 22:52:53', '2021-09-04 19:48:59', 'Issued'),
(351, 'D19137', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806516.jpg', NULL, 'Purchase', '2021-09-01 22:53:29', '2021-09-04 19:48:36', 'Issued'),
(352, 'D19143', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806492.jpg', NULL, 'Purchase', '2021-09-01 22:53:53', '2021-09-04 19:48:12', 'Issued'),
(353, 'D19144', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806467.jpg', NULL, 'Purchase', '2021-09-01 22:54:18', '2021-09-04 19:47:47', 'Issued'),
(355, 'D19146', 'Desktop', 'Clone Desktop', 'Intel i3', NULL, 'Clone', '1633930399.jpg', NULL, 'Purchase', '2021-09-01 22:55:18', '2021-10-10 23:33:19', 'Issued'),
(358, 'D19149', 'Desktop', 'Clone Desktop', 'Core i3', NULL, 'Clone', '1633930436.jpg', NULL, 'Purchase', '2021-09-01 22:57:36', '2021-10-10 23:33:56', 'Issued'),
(361, 'D19261', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630806301.jpg', NULL, 'Purchase', '2021-09-01 23:00:02', '2021-09-04 19:45:01', 'Issued'),
(382, 'TestPro', 'test Category', 'test Sub category', 'Test type', 'CR1016-12S-1S+', 'Test brand', NULL, 'test discription', 'Planning', '2021-09-15 19:55:13', '2021-09-15 19:55:13', 'Issued'),
(384, 'ABC', 'test Category', 'test Sub category', 'Test type', 'CR1016-12S-1S+', 'Test brand', NULL, 'product 70 , issued to ruhul , taka 5000', 'ICT', '2021-09-15 20:36:37', '2021-09-15 20:36:37', 'Issued'),
(385, 'R20001', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1632902139.jpg', '20-7-20 , Entry :   01', 'Dir PLG & maint Office', '2021-09-15 21:01:05', '2021-09-29 01:55:39', 'Issued'),
(386, 'R20002', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1632902181.jpg', '22-8-20 , Entry :01 pcs', 'GSO-2', '2021-09-15 21:02:02', '2021-09-29 01:56:21', 'Issued'),
(387, 'R20003', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1632902908.jpg', '24-8-20 ,Inclusion : 05 pcs  , from Jeba Enterprice', NULL, '2021-09-15 21:03:33', '2021-09-29 02:08:28', 'Issued'),
(388, 'R20004', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1632902935.jpg', '7-9-20 , Entry: 01 pcs , \r\nHouse of Director Production Sir', NULL, '2021-09-15 21:05:42', '2021-09-29 02:08:55', 'Issued'),
(389, 'R20005', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1632902962.jpg', '10-9-20 , Entry :01 pcs', 'ICT-Office', '2021-09-15 21:12:06', '2021-09-29 02:09:22', 'Issued'),
(390, 'R20006', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1632903012.jpg', '1-10-20, Entry: 1 pcs', 'Bangabondhu Cornar', '2021-09-15 21:16:23', '2021-09-29 02:10:12', 'Issued'),
(391, 'R20007', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1632902883.jpg', '13-10-20 , Inclusion :3 pcs , from Computer City', 'ICT', '2021-09-15 21:17:51', '2021-09-29 02:08:03', 'Issued'),
(392, 'R20008', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1632902849.jpg', '13-10-20 , Entry: 1pcs , VIP Room', 'Officers Mess', '2021-09-15 21:19:30', '2021-09-29 02:07:29', 'Issued'),
(393, 'R20009', 'Router', 'Home Router', NULL, NULL, NULL, '1632902823.jpg', '14-10-20 , Entry : 1 pcs', 'Comdt Conference Room', '2021-09-15 21:21:30', '2021-09-29 02:07:03', 'Issued'),
(394, 'R20010', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1633408830.jpg', '17-10-20 ; Entry: 01 pcs , Medical MI Room', 'Medical', '2021-09-15 21:25:45', '2021-10-04 22:40:30', 'Issued'),
(395, 'R20011', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1633403331.jpg', '24-10-20 ; Entry : 02 pcs ; Deputy Comdt Bhabon', 'Deputy Comdt Bhabon', '2021-09-15 21:27:10', '2021-10-04 21:08:51', 'Issued'),
(396, 'R20012', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1633403300.jpg', '23-10-20 ; Entry:01 pcs', 'Bangabondhu Cornar', '2021-09-15 21:28:59', '2021-10-04 21:08:20', 'Issued'),
(397, 'R20013', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1633403270.jpg', '25-10-20 : Entry : 1pcs ,', 'Comdt Conference Room', '2021-09-15 21:29:53', '2021-10-04 21:07:50', 'Issued'),
(398, 'R20014', 'Router', 'Home Router', NULL, NULL, 'Tenda', '1633403236.jpg', '10-11-20 ; Entry : 01 pcs ; Manager Bari  , MRO', 'ME', '2021-09-15 21:31:25', '2021-10-04 21:07:16', 'Issued'),
(399, 'R20015', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403190.jpg', '25-11-20 ; Inclusion : 05 pcs ; From Suppler Referrence ISI', 'ICT', '2021-09-15 21:32:42', '2021-10-04 21:06:30', 'Issued'),
(400, 'R20016', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403151.jpg', '26-11-20 ; Entry : 01 pcs , DD Rezaul Karim Sir', 'DD SA', '2021-09-15 21:33:59', '2021-10-04 21:05:51', 'Issued'),
(401, 'R20017', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403118.jpg', '2-12-20 ; Entry : 01 ; VVIP Room', 'Officers Mess', '2021-09-15 21:34:57', '2021-10-04 21:05:18', 'Issued'),
(402, 'R20018', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403088.jpg', '10/12/20 Entry: 01 pc. Ullas', 'Admin', '2021-09-15 22:15:51', '2021-10-04 21:04:48', 'Issued'),
(403, 'R21019', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403055.jpg', '4/01/21 Entry: 01 pc. TPT', 'MT.', '2021-09-15 22:17:07', '2021-10-04 21:04:15', 'Issued'),
(404, 'R21020', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633403013.jpg', '4/01/21 Entry: 02 pcs. Officers Mess 204 Room, Major Abdus Salam Sir.', 'ICT', '2021-09-15 22:18:47', '2021-10-04 21:03:33', 'Issued'),
(405, 'R21021', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633402971.jpg', '23/01/21 Entry: 01 pc. Officers Mess , Manager Security', 'Security', '2021-09-15 22:20:12', '2021-10-04 21:02:51', 'Issued'),
(406, 'R21022', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1633402938.jpg', '27/01/21 Entry: 01 pc. Officers mess VIP room 5, Dir Admin Sir', 'Dir Admin & Mat', '2021-09-15 22:21:48', '2021-10-04 21:02:18', 'Issued'),
(407, 'R21023', 'Router', 'Home Router', NULL, NULL, 'D-Link', '1633402907.jpg', '02/02/21  Inclusion:  01 pc. From Major Abdus Salam Sir. Officers mess room 204.', 'ICT', '2021-09-15 22:23:41', '2021-10-04 21:01:47', 'Issued'),
(408, 'R21024', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1633402865.jpg', '21/03/21 Inclusion: 01 pc. From Residential House No: D-11.', NULL, '2021-09-15 22:25:26', '2021-10-04 21:01:05', 'Issued'),
(409, 'R21025', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1633402834.jpg', '26/08/21 Inclusion: 01 pc.  From Computer Archives.', NULL, '2021-09-15 22:27:10', '2021-10-04 21:00:34', 'Issued'),
(410, 'R21026', 'Router', 'Home Router', NULL, NULL, 'TP-Link', '1633402803.jpg', '26/08/21 Entry: 01 pc. Major Rakib Sir OIC ICT.(Return :02/11/2021)\r\n3/11/2021 (Nabil Issued)', 'NOC', '2021-09-15 22:28:36', '2021-11-20 19:56:21', 'Issued'),
(411, 'PHD20001', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881658.jpg', '21/09/20 Entry: 1 pc. ICT repair maintenance work', 'ICT', '2021-09-15 22:41:19', '2021-09-28 20:14:18', 'Issued'),
(412, 'PHD20002', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881636.jpg', '04/10/20 Entry: 01 pc. Comdt Office', 'Comdt', '2021-09-15 22:42:52', '2021-09-28 20:13:56', 'Issued'),
(413, 'PHD20003', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881614.jpg', '10/10/20 Entry: 01 pc. server work purpose', 'ICT', '2021-09-15 22:43:59', '2021-09-28 20:13:34', 'Issued'),
(414, 'PHD20004', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881593.jpg', '21/10/20 Entry: 01 pc Manager Sahina Madam R & D', 'R & D', '2021-09-15 22:45:25', '2021-09-28 20:13:13', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(415, 'PHD21005', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881570.jpg', '02/03/21 Entry: 01 pc Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-15 22:46:47', '2021-09-28 20:12:50', 'Issued'),
(416, 'PHD21006', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881549.jpg', '24/03/21 Entry: 01 pc, DD Admin & Mat', 'DD Admin & Mat', '2021-09-15 22:47:40', '2021-09-28 20:12:29', 'Issued'),
(417, 'PHD21007', 'Portable Hard Disk', NULL, NULL, NULL, NULL, '1632881526.jpg', '12/08/21 Inclusion: 01 pc, Star Tech & Engineering Ltd.', 'ICT', '2021-09-15 22:56:35', '2021-09-28 20:12:06', 'Issued'),
(418, 'PHD21008', 'Portable Hard Disk', NULL, NULL, NULL, NULL, '1632881490.jpg', '12/08/21 Entry: 01 pc, Deputy Comdt Sir', 'Deputy Comdt Office', '2021-09-15 22:59:12', '2021-09-28 20:11:30', 'Issued'),
(419, 'IHDD20001', 'Internal Hard Disk', NULL, NULL, NULL, 'Toshiba', '1632881413.jpg', '08/07/20 Entry: 01 pc. AM Billal Sir, CPU Repair Purpose.', 'R & T', '2021-09-15 23:09:21', '2021-09-28 20:10:13', 'Issued'),
(420, 'IHD20002', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881388.jpg', '22/07/20 Entry: 01 pc, Man Bari (SA) CPU Repair Purpose Use.', 'Small Arms (SA)', '2021-09-15 23:14:14', '2021-09-28 20:09:48', 'Issued'),
(421, 'IHD20003', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881363.jpg', '18/08/20 Entry: 01 pc, Major Mijanur Rahman Mondol ( RM-4)', 'Small Arms (SA)', '2021-09-15 23:15:21', '2021-09-28 20:09:23', 'Issued'),
(422, 'IHD20004', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881331.jpg', '13/09/20 Entry: 01 pc, ICT Cell Office , CPU Repair Purpose Use.', 'ICT', '2021-09-15 23:16:22', '2021-09-28 20:08:51', 'Issued'),
(423, 'IHD20005', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881307.jpg', '21/09/20 Entry: 01 pc, ICT CPU Repair Purpose Use.', 'ICT', '2021-09-15 23:17:28', '2021-09-28 20:08:27', 'Issued'),
(424, 'IHD20006', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881284.jpg', '29/11/20 Entry: 01 pc, SAE Asad ( RM-3) CPU Repair Purpose use', 'Small Arms (SA)', '2021-09-15 23:18:50', '2021-09-28 20:08:04', 'Issued'),
(425, 'IHD21007', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881259.jpg', '14/01/21 Inclusion: 03 pcs. M/S Jeba Enterprise', 'ICT', '2021-09-15 23:20:09', '2021-09-28 20:07:39', 'Issued'),
(426, 'IHD21008', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881238.jpg', '18/01/21 Entry:  01 pc, ICT Old CPU Repair Purpose Use', 'ICT', '2021-09-15 23:21:29', '2021-09-28 20:07:18', 'Issued'),
(427, 'IHD21009', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881213.jpg', '23/01/21 Entry: 01 pc, TPT CPU Repair Purpose Use.', 'MT.', '2021-09-15 23:22:32', '2021-09-28 20:06:53', 'Issued'),
(428, 'IHD210010', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881177.jpg', '02/03/21 Entry: 01 pc, Major Salauddin Sir Medical CPU Repair purpose use', 'Medical', '2021-09-15 23:27:23', '2021-09-28 20:06:17', 'Issued'),
(429, 'IHD210011', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881151.jpg', '16/03/21 Entry: 01 pc, SAE Shahidul Islam sir CPU Repair  Purpose Use.', 'ICT', '2021-09-16 00:38:37', '2021-09-28 20:05:51', 'Issued'),
(430, 'IHD210012', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881123.jpg', '17/03/21 Entry: 01 pc, Not workable Wastage board.', 'Maint Store', '2021-09-16 00:40:10', '2021-09-28 20:05:23', 'Issued'),
(431, 'IHD210013', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', '1632881094.jpg', '12/09/21 Entry: 01 pc, OA Uttpol , Purchase', 'Purchase', '2021-09-16 00:41:51', '2021-09-28 20:04:54', 'Issued'),
(432, 'ICT-Tab-0001', NULL, 'Tablet PC With Keyboard', '16 Gb', NULL, 'HP', '1631779097.jpg', '30/06/21 Entry: 01 pc, From ERP Goods. ( 10th Ge Intel Corei7 Processor 256 GB, RAM 16 GB) Major Khondokar Rakib Sir OIC ICT', 'OIC ICT cell', '2021-09-16 01:57:40', '2021-11-21 20:58:33', 'Issued'),
(433, 'TestCisco', 'Firewall', 'Sophos', NULL, 'Cisco ASA 5520 Serise', 'Cisco', '1632879318.jpg', NULL, NULL, '2021-09-17 19:42:23', '2021-09-28 19:35:18', 'Issued'),
(434, 'R21001', 'Router', NULL, NULL, NULL, 'Cisco', '1633402773.jpg', 'Entry Date : 15-09-2021', 'ICT', '2021-09-17 19:47:46', '2021-10-04 20:59:33', 'Issued'),
(435, 'F21001', 'Firewall', NULL, 'Hardware Firewall', 'Cisco ASA 5520 Serise', 'Cisco', '1632879167.jpg', '0ld 01', 'ICT', '2021-09-17 19:51:11', '2021-09-28 19:32:47', 'Issued'),
(436, 'S21002', 'Switch', NULL, 'Non POE', 'SG350-28SFP', 'Cisco', '1632879131.jpg', '8 pcs', 'ICT', '2021-09-17 19:53:46', '2021-09-28 19:32:11', 'Issued'),
(437, 'S21001', 'Switch', NULL, 'Non POE', 'SG350-24SP', 'Cisco', '1632879094.jpg', '1 pcs', 'ICT', '2021-09-17 20:11:59', '2021-09-28 19:31:34', 'Issued'),
(438, 'S21003', 'Switch', 'Cisco', 'POE', 'SF 350-24p', 'Cisco', '1632879058.jpg', '7 pcs', 'ICT', '2021-09-17 20:14:48', '2021-09-28 19:30:58', 'Issued'),
(439, 'S21004', 'Switch', 'Cisco', NULL, '2960XR series', 'Cisco', '1632879021.jpg', '24 port  with SFP module', 'ICT', '2021-09-17 20:16:08', '2021-09-28 19:30:21', 'Issued'),
(440, 'S21005', 'Switch', 'Cisco', 'POE', '2960XR series', 'Cisco', '1632878942.jpg', '16 port switch , 6 pcs', 'ICT', '2021-09-17 20:16:53', '2021-09-28 19:29:02', 'Issued'),
(441, 'S21009', 'Switch', 'Cisco', 'POE', '2960XR series', 'Cisco', '1632878905.jpg', '8 port cisco POE Switch', 'ICT', '2021-09-17 20:19:45', '2021-09-28 19:28:25', 'Issued'),
(442, 'Server-001', 'Server', 'Database Server', NULL, 'UCS C240 M5', 'Cisco', '1632878861.jpg', '3 pcs', 'ICT', '2021-09-17 20:23:07', '2021-09-28 19:27:41', 'Issued'),
(443, 'Printer-0001', 'Printer', NULL, 'Epson L3110', NULL, 'Epson', '1632794702.jfif', 'Commandant sir use', 'Comdt BOF', '2021-09-17 20:24:21', '2021-09-27 20:05:02', 'Issued'),
(444, 'Printer', NULL, NULL, NULL, NULL, NULL, '1632794752.jfif', NULL, NULL, '2021-09-17 20:24:31', '2021-09-27 20:05:52', 'Issued'),
(445, 'Server-002', 'Server', 'Data recovery Server', NULL, NULL, 'Cisco', '1632878788.jpg', NULL, 'ICT', '2021-09-17 20:25:04', '2021-09-28 19:26:28', 'Issued'),
(446, 'Sever-003', 'Server', 'API Gateway Server', NULL, 'UCS C240 M5', 'Cisco', '1632878754.jpg', '1 pcs', 'ICT', '2021-09-17 20:27:27', '2021-09-28 19:25:54', 'Issued'),
(447, '42U', 'Rack', NULL, NULL, NULL, 'Vivanco', '1632877902.jpg', '01 pc-02', 'ICT', '2021-09-17 20:32:12', '2021-09-28 19:11:42', 'Issued'),
(448, '15U', 'Rack', NULL, NULL, 'VA 561501100', 'Vivanco', '1632794937.jfif', '15 pcs', 'ICT', '2021-09-17 20:33:16', '2021-09-27 20:08:57', 'Issued'),
(449, '9U', 'Rack', NULL, NULL, 'VSA 6609.01.100', NULL, '1632794914.jfif', '20 pcs', 'ICT', '2021-09-17 20:33:58', '2021-09-27 20:08:34', 'Issued'),
(450, 'Printer-0002', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632794674.jfif', 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:37:12', '2021-09-27 20:04:34', 'Issued'),
(451, 'Printer-0003', 'Printer', NULL, 'HP P 2035', NULL, 'HP', '1632794655.jfif', 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:38:31', '2021-09-27 20:04:15', 'Issued'),
(452, 'Printer-0004', 'Printer', NULL, 'HP M 252n', NULL, 'HP', '1632794627.jfif', 'DY Comdt, BOF HQ', 'Deputy Comdt Office', '2021-09-17 20:39:52', '2021-09-27 20:03:47', 'Issued'),
(453, 'Printer-0005', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632794603.jfif', 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:41:03', '2021-09-27 20:03:23', 'Issued'),
(454, 'S21008', 'Switch', 'Cisco', NULL, 'SFP +', 'Cisco', '1632877787.jpg', 'Cisco S class 10 GB SFP + Module SOSS 116521348', 'ICT', '2021-09-17 20:43:34', '2021-09-28 19:09:47', 'Issued'),
(455, 'Printer-0006', 'Printer', NULL, 'Brother- T510W', NULL, 'Brother', '1632794552.jfif', 'Dir Admin & Mat sir', 'Dir Admin & Mat', '2021-09-17 20:45:19', '2021-09-27 20:02:32', 'Issued'),
(456, 'Printer-0007', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794533.jfif', 'PA to Dir Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:47:07', '2021-09-27 20:02:13', 'Issued'),
(457, 'Printer-0008', 'Printer', NULL, 'Epson-430', NULL, 'Epson', '1632794508.jfif', 'DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:48:20', '2021-09-27 20:01:48', 'Issued'),
(458, 'Printer-0009', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794488.jfif', 'PA to DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:49:20', '2021-09-27 20:01:28', 'Issued'),
(459, 'Printer-0010', 'Printer', NULL, 'LBP 3008A', NULL, 'LBP', '1632794464.jfif', 'PA to DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:50:29', '2021-09-27 20:01:04', 'Issued'),
(460, 'Printer-0011', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632794442.jfif', 'DD Admin', 'DD Admin', '2021-09-17 20:51:59', '2021-12-28 01:27:21', 'Issued'),
(461, 'Printer-0012', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794422.jfif', 'MAP', 'MAP', '2021-09-17 20:52:54', '2021-09-27 20:00:22', 'Issued'),
(462, 'Printer-0013', 'Printer', NULL, 'Epson L-130', NULL, 'Epson', '1632794399.jfif', 'OS, R & T', 'R & T', '2021-09-17 21:34:46', '2021-09-27 19:59:59', 'Issued'),
(463, 'Printer-0014', 'Printer', NULL, 'TOS-4518A', NULL, 'Toshiba', '1632794327.jfif', 'OA R & T', 'R & T', '2021-09-17 21:35:43', '2021-09-27 19:58:47', 'Issued'),
(464, 'Printer-0015', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632794305.jfif', 'SA CR', 'MAP', '2021-09-17 21:37:54', '2021-09-27 19:58:25', 'Issued'),
(465, 'Printer-0016', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794286.jfif', 'OS Workman Record', 'Workman Record', '2021-09-17 21:38:43', '2021-09-27 19:58:06', 'Issued'),
(466, 'Printer-0017', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632794266.jfif', 'SA workman record.', 'Workman Record', '2021-09-17 21:39:50', '2021-09-27 19:57:46', 'Issued'),
(467, 'Printer-0018', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632794244.jfif', 'OA workman record.', 'Workman Record', '2021-09-17 21:40:48', '2021-09-27 19:57:24', 'Issued'),
(468, 'printer-0019', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632794226.jfif', 'OA staff record.', 'Stuff Record', '2021-09-17 21:41:41', '2021-09-27 19:57:06', 'Issued'),
(469, 'Printer-0020', 'Printer', NULL, 'HP M 201n', NULL, 'HP', '1632794208.jfif', 'OA Staff record.', 'Staff Record', '2021-09-17 21:42:48', '2021-09-27 19:56:48', 'Issued'),
(470, 'Printer-0021', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794184.jfif', 'OA Finance', 'Finance', '2021-09-17 21:43:32', '2021-09-27 19:56:24', 'Issued'),
(471, 'Printer-0022', 'Printer', NULL, 'TOS-4518A', NULL, 'Toshiba', '1632794160.jfif', 'SA Billing', 'Billing', '2021-09-17 21:44:26', '2021-09-27 19:56:00', 'Issued'),
(472, 'printer-0023', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794140.jfif', 'SA Penson', 'Person', '2021-09-17 21:45:14', '2021-09-27 19:55:40', 'Issued'),
(473, 'Printer-0024', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794114.jfif', 'APO, Officers Record.', 'Officer Record', '2021-09-17 21:46:55', '2021-09-27 19:55:14', 'Issued'),
(474, 'D19024', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1633930493.jpg', 'Office super, Rini Madam. Welfare', 'Welfare', '2021-09-17 22:17:01', '2021-10-10 23:34:53', 'Issued'),
(475, 'D-19025', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1633930542.jpg', 'Office Assistant Najrul Islam ,ICT.', 'ICT', '2021-09-17 22:32:29', '2021-10-10 23:35:42', 'Issued'),
(476, 'Printer-0025', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632794053.jfif', 'SA Officers Record.', 'Officer Record', '2021-09-18 00:05:50', '2021-09-27 19:54:13', 'Issued'),
(477, 'Printer-0026', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632794034.jfif', 'SA Officers Record.', 'Officer Record', '2021-09-18 00:06:59', '2021-09-27 19:53:54', 'Issued'),
(478, 'Printer-0027', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632794016.jfif', 'Man Security.', 'Security', '2021-09-18 00:07:48', '2021-09-27 19:53:36', 'Issued'),
(479, 'Printer-0028', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793999.jfif', 'Man Security.', 'Security', '2021-09-18 00:08:21', '2021-09-27 19:53:19', 'Issued'),
(480, 'printer-0029', 'Printer', NULL, 'LBP 6230dn', NULL, 'LBP', '1632793981.jfif', 'OA Security.', 'Security', '2021-09-18 00:09:02', '2021-09-27 19:53:01', 'Issued'),
(481, 'Printer-0030', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793960.jfif', 'OS Security', 'Security', '2021-09-18 00:09:40', '2021-09-27 19:52:40', 'Issued'),
(482, 'Printer-0031', 'Printer', NULL, 'LBP 6230dn', NULL, 'LBP', '1632793943.jfif', 'SGT Security.', 'Security', '2021-09-18 00:40:30', '2021-09-27 19:52:23', 'Issued'),
(483, 'Printer-0032', 'Printer', NULL, 'Epson-430', NULL, 'Epson', '1632793924.jfif', 'Monitoring Cell.', 'Security', '2021-09-18 00:41:15', '2021-09-27 19:52:04', 'Issued'),
(484, 'printer-0033', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793904.jfif', 'CPL Medical', 'Medical', '2021-09-18 00:42:53', '2021-09-27 19:51:44', 'Issued'),
(485, 'printer-0034', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793885.jfif', 'Medical', 'Medical', '2021-09-18 00:44:33', '2021-09-27 19:51:25', 'Issued'),
(486, 'printer-0035', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793867.jfif', 'Dental Medical', 'Medical', '2021-09-18 00:45:11', '2021-09-27 19:51:07', 'Issued'),
(487, 'printer-0036', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793843.jfif', 'GK Medical', 'Medical', '2021-09-18 00:45:52', '2021-09-27 19:50:43', 'Issued'),
(488, 'printer-0037', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793823.jfif', 'Store Medical', 'Medical', '2021-09-18 00:51:10', '2021-09-27 19:50:23', 'Issued'),
(489, 'printer-0038', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793805.jfif', 'OA Resident', 'Recident', '2021-09-18 00:53:19', '2021-09-27 19:50:05', 'Issued'),
(490, 'printer-0039', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', '1632793784.jfif', 'OS Ration Office.', 'Ration', '2021-09-18 00:54:54', '2021-09-27 19:49:44', 'Issued'),
(491, 'printer-0040', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', '1632793767.jfif', 'OA Purchase.', 'Purchase', '2021-09-18 01:19:57', '2021-09-27 19:49:27', 'Issued'),
(492, 'printer-0041', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793744.jfif', 'OS Recident.', 'Recident', '2021-09-18 01:20:44', '2021-09-27 19:49:04', 'Issued'),
(493, 'printer-0042', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', '1632793725.jfif', 'SA Welfare', 'Welfare', '2021-09-18 01:21:37', '2021-09-27 19:48:45', 'Issued'),
(494, 'printer-0043', 'Printer', NULL, 'HP- P1005', NULL, 'HP', '1632793707.jfif', 'OA Miscellaneous', 'Miscellaneous', '2021-09-18 01:23:42', '2021-09-27 19:48:27', 'Issued'),
(495, 'printer-0044', 'Printer', NULL, 'Cannon LBP 3300', NULL, NULL, '1632793688.jfif', 'SA MT', 'MT.', '2021-09-18 01:24:16', '2021-09-27 19:48:08', 'Issued'),
(496, 'printer-0045', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793668.jfif', 'OA MT', 'MT.', '2021-09-18 01:24:50', '2021-09-27 19:47:48', 'Issued'),
(497, 'printer-0046', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', '1632793652.jfif', 'Dir production sir.', 'DIR production Office', '2021-09-18 01:25:34', '2021-09-27 19:47:32', 'Issued'),
(498, 'printer-0047', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793633.jfif', 'PA to Dir Production.', 'DIR production Office', '2021-09-18 01:26:17', '2021-09-27 19:47:13', 'Issued'),
(499, 'printer-0048', 'Printer', NULL, 'HP-402', NULL, 'HP', '1632793612.jfif', 'AM pro co-cordiant cell.', 'Production C-cordiant Cell', '2021-09-18 01:27:40', '2021-09-27 19:46:52', 'Issued'),
(500, 'printer-0049', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', '1632793592.jfif', 'SAE Production  Cell.', 'Production C-cordiant Cell', '2021-09-18 01:30:19', '2021-09-27 19:46:32', 'Issued'),
(501, 'printer-0050', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', '1632793569.jfif', 'TH Pro c-cordiant cell.', 'Production C-cordiant Cell', '2021-09-18 01:31:15', '2021-09-27 19:46:09', 'Issued'),
(502, 'Printer-0051', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793545.jfif', 'SA CC-1 ( SAA)', 'Small Arms Ammo (SAA)', '2021-09-18 01:34:16', '2021-09-27 19:45:45', 'Issued'),
(503, 'printer-0052', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793526.jfif', 'Man SAA (CC-1)', 'Small Arms Ammo (SAA)', '2021-09-18 01:35:11', '2021-09-27 19:45:26', 'Issued'),
(504, 'printer-0053', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793507.jfif', 'AE SAA ( CC-1)', 'Small Arms Ammo (SAA)', '2021-09-18 01:36:19', '2021-09-27 19:45:07', 'Issued'),
(505, 'printer-0054', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793489.jfif', 'CA-1 (SAA) office', 'Small Arms Ammo (SAA)', '2021-09-18 01:37:12', '2021-09-27 19:44:49', 'Issued'),
(506, 'printer-0055', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793461.jfif', 'CA-1 (SAA) Office.', 'Small Arms Ammo (SAA)', '2021-09-18 01:39:44', '2021-09-27 19:44:21', 'Issued'),
(507, 'printer-0056', 'Printer', NULL, 'Epson-LQ-310', NULL, 'Epson', '1632793441.jfif', 'CA-1 ( FP-2). (SAA) Office', 'Small Arms Ammo (SAA)', '2021-09-18 01:40:51', '2021-09-27 19:44:01', 'Issued'),
(509, 'Printer-0057', 'Printer', NULL, 'Epson-LQ-310', NULL, 'Epson', '1632793400.jfif', 'CA-1 (FP-2)', 'Small Arms Ammo (SAA)', '2021-09-18 20:11:42', '2021-09-27 19:43:20', 'Issued'),
(510, 'printer-0058', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793377.jfif', 'DD HAG.', 'DD HAG', '2021-09-18 20:12:32', '2021-09-27 19:42:57', 'Issued'),
(511, 'printer-0059', 'Printer', NULL, 'TOS-STD', NULL, 'Toshiba-estud', '1632793356.jfif', 'SAE HAG Office', 'DD HAG Office', '2021-09-18 20:13:25', '2021-09-27 19:42:36', 'Issued'),
(512, 'printer-0060', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632793339.jfif', 'AM Fuse Assembly', 'DD HAG Office', '2021-09-18 20:14:18', '2021-09-27 19:42:19', 'Issued'),
(513, 'printer-0061', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793320.jfif', 'MAN HAG', 'DD HAG', '2021-09-18 20:15:16', '2021-09-27 19:42:00', 'Issued'),
(514, 'printer-0062', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793303.jfif', 'MAN HAG ,GP-3 Office.', 'DD HAG Office', '2021-09-18 20:17:22', '2021-09-27 19:41:43', 'Issued'),
(515, 'printer-0063', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632793284.jfif', 'SAE Fuse Assembly, Gp-3 Office', 'DD HAG Office', '2021-09-18 20:18:37', '2021-09-27 19:41:24', 'Issued'),
(516, 'printer-0064', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793199.jfif', 'MAN TNT', 'HAG', '2021-09-18 20:19:30', '2021-09-27 19:39:59', 'Issued'),
(517, 'printer-0065', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', '1632793183.jfif', 'AE RM-1', 'Small Arms (SA)', '2021-09-18 20:20:17', '2021-09-27 19:39:43', 'Issued'),
(518, 'printer-0066', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793163.jfif', 'SAE RM-1', 'Small Arms (SA)', '2021-09-18 20:20:53', '2021-09-27 19:39:23', 'Issued'),
(519, 'printer-0067', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793144.jfif', 'RM-2 (SA-2) Office', 'Small Arms (SA)', '2021-09-18 20:24:51', '2021-09-27 19:39:04', 'Issued'),
(520, 'printer-0068', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', '1632793127.jfif', 'MAN HT', 'Small Arms (SA)', '2021-09-18 20:25:38', '2021-09-27 19:38:47', 'Issued'),
(521, 'printer-0069', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632793109.jfif', 'MAN HT', 'Small Arms (SA)', '2021-09-18 20:26:15', '2021-09-27 19:38:29', 'Issued'),
(522, 'printer-0070', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632793087.jfif', 'RM-4 Office ( DN-5)', 'Small Arms (SA)', '2021-09-18 20:27:08', '2021-09-27 19:38:07', 'Issued'),
(523, 'printer-0071', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793068.jfif', 'WISA', 'Small Arms (SA)', '2021-09-18 20:28:25', '2021-09-27 19:37:48', 'Issued'),
(524, 'printer-0072', 'Printer', NULL, 'HP-402', NULL, 'HP', '1632793051.jfif', 'RM-1', 'Small Arms (SA)', '2021-09-18 20:30:27', '2021-09-27 19:37:31', 'Issued'),
(525, 'printer-0073', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793029.jfif', 'RM-1', 'Small Arms (SA)', '2021-09-18 20:32:02', '2021-09-27 19:37:09', 'Issued'),
(526, 'printer-0074', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632793011.jfif', 'RM-4', 'Small Arms (SA)', '2021-09-18 20:32:45', '2021-09-27 19:36:51', 'Issued'),
(527, 'printer-0075', 'Printer', NULL, 'Samsung-ML-1866', NULL, 'Samsung', '1632792992.jfif', 'RM-1', 'Small Arms (SA)', '2021-09-18 20:33:34', '2021-09-27 19:36:32', 'Issued'),
(528, 'printer-0076', NULL, NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792972.jfif', 'SA Office', 'Small Arms (SA)', '2021-09-18 20:34:48', '2021-09-27 19:36:12', 'Issued'),
(529, 'printer-0077', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632792952.jfif', 'RM-1', 'Small Arms (SA)', '2021-09-18 20:35:33', '2021-12-28 01:27:56', 'Issued'),
(530, 'printer-0078', 'Printer', NULL, 'Epson-L220', NULL, 'Epson', '1632792930.jfif', 'Dir plg & maint sir', 'Dir PLG & maint Office', '2021-09-18 20:36:30', '2021-09-27 19:35:30', 'Issued'),
(531, 'printer-0079', 'Printer', NULL, 'Samsung ML-1660', NULL, 'Samsung', '1632792853.jfif', 'PA To DA Plg & Maint', 'Dir PLG & maint Office', '2021-09-18 20:38:20', '2021-09-27 19:34:13', 'Issued'),
(532, 'printer-0080', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792833.jfif', 'PA To Dir Plg & Maint', 'Dir PLG & maint Office', '2021-09-18 20:39:02', '2021-09-27 19:33:53', 'Issued'),
(533, 'printer-0081', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792812.jfif', 'OA MAN Plg Office', 'Man Plg Office', '2021-09-18 20:39:58', '2021-09-27 19:33:32', 'Issued'),
(534, 'printer-0082', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792794.jfif', 'SAE P&P Office', 'P & P', '2021-09-18 20:41:06', '2021-09-27 19:33:14', 'Issued'),
(535, 'printer-0083', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792776.jfif', 'SAE P&P', 'P & P', '2021-09-18 20:41:54', '2021-09-27 19:32:56', 'Issued'),
(536, 'printer-0084', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792758.jfif', 'AE PSI', 'PSI', '2021-09-18 20:42:35', '2021-09-27 19:32:38', 'Issued'),
(537, 'printer-0085', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792727.jfif', 'AE Selim', 'MC', '2021-09-18 20:43:36', '2021-09-27 19:32:07', 'Issued'),
(538, 'printer-0086', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792710.jfif', 'SAE Abdur Razzak', 'MC', '2021-09-18 20:44:24', '2021-09-27 19:31:50', 'Issued'),
(539, 'printer-0087', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792679.jfif', 'OA Kaniz Fatema', 'MC', '2021-09-18 20:45:22', '2021-09-27 19:31:19', 'Issued'),
(540, 'printer-0088', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792639.jfif', 'SAE R & D', 'R & D', '2021-09-18 21:38:33', '2021-09-27 19:30:39', 'Issued'),
(541, 'printer-0089', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792618.jfif', 'R & D office', 'R & D', '2021-09-18 21:39:45', '2021-09-27 19:30:18', 'Issued'),
(542, 'printer-0090', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792592.jfif', 'Progress Office Mat Lab', 'Matlab', '2021-09-18 21:40:32', '2021-09-27 19:29:52', 'Issued'),
(543, 'printer-0091', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792548.jfif', 'AC Matlab', 'Matlab', '2021-09-18 21:41:40', '2021-09-27 19:29:08', 'Issued'),
(544, 'printer-0092', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792518.jfif', 'AM ISI', 'ISI', '2021-09-18 21:42:31', '2021-09-27 19:28:38', 'Issued'),
(545, 'printer-0093', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792482.jfif', 'ISI Office', 'ISI', '2021-09-18 21:45:33', '2021-09-27 19:28:02', 'Issued'),
(546, 'printer-0094', 'Printer', NULL, 'Samsung ML 1640', NULL, 'Samsung', '1632792453.jfif', 'AM CTM', 'CTM', '2021-09-18 21:46:27', '2021-09-27 19:27:33', 'Issued'),
(547, 'printer-0095', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'Canon', '1632792430.jfif', 'AE CTM', 'CTM', '2021-09-18 21:47:09', '2021-09-27 19:27:10', 'Issued'),
(548, 'printer-0096', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792409.jfif', 'SAE CTM', 'CTM', '2021-09-18 21:47:53', '2021-09-27 19:26:49', 'Issued'),
(549, 'printer-0097', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792387.jfif', 'OA Maint Office', 'CM', '2021-09-18 21:48:42', '2021-09-27 19:26:27', 'Issued'),
(550, 'printer-0098', 'Printer', NULL, 'Epson L-130', NULL, 'Epson', '1632792362.jfif', 'TH Maint Office', 'CM', '2021-09-18 21:49:25', '2021-09-27 19:26:02', 'Issued'),
(551, 'printer-0099', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792337.jfif', 'Maint Office, CM', 'CM', '2021-09-18 21:51:12', '2021-09-27 19:25:37', 'Issued'),
(552, 'printer-0100', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792319.jfif', 'AE MM', 'MM', '2021-09-18 22:15:10', '2021-09-27 19:25:19', 'Issued'),
(553, 'printer-0101', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792292.jfif', 'AM Service', 'Man service', '2021-09-18 22:15:53', '2021-09-27 19:24:52', 'Issued'),
(554, 'printer-0102', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792262.jfif', 'OA Service', 'Man service', '2021-09-18 22:16:28', '2021-09-27 19:24:22', 'Issued'),
(555, 'printer-0103', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792242.jfif', 'MAN ME', 'ME', '2021-09-18 22:17:16', '2021-09-27 19:24:02', 'Issued'),
(556, 'printer-0104', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792221.jfif', 'GK ME Store', 'ME', '2021-09-18 22:18:15', '2021-09-27 19:23:41', 'Issued'),
(557, 'printer-0105', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632792202.jfif', 'Exchange Server', 'Exchange', '2021-09-18 22:18:54', '2021-09-27 19:23:22', 'Issued'),
(558, 'printer-0108', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792184.jfif', 'Progress office', 'R & D', '2021-09-18 22:19:43', '2021-09-27 19:23:04', 'Issued'),
(559, 'printer-0109', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632792163.jfif', 'DD Purchase', 'Purchase', '2021-09-18 22:29:13', '2021-09-27 19:22:43', 'Issued'),
(560, 'printer-0110', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632791568.jpg', 'MAN Purchase', 'Purchase', '2021-09-18 22:29:55', '2021-09-27 19:12:48', 'Issued'),
(561, 'printer-0112', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632791519.jpg', 'PO Purchase', 'Purchase', '2021-09-18 22:30:37', '2021-09-27 19:11:59', 'Issued'),
(562, 'printer-0113', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632791459.jpg', 'OS Purchase', 'Purchase', '2021-09-18 22:31:12', '2021-09-27 19:10:59', 'Issued'),
(563, 'printer-0114', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632791415.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:32:08', '2021-09-27 19:10:15', 'Issued'),
(564, 'printer-0115', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632791356.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:32:41', '2021-09-27 19:09:16', 'Issued'),
(565, 'printer-0116', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632791307.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:33:13', '2021-09-27 19:08:27', 'Issued'),
(566, 'printer-0117', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632727964.jpg', 'OA Purchase', 'Purchase', '2021-09-18 22:33:46', '2021-09-27 01:32:44', 'Issued'),
(567, 'printer-0118', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632727996.jpg', 'APO Purchase', 'Purchase', '2021-09-18 22:34:15', '2021-09-27 01:33:16', 'Issued'),
(568, 'printer-0119', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632728021.jpg', 'PO Purchase', 'Purchase', '2021-09-18 22:35:58', '2021-09-27 01:33:41', 'Issued'),
(569, 'printer-0120', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632728047.jpg', 'OA Purchase', 'Purchase', '2021-09-18 22:36:25', '2021-09-27 01:34:07', 'Issued'),
(570, 'printer-0121', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632728091.jpg', 'OS Purchase', 'Purchase', '2021-09-18 22:36:49', '2021-09-27 01:34:51', 'Issued'),
(571, 'printer-0122', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632728123.jpg', 'APO Purchase', 'Purchase', '2021-09-18 22:37:17', '2021-09-27 01:35:23', 'Issued'),
(572, 'printer-0123', 'Printer', NULL, 'HP P 1102', NULL, 'HP', '1632728180.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:37:56', '2021-09-27 01:36:20', 'Issued'),
(573, 'printer-0124', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632728541.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:38:39', '2021-09-27 01:42:21', 'Issued'),
(574, 'printer-0125', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', '1632728574.jpg', 'OA Purchase', 'Purchase', '2021-09-18 22:39:26', '2021-09-27 01:42:54', 'Issued'),
(575, 'printer-0126', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632728711.jpg', 'SA Purchase', 'Purchase', '2021-09-18 22:40:25', '2021-09-27 01:45:11', 'Issued'),
(576, 'printer-0127', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632728729.jpg', 'OA Purchase', 'Purchase', '2021-09-18 22:41:06', '2021-09-27 01:45:29', 'Issued'),
(577, 'printer-0128', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632728790.jpg', 'OA Purchase', 'Purchase', '2021-09-18 22:41:36', '2021-09-27 01:46:30', 'Issued'),
(578, 'printer-0129', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632728819.jpg', NULL, 'Purchase', '2021-09-18 22:49:43', '2021-09-27 01:46:59', 'Issued'),
(579, 'printer-0130', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632728845.jpg', NULL, 'Purchase', '2021-09-18 22:53:38', '2021-09-27 01:47:25', 'Issued'),
(580, 'printer-0131', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', '1632728877.jpg', 'OA ICT Cell', 'ICT', '2021-09-18 22:57:25', '2021-09-27 01:47:57', 'Issued'),
(581, 'Printer-0132', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', '1632728908.jpg', 'ICT Office Use', 'ICT', '2021-09-18 23:01:15', '2021-09-27 01:48:28', 'Issued'),
(582, 'D-19308', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1632729005.jpg', 'HAG TNT , Felling Shop.', 'HAG', '2021-09-18 23:48:11', '2021-09-27 01:50:05', 'Issued'),
(583, 'D-21001', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', '1632729029.jpg', 'HT Shop, AE Nuri Madam.', 'Small Arms (SA)', '2021-09-18 23:50:16', '2021-09-27 01:50:29', 'Issued'),
(584, 'w-21002', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1632729064.jpg', 'ETL Project, MAN Sahina Madam.', 'R & D', '2021-09-18 23:52:13', '2021-09-27 01:51:04', 'Issued'),
(585, 'D-21003', 'Desktop', NULL, 'Core i5', NULL, 'Intel', '1632729207.jpg', 'ICT Office Use For Asraf Vai.', 'ICT', '2021-09-18 23:54:24', '2021-09-27 01:53:27', 'Issued'),
(586, 'printer-0134', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', '1632729241.jpg', 'Central Record, Entry Date: 19/08/2021, 01 pc.', 'Central Record', '2021-09-19 00:16:00', '2021-09-27 01:54:01', 'Issued'),
(587, 'printer-0133', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632729290.jpg', 'ETL Project, MAN Sahina Madam. Entry Date: 29/08/2021 , 01 pc.', 'R & D', '2021-09-19 00:19:15', '2021-09-27 01:54:50', 'Issued'),
(588, 'printer-0135', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632729824.jpg', 'Entry Date: 29/08/2021 , 01 pc. CTG', 'CTG', '2021-09-19 00:30:54', '2021-09-27 02:03:44', 'Issued'),
(589, 'P-21004', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632729859.jpg', 'Entry Date: 29/08/2021 , 01 pc. OIC ICT.', 'OIC ICT cell', '2021-09-19 00:33:12', '2021-09-27 02:04:19', 'Issued'),
(590, 'printer-0137', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632729899.jpg', 'Entry Date: 013/09/2021 HT Shop', 'Small Arms (SA)', '2021-09-19 00:37:23', '2021-09-27 02:04:59', 'Issued'),
(591, 'printer-0138', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', '1632729933.jpg', 'AM Main store.', 'Main store', '2021-09-19 22:28:16', '2021-09-27 02:05:33', 'Issued'),
(592, 'printer-0139', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632729953.jpg', 'Receive Control Office.', 'Receive Control', '2021-09-19 22:29:39', '2021-09-27 02:05:53', 'Issued'),
(593, 'printer-0140', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', '1632730110.jpg', 'APO Main Store.', 'Main store', '2021-09-19 22:30:25', '2021-09-27 02:08:30', 'Issued'),
(594, 'monitor-20001', 'Monitor', NULL, NULL, NULL, 'HP', '1632730178.jpg', 'Inclusion: 01 pc, Major Jahid Sir. ( Monitor Not Workable).', 'Small Arms (SA)', '2021-09-19 22:38:10', '2021-09-27 02:09:38', 'Issued'),
(595, 'monitor-20002', 'Monitor', NULL, NULL, NULL, 'HP', '1632730206.jpg', 'Inclusion: 01 pc, From Welfare office. ( Not workable).', 'Welfare', '2021-09-19 22:40:07', '2021-09-27 02:10:06', 'Issued'),
(596, 'monitor-20003', 'Monitor', NULL, NULL, NULL, 'HP', '1632730230.jpg', 'Inclusion: 01 pc from Welfare. ( Not workable)', 'Welfare', '2021-09-19 22:40:52', '2021-09-27 02:10:30', 'Issued'),
(597, 'monitor-20004', 'Monitor', NULL, NULL, NULL, 'HP', '1632730269.jpg', 'Inclusion: 01 pc, From Fawkal Tranning Center ( Not workable)', 'Planning', '2021-09-19 22:42:21', '2021-09-27 02:11:09', 'Issued'),
(598, 'monitor-20005', 'Monitor', NULL, NULL, NULL, 'HP', '1632730316.jpg', 'Inclusion: 01 pc From  Arra Technology Ltd.', NULL, '2021-09-19 22:44:38', '2021-09-27 02:11:56', 'Issued'),
(599, 'montior-20006', 'Monitor', NULL, NULL, NULL, 'HP', '1632730344.jpg', 'Entry: 01 pc, AM Urmi Mostofa Madam', 'Main store', '2021-09-19 22:46:35', '2021-09-27 02:12:24', 'Issued'),
(600, 'monitor-20007', 'Monitor', NULL, NULL, NULL, 'HP', '1632730396.jpg', 'Entry: 01 pc, Camara man Rasel Vai.', 'Security', '2021-09-19 22:47:29', '2021-09-27 02:13:16', 'Issued'),
(601, 'monitor-20008', 'Monitor', NULL, NULL, NULL, 'HP', '1632730438.jpg', 'Inclusion: 01 pc, From Camara  Man Rasel vai,', 'Security', '2021-09-19 22:48:14', '2021-09-27 02:13:58', 'Issued'),
(602, 'monitor-20009', 'Monitor', NULL, NULL, NULL, 'HP', '1632730468.jpg', 'Entry: 01 pc, AE Selim Sir (MC)', 'MC', '2021-09-19 22:49:05', '2021-09-27 02:14:28', 'Issued'),
(603, 'monitor-20010', 'Monitor', NULL, NULL, NULL, 'HP', '1632730491.jpg', 'Inclusion: 01 pc, Purchase Office, Room No 55.', 'Purchase', '2021-09-19 22:50:02', '2021-09-27 02:14:51', 'Issued'),
(604, 'monitor-20011', 'Monitor', NULL, NULL, NULL, 'DELL', '1632730517.jpg', 'Inclusion: 01 pc, From Purchase Office , Room No 56', 'Purchase', '2021-09-19 22:51:14', '2021-09-27 02:15:17', 'Issued'),
(605, 'monitor-20012', 'Monitor', NULL, NULL, NULL, 'DELL', '1632730548.jpg', 'Date: 27/12/2020 , Entry: 01 pc,  Production Co-ordinator Cell', 'Production C-cordiant Cell', '2021-09-19 22:52:56', '2021-09-27 02:15:48', 'Issued'),
(606, 'monitor-21013', 'Monitor', NULL, NULL, NULL, 'DELL', '1632730594.jpg', 'Date: 06/01/2021, Entry: 01 pc, DD SAA Office', 'Small Arms Ammo (SAA)', '2021-09-19 22:56:49', '2021-09-27 02:16:34', 'Issued'),
(607, 'ICT-M21004', 'Monitor', NULL, NULL, NULL, NULL, '1632730620.jpg', 'Date: 14/02/2021, Entry: 01 pc, Major Rakib Sir. Officer Mess Room 205', 'OIC ICT cell', '2021-09-19 23:12:13', '2021-09-27 02:17:00', 'Issued'),
(608, 'monitor-21015', 'Monitor', NULL, NULL, NULL, 'HP', '1632730646.jpg', 'Date: 02/03/2021 Entry: 01 pc, Chemist Abbas ALi Sir QCL.', 'R & D', '2021-09-19 23:14:46', '2021-09-27 02:17:26', 'Issued'),
(609, 'monitor-21016', 'Monitor', NULL, NULL, NULL, 'HP', '1632730673.jpg', 'Date: 04/03/2021 Entry: 01 pc, AE Oliour Rahman Sir ISI', 'ISI', '2021-09-19 23:15:58', '2021-09-27 02:17:53', 'Issued'),
(610, 'monitor-21017', 'Monitor', NULL, NULL, NULL, 'HP', '1632730700.jpg', 'Date: 29/08/2021 Entry: 01 pc, MODC Office', 'Security', '2021-09-19 23:25:42', '2021-09-27 02:18:20', 'Issued'),
(611, 'monitor-21018', 'Monitor', NULL, NULL, NULL, 'HP', '1632730727.jpg', 'Date: 09/08/2021 Entry: 01 pc,  From ERP lab to Deputy Comdt Sir.', 'Deputy Comdt Office', '2021-09-19 23:29:32', '2021-09-27 02:18:47', 'Issued'),
(612, 'monitor-21019', 'Monitor', NULL, NULL, NULL, 'HP', '1632730748.jpg', 'Date: 18/08/2021, Inclusion: ( 10+10)=20 pcs. Techno Test From ( MRO).', 'ICT', '2021-09-19 23:32:08', '2021-09-27 02:19:08', 'Issued'),
(613, 'monitor-21020', 'Monitor', NULL, NULL, NULL, 'HP', '1632730773.jpg', 'Date: 06/09/2021 Entry: 01 pc,  OA Aziz , TPT', 'MT.', '2021-09-19 23:33:31', '2021-09-27 02:19:33', 'Issued'),
(614, 'monitor-21021', 'Monitor', NULL, NULL, NULL, 'HP', '1632730798.jpg', 'Date: 14/09/2021. Inclusion: 01 pc, From Deputy Comdt To ERP Lab', 'ICT', '2021-09-19 23:35:39', '2021-09-27 02:19:58', 'Issued'),
(615, 'Router-21027', 'Router', NULL, NULL, NULL, 'D-Link', '1633402735.jpg', 'Date: 13/01/2021, Entry: 01 pc, Officer Mess VIP Room', 'Officers Mess', '2021-09-19 23:54:04', '2021-10-04 20:58:55', 'Issued'),
(616, 'Router-21028', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402703.jpg', 'Date: 28/01/2021, Entry: 01 pc, Officers Mess, Room NO ( 7,8,9)', 'Officers Mess', '2021-09-19 23:55:19', '2021-10-04 20:58:23', 'Issued'),
(617, 'Router-21029', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402672.jpg', 'Date: 08/02.2021 , Entry: 01 pc, Medical.', 'Medical', '2021-09-19 23:55:54', '2021-10-04 20:57:52', 'Issued'),
(618, 'Router-21030', 'Router', NULL, NULL, NULL, 'Tenda', '1633402644.jpg', 'Date: 11/02/2021, Entry: 01 pc, Major Rakib Sir, Officer Mess, Room 205(Return 2/11/2021) \r\nIssued in Recident 9/11/2021', 'Recident', '2021-09-19 23:59:18', '2021-11-20 20:13:50', 'Issued'),
(619, 'Router-21031', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402614.jpg', 'Date: 07/03/21 Entry: 01 pc, Deputy Comdt', 'Deputy Comdt Office', '2021-09-20 00:04:12', '2021-10-04 20:56:54', 'Issued'),
(620, 'Router-21032', 'Router', NULL, NULL, NULL, NULL, '1633402582.jpg', 'Date: 23/03/21, Entry: 01 pc,  Director Production', 'DIR production Office', '2021-09-20 00:07:17', '2021-10-04 20:56:22', 'Issued'),
(621, 'Router-21033', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402551.jpg', 'Date: 02/03/21, Entry: 02 pcs.  IA & E', 'IA & E', '2021-09-20 00:09:59', '2021-10-04 20:55:51', 'Issued'),
(622, 'Router-21034', 'Router', NULL, NULL, NULL, NULL, '1633402508.jpg', 'Date: 21/03/21 Entry: 02 pcs. Deputy Comdt House: B-3', 'Deputy Comdt Bhabon', '2021-09-20 00:11:34', '2021-10-04 20:55:08', 'Issued'),
(623, 'Router-21035', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402474.jpg', 'Date: 07/04/21, Entry: 01pc. Manager Security.', 'Security', '2021-09-20 00:13:15', '2021-10-04 20:54:34', 'Issued'),
(624, 'Router-21036', 'Router', NULL, NULL, NULL, 'D-Link', '1633402426.jpg', 'Date: 22/04/21, Entry: 01 pc.  Deputy Comdt Recident.', 'Deputy Comdt Bhabon', '2021-09-20 00:14:53', '2021-10-04 20:53:46', 'Issued'),
(625, 'Router-21037', 'Router', NULL, NULL, NULL, 'Tenda', '1633402396.jpg', 'Date:  16/06/21 Entry: 01 pc, DD Admin & Mat.', 'DD Admin & Mat', '2021-09-20 00:16:06', '2021-10-04 20:53:16', 'Issued'),
(626, 'Router-21038', 'Router', NULL, NULL, NULL, 'D-Link', '1633402338.jpg', 'Date: 05/07/21. Entry: 01 pc.  TPT', 'MT.', '2021-09-20 00:16:45', '2021-10-04 20:52:18', 'Issued'),
(627, 'Router-21039', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402305.jpg', 'Date: 07/06/21 Entry: 01 pc,  DD HAG.', 'DD HAG', '2021-09-20 00:17:29', '2021-10-04 20:51:45', 'Issued'),
(628, 'Router-21040', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402275.jpg', 'Date: 15/07/21 , Entry: 01 pc,  ICT Office.', 'ICT-Office', '2021-09-20 00:18:11', '2021-10-04 20:51:15', 'Issued'),
(629, 'Router-21041', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402245.jpg', 'Date: 17/07/21 Entry: 02 pc, Dir Planning & Mat, House: B-5', 'Dir PLG & maint Office', '2021-09-20 00:19:42', '2021-10-04 20:50:45', 'Issued'),
(630, 'Router-21042', 'Router', NULL, NULL, NULL, 'TP-Link', '1633402212.jpg', 'Date: 02/08/21, Entry: 01, Major Rakib Sir, House: D-9', 'OIC ICT cell', '2021-09-20 00:21:14', '2021-10-04 20:50:12', 'Issued'),
(631, 'Pendrive-20001', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726974.jpg', '08/07/2020, entry-01pcs, DD Plg, Lt col Arman', 'DD PLG', '2021-09-20 20:28:56', '2021-10-06 20:47:04', 'Issued'),
(632, 'Pendrive-20002', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', '1632727011.jpg', '12/07/2020, Inclusion 10 Pcs, From Computer City', 'ICT-Office', '2021-09-20 20:34:02', '2021-09-27 01:16:51', 'Issued'),
(633, 'Pendrive-20003', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', '1632727034.jpg', '14/07/2020, Entry 01 Pcs, AM Belal Sir, R & T', 'R & T', '2021-09-20 20:36:02', '2021-09-27 01:17:14', 'Issued'),
(634, 'Pendrive-20004', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', '1632727059.jpg', '05/08/2020, MC Office SAE Abdur Razzak, 01 Pcs', 'MC', '2021-09-20 20:38:02', '2021-09-27 01:17:39', 'Issued'),
(635, 'Pendrive-20005', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', '1632727086.jpg', '17/08/2020, Entry 08 Pcs, Official use ICT Cell', 'ICT-Office', '2021-09-20 20:39:19', '2021-09-27 01:18:06', 'Issued'),
(636, 'Pendrive-20006', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632727120.jpg', '24/08/2020, Inclusion 05 Pcs, From JEBA Enterprise', 'ICT-Office', '2021-09-20 20:40:47', '2021-09-27 01:18:40', 'Issued'),
(637, 'Pendrive-20007', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632727619.jpg', '19/08/2020, Entry 01 pcs, Maj Ahsan, MODC', 'Security', '2021-09-20 20:42:19', '2021-09-27 01:26:59', 'Issued'),
(638, 'Pendrive-20008', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632727653.jpg', '23/08/2020, Entry 01 pcs, AM Molla Arif , CTM', 'CTM', '2021-09-20 20:44:03', '2021-09-27 01:27:33', 'Issued'),
(639, 'Pendrive-20009', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632727723.jpg', '27/08/2020, Inclusion 05 pcs, Form JEBA Enterprise', 'ICT-Office', '2021-09-20 20:45:26', '2021-09-27 01:28:43', 'Issued'),
(640, 'Pendrive-20010', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632727766.jpg', '29/08/2020, Entry 02 pcs, AE Masum Billah, MRO', 'MRO', '2021-09-20 20:47:39', '2021-09-27 01:29:26', 'Issued'),
(641, 'Pendrive-20011', NULL, NULL, '32 GB', NULL, 'Towinmos', '1632726939.jpg', '01/09/2020, 01 Pcs, Lt Col Aziz, Maintenance', 'DD Maintenance', '2021-09-20 20:53:41', '2021-09-27 01:15:39', 'Issued'),
(642, 'Pendrive-20012', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632726901.jpg', '08/09/2020, 03 Pcs, DD (SA) Office, RM-01, 02,03', 'Small Arms (SA)', '2021-09-20 20:56:36', '2021-09-27 01:15:01', 'Issued'),
(643, 'Pendrive-20013', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632726870.jpg', '05/10/2020, 01 Pcs, Maj Jahid Sir RM-02', 'Small Arms (SA)', '2021-09-20 20:57:46', '2021-09-27 01:14:30', 'Issued'),
(644, 'Pendrive-20014', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632726820.jpg', '08/10/2020, 02 Pcs, Maj Mizan Sir, SA-02', 'Small Arms (SA)', '2021-09-20 20:59:18', '2021-09-27 01:13:40', 'Issued'),
(645, 'Pendrive-20015', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726797.jpg', '08/10/2020, 01 Pcs, Jr Tech Forhad Ahamed, ( Damage )', 'ICT', '2021-09-20 21:00:38', '2021-10-29 19:57:00', 'Issued'),
(646, 'Pendrive-20016', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726774.jpg', '21/10/2020, 01 Pcs, Manager Shahina Sir, R&D', 'R & D', '2021-09-20 21:02:04', '2021-09-27 01:12:54', 'Issued'),
(647, 'Pendrive-20017', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726741.jpg', '24/10/2020, 01 Pcs, DD Iqbal Sir, Admin', 'DD Admin', '2021-09-20 21:03:33', '2021-09-27 01:12:21', 'Issued'),
(648, 'Pendrive-20018', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', '1632726715.jpg', '25/10/2020, 01 Pcs, Office Super Monir state Management', 'MAP', '2021-09-20 21:15:46', '2021-09-27 01:11:55', 'Issued'),
(649, 'Pendrive-20019', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726690.jpg', '28/10/2020, 01 Pcs, DD Iqbal Sir, Admin', 'DD Admin', '2021-09-20 21:17:11', '2021-09-27 01:11:30', 'Issued'),
(650, 'Pendrive-20020', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726652.jpg', '05/11/2020, Inclusion 10 Pcs, from JEBA Enterprise,', 'ICT-Office', '2021-09-20 21:18:49', '2021-09-27 01:10:52', 'Issued'),
(651, 'Pendrive-20021', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726594.jpg', '07/11/2020, 01 Pcs, Sr Asst Habib, TPT', 'MT.', '2021-09-20 21:19:51', '2021-09-27 01:09:54', 'Issued'),
(652, 'Pendrive-20022', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726568.jpg', '09/11/2020, 01 Pcs, DD Aziz Sir, Maintenance', 'DD Maintenance', '2021-09-20 21:21:28', '2021-09-27 01:09:28', 'Issued'),
(653, 'Pendrive-20023', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726529.jpg', '16/11/2020, Pcs 01, OS Mohadev, Workmen Record,', 'Workman Record', '2021-09-20 21:27:27', '2021-09-27 01:08:49', 'Issued'),
(654, 'Pendrive-20024', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726497.jpg', '19/11/2020, 03 Pcs, SAE Noor Ahamed, P&P', 'P & P', '2021-09-20 21:29:03', '2021-09-27 01:08:17', 'Issued'),
(655, 'Pendrive-20025', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726460.jpg', '24/11/2020, Pcs 01, Dir Production Sir,', 'DIR production Office', '2021-09-20 21:32:29', '2021-09-27 01:07:40', 'Issued'),
(656, 'Pendrive20034', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726433.jpg', '30/11/2020, 01 Pcs, Tech Mahedi Hasan, ICT', 'ICT', '2021-09-20 21:34:33', '2021-09-27 01:07:13', 'Issued'),
(657, 'Pendrive-20026', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', '1632726381.jpg', '01/12/2020, 01 Pcs, TDL Shiblu, ICT', 'ICT', '2021-09-20 21:36:04', '2021-09-27 01:06:21', 'Issued'),
(658, 'Pendrive-20027', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726354.jpg', '01/12/2020, Inclusion 10 Pcs, MS JEBA Enterprise,', 'ICT-Office', '2021-09-20 21:37:17', '2021-09-27 01:05:54', 'Issued'),
(659, 'Pendrive-20028', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726321.jpg', '02/12/2020, 01 Pcs, OIC ICT Office,', NULL, '2021-09-20 21:38:12', '2021-11-21 19:06:12', 'Issued'),
(660, 'Pendrive-20029', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726290.jpg', '23/12/2020, 01 Pcs, Dir Admin & Mat Sir,', 'Dir Admin & Mat', '2021-09-20 21:39:21', '2021-09-27 01:04:50', 'Issued'),
(661, 'Pendrive-20030', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726214.jpg', '23/12/2020, 01 Pcs, M. Tech Quddus, CTG', 'CTG', '2021-09-20 21:40:44', '2021-09-27 01:03:34', 'Issued'),
(662, 'Pendrive-20031', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726119.jpg', '27/12/2020, 01 Pcs, Dir PLG,', 'Dir PLG & maint Office', '2021-09-20 21:41:48', '2021-09-27 01:01:59', 'Issued'),
(663, 'Pendrive21032', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632726074.jpg', '11/01/2021, 01 pcs, Jr. Tech Forhad Ahamed \r\n(Damage)', 'ICT', '2021-09-20 21:43:37', '2021-10-29 19:59:37', 'Issued'),
(664, 'Pendrive-21033', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632725994.jpg', '12/01/2021, 01 Pcs, Maj Mizan Sir, SA-02', 'Small Arms (SA)', '2021-09-20 21:44:44', '2021-09-27 00:59:54', 'Issued'),
(665, 'Pendrive-21035', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719142.jpg', '12/01/2021, 01 Pcs, Artilary Shell Project, Nurnobi Sir,', 'DIR production Office', '2021-09-20 22:41:26', '2021-09-26 23:05:42', 'Issued'),
(666, 'Pendrive-21036', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719184.jpg', '13/01/2021, Inclusion 03 pcs, Rainbow tread International,', 'ICT-Office', '2021-09-20 22:43:10', '2021-09-26 23:06:24', 'Issued'),
(667, 'Pendrive-21037', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719207.jpg', '13/01/2021, 03 Pcs, AE Abu Shaleha Muhammod Mamun, SA', 'Small Arms (SA)', '2021-09-20 22:44:43', '2021-09-26 23:06:47', 'Issued'),
(668, 'Pendrive-21038', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719268.jpg', '20/01/2021, Inclusion 10 Pcs, From MS Jeba Enterprise,', 'ICT-Office', '2021-09-20 22:46:21', '2021-09-26 23:07:48', 'Issued'),
(669, 'Pendrive-21039', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719332.jpg', '20/01/2021, 01 Pcs, Chemist Abbus Ali, QCL', 'R & D', '2021-09-20 22:48:41', '2021-09-26 23:08:52', 'Issued'),
(670, 'Pendrive-21040', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719358.jpg', '26/01/2021, 01 Pcs, Dir PLG Sir,', 'Dir PLG & maint Office', '2021-09-20 22:49:40', '2021-09-26 23:09:18', 'Issued'),
(671, 'Pendrive-21041', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719423.jpg', '28/01/2021, 04 Pcs, PO Ripon Purchase', 'Purchase', '2021-09-20 22:50:41', '2021-09-26 23:10:23', 'Issued'),
(672, 'Pendrive-21042', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719485.jpg', '28/01/2021, 01 Pcs, Manager Iftekhar Alam Sir,', 'MAG', '2021-09-20 22:51:53', '2021-09-26 23:11:25', 'Issued'),
(673, 'Pendrive-21043', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719509.jpg', '28/01/2021, 01 Pcs, DD PLG Shahina Sir, R&D', 'R & D', '2021-09-20 22:53:10', '2021-09-26 23:11:49', 'Issued'),
(674, 'Pendrive-21044', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719633.jpg', '03/02/2021, 01 Pcs, Tech Asraf Ali, ICT', 'ICT', '2021-09-20 22:54:18', '2021-09-26 23:13:53', 'Issued'),
(675, 'Pendrive-21045', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719653.jpg', '08/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-20 22:56:26', '2021-09-26 23:14:13', 'Issued'),
(676, 'Pendrive-21046', 'Pendrive', NULL, NULL, NULL, NULL, '1632719710.jpg', '16/02/2021, 01 Pcs, Maj Rakib Sir, OIC', 'OIC ICT cell', '2021-09-20 22:58:40', '2021-09-26 23:15:10', 'Issued'),
(677, 'Pendrive-21047', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632721379.jpg', '16/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-20 22:59:51', '2021-09-26 23:42:59', 'Issued'),
(678, 'Pendrive-21048', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632719820.jpg', '27/02/2021, 01 Pcs, Security Manager', 'Security', '2021-09-20 23:00:44', '2021-09-26 23:17:00', 'Issued'),
(679, 'Pendrive-21049', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632720231.jpg', '15/03/2021, 01 pcs, Jr. Tech Forhad Ahamed, ICT \r\n(Return 31/10/2021)', 'ICT', '2021-09-20 23:02:01', '2021-10-31 21:03:15', 'Issued'),
(680, 'Pendrive-21050', 'Pendrive', NULL, '16 Gb', NULL, NULL, '1632720282.jpg', '25/03/2021, Inclusion 02 Pcs, ICT Bootable OS Purpose, Tech Mehedi', 'ICT', '2021-09-20 23:05:42', '2021-09-26 23:24:42', 'Issued'),
(681, 'Pendrive-21051', 'Pendrive', NULL, '16 Gb', NULL, NULL, '1632720317.jpg', '04/04/2021, 01 Pcs, Bootable OS Purpose, Tech Mehedi', 'ICT', '2021-09-20 23:07:51', '2021-09-26 23:25:17', 'Issued'),
(682, 'Pendrive-21052', 'Pendrive', NULL, '32 GB', NULL, NULL, '1632720377.jpg', '18/08/2021, Inclusion 20 Pcs, From Techno Test, MRO', 'ICT-Office', '2021-09-20 23:10:05', '2021-09-26 23:26:17', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(683, 'pointer-20001', 'Pointer', NULL, NULL, NULL, 'Targus', '1632720979.jpg', 'Date: 14.12.2020, Inclusion: 01 pc, From M/S Enterprise.', 'ICT', '2021-09-20 23:55:10', '2021-09-26 23:36:19', 'Issued'),
(684, 'pointer-21002', 'Pointer', NULL, NULL, NULL, 'Targus', '1632721015.jpg', 'Date: 18/02/21, Inclusion: 01 pc, From Computer City.', 'ICT', '2021-09-20 23:56:19', '2021-09-26 23:36:55', 'Issued'),
(685, 'pointer-21003', 'Pointer', NULL, NULL, NULL, 'Targus', '1632721085.jpg', 'Date: 22/02/21, Entry: 01 pc, DIR Admin & Mat.', 'Dir Admin & Mat', '2021-09-20 23:57:19', '2021-09-26 23:38:05', 'Issued'),
(686, 'pointer-21004', 'Pointer', NULL, NULL, NULL, 'Targus', '1632721270.jpg', 'Date: 23/02/21, Entry: 01 pc, Not Workable,', 'ICT', '2021-09-20 23:58:02', '2021-09-26 23:41:10', 'Issued'),
(687, 'pointer-21005', 'Pointer', NULL, NULL, NULL, 'Baseus', '1632721292.jpg', 'Date: 26/08/21, Entry: 02 pcs. From Multi Smart .', 'ICT', '2021-09-21 00:00:35', '2021-09-26 23:41:32', 'Issued'),
(688, 'pointer-21006', 'Pointer', NULL, NULL, NULL, 'Baseus', '1632721324.jpg', 'Date: 26/08/21, Entry: 01 pc, Major Rakib Sir.', 'OIC ICT cell', '2021-09-21 00:02:10', '2021-09-26 23:42:04', 'Issued'),
(689, 'pointer-21007', 'Pointer', NULL, NULL, NULL, 'Baseus', '1632721348.jpg', 'Date: 26/08/21, Entry: 01 pc, ICT Office Use.', 'ICT-Office', '2021-09-21 00:03:10', '2021-09-26 23:42:28', 'Issued'),
(690, 'Webcam-20001', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721534.jpg', 'Date:  27/08/20, Inclusion: 05 pcs. From Jeba Enterprise', 'ICT-Office', '2021-09-21 00:28:44', '2021-09-26 23:45:34', 'Issued'),
(691, 'Webcam-20002', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721553.jpg', 'Date: 08/09/20, Entry: 01 pc, Major Abdus Salam Sir, OIC ICT.', 'ICT Stock', '2021-09-21 00:29:41', '2021-11-21 19:08:36', 'In Stock'),
(692, 'Webcam-20003', 'Webcamera', NULL, 'C270 HD WebCam', 'VSA 6609.01.100', 'Logitech', '1632721572.jpg', 'Date: 18/10/20, Inclusion: 01 pc, From Major Abdus Salam Sir.', 'ICT Stock', '2021-09-21 00:31:04', '2021-11-20 21:38:32', 'In Stock'),
(693, 'Webcam-21004', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721596.jpg', 'Date:  13.01.21 Entry: 01 pc, SAE Nurul Bari Sir', 'ICT', '2021-09-21 00:32:19', '2021-09-26 23:46:36', 'Issued'),
(694, 'Webcam-21006', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721622.jpg', 'Date:  13/01/21, Entry:  01 pc, SAE Shahidul Islam, ICT', 'ICT', '2021-09-21 00:34:45', '2021-09-26 23:47:02', 'Issued'),
(695, 'Webcam-21007', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721643.jpg', 'Date:  13/01/21, Entry: 01 pc, Office Assist Nazrul.', 'ICT', '2021-09-21 00:36:14', '2021-09-26 23:47:23', 'Issued'),
(696, 'Webcam-21008', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', '1632721666.jpg', 'Date: 15/01/21 Entry: 01 pc, OIC ICT CELl', 'OIC ICT cell', '2021-09-21 00:37:07', '2021-09-26 23:47:46', 'Issued'),
(697, 'Mouse-21001', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', '1632721709.jpg', '08/03/2021, 02 pcs, Maj Mahfuzer Rahman, CMC Security', 'Security', '2021-09-21 19:54:48', '2021-09-26 23:48:29', 'Issued'),
(698, 'Mouse-21002', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', '1632721729.jpg', '11/03/2021, 01pcs, OIC ICT Cell,', 'ICT-Office', '2021-09-21 19:56:41', '2021-09-26 23:48:49', 'Issued'),
(699, 'Mouse-21003', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', '1632721751.jpg', '12/05/2021, 01 pcs, Comdt Bhaban', 'Comdt BOF', '2021-09-21 19:58:37', '2021-09-26 23:49:11', 'Issued'),
(700, 'Mouse-21004', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Micropack', '1632721779.jpg', '18/08/2021, Inclusion 02 pcs, Star Tech Engineering LTD', 'ICT-Office', '2021-09-21 20:00:51', '2021-09-26 23:49:39', 'Issued'),
(701, 'Mouse-21005', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', '1632721830.jpg', '18/08/2021, 01 pcs, Comdt sir', 'Comdt BOF', '2021-09-21 20:38:16', '2021-09-26 23:50:30', 'Issued'),
(702, 'Mouse-21006', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', '1632721859.jpg', '18/08/2021, 01 pcs, Comdt Sir', 'Comdt BOF', '2021-09-21 20:39:24', '2021-09-26 23:50:59', 'Issued'),
(703, 'Mouse-21007', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Micropack', '1632721879.jpg', '26/08/2021, Inclusion 05 pcs, Computer Archives', 'ICT-Office', '2021-09-21 20:41:36', '2021-09-26 23:51:19', 'Issued'),
(704, 'Mouse-21008', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632721900.jpg', '26/08/2021, 01pcs, Maj Rakib Sir, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 20:43:42', '2021-09-26 23:51:40', 'Issued'),
(705, 'Mouse-21009', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632721932.jpg', '18/09/2021, 01 pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-21 20:47:31', '2021-09-26 23:52:12', 'Issued'),
(706, 'SSD-20001', 'SSD', NULL, NULL, NULL, NULL, '1632722062.jpg', '02/12/2020, Inclusion 01 Pcs, From jeba Enterprise', 'ICT-Office', '2021-09-21 21:28:34', '2021-09-26 23:54:22', 'Issued'),
(707, 'SSD20002', 'SSD', NULL, NULL, NULL, NULL, '1632722089.jpg', '02/12/2020, 01 pcs, ICT use Old Laptop Purpose', 'ICT-Office', '2021-09-21 21:29:39', '2021-09-26 23:54:49', 'Issued'),
(708, 'SSD-21003', 'SSD', NULL, '480GB', NULL, NULL, '1632722112.jpg', '18/08/2021, Inclusion 20 Pcs, From Techno Test (MRO)', 'ICT-Office', '2021-09-21 21:31:43', '2021-11-29 20:18:53', 'In Stock'),
(709, 'SSD-21004', 'SSD', NULL, '480GB', NULL, NULL, '1632722197.jpg', '28/08/2021, 01 Pcs, ICT Office Laptop Use', 'ICT-Office', '2021-09-21 21:32:57', '2021-09-26 23:56:37', 'Issued'),
(710, 'SSD-21005', 'SSD', NULL, '480GB', NULL, NULL, '1632722221.jpg', '02/09/2021, 01 Pcs, DD Admin & Mat Sir', 'DD Admin & Mat', '2021-09-21 21:34:37', '2021-09-26 23:57:01', 'Issued'),
(711, 'SSD-21006', 'SSD', NULL, '480GB', NULL, NULL, '1632722246.jpg', '18/09/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 21:35:38', '2021-09-26 23:57:26', 'Issued'),
(712, 'SSD-21007', 'SSD', NULL, '480GB', NULL, NULL, '1632722269.jpg', '21/09/21, 01 Pcs, GSO-2 Laptop Use', 'GSO-2', '2021-09-21 21:36:51', '2021-09-26 23:57:49', 'Issued'),
(713, 'HDDInclosoure-21005', 'HDD Inclosoure', NULL, 'USB 3.0', NULL, NULL, '1632722396.jpg', '26/08/2021, Inclusion 05 Pcs, 2.5 Inch, From Excel Technologic LTD,', 'ICT-Office', '2021-09-21 21:58:11', '2021-11-29 20:27:56', 'In Stock'),
(714, 'HDDInclosoure-21002', 'HDD Inclosoure', NULL, 'USB 3.0', NULL, NULL, '1632722420.jpg', '18/09/2021, 01 Pcs, 2.5 Inch, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 21:59:13', '2021-09-27 00:00:20', 'Issued'),
(715, 'HDDInclosoure-20003', 'HDD Inclosoure', NULL, NULL, NULL, NULL, '1632722444.jpg', '02/12/2020, Inclusion 01 Pcs, From M/S Jeba Enterprise', 'ICT-Office', '2021-09-21 22:02:22', '2021-09-27 00:00:44', 'Issued'),
(716, 'HDDInclosoure-20004', 'HDD Inclosoure', NULL, NULL, NULL, NULL, '1632722464.jpg', '02/12/2020, 01 Pcs, ICT Office Use', 'ICT-Office', '2021-09-21 22:03:41', '2021-09-27 00:01:04', 'Issued'),
(717, 'MicrosoftOffice(Licensed)-21001', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, '1632722661.png', '05/02/2021, 01 pcs, ICT Office Use', 'ICT-Office', '2021-09-21 22:14:29', '2021-09-27 00:04:21', 'Issued'),
(718, 'MicrosoftOffice(Licensed)-21002', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, '1632722688.png', '10/06/2021, Inclusion 07 Pcs, From Smart Technologies BD Ltd', 'ICT-Office', '2021-09-21 22:15:48', '2021-09-27 00:04:48', 'Issued'),
(719, 'MicrosoftOffice(Licensed)-21003', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, '1632722942.png', '12/09/2021, 01 Pcs, Dir Admin & Mat Sir,', 'Dir Admin & Mat', '2021-09-21 22:16:59', '2021-09-27 00:09:02', 'Issued'),
(720, 'MicrosoftOffice(Licensed)-21004', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, '1632722977.png', '18/09/2021, 01 Pcs, Dir admin & Mat , Laptop Use', 'Dir Admin & Mat', '2021-09-21 22:18:45', '2021-09-27 00:09:37', 'Issued'),
(721, 'MotherBoard20001', 'Mother Board', NULL, 'M41', NULL, NULL, '1632722912.jpg', '05/07/2020, 01 Pcs, OS Monir State Management , CPU Repair Purpose', 'MAP', '2021-09-21 22:28:03', '2021-09-27 00:08:32', 'Issued'),
(722, 'MotherBoard20002', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632723037.jpg', '20/07/2020, 01 pcs, OS Rini Begum, welfare ,CPU Repair Purpose', 'Welfare', '2021-09-21 22:29:51', '2021-09-27 00:10:37', 'Issued'),
(723, 'MotherBoard-20003', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725271.jpg', '05/08/2020, Inclusion 01 pcs, Return From Welfare Office,', 'Welfare', '2021-09-21 22:31:35', '2021-09-27 00:47:51', 'Issued'),
(724, 'MotherBoard-20004', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725296.jpg', '18/08/2020, 01 Pcs, Maj Mizan , RM -04, CPU Repair Purpose', 'Small Arms (SA)', '2021-09-21 22:32:38', '2021-09-27 00:48:16', 'Issued'),
(725, 'MotherBoard-20005', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725328.jpg', '20/08/2020, 01 Pcs, Po Ripon Sir, CPU Repair Purpose', 'Purchase', '2021-09-21 22:33:38', '2021-09-27 00:48:48', 'Issued'),
(726, 'MotherBoard-20006', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725356.jpg', '24/08/2020, Inclusion 02 pcs, From M/S Jeba Enterprise,', 'ICT-Office', '2021-09-21 22:38:57', '2021-09-27 00:49:16', 'Issued'),
(727, 'MotherBoard-20007', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725383.jpg', '24/08/20, Inclusion : 02 pcs,  From M/S Jeba Enterprise. CPU Repair Purpose.', 'ICT-Office', '2021-09-21 22:40:48', '2021-09-27 00:49:43', 'Issued'),
(728, 'MotherBoard-20008', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725415.jpg', '21/08/20, Entry: 01 pc, ICT Office, CPU Repair Purpose.', 'ICT-Office', '2021-09-21 22:40:53', '2021-09-27 00:50:15', 'Issued'),
(729, 'MotherBoard-20009', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725439.jpg', '17/10/20, Entry: 01 pc, Proyash School. CPU Repair Purpose.', 'Recident', '2021-09-21 22:46:16', '2021-09-27 00:50:39', 'Issued'),
(730, 'MotherBoard-20010', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725473.jpg', '28/10/20, Entry: 01 pc, Fire Office, CPU Repair Purpose', 'Fire', '2021-09-21 22:47:10', '2021-09-27 00:51:13', 'Issued'),
(731, 'MotherBoard-20011', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725499.jpg', '28/10/20, Entry: 01 pc, Mainstore , CPU Repair Purpose.', 'Main store', '2021-09-21 22:47:53', '2021-09-27 00:51:39', 'Issued'),
(732, 'MotherBoard-20012', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725527.jpg', '31/10/20, Entry: 01 pc, Security Main Gate. CPU Repair Purpose.', 'Security', '2021-09-21 22:48:46', '2021-09-27 00:52:07', 'Issued'),
(733, 'MotherBoard-21013', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725576.jpg', '04/02/21, Entry: 01 pc, AE Mahmudur Rahman, CA-2. CPU Repair Purpose.', 'Small Arms Ammo (SAA)', '2021-09-21 22:50:29', '2021-09-27 00:52:56', 'Issued'),
(734, 'MotherBoard-21014', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725599.jpg', '22/02/21, Entry: 01 pc, AE Oliur Rahman , ISI', 'ISI', '2021-09-21 22:51:08', '2021-09-27 00:53:19', 'Issued'),
(735, 'MotherBoard-21015', 'Mother Board', NULL, 'M 61', NULL, NULL, '1632725648.jpg', '24/02/21, Entry: 01pc, Manager Aminur Rahman, HAG', 'HAG', '2021-09-21 22:51:42', '2021-09-27 00:54:08', 'Issued'),
(736, 'MotherBoard-21016', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725687.jpg', '22/04/21, Entry: 01 pc, Received Control Office, Main Store.', 'Receive Control', '2021-09-21 22:52:32', '2021-09-27 00:54:47', 'Issued'),
(737, 'MotherBoard-21017', 'Mother Board', NULL, 'M41', NULL, NULL, '1632725720.jpg', '27/05/21, Entry: 01 pc, Abdur Razzak, MC.', 'MC', '2021-09-21 22:53:16', '2021-09-27 00:55:20', 'Issued'),
(738, 'projector-20001', 'Projector', NULL, NULL, NULL, 'Hitachi', '1632730072.jpg', '10/09/20, Entry: 01 pc, ICT Office. CP- X 250', 'ICT-Office', '2021-09-21 23:03:04', '2021-09-29 20:29:52', 'Issued'),
(739, 'projector-21002', 'Projector', NULL, NULL, NULL, 'Epson', '1632877960.jpg', '20/01/21, 01 pcs (Old), EB-S05, ICT Office', 'ICT-Office', '2021-09-21 23:05:05', '2021-09-29 20:33:03', 'Issued'),
(740, 'projector-20003', 'Projector', NULL, NULL, NULL, 'Maxcell', '1632878107.jpg', '22/03/21, Entry: 01 pcs, Opps Room, EX-303E', 'OPS Room', '2021-09-21 23:06:20', '2021-09-28 19:15:07', 'Issued'),
(741, 'Projector-Screen-20001', 'Projector-Screen', NULL, NULL, NULL, NULL, '1632878081.jpg', '21/09/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-21 23:14:04', '2021-09-28 19:14:41', 'Issued'),
(742, 'Projector-Screen-20002', 'Projector-Screen', NULL, NULL, NULL, NULL, '1632878058.jpg', '27/10/2020, 02 Pcs, Wastage Board', 'GK main store', '2021-09-21 23:15:32', '2021-09-28 19:14:18', 'Issued'),
(743, 'Projector-Screen-20003', 'Projector-Screen', NULL, NULL, NULL, NULL, '1632878037.jpg', '20/11/2020, 01 Pcs, Damage (Not Workable)', 'ICT-Office', '2021-09-21 23:16:33', '2021-09-28 19:13:57', 'Issued'),
(744, 'RAM-20001', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885239.jpg', '17/08/2020, 01 pcs, ME Store, SAE Basher Rahman, CPU Repair Purpose', 'ME', '2021-09-21 23:25:40', '2021-09-28 21:13:59', 'Issued'),
(745, 'RAM-20003', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885265.jpg', '29/08/2020,01 Pcs, Cashier Alamgir, CPU Repair Purpose', 'Cash', '2021-09-21 23:39:45', '2021-09-28 21:14:25', 'Issued'),
(746, 'RAM-20004', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885291.jpg', '01/09/2020, 01 Pcs, SAE Shohidul Islam, ICT Cell, CPU Repair Purpose', 'ICT-Office', '2021-09-21 23:42:41', '2021-09-28 21:14:51', 'Issued'),
(747, 'RAM-20005', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885314.jpg', '22/11/2020, 01 pcs, SR Asst Habib, CPU Repair Purpose', 'TPT', '2021-09-21 23:46:14', '2021-09-28 21:15:14', 'Issued'),
(748, 'RAM-20006', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885341.jpg', '28/11/2020, 01 pcs, DD HAg Habib Sir, CPU Repair Purpose', 'DD HAG Office', '2021-09-21 23:50:08', '2021-09-28 21:15:41', 'Issued'),
(749, 'RAM-20007', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885377.jpg', '30/11/2020, 01 pcs, DD HAG Office, AD Purpose, CPU Repair Purpose', 'HAG', '2021-09-21 23:53:19', '2021-09-28 21:16:17', 'Issued'),
(750, 'RAM-20008', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885409.jpg', '06/12/2020, Inclusion 05 pcs, From M/S Jeba Enterprise,', 'ICT-Office', '2021-09-21 23:54:45', '2021-09-28 21:16:49', 'Issued'),
(751, 'RAM20009', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885447.jpg', '23/12/2020, 01 Pcs, AE Anisur Rahman Sir, CPU Repair Purpose', 'PLG', '2021-09-21 23:56:29', '2021-09-28 21:17:27', 'Issued'),
(752, 'RAM-21010', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885477.jpg', '11/01/2021, 02 pcs, Office Super Zia,CPU Repair Purpose', 'Purchase', '2021-09-22 00:00:00', '2021-09-28 21:17:57', 'Issued'),
(753, 'RAM-21011', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885500.jpg', '14/01/2021, Inclusion 04 Pcs, From  M/S Jeba Enterprise,', 'ICT-Office', '2021-09-22 00:01:23', '2021-09-28 21:18:20', 'Issued'),
(754, 'RAM21012', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632885626.jpg', '18/01/2020, 02 pcs, ICT Old CPU Repair Purpose', 'ICT-Office', '2021-09-22 00:02:52', '2021-09-28 21:20:26', 'Issued'),
(755, 'RAM-21013', 'RAM', 'DDR-04', NULL, NULL, NULL, '1633399393.jpg', '19/01/2021, 01 pcs, AE Oliur Rahman Sir, CPU Repair Purpose', 'ISI', '2021-09-22 00:04:56', '2021-10-04 20:03:13', 'Issued'),
(756, 'RAM-21014', 'RAM', 'DDR-04', NULL, NULL, NULL, '1633399496.jpg', '23/01/2021, TPT, CPU Repair Purpose', 'TPT', '2021-09-22 00:06:09', '2021-10-04 20:04:56', 'Issued'),
(757, 'RAM-21016', 'RAM', 'DDR-04', NULL, NULL, NULL, '1633399596.jpg', '24/02/2021, 01 Pcs, Manager Alamgir Rahman, CPU Repair Purpose', 'HAG', '2021-09-22 00:07:31', '2021-10-04 20:06:36', 'Issued'),
(758, 'RAM-21017', 'RAM', 'DDR-04', NULL, NULL, NULL, '1633399642.jpg', '05/05/2021, 01 pcs, Reception Office , CPU Repair Purpose', 'Security', '2021-09-22 00:11:21', '2021-10-04 20:07:22', 'Issued'),
(759, 'RAM-21018', 'RAM', 'DDR-04', NULL, NULL, NULL, '1633399677.jpg', '07/05/2021, 01 pcs, Office Asst  Atik, CPU Repair Purpose', 'CTM', '2021-09-22 00:12:59', '2021-10-04 20:07:57', 'Issued'),
(760, 'RAM-21015', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632901974.jpg', '02/06/2021, 01 pcs, Received Control, CPU Repair Purpose', 'Receive Control', '2021-09-22 00:23:31', '2021-09-29 01:52:54', 'Issued'),
(761, 'RAM-21019', 'RAM', 'DDR-04', NULL, NULL, NULL, '1632901947.jpg', '15/07/2021, 01 pcs, RAM Damage,', 'ICT-Office', '2021-09-22 00:24:55', '2021-09-29 01:52:27', 'Issued'),
(762, 'RAM-20020', 'RAM', 'DDR-03', NULL, NULL, NULL, '1632901905.jpg', '20/07/2020, 01 pcs, OS Rini Begum,', 'Welfare', '2021-09-22 00:27:41', '2021-09-29 01:51:45', 'Issued'),
(763, 'RAM-20022', 'RAM', 'DDR-03', NULL, NULL, NULL, '1632901881.jpg', '18/08/2021, Inclusion 01 Pcs, Computer City', 'ICT-Office', '2021-09-22 00:37:57', '2021-09-29 01:51:21', 'Issued'),
(764, 'RAM-20023', 'RAM', 'DDR-03', NULL, NULL, NULL, '1632725941.jpg', '20/08/2020, 01 Pcs, PO Ripon, CPU Repair Purpose', 'Purchase', '2021-09-22 00:40:44', '2021-09-27 00:59:01', 'Issued'),
(765, 'RAM-20024', 'RAM', 'DDR-03', NULL, NULL, NULL, '1632715620.jpg', '21/09/2020, 01 Pcs, Tech, Mehedi, CPU Repair purpose', 'ICT-Office', '2021-09-22 00:42:52', '2021-09-26 22:07:00', 'Issued'),
(766, 'RAM-20021', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633399761.jpg', '17/10/2020, 01 Pcs, Praysh School, CPU Repair purpose', 'Recident', '2021-09-22 00:45:58', '2021-10-04 20:09:21', 'Issued'),
(767, 'RAM-20025', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633399803.jpg', '02/12/2020, 01 Pcs, HAG Office, CPU Repair purpose', 'HAG', '2021-09-22 00:47:40', '2021-10-04 20:10:03', 'Issued'),
(768, 'RAM-20026', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633399836.jpg', '23/12/2020, 01 Pcs, Medical Pc, CPU Repair purpose', 'Medical', '2021-09-22 00:49:13', '2021-10-04 20:10:36', 'Issued'),
(770, 'RAM-21028', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633399875.jpg', '10/04/2021, 01 Pcs, PO Ripon Sir, CPU Repair purpose', 'Purchase', '2021-09-22 00:51:54', '2021-10-04 20:11:15', 'Issued'),
(771, 'RAM-21029', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633400481.jpg', '13/06/2021, 01 pcs, AE Selim Sir, CPU Repair purpose', 'MC', '2021-09-22 00:56:36', '2021-10-04 20:21:21', 'Issued'),
(772, 'RAM-21030', 'RAM', 'DDR-03', NULL, NULL, NULL, '1633400896.jpg', '14/06/2021, 01 Pcs, Main Store, CPU Repair purpose', 'Main store', '2021-09-22 00:57:58', '2021-10-04 20:28:16', 'Issued'),
(773, 'Mouse-20010', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716075.jpg', '14/07/2020, 01 Pcs, DD PLG Office,', 'DD PlG office', '2021-09-22 01:10:40', '2021-09-26 22:14:35', 'Issued'),
(774, 'Mouse-20011', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716103.jpg', '10/08/2020, 01 Pcs, Maj Ahsan (GSO-02),', 'Comdt BOF', '2021-09-22 01:13:07', '2021-09-26 22:15:03', 'Issued'),
(775, 'Mouse-20012', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716124.jpg', '24/08/2020, Inclusion 05 Pcs, From Jeba Enterprise LTD,', 'ICT-Office', '2021-09-22 01:15:44', '2021-09-26 22:15:24', 'Issued'),
(776, 'Mouse-20013', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716143.jpg', '23/08/2020, 02 Pcs, DD Admin', 'DD Admin', '2021-09-22 01:17:16', '2021-09-26 22:15:43', 'Issued'),
(777, 'Mouse-20014', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716167.jpg', '27/08/2020, Inclusion 05 pcs, Jeba Enterprise', 'ICT-Office', '2021-09-22 01:18:59', '2021-09-26 22:16:07', 'Issued'),
(778, 'Mouse-20015', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716201.jpg', '27/08/2020, 02 pcs, Dir Admin Office', 'Dir Admin & Mat', '2021-09-22 01:20:21', '2021-09-26 22:16:41', 'Issued'),
(779, 'Mouse-20016', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716227.jpg', '07/09/2020, 01 pcs,  ICT Office', NULL, '2021-09-22 01:21:40', '2021-11-21 19:14:43', 'Issued'),
(780, 'Mouse-20017', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716248.jpg', '26/09/2020, 01 Pcs, Comdt Office (Rojob)', 'Comdt BOF', '2021-09-22 01:25:10', '2021-09-26 22:17:28', 'Issued'),
(781, 'Mouse-20018', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716271.jpg', '28/10/2020, 01 Pcs,  3rd floor Conference Room,', 'Conference Room', '2021-09-22 01:26:45', '2021-09-26 22:17:51', 'Issued'),
(782, 'Mouse-20019', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716301.jpg', '17/10/2020,01 Pcs, Dir Admin Sir', 'Dir Admin & Mat', '2021-09-22 01:28:21', '2021-09-26 22:18:21', 'Issued'),
(783, 'Mouse-20020', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716325.jpg', '19/11/2020, 01 pcs, Dir Production Sir', 'DIR production Office', '2021-09-22 01:32:40', '2021-09-26 22:18:45', 'Issued'),
(784, 'Mouse-21021', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716350.jpg', '04/01/2021, 01 pcs, 3rd floor Conference Room', 'Conference Room', '2021-09-22 01:46:04', '2021-09-26 22:19:10', 'Issued'),
(785, 'Mouse-21022', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716373.jpg', '20/01/2021, Inclusion 01 pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 01:48:25', '2021-09-26 22:19:33', 'Issued'),
(786, 'Mouse-21023', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716394.jpg', '21/01/2021, 01 Pcs, Comdt Sir', 'Comdt BOF', '2021-09-22 01:49:16', '2021-09-26 22:19:54', 'Issued'),
(787, 'Mouse-21024', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716414.jpg', '23/01/2021, 01 Pcs, Comdt Madam', 'Comdt BOF', '2021-09-22 01:50:43', '2021-09-26 22:20:14', 'Issued'),
(788, 'Mouse-21025', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716434.jpg', '31/01/2021, 01 Pcs, Manager Security Sir', 'Security', '2021-09-22 01:52:02', '2021-09-26 22:20:34', 'Issued'),
(789, 'Mouse-21026', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, '1632716460.jpg', '28/01/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-22 01:53:31', '2021-09-26 22:21:00', 'Issued'),
(790, 'Keyboard-20001', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717236.jpg', '05/07/2020, Inclusion 02 Pcs, IT Place', 'ICT-Office', '2021-09-22 19:41:25', '2021-09-26 22:33:56', 'Issued'),
(791, 'Keyboard-20002', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632717257.jpg', '18/07/2020, 01 Pcs, CLK/ Monir, Officer Mess', 'Officers Mess', '2021-09-22 19:43:04', '2021-09-26 22:34:17', 'Issued'),
(792, 'Keyboard-20003', 'Keyboard', NULL, NULL, NULL, 'Micropack', '1632717280.jpg', '06/08/2020, 01 Pcs, AM Mehedi (SVC)', 'DD Maintenance', '2021-09-22 19:45:21', '2021-09-26 22:34:40', 'Issued'),
(793, 'Keyboard-20004', 'Keyboard', NULL, NULL, NULL, NULL, '1632717302.jpg', '12/08/2020, 05 Pcs, Workstation PC Accessories', NULL, '2021-09-22 19:47:24', '2021-09-26 22:35:02', 'Issued'),
(794, 'Keyboard-20005', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632717322.jpg', '16/09/2020, Inclusion 10 Pcs, Jeba Enterprise LTD', 'ICT-Office', '2021-09-22 19:50:30', '2021-09-26 22:35:22', 'Issued'),
(795, 'Keyboard-20006', 'Keyboard', NULL, NULL, NULL, 'HP', '1632717348.jpg', '16/09/2020, 16 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-22 19:51:58', '2021-09-26 22:35:48', 'Issued'),
(796, 'Keyboard-20007', 'Keyboard', NULL, NULL, NULL, 'HP', '1632717371.jpg', '21/09/2020, Inclusion 05 Pcs, From Computer City', 'ICT-Office', '2021-09-22 19:53:35', '2021-09-26 22:36:11', 'Issued'),
(797, 'Keyboard-20008', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717393.jpg', '21/09/2020, 05 Pcs, Workstations PC Clone PC', 'ICT-Office', '2021-09-22 19:55:32', '2021-09-26 22:36:33', 'Issued'),
(798, 'Keyboard-20009', 'Keyboard', NULL, NULL, NULL, NULL, '1632717418.jpg', '21/09/2020, Inclusion 03 Pcs, Not workable (ICT-1020)', 'GK main store', '2021-09-22 19:57:28', '2021-09-26 22:36:58', 'Issued'),
(799, 'Keyboard-20010', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717440.jpg', '26/09/2020, 01 Pcs, Telephone Exchange,', 'ME', '2021-09-22 19:58:49', '2021-09-26 22:37:20', 'Issued'),
(800, 'Keyboard-20011', 'Keyboard', NULL, NULL, NULL, NULL, '1632717503.jpg', '05/10/2020, 01 Pcs, Chemist Abbas Ali', 'QCL', '2021-09-22 20:00:46', '2021-09-26 22:38:23', 'Issued'),
(801, 'Keyboard-20012', 'Keyboard', NULL, NULL, NULL, NULL, '1632717525.jpg', '05/10/2020,01 Pcs, AE Tofayel Sir', 'CTG', '2021-09-22 20:06:47', '2021-09-26 22:38:45', 'Issued'),
(802, 'Keyboard-20013', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632717587.jpg', '08/10/2020, Inclusion 05 Pcs, M/S Jeba  Enterprise LTD', 'ICT-Office', '2021-09-22 20:10:38', '2021-09-26 22:39:47', 'Issued'),
(803, 'Keyboard-20014', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717617.jpg', '21/10/2020,01 Pcs, AE Oliur Rahman Sir', 'ISI', '2021-09-22 20:12:09', '2021-09-26 22:40:17', 'Issued'),
(804, 'Keyboard-20015', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717660.jpg', '22/10/2020,01 Pcs, AM Iftekhirul Sir', 'Central Record', '2021-09-22 20:14:28', '2021-09-26 22:41:00', 'Issued'),
(805, 'Keyboard-20016', 'Keyboard', NULL, NULL, NULL, NULL, '1632717685.jpg', '27/10/2020, 03 Pcs, Wastage Board', 'GK main store', '2021-09-22 20:15:57', '2021-09-26 22:41:25', 'Issued'),
(806, 'Keyboard-20017', 'Keyboard', NULL, NULL, NULL, NULL, '1632717709.jpg', '07/11/2020, 01 Pcs, Manager sir Shahidulla (Officer Record)', 'MAP', '2021-09-22 20:18:29', '2021-09-26 22:41:49', 'Issued'),
(807, 'Keyboard-20018', 'Keyboard', NULL, NULL, NULL, NULL, '1632717732.jpg', '07/11/2020, 02 Pcs, Sir Asst Habib', 'TPT', '2021-09-22 20:20:24', '2021-09-26 22:42:12', 'Issued'),
(808, 'Keyboard-20019', 'Keyboard', NULL, NULL, NULL, 'Pro Desk', '1632717840.jpg', '11/11/2020, Inclusion 10 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 20:24:06', '2021-09-26 22:44:00', 'Issued'),
(809, 'Keyboard-20020', 'Keyboard', NULL, NULL, NULL, 'HP', '1632717862.jpg', '21/11/2020, 04 Pcs, SAE Noor Ahamed', 'P & P', '2021-09-22 20:26:21', '2021-09-26 22:44:22', 'Issued'),
(810, 'Keyboard-20021', 'Keyboard', NULL, NULL, NULL, NULL, '1632717893.jpg', '22/11/2020, 01 Pcs, RM-02, Progress Office', 'Small Arms (SA)', '2021-09-22 20:29:52', '2021-09-26 22:44:53', 'Issued'),
(811, 'Keyboard-20022', 'Keyboard', NULL, NULL, NULL, NULL, '1632717919.jpg', '24/11/2020,04 Pcs, SR Asst Nazma', 'Medical', '2021-09-22 20:33:04', '2021-09-26 22:45:19', 'Issued'),
(812, 'Keyboard-20023', 'Keyboard', NULL, NULL, NULL, NULL, '1632717951.jpg', '30/11/2020, Inclusion 20 pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 20:34:45', '2021-09-26 22:45:51', 'Issued'),
(813, 'Keyboard-20024', 'Keyboard', NULL, NULL, NULL, NULL, '1632717975.jpg', '03/12/2020, 01 pcs, Office Asst Abaid', 'Purchase', '2021-09-22 20:36:25', '2021-09-26 22:46:15', 'Issued'),
(814, 'Keyboard-20025', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632717999.jpg', '03/12/2020, 01 pcs, PO Ripon Sir', 'Purchase', '2021-09-22 20:39:18', '2021-09-26 22:46:39', 'Issued'),
(815, 'Keyboard-20026', 'Keyboard', NULL, NULL, NULL, 'HP', '1632718020.jpg', '05/12/2020,01 pcs, Office Asst Nazrul Islam, RM -01', 'Small Arms (SA)', '2021-09-22 20:41:22', '2021-09-26 22:47:00', 'Issued'),
(816, 'Keyboard-20027', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718043.jpg', '06/12/2020, 02 pcs, AM Bilal Sir,', 'Purchase', '2021-09-22 20:42:56', '2021-09-26 22:47:23', 'Issued'),
(817, 'Keyboard-20028', 'Keyboard', NULL, NULL, NULL, NULL, '1632718070.jpg', '21/12/2020, 01 pcs, Chemist Abbas Ali Sir', 'QCL', '2021-09-22 20:47:34', '2021-09-26 22:47:50', 'Issued'),
(818, 'Keyboard-20029', 'Keyboard', NULL, NULL, NULL, NULL, '1632718105.jpg', '28/12/2020, 01 pcs, SKDT Maksud', 'MRO', '2021-09-22 20:48:51', '2021-09-26 22:48:25', 'Issued'),
(819, 'Keyboard-21030', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718124.jpg', '09/01/2021,01 pcs OS Nasrin', 'Staff Record', '2021-09-22 20:50:51', '2021-09-26 22:48:44', 'Issued'),
(820, 'Keyboard-21031', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632718147.jpg', '16/02/2021, Inclusion 01 (Wire) Pcs, Computer City', 'ICT-Office', '2021-09-22 20:57:48', '2021-09-26 22:49:07', 'Issued'),
(821, 'Keyboard-21032', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718170.jpg', '09/03/2021, 02 pcs, AE Anisur Rahman Sir', 'PLG', '2021-09-22 20:59:14', '2021-09-26 22:49:30', 'Issued'),
(822, 'Keyboard-21033', 'Keyboard', NULL, NULL, NULL, 'HP', '1632718202.jpg', '10/03/2021,01 Pcs, Residential NOC Room', 'Residential', '2021-09-22 21:01:45', '2021-09-26 22:50:02', 'Issued'),
(823, 'Keyboard-21034', 'Keyboard', NULL, NULL, NULL, NULL, '1632718225.jpg', '11/03/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-22 21:17:16', '2021-09-26 22:50:25', 'Issued'),
(824, 'Keyboard-21035', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718278.jpg', '15/03/2021, Inclusion 01 Pcs, Masud Electronic', 'ICT-Office', '2021-09-22 21:19:13', '2021-09-26 22:51:18', 'Issued'),
(825, 'Keyboard-21036', 'Keyboard', NULL, NULL, NULL, NULL, '1632718327.jpg', '15/03/2021, 01 pcs, VTC Use Purpose', 'ICT-Office', '2021-09-22 21:20:37', '2021-09-26 22:52:07', 'Issued'),
(826, 'Keyboard-21037', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718425.jpg', '15/03/2021, 01 Pcs, OIC ICT Office', 'ICT-Office', '2021-09-22 21:23:02', '2021-11-20 20:20:39', 'Issued'),
(827, 'Keyboard-21038', 'Keyboard', NULL, NULL, NULL, 'HP', '1632718531.jpg', '29/03/2021, 01 pcs, Office Asst Atik', 'CTM', '2021-09-22 21:24:32', '2021-09-26 22:55:31', 'Issued'),
(828, 'Keyboard-21039', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632718556.jpg', '27/05/2021,01 Pcs, DD Office Momin', 'Small Arms (SA)', '2021-09-22 21:27:03', '2021-09-26 22:55:56', 'Issued'),
(829, 'Keyboard-21040', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', '1632718580.jpg', '06/06/2021, 01 pcs, Manager Purchase', 'Purchase', '2021-09-22 21:28:03', '2021-09-26 22:56:20', 'Issued'),
(830, 'Keyboard-21041', 'Keyboard', NULL, NULL, NULL, NULL, '1632718599.jpg', '21/06/2021, 01 pcs, Tech Jahangir', 'ME', '2021-09-22 21:29:55', '2021-09-26 22:56:39', 'Issued'),
(831, 'Keyboard-21042', 'Keyboard', NULL, NULL, NULL, 'HP', '1632718621.jpg', '25/08/2021,01 pcs, SAE Monjurul Islam', 'Telephone Exchange', '2021-09-22 21:34:10', '2021-09-26 22:57:01', 'Issued'),
(832, 'Keyboard-21043', 'Keyboard', NULL, NULL, NULL, 'Logitech', '1632718644.jpg', '12/08/2021, 01 Pcs, SAE Sujon', 'MRO', '2021-09-22 21:38:27', '2021-09-26 22:57:24', 'Issued'),
(833, 'MousePad-20001', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406019.jpg', '09/07/2020, 01 Pcs, Maj A Salam', NULL, '2021-09-22 22:41:36', '2021-11-21 19:15:22', 'Issued'),
(834, 'MousePad-20002', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406059.jpg', '12/07/2020, Inclusion 05 Pcs, Computer City', 'ICT-Office', '2021-09-22 22:42:29', '2021-10-04 21:54:19', 'Issued'),
(835, 'MousePad-20003', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406098.jpg', '13/07/2020, 01 DD PLG Office', 'DD PlG office', '2021-09-22 22:43:28', '2021-10-04 21:54:58', 'Issued'),
(836, 'MousePad-20004', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632714973.jpg', '05/08/2020, 08 Pcs, SAE A Razzak , MC Office', 'PLG', '2021-09-22 22:45:05', '2021-09-26 21:56:13', 'Issued'),
(837, 'MousePad-20005', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715001.jpg', '23/08/2020, 02 Pcs, PA, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-22 22:47:06', '2021-09-26 21:56:41', 'Issued'),
(838, 'MousePad-20006', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715022.jpg', '24/08/2020, Inclusion 20 Pcs, Jeba Enterprise,', 'ICT-Office', '2021-09-22 22:49:19', '2021-09-26 21:57:02', 'Issued'),
(839, 'MousePad-20007', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715050.jpg', '26/08/2020, Inclusion 05 Pcs, Jeba Enterprise', 'ICT-Office', '2021-09-22 22:50:14', '2021-09-26 21:57:30', 'Issued'),
(840, 'MousePad-20008', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715069.jpg', '27/08/2020, Inclusion 05 Pcs, From Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 22:51:45', '2021-09-26 21:57:49', 'Issued'),
(841, 'MousePad-20009', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715097.jpg', '07/09/2020, 01 Pcs, Dir Planning Office', 'Dir PLG & maint Office', '2021-09-22 22:53:15', '2021-09-26 21:58:17', 'Issued'),
(842, 'MousePad-20010', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715122.jpg', '16/09/2020, 16 pcs, ICT Cell Office', 'ICT-Office', '2021-09-22 22:54:33', '2021-09-26 21:58:42', 'Issued'),
(843, 'MousePad-20011', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715142.jpg', '17/09/2020, 05 pcs, ICT & CMC Office', 'ICT-Office', '2021-09-22 22:56:28', '2021-09-26 21:59:02', 'Issued'),
(844, 'MousePad-20012', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715165.jpg', '21/09/2020, 06 pcs, V SKD Shawon', 'ICT-Office', '2021-09-22 22:58:30', '2021-09-26 21:59:25', 'Issued'),
(845, 'MousePad-20013', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715196.jpg', '05/10/2020, 02 AE Tofayel Sir', 'CTG', '2021-09-22 23:06:49', '2021-09-26 21:59:56', 'Issued'),
(846, 'MousePad-20014', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715218.jpg', '08/10/2020, Inclusion 20 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 23:14:25', '2021-09-26 22:00:18', 'Issued'),
(847, 'MousePad-20015', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715243.jpg', '11/10/2020, 01 pcs, Dir production Sir', 'DIR production Office', '2021-09-22 23:21:20', '2021-09-26 22:00:43', 'Issued'),
(848, 'MousePad-20016', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715261.jpg', '22/10/2020, 02 pcs, AM Iftekharul Alam Sir', 'Central Record', '2021-09-22 23:23:20', '2021-09-26 22:01:01', 'Issued'),
(849, 'MousePad-20017', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715304.jpg', '02/11/2020, 17 Pcs, Desktop PC Set Use Purpose', 'ICT-Office', '2021-09-22 23:28:20', '2021-09-26 22:01:44', 'Issued'),
(850, 'MousePad-20018', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632715330.jpg', '05/11/2020, Inclusion 20 pcs, M/S jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 23:33:20', '2021-09-26 22:02:10', 'Issued'),
(851, 'MousePad-20019', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632714427.jpg', '07/11/2020, 01 pcs, Manager Shahidulla,', 'MAP', '2021-09-22 23:35:04', '2021-09-26 21:47:07', 'Issued'),
(852, 'MousePad-20020', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406148.jpg', '16/11/2020, 05 Pcs, OS Mohadev Workman Record', 'Workman Record', '2021-09-22 23:36:57', '2021-10-04 21:55:48', 'Issued'),
(853, 'MousePad-20021', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632639085.jpg', '18/11/2020, 03 Pcs, PO Ripon', 'Purchase', '2021-09-22 23:38:24', '2021-09-26 00:51:25', 'Issued'),
(854, 'MousePad-20022', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406184.jpg', '21/11/2020, 06 Pcs, SAE Noor Ahamed', 'P & P', '2021-09-22 23:42:42', '2021-10-04 21:56:24', 'Issued'),
(855, 'MousePad-20023', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638975.jpg', '26/11/2020, 03 Pcs, SR Asst Nazma', 'Medical', '2021-09-22 23:43:45', '2021-09-26 00:49:35', 'Issued'),
(856, 'MousePad-20024', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406248.jpg', '30/11/2020, Inclusion 20 Pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 23:44:59', '2021-10-04 21:57:28', 'Issued'),
(857, 'MousePad-20025', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406289.jpg', '03/12/2020,01 Pcs, Office Asst Obaid', 'Purchase', '2021-09-22 23:47:29', '2021-10-04 21:58:09', 'Issued'),
(858, 'MousePad-20026', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638898.jpg', '03/12/2020, 01 Pcs, PO Ripon Sir', 'Purchase', '2021-09-22 23:51:56', '2021-09-26 00:48:18', 'Issued'),
(859, 'MousePad-20027', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406333.jpg', '05/12/2020, 03 Pcs, Mojib, Purchase', 'Purchase', '2021-09-22 23:54:07', '2021-10-04 21:58:53', 'Issued'),
(860, 'MousePad-20028', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406368.jpg', '06/12/2020, 03 Pcs, AM Bilal', 'Purchase', '2021-09-22 23:56:27', '2021-10-04 21:59:28', 'Issued'),
(861, 'MousePad-20029', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406416.jpg', '21/12/2020, 01 Pcs, Maj Mizanur Rahman, SA-2', 'Small Arms (SA)', '2021-09-23 00:01:07', '2021-10-04 22:00:16', 'Issued'),
(862, 'MousePad-20030', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638778.jpg', '28/12/2020, 01 pcs, SKDT Maksud', 'MRO', '2021-09-23 00:03:02', '2021-09-26 00:46:18', 'Issued'),
(863, 'MousePad-21031', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406454.jpg', '04/01/2021, 02 pcs, SM Maj Salaudden', 'Medical', '2021-09-23 00:05:43', '2021-10-04 22:00:54', 'Issued'),
(864, 'MousePad-21032', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638703.jpg', '30/11/20, Inclusion 20 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-23 00:07:48', '2021-09-26 00:45:03', 'Issued'),
(865, 'MousePad-21033', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406496.jpg', '18/01/2021, 01 pcs, ICT ERP Room', 'ICT-Office', '2021-09-23 00:11:45', '2021-10-04 22:01:36', 'Issued'),
(866, 'MousePad-21034', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638636.jpg', '23/01/2021, 01 Pcs, AE Humayn Kabir', 'CC-01', '2021-09-23 00:25:01', '2021-09-26 00:43:56', 'Issued'),
(867, 'MousePad-21035', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406539.jpg', '31/01/2021, 01 pcs, Manager Security', 'Security', '2021-09-23 00:27:24', '2021-10-04 22:02:19', 'Issued'),
(868, 'MousePad-21036', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406578.jpg', '04/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 00:35:27', '2021-10-04 22:02:58', 'Issued'),
(869, 'MousePad-21037', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406677.jpg', '14/02/2021, 01 Pcs, DD Admin & Mat Sir', 'DD Admin & Mat', '2021-09-23 00:37:29', '2021-10-04 22:04:37', 'Issued'),
(870, 'MousePad-21038', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638124.jpg', '28/02/2021, Inclusion 10 Pcs, Computer City', 'ICT-Office', '2021-09-23 00:40:41', '2021-09-26 00:35:24', 'Issued'),
(871, 'MousePad-21039', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406922.jpg', '28/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 00:42:19', '2021-10-04 22:08:42', 'Issued'),
(872, 'MousePad-21040', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638064.jpg', '01/03/2021, 01 Pcs, Main Gate, Zinna', 'Security', '2021-09-23 00:47:30', '2021-09-26 00:34:24', 'Issued'),
(873, 'MousePad-21041', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632638043.jpg', '01/03/2021, 01 Pcs, 3rd Floor Conference Room', 'Conference Room', '2021-09-23 00:59:37', '2021-09-26 00:34:03', 'Issued'),
(874, 'MousePad-21042', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633406972.jpg', '17/01/2021, Inclusion 02Pcs, Mohona telecom Mobile Servicing', 'ICT-Office', '2021-09-23 01:02:22', '2021-10-04 22:09:32', 'Issued'),
(875, 'MousePad-21043', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407085.jpg', '17/01/2021, 02 Pcs, DD SA Lt Col. Shahinur Alam', 'DD SA', '2021-09-23 01:05:16', '2021-10-04 22:11:25', 'Issued'),
(876, 'MousePad-21044', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407626.jpg', '28/03/2021, 01 Pcs, SAE Noorul Bari', 'ICT-Office', '2021-09-23 01:06:25', '2021-10-04 22:20:26', 'Issued'),
(877, 'MousePad-21045', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407699.jpg', '29/03/2021, 01 Pcs, Office Asst Atik,', 'CTM', '2021-09-23 01:07:07', '2021-10-04 22:21:39', 'Issued'),
(878, 'MousePad-21046', 'Mouse Pad', NULL, NULL, NULL, NULL, '1632637906.jpg', '09/06/2021, 01 Pcs, Master Tech Kuddos', 'CTG', '2021-09-23 01:08:20', '2021-09-26 00:31:46', 'Issued'),
(879, 'MousePad-21047', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407756.jpg', '19/06/2021, 01 Pcs, Officer Record,', 'Officer Record', '2021-09-23 01:09:23', '2021-10-04 22:22:36', 'Issued'),
(880, 'MousePad-21049', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407801.jpg', '25/07/2021, 01 Pcs, GSO-02', 'GSO-2', '2021-09-23 01:10:29', '2021-10-04 22:23:21', 'Issued'),
(881, 'MousePad-21050', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407845.jpg', '28/08/2021, Inclusion 200 Pcs, From Techno Test', 'ICT-Office', '2021-09-23 01:12:01', '2021-10-04 22:24:05', 'Issued'),
(882, 'MousePad-21051', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407881.jpg', '30/08/2021, 01 Pcs, GSO-02', 'GSO-2', '2021-09-23 01:13:37', '2021-10-04 22:24:41', 'Issued'),
(883, 'MousePad-21053', 'Mouse Pad', NULL, NULL, NULL, NULL, '1633407923.jpg', '18/09/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 01:14:48', '2021-10-04 22:25:23', 'Issued'),
(884, 'DVD/CDDisk-20001', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637618.jpg', '27/08/2020, 18 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-23 01:37:27', '2021-09-26 00:26:58', 'Issued'),
(885, 'DVD/CDDisk-20002', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637597.jpg', '08/09/2020, 02 Pcs, L/C Aziz', NULL, '2021-09-23 01:37:39', '2021-09-26 00:26:37', 'Issued'),
(886, 'DVD/CDDisk-20003', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637574.jpg', '21/09/2020,10 Pcs, Tech Mehedi Repair Purpose', 'ICT-Office', '2021-09-23 01:46:12', '2021-09-26 00:26:14', 'Issued'),
(887, 'DVD/CDDisk-20004', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637543.jpg', '26/09/2020, 01 Pcs, SAE Samsul Alam', 'PLG', '2021-09-23 01:49:24', '2021-09-26 00:25:43', 'Issued'),
(888, 'DVD/CDDisk-20005', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637521.jpg', '24/10/2020, 030Pcs, Comdt BOF', 'Comdt BOF', '2021-09-23 01:55:49', '2021-09-26 00:25:21', 'Issued'),
(889, 'DVD/CDDisk-20006', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637493.jpg', '18/11/2020,03 pcs, Sr Asst Habib', 'TPT', '2021-09-23 01:57:06', '2021-09-26 00:24:53', 'Issued'),
(890, 'DVD/CDDisk-20007', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637472.jpg', '31/12/2020,02 pcs, AE Masum Billa', 'MRO', '2021-09-23 01:58:10', '2021-09-26 00:24:32', 'Issued'),
(891, 'DVD/CDDisk-21008', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637451.jpg', '09/01/2021, 08 pcs, AE Masum  Billah', 'MRO', '2021-09-23 01:59:21', '2021-09-26 00:24:11', 'Issued'),
(892, 'DVD/CDDisk-20009', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637429.jpg', '27/01/2021, 02 Pcs, DD Aziz', 'DD Maintenance', '2021-09-23 02:00:37', '2021-09-26 00:23:49', 'Issued'),
(893, 'DVD/CDDisk-21010', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637390.jpg', '09/08/2021, 02 pcs, Tech Asraf', 'ICT-Office', '2021-09-23 02:01:55', '2021-09-26 00:23:10', 'Issued'),
(894, 'DVD/CDDisk-21011', 'DVD/CD Disk', NULL, NULL, NULL, NULL, '1632637363.jpg', '11/08/2021, 01 Pcs, Security Office Selim', 'Security', '2021-09-23 02:02:59', '2021-09-26 00:22:43', 'Issued'),
(895, 'UPS-20001', 'UPS', NULL, NULL, NULL, NULL, '1632623942.jpg', '14/07/2020, 01 pcs, PO Ripon', 'Purchase', '2021-09-24 19:20:45', '2021-09-25 20:39:02', 'Issued'),
(896, 'UPS-20002', 'UPS', NULL, NULL, NULL, NULL, '1632624036.jpg', '19/07/2020,01 Pcs, Col Shihab', 'DD Admin & Mat', '2021-09-24 19:22:29', '2021-09-25 20:40:36', 'Issued'),
(897, 'UPS-20003', 'UPS', NULL, NULL, NULL, NULL, '1632624080.jpg', '22/07/2020, 01 Pcs, OA Humayaun', 'Security', '2021-09-24 19:24:46', '2021-09-25 20:41:20', 'Issued'),
(898, 'UPS-20004', 'UPS', NULL, NULL, NULL, NULL, '1632624121.jpg', '23/07/2020, 01 Pcs, DD Admin', 'DD Admin', '2021-09-24 19:26:17', '2021-09-25 20:42:01', 'Issued'),
(899, 'UPS-20005', 'UPS', NULL, NULL, NULL, NULL, '1632624174.jpg', '23/07/2020, 01 Pcs,', NULL, '2021-09-24 19:27:37', '2021-11-21 19:16:03', 'Issued'),
(900, 'UPS-20006', 'UPS', NULL, NULL, NULL, NULL, '1632624237.jpg', '23/07/2020, 02 Pcs, OS Selim', 'Security', '2021-09-24 19:30:26', '2021-09-25 20:43:57', 'Issued'),
(901, 'UPS-20007', 'UPS', NULL, NULL, NULL, NULL, '1632624414.jpg', '12/08/2020, 01 Pcs, AM Mehedi (SV-Mant)', 'Service', '2021-09-24 19:33:39', '2021-09-25 20:46:54', 'Issued'),
(902, 'UPS-20008', 'UPS', NULL, NULL, NULL, NULL, '1632624505.jpg', '23/08/2020, 01 Pcs, Manager Bari Maintenance', 'Small Arms (SA)', '2021-09-24 19:36:17', '2021-09-25 20:48:25', 'Issued'),
(903, 'UPS-20009', 'UPS', NULL, NULL, NULL, NULL, '1632624626.jpg', '24/08/2020, 01 Pcs, Lt Col Aziz', 'DD Maintenance', '2021-09-24 19:38:05', '2021-09-25 20:50:26', 'Issued'),
(904, 'UPS-20010', 'UPS', NULL, NULL, NULL, NULL, '1632710226.jpg', '31/08/2020, 01 Pcs, Conference Room 3rd floor', 'Conference Room', '2021-09-24 19:39:38', '2021-09-26 20:37:06', 'Issued'),
(905, 'UPS-20011', 'UPS', NULL, NULL, NULL, NULL, '1632710278.jpg', '07/09/2020, Inclusion 01 Pcs, From Fawkal Training Center', 'ICT-Office', '2021-09-24 19:41:43', '2021-09-26 20:37:58', 'Issued'),
(906, 'UPS-20012', 'UPS', NULL, NULL, NULL, NULL, '1632710323.jpg', '08/09/2020,01 Pcs, DD (SA)', 'Small Arms (SA)', '2021-09-24 19:47:12', '2021-09-26 20:38:43', 'Issued'),
(907, 'UPS-20013', 'UPS', NULL, NULL, NULL, NULL, '1632710384.jpg', '09/09/2020, 02 Pcs, A/M Molla Arif', 'CTG', '2021-09-24 19:48:22', '2021-09-26 20:39:44', 'Issued'),
(908, 'UPS-20014', 'UPS', NULL, NULL, NULL, NULL, '1632710152.jpg', '12/09/2020, 01 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-24 19:49:29', '2021-09-26 20:35:52', 'Issued'),
(909, 'UPS-20015', 'UPS', NULL, NULL, NULL, NULL, '1632710100.jpg', '21/09/2020, Inclusion 34 Pcs, Not Workable', 'ICT-Office', '2021-09-24 19:55:43', '2021-09-26 20:35:00', 'Issued'),
(910, 'UPS-20016', 'UPS', NULL, NULL, NULL, NULL, '1632709995.jpg', '27/09/2020, Office Asst Joynal', 'MC', '2021-09-24 19:58:04', '2021-09-26 20:33:15', 'Issued'),
(911, 'UPS-20017', 'UPS', NULL, NULL, NULL, NULL, '1632709919.jpg', '01/10/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-24 20:00:55', '2021-09-26 20:31:59', 'Issued'),
(912, 'UPS-20018', 'UPS', NULL, NULL, NULL, NULL, '1632709853.jpg', '05/10/2020, 02 Pcs, Maj Jahid', NULL, '2021-09-24 20:04:54', '2021-09-26 20:30:53', 'Issued'),
(913, 'UPS-20019', 'UPS', NULL, NULL, NULL, NULL, '1632623857.jpg', '05/10/2020, 02 Pcs, AE Tofayel', 'CTG', '2021-09-24 20:10:11', '2021-09-25 20:37:37', 'Issued'),
(914, 'UPS-20020', 'UPS', NULL, NULL, NULL, NULL, '1632623190.jpg', '27/10/2020, 34 Pcs, Wastage Board', 'ICT-Office', '2021-09-24 20:13:37', '2021-09-25 20:26:30', 'Issued'),
(915, 'UPS-20021', 'UPS', NULL, NULL, NULL, NULL, '1632623099.jpg', '2710/2020, Inclusion 27 Pcs, Repair &Return From Wastage Board', 'ICT-Office', '2021-09-24 20:15:18', '2021-09-25 20:24:59', 'Issued'),
(916, 'UPS-20022', 'UPS', NULL, NULL, NULL, NULL, '1632623066.jpg', '01/11/2020, 02 Pcs, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-24 20:21:33', '2021-09-25 20:24:26', 'Issued'),
(917, 'UPS-20023', 'UPS', NULL, NULL, NULL, NULL, '1632623019.jpg', '01/11/2020, 01 Pcs, APO Mamun', 'APO Finance', '2021-09-24 20:22:58', '2021-09-25 20:23:39', 'Issued'),
(918, 'UPS-20025', 'UPS', NULL, NULL, NULL, NULL, '1632622973.jpg', '02/11/2020, 24 Pcs, Desktop Set purpose', NULL, '2021-09-24 20:24:55', '2021-09-25 20:22:53', 'Issued'),
(919, 'UPS-20026', 'UPS', NULL, NULL, NULL, NULL, '1632622930.jpg', '08/11/2020, 01 Pcs, DD Aziz', 'DD Maintenance', '2021-09-24 20:26:10', '2021-09-25 20:22:10', 'Issued'),
(920, 'UPS-20027', 'UPS', NULL, NULL, NULL, NULL, '1632622865.jpg', '18/11/2020,01 pcs, Office Asst Aziz', 'Purchase', '2021-09-24 20:28:25', '2021-09-25 20:21:05', 'Issued'),
(921, 'UPS-20028', 'UPS', NULL, NULL, NULL, NULL, '1632622811.jpg', '18/11/2020, 01 Pcs, Office Asst Utpol', 'Purchase', '2021-09-24 20:32:27', '2021-09-25 20:20:11', 'Issued'),
(922, 'UPS-20029', 'UPS', NULL, NULL, NULL, NULL, '1632622746.jpg', '25/11/2020, 01 pcs, Asst Razia', 'Purchase', '2021-09-24 20:40:09', '2021-09-25 20:19:06', 'Issued'),
(923, 'UPS-20030', 'UPS', NULL, NULL, NULL, NULL, '1632622546.jpg', '29/11/2020,08 Pcs, From Repair  Mamun Computer', 'ICT-Office', '2021-09-24 20:41:26', '2021-09-25 20:15:46', 'Issued'),
(924, 'UPS-20031', 'UPS', NULL, NULL, NULL, NULL, '1632622496.jpg', '03/12/2020, 01 Pcs, Office Asst Obayid', 'Purchase', '2021-09-24 20:43:13', '2021-09-25 20:14:56', 'Issued'),
(925, 'UPS-20032', 'UPS', NULL, NULL, NULL, NULL, '1632622440.jpg', '05/12/2020, 01 Pcs, Office Asst Nazrul (Store)', 'RM-1', '2021-09-24 20:48:02', '2021-09-25 20:14:00', 'Issued'),
(926, 'UPS-20033', 'UPS', NULL, NULL, NULL, NULL, '1632622407.jpg', '21/12/2020,01 Pcs, AM Iftakhrul Alam', 'Workman Record', '2021-09-24 20:53:24', '2021-09-25 20:13:27', 'Issued'),
(927, 'UPS-20034', 'UPS', NULL, NULL, NULL, NULL, '1632622355.jpg', '21/12/2020, 01 pcs, AE Oliour Rahman', 'ISI', '2021-09-24 21:04:14', '2021-09-25 20:12:35', 'Issued'),
(928, 'UPS-20035', 'UPS', NULL, NULL, NULL, NULL, '1632622325.jpg', '22/12/2020, 01 Pcs, AM Mollah Arif', 'CTG', '2021-09-24 21:05:39', '2021-09-25 20:12:05', 'Issued'),
(929, 'UPS-20036', 'UPS', NULL, NULL, NULL, NULL, '1632622296.jpg', '30/12/2020, 02 pcs, Chemist Abbas Ali', 'QCL', '2021-09-24 21:09:31', '2021-09-25 20:11:36', 'Issued'),
(930, 'UPS-21037', 'UPS', NULL, NULL, NULL, NULL, '1632622252.jpg', '03/01/2021, 01 Pcs,  AE Mostafegur Rahman', 'Small Arms (SA)', '2021-09-24 21:11:39', '2021-09-25 20:10:52', 'Issued'),
(931, 'UPS-21038', 'UPS', NULL, NULL, NULL, NULL, '1632622227.jpg', '07/01/2021,01 Pcs, Camera Purpose ICT Office', 'ICT-Office', '2021-09-24 21:13:05', '2021-09-25 20:10:27', 'Issued'),
(932, 'UPS-21039', 'UPS', NULL, NULL, NULL, NULL, '1632622176.jpg', '21/01/2021, 01 Pcs, AE Hasanur Raahman', 'QCL', '2021-09-24 21:14:11', '2021-09-25 20:09:36', 'Issued'),
(933, 'UPS-21040', 'UPS', NULL, NULL, NULL, NULL, '1632622146.jpg', '21/01/2021, 01 Pcs, Manager Bari', 'ME', '2021-09-24 21:25:08', '2021-09-25 20:09:06', 'Issued'),
(934, 'UPS-21041', 'UPS', NULL, NULL, NULL, NULL, '1632622120.jpg', '08/02/2021, 01 Pcs, Manager MAP', 'MAP', '2021-09-24 21:26:29', '2021-09-25 20:08:40', 'Issued'),
(935, 'MultiSocket-20001', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621890.jpg', '11/08/2020, BOF Conference Room', 'Admin', '2021-09-24 21:35:43', '2021-09-25 20:04:50', 'Issued'),
(936, 'MultiSocket-20002', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621844.jpg', '24/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-24 21:36:54', '2021-09-25 20:04:04', 'Issued'),
(937, 'MultiSocket-20003', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621793.jpg', '22/08/2020, 01 Pcs, ICT OFFICE', 'ICT-Office', '2021-09-24 21:37:46', '2021-11-20 21:37:17', 'Issued'),
(938, 'MultiSocket-20004', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621746.jpg', '10/09/2020, 01 Pcs, New ICT Cell', 'ICT-Office', '2021-09-24 21:38:32', '2021-09-25 20:02:26', 'Issued'),
(939, 'MultiSocket-20005', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621689.jpg', '12/09/2020, 01 Pcs, Dir Admin ( Home)', 'Dir Admin & Mat', '2021-09-24 21:40:08', '2021-09-25 20:01:29', 'Issued'),
(940, 'MultiSocket-20006', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621644.jpg', '15/09/2020,02 Pcs, Conference Room', 'Conference Room', '2021-09-24 21:41:32', '2021-09-25 20:00:44', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(941, 'MultiSocket-20007', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621596.jpg', '21/09/2020, Inclusion, 04 Pcs, Not Workable', 'Main store', '2021-09-24 21:43:55', '2021-09-25 19:59:56', 'Issued'),
(942, 'MultiSocket-20008', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621551.jpg', '23/09/2020, 01 pcs, 3rd Floor Confarance Room', 'Conference Room', '2021-09-24 21:46:02', '2021-09-25 19:59:11', 'Issued'),
(943, 'MultiSocket-20009', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621331.jpg', '27/09/2020, 02 Pcs, Dir Admin, Plg, Production', 'Dir Admin & Mat', '2021-09-24 21:54:56', '2021-09-25 19:55:31', 'Issued'),
(944, 'MultiSocket-20010', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621528.jpg', '30/11/20, Inclusion 10 Pcs, M/S Jeba Enterprise,', 'ICT-Office', '2021-09-24 21:56:12', '2021-09-25 19:58:48', 'Issued'),
(945, 'MultiSocket-20011', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621718.jpg', '02/12/2020, 01 Pcs, TTC Training Center', 'Planning', '2021-09-24 22:03:08', '2021-09-25 20:01:58', 'Issued'),
(946, 'MultiSocket-20012', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621437.jpg', '10/12/2020, 01 Pcs, Ullash  For VTC Purpose', 'Residential', '2021-09-24 22:05:42', '2021-09-25 19:57:17', 'Issued'),
(947, 'MultiSocket-21013', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621375.jpg', '13/01/2021, 01 Pcs, Condt Conference Room', 'Conference Room', '2021-09-24 22:07:02', '2021-09-25 19:56:15', 'Issued'),
(948, 'MultiSocket-21014', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621271.jpg', '01/02/2021, 01 Pcs, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-24 22:08:44', '2021-09-25 19:54:31', 'Issued'),
(949, 'MultiSocket-21015', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621241.jpg', '13/02/2021, 02 Pcs, Johorul Islam Gate, Lan Purpose', 'Security', '2021-09-24 22:16:03', '2021-09-25 19:54:01', 'Issued'),
(950, 'MultiSocket-21016', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621206.jpg', '01/04/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-24 22:21:42', '2021-09-25 19:53:26', 'Issued'),
(951, 'MultiSocket-21017', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621161.jpg', '03/05/2021, 01 Pcs, Ullas Use Purpose', 'Residential', '2021-09-24 22:23:17', '2021-09-25 19:52:41', 'Issued'),
(952, 'MultiSocket-21018', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621123.jpg', '14/06/2021, 01 Pcs, Central Monitoring Cell', 'Security', '2021-09-24 22:29:37', '2021-09-25 19:52:03', 'Issued'),
(953, 'MultiSocket-21019', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621063.jpg', '16/06/2021, Inclusion 04 Pcs, Ryans IT Ltd', 'ICT-Office', '2021-09-24 22:31:29', '2021-09-25 19:51:03', 'Issued'),
(954, 'MultiSocket-21020', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621090.jpg', '24/06/2021, 01 Pcs, Office Asst Nazrul', 'ICT-Office', '2021-09-24 22:34:36', '2021-09-25 19:51:30', 'Issued'),
(955, 'MultiSocket-21021', 'Multi Socket', NULL, NULL, NULL, NULL, '1632621009.jpg', '04/07/2021, 01 Pcs, Server Room', 'ICT-Office', '2021-09-24 22:35:16', '2021-09-25 19:50:09', 'Issued'),
(956, 'MultiSocket-21022', 'Multi Socket', NULL, NULL, NULL, NULL, '1632620971.jpg', '25/07/2021, 01 Pcs, use for NOC Room', 'Residential', '2021-09-24 22:36:22', '2021-09-25 19:49:31', 'Issued'),
(957, 'MultiSocket-21023', 'Multi Socket', NULL, NULL, NULL, NULL, '1632620938.jpg', '07/08/2021, 01 Pcs, New Server Room (cisco)', 'ICT-Office', '2021-09-24 22:37:17', '2021-09-25 19:48:58', 'Issued'),
(958, 'PowerSupply-20001', 'Power Supply', NULL, NULL, NULL, NULL, '1632620568.jpg', '13/07/2020, 01 Pcs, DD SA Rejaul Karim', 'Small Arms (SA)', '2021-09-24 23:32:27', '2021-09-25 19:42:48', 'Issued'),
(959, 'PowerSupply-20002', 'Power Supply', NULL, NULL, NULL, NULL, '1632621407.jpg', '20/07/2020, 01 Pcs, WO Najim', 'TPT', '2021-09-24 23:33:23', '2021-09-25 19:56:47', 'Issued'),
(960, 'PowerSupply-20003', 'Power Supply', NULL, NULL, NULL, NULL, '1632620594.jpg', '22/07/2020,01 Pcs, APO Mamun', 'Budget & Cash', '2021-09-24 23:42:45', '2021-09-25 19:43:14', 'Issued'),
(961, 'PowerSupply-20004', 'Power Supply', NULL, NULL, NULL, NULL, '1632620547.jpg', '05/08/2020, 01 Pcs, AM Store (AM Urmi)', 'Am main store', '2021-09-24 23:47:26', '2021-09-25 19:42:27', 'Issued'),
(962, 'PowerSupply-20005', 'Power Supply', NULL, NULL, NULL, NULL, '1632620468.jpg', '19/08/2020, 01 Pcs, AE Anisur Rahman (PSI)', 'Planning', '2021-09-24 23:50:38', '2021-09-25 19:41:08', 'Issued'),
(963, 'PowerSupply-20006', 'Power Supply', NULL, NULL, NULL, NULL, '1632620446.jpg', '12/09/2020, 01 Pcs, ICT Cell office', 'ICT-Office', '2021-09-24 23:54:20', '2021-09-25 19:40:46', 'Issued'),
(964, 'PowerSupply-20007', 'Power Supply', NULL, NULL, NULL, NULL, '1632620392.jpg', '17/10/2020, 01 pcs, Tech Mehedi Hasan', 'ICT-Office', '2021-09-24 23:55:14', '2021-09-25 19:39:52', 'Issued'),
(965, 'PowerSupply-20008', 'Power Supply', NULL, NULL, NULL, NULL, '1632620369.jpg', '24/11/2020, 01 Pcs, Ali Foraji (GK)', 'Main store', '2021-09-24 23:57:36', '2021-09-25 19:39:29', 'Issued'),
(966, 'PowerSupply-21009', 'Power Supply', NULL, NULL, NULL, NULL, '1632620347.jpg', '18/01/2021, 01 Pcs, AE Selim (MC)', 'PLG', '2021-09-25 00:07:56', '2021-09-25 19:39:07', 'Issued'),
(967, 'PowerSupply-21010', 'Power Supply', NULL, NULL, NULL, NULL, '1632620419.jpg', '02/02/2021, 01 pcs, Manager Jakaria', 'ME', '2021-09-25 00:15:41', '2021-09-25 19:40:19', 'Issued'),
(968, 'PowerSupply-21011', 'Power Supply', NULL, NULL, NULL, NULL, '1632620308.jpg', '08/02/2021, 01 Pcs, Manager MAP', 'MAP', '2021-09-25 00:17:20', '2021-09-25 19:38:28', 'Issued'),
(969, 'PowerSupply-21012', 'Power Supply', NULL, NULL, NULL, NULL, '1632620289.jpg', '28/03/2021, 01 Pcs, SAE Ali Farazi', 'MM', '2021-09-25 00:19:05', '2021-09-25 19:38:09', 'Issued'),
(970, 'PowerSupply-21013', 'Power Supply', NULL, NULL, NULL, NULL, '1632620267.jpg', '25/05/2021,01 Pcs, Manager Mizan', 'Main store', '2021-09-25 00:20:25', '2021-09-25 19:37:47', 'Issued'),
(971, 'PowerSupply-21014', 'Power Supply', NULL, NULL, NULL, NULL, '1632620247.jpg', '28/05/2021, 02 Pcs, Internet Work purpose', 'Small Arms Ammo (SAA)', '2021-09-25 00:26:30', '2021-09-25 19:37:27', 'Issued'),
(972, 'PowerSupply-21015', 'Power Supply', NULL, NULL, NULL, NULL, '1632620229.jpg', '30/05/2021, 01 Pcs, Budget & Cash', 'Budget & Cash', '2021-09-25 00:41:52', '2021-09-25 19:37:09', 'Issued'),
(973, 'PowerSupply-21016', 'Power Supply', NULL, NULL, NULL, NULL, '1632620184.jpg', '05/06/2021, SAE Monjurul Islam', 'Telephone Exchange', '2021-09-25 00:43:40', '2021-09-25 19:36:24', 'Issued'),
(974, 'PowerSupply-21017', 'Power Supply', NULL, NULL, NULL, NULL, '1632620161.jpg', '16/06/2021, 01 Pcs, DD HAG Office CPU', 'DD HAG Office', '2021-09-25 00:44:41', '2021-09-25 19:36:01', 'Issued'),
(975, 'PowerSupply-21018', 'Power Supply', NULL, NULL, NULL, NULL, '1632620141.jpg', '07/07/2021, 01 Pcs, CPU Repair Purpose', 'RM-1', '2021-09-25 01:07:19', '2021-09-25 19:35:41', 'Issued'),
(976, 'PowerSupply-21019', 'Power Supply', NULL, NULL, NULL, NULL, '1632620118.jpg', '17/07/2021, 01 pcs, CPU Repair Purpose', 'Small Arms Ammo (SAA)', '2021-09-25 01:09:21', '2021-09-25 19:35:18', 'Issued'),
(977, 'PowerSupply-21020', 'Power Supply', NULL, NULL, NULL, NULL, '1632620048.jpg', '06/07/2021, 01 Pcs, Progress Office', 'RM-1', '2021-09-25 01:12:55', '2021-09-25 19:34:08', 'Issued'),
(978, 'PowerSupply-21022', 'Power Supply', NULL, NULL, NULL, NULL, '1632619914.jpg', '18/07/2021, 02 pcs, Manager CTM 2 CPU Repair', 'CTM', '2021-09-25 01:16:18', '2021-09-25 19:31:54', 'Issued'),
(979, 'PowerSupply-21023', 'Power Supply', NULL, NULL, NULL, NULL, '1632619877.jpg', '15/08/2021, 01 PCS, Main Store Repair Purpose', 'Main store', '2021-09-25 01:33:55', '2021-09-25 19:31:17', 'Issued'),
(980, 'CCCamera(HighResolution)-20001', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632618610.jpg', '17/07/2020, 02 Pcs, Barier Gate CC TV', 'Security', '2021-09-25 01:40:05', '2021-09-25 19:10:10', 'Issued'),
(981, 'CCCamera(HighResolution)-20002', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632618592.jpg', '18/07/2020,02 Pcs, Barrier Gate CC TV Camera', 'Security', '2021-09-25 01:41:34', '2021-09-25 19:09:52', 'Issued'),
(982, 'CCCamera(HighResolution)-20003', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632618637.jpg', '23/07/2020, 01 Pcs, Barrier Gate CC TV Camera', 'Security', '2021-09-25 01:45:55', '2021-09-25 19:10:37', 'Issued'),
(984, 'CCCamera(HighResolution)-20004', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632618755.jpg', '24/07/2020, Inclusion 01 pcs, Eng Millon', 'Residential', '2021-09-25 19:12:35', '2021-09-25 19:12:35', 'Issued'),
(985, 'CCCamera(HighResolution)-20005', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632618910.jpg', '10/08/2020, Inclusion 04 pcs, Return From Day Care Center', 'Residential', '2021-09-25 19:15:10', '2021-09-25 19:15:10', 'Issued'),
(986, 'CCCamera(HighResolution)-20006', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619202.jpg', '27/08/2020, Inclusion 04 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-25 19:20:02', '2021-09-25 19:20:02', 'Issued'),
(987, 'CCCamera(HighResolution)-20007', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619267.jpg', '10/09/2020, 04 Pcs, New ICT Office', 'ICT-Office', '2021-09-25 19:21:07', '2021-09-25 19:21:07', 'Issued'),
(988, 'CCCamera(HighResolution)-20008', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619345.jpg', '21/09/2020, Inclusion 20 Pcs, Not Workable', 'Main store', '2021-09-25 19:22:25', '2021-09-25 19:22:25', 'Issued'),
(989, 'CCCamera(HighResolution)-20009', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619436.jpg', '27/10/2020, 20 Pcs, Wastage Board', 'Main store', '2021-09-25 19:23:56', '2021-09-25 19:23:56', 'Issued'),
(990, 'CCCamera(HighResolution)-20010', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619544.jpg', '15/11/2020, 05 Pcs, Not workable', 'Main store', '2021-09-25 19:25:44', '2021-09-25 19:25:44', 'Issued'),
(991, 'CCCamera(HighResolution)-21011', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, '1632619661.jpg', '18/03/2021, 02 Pcs, ICT Repair Purpose', 'ICT-Office', '2021-09-25 19:27:41', '2021-09-25 19:27:41', 'Issued'),
(992, 'Camera(IP)-20001', 'Camera (IP)', NULL, NULL, NULL, NULL, '1632625265.jpg', '02/07/2020, 01 Pcs, Ration Store', 'Ration', '2021-09-25 20:53:04', '2021-09-25 21:01:05', 'Issued'),
(993, 'Camera(IP)-20002', 'Camera (IP)', NULL, NULL, NULL, NULL, '1632625402.jpg', '17/07/2020, 01 Pcs, Bazar Gate', 'Residential', '2021-09-25 21:03:22', '2021-09-25 21:03:22', 'Issued'),
(994, 'Camera(IP)-20003', 'Camera (IP)', NULL, NULL, NULL, NULL, '1632625459.jpg', '18/07/2020, 01 pcs, Bazar Gate', 'Residential', '2021-09-25 21:04:19', '2021-09-25 21:04:19', 'Issued'),
(995, 'Camera(IP)-21004', 'Camera (IP)', NULL, NULL, NULL, NULL, '1632625594.jpg', '26/08/2021,  inclusion 01 Pcs, Excel Technologic Ltd', 'ICT-Office', '2021-09-25 21:06:34', '2021-09-25 21:06:34', 'Issued'),
(996, 'Camera(IP)-21005', 'Camera (IP)', NULL, NULL, NULL, NULL, '1632625670.jpg', '15/09/2021, 01 Pcs, ICT Office Use', 'ICT-Office', '2021-09-25 21:07:50', '2021-09-25 21:07:50', 'Issued'),
(997, 'BluetoothEarphone(china)20001', 'Bluetooth Earphone (china)', NULL, NULL, NULL, NULL, '1632626214.jpg', '01/07/2020, 01 pcs, DD Iqbal', 'DD Admin', '2021-09-25 21:16:54', '2021-09-25 21:48:55', 'Issued'),
(998, 'BluetoothEarphone(china)-21002', 'Bluetooth Earphone (china)', NULL, NULL, NULL, NULL, '1632626313.jpg', '13/01/2021, 01 Pcs, SAE Noorul Bari', 'ICT-Office', '2021-09-25 21:18:33', '2021-09-25 21:48:31', 'Issued'),
(999, 'BluetoothEarphone(china)-21003', 'Bluetooth Earphone (china)', NULL, NULL, NULL, NULL, '1632626366.jpg', '13/01/2021, 01 Pcs, SAE Shahidul Islam', 'ICT-Office', '2021-09-25 21:19:26', '2021-09-25 21:38:40', 'Issued'),
(1000, 'BluetoothEarphone(china)-21004', 'Bluetooth Earphone (china)', NULL, NULL, NULL, NULL, '1632626435.jpg', '13/01/2021, Office Asst Nazrul Islam', 'ICT-Office', '2021-09-25 21:20:35', '2021-09-25 21:49:11', 'Issued'),
(1001, 'Speaker(Wired)-20001', 'Speaker (Wired)', NULL, NULL, NULL, NULL, '1632628728.jpg', '02/07/2020, 01 Pcs, SAE Noorul Bari', 'ICT-Office', '2021-09-25 21:58:48', '2021-09-25 21:58:48', 'Issued'),
(1002, 'Speaker(Wired)-20002', 'Speaker (Wired)', NULL, NULL, NULL, NULL, '1632628851.jpg', '21/09/2020, 01 Pcs, SKD Shawon , Return Date 25/10/21 SKD Shawon', 'ICT-Office', '2021-09-25 22:00:51', '2021-10-29 19:48:24', 'Issued'),
(1003, 'Speaker(Wired)-20003', 'Speaker (Wired)', NULL, NULL, NULL, NULL, '1632628935.jpg', '10/11/2020, 01 Pcs, DD Aziz', 'DD Maintenance', '2021-09-25 22:02:15', '2021-09-25 22:02:15', 'Issued'),
(1004, 'Speaker(Wired)-21004', 'Speaker (Wired)', NULL, NULL, NULL, NULL, '1632629036.jpg', '27/03/2021, 01 Pcs, SAE Shahidul Islam', 'ICT-Office', '2021-09-25 22:03:56', '2021-09-25 22:03:56', 'Issued'),
(1029, 'HDMICable(long)-20001', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632637807.jpg', '26/07/2020, 01 Pcs, Maj Zahid (TWTTC)', 'Small Arms (SA)', '2021-09-26 00:30:07', '2021-09-29 00:33:12', 'Issued'),
(1030, 'HDMICable(long)-20002', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632638477.jpg', '27/07/2020, Inclusion 01 Pcs, After use at TTC', 'ICT-Office', '2021-09-26 00:41:17', '2021-09-29 00:32:11', 'Issued'),
(1031, 'HDMICable(long)-20003', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632638787.jpg', '10/09/2020, 01 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-26 00:46:27', '2021-09-29 00:31:43', 'Issued'),
(1032, 'HDMICable(long)-20004', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632638840.jpg', '12/09/2020, 01 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-26 00:47:20', '2021-09-29 00:31:12', 'Issued'),
(1033, 'HDMICable(long)-20005', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632638899.jpg', '16/09/2020, Inclusion 01 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-26 00:48:19', '2021-09-29 00:30:38', 'Issued'),
(1034, 'HDMICable(long)-20006', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632638964.jpg', '22/10/2020, Inclusion 01 Pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-26 00:49:24', '2021-09-29 00:30:10', 'Issued'),
(1035, 'HDMICable(long)-20007', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632639046.jpg', '27/10/2020, 01 Pcs, 3rd Conference Room', 'Conference Room', '2021-09-26 00:50:46', '2021-09-29 00:29:39', 'Issued'),
(1036, 'HDMICable(long)-21008', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632639172.jpg', '02/02/2021, 01 Pcs, Dir Admin', 'Dir Admin & Mat', '2021-09-26 00:52:52', '2021-09-29 00:29:03', 'Issued'),
(1037, 'HDMICable(long)-21009', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632639289.jpg', '15/02/2021, 01 Pcs, 3r Floor Conference Room', 'Conference Room', '2021-09-26 00:54:49', '2021-09-29 00:28:35', 'Issued'),
(1038, 'HDMICable(long)-21010', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632639373.jpg', '25/03/2021, Inclusion 01 Pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-26 00:56:13', '2021-09-29 00:27:44', 'Issued'),
(1039, 'HDMICable(long)-21011', 'Cable', 'HDMI Cable(long)', NULL, NULL, NULL, '1632639458.jpg', '26/03/2021, 01 pcs, ICT Office Projector Purpose', 'ICT-Office', '2021-09-26 00:57:38', '2021-09-29 00:27:02', 'Issued'),
(1040, 'Fan(Cabling,Colling-Fan)-20001', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632704694.jpg', '20/07/2020, 01 Pcs, OS Rini Begum', 'Welfare', '2021-09-26 19:04:54', '2021-09-26 19:04:54', 'Issued'),
(1041, 'Fan(Cabling,Colling-Fan)-20002', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632704786.jpg', '14/11/2020, 01 Pcs, AM Bellal sir', 'Purchase', '2021-09-26 19:06:26', '2021-09-26 19:06:26', 'Issued'),
(1042, 'Fan(Cabling,Colling-Fan)-20003', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632704933.jpg', '23/12/2020, 01 Pcs, Medical PC Repair Purpose', 'Medical', '2021-09-26 19:08:53', '2021-09-26 19:08:53', 'Issued'),
(1043, 'Fan(Cabling,Colling-Fan)-21004', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632705059.jpg', '28/03/2021,01 Pcs, SAE Ali Farazi', 'Purchase', '2021-09-26 19:10:59', '2021-09-26 19:10:59', 'Issued'),
(1044, 'Fan(Cabling,Colling-Fan)-21005', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632705129.jpg', '13/06/2021, 01 Pcs, AE Selim', 'MC', '2021-09-26 19:12:09', '2021-09-26 19:12:09', 'Issued'),
(1045, 'Fan(Cabling,Colling-Fan)-21006', 'Fan(Cabling,Colling-Fan)', NULL, NULL, NULL, NULL, '1632705229.jpg', '16/06/2021, 01 Pcs, DD HAG Office', 'DD HAG Office', '2021-09-26 19:13:49', '2021-09-26 19:13:49', 'Issued'),
(1046, 'Processor-20001', 'Processor', NULL, NULL, NULL, NULL, '1632706210.jpg', '17/07/2020, Inclusion 01 Pcs, Jeba Enterprise', 'ICT-Office', '2021-09-26 19:30:10', '2021-09-26 19:30:10', 'Issued'),
(1047, 'Processor-21002', 'Processor', NULL, NULL, NULL, NULL, '1632706320.jpg', '14/01/2021, Inclusion 05 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-26 19:32:00', '2021-09-26 19:32:00', 'Issued'),
(1048, 'Processor-210003', 'Processor', NULL, NULL, NULL, NULL, '1632706519.jpg', '18/01/2021,03 Pcs, ICT CPU  Repair Purpose', 'ICT-Office', '2021-09-26 19:35:19', '2021-09-26 19:35:19', 'Issued'),
(1049, 'Processor-21004', 'Processor', NULL, NULL, NULL, NULL, '1632706599.jpg', '23/01/2021, 01 Pcs, TPT CPU Repair Purpose', 'TPT', '2021-09-26 19:36:39', '2021-09-26 19:36:39', 'Issued'),
(1050, 'Processor-21005', 'Processor', NULL, NULL, NULL, NULL, '1632706672.jpg', '10/04/2021, 02 Pcs, Not Workable', 'Main store', '2021-09-26 19:37:52', '2021-09-26 19:37:52', 'Issued'),
(1052, 'LANCard-21001', NULL, NULL, NULL, 'LEN Card', NULL, '1632710037.jpg', '10/03/2021, 03 Pcs, Damage', 'ICT-Office', '2021-09-26 20:17:34', '2021-09-26 20:33:57', 'Issued'),
(1053, 'FacePlate-20001', NULL, NULL, NULL, 'Face Plate', NULL, '1632709394.jpg', '06/07/2020, Inclusion 20 Pcs, Computer City', 'ICT-Office', '2021-09-26 20:23:14', '2021-09-26 20:23:14', 'Issued'),
(1054, 'FacePlate-20002', NULL, NULL, NULL, 'Face Plate', NULL, '1632709548.jpg', '04/07/2020, 20 Pcs, SKTT Factory Internet Work Purpose', 'ICT-Office', '2021-09-26 20:25:48', '2021-09-26 20:25:48', 'Issued'),
(1055, 'FacePlate-20003', NULL, NULL, NULL, 'Face Plate', NULL, '1632710018.jpg', '03/09/2020, Inclusion 35 Pcs, Jeba Enterprise Ltd,', 'ICT-Office', '2021-09-26 20:26:53', '2021-09-26 20:33:38', 'Issued'),
(1056, 'FacePlate-20004', NULL, NULL, NULL, 'Face Plate', NULL, '1632709700.jpg', '12/09/2020, 36 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-26 20:28:20', '2021-09-26 20:28:20', 'Issued'),
(1057, 'FacePlate-20005', NULL, NULL, NULL, 'Face Plate', NULL, '1632709780.jpg', '16/09/2020, Inclusion 05 Pcs, Jeba Enterprise Ltd,', 'ICT-Office', '2021-09-26 20:29:40', '2021-09-26 20:29:40', 'Issued'),
(1058, 'Moduler-20001', NULL, NULL, NULL, 'Moduler', NULL, '1632710712.webp', '04/07/2020, 19 Pcs, Teachers Colony', 'Residential', '2021-09-26 20:45:12', '2021-09-26 20:45:12', 'Issued'),
(1059, 'Moduler-20002', NULL, NULL, NULL, 'Moduler', NULL, '1632710771.webp', '06/07/2020, Inclusion 25 Pcs, Computer City', 'ICT-Office', '2021-09-26 20:46:11', '2021-09-26 20:46:11', 'Issued'),
(1060, 'Moduler-20003', NULL, NULL, NULL, 'Moduler', NULL, '1632710833.webp', '17/07/2020, Inclusion 20 Pcs, Computer City', 'ICT-Office', '2021-09-26 20:47:13', '2021-09-26 20:47:13', 'Issued'),
(1061, 'Moduler-20004', NULL, NULL, NULL, 'Moduler', NULL, '1632710882.webp', '03/09/2020, Inclusion 12 Pcs, Jeba Enterprise Ltd,', 'ICT-Office', '2021-09-26 20:48:02', '2021-09-26 20:48:02', 'Issued'),
(1062, 'Moduler-20005', NULL, NULL, NULL, 'Moduler', NULL, '1632710943.webp', '06/09/2020, inclusion 23 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-26 20:49:03', '2021-09-26 20:49:03', 'Issued'),
(1063, 'Moduler-20006', NULL, NULL, NULL, 'Moduler', NULL, '1632710988.webp', '12/09/2020, 55 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-26 20:49:48', '2021-09-26 20:49:48', 'Issued'),
(1064, 'ScrewDrillMachine-20001', NULL, NULL, NULL, 'Screw Drill Machine', NULL, '1632711486.jpg', '10/08/2020, 01 Pcs, ICT Office Work Purpose', 'ICT-Office', '2021-09-26 20:58:06', '2021-09-26 20:58:06', 'Issued'),
(1065, 'ScrewDrillMachine-21002', NULL, NULL, NULL, 'Screw Drill Machine', NULL, '1632711840.jpg', '18/08/2021, Inclusion 02 Pcs, Techno Test', 'MRO', '2021-09-26 21:04:00', '2021-09-26 21:04:00', 'Issued'),
(1066, 'ScrewDrillMachine-21003', NULL, NULL, NULL, 'Screw Drill Machine', NULL, '1632711914.jpg', '20/08/2021, Inclusion 02 Pcs, ICT Office Use', 'ICT-Office', '2021-09-26 21:05:14', '2021-09-26 21:05:14', 'Issued'),
(1067, 'CableTester-20001', NULL, NULL, NULL, 'Cable Tester', NULL, '1632713716.jpg', '27/10/2020, 02 Pcs, Wastage Board', 'Main store', '2021-09-26 21:35:16', '2021-09-26 21:35:16', 'Issued'),
(1068, 'CableTester-21002', NULL, NULL, NULL, 'Cable Tester', NULL, '1632713801.jpg', '20/03/2021, 02 Pcs, ICT Office use', 'ICT-Office', '2021-09-26 21:36:41', '2021-09-26 21:36:41', 'Issued'),
(1069, 'Test-x', 'TEST_CATEGORY', 'TEST_SUBCATEGORY', 'TEST_TYPE', 'TEST_ITEM', 'TEST_BRAND', '1632728209.jpg', 'Test description', 'TEST DEPT_1', '2021-09-27 00:28:11', '2021-09-27 01:36:49', 'Issued'),
(1070, 'Switch-20001', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632792375.jpg', '03/07/2020, Inclusion 02 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 19:26:15', '2021-09-27 19:26:15', 'Issued'),
(1071, 'Switch-20002', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794111.jpg', '06/07/2020, Inclusion 02 Pcs, Computer City', 'ICT-Office', '2021-09-27 19:28:09', '2021-09-27 19:55:11', 'Issued'),
(1072, 'Switch-20003', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632792768.jpg', '13/07/2020, 01 Pcs, DD Maintenance Office', 'Admin', '2021-09-27 19:32:48', '2021-09-27 19:55:33', 'Issued'),
(1073, 'Switch-20004', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794154.jpg', '27/07/2020, 01 Pcs, ISI Office, AM Hannan', 'PLG', '2021-09-27 19:40:23', '2021-09-27 19:55:54', 'Issued'),
(1074, 'Switch-20005', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794174.jpg', '11/08/2020, 01 Pcs, BOF Conference Room Admin', 'Conference Room', '2021-09-27 19:42:08', '2021-09-27 19:56:14', 'Issued'),
(1075, 'Switch-20006', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794198.jpg', '18/08/2020, 01 pcs, Maj Zahid (RM-2)', 'Small Arms (SA)', '2021-09-27 19:43:20', '2021-09-27 19:56:38', 'Issued'),
(1076, 'Switch-20007', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794222.jpg', '21/08/2020, 01 Pcs, Maj Ahsan', 'GSO-2', '2021-09-27 19:46:39', '2021-09-27 19:57:02', 'Issued'),
(1077, 'Switch-20008', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794248.jpg', '23/08/2020, 01 pcs, AB Abbas', 'QCL', '2021-09-27 19:47:39', '2021-09-27 19:57:28', 'Issued'),
(1078, 'Switch-20009', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794268.jpg', '23/08/2020, 01 pcs, Maj Salahuddin', 'Medical', '2021-09-27 19:52:41', '2021-09-27 19:57:48', 'Issued'),
(1079, 'Switch-20010', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794293.jpg', '29/08/2020,01 Pcs, A/M Arif Molla', 'CTM', '2021-09-27 19:54:33', '2021-09-27 19:58:13', 'Issued'),
(1080, 'Switch-20011', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794410.jpg', '29/08/2020, 01 pcs, FC & IA & E', 'Finance', '2021-09-27 20:00:10', '2021-09-27 20:00:10', 'Issued'),
(1081, 'Switch-20012', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794506.jpg', '20/09/2020, 01 pcs, Workman Record', 'Workman Record', '2021-09-27 20:01:46', '2021-09-27 20:01:46', 'Issued'),
(1082, 'Switch-20013', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794571.jpg', '21/09/2020, 05 Pcs, SKD Shawan', 'ICT-Office', '2021-09-27 20:02:51', '2021-09-27 20:02:51', 'Issued'),
(1083, 'Switch-20014', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794684.jpg', '30/09/2020, 01 pcs, OPS Room', 'Admin', '2021-09-27 20:04:44', '2021-09-27 20:04:44', 'Issued'),
(1084, 'Switch-20015', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632794769.jpg', '08/10/2020, Inclusion 08 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-27 20:06:09', '2021-09-27 20:06:09', 'Issued'),
(1085, 'Switch-20016', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632795357.jpg', '10/10/2020,01 pcs, Chemist Abbas Ali', 'QCL', '2021-09-27 20:15:57', '2021-09-27 20:15:57', 'Issued'),
(1086, 'Switch-20017', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632796082.jpg', '25/10/2020, 01 Pcs, Comdt Conference Room', 'Comdt Conference Room', '2021-09-27 20:17:17', '2021-09-27 20:28:02', 'Issued'),
(1087, 'Switch-20018', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632795627.jpg', '16/11/2020, 01 Pcs, AM Urmi Mostofa Store', 'Main store', '2021-09-27 20:20:27', '2021-09-27 20:20:27', 'Issued'),
(1088, 'Switch-20019', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632795765.jpg', '17/11/2020, 03 Pcs, Tech Mizan', 'Main store', '2021-09-27 20:22:45', '2021-09-27 20:22:45', 'Issued'),
(1089, 'Switch-20020', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632795938.jpg', '18/11/2020, 01 Pcs, APO Abdul Latif', 'MEP', '2021-09-27 20:25:38', '2021-09-27 20:41:48', 'Issued'),
(1090, 'Switch-20021', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632796312.jpg', '29/11/2020, 01 Pcs, DD HAG office AD Purpose', 'DD HAG Office', '2021-09-27 20:27:44', '2021-09-27 20:31:52', 'Issued'),
(1091, 'Switch-21022', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632796486.jpg', '04/01/2020, Inclusion 01 Pcs, From Residentials Balance', 'ICT-Office', '2021-09-27 20:30:23', '2021-09-27 20:34:46', 'Issued'),
(1092, 'Switch-21023', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632796836.jpg', '04/01/2021, 01 Pcs, Sr Asst Habib', 'TPT', '2021-09-27 20:40:36', '2021-09-27 20:40:36', 'Issued'),
(1093, 'Switch-21024', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632797013.jpg', '30/05/2021, Inclusion 03 Pcs, SN Computer Word', 'ICT-Office', '2021-09-27 20:43:33', '2021-09-27 20:43:33', 'Issued'),
(1094, 'Switch-21025', NULL, NULL, NULL, 'Switch (8port)', NULL, '1632797115.jpg', '30/05/2021, 03 Pcs, Server Room Rack Use ICT', 'ICT-Office', '2021-09-27 20:45:15', '2021-09-27 20:45:15', 'Issued'),
(1097, 'Mouse(Wired)-20001', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632798612.jpg', '07/07/2020,01 Pcs, Col Shihab', 'DD Admin & Mat', '2021-09-27 21:10:12', '2021-09-27 21:10:12', 'Issued'),
(1098, 'Mouse(Wired)-20002', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632798699.jpg', '05/07/2020, inclusion 02 Pcs, From IT Place', 'ICT-Office', '2021-09-27 21:11:39', '2021-09-27 21:11:39', 'Issued'),
(1099, 'Mouse(Wired)-20003', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632798933.jpg', '16/07/2020, 01 Pcs, SAE ME Office', 'ME', '2021-09-27 21:15:33', '2021-09-27 21:21:41', 'Issued'),
(1100, 'Mouse(Wired)-20004', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799036.jpg', '05/08/2020,03 Pcs, SAE Abdul Razzak (MC)', 'PLG', '2021-09-27 21:17:16', '2021-09-27 21:17:16', 'Issued'),
(1101, 'Mouse(Wired)-20005', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799148.jpg', '06/08/2020, 01 Pcs, AM Mededi (SVC)', 'DD Maintenance', '2021-09-27 21:19:08', '2021-09-27 21:19:08', 'Issued'),
(1102, 'Mouse(Wired)-20006', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799267.jpg', '09/08/2020,01 pcs, Man Shahidullah (MAP)', 'Admin', '2021-09-27 21:21:07', '2021-09-27 21:21:07', 'Issued'),
(1103, 'Mouse(Wired)-20007', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799465.jpg', '12/08/2020, 05 Pcs, Workstation PC Accessories', 'ICT-Office', '2021-09-27 21:24:25', '2021-09-27 21:24:25', 'Issued'),
(1104, 'Mouse(Wired)-20008', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799580.jpg', '07/09/2020, 01 Pcs, Production Co-ordination cell', 'Production C-cordiant Cell', '2021-09-27 21:26:20', '2021-09-27 21:26:20', 'Issued'),
(1105, 'Mouse(Wired)-20009', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799686.jpg', '08/09/2020, 01 Pcs, DD SA Office', 'DD SA', '2021-09-27 21:28:06', '2021-09-27 21:28:06', 'Issued'),
(1106, 'Mouse(Wired)-20010', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799776.jpg', '16/09/2020, Inclusion 20 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 21:29:36', '2021-09-27 21:29:36', 'Issued'),
(1107, 'Mouse(Wired)-20011', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799886.jpg', '16/09/2020, 16 Pcs,  ICT Cell Office', 'ICT-Office', '2021-09-27 21:31:26', '2021-09-27 21:31:26', 'Issued'),
(1108, 'Mouse(Wired)-20012', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632799959.jpg', '19/09/2020, 01 Pcs, SAE Shahdul', 'ICT-Office', '2021-09-27 21:32:39', '2021-09-27 21:32:39', 'Issued'),
(1109, 'Mouse(Wired)-20013', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800077.jpg', '21/09/2020, 01 Pcs, officer Mess', 'Officers Mess', '2021-09-27 21:34:37', '2021-09-27 21:34:37', 'Issued'),
(1110, 'Mouse(Wired)-20014', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800161.jpg', '21/09/2020, Inclusion 04 Pcs, Not workable', 'Main store', '2021-09-27 21:36:01', '2021-09-27 21:36:01', 'Issued'),
(1111, 'Mouse(Wired)-20015', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800391.jpg', '24/09/2020, 01 Pcs, GSO-2 Security MODC', 'Security', '2021-09-27 21:39:51', '2021-09-27 21:39:51', 'Issued'),
(1112, 'Mouse(Wired)-20016', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800523.jpg', '26/09/2020, 01 Pcs, ME telephone Exchange, Toybus', 'ME', '2021-09-27 21:42:03', '2021-09-27 21:42:03', 'Issued'),
(1113, 'Mouse(Wired)-20017', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800667.jpg', '05/10/2020, 01 pcs, Chemist Abbas Ali', 'QCL', '2021-09-27 21:44:27', '2021-09-27 21:44:27', 'Issued'),
(1114, 'Mouse(Wired)-20018', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800812.jpg', '08/10/2020, Inclusion 10 pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 21:46:52', '2021-09-27 21:46:52', 'Issued'),
(1115, 'Mouse(Wired)-20019', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800880.jpg', '08/10/2020, 01 Pcs, Dir Production', 'DIR production Office', '2021-09-27 21:48:00', '2021-09-27 21:48:00', 'Issued'),
(1116, 'Mouse(Wired)-20020', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632800943.jpg', '12/10/2020,01 Pcs, Tech Mehedi Hasan', 'ICT-Office', '2021-09-27 21:49:03', '2021-09-27 21:49:03', 'Issued'),
(1117, 'Mouse(Wired)-20021', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632801116.jpg', '17/10/2020, 01 Pcs, OPS Room Use Purpose', 'Admin', '2021-09-27 21:51:56', '2021-09-27 21:51:56', 'Issued'),
(1118, 'Mouse(Wired)-20022', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632801180.jpg', '21/10/2020, 02 pcs, ISI Oliour Rahman', 'ISI', '2021-09-27 21:53:00', '2021-09-27 21:53:00', 'Issued'),
(1119, 'Mouse(Wired)-20023', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632801742.jpg', '21/10/2020, 01 Pcs, AM Iftekharul', 'Central Record', '2021-09-27 21:58:16', '2021-09-27 22:02:22', 'Issued'),
(1120, 'Mouse(Wired)-20024', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632801837.jpg', '22/10/2020, 01 Pcs, AM Iftekharul', 'Central Record', '2021-09-27 22:03:57', '2021-09-27 22:04:13', 'Issued'),
(1121, 'Mouse(Wired)-20025', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632801924.jpg', '24/10/2020, Inclusion 01 pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 22:05:24', '2021-09-27 22:05:24', 'Issued'),
(1122, 'Mouse(Wired)-20026', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802013.jpg', '24/10/2021, 01 Pcs, Dir Production', 'DIR production Office', '2021-09-27 22:06:53', '2021-09-27 22:06:53', 'Issued'),
(1123, 'Mouse(Wired)-20027', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802124.jpg', '27/10/2020, 04 pcs, Wastage Board', 'Main store', '2021-09-27 22:08:44', '2021-09-27 22:08:44', 'Issued'),
(1124, 'Mouse(Wired)-20028', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802202.jpg', '01/11/2020,01 Pcs, AM Mizanur Rahman', 'Finance', '2021-09-27 22:10:02', '2021-09-27 22:10:02', 'Issued'),
(1125, 'Mouse(Wired)-20029', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802302.jpg', '02/11/2020, 02 Pcs, Manager Shahinur', 'PLG', '2021-09-27 22:11:42', '2021-09-27 22:11:42', 'Issued'),
(1126, 'Mouse(Wired)-20030', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802407.jpg', '05/11/2020, Inclusion 10 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 22:13:27', '2021-09-27 22:13:27', 'Issued'),
(1127, 'Mouse(Wired)-20031', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802530.jpg', '07/11/2020, 01 Pcs, Manager Shihedullah (Office Record)', 'MAG', '2021-09-27 22:15:30', '2021-09-27 22:15:30', 'Issued'),
(1128, 'Mouse(Wired)-20032', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802612.jpg', '07/11/2020, 02 Pcs, Sr Asst Habib', 'TPT', '2021-09-27 22:16:52', '2021-09-27 22:16:52', 'Issued'),
(1129, 'Mouse(Wired)-20033', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632802702.jpg', '11/11/2020, Inclusion 10 Pcs, From Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 22:18:22', '2021-09-27 22:18:22', 'Issued'),
(1130, 'Mouse(Wired)-20034', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632803522.jpg', '12/11/2020, 01 Pcs, AM Mizan', 'Finance', '2021-09-27 22:32:02', '2021-09-27 22:32:02', 'Issued'),
(1131, 'Mouse(Wired)-20035', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632803611.jpg', '12/11/2020, 01 Pcs, AM Mehedi Hasan', 'Service', '2021-09-27 22:33:31', '2021-09-27 22:33:31', 'Issued'),
(1132, 'Mouse(Wired)-20036', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632803780.jpg', '19/11/2020, 02 Pcs, Office Asst Aziz', 'Purchase', '2021-09-27 22:36:20', '2021-09-27 22:36:20', 'Issued'),
(1133, 'Mouse(Wired)-20037', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632803892.jpg', '19/11/2020,01 Pcs, Office Asst Utpol', 'Purchase', '2021-09-27 22:38:12', '2021-09-27 22:38:12', 'Issued'),
(1134, 'Mouse(Wired)-20038', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804045.jpg', '21/11/2020, 1 Pcs, Comdt Conference Room', 'Conference Room', '2021-09-27 22:40:45', '2021-09-27 22:40:45', 'Issued'),
(1135, 'Mouse(Wired)-20039', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804207.jpg', '24/11/2020, 04 pcs, Sr Asst Nazma', 'Medical', '2021-09-27 22:43:27', '2021-09-27 22:43:27', 'Issued'),
(1136, 'Mouse(Wired)-20040', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804282.jpg', '26/11/2020, 03 Pcs, Office Super Selim', 'Security', '2021-09-27 22:44:42', '2021-09-27 22:44:42', 'Issued'),
(1137, 'Mouse(Wired)-20041', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804387.jpg', '29/11/2020, 01 Pcs, OS Mohadev Workman', 'Workman Record', '2021-09-27 22:46:27', '2021-09-27 22:46:27', 'Issued'),
(1138, 'Mouse(Wired)-20042', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804503.jpg', '30/1102020,01 Pcs, AM Belel', 'Purchase', '2021-09-27 22:48:23', '2021-09-27 22:48:23', 'Issued'),
(1139, 'Mouse(Wired)-20043', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804566.jpg', '30/11/2020, 20 Pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-27 22:49:26', '2021-09-27 22:49:26', 'Issued'),
(1140, 'Mouse(Wired)-20044', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804792.jpg', '02/12/2020, 01 Pcs, DY Comdt Office', 'Deputy Comdt Office', '2021-09-27 22:53:12', '2021-09-27 22:53:12', 'Issued'),
(1141, 'Mouse(Wired)-20045', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632804894.jpg', '03/12/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-27 22:54:54', '2021-09-27 22:54:54', 'Issued'),
(1142, 'Mouse(Wired)-20046', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632805002.jpg', '05/12/2020, 01 Pcs, Office Asst Nazrul Islam', 'RM-1', '2021-09-27 22:56:42', '2021-09-27 22:56:42', 'Issued'),
(1143, 'Mouse(Wired)-20047', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632805123.jpg', '21/12/2020, 01 Pcs, Maj Mizanur Rahman, SA-2', 'Small Arms (SA)', '2021-09-27 22:58:43', '2021-09-27 22:58:43', 'Issued'),
(1144, 'Mouse(Wired)-20048', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632805209.jpg', '28/12/2020, 01 Pcs, SKDT Maksud', 'MRO', '2021-09-27 23:00:09', '2021-09-27 23:00:09', 'Issued'),
(1145, 'Mouse(Wired)-21049', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632805359.jpg', '09/01/2021, 01 Pcs, SKDT Asraf Ali', 'Small Arms Ammo (SAA)', '2021-09-27 23:02:39', '2021-09-27 23:02:39', 'Issued'),
(1146, 'Mouse(Wired)-21050', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632805484.jpg', '14/01/2021, 01 Pcs, SAE Sajaudulla', 'Production C-cordiant Cell', '2021-09-27 23:04:44', '2021-09-27 23:04:44', 'Issued'),
(1147, 'Mouse(Wired)-21051', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632806559.jpg', '18/01/2021, 01 Pcs, ICT Office Program Room', 'ICT-Office', '2021-09-27 23:22:39', '2021-09-27 23:22:39', 'Issued'),
(1148, 'Mouse(Wired)-21052', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632806654.jpg', '23/01/2021, 02 Pcs, AE Humayn Kabir', 'CC-01', '2021-09-27 23:24:14', '2021-09-27 23:24:14', 'Issued'),
(1149, 'Mouse(Wired)-21053', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632806729.jpg', '23/01/2021, 01 Pcs, AM Bellal', 'Purchase', '2021-09-27 23:25:29', '2021-09-27 23:25:29', 'Issued'),
(1150, 'Mouse(Wired)-21054', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632806797.jpg', '01/02/2021,01 Pcs, PO Ripon', 'Purchase', '2021-09-27 23:26:37', '2021-09-27 23:26:37', 'Issued'),
(1151, 'Mouse(Wired)-21055', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632806876.jpg', '11/02/2021, 1 Pcs, ICT Office Use', 'ICT-Office', '2021-09-27 23:27:56', '2021-09-27 23:27:56', 'Issued'),
(1152, 'Mouse(Wired)-21056', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632807000.jpg', '14/02/2021, 01 Pcs, DD Admin & Mat', 'DD Admin & Mat', '2021-09-27 23:30:00', '2021-09-27 23:30:00', 'Issued'),
(1153, 'Mouse(Wired)-21057', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632807068.jpg', '23/02/2021,01 Pcs, Opps Room', 'Admin', '2021-09-27 23:31:08', '2021-09-27 23:31:08', 'Issued'),
(1154, 'Mouse(Wired)-21058', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632807233.jpg', '15/03/2021, 01 Pcs, OIC ICT Cell', 'ICT-Office', '2021-09-27 23:33:53', '2021-11-20 20:24:29', 'Issued'),
(1155, 'Mouse(Wired)-21059', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632807318.jpg', '27/03/2021, 01 Pcs, Manager Planning', 'Planning', '2021-09-27 23:35:18', '2021-09-27 23:35:18', 'Issued'),
(1156, 'Mouse(Wired)-21060', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632807420.jpg', '10/04/2021, 01 Pcs, Manager Purchase', 'Purchase', '2021-09-27 23:37:00', '2021-09-27 23:37:00', 'Issued'),
(1157, 'Mouse(Wired)-21061', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632808726.jpg', '27/05/2021, 01 Pcs, Officer Record', 'Officer Record', '2021-09-27 23:58:20', '2021-09-27 23:58:46', 'Issued'),
(1158, 'Mouse(Wired)-21062', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632808957.jpg', '28/05/2021, 01 Pcs, Office Asst Momin', 'Small Arms (SA)', '2021-09-28 00:02:37', '2021-09-28 00:02:37', 'Issued'),
(1159, 'Mouse(Wired)-21063', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809076.jpg', '05/06/2010, 01 Pcs, Program Service', 'DD Maintenance', '2021-09-28 00:04:36', '2021-09-28 00:04:36', 'Issued'),
(1160, 'Mouse(Wired)-21064', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809155.jpg', '06/06/2021, 01 Pcs, AE Anisur Rahman', 'P & P', '2021-09-28 00:05:55', '2021-09-28 00:05:55', 'Issued'),
(1161, 'Mouse(Wired)-21065', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809242.jpg', '06/06/2021, 01 Pcs, Manager Purchase', 'Purchase', '2021-09-28 00:07:22', '2021-09-28 00:07:22', 'Issued'),
(1162, 'Mouse(Wired)-21066', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809332.jpg', '19/06/2021, 01 Pcs, Master Tech Kuddase', 'CTG', '2021-09-28 00:08:52', '2021-09-28 00:08:52', 'Issued'),
(1163, 'Mouse(Wired)-21067', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809409.jpg', '21/06/2021, 01 Pcs, Tech Jahed', 'ME', '2021-09-28 00:10:09', '2021-09-28 00:10:09', 'Issued'),
(1164, 'Mouse(Wired)-21068', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809651.jpg', '19/09/2021, 01 pcs, APO Mamun', 'APO Finance', '2021-09-28 00:14:11', '2021-09-28 00:14:11', 'Issued'),
(1165, 'Mouse(Wired)-20069', 'Mouse', 'Mouse(Wired)', NULL, NULL, NULL, '1632809747.jpg', '01/07/2020, 01 Pcs, AE Mosthfuzer Rahman', 'RM-1', '2021-09-28 00:15:47', '2021-09-28 00:15:47', 'Issued'),
(1166, 'Antivirus-20001', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632811548.jfif', '06/07/2020, 03 Pcs, Dir PLG', 'Dir PLG & maint Office', '2021-09-28 00:45:48', '2021-09-28 00:45:48', 'Issued'),
(1167, 'Antivirus-20002', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632811658.jfif', '06/07/2020, 02 Pcs, Col Shihab', 'DD Admin & Mat', '2021-09-28 00:47:38', '2021-09-28 00:47:38', 'Issued'),
(1168, 'Antivirus-20003', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632811775.jfif', '20/07/2020, 01 Pcs, Comdt Conference Room', 'Comdt Conference Room', '2021-09-28 00:49:35', '2021-09-28 00:49:35', 'Issued'),
(1169, 'Antivirus-20004', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632811952.jfif', '24/08/2020, Inclusion 10 Pcs, Comdt Conference Room', 'Comdt Conference Room', '2021-09-28 00:52:32', '2021-09-28 00:52:32', 'Issued'),
(1170, 'Antivirus-20005', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812039.jfif', '29/085/2020, 01 Pcs, Dir production', 'DIR production Office', '2021-09-28 00:53:59', '2021-09-28 00:53:59', 'Issued'),
(1171, 'Antivirus-20006', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812122.jfif', '02/09/2020,01 Pcs, Dir Admin Office', 'Dir Admin & Mat', '2021-09-28 00:55:22', '2021-09-28 00:55:22', 'Issued'),
(1172, 'Antivirus-20007', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812221.jfif', '27/09/2020, 01 Pcs, DY Comdt Office', 'Deputy Comdt Office', '2021-09-28 00:57:01', '2021-09-28 00:57:01', 'Issued'),
(1173, 'Antivirus-20008', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812333.jfif', '29/09/2020, Inclusion 20 Pcs, From Arra Tech Ltd', 'ICT-Office', '2021-09-28 00:58:53', '2021-09-28 00:58:53', 'Issued'),
(1174, 'Antivirus-20009', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812404.jfif', '07/10/2020, 01 Pcs, ICT Cell PC Office', 'ICT-Office', '2021-09-28 01:00:04', '2021-09-28 01:00:04', 'Issued'),
(1175, 'Antivirus-20010', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812588.jfif', '20/10/2020, 01 Pcs, Comdt New Laptop Use Purpose', 'Comdt BOF', '2021-09-28 01:02:46', '2021-09-28 01:03:08', 'Issued'),
(1176, 'Antivirus-20011', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632812765.jfif', '22/10/2020, 01 Pcs, Dir Production Laptop Use Purpose', 'DIR production Office', '2021-09-28 01:06:05', '2021-09-28 01:06:05', 'Issued'),
(1177, 'Projector-20004', 'Projector', NULL, NULL, NULL, 'Hitachi', '1632815452.jpg', 'Tranning Center, CP-X2530WN, RM-3', 'Small Arms (SA)', '2021-09-28 01:50:52', '2021-09-28 02:04:51', 'Issued'),
(1178, 'Projector-20005', 'Projector', NULL, NULL, NULL, 'Maxcell', '1632815602.jpg', '3rd Floor Conference Room, 01 Pcs, (MC-EX303E)', 'Conference Room', '2021-09-28 01:53:22', '2021-09-28 02:05:09', 'Issued'),
(1179, 'Projector-20006', 'Projector', NULL, NULL, NULL, 'Epson', '1632815729.jpg', 'TTC Room, 01 Pcs, EB-S31', 'TTC', '2021-09-28 01:54:33', '2021-09-28 21:43:10', 'Issued'),
(1180, 'Projector-20007', 'Projector', NULL, NULL, NULL, 'Epson', '1632815832.jpg', 'ICT Office , 01 Pcs, EB-S05, Not Workable', 'ICT-Office', '2021-09-28 01:57:12', '2021-09-30 01:32:37', 'Issued'),
(1182, 'Projector-20008', 'Projector', NULL, NULL, NULL, 'Epson', '1632816313.jpg', '3rd Floor Conference Room, 01 Pcs, EB-S05', 'Conference Room', '2021-09-28 02:05:13', '2021-09-28 02:05:13', 'Issued'),
(1183, 'Antivirus-20012', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632879586.jpg', '24/10/2020, 01 Pcs, Comdt Bhabon', 'Comdt BOF', '2021-09-28 19:39:46', '2021-09-28 19:39:46', 'Issued'),
(1184, 'Antivirus-20013', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880082.jpg', '09/11/2020, 01 Pcs, Manager Purchase', 'Purchase', '2021-09-28 19:48:02', '2021-09-28 19:48:02', 'Issued'),
(1185, 'Antivirus-20014', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880181.jpg', '10/11/2020, 01 pcs, SAE Rakib', 'CTM', '2021-09-28 19:49:41', '2021-09-28 19:49:41', 'Issued'),
(1186, 'Antivirus-20015', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880325.jpg', '10/11/2020, 01 Pcs, DD Admin & Mat (Laptop)', 'DD Admin & Mat', '2021-09-28 19:52:05', '2021-09-28 19:52:05', 'Issued'),
(1187, 'Antivirus-20016', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880442.jpg', '10/11/2020, 01 Pcs, ICT Office PC', 'ICT-Office', '2021-09-28 19:54:02', '2021-09-28 19:54:02', 'Issued'),
(1188, 'Antivirus-20017', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880678.jpg', '11/11/2020, 02 Pcs, Manager MM Jakaria', 'MM', '2021-09-28 19:57:58', '2021-09-28 19:57:58', 'Issued'),
(1189, 'Antivirus-20018', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632880979.jpg', '13/11/2020, 01 Pcs, New Laptop GE-Army', 'GE Army', '2021-09-28 20:02:59', '2021-09-28 20:02:59', 'Issued'),
(1190, 'Antivirus-20019', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881039.jpg', '14/11/2020, 01 Pcs, AM Molla Arif', 'CTM', '2021-09-28 20:03:59', '2021-09-28 20:03:59', 'Issued'),
(1191, 'Antivirus-20020', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881111.jpg', '16/11/2020, 01 Pcs, AM Molla Arif', 'CTM', '2021-09-28 20:05:11', '2021-09-28 20:05:11', 'Issued'),
(1192, 'Antivirus-20021', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881230.jpg', '18/11/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-28 20:07:10', '2021-09-28 20:07:10', 'Issued'),
(1193, 'Antivirus-20022', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881429.jpg', '24/11/2020, 01 Pcs, OIC ICT Cell', NULL, '2021-09-28 20:08:27', '2021-11-20 21:34:16', 'Expire'),
(1194, 'Antivirus-20023', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881397.jpg', '29/11/2020, 01 Pcs, ICT', 'ICT-Office', '2021-09-28 20:09:57', '2021-09-28 20:09:57', 'Issued'),
(1195, 'Antivirus-20024', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881506.jpg', '02/12/2020, 01 Pcs, Office Asst Nazrul', 'ICT-Office', '2021-09-28 20:11:46', '2021-09-28 20:11:46', 'Issued'),
(1196, 'Antivirus-20025', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881581.jpg', '05/12/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-28 20:13:01', '2021-09-28 20:13:01', 'Issued'),
(1197, 'Antivirus-20026', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632901691.jpg', '13/12/2020, 01 pcs, DY Comdt', 'Deputy Comdt Office', '2021-09-28 20:14:31', '2021-09-29 01:48:11', 'Issued'),
(1198, 'Antivirus-20027', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881874.jpg', '13/12/2020, 01 Pcs, Office Asst Atik', 'CTM', '2021-09-28 20:17:54', '2021-09-28 20:17:54', 'Issued'),
(1199, 'Antivirus-20028', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632881976.jpg', '14/12/2020, 01 Pcs, CNC Shop (Old)', 'CTM', '2021-09-28 20:19:36', '2021-09-28 20:19:36', 'Issued'),
(1200, 'Antivirus-21029', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632882095.jpg', '11/01/2021, 01 Pcs Office Super Zia Purchase', 'Purchase', '2021-09-28 20:21:35', '2021-09-28 20:21:35', 'Issued'),
(1201, 'Antivirus-21030', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632882197.jpg', '13/01/2021, 01 Pcs, Manager Jakaria', 'ME', '2021-09-28 20:23:17', '2021-09-28 20:23:17', 'Issued'),
(1202, 'Antivirus-21031', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632882299.jpg', '02/02/2021, 01 Pcs, ICT Office Use Purpose', 'ICT-Office', '2021-09-28 20:24:59', '2021-09-28 20:24:59', 'Issued'),
(1203, 'Antivirus-21032', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632882860.jpg', '03/02/2021, 01 Pcs, Dir Admin & Mat Laptop', 'Dir Admin & Mat', '2021-09-28 20:34:20', '2021-09-28 20:34:20', 'Issued'),
(1204, 'Antivirus-21033', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632882925.jpg', '15/02/2021, 01 Pcs, Dir Production', 'DIR production Office', '2021-09-28 20:35:25', '2021-09-28 20:35:25', 'Issued'),
(1205, 'Antivirus-21034', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632883037.jpg', '15/02/2021, 01 Pcs, Dir Admin', 'Dir Admin & Mat', '2021-09-28 20:37:17', '2021-09-28 20:37:17', 'Issued'),
(1206, 'Antivirus-21035', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632883529.jpg', '16/02/2021, 01 Pcs, DD Purchase', 'Purchase', '2021-09-28 20:45:29', '2021-09-28 20:45:29', 'Issued'),
(1207, 'Antivirus-21036', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632883633.jpg', '18/03/2021, 01 Pcs, DY Comdt', 'Deputy Comdt Office', '2021-09-28 20:47:13', '2021-09-28 20:47:13', 'Issued'),
(1208, 'Antivirus-21037', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632884199.jpg', '10/04/2021, 02 Pcs, DD Maintenance', 'DD Maintenance', '2021-09-28 20:56:39', '2021-09-28 20:56:39', 'Issued'),
(1209, 'Antivirus-21038', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632884708.jpg', '05/05/2021, 01 pcs, 02 Pcs, Purchase office', 'Purchase', '2021-09-28 21:05:08', '2021-09-28 21:05:08', 'Issued'),
(1210, 'Antivirus-21039', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632884760.jpg', '09/05/2021, 02 Pcs, Workman Record', 'Workman Record', '2021-09-28 21:06:00', '2021-09-28 21:06:00', 'Issued'),
(1211, 'Antivirus-21040', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632884869.jpg', '10/06/2021, 03 Pcs, DD Shahin', 'Small Arms (SA)', '2021-09-28 21:07:49', '2021-09-28 21:07:49', 'Issued'),
(1212, 'Antivirus-21041', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632884994.jpg', '12/06/2021, 01 pcs, DD Tazimul Islam', 'Small Arms Ammo (SAA)', '2021-09-28 21:09:54', '2021-09-28 21:09:54', 'Issued'),
(1213, 'Antivirus-21042', 'Antivirus', NULL, NULL, NULL, 'Kaspersky', '1632885117.jpg', '08/07/2021, 02 Pcs, Col Mizan DD Admin & Mat', 'DD Admin & Mat', '2021-09-28 21:11:57', '2021-09-28 21:11:57', 'Issued'),
(1214, 'Antivirus-20043', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632886795.png', '25/07/2020, 01 Pcs, AM Mosharraf', 'Admin', '2021-09-28 21:39:55', '2021-09-28 21:39:55', 'Issued'),
(1215, 'Antivirus-20044', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632886924.png', '08/09/2020, 01 Pcs, Lt Col Aziz', 'DD Maintenance', '2021-09-28 21:42:04', '2021-09-28 21:42:04', 'Issued'),
(1216, 'Antivirus-20045', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632887763.png', '10/09/2020, 01 Pcs, Manager Jakaria', 'DD Maintenance', '2021-09-28 21:56:03', '2021-09-28 21:56:03', 'Issued'),
(1217, 'Antivirus-20046', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632887840.png', '19/09/2020, 01 Pcs, Manager Shahina', 'R & D', '2021-09-28 21:57:20', '2021-09-28 21:57:20', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(1218, 'Antivirus-20047', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632887913.png', '21/09/2020, 03 Pcs, JT Jahid', 'ICT-Office', '2021-09-28 21:58:33', '2021-09-28 21:58:33', 'Issued'),
(1219, 'Antivirus-21048', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632887989.png', '02/03/2021, 01 Pcs, Security Ofiice', 'Security', '2021-09-28 21:59:49', '2021-09-28 21:59:49', 'Issued'),
(1220, 'Antivirus-21049', 'Antivirus', NULL, NULL, NULL, 'AVIRA', '1632888061.png', '31/05/2021, 03 Pcs, DD SA Office', 'Small Arms (SA)', '2021-09-28 22:01:01', '2021-09-28 22:01:01', 'Issued'),
(1221, 'Phone-20001', 'Phone', 'Cordless Phone', NULL, NULL, NULL, '1632889944.jpg', '20/07/2020, Inclusion 05 Pcs, Fair Network Clon', 'ICT-Office', '2021-09-28 22:32:24', '2021-09-28 22:32:24', 'Issued'),
(1222, 'Phone-20002', 'Phone', 'Cordless Phone', NULL, NULL, NULL, '1632890059.jpg', '21/07/2020, 04 Pcs, Tajemul', 'Exchange', '2021-09-28 22:34:19', '2021-09-28 22:34:19', 'Issued'),
(1223, 'Phone-21003', 'Phone', 'Cordless Phone', NULL, NULL, NULL, '1632890184.jpg', '26/08/2021, Inclusion 01 Pcs, M.Rahman Electronic', 'ICT-Office', '2021-09-28 22:36:24', '2021-09-28 22:36:24', 'Issued'),
(1224, 'Phone-21004', 'Phone', 'Cordless Phone', NULL, NULL, NULL, '1632890253.jpg', '28/08/2021, 01 Pcs, OIC ICT Office, Maj Rakib', 'OIC ICT cell', '2021-09-28 22:37:33', '2021-09-28 22:37:33', 'Issued'),
(1225, 'OTDR-20001', 'OTDR', NULL, NULL, NULL, NULL, '1632891862.webp', '27/08/2020, Inclusion 02 Pcs, From Fair Network Solution', 'ICT-Office', '2021-09-28 23:04:22', '2021-09-28 23:04:22', 'Issued'),
(1226, 'OTDR-20002', 'OTDR', NULL, NULL, NULL, NULL, '1632892022.webp', '30/11/2020, 02 Pcs, ICT Office Work Purpose', 'ICT-Office', '2021-09-28 23:07:02', '2021-09-28 23:07:02', 'Issued'),
(1227, 'MediaConverter-20001', NULL, NULL, NULL, 'Media Converter', NULL, '1632893351.jpg', '10/11/2020, Inclusion 07 Pair, From ICT Store Room', 'ICT-Office', '2021-09-28 23:29:11', '2021-09-28 23:29:11', 'Issued'),
(1228, 'MediaConverter-20002', NULL, NULL, NULL, 'Media Converter', NULL, '1632893610.jpg', '14/11/2020, 01 Pair, Cantonment Public School & College', 'Residential', '2021-09-28 23:33:30', '2021-09-28 23:55:49', 'Issued'),
(1229, 'MediaConverter-20003', NULL, NULL, NULL, 'Media Converter', NULL, '1632893957.jpg', '26/11/2020, 01 Pair, Sr. Asst Habib', 'TPT', '2021-09-28 23:39:17', '2021-09-28 23:39:17', 'Issued'),
(1230, 'MediaConverter-21004', NULL, NULL, NULL, 'Media Converter', NULL, '1632894300.jpg', '04/04/2021, 02 Pair, SKDT Shawan For Computer use Purpose', 'ICT-Office', '2021-09-28 23:45:00', '2021-09-28 23:45:00', 'Issued'),
(1231, 'MediaConverter-21008', NULL, NULL, NULL, 'Media Converter', NULL, '1632894803.jpg', '04/04/2021, 01 Pair, Success Computer', NULL, '2021-09-28 23:53:23', '2021-10-09 01:08:29', 'Issued'),
(1232, 'MediaConverter-21005', NULL, NULL, NULL, 'Media Converter', NULL, '1632894927.jpg', '19/05/2021, 02 Pair, Residential Area Milon', 'Residential', '2021-09-28 23:55:27', '2021-09-28 23:55:27', 'Issued'),
(1233, 'MediaConverter-21006', NULL, NULL, NULL, 'Media Converter', NULL, '1632895121.jpg', '30/05/2021, Inclusion 05 Pair, SN Computer Word', 'ICT-Office', '2021-09-28 23:58:41', '2021-09-28 23:58:41', 'Issued'),
(1234, 'MediaConverter-21007', NULL, NULL, NULL, 'Media Converter', NULL, '1632895316.jpg', '30/05/2021, 05 Pair, Internet Purpose Use Admin Building', 'Admin', '2021-09-29 00:01:56', '2021-09-29 00:01:56', 'Issued'),
(1235, 'Cable-20001', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632897457.jpg', '03/07/2020, 02 Box, Jeba Enterprise', 'ICT-Office', '2021-09-29 00:37:37', '2021-09-29 00:37:37', 'Issued'),
(1236, 'Cable-20002', 'Cable', 'UTP Cable', NULL, NULL, NULL, NULL, '04/07/2020, 02 Box, Teachers Colony', 'Residential', '2021-09-29 00:40:30', '2021-09-29 00:40:30', 'Issued'),
(1237, 'Cable-20003', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632897822.jpg', '16/07/2020, 30m, E-11/10,', 'Residential', '2021-09-29 00:43:42', '2021-09-29 00:43:42', 'Issued'),
(1238, 'Cable-20004', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632897906.jpg', '20/07/2020, 20m, Dir Plg Home', 'Residential', '2021-09-29 00:45:06', '2021-09-29 00:45:06', 'Issued'),
(1239, 'Cable-20005', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898062.jpg', '25/07/2020, Inclusion 01 Box, SN Computer', 'ICT-Office', '2021-09-29 00:47:42', '2021-09-29 00:47:42', 'Issued'),
(1240, 'Cable-20006', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898191.jpg', '25/07/2020, 01 Box, Internet SVC SP (Polash)', NULL, '2021-09-29 00:49:51', '2021-09-29 00:49:51', 'Issued'),
(1241, 'Cable-20007', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898303.jpg', '17/08/2020, Inclusion 02 Box, Computer City', 'ICT-Office', '2021-09-29 00:51:43', '2021-09-29 00:51:43', 'Issued'),
(1242, 'Cable-20008', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898431.jpg', '21/08/2020, 22m, Maj Ahsan', NULL, '2021-09-29 00:53:51', '2021-09-29 00:53:51', 'Issued'),
(1243, 'Cable-20009', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898511.jpg', '23/08/2020, 25m, AC Abbus Ali', 'QCL', '2021-09-29 00:55:11', '2021-09-29 00:55:11', 'Issued'),
(1244, 'Cable-20010', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898628.jpg', '23/08/2020, 45m, Maj Sahlauddin', 'Medical', '2021-09-29 00:57:08', '2021-09-29 00:57:08', 'Issued'),
(1245, 'Cable-20011', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898714.jpg', '29/08/2020, 25m, A/M Arif Molla', 'CTM', '2021-09-29 00:58:34', '2021-09-29 00:58:34', 'Issued'),
(1246, 'Cable-20012', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898805.jpg', '31/08/2020, 80m, Lt Col Aziz', 'DD Maintenance', '2021-09-29 01:00:05', '2021-09-29 01:00:05', 'Issued'),
(1247, 'Cable-20013', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898917.jpg', '03/09/2020, Inclusion 02 Box, From Jeba Enterprise Ltd.', 'ICT-Office', '2021-09-29 01:01:57', '2021-09-29 01:01:57', 'Issued'),
(1248, 'Cable-20014', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632898981.jpg', '07/09/2020, 50m, Dir Production', 'DIR production Office', '2021-09-29 01:03:01', '2021-09-29 01:03:01', 'Issued'),
(1249, 'Cable-20015', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899066.jpg', '13/09/2020, Inclusion 02 Box, From Jeba Enterprise Ltd', 'ICT-Office', '2021-09-29 01:04:26', '2021-09-29 01:04:26', 'Issued'),
(1250, 'Cable-20016', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899122.jpg', '13/09/2020, 02 Box, ICT Cell Office', 'ICT-Office', '2021-09-29 01:05:22', '2021-09-29 01:05:22', 'Issued'),
(1251, 'Cable-20017', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899196.jpg', '15/09/2020, Inclusion 02 Box, From Jeba Enterprise Ltd', 'ICT-Office', '2021-09-29 01:06:36', '2021-09-29 01:06:36', 'Issued'),
(1252, 'Cable-20018', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899303.jpg', '15/09/2020, 02 Box, ICT Cell Office', 'ICT-Office', '2021-09-29 01:08:23', '2021-09-29 01:08:23', 'Issued'),
(1253, 'Cable-20019', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899431.jpg', '01/10/2020, 10m, Bangabandhu Corner', 'Comdt BOF', '2021-09-29 01:10:31', '2021-09-29 01:10:31', 'Issued'),
(1254, 'Cable-20020', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899523.jpg', '05/10/2020, Inclusion 01 Box, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-29 01:12:03', '2021-09-29 01:12:03', 'Issued'),
(1255, 'Cable-20021', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899619.jpg', '15/10/2020, 01 Pcs, Officer Mass VVIP Room', 'Residential', '2021-09-29 01:13:39', '2021-09-29 01:15:06', 'Issued'),
(1256, 'Cable-20022', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632899820.jpg', '06/10/2020, 2m, Engr. Hasan', 'DD Maintenance', '2021-09-29 01:17:00', '2021-09-29 01:17:00', 'Issued'),
(1257, 'Cable-20023', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900139.jpg', '10/10/2020, 70m, Chemist Abbas Ali', 'QCL', '2021-09-29 01:22:19', '2021-09-29 01:22:19', 'Issued'),
(1258, 'Cable-20024', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900209.jpg', '11/10/2020, 50m, Chemist Abbas Ali', 'QCL', '2021-09-29 01:23:29', '2021-09-29 01:23:29', 'Issued'),
(1259, 'Cable-20025', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900295.jpg', '17/10/2020, Inclusion 01 Box, Computer City', 'ICT-Office', '2021-09-29 01:24:55', '2021-09-29 01:24:55', 'Issued'),
(1260, 'Cable-20026', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900359.jpg', '17/10/2020, 01 Box, Comdt Bhabon', 'Comdt BOF', '2021-09-29 01:25:59', '2021-09-29 01:25:59', 'Issued'),
(1261, 'Cable-20027', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900498.jpg', '24/10/2020, 30m, Bangabandho Corner', NULL, '2021-09-29 01:28:18', '2021-09-29 01:28:18', 'Issued'),
(1262, 'Cable-20028', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900668.jpg', '01/11/2020, Inclusion 02 Box, From M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-29 01:31:08', '2021-09-29 01:31:08', 'Issued'),
(1263, 'Cable-20029', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900877.jpg', '09/11/2020, 45m, Maj Jahid', NULL, '2021-09-29 01:34:37', '2021-09-29 01:34:37', 'Issued'),
(1264, 'Cable-20030', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632900946.jpg', '14/11/2020/, 80m, AE Tofayel', 'CTG', '2021-09-29 01:35:46', '2021-09-29 01:35:46', 'Issued'),
(1265, 'Cable-20031', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632901037.jpg', '18/11/2020, 25m, Camera Repair Purpose', NULL, '2021-09-29 01:37:17', '2021-09-29 01:37:17', 'Issued'),
(1266, 'Cable-20032', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632901261.jpg', '18/11/2020, 20m, APO Abdul Lotif', NULL, '2021-09-29 01:41:01', '2021-09-29 01:41:01', 'Issued'),
(1267, 'Cable-20033', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632901350.jpg', '23/11/2020, 90m, AE Razzak Ali RM-2', 'Small Arms (SA)', '2021-09-29 01:42:30', '2021-09-29 01:42:30', 'Issued'),
(1268, 'Cable-20034', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632901409.jpg', '02/12/2020, 30m, 3rd Floor Conference Room', 'Conference Room', '2021-09-29 01:43:29', '2021-09-29 01:43:29', 'Issued'),
(1269, 'Cable-20035', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632963940.jpg', '06/12/2020, 90m, OPS Room Purpose', 'Admin', '2021-09-29 19:05:40', '2021-09-29 19:05:40', 'Issued'),
(1270, 'Cable-21036', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964243.jpg', '07/01/2021, 61m, Golf Club Office Use', 'Golf Club', '2021-09-29 19:10:43', '2021-09-29 19:10:43', 'Issued'),
(1271, 'Cable-21037', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964410.jpg', '09/01/2021, 60m, SAE Sofik', NULL, '2021-09-29 19:13:30', '2021-09-29 19:13:30', 'Issued'),
(1272, 'Cable-21038', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964534.jpg', '17/01/2021, 45m, Office Asst Atik', 'CTM', '2021-09-29 19:15:34', '2021-09-29 19:15:34', 'Issued'),
(1273, 'Cable-21039', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964634.jpg', '18/01/2021, 15m, Arif Molla', 'CTM', '2021-09-29 19:17:14', '2021-09-29 19:17:14', 'Issued'),
(1274, 'Cable-21040', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964738.jpg', '19/01/2021, 20m, OS Nasrin Begum', 'Staff Record', '2021-09-29 19:18:58', '2021-09-29 19:18:58', 'Issued'),
(1275, 'Cable-21041', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964847.jpg', '25/01/2021, 30m, OS Nasrin Begum', 'Staff Record', '2021-09-29 19:20:47', '2021-09-29 19:20:47', 'Issued'),
(1276, 'Cable-21042', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632964986.jpg', '02/02/2021, 05 Box, From Jeba Enterprise', 'ICT-Office', '2021-09-29 19:23:06', '2021-09-29 19:23:06', 'Issued'),
(1277, 'Cable-21043', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632965106.jpg', '23/03/2021, 50m, ICT Office Use Purpose', 'ICT-Office', '2021-09-29 19:25:06', '2021-09-29 19:25:06', 'Issued'),
(1278, 'Cable-21044', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632965206.jpg', '01/04/2021, 50m, Camera Purpose Main Gate', 'Security', '2021-09-29 19:26:46', '2021-09-29 19:26:46', 'Issued'),
(1279, 'Cable-21045', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632965597.jpg', '24/04/2021, 02 Box, CC Camera Purpose (Server, Museum & Bangabandhu Corner)', 'Admin', '2021-09-29 19:33:17', '2021-09-29 19:33:17', 'Issued'),
(1280, 'Cable-21046', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632965866.jpg', '26/05/2021, 24m, Server Room', NULL, '2021-09-29 19:37:46', '2021-09-29 19:37:46', 'Issued'),
(1281, 'Cable-21047', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632965979.jpg', '07/06/2021, 80m, SAE Hasan Mostofa', 'CM', '2021-09-29 19:39:39', '2021-09-29 19:39:39', 'Issued'),
(1282, 'Cable-21048', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632966087.jpg', '24/06/2021, 80m, Main Gate Security Office', 'Security', '2021-09-29 19:41:27', '2021-09-29 19:41:27', 'Issued'),
(1283, 'Cable-21049', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632966309.jpg', '29/06/2021, Inclusion 5m, Techno Test (From MRO Tender)', NULL, '2021-09-29 19:45:09', '2021-09-29 19:45:09', 'Issued'),
(1284, 'Cable-21050', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632966394.jpg', '29/06/2021, 30m, Server Room ICT to Security', NULL, '2021-09-29 19:46:34', '2021-09-29 19:46:34', 'Issued'),
(1285, 'Cable-21051', 'Cable', 'UTP Cable', NULL, NULL, NULL, '1632966456.jpg', '09/08/2021, 200m, Maj Rakib, OIC ICT Cell', 'OIC ICT cell', '2021-09-29 19:47:36', '2021-09-29 19:47:36', 'Issued'),
(1286, 'Cable-20052', 'Cable', 'Optical Fiber Cable', NULL, NULL, NULL, '1632966891.jpg', '03/07/2020, Inclusion 400m, From Jeba Enterprise', 'ICT-Office', '2021-09-29 19:54:51', '2021-09-29 20:00:01', 'Issued'),
(1287, 'Cable-20053', 'Cable', 'Optical Fiber Cable', NULL, NULL, NULL, '1632967154.jpg', '04/07/2020, 400m, Teachers Colony Internet Purpose', 'Residential', '2021-09-29 19:59:14', '2021-09-29 19:59:14', 'Issued'),
(1288, 'Cable-20054', 'Cable', 'Optical Fiber Cable', NULL, NULL, NULL, '1632967603.jpg', '04/10/2020, Inclusion 180m, Rasel Electric Store', 'ICT-Office', '2021-09-29 20:06:43', '2021-09-29 20:06:43', 'Issued'),
(1289, 'Cable-20055', 'Cable', 'Optical Fiber Cable', NULL, NULL, NULL, '1632967743.jpg', '04/10/2020, 180m, Factories Optical Fiber Backbone Purpose', NULL, '2021-09-29 20:09:03', '2021-09-29 20:09:03', 'Issued'),
(1290, 'Cable-20056', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632968298.jpg', '12/07/2020, Inclusion 01 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-29 20:18:18', '2021-09-29 20:18:18', 'Issued'),
(1291, 'Cable-20057', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632968397.jpg', '13/07/2020, 01 pcs, Dir Plg Office', 'Dir PLG & maint Office', '2021-09-29 20:19:57', '2021-09-29 20:19:57', 'Issued'),
(1292, 'Cable-20058', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632968489.jpg', '27/07/2020, Inclusion 01 Pcs,', NULL, '2021-09-29 20:21:29', '2021-09-29 20:21:29', 'Issued'),
(1293, 'Cable-20059', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632968765.jpg', '24/08/2020, Inclusion 05 Pcs, From Jeba Enterprises', 'ICT-Office', '2021-09-29 20:26:05', '2021-09-29 20:26:05', 'Issued'),
(1294, 'Cable-20060', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632968845.jpg', '23/08/2020, 01 Pcs, PA, DY Comdt', 'Deputy Comdt Office', '2021-09-29 20:27:25', '2021-09-29 20:27:25', 'Issued'),
(1295, 'Projector-20009', 'Projector', NULL, NULL, NULL, 'Epson', '1632969481.jpg', 'Epson (EB-S31), ICT Office, 01 Pcs,', 'ICT-Office', '2021-09-29 20:38:01', '2021-09-30 01:33:56', 'Issued'),
(1296, 'Projector-20010', 'Projector', NULL, NULL, NULL, 'Hitachi', '1632969605.jpg', 'Hitachi (CP-X2530WN), 01 Pcs, Not Workable', 'ICT-Office', '2021-09-29 20:40:05', '2021-09-29 20:40:05', 'Issued'),
(1297, 'Projector-20011', 'Projector', NULL, NULL, NULL, 'Hitachi', '1632969694.jpg', 'Hitachi (CP-EX250), 01 Pcs, Not Workable', 'ICT-Office', '2021-09-29 20:41:34', '2021-09-29 20:41:34', 'Issued'),
(1299, 'Projector-20012', 'Projector', NULL, NULL, NULL, 'Hitachi', '1632970176.jpg', 'Hitachi (CP-X2530WN), 01 Pcs, Not Workable', 'ICT-Office', '2021-09-29 20:49:36', '2021-09-29 20:49:36', 'Issued'),
(1300, 'Cable-20061', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971101.jpg', '18/09/2020, inclusion 01 pcs, From Jeba Enterprise Ltd.', 'ICT-Office', '2021-09-29 21:05:01', '2021-09-29 21:05:01', 'Issued'),
(1301, 'Cable-20062', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971172.jpg', '19/09/2020, 01 pcs, OIC ICT Cell', NULL, '2021-09-29 21:06:12', '2021-11-20 21:32:44', 'Issued'),
(1302, 'Cable-20063', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971264.jpg', '30/09/2020, Inclusion 02 Pcs, Litme', 'ICT-Office', '2021-09-29 21:07:44', '2021-09-29 21:07:44', 'Issued'),
(1303, 'Cable-20064', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971337.jpg', '30/09/2020, 02 Pcs, 3rd Floor Conference Room', 'Conference Room', '2021-09-29 21:08:57', '2021-09-29 21:08:57', 'Issued'),
(1304, 'Cable-20065', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971413.jpg', '06/10/2020, 01 Pcs, 3rd Floor Conference Room', 'Conference Room', '2021-09-29 21:10:13', '2021-09-29 21:10:13', 'Issued'),
(1305, 'Cable-21066', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971907.jpg', '10/03/2021,02 Pcs, Dir PLG Office', 'Dir PLG & maint Office', '2021-09-29 21:18:27', '2021-09-29 21:18:27', 'Issued'),
(1306, 'Cable-21067', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632971980.jpg', '07/04/2021, 02 Pcs, Staff Record', 'Staff Record', '2021-09-29 21:19:40', '2021-09-29 21:19:40', 'Issued'),
(1307, 'Cable-21068', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632972067.jpg', '25/05/2021, Inclusion 02 Pcs, Air Link Computer', 'ICT-Office', '2021-09-29 21:21:07', '2021-09-29 21:21:07', 'Issued'),
(1308, 'Cable-21069', 'Cable', 'USB Extension Cable', NULL, NULL, NULL, '1632972139.jpg', '25/05/2021, 02 Pcs, OIC ICT Cell', 'ICT-Office', '2021-09-29 21:22:19', '2021-11-20 20:26:44', 'Issued'),
(1309, 'Cable-20070', 'Cable', 'VGA Cable', NULL, NULL, NULL, '1632973213.jpg', '10/09/2020, 01 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-29 21:40:13', '2021-09-29 21:40:13', 'Issued'),
(1310, 'Cable-20071', 'Cable', 'VGA Cable', NULL, NULL, NULL, '1632973277.jpg', '16/09/2020, 16 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-29 21:41:17', '2021-09-29 21:41:17', 'Issued'),
(1311, 'Cable-20072', 'Cable', 'VGA Cable', NULL, NULL, NULL, '1632973350.jpg', '18/11/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-29 21:42:30', '2021-09-29 21:42:30', 'Issued'),
(1312, 'Cable-20073', 'Cable', 'VGA Cable', NULL, NULL, NULL, '1632973771.jpg', '23/12/2020, 01 Pcs, AE Bozlur Rahman', 'ME', '2021-09-29 21:49:31', '2021-09-29 21:49:31', 'Issued'),
(1313, 'Cable-21074', 'Cable', 'VGA Cable', NULL, NULL, NULL, '1632974514.jpg', '14/03/2021, 02 Pcs, Mershas Tashin Enterprise Ltd', 'ICT-Office', '2021-09-29 22:01:54', '2021-09-29 22:01:54', 'Issued'),
(1314, 'Cable-20075', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632975420.jpg', '02/09/2020, 01 Pcs, Dir Admin', 'Dir Admin & Mat', '2021-09-29 22:17:00', '2021-09-29 22:17:00', 'Issued'),
(1315, 'Cable-20076', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632975787.jpg', '16/09/2020, 16 Pcs, ICT Cell', 'ICT-Office', '2021-09-29 22:23:07', '2021-09-29 22:23:07', 'Issued'),
(1316, 'Cable-20077', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632975914.jpg', '10/10/2020, 15 Pcs, Computer Set Purpose', 'ICT-Office', '2021-09-29 22:25:14', '2021-09-29 22:25:14', 'Issued'),
(1317, 'Cable-20078', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976040.jpg', '15/11/2020, 12 Pcs, ICT Office Work Purpose', 'ICT-Office', '2021-09-29 22:27:20', '2021-09-29 22:27:20', 'Issued'),
(1318, 'Cable-20079', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976337.jpg', '25/11/2020, 01 Pcs, Sr Asst Nazma', 'Medical', '2021-09-29 22:32:17', '2021-09-29 22:32:17', 'Issued'),
(1319, 'Cable-20080', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976580.jpg', '26/11/20, 01pc, Razia(Local Purchase)', 'Purchase', '2021-09-29 22:36:20', '2021-09-29 22:36:20', 'Issued'),
(1320, 'Cable-20081', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976675.jpg', '26/11/2020, 01 pc, SR Asist Habib, TPT', 'TPT', '2021-09-29 22:37:55', '2021-09-29 22:37:55', 'Issued'),
(1321, 'Cable-20082', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976737.jpg', '26/11/2020, 01pc, AM Belal', NULL, '2021-09-29 22:38:57', '2021-09-29 22:38:57', 'Issued'),
(1322, 'Cable-20083', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976803.jpg', '28/11/2020, 02pc, Am Billal Sir, Purchase', 'Purchase', '2021-09-29 22:40:03', '2021-09-29 22:40:03', 'Issued'),
(1323, 'Cable-20084', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976913.jpg', '2/12/2020, 01pc, APO Abdul Lotif', NULL, '2021-09-29 22:41:53', '2021-09-29 22:41:53', 'Issued'),
(1324, 'Cable-21085', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632976967.jpg', '20/01/2021, 01pc, Major Mizan Sir', 'Small Arms (SA)', '2021-09-29 22:42:47', '2021-09-29 22:46:25', 'Issued'),
(1325, 'Cable-21086', 'Cable', 'Power Cable', NULL, NULL, NULL, '1632977013.jpg', '23/01/2021, 01pc, Sr Asst Habib', 'TPT', '2021-09-29 22:43:33', '2021-09-29 22:46:07', 'Issued'),
(1326, 'RJ-45Connector-20001', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398305.jpg', '05/07/2020, 20 pcs, Teachers colony', 'Recident', '2021-09-29 22:53:35', '2021-10-04 19:45:05', 'Issued'),
(1327, 'RJ-45Connector-20002', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398340.jpg', '12/07/2020, Inclusion: 100 pcs, From computer city,', 'ICT-Office', '2021-09-29 22:54:32', '2021-10-04 19:45:40', 'Issued'),
(1328, 'RJ-45Connector-20003', NULL, NULL, NULL, NULL, NULL, '1633398386.jpg', '12/07/2020, 05pcs, Teachers colony', 'Recident', '2021-09-29 22:55:23', '2021-10-04 19:46:26', 'Issued'),
(1329, 'RJ-45Connector-20004', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398418.jpg', '17/07/2020, Inclusion: 50pcs, From Computer city', 'ICT-Office', '2021-09-29 22:56:06', '2021-10-04 19:46:58', 'Issued'),
(1330, 'RJ-45Connector-20005', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398453.jpg', '17/07/2020, 20 pcs, ST Shawon Internet.', NULL, '2021-09-29 22:56:59', '2021-10-04 19:47:33', 'Issued'),
(1331, 'RJ-45Connector-20006', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398494.jpg', '20/07/2020, 04pcs, Dir Plg', 'Dir PLG & maint Office', '2021-09-29 22:58:24', '2021-10-04 19:48:14', 'Issued'),
(1332, 'RJ-45Connector-20007', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398536.jpg', '25/07/2020, 10pcs, AE Mustafizur', 'Small Arms (SA)', '2021-09-29 23:00:42', '2021-10-04 19:48:56', 'Issued'),
(1333, 'RJ-45Connector-20081', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398572.jpg', '25/07/2020, 20 pcs, Polas SN Computer', 'Recident', '2021-09-29 23:17:53', '2021-10-09 01:05:51', 'Issued'),
(1334, 'RJ-45Connector-20008', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398611.jpg', '27/07/2020, 06 pcs, AE Mustafizur', 'Small Arms (SA)', '2021-09-29 23:18:53', '2021-10-04 19:50:11', 'Issued'),
(1335, 'RJ-45Connector-20009', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398641.jpg', '27/07/2020, 02 pcs, Niaz Mahmud', 'IA & E', '2021-09-29 23:20:01', '2021-10-04 19:50:41', 'Issued'),
(1336, 'RJ-45Connector-20010', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398673.jpg', '27/10/2020, 04 pcs, AM Hannan Sorif', 'ISI', '2021-09-29 23:20:48', '2021-10-04 19:51:13', 'Issued'),
(1337, 'RJ-45Connector-20011', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398704.jpg', '08/08/2020, 02 pcs, Major Jahid ( RM)', 'Small Arms (SA)', '2021-09-29 23:21:33', '2021-10-04 19:51:44', 'Issued'),
(1338, 'RJ-45Connector-20012', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398735.jpg', '17/08/2020, 04pcs, Major Jahid (RM-2)', 'Small Arms (SA)', '2021-09-29 23:23:31', '2021-10-04 19:52:15', 'Issued'),
(1339, 'RJ-45Connector-20013', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398796.jpg', '17/08/2020, 03pcs, AE Romjan Ali', 'Small Arms (SA)', '2021-09-29 23:24:13', '2021-10-04 19:53:16', 'Issued'),
(1340, 'RJ-45Connector-20014', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398830.jpg', '21/08/2020, 04 pcs, Major Ahsan Sir', NULL, '2021-09-29 23:25:35', '2021-10-04 19:53:50', 'Issued'),
(1341, 'RJ-45Connector-20015', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398863.jpg', '23/08/2020, 04 pcs, AE Abbas', 'QCL', '2021-09-29 23:27:03', '2021-10-04 19:54:23', 'Issued'),
(1342, 'RJ-45Connector-20016', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398895.jpg', '23/08/2020, 06pcs,  Major Salauddin', 'Medical', '2021-09-29 23:27:53', '2021-10-04 19:54:55', 'Issued'),
(1343, 'RJ-45Connector-20017', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981999.jpg', '26/08/2020, Inclusion: 300 pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-29 23:29:23', '2021-09-30 00:06:39', 'Issued'),
(1344, 'RJ-45Connector-20018', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398948.jpg', '27/08/2020, Inclusion: 60 pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-29 23:30:07', '2021-10-04 19:55:48', 'Issued'),
(1345, 'RJ-45Connector-20019', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633398986.jpg', '29/08/2020, 06pcs, AM Arif Molla', 'CTM', '2021-09-29 23:31:03', '2021-10-04 19:56:26', 'Issued'),
(1346, 'RJ-45Connector-20020', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633399032.jpg', '31/08/2020, 08 Pcs, Lt Col Aziz', 'DD Maintenance', '2021-09-29 23:33:00', '2021-10-04 19:57:12', 'Issued'),
(1347, 'RJ-45Connector-20021', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633399068.jpg', '07/09/2020, 03pcs, Dir Production', 'DIR production Office', '2021-09-29 23:33:47', '2021-10-04 19:57:48', 'Issued'),
(1348, 'RJ-45Connector-20022', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633399099.jpg', '09/09/2020, 22pcs, Training center', 'RM-3', '2021-09-29 23:34:31', '2021-10-04 19:58:19', 'Issued'),
(1349, 'RJ-45Connector-20023', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981094.jpg', '13/09/2020, 06 Pcs, ICT Cell', 'ICT-Office', '2021-09-29 23:51:34', '2021-09-29 23:51:34', 'Issued'),
(1350, 'RJ-45Connector-20024', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981165.jpg', '15/09/2020, 35 Pcs, ICT Cell', 'ICT-Office', '2021-09-29 23:52:45', '2021-09-29 23:52:45', 'Issued'),
(1351, 'RJ-45Connector-20025', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981255.jpg', '20/09/2020, 01 Pcs, Workman Record', 'Workman Record', '2021-09-29 23:54:15', '2021-09-29 23:54:15', 'Issued'),
(1352, 'RJ-45Connector-20026', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981346.jpg', '21/09/2020, 332 Pcs, For ICT Work', 'ICT-Office', '2021-09-29 23:55:46', '2021-09-29 23:55:46', 'Issued'),
(1353, 'RJ-45Connector-20027', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981443.jpg', '29/09/2020, 02 Pcs, Office Super Rini Begum', 'Welfare', '2021-09-29 23:57:23', '2021-09-29 23:57:23', 'Issued'),
(1354, 'RJ-45Connector-20028', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981575.jpg', '01/10/2020, 03 Pcs, Bangabandhu Corner', 'Bangabondhu Cornar', '2021-09-29 23:59:35', '2021-09-29 23:59:35', 'Issued'),
(1355, 'RJ-45Connector-20029', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981687.jpg', '06/10/2020, 03 Pcs, Engr Hasan', 'DD Maintenance', '2021-09-30 00:01:27', '2021-09-30 00:01:27', 'Issued'),
(1356, 'RJ-45Connector-20030', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981823.jpg', '08/10/2020, Inclusion 60 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-30 00:03:43', '2021-09-30 00:03:43', 'Issued'),
(1357, 'RJ-45Connector-20031', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632981897.jpg', '10/10/2020, 08 Pcs, Chemist Abbas Ali', 'QCL', '2021-09-30 00:04:57', '2021-09-30 00:04:57', 'Issued'),
(1358, 'RJ-45Connector-20032', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632982879.jpg', '12/07/2020, 05 Pcs, Teachers Colony', 'Residential', '2021-09-30 00:21:19', '2021-09-30 00:21:19', 'Issued'),
(1359, 'RJ-45Connector-20033', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632982971.jpg', '11/10/2020, 08 Pcs, Chemist Abbas Ali', 'QCL', '2021-09-30 00:22:51', '2021-09-30 00:22:51', 'Issued'),
(1360, 'RJ-45Connector-20034', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983070.jpg', '13/10/2020, 02 Pcs, Tech Mehedi Hasan', 'ICT-Office', '2021-09-30 00:24:30', '2021-09-30 00:24:30', 'Issued'),
(1361, 'RJ-45Connector-20035', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983230.jpg', '14/10/2020, 02 Pcs, Jr Tech Jahid Hasan', 'ICT-Office', '2021-09-30 00:27:10', '2021-09-30 00:27:10', 'Issued'),
(1362, 'RJ-45Connector-20036', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983424.jpg', '20/10/2020, 02 Pcs, AM Molla Arif', 'CTM', '2021-09-30 00:30:24', '2021-09-30 00:30:24', 'Issued'),
(1363, 'RJ-45Connector-20037', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983516.jpg', '21/10/2020, 04 Pcs, Ontu Arr Tech Ltd', 'ICT-Office', '2021-09-30 00:31:56', '2021-09-30 00:31:56', 'Issued'),
(1364, 'RJ-45Connector-20038', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983585.jpg', '22/10/2020, 04 Pcs, Office Asst Atik', 'CTM', '2021-09-30 00:33:05', '2021-09-30 00:33:05', 'Issued'),
(1365, 'RJ-45Connector-20039', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983659.jpg', '24/10/2020, 02 Pcs, Bangabandhu Corner', 'Bangabondhu Cornar', '2021-09-30 00:34:19', '2021-09-30 00:34:19', 'Issued'),
(1366, 'RJ-45Connector-20040', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632983751.jpg', '27/10/2020, 03 Pcs, Jr Tech Nojir', 'Security', '2021-09-30 00:35:51', '2021-09-30 00:35:51', 'Issued'),
(1367, 'RJ-45Connector-20041', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632984902.jpg', '04/11/2020, 04 Pcs, AM Urmi Mostofa', 'Main store', '2021-09-30 00:55:02', '2021-09-30 00:55:02', 'Issued'),
(1368, 'RJ-45Connector-20042', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632985241.jpg', '07/11/2020, 03 Pcs, AM Mosharuf', NULL, '2021-09-30 01:00:41', '2021-09-30 01:00:41', 'Issued'),
(1369, 'RJ-45Connector-20043', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632985925.jpg', '09/11/2021, 06 Pcs, RM-3 Machine Purpose', 'RM-3', '2021-09-30 01:08:47', '2021-09-30 01:12:05', 'Issued'),
(1370, 'RJ-45Connector-20044', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632986142.jpg', '11/11/2020, Inclusion: 60 Pcs, From M/S Jeba Enterprise', 'ICT-Office', '2021-09-30 01:15:42', '2021-09-30 01:15:42', 'Issued'),
(1371, 'RJ-45Connector-20045', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632986515.jpg', '14/11/2020, 03 Pcs,  AE Tofayel', 'CTG', '2021-09-30 01:21:55', '2021-09-30 01:21:55', 'Issued'),
(1372, 'RJ-45Connector-20046', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632986662.jpg', '16/11/202, 10 Pcs, AD Work Purpose', NULL, '2021-09-30 01:24:22', '2021-09-30 01:24:22', 'Issued'),
(1373, 'RJ-45Connector-20047', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632987029.jpg', '16/11/2020, 08Pcs, AM Urmi Mostofa', 'Main store', '2021-09-30 01:30:29', '2021-09-30 01:30:29', 'Issued'),
(1374, 'RJ-45Connector-20048', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632987553.jpg', '17/11/2020, 11 Pcs, Camera Repair Purpose', NULL, '2021-09-30 01:39:13', '2021-09-30 01:39:13', 'Issued'),
(1375, 'RJ-45Connector-20049', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632987681.jpg', '18/11/2020, 04 Pcs, Camera Repair purpose', NULL, '2021-09-30 01:41:21', '2021-09-30 01:41:21', 'Issued'),
(1376, 'RJ-45Connector-20050', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632987757.jpg', '18/11/2020, 02 Pcs,  APO Latif', NULL, '2021-09-30 01:42:37', '2021-09-30 01:42:37', 'Issued'),
(1377, 'RJ-45Connector-20051', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1632987850.jpg', '19/11/2020, 40 Pcs, AD Work Purpose Of LAN Connection PC', NULL, '2021-09-30 01:44:10', '2021-09-30 01:44:10', 'Issued'),
(1378, 'RJ-45Connector-20053', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137512.jpg', '21/11/2020, 05 Pcs, AD Work Purpose', NULL, '2021-10-01 19:18:32', '2021-10-01 19:18:32', 'Issued'),
(1379, 'RJ-45Connector-20054', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137599.jpg', '22/11/2020, Inclusion 40 Pcs, From Residential Internet Service', NULL, '2021-10-01 19:19:59', '2021-10-01 19:19:59', 'Issued'),
(1380, 'RJ-45Connector-20055', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137684.jpg', '23/11/2020, 04 Pcs, AE Rajan Ali (RM-2)', 'Small Arms (SA)', '2021-10-01 19:21:24', '2021-10-01 19:21:24', 'Issued'),
(1381, 'RJ-45Connector-20056', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137735.jpg', '23/11/2020, 20 Pcs, AD Work Purpose', NULL, '2021-10-01 19:22:15', '2021-10-01 19:22:15', 'Issued'),
(1382, 'RJ-45Connector-20057', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137812.jpg', '29/11/2020, 10 Pcs, AD Work purpose', NULL, '2021-10-01 19:23:32', '2021-10-01 19:23:32', 'Issued'),
(1383, 'RJ-45Connector-20058', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137872.jpg', '06/12/2020, 02 Pcs, Dir Production Office', 'DIR production Office', '2021-10-01 19:24:32', '2021-10-01 19:24:32', 'Issued'),
(1384, 'RJ-45Connector-20059', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633137991.jpg', '22/12/2020, Inclusion 14 Pcs, From Residential Balance', 'Residential', '2021-10-01 19:26:31', '2021-10-01 19:26:53', 'Issued'),
(1385, 'RJ-45Connector-20060', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138167.jpg', '23/12/2020, 14 Pcs, Jr Tech Jahid For Factory Use', NULL, '2021-10-01 19:29:27', '2021-10-01 19:29:27', 'Issued'),
(1386, 'RJ-45Connector-21061', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138242.jpg', '09/01/2021, From Residential Balance', 'Residential', '2021-10-01 19:30:42', '2021-10-01 19:30:42', 'Issued'),
(1387, 'RJ-45Connector-21062', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138318.jpg', '09/01/2020, 08 Pcs, SAE Sofik', NULL, '2021-10-01 19:31:58', '2021-10-01 19:31:58', 'Issued'),
(1388, 'RJ-45Connector-21063', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138407.jpg', '07/09/2021, Inclusion 35 Pcs, From Residential Balance', 'Residential', '2021-10-01 19:33:27', '2021-10-01 19:33:27', 'Issued'),
(1389, 'RJ-45Connector-21064', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138572.jpg', '07/03/2021, 06 Pcs, Chemist Abbs Ali', 'QCL', '2021-10-01 19:36:12', '2021-10-01 19:36:12', 'Issued'),
(1390, 'RJ-45Connector-21065', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138661.jpg', '10/03/2021, 08 Pcs, ICT Office Work Table', 'ICT-Office', '2021-10-01 19:37:41', '2021-10-01 19:37:41', 'Issued'),
(1391, 'RJ-45Connector-21066', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138752.jpg', '10/03/2021, 04 Pcs, SAE Hasan Mostafiz', 'Service', '2021-10-01 19:39:12', '2021-10-01 19:39:12', 'Issued'),
(1392, 'RJ-45Connector-21067', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138819.jpg', '16/03/2021, 10 Pcs, ICT Service Room Use Purpose', 'ICT-Office', '2021-10-01 19:40:19', '2021-10-01 19:40:19', 'Issued'),
(1393, 'RJ-45Connector-21068', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138862.jpg', '21/03/2021, 10 Pcs, LAN Connection Purpose', 'HAG', '2021-10-01 19:41:02', '2021-10-01 19:41:02', 'Issued'),
(1394, 'RJ-45Connector-21069', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633138930.jpg', '15/06/2021, 05 Pcs, Production Co-ordinator Cell', 'Production C-cordiant Cell', '2021-10-01 19:42:10', '2021-10-01 19:42:10', 'Issued'),
(1395, 'RJ-45Connector-21070', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139044.jpg', '29/06/2021, Inclusion 01 Box, Techno Tech', 'ICT-Office', '2021-10-01 19:44:04', '2021-10-01 19:44:04', 'Issued'),
(1396, 'RJ-45Connector-21071', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139146.jpg', '08/07/2021, 05 Pcs, Server Rack', 'Purchase', '2021-10-01 19:45:46', '2021-10-01 19:45:46', 'Issued'),
(1397, 'RJ-45Connector-21072', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139200.jpg', '17/07/2021, 35 Pcs, Factory Use', 'ICT-Office', '2021-10-01 19:46:40', '2021-10-01 19:46:40', 'Issued'),
(1398, 'RJ-45Connector-21073', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139284.jpg', '09/08/2021, 05 Pcs, Production Co-ordinator Cell', 'Production C-cordiant Cell', '2021-10-01 19:48:04', '2021-10-01 19:48:04', 'Issued'),
(1399, 'RJ-45Connector-21074', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139375.jpg', '16/08/2021, Inclusion 07 Box, From Techno Tech', 'ICT-Office', '2021-10-01 19:49:35', '2021-10-01 19:49:35', 'Issued'),
(1400, 'RJ-45Connector-21075', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139438.jpg', '29/08/2021, 05 Pcs, CMC Office', 'ICT-Office', '2021-10-01 19:50:38', '2021-10-01 19:50:38', 'Issued'),
(1401, 'RJ-45Connector-21076', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139514.jpg', '11/09/2021, 10 Pcs, AE Mahamudul Islam', 'Small Arms Ammo (SAA)', '2021-10-01 19:51:54', '2021-10-01 19:51:54', 'Issued'),
(1402, 'RJ-45Connector-21077', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139576.jpg', '22/08/2021, 20 Pcs, Factory Use', 'Small Arms Ammo (SAA)', '2021-10-01 19:52:56', '2021-10-01 19:52:56', 'Issued'),
(1403, 'RJ-45Connector-21078', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139638.jpg', '14/09/2021, 15 Pcs, Cmdt Office Repair Purpose', 'Comdt BOF', '2021-10-01 19:53:58', '2021-10-01 19:53:58', 'Issued'),
(1404, 'RJ-45Connector-21079', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139682.jpg', '19/09/2021, 10 Ocs, Main Gate Camera Purpose', 'Security', '2021-10-01 19:54:42', '2021-10-01 19:54:42', 'Issued'),
(1405, 'RJ-45Connector-21080', NULL, NULL, NULL, 'RJ-45 Connector', NULL, '1633139740.jpg', '26/09/2021, 10 Pcs, ICT Office Repair Purpose', 'ICT-Office', '2021-10-01 19:55:40', '2021-10-01 19:55:40', 'Issued'),
(1406, 'MobilePhone-20001', 'Phone', 'Mobile Phone', NULL, 'A51', NULL, '1633140765.jpg', '16/07/2020, 01 Pcs, Brig. Kawser Ahmad, 01769044002, Stock In ICT, Using Another Official Phone', 'Deputy Comdt Office', '2021-10-01 20:12:45', '2021-10-01 20:12:45', 'Issued'),
(1407, 'MobilePhone-21002', 'Phone', 'Mobile Phone', NULL, 'A71', NULL, '1633140957.jpg', '09/03/2021, 01 Pcs, Brig. Mahabubur Rasel, 01769044050', 'Dir PLG & maint Office', '2021-10-01 20:15:57', '2021-10-01 20:15:57', 'Issued'),
(1408, 'MobilePhone-20003', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633141210.jpg', '16/07/2020, 01 Pcs, Man Mizanur Rahman, 01769044096', 'Main store', '2021-10-01 20:20:10', '2021-10-01 20:20:10', 'Issued'),
(1409, 'MobilePhone-20004', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633141349.jpg', '27/10/2020, 01 Pcs, AE Anisur Rahman, 01769044063 \r\n(Return 4/11/2021)', 'PLG', '2021-10-01 20:22:29', '2021-11-04 01:24:24', 'Issued'),
(1410, 'MobilePhone-20005', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633141468.jpg', '16/07/2020, Man Md. Shahidullah, 01769044120', 'MAP', '2021-10-01 20:24:28', '2021-10-01 20:24:28', 'Issued'),
(1411, 'MobilePhone-20006', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633141648.jpg', '16/07/2020, 01 Pcs, AE Masumbillah, 01769044070', 'MRO', '2021-10-01 20:27:28', '2021-10-01 20:27:28', 'Issued'),
(1412, 'MobilePhone-20007', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633141807.jpg', '16/07/2021, PO Ripon Mia, 01769044158', 'Purchase', '2021-10-01 20:30:07', '2021-10-01 20:30:07', 'Issued'),
(1413, 'MobilePhone-21008', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142157.jpg', '01/02/2021, 01 Pcs, Lt Col Omor Faruqe Principal Cant. Public, 01769044178', 'Residential', '2021-10-01 20:35:57', '2021-10-01 20:35:57', 'Issued'),
(1414, 'MobilePhone-20009', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142286.jpg', '16/07/2020, AE Mustafisur Rahman, 01769044020', 'RM-1', '2021-10-01 20:38:06', '2021-10-01 20:38:06', 'Issued'),
(1415, 'MobilePhone-20010', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142392.jpg', '16/07/2020,01 Pcs, AE Tofael Ahamed, 01769044067', 'CTM', '2021-10-01 20:39:52', '2021-10-01 20:39:52', 'Issued'),
(1416, 'MobilePhone-20011', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142516.jpg', '16/07/2020, 01 Pcs, Man Efthakharul Alam, 01769044097 Return :( 30/11/21 )', 'ICT-Office', '2021-10-01 20:41:56', '2021-11-29 19:57:36', 'Repair Cell'),
(1417, 'MobilePhone-20012', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142662.jpg', '16/07/2020, 01 Pcs, Col. Shahidul Kabir, 01715114056,  \r\nnew Issue : Col korban ali Date (28/12/21)', 'CC R & D', '2021-10-01 20:44:22', '2021-12-31 19:21:01', 'Issued'),
(1418, 'MobilePhone-20013', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633142813.jpg', '16/07/2020, 01 Pcs, Maj Mahafuzur Rahman Man Security, 01769044121', 'Security', '2021-10-01 20:46:53', '2021-10-01 20:46:53', 'Issued'),
(1419, 'MobilePhone-21014', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143060.jpg', '20/03/2021, 01 Pcs, Maj Khandakar Rakibul Islam, 01769044071', 'OIC ICT cell', '2021-10-01 20:51:00', '2021-10-01 20:51:00', 'Issued'),
(1420, 'MobilePhone-20015', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143197.jpg', '16/07/2020, 01 Pcs, Maj Shahedul Islam, 01769044013', 'RM-2', '2021-10-01 20:53:17', '2021-10-01 20:53:17', 'Issued'),
(1421, 'MobilePhone-20016', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143283.jpg', '16/07/2020, 01 Pcs, PO Ahsan Habib, 01769044157', 'Purchase', '2021-10-01 20:54:43', '2021-10-01 20:54:43', 'Issued'),
(1422, 'MobilePhone-20017', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143465.jpg', '16/07/2020, 01Pcs, AM Mosharof Hossain, 01769044099', 'MAP', '2021-10-01 20:57:45', '2021-10-01 20:57:45', 'Issued'),
(1423, 'MobilePhone-20018', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143611.jpg', '16/07/2020, 01 Pcs, AE Mollah Ariful Haque, 01769044079', 'CTM', '2021-10-01 21:00:11', '2021-10-01 21:00:11', 'Issued'),
(1424, 'MobilePhone-20019', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143757.jpg', '16/07/2020, 01 Pcs, PO Abdul Alim Sheik, 01769044101', 'Welfare', '2021-10-01 21:02:37', '2021-10-01 21:02:37', 'Issued'),
(1425, 'MobilePhone-20020', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633153027.jpg', '16/07/2020, 01 Pcs, Maj Mizanur Rahman Mandol, HT Shop', 'Small Arms (SA)', '2021-10-01 21:04:16', '2021-10-01 23:37:41', 'Issued'),
(1426, 'MobilePhone-20021', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633143980.jpg', '16/07/2020, 01 Pcs, Man Aminur Rahman, 01769044044', 'HAG', '2021-10-01 21:06:20', '2021-10-01 21:06:20', 'Issued'),
(1427, 'MobilePhone-20022', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633144115.jpg', '16/07/2020, 01 Pcs, Man Nurunabi Islam, 01769044043', 'HAG', '2021-10-01 21:08:35', '2021-10-01 21:08:35', 'Issued'),
(1428, 'MobilePhone-20023', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633144232.jpg', '01/11/2020, 01 Pcs, Lt Col Nurul Aziz, 01769044073', 'DD Maintenance', '2021-10-01 21:10:32', '2021-10-01 21:10:32', 'Issued'),
(1429, 'MobilePhone-20024', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633144471.jpg', '6/11/2021, 01 Pcs, Kazi Iqbal Hossain, 01769044093', 'DD Admin', '2021-10-01 21:14:31', '2021-11-08 21:35:26', 'Issued'),
(1430, 'MobilePhone-21025', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633144712.jpg', '12/05/2021, 01 Pcs, Lt Col Md Aslam Uddin, 01769044052', 'DD PlG office', '2021-10-01 21:18:32', '2021-10-01 21:18:32', 'Issued'),
(1431, 'MobilePhone-20026', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633145198.jpg', '16/07/2020, 01 Pcs, Man Tazemul Islam, 01769044075 Return date : 30-12-21', 'ICT Stock', '2021-10-01 21:26:38', '2021-12-31 19:22:23', 'In Stock'),
(1432, 'MobilePhone-20027', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633145331.jpg', '18/07/2020, 01 Pcs, AM Selina Akter, 01769044175', 'R & T', '2021-10-01 21:28:51', '2021-10-01 21:28:51', 'Issued'),
(1433, 'MobilePhone-20028', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633145455.jpg', '18/07/2020, 01 Pcs, AM Bakul Hossain PK, 01769044047', 'HAG', '2021-10-01 21:30:55', '2021-10-01 21:30:55', 'Issued'),
(1434, 'MobilePhone-20029', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633145622.jpg', '18/07/2020, 01 Pcs, AE Rujbana Nuri, HT Shop, 01769044038', 'Small Arms (SA)', '2021-10-01 21:33:42', '2021-10-01 23:38:34', 'Issued'),
(1435, 'MobilePhone-20030', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633145938.jpg', '19/07/2020, 01 Pcs, AM Masud Ahmed, 01769044024', 'Production C-cordiant Cell', '2021-10-01 21:38:58', '2021-10-01 21:38:58', 'Issued'),
(1436, 'MobilePhone-20031', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146050.jpg', '19/07/2020, 01 Pcs, Maj Shahinur, 01769044161', 'Medical', '2021-10-01 21:40:50', '2021-10-01 21:40:50', 'Issued'),
(1437, 'MobilePhone-20032', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146183.jpg', '19/07/2020, 01 Pcs, Maj Flowrange, SMO, 01769044160', 'Medical', '2021-10-01 21:43:03', '2021-10-01 23:39:18', 'Issued'),
(1438, 'MobilePhone-20033', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146285.jpg', '19/07/2020, 01 Pcs, AE Abu Saleh Mamun, 01769044022', 'RM-2', '2021-10-01 21:44:45', '2021-10-01 21:44:45', 'Issued'),
(1439, 'MobilePhone-20034', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146408.jpg', '12/08/2020, 01 Pcs, AE Mahamudur Rahman, 01769044039', 'Small Arms Ammo (SAA)', '2021-10-01 21:46:48', '2021-10-01 21:46:48', 'Issued'),
(1440, 'MobilePhone-20035', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146518.jpg', '26/08/2020, 01 Pcs, Man Shahina Rahman, 01769044055', 'R & D', '2021-10-01 21:48:38', '2021-10-01 21:48:38', 'Issued'),
(1441, 'MobilePhone-20036', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146646.jpg', '26/08/2020, 01 Pcs, Tazemul Islam Act DD SAA, 01769044028', 'Small Arms Ammo (SAA)', '2021-10-01 21:50:46', '2021-10-01 21:50:46', 'Issued'),
(1442, 'MobilePhone-20037', 'Phone', 'Mobile Phone', NULL, 'A51', NULL, '1633146765.jpg', '13/10/2020, 01 Pcs, Brig. Md Mahboob Karim, 01769044010', 'DIR production Office', '2021-10-01 21:52:45', '2021-10-01 21:52:45', 'Issued'),
(1443, 'MobilePhone-20038', 'Phone', 'Mobile Phone', NULL, 'A51', NULL, '1633146863.jpg', '17/10/2020, 01 Pcs, Brig. Habib, 01769044090', 'Dir Admin & Mat', '2021-10-01 21:54:23', '2021-10-01 21:54:23', 'Issued'),
(1444, 'MobilePhone-20039', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633146991.jpg', '13/10/2020, 01 Pcs, Man ANM Zakaria, 01769044075', 'Man MM', '2021-10-01 21:56:31', '2021-10-01 21:56:31', 'Issued'),
(1445, 'MobilePhone-20040', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633153229.jpg', '13/10/2020, 01 Pcs, AM Mehidi Hasan, 01769044059', 'MM', '2021-10-01 22:00:31', '2021-10-01 23:40:29', 'Issued'),
(1446, 'MobilePhone-20041', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633153180.jpg', '13/10/2020, 01 Pcs, AE Humayon Kobir, 01769044036', 'Small Arms Ammo (SAA)', '2021-10-01 22:02:35', '2021-10-01 23:39:40', 'Issued'),
(1447, 'MobilePhone-20042', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633147450.jpg', '13/10/2020, AE Oliur Rahman, 01 Pcs, 01769044057', 'ISI', '2021-10-01 22:04:10', '2021-10-01 22:04:10', 'Issued'),
(1448, 'MobilePhone-20043', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633147721.jpg', '14/10/2020, 01 Pcs, Am Kamrul Hasan Pervez (MS-01), 01769044018', 'Small Arms (SA)', '2021-10-01 22:08:41', '2021-10-01 22:08:41', 'Issued'),
(1449, 'MobilePhone-20044', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633147864.jpg', '14/10/2020, 01 Pcs, AM Urmi Mostofa, 01769044154', 'Finance', '2021-10-01 22:11:04', '2021-10-01 22:11:04', 'Issued'),
(1450, 'MobilePhone-20045', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633147968.jpg', '14/10/2020, 01 Pcs, AE Mojibur Rahman, 01769044037', 'Small Arms Ammo (SAA)', '2021-10-01 22:12:48', '2021-10-01 22:12:48', 'Issued'),
(1451, 'MobilePhone-20046', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148051.jpg', '14/10/2020, 01 Pcs, AM Belal Hossain, 01769044098', 'Purchase', '2021-10-01 22:14:11', '2021-10-01 22:14:11', 'Issued'),
(1452, 'MobilePhone-20047', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148156.jpg', '15/10/2020, 01 Pcs, AE Abdul Quayyum Khan (MM. SA), 01769044035', 'Small Arms Ammo (SAA)', '2021-10-01 22:15:56', '2021-10-01 22:15:56', 'Issued'),
(1453, 'MobilePhone-20048', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148282.jpg', '15/10/2020, 01 Pcs, AM Shafiqul Islam, 01769044016 \r\n(Return Date :4/11/2021) \r\nIssue To Iftekhairul Alam Manager  (30/11/2021)', 'MAG', '2021-10-01 22:18:02', '2021-11-29 20:01:23', 'Issued'),
(1454, 'MobilePhone-20049', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148424.jpg', '15/10/2020, 01 Pcs, AE Lutfur Rahman Selim, 01769044062', 'MC', '2021-10-01 22:20:24', '2021-10-01 22:20:24', 'Issued'),
(1455, 'MobilePhone-20050', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148545.jpg', '15/10/2020, AE Hasanur Rahman, 01769044040', 'R & D', '2021-10-01 22:22:25', '2021-10-01 22:22:25', 'Issued'),
(1456, 'MobilePhone-20051', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148662.jpg', '15/10/2020, 01 Pcs, AE Romjan Ali, 01769044021', 'RM-2', '2021-10-01 22:24:22', '2021-10-01 22:24:22', 'Issued'),
(1457, 'MobilePhone-20052', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633148765.jpg', '17/10/2020, 01 Pcs, AE Abul Hossain', 'MM', '2021-10-01 22:26:05', '2021-10-01 22:26:05', 'Issued'),
(1458, 'MobilePhone-20053', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633149128.jpg', '19/10/2020, 01 Pcs, Chemist Abbas Ali, 01769044069', 'QCL', '2021-10-01 22:32:08', '2021-10-01 22:32:08', 'Issued'),
(1459, 'MobilePhone-20054', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633149243.jpg', '29/10/2020, 01 Pcs, AE Bazlur Rahman, 01769044080 (Returned 15/11/2021) \r\nIssue  :(5/12/21) AE Mossharraf Hossain (SAA)', 'Small Arms Ammo (SAA)', '2021-10-01 22:34:03', '2021-12-06 19:36:04', 'Issued'),
(1460, 'MobilePhone-21055', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633149372.jpg', '09/01/2021, 01 Pcs, Col Mizanuzzaman', 'DD Admin', '2021-10-01 22:36:12', '2021-10-01 22:36:12', 'Issued'),
(1461, 'MobilePhone-21056', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, '1633149533.jpg', '20/03/2021, 01 Pcs, Lt Col Shamira, 01769044150', 'Purchase', '2021-10-01 22:38:53', '2021-10-01 22:38:53', 'Issued'),
(1462, 'MobilePhone-20057', 'Phone', 'Mobile Phone', NULL, 'J7Nxt', NULL, '1633149778.jpg', '22/08/2020, 01 pcs, Razab Ali (O.A)', 'Comdt BOF', '2021-10-01 22:42:58', '2022-03-11 22:54:22', 'Issued'),
(1463, 'MobilePhone-20058', 'Phone', 'Mobile Phone', NULL, 'J2pro', NULL, '1633149969.jpg', '22/08/2020, 01 Pcs, Sgt Babul, 01769044007', 'Deputy Comdt Office', '2021-10-01 22:46:09', '2021-10-01 22:46:09', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(1465, 'MobilePhone-20060', 'Phone', 'Mobile Phone', NULL, 'J7Nxt', NULL, '1633152970.jpg', '22/08/2020, Hasmut Ullah (SKT ICT Cell),\r\nreturned  the product 25/10/2021 (SKDT) \r\n(This product is Damaged)', NULL, '2021-10-01 22:49:47', '2021-12-31 19:28:10', 'Dispose'),
(1466, 'MobilePhone-20061', 'Phone', 'Mobile Phone', NULL, 'J2pro', NULL, '1633150274.jpg', '22/08/2020, Tomiz Uddin PA, 01769044051', 'Dir Admin & Mat', '2021-10-01 22:51:14', '2021-10-01 22:51:14', 'Issued'),
(1467, 'MobilePhone-20062', 'Phone', 'Mobile Phone', NULL, 'J7Nxt', NULL, '1633151052.jpg', '22/08/2020, 01 Pcs, Sgt Kibria PA, 01769044006', 'Comdt BOF', '2021-10-01 23:04:12', '2021-10-01 23:04:12', 'Issued'),
(1468, 'MobilePhone-20063', 'Phone', 'Mobile Phone', NULL, 'J2pro', NULL, '1633151199.jpg', '22/08/2020, 01 Pcs, Sgt Mujib PA 01769044091', 'DD Admin', '2021-10-01 23:06:39', '2021-10-01 23:06:39', 'Issued'),
(1469, 'MobilePhone-20064', 'Phone', 'Mobile Phone', NULL, 'J2Galaxy', NULL, '1633151793.jpg', '22/08/2020, 01 Pcs, Md Samsur Rahman, 01769044133', 'Security', '2021-10-01 23:16:33', '2021-10-01 23:16:33', 'Issued'),
(1470, 'MobilePhone-20065', 'Phone', 'Mobile Phone', NULL, 'J2pro', NULL, '1633151870.jpg', '22/08/2020, 01 Pcs, Md Ibrahim PA,', 'DD Admin', '2021-10-01 23:17:50', '2021-10-01 23:17:50', 'Issued'),
(1471, 'MobilePhone-20066', 'Phone', 'Mobile Phone', NULL, 'J7Max', NULL, '1633152007.jpg', '22/08/2020, 01 Pcs, Munsur PA, 01769044011', 'DIR production Office', '2021-10-01 23:20:07', '2021-10-01 23:20:07', 'Issued'),
(1472, 'MobilePhone-20067', 'Phone', 'Mobile Phone', NULL, 'A20s', NULL, '1633152125.jpg', '22/08/2020, 01 Pcs, Capt. Farhan, 01769044005', 'Comdt BOF', '2021-10-01 23:22:05', '2021-10-01 23:22:05', 'Issued'),
(1473, 'MobilePhone-20068', 'Phone', 'Mobile Phone', NULL, 'J7Max', NULL, '1633152333.jpg', '22/08/2020, 01 Pcs, Sgt Sheraj, 01769044134', 'Security', '2021-10-01 23:25:33', '2021-10-01 23:25:33', 'Issued'),
(1474, 'MobilePhone-20069', 'Phone', 'Mobile Phone', NULL, 'J1DOUS', NULL, '1633152427.jpg', '29/08/2020, 01 Pcs, Forhad Ahmed Jr. Tech\r\n(Return 31/10/2021)\r\n(This product is damaged)', NULL, '2021-10-01 23:27:07', '2021-12-31 19:29:41', 'Dispose'),
(1475, 'MobilePhone-20070', 'Phone', 'Mobile Phone', NULL, 'J7Nxt', NULL, '1633152647.jpg', '08/10/2020, 01 Pcs, Nur Ahmad, 01769044117', 'Comdt BOF', '2021-10-01 23:30:47', '2021-10-01 23:30:47', 'Issued'),
(1476, 'MobilePhone-20071', 'Phone', 'Mobile Phone', NULL, 'J2Galaxy', NULL, '1633152827.jpg', '01/11/2020, 01 pcs, Dewan Sohel Rana Fire Officer , 01769044104', 'Fire', '2021-10-01 23:33:47', '2021-10-01 23:33:47', 'Issued'),
(1477, 'MobilePhone-20072', 'Phone', 'Mobile Phone', NULL, 'J1DOUS', NULL, '1633152944.jpg', '29/10/2020, 01 Pcs, Cpl. Shofiqul Islam, Gulf Staff, 01739176861', 'Golf Club', '2021-10-01 23:35:44', '2021-10-01 23:35:44', 'Issued'),
(1478, 'ExternalDVDDrive-20001', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223553.jpg', '26/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 19:12:33', '2021-10-02 19:12:33', 'Issued'),
(1479, 'ExternalDVDDrive-20002', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223605.jpg', '27/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 19:13:25', '2021-10-02 19:13:25', 'Issued'),
(1480, 'ExternalDVDDrive-20003', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223648.jpg', '21/09/2020, 01 Pcs, Tech Mehedi', 'ICT-Office', '2021-10-02 19:14:08', '2021-10-02 19:14:08', 'Issued'),
(1481, 'ExternalDVDDrive-20004', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223701.jpg', '24/10/2020, 01 Pcs, Comdt BOF', 'Comdt BOF', '2021-10-02 19:15:01', '2021-10-02 19:15:01', 'Issued'),
(1482, 'ExternalDVDDrive-20005', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223769.jpg', '28/10/2020, Inclusion 01 Pcs, Return From Comdt Office', 'ICT-Office', '2021-10-02 19:16:09', '2021-10-02 19:16:09', 'Issued'),
(1483, 'ExternalDVDDrive-20006', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223840.jpg', '23/11/2020, 01 Pcs, AD work Purpose Jr Tech Mizan', 'ICT-Office', '2021-10-02 19:17:20', '2021-10-02 19:17:20', 'Issued'),
(1484, 'ExternalDVDDrive-20007', NULL, NULL, NULL, 'External DVD Drive', NULL, '1633223898.jpg', '20/12/2020, 01 Pcs, ICT Office Use Purpose', 'ICT-Office', '2021-10-02 19:18:18', '2021-10-02 19:18:18', 'Issued'),
(1485, 'ONU-20001', NULL, NULL, NULL, 'ONU', NULL, '1633224263.jpg', '03/07/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 19:24:23', '2021-10-02 19:24:23', 'Issued'),
(1486, 'ONU-20002', NULL, NULL, NULL, 'ONU', NULL, '1633224327.jpg', '06/07/2020, Inclusion 02 Pcs, From Computer City', 'ICT-Office', '2021-10-02 19:25:27', '2021-10-02 19:25:27', 'Issued'),
(1487, 'ONU-20003', NULL, NULL, NULL, 'ONU', NULL, '1633224418.jpg', '20/07/2020, 01 Pcs, Lt Col kamrujaman', 'DD Maintenance', '2021-10-02 19:26:58', '2021-10-02 19:26:58', 'Issued'),
(1488, 'ONU-20004', NULL, NULL, NULL, 'ONU', NULL, '1633224481.jpg', '03/09/2020, 01 Pcs, H-13', 'Residential', '2021-10-02 19:28:01', '2021-10-02 19:28:01', 'Issued'),
(1489, 'ONU-20005', NULL, NULL, NULL, 'ONU', NULL, '1633224526.jpg', '21/09/2020, 05 Pcs, SKD Showon', 'ICT-Office', '2021-10-02 19:28:46', '2021-10-02 19:28:46', 'Issued'),
(1490, 'HeadPhone-20001', NULL, NULL, NULL, 'Head Phone', NULL, '1633224811.jpg', '12/07/2020, Inclusion 01 Pcs, From Computer City', 'ICT-Office', '2021-10-02 19:33:31', '2021-10-02 19:33:31', 'Issued'),
(1491, 'HeadPhone-20002', NULL, NULL, NULL, 'Head Phone', NULL, '1633224914.jpg', '18/08/2020, 01 Pcs, Dir PLG & Maint', 'Dir PLG & maint Office', '2021-10-02 19:35:14', '2021-10-02 19:35:14', 'Issued'),
(1492, 'HeadPhone-20003', NULL, NULL, NULL, 'Head Phone', NULL, '1633224976.jpg', '22/08/2020, Inclusion 02 Pcs, From Computer City', 'ICT-Office', '2021-10-02 19:36:16', '2021-10-02 19:36:16', 'Issued'),
(1494, 'HeadPhone-20005', NULL, NULL, NULL, 'Head Phone', NULL, '1633225104.jpg', '23/08/2020, 01 Pcs, ICT Office Use Purpose', 'ICT-Office', '2021-10-02 19:38:24', '2021-10-02 19:38:24', 'Issued'),
(1495, 'HeadPhone-20006', NULL, NULL, NULL, 'Head Phone', NULL, '1633225171.jpg', '21/11/2020, Inclusion 01 Pcs, From Abdus salam', 'ICT-Office', '2021-10-02 19:39:31', '2021-11-21 19:22:50', 'In Stock'),
(1496, 'HeadPhone-21007', NULL, NULL, NULL, 'Head Phone', NULL, '1633225245.jpg', '09/01/2021, 01 Pcs, DD Admin & Mat Office', 'DD Admin & Mat', '2021-10-02 19:40:45', '2021-10-02 19:40:45', 'Issued'),
(1497, 'HeadPhone-21008', NULL, NULL, NULL, 'Head Phone', NULL, '1633225342.jpg', '27/02/2021, Inclusion 01 Pcs, From Computer City', 'ICT-Office', '2021-10-02 19:42:22', '2021-10-02 19:42:22', 'Issued'),
(1498, 'MKBox-20001', NULL, NULL, NULL, 'MK Box', NULL, '1633225588.jpg', '03/07/2020, Inclusion 20 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 19:46:28', '2021-10-02 19:46:28', 'Issued'),
(1499, 'MKBox-20002', NULL, NULL, NULL, 'MK Box', NULL, '1633225712.jpg', '04/07/2020, 20 Pcs, Teachers Colony (SKD Showon)', 'Residential', '2021-10-02 19:48:32', '2021-10-02 19:48:32', 'Issued'),
(1500, 'MKBox-20003', NULL, NULL, NULL, 'MK Box', NULL, '1633225777.jpg', '05/10/2020, Inclusion 20 Pcs, From M/S Jeba Enterprise', 'ICT-Office', '2021-10-02 19:49:37', '2021-10-02 19:49:37', 'Issued'),
(1501, 'MKBox-20004', NULL, NULL, NULL, 'MK Box', NULL, '1633225845.jpg', '05/10/2020, 20 Pcs, Officers Mess VVIP Room', 'Officers Mess', '2021-10-02 19:50:45', '2021-10-02 19:50:45', 'Issued'),
(1502, 'TJBox-20001', NULL, NULL, NULL, 'TJ Box', NULL, '1633226254.jpg', '03/07/2020, inclusion 05 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 19:57:34', '2021-10-02 19:57:34', 'Issued'),
(1503, 'TJBox-20002', NULL, NULL, NULL, 'TJ Box', NULL, '1633226380.jpg', '05/07/2020, 03 Pcs, Teachers Colony', 'Residential', '2021-10-02 19:59:40', '2021-10-02 19:59:40', 'Issued'),
(1504, 'TJBox-20003', NULL, NULL, NULL, 'TJ Box', NULL, '1633226646.jpg', '21/09/2020, 01 Pcs, SKD Shawon', 'ICT-Office', '2021-10-02 20:04:06', '2021-10-02 20:04:06', 'Issued'),
(1505, 'TJBox-20004', NULL, NULL, NULL, 'TJ Box', NULL, '1633226719.jpg', '21/09/2020, Inclusion 14 Pcs, Not Workable', 'Main store', '2021-10-02 20:05:19', '2021-10-02 20:05:19', 'Issued'),
(1506, 'TJBox-20005', NULL, NULL, NULL, 'TJ Box', NULL, '1633226922.jpg', '04/10/20202, Inclusion 01 Pcs, Rasel Electronics Store', 'ICT-Office', '2021-10-02 20:08:42', '2021-10-02 20:08:42', 'Issued'),
(1507, 'TJBox-20006', NULL, NULL, NULL, 'TJ Box', NULL, '1633227021.jpg', '04/10/20202, 01 Pcs, Factories Fiber Backbone Purpose', NULL, '2021-10-02 20:10:21', '2021-10-09 00:57:38', 'Issued'),
(1508, 'TJBox-20007', NULL, NULL, NULL, 'TJ Box', NULL, '1633227098.jpg', '27/10/2020, 14 Pcs, Wastage Board', 'Main store', '2021-10-02 20:11:38', '2021-10-09 00:58:27', 'Issued'),
(1509, 'TJBox-20008', NULL, NULL, NULL, 'TJ Box', NULL, '1633227224.jpg', '31/10/2020, 02 Pcs, HT Shop (RM-4)', 'RM-4', '2021-10-02 20:13:44', '2021-10-09 00:59:11', 'Issued'),
(1510, 'TJBox-21009', NULL, NULL, NULL, 'TJ Box', NULL, '1633227363.jpg', '07/04/2021, 10 Pcs, Residential Area use', 'Residential', '2021-10-02 20:16:03', '2021-10-09 00:59:51', 'Issued'),
(1511, 'TJBox-21010', NULL, NULL, NULL, 'TJ Box', NULL, '1633227452.jpg', '25/05/2021, 02 pcs, Server Room Rack Purpose', NULL, '2021-10-02 20:17:32', '2021-10-09 01:00:23', 'Issued'),
(1512, 'TJBox-21011', NULL, NULL, NULL, 'TJ Box', NULL, '1633227533.jpg', '03/06/2021, 01 pcs, D-05', 'Residential', '2021-10-02 20:18:53', '2021-10-09 01:01:03', 'Issued'),
(1513, 'TJBox-21012', NULL, NULL, NULL, 'TJ Box', NULL, '1633227765.jpg', '12/06/2021, 02 Pcs, Residential Area Anik', 'Residential', '2021-10-02 20:19:13', '2021-10-09 01:01:39', 'Issued'),
(1514, 'TJBox-21013', NULL, NULL, NULL, 'TJ Box', NULL, '1633227882.jpg', '15/06/2021, 02 Pcs, Admin Building LAN Purpose', 'Admin', '2021-10-02 20:24:42', '2021-10-09 01:02:15', 'Issued'),
(1515, 'TJBox-21014', NULL, NULL, NULL, 'TJ Box', NULL, '1633227950.jpg', '20/06/2021, 02 Pcs, Factory LAN Purpose', NULL, '2021-10-02 20:25:50', '2021-10-09 01:02:51', 'Issued'),
(1516, 'TJBox-21015', NULL, NULL, NULL, 'TJ Box', NULL, '1633228007.jpg', '12/07/2021, 03 pcs, Admin Building LAN Purpose', 'Admin', '2021-10-02 20:26:47', '2021-10-09 01:03:29', 'Issued'),
(1517, 'ElectricSocket(Smart)-20001', NULL, NULL, NULL, 'Electric Socket(Smart)', NULL, '1633228260.jpg', '03/07/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 20:31:00', '2021-10-02 20:31:00', 'Issued'),
(1518, 'ElectricSocket(Smart)-21001', NULL, NULL, NULL, 'Electric Socket(Smart)', NULL, '1633228370.jpg', '10/04/2021, 02 Pcs, ICT Office Use Purpose', 'ICT-Office', '2021-10-02 20:32:50', '2021-10-02 20:32:50', 'Issued'),
(1519, 'SettleClump-20001', NULL, NULL, NULL, 'Settle Clump', NULL, NULL, '03/07/2020, Inclusion 40 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 20:40:57', '2021-10-02 20:40:57', 'Issued'),
(1520, 'SettleClump-20002', NULL, NULL, NULL, 'Settle Clump', NULL, NULL, '09/11/2020, 08 Pcs, Maj Jahid', 'RM-3', '2021-10-02 20:41:38', '2021-10-02 20:41:38', 'Issued'),
(1521, 'SettleClump-20003', NULL, NULL, NULL, 'Settle Clump', NULL, NULL, '10/12/2020, 30 Pcs, ICT Office Maintenance work Purpose', 'ICT-Office', '2021-10-02 20:42:40', '2021-10-02 20:42:40', 'Issued'),
(1522, 'WirelessKeyboard-20001', 'Keyboard', 'Wireless Keyboard', NULL, NULL, NULL, '1633229370.jpg', '21/09/2020, 03 Pcs, SKD Shawon', 'ICT-Office', '2021-10-02 20:49:30', '2021-10-02 20:55:08', 'Issued'),
(1523, 'WirelessKeyboard-20002', 'Keyboard', 'Wireless Keyboard', NULL, NULL, NULL, '1633229441.jpg', '14/12/2020, Inclusion 01 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 20:50:41', '2021-10-02 20:55:21', 'Issued'),
(1524, 'WirelessKeyboard-20003', 'Keyboard', 'Wireless Keyboard', NULL, NULL, NULL, '1633229515.jpg', '14/12/2020, 01 Pcs, VTC Purpose Ullsh', 'Residential', '2021-10-02 20:51:55', '2021-10-02 20:55:35', 'Issued'),
(1525, 'WirelessKeyboard-21004', 'Keyboard', 'Wireless Keyboard', NULL, NULL, NULL, '1633229637.jpg', '15/03/2021, Inclusion 01 Pcs, Masud Electronics', 'ICT-Office', '2021-10-02 20:53:57', '2021-10-02 20:53:57', 'Issued'),
(1526, 'WirelessKeyboard-21005', 'Keyboard', 'Wireless Keyboard', NULL, NULL, NULL, '1633229688.jpg', '15/03/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-10-02 20:54:48', '2021-10-02 20:54:48', 'Issued'),
(1527, 'PatchCard-20001', NULL, NULL, NULL, 'Patch Card', NULL, '1633230070.jpg', '05/07/2020, 02 Pcs, Teachers Colony', 'Residential', '2021-10-02 21:01:10', '2021-10-02 21:01:10', 'Issued'),
(1528, 'PatchCard-20002', NULL, NULL, NULL, 'Patch Card', NULL, '1633230141.jpg', '01/10/2020, 02 Pcs, GE-Army', 'GE Army', '2021-10-02 21:02:21', '2021-10-02 21:02:21', 'Issued'),
(1529, 'PatchCard-20003', NULL, NULL, NULL, 'Patch Card', NULL, '1633231078.jpg', '31/10/2020, 02 Pcs, HT Shop (SKD Shawon)', 'RM-4', '2021-10-02 21:17:58', '2021-10-09 01:12:18', 'Issued'),
(1530, 'PatchCard-21004', NULL, NULL, NULL, 'Patch Card', NULL, '1633231149.jpg', '04/04/2021,04 pcs, Camera Use Purpose', NULL, '2021-10-02 21:19:09', '2021-10-02 21:19:09', 'Issued'),
(1531, 'PatchCard-21005', NULL, NULL, NULL, 'Patch Card', NULL, '1633231192.jpg', '10/05/2021, 05 pcs, Camera Use Purpose', NULL, '2021-10-02 21:19:52', '2021-10-02 21:19:52', 'Issued'),
(1532, 'PatchCard-21006', NULL, NULL, NULL, 'Patch Card', NULL, '1633231248.jpg', '15/05/2021, 04 pcs, Admin Building LAN Purpose', 'Admin', '2021-10-02 21:20:48', '2021-10-02 21:20:48', 'Issued'),
(1533, 'PatchCard-21007', NULL, NULL, NULL, 'Patch Card', NULL, '1633231449.jpg', '29/06/2021, Inclusion 01 Pcs, Techno Test (From MRO Tender)', 'MRO', '2021-10-02 21:24:09', '2021-10-02 21:24:09', 'Issued'),
(1534, 'CableTie-20001', NULL, NULL, NULL, 'Cable Tie', NULL, '1633232857.jpg', '17/07/2020, Inclusion 01 Box, From Computer City', 'ICT-Office', '2021-10-02 21:47:37', '2021-10-02 21:47:37', 'Issued'),
(1535, 'CableTie-20002', NULL, NULL, NULL, 'Cable Tie', NULL, '1633232920.jpg', '27/08/2020, Inclusion 100 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 21:48:40', '2021-10-02 21:48:40', 'Issued'),
(1536, 'CableTie-21003', NULL, NULL, NULL, 'Cable Tie', NULL, '1633233001.jpg', '10/04/2021, 01 Box, Camera Purpose Use', NULL, '2021-10-02 21:50:01', '2021-10-02 21:50:01', 'Issued'),
(1537, 'MobileMemoryCard-20001', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233306.jpg', '18/07/2020, Inclusion 10 Pcs, From Art Tread & Traders', 'ICT-Office', '2021-10-02 21:55:06', '2021-10-02 22:05:36', 'Issued'),
(1538, 'MobileMemoryCard-20002', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233383.jpg', '19/07/2020, 01 Pcs, DY Comdt', 'Deputy Comdt Office', '2021-10-02 21:56:23', '2021-10-02 21:56:23', 'Issued'),
(1539, 'MobileMemoryCard-20003', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233437.jpg', '19/07/2020, 01 Pcs, OIC ICT Office(Maj Abdus Salam)', NULL, '2021-10-02 21:57:17', '2021-11-20 20:57:20', 'Issued'),
(1540, 'MobileMemoryCard-20004', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233554.jpg', '19/07/2020, 01 Pcs, IC ICT', 'ICT-Office', '2021-10-02 21:59:14', '2021-10-02 21:59:14', 'Issued'),
(1541, 'MobileMemoryCard-20005', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233602.jpg', '09/10/2020, 01 Pcs, ICT Office Use Purpose', 'ICT-Office', '2021-10-02 22:00:02', '2021-10-02 22:00:02', 'Issued'),
(1542, 'MobileMemoryCard-20006', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233679.jpg', '10/11/2020, 01 Pcs , Tech Mehedi Hasan Shohag', 'ICT-Office', '2021-10-02 22:01:19', '2021-10-02 22:01:19', 'Issued'),
(1543, 'MobileMemoryCard-21007', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233737.jpg', '12/04/2021, 02 Pcs, Not Workable', 'ICT-Office', '2021-10-02 22:02:17', '2021-10-02 22:06:14', 'Issued'),
(1544, 'MobileMemoryCard-21008', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233802.jpg', '16/06/2021, Inclusion 01 Pcs, From Ryans IT Limited', 'ICT-Office', '2021-10-02 22:03:22', '2021-10-02 22:03:22', 'Issued'),
(1545, 'MobileMemoryCard-21009', NULL, NULL, NULL, 'Mobile Memory Card', NULL, '1633233847.jpg', '20/07/2021, 01 Pcs, Not Workable', 'ICT-Office', '2021-10-02 22:04:07', '2021-10-02 22:06:34', 'Issued'),
(1546, 'VGAToHDMIConverter-20001', NULL, NULL, NULL, 'VGA To HDMI Converter', NULL, '1633234249.jpg', '05/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 22:10:49', '2021-10-02 22:10:49', 'Issued'),
(1547, 'VGAToHDMIConverter-20002', NULL, NULL, NULL, 'VGA To HDMI Converter', NULL, '1633234302.jpg', '21/09/2020, Inclusion 01 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 22:11:42', '2021-10-02 22:11:42', 'Issued'),
(1548, 'VGAToHDMIConverter-20003', NULL, NULL, NULL, 'VGA To HDMI Converter', NULL, '1633234367.jpg', '27/10/2020, 01 Pcs, 3rd Floor Conference Room', 'Conference Room', '2021-10-02 22:12:47', '2021-10-02 22:12:47', 'Issued'),
(1549, 'VGAToHDMIConverter-21004', NULL, NULL, NULL, 'VGA To HDMI Converter', NULL, '1633234489.jpg', '20/02/2021, 02 pcs, ICT Office Use Purpose', 'ICT-Office', '2021-10-02 22:14:49', '2021-10-02 22:14:49', 'Issued'),
(1550, 'Office2010-20001', NULL, NULL, NULL, 'Office 2010', NULL, '1633235689.jpg', '12/08/2020, Inclusion Quantity 07, From Jeba Enterprise', 'ICT-Office', '2021-10-02 22:34:49', '2021-10-02 22:34:49', 'Issued'),
(1551, 'Office2010-20002', NULL, NULL, NULL, 'Office 2010', NULL, '1633235767.jpg', '26/09/2020, Quantity 02, Comdt Bhabon (Dhaka)', NULL, '2021-10-02 22:36:07', '2021-10-02 22:36:07', 'Issued'),
(1552, 'Office2010-20003', NULL, NULL, NULL, 'Office 2010', NULL, '1633235842.jpg', '29/09/2020, Inclusion 10 Pcs, From Arra Tech Ltd.', 'ICT-Office', '2021-10-02 22:37:22', '2021-10-02 22:37:22', 'Issued'),
(1553, 'Office2010-20004', NULL, NULL, NULL, 'Office 2010', NULL, '1633235922.jpg', '25/12/2020, Quantity 05, ICT Office Repair Work Purpose', 'ICT-Office', '2021-10-02 22:38:42', '2021-10-02 22:38:42', 'Issued'),
(1554, 'Office2010-21005', NULL, NULL, NULL, 'Office 2010', NULL, '1633235995.jpg', '13/03/2021, 10Pcs, Repair Purpose ICT', 'ICT-Office', '2021-10-02 22:39:55', '2021-10-02 22:39:55', 'Issued'),
(1555, 'SmokeDetector-20001', NULL, NULL, NULL, 'Smoke Detector', NULL, '1633237052.jpg', '20/08/2020, Inclusion 35 Pcs, From Arra Tech', 'ICT-Office', '2021-10-02 22:57:32', '2021-10-02 22:57:32', 'Issued'),
(1556, 'SmokeDetector-20002', NULL, NULL, NULL, 'Smoke Detector', NULL, '1633237103.jpg', '17/09/2020, 02 Pcs, ICT Cell Office', 'ICT-Office', '2021-10-02 22:58:23', '2021-10-02 22:58:23', 'Issued'),
(1557, 'HammerBallPeen-20001', NULL, NULL, NULL, 'Hammer Ball Peen', NULL, '1633237767.jpg', '24/08/2020, Inclusion 01 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 23:09:27', '2021-10-02 23:09:27', 'Issued'),
(1558, 'HammerBallPeen-20002', NULL, NULL, NULL, 'Hammer Ball Peen', NULL, '1633237832.jpg', '21/09/2020, 01 pcs, Tech Mehedi', 'ICT-Office', '2021-10-02 23:10:32', '2021-10-02 23:10:32', 'Issued'),
(1559, 'CuttingPliers-20001', NULL, NULL, NULL, 'Cutting Pliers', NULL, '1633238016.jpg', '24/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 23:13:36', '2021-10-02 23:13:36', 'Issued'),
(1560, 'CuttingPliers21002', NULL, NULL, NULL, 'Cutting Pliers', NULL, '1633238066.jpg', '15/01/2021, 01 Pcs, ICT Office Use', 'ICT-Office', '2021-10-02 23:14:26', '2021-10-02 23:14:26', 'Issued'),
(1561, 'CuttingPliers-21003', NULL, NULL, NULL, 'Cutting Pliers', NULL, '1633238123.jpg', '18/03/2021, 01 Pcs, ICT Repair Work Purpose', 'ICT-Office', '2021-10-02 23:15:23', '2021-10-02 23:15:23', 'Issued'),
(1562, 'NosePliers-20001', NULL, NULL, NULL, 'Nose Pliers', NULL, '1633238300.jpg', '24/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-10-02 23:18:20', '2021-10-02 23:18:20', 'Issued'),
(1563, 'NosePliers-20002', NULL, NULL, NULL, 'Nose Pliers', NULL, '1633238363.jpg', '21/09/2020, 01 Pcs, Tech Medehi ICT Office Use', 'ICT-Office', '2021-10-02 23:19:23', '2021-10-02 23:19:23', 'Issued'),
(1564, 'NosePliers-20003', NULL, NULL, NULL, 'Nose Pliers', NULL, '1633238424.jpg', '10/12/2020, 01 pcs, ICT Work Purpose', 'ICT-Office', '2021-10-02 23:20:24', '2021-10-02 23:20:24', 'Issued'),
(1565, 'WirelessPocketMicrophone-20001', 'Phone', 'Wireless Pocket Microphone', NULL, NULL, NULL, '1633238914.jpg', '04/09/2020, Inclusion 02 Pcs, From Litme Enterprise', 'ICT-Office', '2021-10-02 23:28:34', '2021-10-02 23:28:34', 'Issued'),
(1566, 'WirelessPocketMicrophone-21002', 'Phone', 'Wireless Pocket Microphone', NULL, NULL, NULL, '1633239005.jpg', '05/10/2021, 02 Pcs, Conference Purpose Uce', 'Conference Room', '2021-10-02 23:30:05', '2021-10-02 23:30:05', 'Issued'),
(1567, 'MixerAmplifire-20001', NULL, NULL, NULL, 'Mixer Amplifire', NULL, '1633239301.jpg', '04/09/2020, Inclusion 01 Pcs, From Limta Enterprise', 'ICT-Office', '2021-10-02 23:35:01', '2021-10-02 23:35:01', 'Issued'),
(1568, 'MixerAmplifire-20002', NULL, NULL, NULL, 'Mixer Amplifire', NULL, '1633239379.jpg', '04/09/2020, 01 Pcs, Conference Room', 'Conference Room', '2021-10-02 23:36:19', '2021-10-02 23:36:19', 'Issued'),
(1569, 'CellingSpeaker-20001', NULL, NULL, NULL, 'Celling Speaker', NULL, '1633239617.jpg', '04/09/2020, Inclusion 06 Pcs, From Limta Enterprise', 'ICT-Office', '2021-10-02 23:40:17', '2021-10-02 23:40:17', 'Issued'),
(1570, 'CellingSpeaker-20002', NULL, NULL, NULL, 'Celling Speaker', NULL, '1633239664.jpg', '04/09/2020, 06 Pcs, Conference Room', 'Conference Room', '2021-10-02 23:41:04', '2021-10-02 23:41:04', 'Issued'),
(1572, 'DA11215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-03 19:31:00', '2021-10-03 19:31:00', 'Issued'),
(1573, 'D19166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-03 19:55:14', '2021-10-03 19:55:14', 'Issued'),
(1574, 'Cartridge&Toner-21001', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633315971.jpg', 'SL-01, 11/05/2021, 04 Pcs, Purchase', 'Purchase', '2021-10-03 20:52:51', '2021-10-03 20:52:51', 'Issued'),
(1575, 'Cartridge&Toner-21002', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316040.jpg', 'SL-01, 22/05/2021, 01 Pcs, QCL', 'QCL', '2021-10-03 20:54:00', '2021-10-03 20:54:00', 'Issued'),
(1576, 'Cartridge&Toner-21003', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316101.jpg', 'SL-01, 23/05/2021, 01 Pcs, ICT', 'ICT-Office', '2021-10-03 20:55:01', '2021-10-03 20:55:01', 'Issued'),
(1577, 'Cartridge&Toner-21004', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316196.jpg', 'SL-01, 11/05/2021, 01 pcs, Medical', 'Medical', '2021-10-03 20:56:36', '2021-10-03 20:56:36', 'Issued'),
(1578, 'Cartridge&Toner-21005', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316283.jpg', 'SL-01, 27/05/2021, 01 Pcs, Manager PLG Office', 'Man Plg Office', '2021-10-03 20:58:03', '2021-10-03 20:58:03', 'Issued'),
(1579, 'Cartridge&Toner-21006', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316366.jpg', 'SL-01, 27/05/2021, 03 pcs, R&D Office', 'R & D', '2021-10-03 20:59:26', '2021-10-03 20:59:26', 'Issued'),
(1580, 'Cartridge&Toner-21007', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316452.jpg', 'SL-01, 27/05/2021, 01 pcs, QCL', 'QCL', '2021-10-03 21:00:52', '2021-10-03 21:00:52', 'Issued'),
(1581, 'Cartridge&Toner-21008', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316519.jpg', 'SL-01, 27/05/2021, 04 Pcs, ME', 'ME', '2021-10-03 21:01:59', '2021-10-03 21:02:24', 'Issued'),
(1582, 'Cartridge&Toner-21009', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316656.jpg', 'SL-01, 27/05/2021, 06 Pcs, TPT', 'TPT', '2021-10-03 21:04:16', '2021-10-03 21:06:32', 'Issued'),
(1583, 'Cartridge&Toner-21010', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316724.jpg', 'SL-01, 27/05/2021, 06 Pcs, MRO', 'MRO', '2021-10-03 21:05:24', '2021-10-03 21:05:24', 'Issued'),
(1584, 'Cartridge&Toner-21011', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316881.jpg', 'SL-01, 27/05/2021, 06 Pcs, MM', 'MM', '2021-10-03 21:08:01', '2021-10-03 21:08:01', 'Issued'),
(1585, 'Cartridge&Toner-21012', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633316950.jpg', 'SL-01, 27/05/2021, 01 Pcs, Maintenance Service', 'Service', '2021-10-03 21:09:10', '2021-10-03 21:09:10', 'Issued'),
(1586, 'Cartridge&Toner-21013', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317028.jpg', 'SL-01, 27/05/2021, 05 pcs, Maintenance DD Office', 'DD Maintenance', '2021-10-03 21:10:28', '2021-10-03 21:10:28', 'Issued'),
(1587, 'Cartridge&Toner-21014', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317098.jpg', 'SL-01, 27/05/2021, 10 Pcs, SA', 'Small Arms (SA)', '2021-10-03 21:11:38', '2021-10-03 21:11:38', 'Issued'),
(1588, 'Cartridge&Toner-21015', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317157.jpg', 'SL-01, 27/05/2021, 05 Pcs, Medical', 'Medical', '2021-10-03 21:12:37', '2021-10-03 21:12:37', 'Issued'),
(1589, 'Cartridge&Toner-21016', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317587.jpg', 'SL-01, 27/05/2021, 01 pcs, Dental', 'Medical', '2021-10-03 21:19:47', '2021-10-03 21:19:47', 'Issued'),
(1590, 'Cartridge&Toner-21017', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317687.jpg', 'SL-01, 27/05/2021, 02 Pcs, ISI', 'ISI', '2021-10-03 21:21:27', '2021-10-03 21:21:27', 'Issued'),
(1591, 'Cartridge&Toner-21018', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317762.jpg', 'SL-01, 29/05/2021, 08 pcs, Security Wings', 'Security', '2021-10-03 21:22:42', '2021-10-03 21:24:41', 'Issued'),
(1592, 'Cartridge&Toner-21019', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633317856.jpg', 'SL-01, 29/05/2021, 01 pcs, Planning', 'Planning', '2021-10-03 21:24:16', '2021-10-03 21:24:16', 'Issued'),
(1593, 'Cartridge&Toner-21020', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318119.jpg', 'SL-01, 29/05/2021, 01 pcs, PNP', 'P & P', '2021-10-03 21:28:39', '2021-10-03 21:28:39', 'Issued'),
(1594, 'Cartridge&Toner-21021', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318214.jpg', 'SL-01, 29/05/2021, 02 Pcs, Dir Planning', 'Dir PLG & maint Office', '2021-10-03 21:30:14', '2021-10-03 21:30:14', 'Issued'),
(1595, 'Cartridge&Toner-21022', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318304.jpg', 'SL-01, 29/05/2021, 07 Pcs, CTM & CTG', 'CTM', '2021-10-03 21:31:44', '2021-10-03 21:33:54', 'Issued'),
(1596, 'Cartridge&Toner-21023', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318395.jpg', 'SL-01, 30/05/2021, 01 pcs, Dir Production Office', 'DIR production Office', '2021-10-03 21:33:15', '2021-10-03 21:33:15', 'Issued'),
(1597, 'Cartridge&Toner-21024', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318516.jpg', 'SL-01, 30/05/2021, 10 Pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-03 21:35:16', '2021-10-03 21:35:16', 'Issued'),
(1598, 'Cartridge&Toner-21025', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318679.jpg', 'SL-01, 30/05/2021, 11 Pcs, Purchase', 'Purchase', '2021-10-03 21:37:59', '2021-10-03 21:37:59', 'Issued'),
(1599, 'Cartridge&Toner-21026', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318759.jpg', 'SL-01, 31/05/2021, 01 Pcs, CC R& D', 'CC R & D', '2021-10-03 21:39:19', '2021-10-03 22:16:56', 'Issued'),
(1600, 'Cartridge&Toner-21027', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318888.jpg', 'SL-01, 01/06/2021, 01 pcs, State Management', 'MAP', '2021-10-03 21:41:28', '2021-10-03 21:41:28', 'Issued'),
(1601, 'Cartridge&Toner-21028', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633318988.jpg', 'SL-01, 01/06/2021, 02 pcs, MAG Wings', 'MAG', '2021-10-03 21:43:08', '2021-10-03 21:43:08', 'Issued'),
(1602, 'Cartridge&Toner-21029', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633319097.jpg', 'SL-01, 02/06/2021, 01 Pcs, DD Admin Office', 'DD Admin', '2021-10-03 21:44:57', '2021-10-03 21:44:57', 'Issued'),
(1603, 'Cartridge&Toner-21030', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633319777.jpg', 'SL-01, 02/06/2021, 05 Pcs, HAG Office', 'HAG', '2021-10-03 21:56:17', '2021-10-03 21:56:17', 'Issued'),
(1604, 'Cartridge&Toner-21031', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633319993.jpg', 'SL-01, 03/06/2021, 02 Pcs, DD PLG Office', 'DD PlG office', '2021-10-03 21:59:53', '2021-10-03 22:16:18', 'Issued'),
(1605, 'Cartridge&Toner-21032', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633320175.jpg', 'SL-01, 03/06/2021, 01 Pcs, Dir Admin Office', 'Dir Admin & Mat', '2021-10-03 22:02:55', '2021-10-03 22:15:41', 'Issued'),
(1606, 'Cartridge&Toner-21033', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633320304.jpg', 'SL-01, 19/06/2021, 01 Pcs, Officers Record', 'Officer Record', '2021-10-03 22:05:04', '2021-10-03 22:06:03', 'Issued'),
(1607, 'Cartridge&Toner-21034', NULL, NULL, 'Cannon LBP 3300', 'Cartridge & Toner', NULL, '1633320449.jpg', 'SL-01, 15/07/2021, 01 Pcs, Officers Mess', 'Officers Mess', '2021-10-03 22:07:29', '2021-10-03 22:07:29', 'Issued'),
(1609, 'D19174', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-03 23:00:50', '2021-10-03 23:00:50', 'Issued'),
(1610, 'Cartridge&Toner-21035', NULL, NULL, 'HP-415', 'Cartridge & Toner', NULL, '1633323824.jpg', 'SL-02, 30/05/2021, 01 Pcs, Dir Production office', 'DIR production Office', '2021-10-03 23:03:44', '2021-10-03 23:05:34', 'Issued'),
(1611, 'Cartridge&Toner-21036', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633323909.jpg', 'SL-03, 11/05/2021, 03 Pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-03 23:05:09', '2021-10-03 23:05:09', 'Issued'),
(1612, 'Cartridge&Toner-21037', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633324087.jpg', 'SL-03, 11/05/2021, 02 Pcs, SA', 'Small Arms (SA)', '2021-10-03 23:08:07', '2021-10-03 23:08:07', 'Issued'),
(1613, 'Cartridge&Toner-21038', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633324172.jpg', 'SL-03, 20/05/2021, 02 Pcs, SA', 'Small Arms (SA)', '2021-10-03 23:09:32', '2021-10-03 23:09:32', 'Issued'),
(1614, 'Cartridge&Toner-21039', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633324684.jpg', 'SL-03, 22/05/2021, 01 Pcs, QCL', 'QCL', '2021-10-03 23:18:04', '2021-10-03 23:18:04', 'Issued'),
(1615, 'Cartridge&Toner-21040', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633324761.jpg', 'SL-03, 22/05/2021, 01 Pcs, TPT', 'TPT', '2021-10-03 23:19:21', '2021-10-03 23:19:21', 'Issued'),
(1616, 'Cartridge&Toner-21041', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633324841.jpg', 'SL-03, 25/05/2021, 01 Pcs, CTM & CTG', 'CTM', '2021-10-03 23:20:41', '2021-10-03 23:20:41', 'Issued'),
(1617, 'Cartridge&Toner-21042', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325118.jpg', 'Sl-03, 27/05/2021, 02 Pcs, Manager PLG Office', 'Man Plg Office', '2021-10-03 23:25:18', '2021-10-03 23:25:18', 'Issued'),
(1618, 'Cartridge&Toner-21043', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325207.jpg', 'SL-03, 27/05/2021, 06 Pcs, MC', 'MC', '2021-10-03 23:26:47', '2021-10-03 23:26:47', 'Issued'),
(1619, 'Cartridge&Toner-21044', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325519.jpg', 'SL-03, 27/05/2021, 03 Pcs, R&D Office', 'R & D', '2021-10-03 23:31:59', '2021-10-03 23:31:59', 'Issued'),
(1620, 'Cartridge&Toner-21045', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325730.jpg', 'SL-03, 27/05/2021, 01 Pcs, ME', 'QCL', '2021-10-03 23:35:30', '2021-10-03 23:35:30', 'Issued'),
(1621, 'Cartridge&Toner-21046', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325826.jpg', 'SL-03, 27/05/2021, 02 pcs, TPT', 'TPT', '2021-10-03 23:37:06', '2021-10-03 23:37:06', 'Issued'),
(1622, 'Cartridge&Toner-21047', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633325920.jpg', 'SL-03, 27/05/2021, 04 Pcs, Service', 'Service Office', '2021-10-03 23:38:40', '2021-10-03 23:38:40', 'Issued'),
(1623, 'Cartridge&Toner-21048', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633326069.jpg', 'SL-03, 27/05/2021, 05 Pcs, DD Service Office', 'Service Office', '2021-10-03 23:41:09', '2021-10-03 23:41:09', 'Issued'),
(1624, 'Cartridge&Toner-21049', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633326153.jpg', 'SL-03, 27/05/2021, 02 pcs, SA', 'Small Arms (SA)', '2021-10-03 23:42:33', '2021-10-03 23:42:33', 'Issued'),
(1625, 'Cartridge&Toner-21050', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633326243.jpg', 'SL-03, 27/05/2021, 02 Pcs, ISI', 'ISI', '2021-10-03 23:44:03', '2021-10-03 23:44:03', 'Issued'),
(1626, 'Cartridge&Toner-21051', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633326789.jpg', 'SL-03, 29/05/2021, 03 Pcs, Planning', 'Planning', '2021-10-03 23:53:09', '2021-10-03 23:53:09', 'Issued'),
(1627, 'Cartridge&Toner-21052', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633326912.jpg', 'SL-03, 29/05/2021, 03 Pcs, P&P', 'P & P', '2021-10-03 23:55:12', '2021-10-03 23:55:12', 'Issued'),
(1628, 'Cartridge&Toner-21053', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327093.jpg', 'SL-03, 29/05/2021, 05 Pcs, CTM & CTG', 'CTM', '2021-10-03 23:58:13', '2021-10-03 23:58:13', 'Issued'),
(1629, 'Cartridge&Toner-21054', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327215.jpg', 'SL-03, 30/05/2021, 01 Pcs, Dir Production Office', 'DIR production Office', '2021-10-04 00:00:15', '2021-10-04 00:00:15', 'Issued'),
(1630, 'Cartridge&Toner-21055', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327293.jpg', 'SL-03, 30/05/2021, 02 pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-04 00:01:33', '2021-10-04 00:01:33', 'Issued'),
(1631, 'Cartridge&Toner-21056', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327404.jpg', 'SL-03, 30/05/2021, 23 Pcs, Purchase', 'Purchase', '2021-10-04 00:03:24', '2021-10-04 00:03:24', 'Issued'),
(1632, 'Cartridge&Toner-21114', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327482.jpg', 'SL-03, 02/06/2021, 02 Pcs, HAG Office', 'HAG', '2021-10-04 00:04:42', '2021-10-09 01:10:55', 'Issued'),
(1633, 'Cartridge&Toner-21057', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327570.jpg', 'SL-03, 03/06/2021, 01 Pcs, DD PlG Office', 'DD PlG office', '2021-10-04 00:06:10', '2021-10-04 00:12:09', 'Issued'),
(1634, 'Cartridge&Toner-21058', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327668.jpg', 'SL-03, 19/06/2021, 01 Pcs, Comdt Office', 'Comdt BOF', '2021-10-04 00:07:48', '2021-10-04 00:07:48', 'Issued'),
(1635, 'Cartridge&Toner-21059', NULL, NULL, 'HP M-402dn/26(A)', 'Cartridge & Toner', NULL, '1633327738.jpg', 'SL-03, 30/06/2021, 02 Pcs, Workman Record', 'Workman Record', '2021-10-04 00:08:58', '2021-10-04 00:08:58', 'Issued'),
(1636, 'Cartridge&Toner-21060', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328039.jpg', 'SL-04, 11/05/2021, 01 Pcs, Purchase', 'Purchase', '2021-10-04 00:13:59', '2021-10-04 00:13:59', 'Issued'),
(1637, 'Cartridge&Toner-21061', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328109.jpg', 'SL-04, 27/05/2021, 01 pcs, Budget Wings', 'Budget', '2021-10-04 00:15:09', '2021-10-04 00:15:09', 'Issued'),
(1638, 'Cartridge&Toner-21062', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328183.jpg', 'SL-04, 30/05/2021, 02 Pcs, Purchase', 'Purchase', '2021-10-04 00:16:23', '2021-10-04 00:16:23', 'Issued'),
(1639, 'Cartridge&Toner-21063', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328255.jpg', 'SL-04, 01/06/2021, 01 pcs, Welfare', 'Welfare', '2021-10-04 00:17:35', '2021-10-04 00:17:35', 'Issued'),
(1640, 'Cartridge&Toner-21064', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328336.jpg', 'SL-04, 03/10/2021, Inclusion 06 pc', 'ICT-Office', '2021-10-04 00:18:56', '2021-10-04 00:18:56', 'Issued'),
(1641, 'Cartridge&Toner-21065', NULL, NULL, 'HP M-404dn/76(A)', 'Cartridge & Toner', NULL, '1633328410.jpg', 'Sl-04, 04/10/2021, 02 Pcs, Main Store', 'Main store', '2021-10-04 00:20:10', '2021-10-04 00:20:10', 'Issued'),
(1642, 'Cartridge&Toner-21066', NULL, NULL, 'HP MFP M26A', 'Cartridge & Toner', NULL, '1633328502.jpg', 'SL-05, 30/05/2021, 02 pcs, Purchase', 'Purchase', '2021-10-04 00:21:42', '2021-10-04 00:21:42', 'Issued'),
(1643, 'Cartridge&Toner-21067', NULL, NULL, 'Epson M-2140', 'Cartridge & Toner', NULL, '1633328587.jpg', 'SL-06, 30/05/2021, Dir Production Office', 'DIR production Office', '2021-10-04 00:23:07', '2021-10-04 00:23:07', 'Issued'),
(1644, 'Cartridge&Toner-21068', NULL, NULL, 'Epson M-2140', 'Cartridge & Toner', NULL, '1633328656.jpg', 'Sl-06, 30/05/2021, 02 pcs, Purchase', 'Purchase', '2021-10-04 00:24:16', '2021-10-04 00:24:16', 'Issued'),
(1645, 'Cartridge&Toner-21069', NULL, NULL, 'Epson M-2140', 'Cartridge & Toner', NULL, '1633328805.jpg', 'SL-06, 22/05/2021, 01 pcs, SA', 'Small Arms (SA)', '2021-10-04 00:26:45', '2021-10-04 00:26:45', 'Issued'),
(1646, 'Cartridge&Toner-21070', NULL, NULL, 'Brother DCP T-510W', 'Cartridge & Toner', NULL, '1633328931.jpg', 'SL-07, 02/06/2021, 01 pcs, DD Admin Office', 'DD Admin', '2021-10-04 00:28:51', '2021-10-04 00:28:51', 'Issued'),
(1647, 'Cartridge&Toner-21071', NULL, NULL, 'Brother DCP T-510W', 'Cartridge & Toner', NULL, '1633329316.jpg', 'SL-07, 03/06/2021, 01 pcs, Dir Admin Office', 'DD Admin & Mat', '2021-10-04 00:35:16', '2021-10-04 00:35:16', 'Issued'),
(1648, 'Cartridge&Toner-21072', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329425.jpg', 'SL-08, 19/05/2021, 01 pcs, CTM & CTG', 'CTM', '2021-10-04 00:37:05', '2021-10-04 00:37:05', 'Issued'),
(1649, 'Cartridge&Toner-21073', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329550.jpg', 'SL-08, 27/05/2021, 01 Pcs, QCL', 'QCL', '2021-10-04 00:39:10', '2021-10-04 00:39:10', 'Issued'),
(1650, 'Cartridge&Toner-21074', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329595.jpg', 'Sl-08, 27/05/2021, 01 pcs, ME', 'ME', '2021-10-04 00:39:55', '2021-10-04 00:39:55', 'Issued'),
(1651, 'Cartridge&Toner-21075', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329679.jpg', 'SL-08, 27/05/2021, 05 Pcs, MM', 'MM', '2021-10-04 00:41:19', '2021-10-04 00:41:19', 'Issued'),
(1652, 'Cartridge&Toner-21076', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329747.jpg', 'SL-08, 27/05/2021, 03 Pcs, SA', 'Small Arms (SA)', '2021-10-04 00:42:27', '2021-10-04 00:42:27', 'Issued'),
(1653, 'Cartridge&Toner-21077', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329828.jpg', 'SL-08, 27/05/2021, 01 Pcs, Fire Service', 'Fire', '2021-10-04 00:43:48', '2021-10-04 00:43:48', 'Issued'),
(1654, 'Cartridge&Toner-21078', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329887.jpg', '29/05/2021, 04 Pcs, Security Wings', 'Security', '2021-10-04 00:44:47', '2021-10-04 00:44:47', 'Issued'),
(1655, 'Cartridge&Toner-21079', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633329947.jpg', 'SL-08, 29/05/2021, CTM & CTG', 'CTM', '2021-10-04 00:45:47', '2021-10-04 00:45:47', 'Issued'),
(1656, 'Cartridge&Toner-21080', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633330017.jpg', 'SL-08, 30/05/2021, 02 Pcs, Purchase', 'Purchase', '2021-10-04 00:46:57', '2021-10-04 00:46:57', 'Issued'),
(1657, 'Cartridge&Toner-21081', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633330120.jpg', 'SL-08, 01/06/2021, 01 Pcs, ICT', 'ICT-Office', '2021-10-04 00:48:40', '2021-10-04 00:48:40', 'Issued'),
(1658, 'Cartridge&Toner-21082', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633330243.jpg', 'SL-08, 02/06/2021, 01 Pcs, HAG Office', 'HAG', '2021-10-04 00:50:43', '2021-10-04 00:50:43', 'Issued'),
(1659, 'Cartridge&Toner-21083', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633330322.jpg', 'Sl-08, 19/06/2021, 02 Pcs, Officers Record', 'Officer Record', '2021-10-04 00:52:02', '2021-10-04 00:52:02', 'Issued'),
(1660, 'Cartridge&Toner-21084', NULL, NULL, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', 'Cartridge & Toner', NULL, '1633330434.jpg', 'SL-08, 20/09/2021, 01 Pcs, MAP', 'MAP', '2021-10-04 00:53:54', '2021-10-04 00:53:54', 'Issued'),
(1661, 'Cartridge&Toner-21085', NULL, NULL, 'Epson L-130, L220', 'Cartridge & Toner', NULL, '1633330877.jpg', 'SL-09, 27/05/2021, DD Maintenance Office', 'DD Maintenance', '2021-10-04 01:01:17', '2021-10-04 01:01:17', 'Issued'),
(1662, 'Cartridge&Toner-21086', NULL, NULL, 'Epson L-130, L220', 'Cartridge & Toner', NULL, '1633331005.jpg', 'SL-09, 29/05/2021, 02 Pcs, Security Wings', 'Security', '2021-10-04 01:03:25', '2021-10-04 01:03:25', 'Issued'),
(1663, 'Cartridge&Toner-21087', NULL, NULL, 'Epson L-130, L220', 'Cartridge & Toner', NULL, '1633331185.jpg', 'SL-09, 29/05/2021, 01 Pcs, Dir Planning', 'Dir PLG & maint Office', '2021-10-04 01:06:25', '2021-10-04 01:06:25', 'Issued'),
(1664, 'Cartridge&Toner-21088', NULL, NULL, 'Samsung ML-1660, ML-1866', 'Cartridge & Toner', NULL, '1633331758.jpg', 'SL-10, 29/05/2021, 02 Pcs, Dir Planning Office', 'Dir PLG & maint Office', '2021-10-04 01:15:58', '2021-10-04 01:15:58', 'Issued'),
(1665, 'Cartridge&Toner-21089', NULL, NULL, 'Samsung ML-1660, ML-1866', 'Cartridge & Toner', NULL, '1633331840.jpg', 'SL-10, 27/05/2021, 02 Pcs, SA', 'Small Arms (SA)', '2021-10-04 01:17:20', '2021-10-04 01:17:20', 'Issued'),
(1666, 'Cartridge&Toner-21090', NULL, NULL, 'Epson L-3110', 'Cartridge & Toner', NULL, '1633331978.jpg', 'SL-11, 29/05/2021, 01 Pcs, BOF Golf Club', 'Golf Club', '2021-10-04 01:19:38', '2021-10-04 01:19:38', 'Issued'),
(1667, 'Cartridge&Toner-21091', NULL, NULL, 'Epson LQ-310', 'Cartridge & Toner', NULL, '1633332300.jpg', 'SL-12, 30/05/2021, 18 Pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-04 01:25:00', '2021-10-04 01:25:00', 'Issued'),
(1668, 'Cartridge&Toner-21092', NULL, NULL, 'Cannon NPG-28', 'Cartridge & Toner', NULL, '1633332415.jpg', 'SL-13, 30/05/2021, 02 Pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-04 01:26:55', '2021-10-04 01:26:55', 'Issued'),
(1669, 'Cartridge&Toner-21093', NULL, NULL, 'HP Pro M-210n', 'Cartridge & Toner', NULL, '1633332636.jpg', 'Sl-14, 27/05/2021, 08 Pcs, Staff Record', 'Staff Record', '2021-10-04 01:30:36', '2021-10-04 01:30:36', 'Issued'),
(1670, 'Cartridge&Toner-21094', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633395998.jpg', 'SL-15, 11/05/2021, 01 Pcs, Purchase', 'Purchase', '2021-10-04 19:06:38', '2021-10-04 19:09:00', 'Issued'),
(1671, 'Cartridge&Toner-21095', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396083.jpg', 'SL-15, 29/05/2021, 02 Pcs, Security Wings', 'Security', '2021-10-04 19:08:03', '2021-10-04 19:08:03', 'Issued'),
(1672, 'Cartridge&Toner-21096', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396281.jpg', 'SL-15, 30/05/2021, 01 Pcs, Dir Production Office', 'DIR production Office', '2021-10-04 19:11:21', '2021-10-04 19:11:21', 'Issued'),
(1673, 'Cartridge&Toner-21097', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396348.jpg', 'SL-15, 30/05/2021, 03 Pcs, SAA', 'Small Arms Ammo (SAA)', '2021-10-04 19:12:28', '2021-10-04 19:12:28', 'Issued'),
(1674, 'Cartridge&Toner-21098', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396440.jpg', 'SL-15, 30/05/2021, 02Pcs, Purchase', 'Purchase', '2021-10-04 19:14:00', '2021-10-04 19:14:00', 'Issued'),
(1675, 'Cartridge&Toner-21099', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396527.jpg', 'SL-15, 31/05/2021, 01 Pcs, CC R&D', 'CC R & D', '2021-10-04 19:15:27', '2021-10-04 19:15:27', 'Issued'),
(1676, 'Cartridge&Toner-21100', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396695.jpg', 'SL-15, 01/06/2021, 04 Pcs, State Management', 'MAP', '2021-10-04 19:18:15', '2021-10-04 19:18:15', 'Issued'),
(1677, 'Cartridge&Toner-21101', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396813.jpg', 'SL-15, 05/07/2021, 01 Pcs, Budget Wings', 'Budget', '2021-10-04 19:20:13', '2021-10-04 19:20:13', 'Issued'),
(1678, 'Cartridge&Toner-21102', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396908.jpg', 'SL-15, 11/08/2021, 01 Pcs, R&T', 'R & T', '2021-10-04 19:21:48', '2021-10-04 19:21:48', 'Issued'),
(1679, 'Cartridge&Toner-21103', NULL, NULL, 'Toshiba e Studio-4518A/T-5018C', 'Cartridge & Toner', NULL, '1633396983.jpg', 'SL-15, 13/09/2021, 01 Pcs, Finance', 'Finance', '2021-10-04 19:23:03', '2021-10-04 19:23:03', 'Issued'),
(1680, 'Cartridge&Toner-21104', NULL, NULL, 'Toshiba E Studio-2523A/T-2323C', 'Cartridge & Toner', NULL, '1633397108.jpg', 'SL-16, 27/05/2021, 01 Pcs, Small Arms (SA)', 'Small Arms (SA)', '2021-10-04 19:25:08', '2021-10-04 19:25:08', 'Issued'),
(1681, 'Cartridge&Toner-21105', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397357.jpg', 'SL-18, 29/05/201, 03 Pcs, R&D Office', 'R & D', '2021-10-04 19:29:17', '2021-10-04 19:29:17', 'Issued'),
(1682, 'Cartridge&Toner-21106', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397622.jpg', 'SL-18, 27/05/2021, 06 Pcs, DD Maintenance', 'DD Maintenance', '2021-10-04 19:33:42', '2021-10-04 19:33:42', 'Issued'),
(1683, 'Cartridge&Toner-21107', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397730.jpg', 'SL-08, 02/06/2021, HAG Office', 'HAG', '2021-10-04 19:35:30', '2021-10-04 19:35:30', 'Issued'),
(1684, 'Cartridge&Toner-21108', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397806.jpg', 'SL-18, 27/05/2021, 02 Pcs, QCL', 'QCL', '2021-10-04 19:36:46', '2021-10-04 19:36:46', 'Issued'),
(1685, 'Cartridge&Toner-21109', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397874.jpg', 'SL-18, 27/05/2021, 02 Pcs, ISI', 'ISI', '2021-10-04 19:37:54', '2021-10-04 19:37:54', 'Issued'),
(1686, 'Cartridge&Toner-21110', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633397960.jpg', 'SL-19, 27/05/2021, 02 Pcs, R&D Office', 'R & D', '2021-10-04 19:39:20', '2021-10-04 19:39:20', 'Issued'),
(1687, 'Cartridge&Toner-21111', NULL, NULL, 'Toshiba E Studio-2306/ T-2507P', 'Cartridge & Toner', NULL, '1633398042.jpg', 'SL-19, 27/05/2021, 04 Pcs, Staff Record', 'Staff Record', '2021-10-04 19:40:42', '2021-10-04 19:40:42', 'Issued'),
(1688, 'Cartridge&Toner-21112', NULL, NULL, 'M-180n/ ML-205', 'Cartridge & Toner', NULL, '1633398146.jpg', 'SL-21, 27/05/2021, 01 Pcs, QCL', 'QCL', '2021-10-04 19:42:26', '2021-10-04 19:42:26', 'Issued'),
(1689, 'OnlineUPS-20001', 'UPS', 'Online UPS', '20-KVA', NULL, NULL, '1633404378.jpg', '20/08/2020, Inclusion 01 Pcs, From Arra Tech', 'ICT-Office', '2021-10-04 21:26:18', '2021-10-04 21:26:18', 'Issued'),
(1690, 'OnlineUPS-20002', 'UPS', 'Online UPS', '20-KVA', NULL, NULL, '1633404480.jpg', '12/09/2020, 01 Pcs,  ICT Cell Server Work Purpose', 'ICT-Office', '2021-10-04 21:28:00', '2021-10-04 21:28:00', 'Issued'),
(1691, 'OnlineUPS-21003', 'UPS', 'Online UPS', '20-KVA', NULL, NULL, '1633404580.jpg', '13/06/2021, Inclusion 01 Pcs, From Global Brand Ltd', 'ICT-Office', '2021-10-04 21:29:40', '2021-10-04 21:29:40', 'Issued'),
(1692, 'OnlineUPS-21004', 'UPS', 'Online UPS', '20-KVA', NULL, NULL, '1633404687.jpg', '14/06/2021, 01 pcs, Central Monitoring Cell (CMC)', 'Security', '2021-10-04 21:31:27', '2021-10-04 21:31:27', 'Issued'),
(1693, 'OnlineUPS-21005', 'UPS', 'Online UPS', '10-KVA', NULL, NULL, '1633404785.jpg', '13/06/2021, Inclusion 01 Pcs, From Global Brand Ltd', 'ICT-Office', '2021-10-04 21:33:05', '2021-10-04 21:33:05', 'Issued'),
(1694, 'OnlineUPS-21006', 'UPS', 'Online UPS', '10-KVA', NULL, NULL, '1633404873.jpg', '14/06/2021, 01 Pcs, Ullash Monitoring Display', 'Residential', '2021-10-04 21:34:33', '2021-10-04 21:34:33', 'Issued'),
(1695, 'Casst(Tape)-21001', NULL, NULL, NULL, 'Casst (Tape)', NULL, '1633412357.jpg', '16/06/2021, Inclusion 01 Pcs, From Ryans IT Ltd', 'ICT-Office', '2021-10-04 23:39:17', '2021-10-04 23:39:17', 'Issued'),
(1696, 'Casst(Tape)-21002', NULL, NULL, NULL, 'Casst (Tape)', NULL, '1633412529.jpg', '17/06/2021, 01 Pcs, ICT Printer Machine Use', 'ICT-Office', '2021-10-04 23:42:09', '2021-10-04 23:42:09', 'Issued'),
(1697, 'Casst(Tape)-21003', NULL, NULL, NULL, 'Casst (Tape)', NULL, '1633412619.jpg', '18/08/2021, Inclusion 10 Pcs, Techono Test (From MRO)', 'ICT-Office', '2021-10-04 23:43:39', '2021-10-04 23:43:39', 'Issued'),
(1698, 'Casst(Tape)-21004', NULL, NULL, NULL, 'Casst (Tape)', NULL, '1633416321.jpg', '28/09/2021, 01 Pcs, ICT Office', 'ICT-Office', '2021-10-04 23:44:42', '2021-10-05 00:45:21', 'Issued'),
(1699, 'Test-Product-101', NULL, NULL, NULL, NULL, NULL, '1633567984.jpg', 'This is a test product', NULL, '2021-10-06 18:51:43', '2021-10-06 18:53:04', 'Issued'),
(1700, 'ICT-D19006', 'Desktop', NULL, NULL, NULL, NULL, '1633921819.jpg', 'Damage, Not workable.', 'PKS', '2021-10-10 21:10:19', '2021-10-10 21:10:19', 'Issued'),
(1701, 'ICT-D19213', 'Desktop', NULL, '2 Duo', NULL, 'Delux', '1633922118.jpg', NULL, 'PKS', '2021-10-10 21:15:18', '2021-10-10 21:15:18', 'Issued'),
(1702, 'ICT-D19013', 'Desktop', NULL, 'Core i3', NULL, NULL, '1633922202.jpg', NULL, 'PKS', '2021-10-10 21:16:42', '2021-10-10 21:16:42', 'Issued'),
(1703, 'ICT-D19231', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1633922240.jpg', NULL, 'PKS', '2021-10-10 21:17:20', '2021-10-10 21:17:20', 'Issued'),
(1704, 'ICT-D19237', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1633922274.jpg', NULL, 'PKS', '2021-10-10 21:17:54', '2021-10-10 21:17:54', 'Issued');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`, `productStatus`) VALUES
(1705, 'ICT-D19202', 'Desktop', NULL, 'Core i3', NULL, NULL, '1633922323.jpg', 'Damage, Not workable.', 'PKS', '2021-10-10 21:18:43', '2021-10-10 21:18:43', 'Issued'),
(1706, 'ICT-D19243', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1633922358.jpg', NULL, 'PKS', '2021-10-10 21:19:18', '2021-10-10 21:19:18', 'Issued'),
(1707, 'ICT-D19219', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1633922383.jpg', NULL, 'PKS', '2021-10-10 21:19:43', '2021-10-10 21:19:43', 'Issued'),
(1708, 'projector-20013', 'Projector', NULL, NULL, NULL, 'Hitachi', '1633932922.jpg', 'Model: ED-32x', 'PKS', '2021-10-10 21:23:38', '2021-10-11 00:15:22', 'Issued'),
(1709, 'D21003', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1633933343.jpg', NULL, 'ICT', '2021-10-11 00:20:45', '2021-10-11 00:22:23', 'Issued'),
(1710, 'D19002', 'Desktop', NULL, 'Core i5', NULL, 'Vallue top', '1634005989.jpg', 'SAE Nurul Bari Sir,', 'ICT', '2021-10-11 20:33:09', '2021-10-11 20:33:09', 'Issued'),
(1711, 'W0028', 'Workstation PC', NULL, 'Core i5', NULL, 'Vallue top', '1634006943.jpg', 'ERP Room', 'ICT', '2021-10-11 20:49:03', '2021-10-11 20:49:03', 'Issued'),
(1712, 'W0025', 'Workstation PC', NULL, 'Core i7', NULL, 'Vallue top', '1634006972.jpg', 'ERP Room', 'ICT', '2021-10-11 20:49:32', '2021-10-11 20:49:32', 'Issued'),
(1713, 'W19283', 'Workstation PC', NULL, 'Core i5', NULL, 'Vallue top', '1634007029.jpg', 'AD Server', 'ICT', '2021-10-11 20:50:29', '2021-10-11 20:50:29', 'Issued'),
(1714, 'D19102', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Clone', '1634007404.jpg', 'NOC Room', 'ICT', '2021-10-11 20:56:44', '2021-10-11 20:56:44', 'Issued'),
(1715, 'D21001', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1634021019.jpg', 'HT Shop', 'Small Arms (SA)', '2021-10-12 00:37:27', '2021-10-12 00:43:39', 'Issued'),
(1716, 'W21002', 'Workstation PC', NULL, 'Core i7', NULL, 'Work Station', '1634020832.jpg', 'ETL Project. Manager Sahina', 'R & D', '2021-10-12 00:40:32', '2021-10-12 00:40:32', 'Issued'),
(1717, 'D19308', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1634021128.jpg', 'TNT Filling', 'HAG', '2021-10-12 00:45:28', '2021-10-12 00:45:28', 'Issued'),
(1718, 'W20001', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021204.jpg', 'RM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:46:44', '2021-10-12 00:46:44', 'Issued'),
(1719, 'W20002', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021255.jpg', 'RAM-3, Training Center.', 'Small Arms (SA)', '2021-10-12 00:47:35', '2021-10-12 00:47:35', 'Issued'),
(1720, 'W20003', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021365.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:49:25', '2021-10-12 00:49:25', 'Issued'),
(1721, 'W20004', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021404.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:50:04', '2021-10-12 00:50:04', 'Issued'),
(1722, 'W20005', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021440.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:50:40', '2021-10-12 00:50:40', 'Issued'),
(1723, 'W20006', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021470.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:51:10', '2021-10-12 00:51:10', 'Issued'),
(1724, 'W20007', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021505.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:51:45', '2021-10-12 00:51:45', 'Issued'),
(1725, 'W20008', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021546.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:52:26', '2021-10-12 00:52:26', 'Issued'),
(1726, 'W20009', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634021575.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:52:55', '2021-10-12 00:52:55', 'Issued'),
(1727, 'W0035', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634093862.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:53:53', '2021-10-12 20:57:42', 'Issued'),
(1728, 'W0036', 'Desktop', NULL, 'Core i7', NULL, 'Work Station', '1634093902.jpg', 'RAM-3, Training Center', 'Small Arms (SA)', '2021-10-12 00:55:29', '2021-10-12 20:58:22', 'Issued'),
(1729, 'MobilePhone-21073', 'Phone', 'Mobile Phone', NULL, NULL, 'Nokia 106', NULL, '21/10/21 ( NOC)', 'ICT', '2021-10-29 19:33:17', '2022-03-11 23:14:36', 'Issued'),
(1730, 'MobilePhone-21074', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, NULL, 'Return M21 Mobile Phone  at 27/10/2021', 'DD SA', '2021-10-29 19:41:37', '2021-10-29 19:41:37', 'Issued'),
(1731, 'MobilePhone-21075', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, NULL, 'DD SA To OIC ICT CELL ( 28-10-2021 )', 'OIC ICT cell', '2021-10-29 19:46:10', '2021-10-29 19:46:10', 'Issued'),
(1732, 'ICT-L-0002', 'Laptop', 'Tablet PC With Keyboard', '16 Gb', NULL, 'HP', NULL, 'Deputy commandant  (kaiser Sir ) , 02-07-2021\r\nReturn(13-11-2021)', 'ICT Stock', '2021-10-30 19:24:14', '2021-11-21 21:30:34', 'In Stock'),
(1733, 'MobilePhone-21076', 'Phone', 'Mobile Phone', NULL, 'M21', NULL, NULL, 'Major Ahsan Sir (GSO-2) Date : 01-11-2021', 'GSO-2', '2021-11-01 19:28:35', '2021-11-01 19:28:35', 'Issued'),
(1734, 'L-21005', 'Laptop', NULL, 'Core i7', NULL, 'HP', NULL, 'Generation : 11th,  Comdt ( Fund )', 'Comdt BOF', '2021-11-02 23:14:06', '2021-11-02 23:36:44', 'Issued'),
(1735, 'L-19032', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, 'Generation : 8th ,\r\nBrig Mahbub Rasel', 'Dir PLG & maint Office', '2021-11-02 23:18:20', '2021-11-02 23:18:20', 'Issued'),
(1736, 'Monitor-21022', 'Monitor', NULL, NULL, NULL, 'Work Station', NULL, 'CMC Room NVR perpous(24-10-2021)', 'ICT Stock', '2021-11-13 19:25:22', '2021-11-29 20:33:51', 'In Stock'),
(1737, 'ICT-M21001', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'OIC,ICT( 11/11/2021 )(HP-M22f) Return Date : (24/11/21)', 'ICT Stock', '2021-11-13 19:26:59', '2021-11-24 19:18:02', 'In Stock'),
(1738, 'ICT-M21002', 'Monitor', NULL, NULL, NULL, 'HP', NULL, '13/11/2021 (01 pcs) OIC , ICT (M22f)', 'OIC ICT cell', '2021-11-13 19:28:44', '2021-11-20 20:44:37', 'Issued'),
(1739, 'R21043', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, 'Date : 21/10/2021(1pcs) CM . CNC Shop', 'CM', '2021-11-13 21:54:27', '2021-11-13 21:54:27', 'Issued'),
(1741, 'L-21006', 'Laptop', NULL, NULL, NULL, 'Pentium', NULL, 'Return(14/11/2021) Laptop Sony Intel Pentium(Comdt)', 'ICT Stock', '2021-11-14 00:19:57', '2021-11-21 21:15:44', 'In Stock'),
(1742, 'L-21007', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, 'Return (14/11/2021) 7 Gen (Comdt)', 'ICT Stock', '2021-11-14 00:21:54', '2021-11-21 21:16:13', 'In Stock'),
(1743, 'Pendrive-21053', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'Dir admin & Matt office', 'Dir Admin & Mat', '2021-11-17 19:46:27', '2021-11-17 19:46:27', 'Issued'),
(1744, 'ICT-M21003', 'Monitor', NULL, NULL, NULL, 'HP', NULL, '13/11/2021 HP (M22f) Maj Rakib Sir', 'OIC ICT cell', '2021-11-20 20:45:54', '2021-11-20 20:45:54', 'Issued'),
(1745, 'RaspPy-21001', 'Microprocessor', NULL, NULL, NULL, NULL, NULL, 'with HDMI Cable ,  Adapter , Date : 17/10/2021', 'OIC ICT cell', '2021-11-21 19:32:39', '2021-11-21 19:55:41', 'Issued'),
(1746, 'L-21008', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, '10 Gen (20/11/21) Dir Admin & Matt : Tafhimul Islam', 'Dir Admin & Mat', '2021-11-21 21:10:40', '2021-11-21 21:10:40', 'Issued'),
(1747, 'D-21004', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, 'processor :  9th gen , welfare  office (Date : 22/11/2021)', 'Welfare', '2021-11-23 20:02:18', '2021-11-23 20:05:43', 'Issued'),
(1748, 'D-21006', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, '9th gen  Receive Control office ( Date : 22/11/2021)', 'Receive Control', '2021-11-23 20:04:58', '2021-11-23 20:04:58', 'Issued'),
(1749, 'D-21005', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, 'Issue : 22/11/2021 , Artilari shell project  , manager (Noor Nabi sir)', 'HAG', '2021-11-23 20:12:08', '2021-11-23 20:12:08', 'Issued'),
(1750, 'P-21006', 'Printer', NULL, NULL, NULL, 'HP Pro', NULL, 'HP Pro 404 dn , (Issue Date : 22/11/2021)', 'DD Admin & Mat', '2021-11-23 20:16:31', '2021-11-23 20:16:31', 'Issued'),
(1751, 'P-21007', 'Printer', NULL, NULL, NULL, 'HP Pro', NULL, 'Issue date : 22/11 /21 Artilari shell project Model ( HP PRO 404 dn)', 'HAG', '2021-11-23 20:18:29', '2021-11-23 20:21:19', 'Issued'),
(1752, 'P-21008', 'Printer', NULL, NULL, NULL, 'HP Pro', NULL, 'Issue Date : 23/11/21 ,  HP PRO 404 dn office', 'MC', '2021-11-23 20:20:46', '2021-11-23 20:20:46', 'Issued'),
(1753, 'P-21009', 'Printer', NULL, NULL, NULL, 'HP Pro', NULL, 'Issue Date : 23/11/21 Model  (HP PRO 404 dn) Office Main Store', 'Main store', '2021-11-23 20:22:54', '2021-11-23 20:22:54', 'Issued'),
(1754, 'P-21010', 'Printer', NULL, NULL, NULL, 'HP Pro', NULL, 'Issue : 24/ 11/21 Model (HP Pro 404 dn)', 'Workman Record', '2021-11-23 20:25:07', '2021-11-23 20:25:07', 'Issued'),
(1755, 'test-desk122', 'Desktop', 'Clone Desktop', 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-11-23 22:53:48', '2021-11-23 22:53:48', 'In Stock'),
(1756, 'L-21009', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, '10 Gen , Issuedate : (23/11/21) (Lt Col Samira) \r\nReturn Date : 7/12/2021\r\nIct Using', 'ICT', '2021-11-24 19:25:33', '2022-01-29 20:30:43', 'Issued'),
(1757, 'ICT-Ph19025', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637995717.jpg', NULL, 'ICT-Office', '2021-11-27 00:16:02', '2021-11-27 00:48:37', 'Issued'),
(1758, 'ICT-Ph19021', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637993847.jpg', NULL, 'ICT Stock', '2021-11-27 00:17:27', '2021-11-30 01:55:40', 'In Stock'),
(1759, 'ICT-Ph19016', 'Photocopier', NULL, 'Toshiba E Studio-3008A', NULL, 'Toshiba-estud', '1637993914.jpg', NULL, 'Receive Control', '2021-11-27 00:18:34', '2021-11-27 00:18:34', 'Repair Cell'),
(1760, 'ICT-Ph19028', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637993963.jpg', NULL, 'Main store', '2021-11-27 00:19:23', '2021-11-27 00:19:23', 'Issued'),
(1761, 'Ph-19023', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994025.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-11-27 00:20:25', '2021-11-27 00:20:25', 'Issued'),
(1762, 'Ph-19024', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994082.jpg', NULL, 'CC R & D', '2021-11-27 00:21:22', '2021-11-27 00:21:22', 'Issued'),
(1763, 'Ph-19027', 'Photocopier', NULL, 'Toshiba E Studio-3008A', NULL, 'Toshiba-estud', '1637994156.jpg', NULL, 'MRO', '2021-11-27 00:22:36', '2021-11-27 00:22:36', 'Issued'),
(1764, 'Ph-19026', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994203.jpg', NULL, 'Security', '2021-11-27 00:23:23', '2021-11-27 00:23:23', 'Issued'),
(1765, 'Ph-19012', NULL, NULL, 'Toshiba E Studio-2303A', NULL, 'Toshiba-estud', '1637994252.jpg', NULL, 'TPT', '2021-11-27 00:24:12', '2021-11-27 00:24:12', 'Issued'),
(1766, 'Ph-19012', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994310.jpg', NULL, 'TPT', '2021-11-27 00:25:10', '2021-11-27 01:30:12', 'Issued'),
(1767, 'Ph-19020', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994361.jpg', NULL, 'Residential', '2021-11-27 00:26:01', '2021-11-27 00:26:01', 'Issued'),
(1768, 'Ph-19019', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994406.jpg', NULL, 'Finance', '2021-11-27 00:26:46', '2021-11-27 00:26:46', 'Issued'),
(1769, 'Ph-19018', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994438.jpg', NULL, NULL, '2021-11-27 00:27:18', '2021-11-27 00:27:18', 'Issued'),
(1770, 'Ph-19009', 'Photocopier', NULL, 'Toshiba E Studio-2306', NULL, 'Toshiba-estud', '1637994496.jpg', NULL, 'DD Maintenance', '2021-11-27 00:28:16', '2021-11-27 00:28:16', 'Issued'),
(1771, 'Ph-19001', 'Photocopier', NULL, 'Toshiba E Studio 2006', NULL, 'Toshiba-estud', '1637994582.jpg', NULL, 'Comdt', '2021-11-27 00:29:42', '2021-11-27 00:29:42', 'Issued'),
(1772, 'Ph-19006', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637994715.jpg', NULL, 'Purchase', '2021-11-27 00:31:55', '2021-11-27 00:31:55', 'Issued'),
(1773, 'Ph-19021', 'Photocopier', NULL, 'Toshiba E Studio-3008A', NULL, 'Toshiba-estud', '1637994766.jpg', NULL, 'R & D', '2021-11-27 00:32:46', '2021-11-27 00:32:46', 'Issued'),
(1774, 'Ph-19014', 'Photocopier', NULL, 'Toshiba E Studio-3008A', NULL, 'Toshiba-estud', '1637994886.jpg', NULL, 'Staff Record', '2021-11-27 00:34:46', '2021-11-27 00:34:46', 'Issued'),
(1775, 'Ph-19010', NULL, NULL, 'Canon IRA 3530i', NULL, 'Canon', '1637995062.jpg', NULL, 'DD Maintenance', '2021-11-27 00:37:42', '2021-11-27 00:37:42', 'Issued'),
(1776, 'Ph-19017', 'Photocopier', NULL, 'Toshiba E Studio-2306', NULL, 'Toshiba-estud', '1637995116.jpg', NULL, 'PLG', '2021-11-27 00:38:36', '2021-11-27 00:38:36', 'Issued'),
(1777, 'Ph-Nai-1', 'Photocopier', NULL, 'Toshiba E Studio-2523A', NULL, 'Toshiba-estud', '1637995457.jpg', NULL, 'DD SA', '2021-11-27 00:44:17', '2021-11-27 00:44:17', 'Issued'),
(1778, 'Ph-Nai-2', 'Photocopier', NULL, 'Toshiba E Studio-2306', NULL, 'Toshiba-estud', '1637995511.jpg', NULL, 'DD HAG Office', '2021-11-27 00:45:11', '2021-11-27 00:45:11', 'Issued'),
(1779, 'Ph-19022', 'Photocopier', NULL, 'Toshiba E Studio-4518A', NULL, 'Toshiba-estud', '1637998287.jpg', NULL, 'Production C-cordiant Cell', '2021-11-27 01:31:27', '2021-11-27 01:31:27', 'Issued'),
(1780, 'Ph-19019-Dup', 'Photocopier', NULL, 'Toshiba E Studio 2006', NULL, 'Toshiba-estud', '1637998497.jpg', NULL, 'R & D', '2021-11-27 01:34:57', '2021-11-27 01:34:57', 'Issued'),
(1781, 'Ph-19010-Dup', 'Photocopier', NULL, 'Canon IRA 3530i', NULL, 'Canon', '1637998667.jpg', NULL, 'DD Maintenance', '2021-11-27 01:37:47', '2021-11-27 01:37:47', 'Issued'),
(1782, 'P-21011', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP', NULL, 'Pension Office Issue date : 25/11/21', 'Pension', '2021-11-29 19:43:35', '2021-11-29 19:43:35', 'Issued'),
(1783, 'Pendrive-21054', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'Noorul Bari sir to ullash Issue date : 18/11/2021', 'ICT-Office', '2021-11-29 19:49:52', '2021-11-29 19:49:52', 'Issued'),
(1784, 'Pendrive-21055', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'shofik ahmed Issue date : 19/11/2021', 'Purchase', '2021-11-29 19:51:18', '2021-11-29 19:51:18', 'Issued'),
(1785, 'Pendrive-21056', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'DD Admin Iqbal Sir Issue date (20/11/21)', 'DD Admin', '2021-11-29 19:52:30', '2021-11-29 19:52:30', 'Issued'),
(1786, 'SSD-21001', 'SSD', NULL, '480GB', NULL, NULL, NULL, 'sofiq ahmed', 'Purchase', '2021-11-29 20:06:48', '2021-11-29 20:06:48', 'Issued'),
(1787, 'SSD-21002', 'SSD', NULL, '480GB', NULL, NULL, NULL, 'Issue date : 13/11/21 Office assistant Nazrul CPU Use', 'ICT-Office', '2021-11-29 20:20:54', '2021-11-29 20:20:54', 'Issued'),
(1788, 'HDDInclosoure-21001', 'HDD Inclosoure', NULL, NULL, NULL, NULL, NULL, 'Issue Date ; 24/11/21  Purchase Shofiq sir', 'Purchase', '2021-11-29 20:29:15', '2021-11-29 20:29:15', 'Issued'),
(1789, 'Monitor-21023', 'Monitor', NULL, NULL, NULL, 'DELL', NULL, 'From Clone Desktop set Date : 22/11/21', 'ICT Stock', '2021-11-29 20:37:34', '2021-11-29 20:37:34', 'In Stock'),
(1790, 'MotherBoard-21018', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, 'CPU Repaire perpous MC Issue  : 20/6/21', 'MC', '2021-11-29 20:41:10', '2021-11-29 20:41:10', 'Issued'),
(1791, 'MotherBoard-21019', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, 'Cpu perpouse Issue date : 27/6/21', 'Staff Record', '2021-11-29 20:42:58', '2021-11-29 20:42:58', 'Issued'),
(1792, 'MotherBoard-21020', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, 'CPU repaire perpouse Issue Date : 5/7/21 (ICT old cpu)', 'ICT-Office', '2021-11-29 20:44:29', '2021-11-29 20:44:29', 'Issued'),
(1793, 'MotherBoard-21021', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, 'CPU repaire perpous Issue date : 10/7/21', 'HAG', '2021-11-29 20:45:30', '2021-11-29 20:45:30', 'Issued'),
(1794, 'MotherBoard-21022', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, 'CPU Repaire Perpous Issue date : (28/7/21) Main Store', 'Main store', '2021-11-29 20:46:56', '2021-11-29 20:46:56', 'Issued'),
(1795, 'MotherBoard-21023', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, 'CPU Repaire perpus OLD CPU (ICT Office) Issue Date : 7/8/21', 'ICT-Office', '2021-11-29 20:48:08', '2021-11-29 20:48:08', 'Issued'),
(1796, 'MousePad-21054', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, 'Medical Office Issue : 2/12/2021', 'Medical', '2021-12-04 19:44:21', '2021-12-04 19:44:21', 'Issued'),
(1797, 'MousePad-21055', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, 'CTM Office issue date  : 2/12/2021', 'CTM', '2021-12-04 19:50:39', '2021-12-04 19:50:39', 'Issued'),
(1798, 'MotherBoard-21024', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, 'CPU repair perpouse security Issue Date : 4/12/2021', 'Security', '2021-12-04 19:52:11', '2021-12-04 19:52:11', 'Issued'),
(1799, 'IHD210014', 'Internal Hard Disk', NULL, NULL, NULL, NULL, NULL, 'Size 1 TB HDD (Laptop Small ) (Return Frm Maj Rakib sir oic) Return date : 2/12/2021 (Damage)', 'ICT Stock', '2021-12-04 19:58:42', '2021-12-04 19:58:42', 'Expire'),
(1800, 'Mouse(Wired)-20070', 'Mouse', 'Mouse(Wired)', NULL, NULL, 'A4 Tech', NULL, 'Comdt PA  Office Issue Date : 5/12/21', 'Comdt BOF', '2021-12-06 19:39:30', '2021-12-06 19:39:30', 'Issued'),
(1801, 'Mouse(Wired)-20071', 'Mouse', 'Mouse(Wired)', NULL, NULL, 'A4 Tech', NULL, 'Comdt PA Office Issue Date : 5/12/2021', 'Comdt BOF', '2021-12-06 19:40:38', '2021-12-06 19:40:38', 'Issued'),
(1802, 'M19214', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Issued: 13/12/2021, security main gate,', 'Security', '2021-12-14 19:36:52', '2021-12-14 19:36:52', 'Issued'),
(1803, 'PowerSupply-21024', 'Power Supply', NULL, NULL, NULL, NULL, NULL, 'Issued: 08/12/2021, 01 pcs, CPU repair  purpose, PKS', 'PKS', '2021-12-14 19:42:09', '2021-12-14 19:42:09', 'Issued'),
(1804, 'PowerSupply-21025', 'Power Supply', NULL, NULL, NULL, NULL, NULL, 'Issued: 08/12/2021, CPU repair purpose, 01 pcs, PKS', 'PKS', '2021-12-14 19:43:50', '2021-12-14 19:43:50', 'Issued'),
(1805, 'P-21012', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP', NULL, 'Medical Office', 'Medical', '2021-12-28 19:25:23', '2021-12-28 19:25:23', 'Issued'),
(1806, 'P-21013', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP', NULL, 'Comdt Office(Replace HP-P2035)', 'Comdt BOF', '2021-12-28 19:27:13', '2021-12-28 19:27:13', 'Issued'),
(1807, 'Pendrive-21057', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'Deputy Comdt Office. Date: 28-12-2021', 'Deputy Comdt Office', '2021-12-28 19:30:41', '2021-12-28 19:30:41', 'Issued'),
(1808, 'Multisocket-21024', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, 'ICT Office Use. Date: 23-12-2021', 'ICT-Office', '2021-12-28 19:32:35', '2021-12-28 19:32:35', 'Issued'),
(1809, 'SSD-21008', 'SSD', NULL, '480GB', NULL, NULL, NULL, 'ICT Laptop Use. Date: 26-12-2021', 'Conference Room', '2021-12-28 19:35:17', '2021-12-28 19:35:17', 'Issued'),
(1810, 'Mouse-21027', 'Mouse', 'Wireless Mouse', 'Logitech M171', NULL, NULL, NULL, 'Deputy Comdt Laptop Use. Date: 27-12-21', 'Deputy Comdt Office', '2021-12-28 19:39:04', '2021-12-28 19:39:04', 'Issued'),
(1811, 'Pendrive-21058', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, 'DD Iqbal Hossain Sir. Date: 23-12-21', 'DD Admin', '2021-12-28 19:42:02', '2021-12-28 19:42:02', 'Issued'),
(1812, 'Mouse-21057', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, 'TPT Office Date: 23-12-21', 'TPT', '2021-12-28 19:43:38', '2021-12-28 19:43:38', 'Issued'),
(1813, 'Mouse-21058', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, 'Medical Office Date: 28-12-21, 02 pcs.', 'Medical', '2021-12-28 19:44:41', '2021-12-28 19:44:41', 'Issued'),
(1814, 'Motherboard-21025', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, 'CPU Repair Purpose QCL Date: 28-12-21', 'QCL', '2021-12-28 19:46:30', '2021-12-28 19:46:30', 'Issued');

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_issuedlist`
-- (See below for the actual view)
--
CREATE TABLE `products_issuedlist` (
`id` bigint(20) unsigned
,`name` varchar(50)
,`category` varchar(50)
,`subcategory` varchar(50)
,`type` varchar(50)
,`item` varchar(50)
,`brand` varchar(50)
,`image` varchar(300)
,`description` varchar(800)
,`department` varchar(50)
,`created_at` timestamp
,`updated_at` timestamp
,`productStatus` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `product_issue_to_user_details`
--

CREATE TABLE `product_issue_to_user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `BofUserId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnDate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortDescription` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_issue_to_user_details`
--

INSERT INTO `product_issue_to_user_details` (`id`, `BofUserId`, `ProductId`, `issueDate`, `returnDate`, `shortDescription`, `created_at`, `updated_at`) VALUES
(7, 'Test-Employee-101', 'ICT-M21003', '2021-11-01', NULL, '1 Pendrive', '2021-11-21 04:35:40', '2021-11-21 04:35:40'),
(8, 'Test-Employee-101', 'ICT-M21002', '2021-11-04', NULL, NULL, '2021-11-21 04:35:55', '2021-11-21 04:35:55'),
(9, 'Test-Employee-101', 'MobilePhone-21076', '2021-11-10', '2021-11-07', NULL, '2021-11-21 04:36:07', '2021-11-21 04:36:07'),
(10, 'Test-Employee-101', 'Laptop-2', '2021-11-22', NULL, 'ruhul', '2021-11-21 19:33:41', '2021-11-21 19:33:41'),
(11, 'BA-6897', 'ICT-Tab-0001', '2021-06-30', NULL, NULL, '2021-11-21 19:39:06', '2021-11-21 19:39:06'),
(12, 'BA-6897', 'P-21004', '2021-08-29', NULL, NULL, '2021-11-21 19:40:12', '2021-11-21 19:40:12'),
(13, 'BA-6897', 'ICT-M21004', '2021-02-14', NULL, NULL, '2021-11-21 19:41:32', '2021-11-21 19:41:32'),
(14, 'BA-6897', 'Router-21042', '2021-08-02', NULL, NULL, '2021-11-21 19:42:05', '2021-11-21 19:42:05'),
(15, 'BA-6897', 'Pendrive-21046', '2021-02-16', NULL, NULL, '2021-11-21 19:42:41', '2021-11-21 19:42:41'),
(16, 'BA-6897', 'pointer-21006', '2021-08-26', NULL, NULL, '2021-11-21 19:43:11', '2021-11-21 19:43:11'),
(17, 'BA-6897', 'Webcam-21008', '2021-02-15', NULL, NULL, '2021-11-21 19:45:38', '2021-11-21 19:45:38'),
(18, 'BA-6897', 'Mouse-21008', '2021-08-26', NULL, NULL, '2021-11-21 19:46:13', '2021-11-21 19:46:13'),
(19, 'BA-6897', 'SSD-21006', '2021-09-18', NULL, NULL, '2021-11-21 19:46:43', '2021-11-21 19:46:43'),
(20, 'BA-6897', 'HDDInclosoure-21002', '2021-09-18', NULL, NULL, '2021-11-21 19:47:25', '2021-11-21 19:47:25'),
(21, 'BA-6897', 'Keyboard-21034', '2021-03-11', NULL, NULL, '2021-11-21 19:48:18', '2021-11-21 19:48:18'),
(22, 'BA-6897', 'MultiSocket-21016', '2021-04-01', NULL, NULL, '2021-11-21 19:48:43', '2021-11-21 19:48:43'),
(23, 'BA-6897', 'Phone-21004', '2021-08-28', NULL, NULL, '2021-11-21 19:49:15', '2021-11-21 19:49:15'),
(24, 'BA-6897', 'Cable-21051', '2021-08-09', NULL, NULL, '2021-11-21 19:49:50', '2021-11-21 19:49:50'),
(25, 'BA-6897', 'MobilePhone-21014', '2021-03-20', NULL, NULL, '2021-11-21 19:50:23', '2021-11-21 19:50:23'),
(26, 'BA-6897', 'WirelessKeyboard-21005', '2021-03-15', NULL, NULL, '2021-11-21 19:51:01', '2021-11-21 19:51:01'),
(27, 'BA-6897', 'MobilePhone-21075', '2021-10-28', NULL, NULL, '2021-11-21 19:51:59', '2021-11-21 19:51:59'),
(29, 'BA-6897', 'ICT-M21002', '2021-11-13', NULL, NULL, '2021-11-21 19:53:16', '2021-11-21 19:53:16'),
(30, 'BA-6897', 'ICT-M21003', '2021-11-13', NULL, NULL, '2021-11-21 19:53:58', '2021-11-21 19:53:58'),
(31, 'BA-6897', 'RaspPy-21001', '2021-10-17', NULL, NULL, '2021-11-21 19:56:11', '2021-11-21 19:56:11'),
(32, 'BA-3219', 'Mouse-21003', '2021-05-12', NULL, NULL, '2021-11-23 19:47:40', '2021-11-23 19:47:40'),
(33, 'BA-3219', 'Mouse-21005', '2021-08-18', NULL, NULL, '2021-11-23 19:48:35', '2021-11-23 19:48:35'),
(34, 'BA-3219', 'Mouse-21006', '2021-08-18', NULL, NULL, '2021-11-23 19:49:14', '2021-11-23 19:49:14'),
(35, 'BA-3219', 'Mouse-21023', '2021-01-01', NULL, NULL, '2021-11-23 19:51:43', '2021-11-23 19:51:43'),
(36, 'BA-3219', 'Mouse-21024', '2021-01-23', NULL, 'Comdt Madam', '2021-11-23 19:52:33', '2021-11-23 19:52:33'),
(37, 'BA-3219', 'DVD/CDDisk-20005', '2020-10-24', NULL, NULL, '2021-11-23 19:54:58', '2021-11-23 19:54:58'),
(38, '1006', 'Pendrive-20017', '2020-10-24', NULL, NULL, '2021-11-24 19:47:41', '2021-11-24 19:47:41'),
(39, '1006', 'Pendrive-20019', '2020-10-28', NULL, NULL, '2021-11-24 19:48:16', '2021-11-24 19:48:16'),
(40, '1006', 'Mouse-20013', '2020-08-23', NULL, NULL, '2021-11-24 19:48:40', '2021-11-24 19:48:40'),
(41, '1006', 'UPS-20004', '2020-08-23', NULL, NULL, '2021-11-24 19:49:07', '2021-11-24 19:49:07'),
(42, '1006', 'BluetoothEarphone(china)20001', '2020-07-01', NULL, NULL, '2021-11-24 19:50:39', '2021-11-24 19:50:39'),
(43, '1006', 'MobilePhone-20024', '2021-11-06', NULL, NULL, '2021-11-24 19:51:07', '2021-11-24 19:51:07'),
(44, '1006', 'MobilePhone-21055', '2021-01-09', NULL, NULL, '2021-11-24 19:51:47', '2021-11-24 19:51:47'),
(45, '1006', 'MobilePhone-20063', '2020-08-22', NULL, NULL, '2021-11-24 19:52:25', '2021-11-24 19:52:25'),
(46, '1006', 'MobilePhone-20065', '2020-08-22', NULL, NULL, '2021-11-24 19:54:50', '2021-11-24 19:54:50'),
(48, 'BA-4282', 'MousePad-21043', '2021-01-17', NULL, 'DD SA', '2021-11-26 20:21:50', '2021-11-26 20:21:50'),
(49, 'BA-6018', 'Pendrive-20011', '2020-09-01', NULL, NULL, '2021-11-26 20:28:34', '2021-11-26 20:28:34'),
(50, 'BA-6018', 'Pendrive-20022', '2020-11-09', NULL, NULL, '2021-11-26 20:30:25', '2021-11-26 20:30:25'),
(51, 'BA-6018', 'Keyboard-20003', '2020-08-06', NULL, NULL, '2021-11-26 20:31:22', '2021-11-26 20:31:22'),
(52, 'BA-6018', 'DVD/CDDisk-20009', '2021-01-27', NULL, NULL, '2021-11-26 20:32:21', '2021-11-26 20:32:21'),
(53, 'BA-6018', 'UPS-20009', '2020-08-24', NULL, NULL, '2021-11-26 20:32:57', '2021-11-26 20:32:57'),
(54, 'BA-6018', 'UPS-20026', '2020-11-08', NULL, NULL, '2021-11-26 20:33:28', '2021-11-26 20:33:28'),
(55, 'BA-6018', 'Speaker(Wired)-20003', '2020-11-10', NULL, NULL, '2021-11-26 20:34:50', '2021-11-26 20:34:50'),
(56, 'BA-6018', 'Mouse(Wired)-20005', '2020-08-06', NULL, NULL, '2021-11-26 20:36:20', '2021-11-26 20:36:20'),
(57, 'BA-6018', 'Mouse(Wired)-21063', '2020-06-05', NULL, NULL, '2021-11-26 20:37:29', '2021-11-26 20:37:29'),
(58, 'BA-6018', 'MobilePhone-20023', '2020-11-01', NULL, NULL, '2021-11-26 20:39:12', '2021-11-26 20:39:12'),
(59, 'BA-5031', 'L-21002', '2021-02-02', NULL, NULL, '2021-11-26 22:20:35', '2021-11-26 22:20:35'),
(60, 'BA-5031', 'PHD21006', '2021-03-24', NULL, NULL, '2021-11-26 22:21:32', '2021-11-26 22:21:32'),
(61, 'BA-5031', 'Router-21037', '2021-06-16', NULL, NULL, '2021-11-26 22:23:20', '2021-11-26 22:23:20'),
(62, 'BA-5031', 'SSD-21005', '2021-09-02', NULL, NULL, '2021-11-26 22:24:49', '2021-11-26 22:24:49'),
(63, 'BA-5031', 'MousePad-21037', '2021-02-14', NULL, NULL, '2021-11-26 22:25:43', '2021-11-26 22:25:43'),
(64, 'BA-5031', 'UPS-20002', '2021-07-19', NULL, NULL, '2021-11-26 22:26:40', '2021-11-26 22:26:40'),
(65, 'BA-5031', 'Mouse(Wired)-20001', '2021-07-07', NULL, NULL, '2021-11-26 22:27:59', '2021-11-26 22:27:59'),
(66, 'BA-5031', 'Mouse(Wired)-21056', '2021-02-14', NULL, NULL, '2021-11-26 22:29:18', '2021-11-26 22:29:18'),
(67, 'BA-5031', 'Antivirus-20002', '2021-07-06', NULL, NULL, '2021-11-26 22:30:07', '2021-11-26 22:30:07'),
(68, 'BA-5031', 'Antivirus-20015', '2021-11-10', NULL, NULL, '2021-11-26 22:35:04', '2021-11-26 22:35:04'),
(69, 'BA-5031', 'Antivirus-21042', '2021-07-08', NULL, NULL, '2021-11-26 22:35:44', '2021-11-26 22:35:44'),
(70, 'BA-5031', 'HeadPhone-21007', '2021-01-09', NULL, NULL, '2021-11-26 22:36:33', '2021-11-26 22:36:33'),
(71, 'BA-5031', 'Cartridge&Toner-21071', '2021-06-03', NULL, NULL, '2021-11-26 22:38:05', '2021-11-26 22:38:05'),
(72, 'BA-5031', 'P-21006', '2021-11-22', NULL, NULL, '2021-11-26 22:38:45', '2021-11-26 22:38:45'),
(73, '1014', 'Router-21039', '2021-06-07', NULL, NULL, '2021-11-26 22:45:55', '2021-11-26 22:45:55'),
(74, 'BA-5603', 'Pendrive-20001', '2021-07-08', NULL, NULL, '2021-11-26 23:01:15', '2021-11-26 23:01:15'),
(75, 'BA-7033', 'L-21009', '2021-11-23', NULL, NULL, '2021-11-26 23:15:57', '2021-11-26 23:15:57'),
(76, '1006', 'Pendrive-21056', '2021-11-11', NULL, NULL, '2021-11-29 19:52:58', '2021-11-29 19:52:58'),
(77, 'BA-4146', 'MobilePhone-20037', '2020-10-13', NULL, NULL, '2021-12-03 19:44:04', '2021-12-03 19:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_productissudes`
--

CREATE TABLE `product_productissudes` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `productissued_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_productissudes`
--

INSERT INTO `product_productissudes` (`product_id`, `productissued_id`) VALUES
(1697, 108),
(719, 108),
(12, 108),
(486, 108),
(1699, 108),
(1741, 107),
(1742, 107),
(1742, 107),
(1742, 108),
(1742, 104),
(1742, 108),
(1742, 108),
(1741, 108),
(1730, 108),
(1743, 108),
(1729, 108),
(1744, 108),
(1738, 108),
(1733, 108),
(1732, 108),
(432, 64),
(589, 64),
(607, 64),
(630, 64),
(676, 64),
(688, 64),
(696, 64),
(704, 64),
(711, 64),
(714, 64),
(823, 64),
(950, 64),
(1224, 64),
(1285, 64),
(1419, 64),
(1526, 64),
(1731, 64),
(1737, 64),
(1738, 64),
(1744, 64),
(1745, 64),
(699, 49),
(701, 49),
(702, 49),
(786, 49),
(787, 49),
(888, 49),
(647, 68),
(649, 68),
(776, 68),
(898, 68),
(997, 68),
(1429, 68),
(1460, 68),
(1468, 68),
(1470, 68),
(1602, 68),
(875, 55),
(641, 56),
(652, 56),
(792, 56),
(892, 56),
(903, 56),
(919, 56),
(1003, 56),
(1101, 56),
(1159, 56),
(1428, 56),
(98, 54),
(416, 54),
(625, 54),
(710, 54),
(869, 54),
(896, 54),
(1097, 54),
(1152, 54),
(1167, 54),
(1186, 54),
(1213, 54),
(1496, 54),
(1647, 54),
(1750, 54),
(627, 69),
(631, 109),
(1756, 58),
(1785, 68),
(1442, 51);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DIJtRxVarprBtLK9ratwCAZKiQezoKtdto53juDw', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibmJpYmJoWjdhQWM0eXllTHIxOXZ2TlJBdHdsOTRlZkRQWG9TZk40QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkb3dDRkcuQVFDZUJEMFRDUFRrdEIuT294MXVhd0RZRGNrc1laWWNwcUQzQXJCenRxeW9tQTIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG93Q0ZHLkFRQ2VCRDBUQ1BUa3RCLk9veDF1YXdEWURja3NZWlljcHFEM0FyQnp0cXlvbUEyIjt9', 1648518801);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `inclusion` bigint(20) DEFAULT NULL,
  `exclusion` bigint(20) DEFAULT NULL,
  `stockBalance` bigint(20) DEFAULT NULL,
  `maintanance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issueNo` bigint(20) DEFAULT NULL,
  `issuedTo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `category`, `subcategory`, `brand`, `item`, `type`, `department`, `date`, `inclusion`, `exclusion`, `stockBalance`, `maintanance`, `issueNo`, `issuedTo`, `branch`, `remarks`, `created_at`, `updated_at`) VALUES
(101, 'Phone', NULL, NULL, NULL, NULL, NULL, '2021-10-03', 10, NULL, 10, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:39:50', '2021-10-02 19:39:50'),
(102, 'Phone', NULL, NULL, NULL, NULL, NULL, '2021-10-05', 25, NULL, 35, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:40:07', '2021-10-02 19:40:07'),
(103, 'Phone', NULL, NULL, NULL, NULL, NULL, '2021-10-14', 30, NULL, 65, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:40:20', '2021-10-02 19:40:20'),
(104, 'Phone', NULL, NULL, NULL, NULL, NULL, '2021-10-07', NULL, 25, 40, NULL, NULL, 'DD Admin', NULL, NULL, '2021-10-02 19:40:38', '2021-10-02 19:40:38'),
(105, 'Phone', NULL, NULL, NULL, NULL, NULL, '2021-10-06', NULL, 3, 37, NULL, NULL, 'DD Admin', 'Branch', 'Mobile Given', '2021-10-02 19:41:17', '2021-10-02 19:41:17'),
(106, 'Antivirus', NULL, NULL, NULL, NULL, NULL, '2021-10-06', 10, NULL, 10, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:43:33', '2021-10-02 19:43:33'),
(107, 'Antivirus', NULL, NULL, NULL, NULL, NULL, '2021-10-06', 15, NULL, 25, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:43:44', '2021-10-02 19:43:44'),
(108, 'Antivirus', NULL, NULL, NULL, NULL, NULL, '2021-10-21', 15, NULL, 40, NULL, NULL, NULL, NULL, NULL, '2021-10-02 19:44:07', '2021-10-02 19:44:07'),
(109, 'Camera (IP)', NULL, NULL, NULL, NULL, NULL, '2021-11-25', 28, 10, 46, NULL, NULL, NULL, NULL, NULL, '2021-11-17 20:26:45', '2021-11-17 20:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Brand Desktop', '2021-08-30 23:07:54', '2021-08-30 23:07:54'),
(5, 'Clone Desktop', '2021-08-30 23:08:00', '2021-08-30 23:08:00'),
(6, 'Color Printer', '2021-08-30 23:26:19', '2021-08-30 23:26:19'),
(7, 'Black & White Printer', '2021-08-30 23:26:34', '2021-08-30 23:26:34'),
(13, 'Core Router', '2021-09-15 19:35:31', '2021-09-15 19:35:31'),
(14, 'Home Router', '2021-09-15 19:35:36', '2021-09-15 19:35:36'),
(15, 'test Sub category', '2021-09-15 19:50:02', '2021-09-15 19:50:02'),
(16, 'Tablet PC With Keyboard', '2021-09-16 01:53:07', '2021-09-16 01:53:07'),
(17, 'Cisco', '2021-09-17 19:39:55', '2021-09-17 19:39:55'),
(18, 'Sophos', '2021-09-17 19:40:10', '2021-09-17 19:40:10'),
(19, 'Database Server', '2021-09-17 20:25:24', '2021-09-17 20:25:24'),
(20, 'Data recovery Server', '2021-09-17 20:25:34', '2021-09-17 20:25:34'),
(21, 'API Gateway Server', '2021-09-17 20:25:43', '2021-09-17 20:25:43'),
(22, 'Wireless Mouse', '2021-09-21 19:49:50', '2021-09-21 19:49:50'),
(23, 'Professional Plus-2019', '2021-09-21 22:08:06', '2021-09-21 22:12:50'),
(24, 'DDR-04', '2021-09-21 23:18:59', '2021-09-21 23:18:59'),
(25, 'DDR-03', '2021-09-21 23:19:29', '2021-09-21 23:19:29'),
(26, 'TEST_SUBCATEGORY', '2021-09-25 18:45:36', '2021-09-25 18:45:36'),
(27, 'Mouse(Wired)', '2021-09-27 21:07:49', '2021-09-27 21:07:49'),
(28, 'Cordless Phone', '2021-09-28 22:30:29', '2021-09-28 22:30:29'),
(29, 'HDMI Cable(long)', '2021-09-29 00:24:14', '2021-09-29 00:24:14'),
(30, 'UTP Cable', '2021-09-29 00:24:32', '2021-09-29 00:24:32'),
(31, 'Optical Fiber Cable', '2021-09-29 19:51:00', '2021-09-29 19:51:00'),
(32, 'USB Extension Cable', '2021-09-29 20:11:41', '2021-09-29 20:11:41'),
(33, 'VGA Cable', '2021-09-29 21:27:51', '2021-09-29 21:27:51'),
(34, 'Power Cable', '2021-09-29 22:09:29', '2021-09-29 22:09:29'),
(35, 'Mobile Phone', '2021-10-01 19:56:28', '2021-10-01 19:56:28'),
(36, 'Wireless Keyboard', '2021-10-02 20:46:20', '2021-10-02 20:46:20'),
(37, 'Wireless Pocket Microphone', '2021-10-02 23:23:48', '2021-10-02 23:23:48'),
(38, 'Online UPS', '2021-10-04 21:20:40', '2021-10-04 21:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(11, 'Core i3', '2021-08-30 23:25:03', '2021-08-30 23:25:03'),
(12, 'Core i5', '2021-08-30 23:25:06', '2021-08-30 23:25:06'),
(13, 'Core i7', '2021-08-30 23:25:12', '2021-08-30 23:25:12'),
(14, 'Core i9', '2021-08-30 23:25:18', '2021-08-30 23:25:18'),
(15, 'Ink jet', '2021-08-30 23:32:52', '2021-08-30 23:32:52'),
(16, 'Laser', '2021-08-30 23:32:58', '2021-08-30 23:32:58'),
(17, '2 Duo', '2021-08-30 23:59:28', '2021-08-30 23:59:28'),
(18, 'Intel Pentium', '2021-08-31 19:19:32', '2021-08-31 19:19:32'),
(19, 'Intel i3', '2021-08-31 21:05:45', '2021-08-31 21:05:45'),
(20, 'Duel Core', '2021-08-31 21:09:10', '2021-08-31 21:09:10'),
(21, 'Pentium', '2021-08-31 21:09:21', '2021-08-31 21:09:21'),
(27, 'CCR', '2021-09-15 19:37:20', '2021-09-15 19:37:20'),
(28, 'RB', '2021-09-15 19:37:28', '2021-09-15 19:37:28'),
(29, 'HEX', '2021-09-15 19:37:36', '2021-09-15 19:37:36'),
(30, 'Test type', '2021-09-15 19:50:54', '2021-09-15 19:50:54'),
(31, '1TB', '2021-09-15 23:10:04', '2021-09-15 23:10:04'),
(32, '500 GB', '2021-09-15 23:10:12', '2021-09-15 23:10:12'),
(33, '2TB', '2021-09-15 23:10:19', '2021-09-15 23:10:19'),
(34, '4TB', '2021-09-15 23:10:32', '2021-09-15 23:10:32'),
(35, '16 Gb', '2021-09-16 01:49:36', '2021-09-16 01:49:36'),
(36, 'Software Firewall', '2021-09-17 19:49:28', '2021-09-17 19:49:28'),
(37, 'Hardware Firewall', '2021-09-17 19:49:39', '2021-09-17 19:49:39'),
(38, 'Epson L3110', '2021-09-17 20:06:42', '2021-09-17 20:06:42'),
(39, 'HP M 402 dn', '2021-09-17 20:07:57', '2021-09-17 20:07:57'),
(40, 'HP P 2035', '2021-09-17 20:08:15', '2021-09-17 20:08:15'),
(41, 'HP M 252n', '2021-09-17 20:08:29', '2021-09-17 20:08:29'),
(42, 'Brother- T510W', '2021-09-17 20:09:21', '2021-09-17 20:09:21'),
(43, 'Cannon LBP 3300', '2021-09-17 20:09:42', '2021-09-17 20:09:42'),
(44, 'Epson-3300', '2021-09-17 20:09:57', '2021-09-17 20:09:57'),
(45, 'Epson -430', '2021-09-17 20:10:22', '2021-09-17 20:10:22'),
(46, 'LBP 3008A', '2021-09-17 20:10:50', '2021-09-17 20:10:50'),
(47, 'HP P 1120', '2021-09-17 20:11:02', '2021-09-17 20:11:02'),
(48, 'Epson L-130', '2021-09-17 20:11:26', '2021-09-17 20:11:26'),
(49, 'TOS-4518A', '2021-09-17 20:11:44', '2021-09-17 20:11:44'),
(50, 'POE', '2021-09-17 20:12:16', '2021-09-17 20:12:16'),
(51, 'HP P 1102', '2021-09-17 20:12:26', '2021-09-17 20:12:26'),
(52, 'Non POE', '2021-09-17 20:12:27', '2021-09-17 20:12:27'),
(53, 'HP M 201n', '2021-09-17 20:12:44', '2021-09-17 20:12:44'),
(54, 'LBP 6230dn', '2021-09-17 20:13:11', '2021-09-17 20:13:11'),
(55, 'Epson-430', '2021-09-17 20:13:30', '2021-09-17 20:13:30'),
(56, 'Epson -M 2140', '2021-09-17 20:14:06', '2021-09-17 20:14:06'),
(57, 'HP -M 404dn', '2021-09-17 20:14:51', '2021-09-17 20:14:51'),
(58, 'HP-P 1005', '2021-09-17 20:15:15', '2021-09-17 20:15:15'),
(59, 'HP-402', '2021-09-17 20:15:48', '2021-09-17 20:15:48'),
(60, 'TOS-STD-4518A', '2021-09-17 20:16:17', '2021-09-17 20:16:17'),
(61, 'Epson-LQ-310', '2021-09-17 20:17:02', '2021-09-17 20:17:02'),
(62, 'TOS-STD', '2021-09-17 20:17:34', '2021-09-17 20:17:34'),
(63, 'HP-Laser-P1102', '2021-09-17 20:17:58', '2021-09-17 20:17:58'),
(64, 'Samsung-ML-1866', '2021-09-17 20:18:32', '2021-09-17 20:18:32'),
(65, 'Hp-1102W', '2021-09-17 20:18:42', '2021-09-17 20:18:42'),
(66, 'Epson-L220', '2021-09-17 20:19:06', '2021-09-17 20:19:06'),
(67, 'Samsung ML-1660', '2021-09-17 20:19:31', '2021-09-17 20:19:31'),
(68, 'Samsung ML 1640', '2021-09-17 20:20:00', '2021-09-17 20:20:00'),
(69, 'HP- P1005', '2021-09-18 01:22:37', '2021-09-18 01:22:37'),
(70, '32 GB', '2021-09-20 20:22:42', '2021-09-20 20:22:42'),
(71, '64 GB', '2021-09-20 20:23:00', '2021-09-20 20:23:00'),
(72, '128 GB', '2021-09-20 20:23:08', '2021-09-20 20:23:08'),
(73, 'C270 HD WebCam', '2021-09-21 00:26:33', '2021-09-21 00:26:33'),
(74, 'Logitech M171', '2021-09-21 19:42:10', '2021-09-21 19:42:10'),
(75, 'Speedy Lite', '2021-09-21 19:47:00', '2021-09-21 19:47:00'),
(76, '480GB', '2021-09-21 21:25:29', '2021-09-21 21:25:29'),
(77, 'USB 3.0', '2021-09-21 21:55:26', '2021-09-21 21:55:26'),
(78, 'M41', '2021-09-21 22:23:51', '2021-09-21 22:23:51'),
(79, 'M 61', '2021-09-21 22:23:57', '2021-09-21 22:23:57'),
(80, 'M110', '2021-09-21 22:24:11', '2021-09-21 22:24:11'),
(81, 'TEST_TYPE', '2021-09-25 18:45:46', '2021-09-25 18:45:46'),
(82, 'HP-415', '2021-10-03 22:17:58', '2021-10-03 22:17:58'),
(83, 'HP M-402dn/26(A)', '2021-10-03 22:19:37', '2021-10-03 22:19:37'),
(84, 'HP M-404dn/76(A)', '2021-10-03 22:20:26', '2021-10-03 22:20:26'),
(85, 'HP MFP M26A', '2021-10-03 22:20:55', '2021-10-03 22:20:55'),
(86, 'Epson M-2140', '2021-10-03 22:21:21', '2021-10-03 22:21:21'),
(87, 'Brother DCP T-510W', '2021-10-03 22:21:49', '2021-10-03 22:21:49'),
(88, 'Cannon LBP-6230, 6030/ HP Laserjet-1102', '2021-10-03 22:22:32', '2021-10-03 22:23:58'),
(89, 'Epson L-130, L220', '2021-10-03 22:24:44', '2021-10-03 22:24:44'),
(90, 'Samsung ML-1660, ML-1866', '2021-10-03 22:25:16', '2021-10-03 22:25:16'),
(91, 'Epson L-3110', '2021-10-03 22:25:37', '2021-10-03 22:25:37'),
(92, 'Epson LQ-310', '2021-10-03 22:25:57', '2021-10-03 22:25:57'),
(93, 'Cannon NPG-28', '2021-10-03 22:26:15', '2021-10-03 22:26:15'),
(94, 'HP Pro M-210n', '2021-10-03 22:26:44', '2021-10-03 22:26:44'),
(95, 'Toshiba E Studio-4518A', '2021-10-03 22:27:52', '2021-11-27 00:09:44'),
(96, 'Toshiba E Studio-2523A', '2021-10-03 22:28:51', '2021-11-26 23:56:51'),
(97, 'Toshiba E Studio-2303A', '2021-10-03 22:29:41', '2021-11-27 00:09:17'),
(98, 'Toshiba E Studio-2306', '2021-10-03 22:30:24', '2021-11-26 23:59:04'),
(99, 'Toshiba E Studio-3008A', '2021-10-03 22:31:30', '2021-11-27 00:08:08'),
(100, 'NPG-54', '2021-10-03 22:31:54', '2021-10-03 22:31:54'),
(101, 'M-180n/ ML-205', '2021-10-03 22:32:20', '2021-10-03 22:32:20'),
(102, '10-KVA', '2021-10-04 21:21:04', '2021-10-04 21:21:04'),
(103, '20-KVA', '2021-10-04 21:21:17', '2021-10-04 21:21:17'),
(104, '2 GB', '2021-10-10 21:11:56', '2021-10-10 21:11:56'),
(105, 'Canon IRA 3530i', '2021-11-26 23:59:56', '2021-11-26 23:59:56'),
(106, 'Toshiba E Studio 2006', '2021-11-27 00:01:20', '2021-11-27 00:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `designation`, `role`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'apon', '', 'admin', 'apon@gmail.com', NULL, '$2y$10$aMkh/yXJ9619U/gw.VUjUOD/Kf7EunQjpDyFqo7UJTgvlUYCOyvUa', NULL, NULL, NULL, NULL, NULL, '2021-08-28 23:44:45', '2021-11-13 22:26:09'),
(2, 'Test', '', 'user', 'test@gmail.com', NULL, '$2y$10$l2v88uEZh1cpo3Ftk./3A.IBiC2EaeB4zbw5T4IDtR8OGYTj.vxZ.', NULL, NULL, 'P5UQrYa74hVJsqFkMCRsX0APYyPpgUrhmgk7Kh6lPUmqV6fsTa6DszLBlLkl', NULL, NULL, '2021-08-30 18:53:11', '2021-08-30 18:53:11'),
(3, 'Touhid', '', 'admin', 'touhidspi@gmail.com', NULL, '$2y$10$wfIbr0g3kV2o3BvfRUIUOeMbTJu19ytE4bW5egHi24aXdSDvNS5Se', NULL, NULL, NULL, NULL, NULL, '2021-08-30 23:06:22', '2021-08-30 23:06:22'),
(6, 'test', '', 'user', 'test_2@gmail.com', NULL, '$2y$10$RY5n1VdiUgMNhOMbuX10OespbGZ4fTvX1QxbRlNEJh2HgquD7JoP2', NULL, NULL, NULL, NULL, NULL, '2021-09-02 05:06:17', '2021-09-02 05:06:17'),
(8, 'testAdmin', '', 'admin', 'testAdmin@gmail.com', NULL, '$2y$10$5raNNJWAUPxn2ltMya8ubOxu0HEzWg2.GU1E.F.YA899B220bGlCm', NULL, NULL, NULL, NULL, NULL, '2021-09-03 19:05:40', '2021-10-15 22:14:13'),
(12, 'user', '', 'user', 'user@gmail.com', NULL, '$2y$10$YEgJZv0r5eX2R.xzUllTjuzBPGc37GfFiFZLvriRoMOHFbv/AYHAe', NULL, NULL, NULL, NULL, NULL, '2021-09-04 18:50:33', '2021-09-08 00:23:03'),
(13, 'Admin', '', 'admin', 'admin@gmail.com', NULL, '$2y$10$owCFG.AQCeBD0TCPTktB.Oox1uawDYDcksYZYcpqD3ArBztqyomA2', NULL, NULL, 'C3iQ1iXcs9kC21iYarUn7y1GlXrLXlQ0NjZbmgAW7IMpm6u4GOxSMLD3Gv80', NULL, NULL, '2021-09-04 18:53:12', '2021-09-04 18:53:12'),
(15, 'technician', '', 'technician', 'technician@gmail.com', NULL, '$2y$10$G6H/YZgvw0GQWbMy1bUtYeO4TcjownMu0dzcoWNPMoLL0IUEjdUOK', NULL, NULL, 'QnNWsReXm04Pale0ug2YBI6REzDeFWMuCKHCWoGmeHo0LPN7xA6MzbsTed1c', NULL, NULL, '2021-09-06 21:22:38', '2021-09-06 21:22:38'),
(17, 'Ashraf_tech', '', 'technician', 'Ashraf@gmail.com', NULL, '$2y$10$Gc/H.tnDtDA5qLta5JEw4OixjHQTXWyMniHy2ytMrv2NBirJtdIrS', NULL, NULL, NULL, NULL, NULL, '2021-09-08 01:28:06', '2021-09-08 19:55:38'),
(26, 'Farhad', NULL, 'admin', 'Farhad@bof.com', NULL, '$2y$10$m20aNIK3ujrJtkodqWnO6emjzuva7r3rlx3mvNQVqlkt0QKZmdiGO', NULL, NULL, NULL, NULL, NULL, '2021-09-15 19:32:50', '2021-09-15 19:33:06'),
(28, 'Jubya', NULL, 'admin', 'jubyasayed@gmail.com', NULL, '$2y$10$.I7.TepDfyf5YxEjA3kAVeM5fwAiWF/aQPiAa4VqmEk9iEtVuoWIS', NULL, NULL, NULL, NULL, NULL, '2021-09-20 19:10:17', '2021-09-20 19:10:59'),
(29, 'tawhid', NULL, 'user', 'touhid1spi@gmail.com', NULL, '$2y$10$VyyLn5VWBk5UhKQbqyd/4eVBhcqUDqflPBznQtu.n84u9aJhefUhS', NULL, NULL, NULL, NULL, NULL, '2021-09-22 01:17:15', '2021-09-22 01:17:15'),
(30, 'Abdur Rahman', NULL, 'technician', 'abdurdiu28@gmail.com', NULL, '$2y$10$LX1AIxdoxRbEfpsVq4YIbeDajBfdMaTZkr24eiTCWmkyNEWcPa4Ra', NULL, NULL, NULL, NULL, NULL, '2021-09-25 23:59:19', '2021-10-04 00:07:46'),
(31, 'Shiblu', 'Technician', 'technician', 'Shiblu_Technician_14@bof.org', NULL, '$2y$10$LL5yBhzakJMVgZ4MuYXOxuU5pXSWO3uQvwXWOihjo9tNHu/dnV.dy', NULL, NULL, NULL, NULL, NULL, '2021-10-03 01:15:53', '2021-10-03 01:15:57'),
(32, 'Mehedi Hasan Shohag', 'Technician', 'technician', 'MehediHasanShohag_Technician_15@bof.org', NULL, '$2y$10$zQmn0f6Kpn7uvkMwBlcySetFjbonMiSWcl.SSaaIso6lHE1Drpvjy', NULL, NULL, NULL, NULL, NULL, '2021-10-03 19:38:57', '2021-10-03 19:39:36'),
(33, 'Md. Abu Sayed Apon', NULL, 'admin', 'apon5867@gmail.com', NULL, '$2y$10$qr45lTzPtuAsntmEkBWgcOjMYzT8yqjvwDlVUD0a23UUlNKsmKVQe', NULL, NULL, 'fbfqrAVV5n3UyatIZRuy6c08K9INr0ARnCH9bF7X0CYjrJwKAOXDKrE4y9Mx', NULL, NULL, '2021-10-27 01:26:10', '2021-10-27 01:26:25'),
(34, 'Abu Sayed Apon', 'Junior Network Support Engineer', 'user', 'Abu Sayed Apon_Junior Network Support Engineer_17@bof.org', NULL, '$2y$10$92RgHoksRXesmqztQ4z/1.Td5ZfqLBIuDbIBgN7g0RjYEMO49ULj6', NULL, NULL, NULL, NULL, NULL, '2021-11-13 22:24:34', '2021-11-13 22:24:34'),
(35, 'authority', NULL, 'authorizer', 'authority@bof.com', NULL, '$2y$10$cSlWBtjBcf4lhOF1aRVelea216S2cGlUqsRGvlkhl6qxyIkFmleIC', NULL, NULL, '7BGcBGHibvAkJQfUb4kAhcJi4GNwFOHNs5l3qzFY2rOhZVCdib0YYFchczoq', NULL, NULL, '2022-02-22 19:39:44', '2022-02-22 19:39:44');

-- --------------------------------------------------------

--
-- Structure for view `products_issuedlist`
--
DROP TABLE IF EXISTS `products_issuedlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_issuedlist`  AS SELECT `products`.`id` AS `id`, `products`.`name` AS `name`, `products`.`category` AS `category`, `products`.`subcategory` AS `subcategory`, `products`.`type` AS `type`, `products`.`item` AS `item`, `products`.`brand` AS `brand`, `products`.`image` AS `image`, `products`.`description` AS `description`, `products`.`department` AS `department`, `products`.`created_at` AS `created_at`, `products`.`updated_at` AS `updated_at`, `products`.`productStatus` AS `productStatus` FROM `products` WHERE `products`.`productStatus` = 'Issued' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booknotesheets`
--
ALTER TABLE `booknotesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cameradetails`
--
ALTER TABLE `cameradetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cameralocations`
--
ALTER TABLE `cameralocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_product_id_foreign` (`product_id`);

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `erpmodifications`
--
ALTER TABLE `erpmodifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notesheetdetails`
--
ALTER TABLE `notesheetdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notesheetdetails_notesheet_id_foreign` (`notesheet_id`),
  ADD KEY `notesheetdetails_book_id_foreign` (`book_id`);

--
-- Indexes for table `notesheets`
--
ALTER TABLE `notesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notesheets_booknotesheet_id_foreign` (`booknotesheet_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productissueds`
--
ALTER TABLE `productissueds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_at_index` (`created_at`);

--
-- Indexes for table `product_issue_to_user_details`
--
ALTER TABLE `product_issue_to_user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_productissudes`
--
ALTER TABLE `product_productissudes`
  ADD KEY `product_productissudes_product_id_foreign` (`product_id`),
  ADD KEY `product_productissudes_productissued_id_foreign` (`productissued_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booknotesheets`
--
ALTER TABLE `booknotesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `cameradetails`
--
ALTER TABLE `cameradetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cameralocations`
--
ALTER TABLE `cameralocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `erpmodifications`
--
ALTER TABLE `erpmodifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `notesheetdetails`
--
ALTER TABLE `notesheetdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `notesheets`
--
ALTER TABLE `notesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productissueds`
--
ALTER TABLE `productissueds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1815;

--
-- AUTO_INCREMENT for table `product_issue_to_user_details`
--
ALTER TABLE `product_issue_to_user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notesheetdetails`
--
ALTER TABLE `notesheetdetails`
  ADD CONSTRAINT `notesheetdetails_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `booknotesheets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notesheetdetails_notesheet_id_foreign` FOREIGN KEY (`notesheet_id`) REFERENCES `notesheets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notesheets`
--
ALTER TABLE `notesheets`
  ADD CONSTRAINT `notesheets_booknotesheet_id_foreign` FOREIGN KEY (`booknotesheet_id`) REFERENCES `booknotesheets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_productissudes`
--
ALTER TABLE `product_productissudes`
  ADD CONSTRAINT `product_productissudes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_productissudes_productissued_id_foreign` FOREIGN KEY (`productissued_id`) REFERENCES `productissueds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
