-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 09:47 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksi`
--

CREATE TABLE `aksi` (
  `id_aksi` int(11) NOT NULL,
  `id_data_kategori` int(11) NOT NULL,
  `kategori_aksi` varchar(100) NOT NULL,
  `tanggal_aksi` varchar(100) NOT NULL,
  `pesan_aksi` text NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL DEFAULT 'Belum Diverifikasi',
  `status_aksi` varchar(100) NOT NULL DEFAULT 'Belum Diverifikasi',
  `status_verifikasi` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_anggota` varchar(200) NOT NULL,
  `alamat_anggota` varchar(200) NOT NULL,
  `no_telp_anggota` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status_anggota` varchar(200) NOT NULL DEFAULT 'Tidak Aktif',
  `tanggal_keanggotaan` varchar(100) NOT NULL DEFAULT 'Belum Menjadi Anggota',
  `foto_ktp_anggota` varchar(500) NOT NULL DEFAULT 'Belum Diupload',
  `foto_selfie_ktp_anggota` varchar(500) NOT NULL DEFAULT 'Belum Diupload'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `alamat_anggota`, `no_telp_anggota`, `username`, `email`, `password`, `status_anggota`, `tanggal_keanggotaan`, `foto_ktp_anggota`, `foto_selfie_ktp_anggota`) VALUES
(9, 'Saefulloh', 'Jl. Raya Jendral Soedirman', '0812345678', 'saeful', 'epul@gmail.com', '781bf3e75a4de897247c1b4cb80d92d8', 'Aktif', '27-10-2024', '27102024123841Screenshot(3762).png', '27102024123841Screenshot2024-04-23192434.png'),
(10, 'Salsa', 'Jl. Mayjend Soengkono', '0987654321', 'salsa', 'salsa@gmail.com', '0143c1e8e97da861c623ff508a441c54', 'Aktif', '06-11-2024', '06112024043649samplektp.jpg', '06112024043649samplekyc.png'),
(11, 'Pardi', 'Jl. ngetan ngulon', '08563682561', 'pardi', 'pardi@gmail.com', '4f5655f738af2f8adf722d4aa7811c1f', 'Aktif', '09-11-2024', '09112024080114samplektp.jpg', '09112024080114samplekyc.png');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran_detail`
--

CREATE TABLE `angsuran_detail` (
  `id_angsuran_detail` int(11) NOT NULL,
  `id_pinjaman` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tanggal_angsuran` date NOT NULL,
  `angsuran_pembayaran` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `angsuran_detail`
--

INSERT INTO `angsuran_detail` (`id_angsuran_detail`, `id_pinjaman`, `id_pegawai`, `tanggal_angsuran`, `angsuran_pembayaran`) VALUES
(8, 5, 1, '2024-10-28', 525000),
(9, 5, 1, '2024-11-09', 525000);

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `pertanyaankeamanan1` text NOT NULL,
  `pertanyaankeamanan2` text NOT NULL,
  `jawabankeamanan1` text NOT NULL,
  `jawabankeamanan2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_anggota`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(11, 9, 'Apa angka favorit anda?(Contoh: 29)', 'Siapakah nama cinta pertama anda?', '2', 'Rizma'),
(12, 10, 'Apa nama belakang ibu anda?', 'Apa hobby anda?', 'Ruswati', 'Membaca'),
(13, 11, 'Apa angka favorit anda?(Contoh: 29)', 'Apa hobby anda?', '2', 'tidur');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `alamat_pegawai` varchar(200) NOT NULL,
  `no_telp_pegawai` varchar(50) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `kategori` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_pegawai`, `no_telp_pegawai`, `username`, `email`, `password`, `kategori`) VALUES
