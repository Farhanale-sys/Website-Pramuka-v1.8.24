-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2017 pada 14.17
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pramuka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `level` enum('Admin','User') NOT NULL DEFAULT 'User',
  `username` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `level`, `username`, `email`, `password`) VALUES
(1, 'Admin', 'admin', 'widyawiratama15@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'User', 'user1', 'user1@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id_bio` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nta` int(20) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `gol_darah` enum('A','B','AB','O') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Budha','Hindu','Khonghucu') NOT NULL,
  `jabatan` enum('Siaga','Penggalang','Penegak','Pembina','Pelatih') NOT NULL,
  `Pangkalan` varchar(60) NOT NULL,
  `id_prop` int(5) NOT NULL,
  `id_kota` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id_bio`, `id`, `nama`, `nta`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `gol_darah`, `agama`, `jabatan`, `Pangkalan`, `id_prop`, `id_kota`) VALUES
(2, 1, 'Widya Wiratama', 10100101, 'Semarang', '1994-10-15', 'JL. Satrio Wibowo III no. 8', 'O', 'Islam', 'Pembina', 'SMA Sejahtera', 14, 225),
(3, 68, 'User Tujuh', 101001010, 'Semarang', '1994-10-22', 'JL Jalan Banyak Anak Kecil', 'AB', 'Islam', 'Penegak', 'SMA Sejahtera', 17, 279);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(5) NOT NULL,
  `nm_kota` varchar(100) NOT NULL,
  `id_prop` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nm_kota`, `id_prop`) VALUES
