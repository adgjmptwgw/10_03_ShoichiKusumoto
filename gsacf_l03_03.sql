-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 6 月 12 日 03:25
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_l03_03`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `login_table`
--

CREATE TABLE `login_table` (
  `id` int(11) NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `login_table`
--

INSERT INTO `login_table` (`id`, `password`, `name`) VALUES
(1, '1268', '楠本　翔一'),
(2, '1268', '楠本　翔一'),
(3, '1268', '楠本　翔一'),
(4, '1268', '楠本　翔一'),
(5, '1268', '楠本　翔一'),
(6, '1111', '楠本　翔一'),
(7, '1268', '楠本　翔一'),
(8, '1268', '楠本　翔一'),
(9, '1268', '楠本　翔一'),
(10, '1111', '楠本　翔一');

-- --------------------------------------------------------

--
-- テーブルの構造 `parking time_table`
--

CREATE TABLE `parking time_table` (
  `id` int(12) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `score_table`
--

CREATE TABLE `score_table` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `score_table`
--

INSERT INTO `score_table` (`id`, `score`, `date`, `created_at`) VALUES
(1, 4, '2020-06-04 00:00:00', '2020-06-04 18:03:20'),
(14, 33, '2020-06-05 00:00:00', '2020-06-05 20:37:39'),
(15, 5, '2020-06-06 00:00:00', '2020-06-05 20:38:32'),
(17, 0, '2020-06-06 00:00:00', '2020-06-06 16:43:34'),
(19, 0, '2020-06-13 00:00:00', '2020-06-06 16:44:54'),
(20, 0, '2020-06-06 00:00:00', '2020-06-06 16:48:55'),
(21, 1, '2020-06-06 00:00:00', '2020-06-06 20:52:36'),
(22, 33, '2020-06-06 00:00:00', '2020-06-06 21:51:13'),
(23, 3, '2020-06-06 00:00:00', '2020-06-06 21:52:10'),
(24, 15, '2020-06-06 00:00:00', '2020-06-06 21:53:52'),
(26, 0, '2020-06-07 00:00:00', '2020-06-07 22:02:46'),
(27, 33, '2020-06-08 00:00:00', '2020-06-08 17:10:02'),
(28, 1, '2020-06-08 00:00:00', '2020-06-08 17:10:19'),
(29, 7, '2020-06-08 00:00:00', '2020-06-08 17:11:21'),
(30, 33, '2020-06-09 00:00:00', '2020-06-09 14:51:13');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(4, '販売数', '2020-06-30', '2020-06-04 12:01:50', '2020-06-04 12:01:50'),
(5, '仕入額', '2020-06-30', '2020-06-04 12:02:08', '2020-06-04 12:02:08'),
(6, '氏名', '2020-06-30', '2020-06-04 12:02:52', '2020-06-04 12:02:52'),
(7, '個数テスト', '2020-06-30', '2020-06-04 12:03:19', '2020-06-09 15:41:20'),
(9, 'テスト2', '2020-06-04', '2020-06-04 13:33:50', '2020-06-05 12:09:06'),
(10, 'テスト', '2020-06-04', '2020-06-04 13:34:47', '2020-06-04 13:34:47'),
(11, 'テスト', '2020-06-04', '2020-06-04 13:35:16', '2020-06-04 13:35:16'),
(12, 'テスト', '2020-06-11', '2020-06-04 14:03:32', '2020-06-04 14:03:32'),
(13, 'PHP課題2', '2020-06-05', '2020-06-04 16:08:30', '2020-06-05 12:09:19'),
(14, 'ああ', '2020-06-04', '2020-06-04 16:08:47', '2020-06-04 16:08:47'),
(15, 'あああ', '2020-06-05', '2020-06-04 16:09:01', '2020-06-04 16:09:01'),
(16, 'テスト', '2020-06-05', '2020-06-04 17:34:08', '2020-06-04 17:34:08'),
(17, 'PHP課題', '2020-06-09', '2020-06-09 15:40:40', '2020-06-09 15:40:40');

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`id`, `password`, `name`) VALUES
(1, '1268', '楠本　翔一'),
(2, '1268', '楠本　翔一'),
(3, '1268', '楠本　翔一'),
(4, '1268', '楠本　翔一'),
(5, '1268', '楠本　翔一'),
(6, '1268', '楠本　翔一'),
(7, '1268', '楠本　翔一'),
(8, '1268', '楠本　翔一'),
(9, '1111', '楠本　翔一'),
(10, '1111', '楠本　翔一'),
(11, '1112', '楠本　翔一');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `user_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `user_id`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'testuser', '123456', 1, 0, '2020-06-09 11:44:42', '2020-06-09 11:44:42'),
(2, 'shoicho', '', 0, 0, '2020-06-09 13:22:21', '2020-06-09 13:22:21'),
(3, 'shoichi', '1268', 0, 0, '2020-06-09 13:23:02', '2020-06-09 13:23:02'),
(4, 'test2', '1234', 0, 0, '2020-06-11 22:36:10', '2020-06-11 22:36:10');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `parking time_table`
--
ALTER TABLE `parking time_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `score_table`
--
ALTER TABLE `score_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`id`) USING BTREE;

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `login_table`
--
ALTER TABLE `login_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `parking time_table`
--
ALTER TABLE `parking time_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `score_table`
--
ALTER TABLE `score_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルのAUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
