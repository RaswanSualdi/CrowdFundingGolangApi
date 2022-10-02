-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2022 at 09:42 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crowdfunding`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `perks` varchar(255) NOT NULL,
  `backer_count` int(11) NOT NULL,
  `goal_amount` int(11) NOT NULL,
  `current_amount` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `perks`, `backer_count`, `goal_amount`, `current_amount`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'gagagr', 'gergegrergerg', 'dfbdfbdfbderh', 'fddvdfvbd', 123, 0, 0, 'dsdfsffsd', '2022-08-15 17:17:12', '2022-08-15 17:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `is_primary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `avatar_file_name` varchar(50) DEFAULT NULL,
  `role` varchar(22) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `avatar_file_name`, `role`, `created_at`, `updated_at`) VALUES
(2, 'dandi', 'dandi@dandi.com', 'hqwfGET23UTUT', 'images/raswan.png', 'frontend', '2021-12-20 02:34:12', '2022-08-06 16:06:04'),
(4, 'raswan sualdi', 'raswan@gmail.com', '$2a$04$LNyQc3O.JKnYvdcUEpFbTe2xcMfHto9XhnKU11XBdie1lxi5znfwe', NULL, 'user', '2022-07-23 01:49:23', '2022-07-23 01:49:23'),
(5, 'Raswan kampret', 'raswan@gmailcom', '$2a$04$D57kSzTLgwjoOjz..1J1luwiofGVN7DyQmcwZrOrxfDYQN.Aib8Ci', NULL, 'user', '2022-07-23 08:03:01', '2022-07-23 08:03:01'),
(6, 'Raswan kampret 003', 'raswan@gmailcom', '$2a$04$xgar0rz4kXg0IITLgFroKurAvy2GJgNBCetXFgaCOBAIhLq2T7Vg2', NULL, 'user', '2022-07-24 05:22:51', '2022-07-24 05:22:51'),
(7, 'Raswan kampret 003', 'raswan@gmailcom', '$2a$04$2zugkH5WQbN2DuCtGcn9YOfStv45S2rKqtfNOc9L5edjk30t9BR1m', NULL, 'user', '2022-07-24 05:25:08', '2022-07-24 05:25:08'),
(8, 'Raswan kampret 003', 'raswan@gmailcom', '$2a$04$yyk5zwJfxeiIY4czdVkkeevtzSsNql2atmfg1d6AkfxuoB57S/tAS', NULL, 'user', '2022-07-24 05:27:10', '2022-07-24 05:27:10'),
(9, 'Raswan kampret 0033', 'raswan@gmailcom', '$2a$04$TLRlbj0L7SA6xVjE9B5QB.MJdEmE32GIHsImVBu4fzQZu.KdPojLG', NULL, 'user', '2022-07-24 05:27:29', '2022-07-24 05:27:29'),
(10, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$2oXQQFCQ/TpqIRYN1yKHsOS9IVMuL7DcEK2jMdU7pfDtxq4i7NYLC', NULL, 'user', '2022-07-24 05:30:57', '2022-07-24 05:30:57'),
(11, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$nN5CRXr6Rp584nd/dEcUR.rwUS3c1Jb4cXWHg/UFmrtP4Ze3nqwyO', NULL, 'user', '2022-07-24 05:32:12', '2022-07-24 05:32:12'),
(12, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$BLJ6SIyOepefL0y4GnRjNOdGOBskYdaT7IjkjMjXqzzwfLFq7JCHS', NULL, 'user', '2022-07-24 06:18:42', '2022-07-24 06:18:42'),
(13, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$.TwwV5FMAj0B512s8zABQuIdoKAe8L.f7DNyMXZagDlYCocZkWhM.', NULL, 'user', '2022-07-24 06:20:53', '2022-07-24 06:20:53'),
(14, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$Ql6mMWnKSLtcWJ4.QU1hWOf9JsQ4KPmcyi8Aot4vYVluZTg8SRm0C', NULL, 'user', '2022-07-24 06:37:00', '2022-07-24 06:37:00'),
(15, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$FNOSvDzbyOMySNDTn5qr2.DojtA6wAmcerCd733BcOHXQxdv2hlp2', NULL, 'user', '2022-07-24 06:43:52', '2022-07-24 06:43:52'),
(16, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$ZAbcBhH4DGjKixm2MDFVYOuGJbA4L5FprUXTi2oDvqMBJtrHtNilG', NULL, 'user', '2022-07-24 06:49:07', '2022-07-24 06:49:07'),
(17, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$GCXj/OkyO5dBz3MijBewKekd70OyWE0Srk9emSXfk1s/.3kjslOf6', NULL, 'user', '2022-07-24 17:29:36', '2022-07-24 17:29:36'),
(18, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$gkb7OPK4bjMItIhG3CXVoeMuEwefVgSvAVv5OL/yhkmeaGVOPnT.O', NULL, 'user', '2022-07-24 18:13:12', '2022-07-24 18:13:12'),
(19, 'Raswan kampret 0033 sf', 'raswan@gmailcom', '$2a$04$QMxlDb1aVQa8mTVt59rAS.5BCj9E6i14idkR/bXd0KPdpMu/fVtPe', NULL, 'user', '2022-07-24 20:09:42', '2022-07-24 20:09:42'),
(20, '', 'raswan@gmailcom', '$2a$04$NU1pHEkJ9YUcV3GRXlAHl.JpxZOZh8QANwrkGfDm84easwq5ZgMue', NULL, 'user', '2022-07-25 07:24:18', '2022-07-25 07:24:18'),
(21, '', 'raswan@gmailcom', '$2a$04$7uWZP4RhaY/RM06db4C5KuoMvTBAuSK/Wa5kGDALZsnVgmu8.BskK', NULL, 'user', '2022-07-25 07:26:42', '2022-07-25 07:26:42'),
(22, '', 'raswan@gmailcom', '$2a$04$xrg12RzKJxcesdFmDDeH/.Tya5b7YGUu65QFjwXnS2NhYxhTEoxtu', NULL, 'user', '2022-07-25 07:28:56', '2022-07-25 07:28:56'),
(23, '', 'raswan@gmailcom', '$2a$04$SmEAaE7hvaUFCxAt/hU2yumPWSHaYm2N0pB3c.eWhYD3ppkQfZ8Na', NULL, 'user', '2022-07-25 07:29:24', '2022-07-25 07:29:24'),
(24, '', 'raswan@gmailcom', '$2a$04$txVVIkNTfViyE7KtPcLaa.PTkbszHUCUB2dICs389U9NQpqtGIiVO', NULL, 'user', '2022-07-25 07:29:28', '2022-07-25 07:29:28'),
(25, '', 'raswan@gmailcom', '$2a$04$dfr1fmjWZQpj/py0NB..zOJyk.xnL6eWsCcD8Xt10ub0yd8NzHvi.', NULL, 'user', '2022-07-25 07:31:08', '2022-07-25 07:31:08'),
(26, '', 'raswan@gmailcom', '$2a$04$cWnI5i1uZXvS6VwTKXgs4OEWgrHGQVpYeEbIZym8yfYPCtj9BQntu', NULL, 'user', '2022-07-25 07:31:17', '2022-07-25 07:31:17'),
(27, '', 'raswan@gmailcom', '$2a$04$Qnool7ixx0LiA.ZszlQa8e7eDCiYFRhU00fN0t/vRsDLMr32hkh6K', NULL, 'user', '2022-07-25 07:37:53', '2022-07-25 07:37:53'),
(28, '', 'raswan@gmailcom', '$2a$04$RGc53M1lmI3w2HYkfmodv.PGghskHgiA8BMnzkOSaRwHUOo1wSrb.', NULL, 'user', '2022-07-25 08:06:58', '2022-07-25 08:06:58'),
(29, '', 'raswan@gmailcom', '$2a$04$KtXLKCvIAJNV5kxr73e5s.rvn/K8d0JMGtxliqhh.vxc7mzmEsgVO', NULL, 'user', '2022-07-25 08:08:15', '2022-07-25 08:08:15'),
(30, '', 'raswan@gmailcom', '$2a$04$eB6DaB2snlqJ7.zkVdEvsOtFHEyRA7AjQesiIalV3Mlh9M/P6SgiK', NULL, 'user', '2022-07-25 08:11:09', '2022-07-25 08:11:09'),
(31, '', 'raswan@gmailcom', '$2a$04$zM6iQV5WY3JKPp5Ji3x0ueageKOLSUSsoxJiUaxRnbG5FvF60ivgy', NULL, 'user', '2022-07-25 08:11:13', '2022-07-25 08:11:13'),
(32, '', 'raswan@gmailcom', '$2a$04$xY3FVYx6NaqhTKel8wJYc.qwee4b2CnKri.0lviXxcXoiYe26iC/q', NULL, 'user', '2022-07-25 08:14:38', '2022-07-25 08:14:38'),
(33, '', 'raswan@gmailcom', '$2a$04$XICXkOVoo5BfBJMuktlEwujDKeSpBCdZ2eoVHEBw/2wzzyyhHt7B6', NULL, 'user', '2022-07-25 08:14:42', '2022-07-25 08:14:42'),
(34, '', 'raswan@gmailcom', '$2a$04$ml8LMCnB02Lf16j73tXkLOmSRFxRQauOogNYCU2Q7gdQSPOG5Fu1G', NULL, 'user', '2022-07-25 08:19:12', '2022-07-25 08:19:12'),
(35, '', 'raswan@gmailcom', '$2a$04$RJ7pHNYzCr0KXnvrhZNTee0Uta0p0K2H/f4zM5QZ8km38u9/OGuB.', NULL, 'user', '2022-07-25 08:19:31', '2022-07-25 08:19:31'),
(36, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$5uZvaFDTe2XithfbhPWlheJUgZ0Ky4Wnv5bWJKMeaJKpWkEjGTEYK', NULL, 'user', '2022-07-25 08:37:55', '2022-07-25 08:37:55'),
(37, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$EZLQgkUABkI7FYa81QFux.skftsFqpo9w98fuvBdIW.CNumllBP0W', NULL, 'user', '2022-07-25 08:41:05', '2022-07-25 08:41:05'),
(38, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$BJPpu9wnpfI8FNqdchsUa.rpj4ajXAIxyiCCEq02lmXGKJm52AeG.', NULL, 'user', '2022-07-25 09:39:00', '2022-07-25 09:39:00'),
(39, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$oVKeUZS/gm/5GDeazSdE..T9hco.Km74hKX6/6U7GT6IJ1D03ikNa', NULL, 'user', '2022-07-25 16:25:50', '2022-07-25 16:25:50'),
(40, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$DE/EpXrMW3pMW4WJOCapfeQIex.FPdya9cD.Pw1dtGL4OE1R1khaq', NULL, 'user', '2022-07-27 04:47:45', '2022-07-27 04:47:45'),
(41, 'Raswan kampret 0033 sf', 'raswan@gmail.com', '$2a$04$kk0PymxZZIe5AaIFBCqoneplAHUHlN4bfhHxHzrlfGzr5k6BH/3Ke', NULL, 'user', '2022-07-27 04:48:57', '2022-07-27 04:48:57'),
(42, 'Raswan kampret 0033 sf', 'raswan@gmailcinacau.co', '$2a$04$VvRayPEgIyxk.sqr5u3HlefkwwiFP8nfHtrkt.0W3y5m6AyYeSY2.', NULL, 'user', '2022-07-27 04:49:12', '2022-07-27 04:49:12'),
(43, 'coba', 'raswan@gmailcinacau.co', '$2a$04$pdd742EiSP3LIGbG1x.wJ.iAkV8ojX70hqbJV.m9vNeihxpIVlCBy', NULL, 'user', '2022-07-27 04:49:57', '2022-07-27 04:49:57'),
(44, 'coba', 'raswan@gmailcinacau.co', '$2a$04$SUoVi5gEyfSGyCJT.0apW.0dgltE6unjz4dShJEzQ3d87e7aMprKq', NULL, 'user', '2022-07-27 05:34:36', '2022-07-27 05:34:36'),
(45, 'coba', 'raswan@gmailcinacau.co', '$2a$04$iJyV5.4D8rs7EKP0Hpz87uLewncIeAzIHAQ3TXiBbk44PBu5IdN9u', NULL, 'user', '2022-07-29 11:14:44', '2022-07-29 11:14:44'),
(46, 'coba', 'raswan@gmailcinacau.co', '$2a$04$0Z.NWA3BCukyLD9Nt22aW.7ebPHQ2PFIja69sEftRQvG/4nwY.OUW', NULL, 'user', '2022-07-29 15:56:34', '2022-07-29 15:56:34'),
(47, 'coba', 'raswan@gmailcinacau.co', '$2a$04$rPyJx7HDHYdQy9ZxgMkZZeCAypUl29oGmaiMJcOC0nxY7lFxyrHoO', NULL, 'user', '2022-07-31 16:33:12', '2022-07-31 16:33:12'),
(48, 'coba', 'raswan@adel.com', '$2a$04$DUduEGU6.lzxEuiEks7OmuKbWYD4TS3SA0rd64cUKxMw3mGrXMk/m', NULL, 'user', '2022-07-31 16:35:52', '2022-07-31 16:35:52'),
(49, 'coba', 'raswan@adelia.com', '$2a$04$ZNSDc6H89BLWtlAe/20RruMfBQT8KXgUQVZCXmFVRPmSAQi3VAzdG', NULL, 'user', '2022-07-31 16:37:54', '2022-07-31 16:37:54'),
(50, 'coba', 'raswan@adeliatahir.com', '$2a$04$PCZ3s8tKOqE8Wl2bOm5SjuGRdbgY/oWHmJW164DWD4TLxQ3ch9z5m', NULL, 'user', '2022-08-03 16:59:26', '2022-08-03 16:59:26'),
(51, 'coba', 'raswan@adeliatahir.com', '$2a$04$BU5Qw2TjXnEo10CMpDtX3Ot1gxhx2EZT5iKwOm4PKTAivCpeanHfa', '', 'user', '2022-08-11 13:20:44', '2022-08-11 13:20:44'),
(52, 'coba', 'middleWare@middleWare.', '$2a$04$ccMfy1u4/Wixl/D1y8ERmOEURA0FriTjuaHHMcF7XaGJ2Iv.Y0wR.', 'images/52-logo php1.jpg', 'user', '2022-08-11 13:58:54', '2022-08-13 17:58:19'),
(53, 'coba', 'raswan@middleWare.com', '$2a$04$fojptlnI9HEvkUdArcKlju.1TKJXg8ciO/WTDmwhOGwUFxIz6bKLq', '', 'user', '2022-08-12 06:24:48', '2022-08-12 06:24:48'),
(54, 'coba', 'raswan@middleWare1.com', '$2a$04$/BIUim6.WPT6Vd1Zy7JC/ura8H0yHvxSngSGptIJrUZYZVr/QqDWK', '', 'user', '2022-08-13 15:05:14', '2022-08-13 15:05:14'),
(55, 'coba', 'raswan@middleWare1.com', '$2a$04$7Zq8bQJGDBll719LU14nr.RsQNI3dBCITHBEqHpPWxKR5yUxDbyfa', '', 'user', '2022-08-13 19:21:45', '2022-08-13 19:21:45'),
(56, 'coba', 'raswan@middleWare1.com', '$2a$04$KhVQy5Qfd2Th7xqh60QTC.W2BSTfDxDamI242DobmBVHz9DbOvsCm', '', 'user', '2022-08-13 19:22:09', '2022-08-13 19:22:09'),
(57, 'coba', 'raswan@middleWare1.com', '$2a$04$AQ3cPJH2Tehv9lULRoM/Bu.JRfngxodMyjfekV6gvNtIws2Iqsw.C', '', 'user', '2022-08-13 19:24:15', '2022-08-13 19:24:15'),
(58, 'coba', 'raswan@middleWare1.com', '$2a$04$aRz7TSEe4Fda547swWId/OSPo69Vh.iFWaO6M6B6n1FE3q7c0oyOq', '', 'user', '2022-08-13 19:24:52', '2022-08-13 19:24:52'),
(59, 'coba', 'raswan@middleWare1.com', '$2a$04$yy7DCLl0t52CEVsBpWmm5.dn6e4UjkFbnGLYpSizUtTHaGV4JP.Iy', '', 'user', '2022-08-13 19:25:46', '2022-08-13 19:25:46'),
(60, 'coba', 'raswan@middleWare1.com', '$2a$04$ghW0oELNqLHNQSnDMwsUPuK9LTi4DdY2/j54hdfHUlPOe0P6EgbSu', '', 'user', '2022-08-13 19:26:32', '2022-08-13 19:26:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