(1, 'Kabupaten Pangandaran', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `propinsi`
--

CREATE TABLE `propinsi` (
  `id_prop` int(4) NOT NULL,
  `nm_prop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `propinsi`
--

INSERT INTO `propinsi` (`id_prop`, `nm_prop`) VALUES
(1, 'Jawa Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags_berita`
--

CREATE TABLE `tags_berita` (
  `id_tags_berita` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `id_tags` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tags_berita`
--

INSERT INTO `tags_berita` (`id_tags_berita`, `id_berita`, `id_tags`) VALUES
(5, 63, 60),
(6, 63, 61),
(7, 63, 62),
(8, 63, 63),
(9, 64, 60),
(10, 64, 61),
(11, 64, 62),
(12, 64, 63),
(13, 64, 65),
(14, 65, 66),
(15, 65, 67),
(16, 65, 68),
(17, 65, 69),
(18, 65, 70),
(19, 65, 71),
(20, 65, 72),
(21, 65, 73),
(22, 65, 74),
(23, 66, 75),
(24, 66, 71);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_agenda`
--

CREATE TABLE `tb_agenda` (
  `id_agenda` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `judul_agenda` varchar(40) NOT NULL,
  `agenda` text NOT NULL,
  `tgl_agenda` datetime NOT NULL,
  `tgl_post_agenda` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_agenda`
--

INSERT INTO `tb_agenda` (`id_agenda`, `id`, `judul_agenda`, `agenda`, `tgl_agenda`, `tgl_post_agenda`) VALUES
(1, 1, 'coba agenda', 'agenda ini hanya untuk percobaan aja', '2016-12-22 09:00:00', '2016-12-22 07:25:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id_berita` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `judul_berita` varchar(200) NOT NULL,
  `berita` text NOT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`id_berita`, `id`, `judul_berita`, `berita`, `tgl_berita`) VALUES
(9, 1, 'Bertemu Ka Kwarnas, Pramuka SMA Taruna Nusantara Magelang Diminta Amalkan Dasa Darma dan Trisatya', 'Jakarta â€“ Usai mengikuti kegiatan Jambore Malaysia ke 13 di Batu Metropolitan Park Ipoh, Kuala Lumpur, Malaysia pada 25 November hingga 1 Desember 2016 lalu, sebanyak 15 anggota Pramuka SMA Taruna Nusantara Magelang mengunjungi rumah Ketua Kwartir Nasional Gerakan Pramuka Kak Adhyaksa Dault di Jalan Pengadegan Raya, Kalibata, Jakarta Selatan, Sabtu (3/12/2016).<br><br>\n\nDalam kunjungan itu Pramuka SMA Taruna Nusantara Magelang melaporkan kegiatannya kepada Kak Adhyaksa selama mengikuti Jambore Malaysia. Menurut mereka kegiatan Jambore Malaysia cukup menyenangkan, menambah pengalaman, dan menambah sahabat baru dari negara lain.<br><br>\n\nPramuka SMA Taruna Nusantara Magelang tiba sekitar pukul 15.30 WIB dan disambut langsung oleh Kak Adhyaksa diruang tamu, terlihat suasana kekeluargaan dalam perbincangan mereka. Bahkan sesekali Kak Adhyaksa mengeluarkan kata guyonan-guyonan lucu untuk menghangatkan suasana.<br><br>\n\nâ€œTadi Satu persatu saya tanya cita-citanya Ingin jadi TNI, Dokter, Guru, atau Polisi, rata-rata jawaban mereka luar biasa, ini profesi-profesi yg melayani langsung masyarakat.,â€ kata Kak Adhyaksa.<br><br>\n\nSelain itu Kak Adhyaksa menyampaikan empat  pesan agar mereka rajin Ibadah, hormat dan sayangi kedua orangtua. Sebab kelak mereka akan jadi pemimpin yang melayani masyarakat.<br><br>\n\nâ€œrajin ibadah, hormat dan sayangi kedua orangtua, jadilah pemimpin yang ikhlas dan benar-benar melayani masyarakat, serta yang terakhir, amalkan Dasa Darma dan Trisatya Pramuka,â€ lanjutnya.<br><br>\n\nUsai berbincang diruang tamu, Kak Adhyaksa mengajak mereka berkililing melihat foto dan menceritakan sejarah awal dia menjadi mahasiswa, ketua KNPI, Menpora, Ketua Kwarnas dan beberapa prestasinya di dalam negeri serta luar negeri. (HK)', '2016-12-04 20:43:18'),
(63, 1, 'coba judul', '<p>acacacacacacacaca</p>', '2017-01-15 22:54:54'),
(64, 1, 'judul berita', '<p>jaoja</p><p>sadskjzbjhbsdsd</p><p>sdjbhsdbmsdsdkk sdjhdsjhds sjdhjdshds hsduhdskh</p><p>sdjkdsbkjcs kdskjdsn kdsjksdhnljds</p>', '2017-01-18 17:24:25'),
(65, 1, 'Keren ! Pramuka Kalibening Bersihkan Sampah Sepanjang 15 KM', '<p><strong>KALIBENING</strong> &ndash; Ratusan Anggota Pramuka se-Kwartir Ranting Kecamatan Kalibening perwakilan pangkalan MTS 1 Kalibening, MTS 2 Kalibening, SMPN 1, SMPN 2 dan SMPN 3 Kalibening serta pangkalan SMA Muhammadiyah Kalibening menggelar aksi bersih sampah di wilayah jalan utama Kalibening Karangkobar dan komplek pasar Kalibening hingga finish di kompleks hamparan kebun teh curug Kasinoman dengan total jarak pembersihan hingga 15 km, Sabtu (14/1/2017).</p><p>&lrm;Ketua panitia kegiatan Kak Abdul Manaf mengatakan, aksi bersih dan pungut sampah anggota Pramuka merupakan langkah kecil untuk sebuah impian yang besar, yakni masyarakat yang sadar akan kebersihan dan perilaku hidup sehat.</p><p>Fenomena sampah yang berserakan hampir di sepanjang jalan, kompleks pasar dan sudut pertokoan wilayah Kalibening menjadi pekerjaan bersama. Sebab, banyak masyarakat yang masih membuang sampah sembarangan serta belum tersedianya tempat pembuangan sampah akhir di wilayah Kecamatan Kalibening hingga Karangkobar.<br />&lrm;<br />Sementara itu, Ketua Kwartir Ranting Gerakan Pramuka Kalibening Ngadikan mengemukakan, aksi bersih dan pungut sampah oleh anggota Pramuka merupakan salah satu implementasi penanaman pendidikan karakter kepada generasi muda tentang pentingnya hidup bersih dan cinta lingkungan.</p><p>&ldquo;Sampah yang terkumpul hingga sore mencapai puluhan karung dan diangkut menggunakan 3 unit kendaraan milik Kwarran untuk selanjutnya dipilah antara sampah organik dan anorganik,&rdquo; paparnya.</p><p>Dengan terjun langsung di tengah masyarakat dalam bentuk bakti sosial diharapkan proses edukasi dan pembinaan yang diberikan kepada peserta didik akan lebih mengena tentang arti dan manfaat yang bisa diambil.&lrm;</p>', '2017-01-19 10:50:42'),
(66, 1, 'kebersihan', '<p>isi kebersihan</p><p>pohon</p><p>tanaman</p>', '2017-01-19 15:10:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tags`
--

CREATE TABLE `tb_tags` (
  `id_tags` int(11) NOT NULL,
  `nm_tags` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tags`
--

INSERT INTO `tb_tags` (`id_tags`, `nm_tags`) VALUES
(60, 'aa'),
(61, 'bb'),
(62, 'cc'),
(63, 'dd'),
(64, 'zz'),
(65, 'vv'),
(66, 'hidup sehat'),
(67, 'sehat'),
(68, 'sidamulih'),
(69, 'pramuka'),
(70, 'MTS'),
(71, 'bersih'),
(72, 'sampah'),
(73, 'kasinoman'),
(74, 'kebun'),
(75, 'ke');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_bio`),
  ADD KEY `id` (`id`),
  ADD KEY `id_prop` (`id_prop`),
  ADD KEY `id_kota` (`id_kota`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`),
  ADD KEY `kota_id` (`id_prop`);

--
-- Indexes for table `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id_prop`);

--
-- Indexes for table `tags_berita`
--
ALTER TABLE `tags_berita`
  ADD PRIMARY KEY (`id_tags_berita`),
  ADD KEY `id_berita` (`id_berita`),
  ADD KEY `id_tags` (`id_tags`);

--
-- Indexes for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_akun` (`id`);

--
-- Indexes for table `tb_tags`
--
ALTER TABLE `tb_tags`
  ADD PRIMARY KEY (`id_tags`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id_bio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT for table `tags_berita`
--
ALTER TABLE `tags_berita`
  MODIFY `id_tags_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tb_agenda`
--
ALTER TABLE `tb_agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `tb_tags`
--
ALTER TABLE `tb_tags`
  MODIFY `id_tags` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `fk_id_bio` FOREIGN KEY (`id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_kota_bio` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_prop_bio` FOREIGN KEY (`id_prop`) REFERENCES `propinsi` (`id_prop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `fk_id_prop` FOREIGN KEY (`id_prop`) REFERENCES `propinsi` (`id_prop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tags_berita`
--
ALTER TABLE `tags_berita`
  ADD CONSTRAINT `fk_id_berita` FOREIGN KEY (`id_berita`) REFERENCES `tb_berita` (`id_berita`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_tags` FOREIGN KEY (`id_tags`) REFERENCES `tb_tags` (`id_tags`);

--
-- Ketidakleluasaan untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`id`) REFERENCES `akun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
