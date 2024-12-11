-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Des 2024 pada 12.48
-- Versi Server: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Nawawi', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Imam Nawawi', 'imam', '200ceb26807d6bf99fd6f4f0d1ca54d4'),
(3, 'reza', 'reza', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(5) NOT NULL,
  `nama_anggota` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, 'Irfan Maulana', 'Laki-Laki', '02144445566', 'BSD', 'irfan@gmail.com', '123'),
(2, 'Nur Kumalasari', 'Perempuan', '02133335555', 'Ciledug', 'nur@gmail.com', '123'),
(3, 'Sanjaya Wijaya', 'Laki-Laki', '02111115555', 'Cimone', 'sanjaya@gmail.com', '123'),
(4, 'Eva Irfianingsih', 'Perempuan', '02166665555', 'Tangerang', 'eva@gmail.com', '123'),
(5, 'Ifqoh Permatasari', 'Perempuan', '02177775555', 'Cengkareng', 'ifqoh@gmail.com', '123'),
(6, 'Indah Riana', 'Perempuan', '02188885555', 'Fatmawati', 'indah@gmail.com', '123'),
(7, 'Tiwie Andrawati', 'Perempuan', '02199995555', 'Warung Jati', 'tiwie@gmail.com', '123'),
(11, 'Imam Nawawi', 'Laki-Laki', '087829398630', 'jl H Isa no 1 Rengas Ciputat Timur', 'imam.imw@bsi.ac.id', '54321'),
(9, 'Hisbu Utomo', 'Laki-Laki', '02133336666', 'Salemba', 'hisbu@gmail.com', '123'),
(10, 'Zaenal Abidin', 'Laki-Laki', '02133337777', 'Bekasi', 'Zaenal@gmail.com', '123'),
(12, 'Reza Alfianzah', 'Laki-Laki', '081296549688', 'jalan kendari', 'rezaalfianzah123@gmail.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak 2','Rak 3') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `status_buku` enum('1','0') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul_buku`, `pengarang`, `thn_terbit`, `penerbit`, `isbn`, `jumlah_buku`, `lokasi`, `gambar`, `tgl_input`, `status_buku`) VALUES
(1, 1, 'Robotika Sederhana', 'Siswoyo Utomo', '2013-01-01', 'Wacana Ria', '34354422', 5, 'Rak 3', 'gambar1733887021.JPG', '2018-07-24', '0'),
(2, 3, 'Mahir Dengan PHP', 'Adri Kusuma', '2011-02-02', 'Pustaka Bangsa', '654123', 10, 'Rak 2', 'gambar1733887488.jpg', '2024-12-11', '1'),
(3, 2, 'Mahir Mewarnai', 'Akhmad Rahmat', '2014-03-03', 'CV.Indo Kreasi', '76234342', 6, 'Rak 3', 'gambar1733887508.jpg', '2018-07-25', '0'),
(4, 1, 'Hukum Fisika', 'Kurnia Sandi', '2013-04-04', 'Wacana Ria', '233214414', 7, 'Rak 2', 'gambar1733887287.jpg', '2018-07-24', '0'),
(5, 8, 'Mahir Bahasa Inggris', 'Aliuddin', '2013-05-05', 'CV.Indo Kreasi', '3553234454', 5, 'Rak 1', 'gambar1733887302.jpg', '2018-07-25', '1'),
(6, 4, 'Public Speaking', 'Pambudi Prasetyo', '2015-06-06', 'Aldi Pustaka', '843594759', 9, 'Rak 2', 'gambar1733887316.jpg', '2018-07-25', '1'),
(7, 3, 'Trik SQL', 'Ahdim Makaren', '2014-07-07', 'Wacana Ria', '54234762', 6, 'Rak 1', 'gambar1733887330.jpg', '2018-03-14', '1'),
(8, 6, 'Kemurnian Agama', 'Pambudi Prasetyo', '2014-08-08', 'Aldi Pustaka', '980958607', 5, 'Rak 3', 'gambar1733887344.jpg', '2018-07-24', '0'),
(9, 1, 'Mikrokontroler', 'Ahdim Makaren', '2012-09-09', 'Wacana Ria', '12121314', 11, 'Rak 2', 'gambar1733887357.jpg', '2018-04-11', '1'),
(10, 1, '24 Jam Belajar FrameWork', 'Rudi Hartono', '2017-03-02', 'Unjung Pena', '12345345', 10, 'Rak 2', 'gambar1733887368.jpg', '2018-05-08', '1'),
(11, 2, 'JavaScript uncover', 'Andre Pratama', '2015-03-12', 'Duniailkom', '9087654', 8, 'Rak 1', 'gambar1733887384.jpg', '2018-07-24', '0'),
(12, 3, 'Pemrograman dan Hack Android untuk pemula dan adva', 'Edy Winarno ST, M.eng, Ali Zaki, Sm', '2016-09-23', 'Elex Media Komputindo', '4234252', 7, 'Rak 1', 'gambar1733887409.jpg', '2018-07-25', '1'),
(13, 4, 'Menyingkap Rahasia Web Master', 'Nanang Suryana', '2015-10-10', 'Informatika', '879658847987', 3, 'Rak 2', 'gambar1733887447.jpg', '0000-00-00', '1'),
(14, 2, 'Membongkar Rahasia Web Master lagi', 'Andi Nugroho', '2016-05-06', 'Informatika', '76598980789', 5, 'Rak 1', 'gambar1733887473.jpg', '2018-07-25', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE IF NOT EXISTS `detail_pinjam` (
  `id_pinjam` int(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` double NOT NULL,
  `status_kembali` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `id_buku`, `tgl_pengembalian`, `denda`, `status_kembali`) VALUES