(1, 'Administrator', 'Banjarejo', '085212342321', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Dina Lisuardi', 'Banjarejo', '081235896824', 'petugas1', 'dina@gmail.com', 'b53fe7751b37e40ff34d012c7774d65f', 2),
(3, 'Muh Riza Zulfahnur', 'Kalitidu', '085212396501', 'petugas2', 'riza@gmail.com', '41a44352a6f3cd3b45282acbce50927c', 2),
(4, 'Yuni Kurnia Taramita', 'Sugihwaras', '085729801234', 'yuni', 'yuni@gmail.com', 'b7dfe9096cebb53152aa5ce78a1a61c9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penarikan_simpanan`
--

CREATE TABLE `penarikan_simpanan` (
  `id_penarikan` int(11) NOT NULL,
  `id_simpanan` int(11) NOT NULL,
  `nominal_total_penarikan` int(25) NOT NULL,
  `total_akhir_simpanan` int(25) NOT NULL DEFAULT '0',
  `tanggal_permintaan_penarikan` date NOT NULL,
  `status_penarikan` varchar(20) NOT NULL DEFAULT 'Belum Diverifikasi',
  `verifikasi_pegawai` varchar(50) NOT NULL DEFAULT 'Belum Diverifikasi',
  `verifikasi_admin` varchar(50) NOT NULL DEFAULT 'Belum Diverifikasi',
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_pinjaman`
--

CREATE TABLE `pengajuan_pinjaman` (
  `id_pengajuan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `total_pengajuan_pinjaman` int(20) NOT NULL,
  `alasan_pinjaman` text NOT NULL,
  `lampiran_pendukung` varchar(256) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `status_pengajuan` varchar(50) NOT NULL DEFAULT 'Belum Terverifikasi',
  `verifikasi_pegawai` varchar(100) NOT NULL DEFAULT 'Belum Terverifikasi',
  `verifikasi_admin` varchar(100) NOT NULL DEFAULT 'Belum Terverifikasi',
  `pesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan_pinjaman`
--

INSERT INTO `pengajuan_pinjaman` (`id_pengajuan`, `id_anggota`, `total_pengajuan_pinjaman`, `alasan_pinjaman`, `lampiran_pendukung`, `tanggal_pengajuan`, `status_pengajuan`, `verifikasi_pegawai`, `verifikasi_admin`, `pesan`) VALUES
(5, 9, 5000000, 'Keperluan Modal UMKM', '28102024113238samplektp.jpg', '2024-10-28', 'Diterima', 'Verifikasi Diterima', 'Verifikasi Diterima', 'Pinjaman anda telah terdaftar'),
(6, 11, 100000, 'nggo tuku beras', '09112024080646samplekyc.png', '2024-11-09', 'Sedang Diverifikasi', 'Sedang Diverifikasi', 'Sedang Diverifikasi', 'Belum terdapat pesan');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `judul` text NOT NULL,
  `header_gambar` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_post` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `id_pegawai`, `judul`, `header_gambar`, `isi`, `tanggal_post`) VALUES
(7, 1, 'Aturan dan Kebijakan KSP Artha Jaya Buana', '28102020160637aturan-kebijakan-1024x397.jpg', 'Berikut adalah aturan dan kebijakan KSP Mitra Artha : \r\n\r\n1. Pinjaman Maksimal Angsur 10 Bulan.\r\n2. Bunga Pinjaman Perbulan 5%, dibayar 10x tiap bulannya\r\n3. Simpanan Pokok nominal bebas sesuai kesepakatan di awal dan dibayarkan di awal transaksi Pinjaman.\r\n4. Simpanan Pokok dapat ditarik jika sudah keluar dari keanggotaan koperasi.\r\n5. Simpanan Pokok tidak mendapatkan bunga.\r\n6. Simpanan Wajib nominal bebas sesuai kesepakatan di awal.\r\n7. Simpanan Wajib, wajib dibayarkan 1 bulan sekali dengan nominal bebas minimal 5 ribu rupiah. \r\n8. Simpanan Wajib akan mendapatkan bunga sebanyak 2% per tahun.\r\n9. Simpanan Wajib dapat ditarik jika sudah keluar dari keanggotaan koperasi.\r\n10. Jika anggota sewaktu waktu keluar dalam jangka kurang dari 1 tahun maka tidak mendapat bunga simpanan wajib.\r\n', '06-11-2024'),
(8, 1, 'Kategori Member KSP Artha Jaya Buana', '28102020161609categori.jpg', 'Berikut merupakan penjelasan status member :\r\n\r\n1. Aktif  : Member aktif yang bisa mengakses semua fitur website member\r\n2. Tidak Aktif : Member yang belum verifikasi data diri, harus melakukan upload file KTP dan Foto Diri Bersama KTP.\r\n3. Dinonaktifkan : Member tidak valid (Ditolak menjadi anggota koperasi)\r\n4. Sedang Diverifikasi : Member sudah mengupload data diri dan tinggal menunggu verifikasi dari pegawai.\r\n5. Verifikasi Ulang : Member diminta untuk memverifikasi ulang data diri yang telah diajukan sebelumnya. (Kemungkinan file ada yang blur dll sehingga pegawai kesusahan untuk melakukan verifikasi)', '06-11-2024'),
(12, 1, 'Tentang KSP Artha Jaya Buana', '03112020051350Screenshot_2.jpg', 'Alamat : Jl. Gajah Mada No.114, Sukorejo Lor, Sukorejo, Kec. Bojonegoro, Kabupaten Bojonegoro, Jawa Timur 62115\r\nNo Telp : +62353882673\r\n<a href=\"https://goo.gl/maps/WBPu2YR3yiyHNuW87\">Klik disini untuk Google Maps</a>\r\n\r\nJam Operasional : \r\n<ul>\r\n<li>Senin (08.00–16.00)</li>\r\n<li>Selasa (08.00–16.00)</li>\r\n<li>Rabu (08.00–16.00)</li>\r\n<li>Kamis (08.00–16.00)</li>\r\n<li>Jumat (08.00–16.00)</li>\r\n<li>Sabtu (08.00–16.00)</li>\r\n<li>Minggu (Tutup)</li>\r\n</ul>', '06-11-2024');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `status_pinjaman` varchar(50) NOT NULL DEFAULT 'Belum Lunas',
  `tanggal_pelunasan` date DEFAULT NULL,
  `tanggal_meminjam` date NOT NULL,
  `total_pinjaman` int(20) NOT NULL,
  `angsuran_bulanan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `id_anggota`, `id_pengajuan`, `status_pinjaman`, `tanggal_pelunasan`, `tanggal_meminjam`, `total_pinjaman`, `angsuran_bulanan`) VALUES
(5, 9, 5, 'Belum Lunas', NULL, '2024-10-28', 5000000, 525000);

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpanan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `jumlah_simpanan_pokok` int(20) NOT NULL,
  `jumlah_simpanan_wajib` int(20) NOT NULL,
  `status_simpanan` varchar(200) NOT NULL DEFAULT 'Belum Ditarik'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_detail`
--

CREATE TABLE `simpanan_detail` (
  `id_simpanan_detail` int(11) NOT NULL,
  `id_simpanan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `jumlah_setor_tunai` int(20) NOT NULL,
  `tanggal_setor_tunai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`id_aksi`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  ADD PRIMARY KEY (`id_angsuran_detail`),
  ADD KEY `pinjaman_detail_ibfk_1` (`id_pinjaman`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD PRIMARY KEY (`id_penarikan`),
  ADD KEY `id_simpanan` (`id_simpanan`);

--
-- Indexes for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `pinjaman_ibfk_1` (`id_anggota`),
  ADD KEY `id_pengajuan` (`id_pengajuan`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpanan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD PRIMARY KEY (`id_simpanan_detail`),
  ADD KEY `id_simpanan` (`id_simpanan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksi`
--
ALTER TABLE `aksi`
  MODIFY `id_aksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  MODIFY `id_angsuran_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  MODIFY `id_penarikan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  MODIFY `id_simpanan_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `angsuran_detail`
--
ALTER TABLE `angsuran_detail`
  ADD CONSTRAINT `angsuran_detail_ibfk_1` FOREIGN KEY (`id_pinjaman`) REFERENCES `pinjaman` (`id_pinjaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `angsuran_detail_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD CONSTRAINT `lupa_password_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penarikan_simpanan`
--
ALTER TABLE `penarikan_simpanan`
  ADD CONSTRAINT `penarikan_simpanan_ibfk_2` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan` (`id_simpanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_pinjaman`
--
ALTER TABLE `pengajuan_pinjaman`
  ADD CONSTRAINT `pengajuan_pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD CONSTRAINT `pengumuman_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjaman_ibfk_2` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan_pinjaman` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD CONSTRAINT `simpanan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD CONSTRAINT `simpanan_detail_ibfk_1` FOREIGN KEY (`id_simpanan`) REFERENCES `simpanan` (`id_simpanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `simpanan_detail_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
