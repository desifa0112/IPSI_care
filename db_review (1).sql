-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 05.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_review`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator`
--

CREATE TABLE `administrator` (
  `ID_ADMINISTRATOR` varchar(20) NOT NULL,
  `NAMA_LENGKAP` varchar(100) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_service`
--

CREATE TABLE `customer_service` (
  `id_customer_service` int(11) NOT NULL,
  `kritik` text NOT NULL,
  `saran` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer_service`
--

INSERT INTO `customer_service` (`id_customer_service`, `kritik`, `saran`, `id_user`) VALUES
(1, 'gsdfgfds', 'gdfsgds', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disscussion`
--

CREATE TABLE `disscussion` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `teks` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `k` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `disscussion`
--

INSERT INTO `disscussion` (`id`, `id_user`, `teks`, `waktu`, `k`) VALUES
(28, 3, 'Ivj', '2023-03-28 19:06:00', 'DvRpEzZUJk'),
(29, 3, 'Bksa', '2023-03-28 19:10:06', 'wkpIfWtNRS'),
(30, 1, 'asdf', '2023-05-14 12:23:09', 'a'),
(31, 1, 'g', '2023-05-14 12:29:10', 'd'),
(32, 4, 'uDyt', '2023-12-01 04:02:34', 'bzga'),
(33, 4, 'vduGsta', '2023-12-01 04:03:27', 'qLuDaqa'),
(34, 4, 'Doya', '2023-12-01 04:03:47', 'Doya'),
(35, 4, 'Thle', '2023-12-01 04:03:58', 'OPie'),
(36, 4, 'XEyaF', '2023-12-01 04:11:14', 'GEcWn'),
(37, 4, 'brWVjW', '2023-12-01 04:11:32', 'WoEVeW'),
(38, 1, 'jqoOTMq', '2023-12-01 04:12:00', 'gqWLTun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `isi`, `id_user`) VALUES
(2, 'rtrwar', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `produk`, `id_user`, `lokasi`, `tanggal`) VALUES
(1, 'Pfizer', '1', '', NULL),
(2, 'Dokter Gigi', '1', '5q45qw24', '2023-12-01'),
(3, 'Dokter Spesialis', '1', 'Jakarta Barat', '2023-12-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_PENGGUNA` varchar(20) NOT NULL,
  `NAMA_LENGKAP` varchar(100) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `TANGGAL_LAHIR` date DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_review`, `isi`, `id_user`) VALUES
(1, 'test', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `no_hp`) VALUES
(1, 'joko@gmail.com', '$2y$10$dh8YxVLaDfIGldR8pOHF5uj70nUOSQUJ.shFF4zjGBi01zP7FeVUK', '53454'),
(2, 'kiki@gmail.com', '$2y$10$jzetFJabbYzboPRrF8Bjb.1WecGU0TfKfGWb3ftzTcyVmc/Mr1Aq.', '08471812312');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`ID_ADMINISTRATOR`);

--
-- Indeks untuk tabel `customer_service`
--
ALTER TABLE `customer_service`
  ADD PRIMARY KEY (`id_customer_service`);

--
-- Indeks untuk tabel `disscussion`
--
ALTER TABLE `disscussion`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_PENGGUNA`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer_service`
--
ALTER TABLE `customer_service`
  MODIFY `id_customer_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `disscussion`
--
ALTER TABLE `disscussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
