-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2024 pada 13.09
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cape`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id` int(11) NOT NULL,
  `w1` float DEFAULT NULL,
  `w2` float DEFAULT NULL,
  `w3` float DEFAULT NULL,
  `w4` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id`, `w1`, `w2`, `w3`, `w4`) VALUES
(1, 0.3, 0.25, 0.15, 0.3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `jarak_ideal_topsis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `jarak_ideal_topsis` (
`id` int(11)
,`nama_pakan` varchar(255)
,`d_positif` double
,`d_negatif` double
);

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `nilai_preferensi_saw`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `nilai_preferensi_saw` (
`id` int(11)
,`nama_pakan` varchar(255)
,`nilai_preferensi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `nilai_preferensi_topsis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `nilai_preferensi_topsis` (
`id` int(11)
,`nama_pakan` varchar(255)
,`nilai_preferensi` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakan_lele`
--

CREATE TABLE `pakan_lele` (
  `id` int(11) NOT NULL,
  `nama_pakan` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kualitas` int(11) DEFAULT NULL,
  `ketersediaan` int(11) DEFAULT NULL,
  `kandungan_nutrisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pakan_lele`
--

INSERT INTO `pakan_lele` (`id`, `nama_pakan`, `harga`, `kualitas`, `ketersediaan`, `kandungan_nutrisi`) VALUES
(1, 'bekichot', 10000, 50, 80, 90),
(2, 'cacing', 12000, 60, 85, 80),
(3, 'pelet', 8000, 40, 75, 85);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pakan_lele_normalized_saw`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pakan_lele_normalized_saw` (
`id` int(11)
,`nama_pakan` varchar(255)
,`n_harga` decimal(14,4)
,`n_kualitas` decimal(14,4)
,`n_ketersediaan` decimal(14,4)
,`n_kandungan_nutrisi` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pakan_lele_normalized_topsis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pakan_lele_normalized_topsis` (
`id` int(11)
,`nama_pakan` varchar(255)
,`n_harga` decimal(14,4)
,`n_kualitas` decimal(14,4)
,`n_ketersediaan` decimal(14,4)
,`n_kandungan_nutrisi` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pakan_lele_weighted_saw`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pakan_lele_weighted_saw` (
`id` int(11)
,`nama_pakan` varchar(255)
,`v_harga` double
,`v_kualitas` double
,`v_ketersediaan` double
,`v_kandungan_nutrisi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pakan_lele_weighted_topsis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pakan_lele_weighted_topsis` (
`id` int(11)
,`nama_pakan` varchar(255)
,`v_harga` decimal(24,4)
,`v_kualitas` decimal(24,4)
,`v_ketersediaan` decimal(24,4)
,`v_kandungan_nutrisi` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alvinmasterl4d2@gmail.com', '$2y$10$nIsUJlPaHI7l2Llrs8OxquMDoH/ho/BJbq2tILtufc2MnnTil9hoy', '2024-07-10 06:01:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `solusi_ideal_topsis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `solusi_ideal_topsis` (
`a_pos_harga` decimal(24,4)
,`a_neg_harga` decimal(24,4)
,`a_pos_kualitas` decimal(24,4)
,`a_neg_kualitas` decimal(24,4)
,`a_pos_ketersediaan` decimal(24,4)
,`a_neg_ketersediaan` decimal(24,4)
,`a_pos_kandungan_nutrisi` decimal(24,4)
,`a_neg_kandungan_nutrisi` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `topsis_bobot`
--

CREATE TABLE `topsis_bobot` (
  `id` int(11) NOT NULL,
  `w1` int(11) DEFAULT NULL,
  `w2` int(11) DEFAULT NULL,
  `w3` int(11) DEFAULT NULL,
  `w4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `topsis_bobot`
--

INSERT INTO `topsis_bobot` (`id`, `w1`, `w2`, `w3`, `w4`) VALUES
(1, 5, 3, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `topsis_pakan_lele`
--

CREATE TABLE `topsis_pakan_lele` (
  `id` int(11) NOT NULL,
  `nama_pakan` varchar(255) DEFAULT NULL,
  `harga` int(7) DEFAULT NULL,
  `kualitas` int(7) DEFAULT NULL,
  `ketersediaan` int(7) DEFAULT NULL,
  `kandungan_nutrisi` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `topsis_pakan_lele`
--

INSERT INTO `topsis_pakan_lele` (`id`, `nama_pakan`, `harga`, `kualitas`, `ketersediaan`, `kandungan_nutrisi`) VALUES
(1, 'bekichot', 5, 2, 4, 3),
(2, 'cacing', 4, 5, 4, 2),
(3, 'pelet', 4, 3, 5, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kazuma', 'alvinmasterl4d2@gmail.com', NULL, '$2y$10$6kSAe3FLA/Q7M5KtqgUZa.9BLiO.pv6MaKoMHm7c3h4O17TmX.nGm', NULL, '2024-07-10 05:31:13', '2024-07-10 05:31:13'),
(2, 'alvin', 'alvin.abdulrahman@yahoo.com', NULL, '$2y$10$6BDnT/NibROYQWIMT8ZEju4Sa.XM4NEg5WHPh7Mxuz3JrIyeG3SE2', NULL, '2024-07-10 06:38:53', '2024-07-10 06:38:53'),
(3, 'sudah_muak', 'muakbanget@gmail.com', NULL, '$2y$10$dwt/Wj6XRN5Ghtb.0HM86.Oec65GstfaY0YffHkyS6Od6Zi6Jbnia', NULL, '2024-07-12 03:15:34', '2024-07-12 03:15:34');

-- --------------------------------------------------------

--
-- Struktur untuk view `jarak_ideal_topsis`
--
DROP TABLE IF EXISTS `jarak_ideal_topsis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jarak_ideal_topsis`  AS SELECT `w`.`id` AS `id`, `w`.`nama_pakan` AS `nama_pakan`, sqrt(pow(`w`.`v_harga` - `s`.`a_pos_harga`,2) + pow(`w`.`v_kualitas` - `s`.`a_pos_kualitas`,2) + pow(`w`.`v_ketersediaan` - `s`.`a_pos_ketersediaan`,2) + pow(`w`.`v_kandungan_nutrisi` - `s`.`a_pos_kandungan_nutrisi`,2)) AS `d_positif`, sqrt(pow(`w`.`v_harga` - `s`.`a_neg_harga`,2) + pow(`w`.`v_kualitas` - `s`.`a_neg_kualitas`,2) + pow(`w`.`v_ketersediaan` - `s`.`a_neg_ketersediaan`,2) + pow(`w`.`v_kandungan_nutrisi` - `s`.`a_neg_kandungan_nutrisi`,2)) AS `d_negatif` FROM (`pakan_lele_weighted_topsis` `w` join `solusi_ideal_topsis` `s`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `nilai_preferensi_saw`
--
DROP TABLE IF EXISTS `nilai_preferensi_saw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nilai_preferensi_saw`  AS SELECT `pakan_lele_weighted_saw`.`id` AS `id`, `pakan_lele_weighted_saw`.`nama_pakan` AS `nama_pakan`, `pakan_lele_weighted_saw`.`v_harga`+ `pakan_lele_weighted_saw`.`v_kualitas` + `pakan_lele_weighted_saw`.`v_ketersediaan` + `pakan_lele_weighted_saw`.`v_kandungan_nutrisi` AS `nilai_preferensi` FROM `pakan_lele_weighted_saw` ORDER BY `pakan_lele_weighted_saw`.`v_harga`+ `pakan_lele_weighted_saw`.`v_kualitas` + `pakan_lele_weighted_saw`.`v_ketersediaan` + `pakan_lele_weighted_saw`.`v_kandungan_nutrisi` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `nilai_preferensi_topsis`
--
DROP TABLE IF EXISTS `nilai_preferensi_topsis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nilai_preferensi_topsis`  AS SELECT `jarak_ideal_topsis`.`id` AS `id`, `jarak_ideal_topsis`.`nama_pakan` AS `nama_pakan`, `jarak_ideal_topsis`.`d_positif`/ (`jarak_ideal_topsis`.`d_positif` + `jarak_ideal_topsis`.`d_negatif`) AS `nilai_preferensi` FROM `jarak_ideal_topsis` ORDER BY `jarak_ideal_topsis`.`d_positif`/ (`jarak_ideal_topsis`.`d_positif` + `jarak_ideal_topsis`.`d_negatif`) DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pakan_lele_normalized_saw`
--
DROP TABLE IF EXISTS `pakan_lele_normalized_saw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pakan_lele_normalized_saw`  AS SELECT `pakan_lele`.`id` AS `id`, `pakan_lele`.`nama_pakan` AS `nama_pakan`, (select min(`pakan_lele`.`harga`) from `pakan_lele`) / `pakan_lele`.`harga` AS `n_harga`, `pakan_lele`.`kualitas`/ (select max(`pakan_lele`.`kualitas`) from `pakan_lele`) AS `n_kualitas`, `pakan_lele`.`ketersediaan`/ (select max(`pakan_lele`.`ketersediaan`) from `pakan_lele`) AS `n_ketersediaan`, `pakan_lele`.`kandungan_nutrisi`/ (select max(`pakan_lele`.`kandungan_nutrisi`) from `pakan_lele`) AS `n_kandungan_nutrisi` FROM `pakan_lele` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pakan_lele_normalized_topsis`
--
DROP TABLE IF EXISTS `pakan_lele_normalized_topsis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pakan_lele_normalized_topsis`  AS SELECT `topsis_pakan_lele`.`id` AS `id`, `topsis_pakan_lele`.`nama_pakan` AS `nama_pakan`, (select min(`topsis_pakan_lele`.`harga`) from `topsis_pakan_lele`) / `topsis_pakan_lele`.`harga` AS `n_harga`, `topsis_pakan_lele`.`kualitas`/ (select max(`topsis_pakan_lele`.`kualitas`) from `topsis_pakan_lele`) AS `n_kualitas`, `topsis_pakan_lele`.`ketersediaan`/ (select max(`topsis_pakan_lele`.`ketersediaan`) from `topsis_pakan_lele`) AS `n_ketersediaan`, `topsis_pakan_lele`.`kandungan_nutrisi`/ (select max(`topsis_pakan_lele`.`kandungan_nutrisi`) from `topsis_pakan_lele`) AS `n_kandungan_nutrisi` FROM `topsis_pakan_lele` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pakan_lele_weighted_saw`
--
DROP TABLE IF EXISTS `pakan_lele_weighted_saw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pakan_lele_weighted_saw`  AS SELECT `n`.`id` AS `id`, `n`.`nama_pakan` AS `nama_pakan`, `n`.`n_harga`* `b`.`w1` AS `v_harga`, `n`.`n_kualitas`* `b`.`w2` AS `v_kualitas`, `n`.`n_ketersediaan`* `b`.`w3` AS `v_ketersediaan`, `n`.`n_kandungan_nutrisi`* `b`.`w4` AS `v_kandungan_nutrisi` FROM (`pakan_lele_normalized_saw` `n` join `bobot` `b`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `pakan_lele_weighted_topsis`
--
DROP TABLE IF EXISTS `pakan_lele_weighted_topsis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pakan_lele_weighted_topsis`  AS SELECT `n`.`id` AS `id`, `n`.`nama_pakan` AS `nama_pakan`, `n`.`n_harga`* `b`.`w1` AS `v_harga`, `n`.`n_kualitas`* `b`.`w2` AS `v_kualitas`, `n`.`n_ketersediaan`* `b`.`w3` AS `v_ketersediaan`, `n`.`n_kandungan_nutrisi`* `b`.`w4` AS `v_kandungan_nutrisi` FROM (`pakan_lele_normalized_topsis` `n` join `topsis_bobot` `b`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `solusi_ideal_topsis`
--
DROP TABLE IF EXISTS `solusi_ideal_topsis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `solusi_ideal_topsis`  AS SELECT min(`pakan_lele_weighted_topsis`.`v_harga`) AS `a_pos_harga`, max(`pakan_lele_weighted_topsis`.`v_harga`) AS `a_neg_harga`, max(`pakan_lele_weighted_topsis`.`v_kualitas`) AS `a_pos_kualitas`, min(`pakan_lele_weighted_topsis`.`v_kualitas`) AS `a_neg_kualitas`, max(`pakan_lele_weighted_topsis`.`v_ketersediaan`) AS `a_pos_ketersediaan`, min(`pakan_lele_weighted_topsis`.`v_ketersediaan`) AS `a_neg_ketersediaan`, max(`pakan_lele_weighted_topsis`.`v_kandungan_nutrisi`) AS `a_pos_kandungan_nutrisi`, min(`pakan_lele_weighted_topsis`.`v_kandungan_nutrisi`) AS `a_neg_kandungan_nutrisi` FROM `pakan_lele_weighted_topsis` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakan_lele`
--
ALTER TABLE `pakan_lele`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `topsis_bobot`
--
ALTER TABLE `topsis_bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topsis_pakan_lele`
--
ALTER TABLE `topsis_pakan_lele`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pakan_lele`
--
ALTER TABLE `pakan_lele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `topsis_bobot`
--
ALTER TABLE `topsis_bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `topsis_pakan_lele`
--
ALTER TABLE `topsis_pakan_lele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