(6, 3, '0000-00-00', 20000, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sains'),
(2, 'Hobby'),
(3, 'Komputer'),
(4, 'Komunikasi'),
(5, 'Hukum'),
(6, 'Agama'),
(7, 'Populer'),
(8, 'Bahasa'),
(9, 'komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_pinjam` int(5) NOT NULL,
  `tanggal` datetime NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `totaldenda` double NOT NULL DEFAULT '0',
  `status_pinjam` enum('0','1') DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tanggal`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `totaldenda`, `status_pinjam`) VALUES
(6, '2018-07-25 07:53:20', 2, '2018-07-23', '2018-07-25', 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_pinjam` int(11) NOT NULL,
  `tgl_pencatatan` datetime NOT NULL,
  `id_anggota` int(4) NOT NULL,
  `id_buku` int(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `total_denda` double NOT NULL,
  `status_pengembalian` varchar(15) NOT NULL,
  `status_peminjaman` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_pinjam`, `tgl_pencatatan`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`, `tgl_pengembalian`, `total_denda`, `status_pengembalian`, `status_peminjaman`) VALUES
(1, '2018-07-25 08:19:44', 4, 6, '2018-07-16', '2018-07-18', 25000, '2018-07-20', 50000, '1', '1'),
(3, '2018-07-25 08:35:35', 7, 14, '2018-07-23', '2018-07-27', 100000, '2018-07-25', 200000, '1', '1'),
(4, '2018-07-25 08:41:12', 4, 5, '2018-07-10', '2018-07-13', 100000, '2018-07-13', 0, '1', '1'),
(5, '2018-07-25 08:41:32', 5, 12, '2018-07-16', '2018-07-19', 100000, '2018-07-20', 100000, '1', '1'),
(6, '2024-12-11 04:29:23', 12, 2, '2024-12-11', '2024-12-18', 10, '2024-12-20', 20, '1', '1'),
(7, '2024-12-11 04:30:18', 1, 2, '2024-12-11', '2024-12-18', 10000, '2024-12-20', 20000, '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD UNIQUE KEY `id_buku` (`id_buku`),
  ADD KEY `id_pinjam` (`id_pinjam`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
