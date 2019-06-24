-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2019 at 01:59 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_persuratan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen`
--

CREATE TABLE `data_dosen` (
  `id_data_dosen` int(16) NOT NULL,
  `id_master_jabatan` int(16) NOT NULL,
  `id_master_departemen` int(16) NOT NULL,
  `nip_dosen` varchar(32) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `tempat_lahir` varchar(64) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat_dosen` text NOT NULL,
  `telepon_dosen` varchar(16) NOT NULL,
  `email_dosen` varchar(64) NOT NULL,
  `jenis_kelamin` varchar(32) NOT NULL,
  `agama` varchar(64) NOT NULL,
  `Iat` datetime NOT NULL,
  `Uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_dosen`
--

INSERT INTO `data_dosen` (`id_data_dosen`, `id_master_jabatan`, `id_master_departemen`, `nip_dosen`, `nama_dosen`, `tempat_lahir`, `tanggal_lahir`, `alamat_dosen`, `telepon_dosen`, `email_dosen`, `jenis_kelamin`, `agama`, `Iat`, `Uat`) VALUES
(1, 1, 1, '10001111222', 'Billy Ukim, S.T', 'Indonesia', '1977-10-28', 'Jl. Kariango', '0800112233', 'billy.billy@gmail.com', 'L', 'Islam', '0000-00-00 00:00:00', '2018-10-29 14:10:10'),
(2, 2, 1, '0011001223', 'Pujo Satrianto', 'Tenggarong', '1988-10-01', 'Dekat lapangan pemuda', '09991112222', 'pujojo@gmail.com', 'L', 'Islam', '0000-00-00 00:00:00', '2018-10-29 14:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id_data_mahasiswa` int(10) NOT NULL,
  `nim_mahasiswa` varchar(32) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `alamat_mahasiswa` text NOT NULL,
  `tempat_lahir` varchar(64) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email_mahasiswa` varchar(64) NOT NULL,
  `jenis_kelamin` varchar(32) NOT NULL,
  `agama` varchar(64) NOT NULL,
  `telepon_mahasiswa` varchar(16) NOT NULL,
  `status_mahasiswa` varchar(64) NOT NULL,
  `Iat` datetime NOT NULL,
  `Uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id_data_mahasiswa`, `nim_mahasiswa`, `nama_mahasiswa`, `alamat_mahasiswa`, `tempat_lahir`, `tanggal_lahir`, `email_mahasiswa`, `jenis_kelamin`, `agama`, `telepon_mahasiswa`, `status_mahasiswa`, `Iat`, `Uat`) VALUES
(1, 'D42115320', 'Fadel Rezky Ramadhan', 'Jl. BTN Griya Maros Indah', 'Makassar', '1997-02-01', 'fadelr35@gmail.com', 'L', 'Islam', '089631837157', 'Aktif', '0000-00-00 00:00:00', '2018-11-06 06:15:17'),
(3, 'D42115010', 'Ramadhan', 'disini', '', '0000-00-00', 'ramadhan@gmail.com', 'L', '', '08123456789', '', '0000-00-00 00:00:00', '2018-11-21 04:03:47'),
(4, 'D42115321', 'Fadel Rezky', 'disini', '', '0000-00-00', 'aiji@gmail.com', 'P', '', '08123456789', '', '0000-00-00 00:00:00', '2018-11-21 05:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `data_suratinvoice`
--

CREATE TABLE `data_suratinvoice` (
  `id_data_suratinvoice` int(16) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `pengirim` varchar(64) NOT NULL,
  `projek` varchar(128) NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` varchar(64) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_suratinvoice`
--

INSERT INTO `data_suratinvoice` (`id_data_suratinvoice`, `nomor_surat`, `pengirim`, `projek`, `tanggal_selesai`, `deskripsi`, `harga`, `status`, `iat`, `uat`) VALUES
(1, '0001/INV/USI/XII/2018', '', '', '0000-00-00', '', '0', 'SELESAI', '0000-00-00 00:00:00', '2018-12-13 09:12:25'),
(2, '0002/INV/USI/XII/2018', '', '', '0000-00-00', '', '0', '', '0000-00-00 00:00:00', '2018-12-19 04:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `data_suratspk01`
--

CREATE TABLE `data_suratspk01` (
  `id_data_suratspk01` int(16) NOT NULL,
  `pemohon` varchar(64) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `perusahaan` varchar(64) NOT NULL,
  `jabatan_pemohon` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `pesanan` text NOT NULL,
  `waktu_kerja` varchar(32) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `bank` varchar(128) NOT NULL,
  `no_rekening` varchar(32) NOT NULL,
  `pemilik_rekening` varchar(64) NOT NULL,
  `status` varchar(32) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_suratspk01`
--

INSERT INTO `data_suratspk01` (`id_data_suratspk01`, `pemohon`, `nomor_surat`, `perusahaan`, `jabatan_pemohon`, `alamat`, `pesanan`, `waktu_kerja`, `harga`, `bank`, `no_rekening`, `pemilik_rekening`, `status`, `iat`, `uat`) VALUES
(1, 'Billa Armani Abdullah', '0001/SPK-01/USI/XII/2018', 'PT. Billa Tiba Masanya', 'Pemimpin Redaksi PT. Billa Tiba Masanya', 'Jl. Dirgantara, Kec. Pallanga, Kab. Gowa', 'Sistem Informasi Pegawai PT. Billa Tiba Masanya', '120 Hari Kerja', '10000000', 'Bank Sendiri', '1221110021', 'Saya Sendiri', '', '0000-00-00 00:00:00', '2018-12-19 07:31:35'),
(2, 'Fadel Rezky', '0002/SPK01/USI/XII/2018', 'PT. Dimanapun Berada', 'Anggota', 'disini', 'Game Harvest Moon', '120 hari', '100000', 'btpn', '11121222222112', 'saya', '', '0000-00-00 00:00:00', '2018-12-20 08:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `data_suratspk02`
--

CREATE TABLE `data_suratspk02` (
  `id_data_suratspk02` int(16) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `status` varchar(32) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pemohon` varchar(64) NOT NULL,
  `tempat_lahir` varchar(64) NOT NULL,
  `tanggal_lahir` varchar(64) NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(32) NOT NULL,
  `no_ktp` varchar(32) NOT NULL,
  `tugas` varchar(128) NOT NULL,
  `waktu_kerja` varchar(64) NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_surat_aktifkuliah`
--

CREATE TABLE `data_surat_aktifkuliah` (
  `id_data_surat_aktifkuliah` int(16) NOT NULL,
  `id_data_mahasiswa` int(16) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `tanggal_kefakultas` date NOT NULL,
  `tanggal_prosesstaf` date NOT NULL,
  `proses` varchar(32) NOT NULL,
  `keterangan` varchar(32) NOT NULL,
  `arsip` varchar(32) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_surat_aktifkuliah`
--

INSERT INTO `data_surat_aktifkuliah` (`id_data_surat_aktifkuliah`, `id_data_mahasiswa`, `nomor_surat`, `tanggal_pembuatan`, `tanggal_selesai`, `tanggal_kefakultas`, `tanggal_prosesstaf`, `proses`, `keterangan`, `arsip`, `iat`, `uat`) VALUES
(1, 1, '82', '2018-11-01', '2018-11-03', '2018-11-02', '2018-11-02', 'Selesai', '-', '-', '0000-00-00 00:00:00', '2018-11-10 02:34:25'),
(2, 3, '000011110000', '2018-11-01', '2018-11-03', '2018-11-02', '2018-11-02', 'Selesai', '-', '-', '0000-00-00 00:00:00', '2018-11-21 05:48:35'),
(3, 3, '0101001', '2018-11-09', '2018-11-09', '2018-11-09', '2018-11-09', 'Proses', '-', '-', '0000-00-00 00:00:00', '2018-11-21 05:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `data_surat_izinpenelitian`
--

CREATE TABLE `data_surat_izinpenelitian` (
  `id_data_surat_izinpenelitian` int(16) NOT NULL,
  `id_data_mahasiswa` int(16) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `judul_tugasakhir` varchar(128) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `tanggal_kefakultas` date NOT NULL,
  `tanggal_prosesstaf` date NOT NULL,
  `proses_surat` varchar(32) NOT NULL,
  `keterangan` varchar(32) NOT NULL,
  `arsip` varchar(32) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_surat_izinpenelitian`
--

INSERT INTO `data_surat_izinpenelitian` (`id_data_surat_izinpenelitian`, `id_data_mahasiswa`, `nomor_surat`, `judul_tugasakhir`, `tanggal_pembuatan`, `tanggal_selesai`, `tanggal_kefakultas`, `tanggal_prosesstaf`, `proses_surat`, `keterangan`, `arsip`, `iat`, `uat`) VALUES
(1, 3, '000011110000', 'MENGAPA MANUSIA BISA BERGERAK ?', '2018-11-01', '2018-11-30', '2018-11-14', '2018-11-21', 'Selesai', '-', '-', '0000-00-00 00:00:00', '2018-11-21 05:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `data_surat_kerjapraktek`
--

CREATE TABLE `data_surat_kerjapraktek` (
  `id_data_surat_kerjapraktek` int(16) NOT NULL,
  `id_data_mahasiswa` int(16) NOT NULL,
  `nomor_surat` varchar(32) NOT NULL,
  `nama_perusahaan` varchar(64) NOT NULL,
  `alamat_perusahaan` text NOT NULL,
  `tanggal_mulai_kerjapraktek` date NOT NULL,
  `tanggal_selesai_kerjapraktek` date NOT NULL,
  `lama_kerjapraktek` varchar(32) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `tanggal_kefakultas` date NOT NULL,
  `tanggal_prosesstaf` date NOT NULL,
  `status_surat` varchar(32) NOT NULL,
  `keterangan` varchar(32) NOT NULL,
  `arsip` varchar(32) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_data_user` int(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password_admin` varchar(64) NOT NULL,
  `level_akses` varchar(32) NOT NULL,
  `remember_me` int(16) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `email_admin` varchar(64) NOT NULL,
  `telepon_admin` varchar(16) NOT NULL,
  `alamat_admin` text NOT NULL,
  `Iat` datetime NOT NULL,
  `Uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_data_user`, `username`, `nama`, `password_admin`, `level_akses`, `remember_me`, `session_id`, `email_admin`, `telepon_admin`, `alamat_admin`, `Iat`, `Uat`) VALUES
(1, 'D42115320', 'Fadel Rezky Ramadhan', '202cb962ac59075b964b07152d234b70', 'mahasiswa', 0, '8ojd596qnl4b192kd81ocvv6eti8vhn2', 'fadelr35@gmail.com', '089631837157', 'Jl. BTN Griya Maros Indah', '0000-00-00 00:00:00', '2019-02-23 12:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `master_departemen`
--

CREATE TABLE `master_departemen` (
  `id_master_departemen` int(16) NOT NULL,
  `nama_departemen` varchar(64) NOT NULL,
  `jurusan` varchar(64) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_departemen`
--

INSERT INTO `master_departemen` (`id_master_departemen`, `nama_departemen`, `jurusan`, `iat`, `uat`) VALUES
(1, 'Teknik Informatika', 'Teknik Elektro', '0000-00-00 00:00:00', '2018-10-28 17:41:11'),
(2, 'Teknik Elektro', 'Teknik Elektro', '0000-00-00 00:00:00', '2018-10-28 17:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `master_jabatan`
--

CREATE TABLE `master_jabatan` (
  `id_master_jabatan` int(16) NOT NULL,
  `nama_jabatan` varchar(64) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_jabatan`
--

INSERT INTO `master_jabatan` (`id_master_jabatan`, `nama_jabatan`, `iat`, `uat`) VALUES
(1, 'Ketua Program Studi Teknik Informatika', '0000-00-00 00:00:00', '2018-10-28 17:42:19'),
(2, 'Sekretaris Mahasiswa Teknik Informatika', '0000-00-00 00:00:00', '2018-10-28 17:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `master_surat`
--

CREATE TABLE `master_surat` (
  `id_master_surat` int(16) NOT NULL,
  `jenis` varchar(64) NOT NULL,
  `kode` varchar(16) NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_surat`
--

INSERT INTO `master_surat` (`id_master_surat`, `jenis`, `kode`, `iat`, `uat`) VALUES
(1, 'Surat Invoice', 'INV', '0000-00-00 00:00:00', '2018-12-19 04:36:21'),
(2, 'Surat SPK 01', 'SPK01', '0000-00-00 00:00:00', '2018-12-20 07:04:41'),
(3, 'Surat SPK 02', 'SPK02', '0000-00-00 00:00:00', '2018-12-20 07:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `template_header_surat`
--

CREATE TABLE `template_header_surat` (
  `id_template_header_surat` int(16) NOT NULL,
  `id_master_departemen` int(16) NOT NULL,
  `header_surat1` text NOT NULL,
  `header_surat2` text NOT NULL,
  `header_surat3` text NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_surat_aktifkuliah`
--

CREATE TABLE `template_surat_aktifkuliah` (
  `id_template_surat_aktifkuliah` int(16) NOT NULL,
  `id_data_dosen` int(16) NOT NULL,
  `isi_pertama` text NOT NULL,
  `isi_kedua` text NOT NULL,
  `isi_ketiga` text NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_surat_izinpenelitian`
--

CREATE TABLE `template_surat_izinpenelitian` (
  `id_template_surat_izinpenelitian` int(16) NOT NULL,
  `id_data_dosen` int(16) NOT NULL,
  `isi_pertama` text NOT NULL,
  `isi_kedua` text NOT NULL,
  `isi_ketiga` text NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_surat_kerjapraktek`
--

CREATE TABLE `template_surat_kerjapraktek` (
  `id_template_surat_kerjapraktek` int(16) NOT NULL,
  `id_data_dosen` int(16) NOT NULL,
  `isi_pertama` text NOT NULL,
  `isi_kedua` text NOT NULL,
  `isi_ketiga` text NOT NULL,
  `iat` datetime NOT NULL,
  `uat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD PRIMARY KEY (`id_data_dosen`),
  ADD KEY `id_master_jabatan` (`id_master_jabatan`,`id_master_departemen`),
  ADD KEY `id_master_departemen` (`id_master_departemen`),
  ADD KEY `id_master_jabatan_2` (`id_master_jabatan`);

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id_data_mahasiswa`),
  ADD UNIQUE KEY `nim_mahasiswa` (`nim_mahasiswa`);

--
-- Indexes for table `data_suratinvoice`
--
ALTER TABLE `data_suratinvoice`
  ADD PRIMARY KEY (`id_data_suratinvoice`);

--
-- Indexes for table `data_suratspk01`
--
ALTER TABLE `data_suratspk01`
  ADD PRIMARY KEY (`id_data_suratspk01`);

--
-- Indexes for table `data_suratspk02`
--
ALTER TABLE `data_suratspk02`
  ADD PRIMARY KEY (`id_data_suratspk02`);

--
-- Indexes for table `data_surat_aktifkuliah`
--
ALTER TABLE `data_surat_aktifkuliah`
  ADD PRIMARY KEY (`id_data_surat_aktifkuliah`),
  ADD KEY `id_master_surat` (`id_data_mahasiswa`);

--
-- Indexes for table `data_surat_izinpenelitian`
--
ALTER TABLE `data_surat_izinpenelitian`
  ADD PRIMARY KEY (`id_data_surat_izinpenelitian`),
  ADD KEY `id_master_surat` (`id_data_mahasiswa`);

--
-- Indexes for table `data_surat_kerjapraktek`
--
ALTER TABLE `data_surat_kerjapraktek`
  ADD PRIMARY KEY (`id_data_surat_kerjapraktek`),
  ADD KEY `id_master_surat` (`id_data_mahasiswa`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_data_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `master_departemen`
--
ALTER TABLE `master_departemen`
  ADD PRIMARY KEY (`id_master_departemen`);

--
-- Indexes for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  ADD PRIMARY KEY (`id_master_jabatan`);

--
-- Indexes for table `master_surat`
--
ALTER TABLE `master_surat`
  ADD PRIMARY KEY (`id_master_surat`);

--
-- Indexes for table `template_header_surat`
--
ALTER TABLE `template_header_surat`
  ADD PRIMARY KEY (`id_template_header_surat`);

--
-- Indexes for table `template_surat_aktifkuliah`
--
ALTER TABLE `template_surat_aktifkuliah`
  ADD PRIMARY KEY (`id_template_surat_aktifkuliah`),
  ADD KEY `id_data_dosen` (`id_data_dosen`);

--
-- Indexes for table `template_surat_izinpenelitian`
--
ALTER TABLE `template_surat_izinpenelitian`
  ADD PRIMARY KEY (`id_template_surat_izinpenelitian`),
  ADD KEY `id_data_dosen` (`id_data_dosen`);

--
-- Indexes for table `template_surat_kerjapraktek`
--
ALTER TABLE `template_surat_kerjapraktek`
  ADD PRIMARY KEY (`id_template_surat_kerjapraktek`),
  ADD KEY `id_data_dosen` (`id_data_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dosen`
--
ALTER TABLE `data_dosen`
  MODIFY `id_data_dosen` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id_data_mahasiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `data_suratinvoice`
--
ALTER TABLE `data_suratinvoice`
  MODIFY `id_data_suratinvoice` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_suratspk01`
--
ALTER TABLE `data_suratspk01`
  MODIFY `id_data_suratspk01` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_suratspk02`
--
ALTER TABLE `data_suratspk02`
  MODIFY `id_data_suratspk02` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_surat_aktifkuliah`
--
ALTER TABLE `data_surat_aktifkuliah`
  MODIFY `id_data_surat_aktifkuliah` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `data_surat_izinpenelitian`
--
ALTER TABLE `data_surat_izinpenelitian`
  MODIFY `id_data_surat_izinpenelitian` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_surat_kerjapraktek`
--
ALTER TABLE `data_surat_kerjapraktek`
  MODIFY `id_data_surat_kerjapraktek` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_data_user` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `master_departemen`
--
ALTER TABLE `master_departemen`
  MODIFY `id_master_departemen` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  MODIFY `id_master_jabatan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_surat`
--
ALTER TABLE `master_surat`
  MODIFY `id_master_surat` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `template_header_surat`
--
ALTER TABLE `template_header_surat`
  MODIFY `id_template_header_surat` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template_surat_aktifkuliah`
--
ALTER TABLE `template_surat_aktifkuliah`
  MODIFY `id_template_surat_aktifkuliah` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template_surat_izinpenelitian`
--
ALTER TABLE `template_surat_izinpenelitian`
  MODIFY `id_template_surat_izinpenelitian` int(16) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `template_surat_kerjapraktek`
--
ALTER TABLE `template_surat_kerjapraktek`
  MODIFY `id_template_surat_kerjapraktek` int(16) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_dosen`
--
ALTER TABLE `data_dosen`
  ADD CONSTRAINT `data_dosen_ibfk_1` FOREIGN KEY (`id_master_jabatan`) REFERENCES `master_jabatan` (`id_master_jabatan`),
  ADD CONSTRAINT `data_dosen_ibfk_2` FOREIGN KEY (`id_master_departemen`) REFERENCES `master_departemen` (`id_master_departemen`);

--
-- Constraints for table `data_surat_aktifkuliah`
--
ALTER TABLE `data_surat_aktifkuliah`
  ADD CONSTRAINT `data_surat_aktifkuliah_ibfk_2` FOREIGN KEY (`id_data_mahasiswa`) REFERENCES `data_mahasiswa` (`id_data_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_surat_izinpenelitian`
--
ALTER TABLE `data_surat_izinpenelitian`
  ADD CONSTRAINT `data_surat_izinpenelitian_ibfk_2` FOREIGN KEY (`id_data_mahasiswa`) REFERENCES `data_mahasiswa` (`id_data_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_surat_kerjapraktek`
--
ALTER TABLE `data_surat_kerjapraktek`
  ADD CONSTRAINT `data_surat_kerjapraktek_ibfk_2` FOREIGN KEY (`id_data_mahasiswa`) REFERENCES `data_mahasiswa` (`id_data_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_user`
--
ALTER TABLE `data_user`
  ADD CONSTRAINT `data_user_ibfk_1` FOREIGN KEY (`username`) REFERENCES `data_mahasiswa` (`nim_mahasiswa`);

--
-- Constraints for table `template_surat_aktifkuliah`
--
ALTER TABLE `template_surat_aktifkuliah`
  ADD CONSTRAINT `template_surat_aktifkuliah_ibfk_1` FOREIGN KEY (`id_data_dosen`) REFERENCES `data_dosen` (`id_data_dosen`);

--
-- Constraints for table `template_surat_izinpenelitian`
--
ALTER TABLE `template_surat_izinpenelitian`
  ADD CONSTRAINT `template_surat_izinpenelitian_ibfk_1` FOREIGN KEY (`id_data_dosen`) REFERENCES `data_dosen` (`id_data_dosen`);

--
-- Constraints for table `template_surat_kerjapraktek`
--
ALTER TABLE `template_surat_kerjapraktek`
  ADD CONSTRAINT `template_surat_kerjapraktek_ibfk_1` FOREIGN KEY (`id_data_dosen`) REFERENCES `data_dosen` (`id_data_dosen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
