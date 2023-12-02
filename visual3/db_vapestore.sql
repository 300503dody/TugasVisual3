-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2023 pada 12.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vapestore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `ID_Detail_Pesanan` int(11) NOT NULL,
  `ID_Pesanan` int(11) DEFAULT NULL,
  `ID_Produk` int(11) DEFAULT NULL,
  `Jumlah` int(11) DEFAULT NULL,
  `Harga_Satuan` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`ID_Detail_Pesanan`, `ID_Pesanan`, `ID_Produk`, `Jumlah`, `Harga_Satuan`) VALUES
(1, 1, 1, 20, '100'),
(2, 1, 2, 20, '125');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama_Depan` varchar(50) DEFAULT NULL,
  `Nama_Belakang` varchar(50) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Kota` varchar(50) DEFAULT NULL,
  `Kode_Pos` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Nomor_Telepon` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama_Depan`, `Nama_Belakang`, `Alamat`, `Kota`, `Kode_Pos`, `Email`, `Nomor_Telepon`) VALUES
(1, 'nazmi', 'spiderman', 'nazmi spiderman', 'tanjung', '2203', 'nazmispiderman', '09898899'),
(2, 'ddwd', 'kkmkm', 'mllnn', 'ban nb', '00', '000', '900'),
(3, 'jdjdjd', 'sgs', 'juhu', 'huhu', '76444', 'hugug', '09766');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `ID_Pesanan` int(11) NOT NULL,
  `ID_Pelanggan` int(11) DEFAULT NULL,
  `Tanggal_Pesanan` varchar(50) DEFAULT NULL,
  `Total_Harga` int(11) DEFAULT NULL,
  `Status_Pesanan` varchar(50) DEFAULT NULL,
  `Metode_Pembayaran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`ID_Pesanan`, `ID_Pelanggan`, `Tanggal_Pesanan`, `Total_Harga`, `Status_Pesanan`, `Metode_Pembayaran`) VALUES
(1, 1, '2023-10-11', 125, 'on going', 'Brimo'),
(2, 2, '2022-12-31', 135, 'sea on ship', 'qris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ID_Produk` int(11) NOT NULL,
  `Nama_Produk` varchar(20) DEFAULT NULL,
  `Deskripsi` varchar(55) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Merek` varchar(50) DEFAULT NULL,
  `Tanggal_Rilis` varchar(20) DEFAULT NULL,
  `Kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ID_Produk`, `Nama_Produk`, `Deskripsi`, `Harga`, `Stok`, `Merek`, `Tanggal_Rilis`, `Kategori`) VALUES
(1, 'liquid cream', 'untuk anak diatas 18+', 12, 20, 'minus2', '2022-21-11', 'liquid'),
(2, 'liquid fruty', 'mhmhu', 111, 56, 'uuyyt', '2022', 'nic3'),
(3, 'liquid saltnic', 'untuk dewasa leher beton', 120, 12, 'vapeon', '2023-12-31', 'nic6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplier`
--

CREATE TABLE `suplier` (
  `ID_Supplier` int(11) NOT NULL,
  `ID_Produk` int(11) DEFAULT NULL,
  `Nama_Supplier` varchar(50) DEFAULT NULL,
  `Alamat` varchar(250) DEFAULT NULL,
  `No_Telp` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `suplier`
--

INSERT INTO `suplier` (`ID_Supplier`, `ID_Produk`, `Nama_Supplier`, `Alamat`, `No_Telp`) VALUES
(1, 2, 'eer', 'yg', '0988766'),
(2, 2, 'jjnj', 'hyhu', '2626'),
(3, 2, 'wd', 'ww', '056');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(15) NOT NULL,
  `status` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_user_id` int(10) DEFAULT NULL,
  `update_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`, `status`, `created_at`, `created_user_id`, `update_at`) VALUES
(1, 'admin', 'admin', 'admin', 'true', '2023-11-23', 1, '2023-11-30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`ID_Detail_Pesanan`),
  ADD KEY `ID_Pesanan` (`ID_Pesanan`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`ID_Pesanan`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_Produk`);

--
-- Indeks untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`ID_Supplier`),
  ADD KEY `ID_Produk` (`ID_Produk`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_1` FOREIGN KEY (`ID_Pesanan`) REFERENCES `pesanan` (`ID_Pesanan`),
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_PRODUK`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `pelanggan` (`ID_Pelanggan`);

--
-- Ketidakleluasaan untuk tabel `suplier`
--
ALTER TABLE `suplier`
  ADD CONSTRAINT `suplier_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_PRODUK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
