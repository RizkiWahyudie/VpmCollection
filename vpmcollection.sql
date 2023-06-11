-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2023 pada 06.44
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpmcollection`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(34, 'Landung Trilaksono', 'landungtrilaksono@gmail.com', 'Nomer kontak jurusan akuntansi', 'Maaf saya mau hubungi jurusan akuntansi di nomer berapa ya? Terima kasih', '2013-10-16', '00:00:00', 'Y'),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y'),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y'),
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mau tanya Sesuatu', 'November ini,  Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John', '2016-05-12', '19:33:58', 'Y'),
(48, 'admin', 'rizkki@gmail.com', '::1', 'Halojhsadasda', '2023-05-08', '14:14:43', 'Y'),
(49, 'Rizki Wahyudie', 'rizkiwahyudie@gmail.com', '::1', 'Yash Halow mother', '2023-05-11', '15:47:43', 'Y'),
(50, 'rizkiwahyudie', 'rizkiwahyudie@gmail.com', '::1', 'Hai Nama ku Rizki', '2023-05-13', '11:25:19', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `kota_id`, `alamat`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'VPM Collection', 'phpmu@gmail.com', 'http://localhost/reseller', 'facebook', '123', 'Telp. 081267771344 - Fax. 0411 431111', 54, 'Jl. Angkasa Puri, Perundam 4, Tunggul Hitam, Koto Tangah , Kota padang', 'Menyajikan produk terbaik, tekini, tercepat, dan terpercaya.', 'Ada banyak produk di phpmu.com yang bisa memberikan komisi kepada Anda setiap terjadi penjualan. Dan produk ini akan terus bertambah dari waktu ke waktu. Jadi, sekali Anda bergabung di phpmu.com, Anda punya kesempatan berbisnis tanpa modal, juga peng', 'logoHijab_1_(1).png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1371768887375!2d107.10289377384288!3d-6.3762867936139696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69990326537d6b%3A0x1525613331adae1b!2sPasiraya%20Blok%20B!5e0!3m2!1sen!2sid!4v1683952339384!5m2!1sen!2sid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(2, 'Wisata', '', 'wisata', 'Y', 4),
(19, 'Peternakan', '', 'peternakan', 'Y', 2),
(23, 'Perikanan', '', 'perikanan', 'Y', 3),
(39, 'Pertanian', '', 'pertanian', 'Y', 1),
(55, 'mlm', 'admin', 'mlm', 'Y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logoHijab.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Konsumen', 'admin', 'konsumen', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Image Slider', 'admin', 'imagesslider', '', '', 'N', 'admin', 'N', 0, ''),
(72, 'No Rekening Perusahaan', 'admin', 'rekening', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, ''),
(78, 'Info/Keterangan', 'admin', 'keterangan', '', '', 'Y', 'user', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_produk`
--

CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_produk`
--

INSERT INTO `rb_kategori_produk` (`id_kategori_produk`, `nama_kategori`, `kategori_seo`) VALUES
(11, 'Mukena', 'mukena'),
(12, 'SETCEL (Baju Setelan)', 'setcel-baju-setelan'),
(13, 'Dress', 'dress'),
(14, 'Kaftan', 'kaftan'),
(15, 'Gamis', 'gamis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keterangan`
--

CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keterangan`
--

INSERT INTO `rb_keterangan` (`id_keterangan`, `keterangan`, `tanggal_posting`) VALUES
(1, '<p><strong>Informasi Order :</strong></p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp;</p>\n\n<p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\n', '2018-03-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konfirmasi`
--

CREATE TABLE `rb_konfirmasi` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konfirmasi`
--

INSERT INTO `rb_konfirmasi` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(12, 15, 'Rp 219,000', 1, 'Rizki Wahyudie', '2023-05-14', 'shop_(1).png', '2023-05-14 12:18:53'),
(13, 18, 'Rp 89,000', 1, 'Fathia', '2023-06-01', '18.png', '2023-06-01 19:47:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konsumen`
--

CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL DEFAULT current_timestamp(),
  `tempat_lahir` varchar(100) NOT NULL DEFAULT '-',
  `alamat_lengkap` text NOT NULL,
  `kota_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konsumen`
--

INSERT INTO `rb_konsumen` (`id_konsumen`, `username`, `password`, `nama_lengkap`, `email`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `alamat_lengkap`, `kota_id`, `no_hp`, `foto`, `tanggal_daftar`) VALUES
(1, 'robby', '882c306525a9f885466520ba2aa6b10377b029cb569311fc17161d40df6e1bab7eb6103fcf567ce3a1375e77cc7db1928efec90cd0a379303fc2adb159bb1d14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Laki-laki', '1988-08-07', 'Padang', 'Jl. Angkasa Pura Jaya Merdeka', 372, '081267771341', 'robby1.jpg', '2017-04-05'),
(3, 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiitt.safitri@gmail.com', 'Perempuan', '1989-06-16', 'Padang', 'Jl. Linggar Jati Lamo', 372, '098912334456', '', '2017-04-08'),
(23, 'agusr', 'b87fb1f4862c52a175281636b0c270276e50e33e3aec4929c31da5199ca83ff25c0d045f9eb03b2e6dca41a390164a8c95c29bd28139cef18499c0d2ae59e098', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '2018-03-20', 'Padang', 'Jl. Sutimah warohmah Jaya', 371, '081267991244', '', '2017-06-07'),
(24, 'rahmi', 'a6023aa2be2f8d9bb61edd627f957882c7a28abbbc1ed61b9cd93c36c06e52270396fcaa6303b341f52937432faa91ecbaea99534a1f55866ba3163389fcbfbf', 'Rahmi Saputra', 'rahmi.saputra@gmail.com', 'Laki-laki', '1989-12-12', 'Payakumbuh', 'Jl. Kijoko Bodoh', 370, '081978541155', '', '2017-06-07'),
(25, 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Laki-laki', '2018-03-17', 'Padang', 'Jl. Linggar Jati, No 16 C', 5, '082173054501', '', '2018-03-03'),
(26, 'arsenio', 'ddd1e1ecf9826e4ae7aba6ebd09589d65880638f984357aa688cf265fbc8b3e8781ca573d27c13cafc99e4db9d5c38801bd270df6f0bf6d18cd877fefb159f6f', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', 'Laki-laki', '2016-12-15', 'Padang', 'Jl. Linggar Jati, No 18 C', 9, '082156458899', '', '2018-03-03'),
(27, 'tommy', 'e3bb0d1fb8d4d0aa070f22a9f73c975222449bb5466dc89033f66a8be07d6e8345308aa298e78066871c6844964e6b63f7be4327525c5025001c76b94310e2f2', 'Tommy Utama', 'tommy.utama@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Singgasana, Buleleng', 6, '081267771388', '', '2018-03-05'),
(28, 'sdfsdf', '8fdc5505d48f88bed9da7b8b146bbffd1bee25cdb940876a50642459fe336170636fcaec4d7c0e30b0388888628853457479fcdf08b5ea331f78a3886ed7a3ed', 'asdasdasdasd', 'todaynews.co.id@gmail.com', 'Laki-laki', '0000-00-00', '', 'sfsdfsdfdsfsd', 15, '3452342234', '', '2018-03-05'),
(29, 'rizkiwahyudie', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Rizki Wahyudie', 'rizkiwahyudie@gmail.com', 'Laki-laki', '2001-12-10', 'Bekasi', 'Pasiraya', 22, '089527153278312', 'arrogant.png', '2023-04-30'),
(30, 'ditaaa', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Dita Raudya', 'ditaraudya@gmail.com', 'Perempuan', '2003-01-22', 'Banjar', 'Banjar', 22, '0895821781264', '', '2023-05-02'),
(31, 'fikri', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Fikri Habib', 'fikri@gmail.com', 'Laki-laki', '2023-05-04', '-', 'Bogor', 78, '089581816313', '', '2023-05-04'),
(32, 'sikolokopoy', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Sikolokopoy', 'sikolokopoy@gmail.com', 'Laki-laki', '2023-05-08', '-', 'Jakarta', 152, '0998162217357', '', '2023-05-08'),
(33, 'didaa', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Didaa', 'dida@gmail.com', 'Laki-laki', '2023-05-09', '-', 'Banjar', 33, '089527838371', '', '2023-05-09'),
(34, 'fathia', '94dc8066a693c219342aee1a4b9b10a9c3fefee6373064dfc0c0a54ebe34b6bb1faf46699a359066daa0a2dcbacbcd57bed8973ecbaf8e3547af88b780345e5a', 'Fathia', 'fathia123@gmail.com', 'Laki-laki', '2023-05-14', '-', 'Jakarta', 152, '0895278383348', 'Disney_Princess,_lily_Z.jpg', '2023-05-14'),
(35, 'vanessya', '9970f16668b0ce09b694293b5164ae2b211fb9a23e9026bb4d0d1aef370f192120dd5f5a8e78c06d57fa036de0975c09b528ea7dc49262aee10c3247e62964fa', 'vanessya', 'vanessya711@gmail.com', 'Laki-laki', '2023-06-02', '-', 'jalan rawa tengah', 152, '089664673759', '', '2023-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kota`
--

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kota`
--

INSERT INTO `rb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian`
--

CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian`
--

INSERT INTO `rb_pembelian` (`id_pembelian`, `kode_pembelian`, `id_supplier`, `waktu_beli`) VALUES
(8, 'PO-000M1', 4, '2023-05-07 14:21:06'),
(9, 'PO-000S1', 4, '2023-05-13 22:15:08'),
(10, 'PO-000D1', 4, '2023-05-13 22:38:37'),
(11, 'PO-000K1G1', 4, '2023-05-14 10:19:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian_detail`
--

CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian_detail`
--

INSERT INTO `rb_pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_pesan`, `jumlah_pesan`, `satuan`) VALUES
(25, 8, 20, 65000, 0, 'pcs'),
(26, 8, 21, 85000, 65, 'pcs'),
(27, 8, 22, 45000, 80, 'pcs'),
(28, 8, 23, 45000, 80, 'pcs'),
(29, 8, 24, 70000, 45, 'pcs'),
(30, 8, 25, 75000, 35, 'pcs'),
(31, 8, 26, 85000, 50, 'pcs'),
(32, 8, 27, 95000, 25, 'pcs'),
(33, 8, 28, 95000, 25, 'pcs'),
(34, 8, 29, 70000, 35, 'pcs'),
(36, 9, 31, 175000, 35, 'pcs'),
(37, 9, 32, 195000, 55, 'pcs'),
(38, 9, 34, 165000, 45, 'pcs'),
(39, 9, 35, 155000, 50, 'pcs'),
(40, 9, 36, 145000, 31, 'pcs'),
(42, 9, 38, 176000, 20, 'pcs'),
(43, 9, 39, 158000, 35, 'pcs'),
(45, 10, 41, 155000, 25, 'pcs'),
(46, 10, 42, 177000, 25, 'pcs'),
(47, 10, 43, 115000, 25, 'pcs'),
(48, 10, 44, 123000, 25, 'pcs'),
(49, 10, 45, 130000, 25, 'pcs'),
(50, 10, 46, 135000, 25, 'pcs'),
(51, 10, 47, 175000, 25, 'pcs'),
(52, 10, 48, 140000, 25, 'pcs'),
(53, 10, 49, 149000, 25, 'pcs'),
(54, 10, 50, 188000, 25, 'pcs'),
(55, 11, 51, 215000, 25, 'pcs'),
(56, 11, 52, 189000, 25, 'pcs'),
(57, 11, 53, 178000, 25, 'pcs'),
(58, 11, 54, 176000, 25, 'pcs'),
(59, 11, 55, 215000, 25, 'pcs'),
(60, 11, 56, 165000, 25, 'pcs'),
(61, 11, 57, 177000, 25, 'pcs'),
(63, 11, 58, 199000, 25, 'pcs'),
(64, 11, 59, 189000, 25, 'pcs'),
(65, 11, 60, 229000, 25, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan`
--

CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `potongan_transaksi` int(250) NOT NULL DEFAULT 0,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan`
--

INSERT INTO `rb_penjualan` (`id_penjualan`, `kode_transaksi`, `id_pembeli`, `diskon`, `potongan_transaksi`, `kurir`, `service`, `ongkir`, `resi`, `waktu_transaksi`, `proses`) VALUES
(1, 'TRX-20230509073408', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 07:34:18', '0'),
(2, 'TRX-20230509075110', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 07:51:23', '0'),
(3, 'TRX-20230509075247', 29, 0, 0, 'jne', 'CTCYES', 18000, NULL, '2023-05-09 07:52:58', '0'),
(4, 'TRX-20230509075420', 29, 0, 0, 'tiki', 'ECO', 8000, NULL, '2023-05-09 07:54:30', '0'),
(5, 'TRX-20230509080020', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 08:01:26', '0'),
(6, 'TRX-20230509123219', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 12:52:02', '0'),
(7, 'TRX-20230509125224', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 12:55:11', '0'),
(8, 'TRX-20230509125522', 29, 0, 0, 'jne', 'CTCYES', 18000, NULL, '2023-05-09 12:57:01', '0'),
(9, 'TRX-20230509143414', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 14:37:02', '0'),
(10, 'TRX-20230509143813', 29, 0, 0, 'tiki', 'REG', 9000, NULL, '2023-05-09 14:38:26', '0'),
(11, 'TRX-20230509144233', 29, 0, 0, 'jne', 'CTC', 10000, NULL, '2023-05-09 15:07:09', '0'),
(12, 'TRX-20230509150745', 29, 0, 47500, 'jne', 'CTC', 10000, NULL, '2023-05-09 15:08:51', '0'),
(13, 'TRX-20230509150858', 29, 0, 47500, 'jne', 'CTC', 10000, NULL, '2023-05-09 15:14:49', '0'),
(14, 'TRX-20230509152632', 29, 0, 11000, 'jne', 'CTC', 10000, NULL, '2023-05-09 15:27:24', '0'),
(15, 'TRX-20230514113629', 29, 0, 23000, 'tiki', 'ECO', 12000, NULL, '2023-05-14 11:37:43', '2'),
(16, 'TRX-20230515065146', 29, 0, 17500, 'jne', 'OKE', 11000, NULL, '2023-05-15 08:24:46', '0'),
(17, 'TRX-20230601185322', 34, 0, 0, 'jne', 'OKE', 9000, NULL, '2023-06-01 18:53:54', '0'),
(18, 'TRX-20230601194544', 34, 0, 0, 'jne', 'OKE', 9000, NULL, '2023-06-01 19:46:24', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_detail`
--

CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `keterangan_order` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_detail`
--

INSERT INTO `rb_penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `jumlah`, `harga_jual`, `satuan`, `keterangan_order`) VALUES
(1, 1, 24, 2, 80000, 'pcs', 'Ukuran L warna green'),
(2, 2, 26, 2, 95000, 'pcs', ''),
(3, 3, 25, 4, 95000, 'pcs', ''),
(4, 4, 22, 1, 55000, 'pcs', ''),
(5, 5, 25, 1, 95000, 'pcs', ''),
(6, 6, 24, 1, 80000, 'pcs', ''),
(7, 7, 23, 1, 55000, 'pcs', ''),
(8, 8, 24, 1, 80000, 'pcs', ''),
(9, 9, 25, 1, 95000, 'pcs', ''),
(10, 10, 24, 1, 80000, 'pcs', ''),
(11, 11, 21, 1, 95000, 'pcs', ''),
(12, 12, 25, 5, 95000, 'pcs', ''),
(13, 13, 25, 5, 95000, 'pcs', ''),
(14, 14, 23, 2, 55000, 'pcs', ''),
(15, 15, 27, 2, 115000, 'pcs', 'Green M'),
(16, 16, 25, 1, 95000, 'pcs', ''),
(17, 16, 24, 1, 80000, 'pcs', ''),
(18, 17, 29, 1, 80000, 'pcs', ''),
(19, 18, 24, 1, 80000, 'pcs', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_temp`
--

CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `waktu_order` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_temp`
--

INSERT INTO `rb_penjualan_temp` (`id_penjualan_detail`, `session`, `id_produk`, `jumlah`, `harga_jual`, `satuan`, `keterangan_order`, `waktu_order`) VALUES
(8, 'TRX-20230509101840', 24, 2, 80000, 'pcs', 'Maroon L', '2023-05-09 10:18:40'),
(9, 'TRX-20230509114047', 24, 1, 80000, 'pcs', '', '2023-05-09 11:40:47'),
(10, 'TRX-20230509122517', 24, 1, 80000, 'pcs', '', '2023-05-09 12:25:17'),
(20, 'TRX-20230511131149', 24, 1, 80000, 'pcs', '', '2023-05-11 13:11:49'),
(21, 'TRX-20230511131224', 23, 1, 55000, 'pcs', '', '2023-05-11 13:12:24'),
(22, 'TRX-20230511131342', 23, 1, 55000, 'pcs', '', '2023-05-11 13:13:42'),
(23, 'TRX-20230511131437', 23, 2, 55000, 'pcs', '', '2023-05-11 13:14:37'),
(24, 'TRX-20230511131437', 26, 1, 95000, 'pcs', '', '2023-05-11 13:14:44'),
(26, 'TRX-20230514113828', 24, 1, 80000, 'pcs', '', '2023-05-14 11:38:28'),
(29, 'TRX-20230515084406', 25, 1, 95000, 'pcs', '', '2023-05-15 08:44:06'),
(30, 'TRX-20230515084406', 24, 1, 80000, 'pcs', '', '2023-05-15 10:12:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_produk`
--

CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total_terjual` int(11) NOT NULL DEFAULT 0,
  `gambar` varchar(255) NOT NULL,
  `gambar_2` varchar(250) DEFAULT NULL,
  `gambar_3` varchar(250) DEFAULT NULL,
  `gambar_4` varchar(250) DEFAULT NULL,
  `gambar_5` varchar(250) DEFAULT NULL,
  `gambar_6` varchar(250) DEFAULT NULL,
  `gambar_7` varchar(250) DEFAULT NULL,
  `gambar_8` varchar(250) DEFAULT NULL,
  `gambar_9` varchar(250) DEFAULT NULL,
  `gambar_10` varchar(250) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status_sale` int(11) NOT NULL DEFAULT 1,
  `waktu_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_produk`
--

INSERT INTO `rb_produk` (`id_produk`, `id_kategori_produk`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_reseller`, `harga_konsumen`, `berat`, `diskon`, `total_terjual`, `gambar`, `gambar_2`, `gambar_3`, `gambar_4`, `gambar_5`, `gambar_6`, `gambar_7`, `gambar_8`, `gambar_9`, `gambar_10`, `keterangan`, `username`, `status_sale`, `waktu_input`) VALUES
(20, 11, 'Mukena Spesial M01', 'mukena-spesial-m01', 'pcs', 165000, 215000, 190000, '150', 5000, 0, 'mukena-1-1.jpg', 'mukena-1-2.jpg', 'mukena-1-3.jpg', 'mukena-1-4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 13:37:56'),
(21, 11, 'Mukena Corak M02', 'mukena-corak-m02', 'pcs', 185000, 245000, 225000, '150', 0, 1, 'mukena-2-1-3.jpg', 'mukena-2-1-2.jpg', 'mukena-2-2-3.jpg', 'mukena-2-2-2.jpg', 'mukena-2-3-2.jpg', 'mukena-2-3-1.jpg', 'mukena-2-4-2.jpg', 'mukena-2-4-3.jpg', 'mukena-2-5-2.jpg', 'mukena-2-5-1.jpg', '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 13:44:05'),
(22, 11, 'Mukena Polkadot M03', 'mukena-polkadot-m03', 'pcs', 145000, 195000, 170000, '120', 0, 1, 'mukena-3-1.jpg', 'mukena-3-2.jpg', 'mukena-3-3.jpg', 'mukena-3-4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 13:53:43'),
(23, 11, 'Mukena Spesial M04', 'mukena-spesial-m04', 'pcs', 145000, 195000, 169998, '170', 0, 3, 'mukena-4-1-1.jpg', 'mukena-4-1-2.jpg', 'mukena-4-1-3.jpg', 'mukena-4-1-4.jpg', 'mukena-4-2-1.jpg', 'mukena-4-2-3.jpg', 'mukena-4-2-4.jpg', 'mukena-4-2-5.jpg', NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:04:49'),
(24, 11, 'Mukena All Varian M05', 'mukena-all-varian-m05', 'pcs', 170000, 254998, 224999, '200', 0, 7, 'mukena-5-1.jpg', 'mukena-5-2.jpg', 'mukena-5-3.jpg', 'mukena-5-4.jpg', 'mukena-5-5.jpg', 'mukena-5-6.jpg', 'mukena-5-7.jpg', 'mukena-5-8.jpg', 'mukena-5-9.jpg', 'mukena-5-10.jpg', '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:07:23'),
(25, 11, 'Mukena Motif Bunga M06', 'mukena-motif-bunga-m06', 'pcs', 185000, 255000, 225000, '150', 0, 17, 'mukena-6-1.jpg', 'mukena-6-2.jpg', 'mukena-6-3.jpg', 'mukena-6-4.jpg', 'mukena-6-5.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:08:56'),
(26, 11, 'Mukena Bahan Licin M07', 'mukena-bahan-licin-m07', 'pcs', 185000, 255000, 235000, '180', 0, 2, 'mukena-7-13.jpg', 'mukena-7-12.jpg', 'mukena-7-11.jpg', 'mukena-7-10.jpg', 'mukena-7-9.jpg', 'mukena-7-8.jpg', 'mukena-7-7.jpg', 'mukena-7-6.jpg', 'mukena-7-5.jpg', 'mukena-7-4.jpg', '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:10:39'),
(27, 11, 'Mukena Gaun M08', 'mukena-gaun-m08', 'pcs', 199999, 245000, 250000, '180', 0, 2, 'mukena-8.jpg', 'mukena-8-1.jpg', 'mukena-8-2.jpg', 'mukena-8-3.jpg', 'mukena-8-4.jpg', 'mukena-8-5.jpg', NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:12:59'),
(28, 11, 'Mukena Aesthetic 09', 'mukena-aesthetic-09', 'pcs', 195000, 245000, 225000, '170', 0, 0, 'mukena-9-1.jpg', 'mukena-9-2.jpg', 'mukena-9-3.jpg', 'mukena-9-4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:14:25'),
(29, 11, 'Mukena Motif  Bunga M10', 'mukena-motif--bunga-m10', 'pcs', 130000, 180000, 89999, '175', 0, 1, 'mukena-10-1.jpg', 'mukena-10-2.jpg', 'mukena-10-3.jpg', 'mukena-10-4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mari perkenalkan mukena terbaru yang tidak hanya terbuat dari bahan yang halus dan nyaman, tetapi juga dilengkapi dengan tambahan tas kecil yang dapat dibawa kemanapun Anda pergi. Tidak hanya itu, mukena ini juga memiliki fitur unik yaitu dapat dijadikan hoodie untuk kupluknya.</p>\r\n\r\n<p>Dengan bahan yang halus dan nyaman, mukena ini akan membuat Anda merasa nyaman dan rileks saat beribadah di rumah atau di masjid. Anda dapat mengalami sensasi lembut dan ringan pada kulit Anda saat mengenakannya.</p>\r\n\r\n<p>Tidak hanya itu, mukena ini juga dilengkapi dengan tas kecil yang dapat membantu Anda membawa mukena ke mana saja. Dengan tambahan tas kecil, Anda tidak perlu lagi khawatir kehilangan mukena Anda saat bepergian atau menghadiri acara-acara keagamaan di luar rumah.</p>\r\n\r\n<p>Namun, yang membuat mukena ini benar-benar unik adalah kemampuannya untuk dijadikan hoodie. Dengan hanya memasukkan kepala Anda ke dalam hoodienya, Anda dapat merasakan sensasi hangat dan nyaman saat beribadah di ruangan yang dingin.</p>\r\n\r\n<p>Jadi, jika Anda ingin merasakan kenyamanan dan kemudahan saat beribadah, mukena ini adalah pilihan yang tepat untuk Anda. Dapatkan segera mukena terbaru ini dan rasakan kualitas dan kenyamanannya sendiri.</p>\r\n', 'admin', 1, '2023-05-07 14:15:51'),
(31, 12, 'Setelan Cewe Kue S02', 'setelan-cewe-kue-s02', 'pcs', 175000, 195000, 214999, '250', 0, 0, 'baju-1-1_21.png', 'baju-1-1_31.png', 'baju-1-1_71.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 21:16:30'),
(32, 12, 'Setelan Crincle S03', 'setelan-crincle-s03', 'pcs', 195000, 225000, 249999, '250', 0, 0, 'baju-1-1_42.png', 'baju-1-1_52.png', 'baju-1-1_121.png', 'baju-1-1_22.png', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 21:21:43'),
(34, 12, 'Setelan Outer Kece S04', 'setelan-outer-kece-s04', 'pcs', 165000, 195000, 214999, '250', 0, 0, 'baju-1-1_10.png', 'baju-1-1_13.png', 'baju-1-1_32.png', 'baju-1-1_23.png', 'baju-1-1_43.png', 'baju-1-1_73.png', NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 21:55:10'),
(35, 12, 'Setelan Rainbow S05', 'setelan-rainbow-s05', 'pcs', 155000, 175000, 198999, '250', 0, 0, 'baju-1-1_74.png', 'baju-1-1_14.png', 'baju-1-1_24.png', NULL, 'baju-1-1_44.png', 'baju-1-1_54.png', NULL, NULL, '', NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:00:06'),
(36, 12, 'Setelan Pastel S06', 'setelan-pastel-s06', 'pcs', 145000, 165000, 179999, '250', 0, 0, '9fb0e5e7-b39c-4595-a428-4a51c1943d88.jpg', '45f3e1cd-740e-49d8-b84e-b12eb9123a13.jpg', '184ae69c-c415-41bf-893b-6ae217a567d0.jpg', 'ad3b2c29-f7b7-4baf-9206-668380d24378.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:01:47'),
(38, 12, 'Setelan Bunga S08', 'setelan-bunga-s08', 'pcs', 176000, 185000, 190000, '250', 0, 0, '1bb24271-590e-486b-943a-5daec20398cc.jpg', '887911f9-72e4-4ff9-8e6e-0ea72c37b2dd.jpg', 'f2003a38-1cbf-47d8-bd5e-b439209c70ff.jpg', '2b78ccf2-bdd0-462d-9af7-08177b778d43(1).jpg', '2b78ccf2-bdd0-462d-9af7-08177b778d43.jpg', '3f5d3d05-d237-443d-a4d1-6704bc5428f4.jpg', '5dee13c8-4ee7-4c73-b289-593c78e2339a.jpg', '93142263-4688-44fe-a2a2-2fdb54b9527f.jpg', 'addce958-0ac3-4e25-ba73-53c3808d5be6(1).jpg', 'addce958-0ac3-4e25-ba73-53c3808d5be6.jpg', '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:11:09'),
(39, 12, 'Setelan Jas S09', 'setelan-jas-s09', 'pcs', 158000, 168000, 177999, '250', 0, 0, '2afade31-0a4a-4d23-8b01-eb79136ed9d9.jpg', '30ffb37a-559a-42d9-98bc-befe53d3135e.jpg', 'c93ba196-347e-4d7b-a4a6-4bae6de61e3c.jpg', 'ccaba57e-e7dc-4c42-8f3f-9de6825b3cd6.jpg', '40afa8fc-2b10-48e3-8b53-55442100365e.jpg', 'ee288967-a523-43d9-be66-3e877beac7a8.jpg', 'fa030b3d-d87a-455b-9a96-510d337629e0.jpg', NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:12:25'),
(41, 13, 'Ocean Breeze Dress D01', 'ocean-breeze-dress-d01', 'pcs', 155000, 175000, 184998, '250', 0, 0, '1d91ddd3-efa1-4258-8e2e-e712a42bc71f.jpg', '7f972edc-1e1a-417c-b6f5-4966c00d603c.jpg', '60b156b6-ec05-4ac5-bdfe-49a4d06e1596.jpg', 'fd01988d-50a6-41a3-8772-b3c536120b82.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:23:25'),
(42, 13, 'Sonata Dress D02', 'sonata-dress-d02', 'pcs', 177000, 187000, 196999, '250', 0, 0, 'd01834f6-56d2-4049-94ac-d6db463934b9.jpg', '61f71446-5bc7-4996-a8a4-98914b5885f9.jpg', '43ca3755-47e6-4b93-9968-93ebe1cae6f3.jpg', '2cfda6ec-b9f3-4184-b68d-ca275018f0cb.jpg', '19545f5a-39e3-479f-8c29-caae9f616fc4.jpg', '5618c2cf-e045-48bf-b9fa-ff6d657f67c2.jpg', '0020141e-7572-47c4-9ff1-ae2f9cd6d935.jpg', 'be15178d-2d33-4aa5-998c-497e976ab440.jpg', NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:25:26'),
(43, 13, 'Blossom Dress D03', 'blossom-dress-d03', 'pcs', 115000, 125999, 144999, '250', 0, 0, '7c7426d5-331b-4534-b3a9-b70c99e943b5(1).jpg', '35aa023e-a7a5-4ab8-81c9-d11d38b8b0c4(1).jpg', '89d71316-483c-450e-9711-4cee3f61203e(1).jpg', '9469f053-2c9c-4c2c-bd7a-0a52abcaf439.jpg', 'badb2dd3-7955-4c95-9942-f07ad7ef8eaa.jpg', '0cc2491d-f6f0-451d-843e-96b6a8d6eaa0(1).jpg', '66f3a914-a93c-4377-a972-4ca213bf503d.jpg', '8711deb6-4c2e-4f4d-b54b-6b760b110bb6(1).jpg', 'a56cc020-f34d-46af-8b7e-787e1d607d25(2).jpg', 'a512b7d1-5c38-42ab-9f08-f5525774aee0.jpg', '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:27:42'),
(44, 13, 'Mirage Dress D04', 'mirage-dress-d04', 'pcs', 123000, 135000, 154999, '250', 0, 0, '3c08d4f4-c4d4-471d-aefd-f573c1687324(1).jpg', '635a0d8f-628d-4e97-bd6a-12309ea65745(1).jpg', '89248c86-351e-4816-992a-4172dde398a8(1).jpg', '8700375b-cb1c-4ccc-a8f3-ed362129b3bc(1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:28:56'),
(45, 13, 'Butterfly Dress D05', 'butterfly-dress-d05', 'pcs', 130000, 140000, 154999, '250', 0, 0, '7f735be2-069f-497c-afb9-d4c0d9bde442.jpg', '9b02dbda-fe7c-4cc1-894a-5c0451c785c8.jpg', 'd41b9ed9-0b6b-4dd4-930d-c55eba766606.jpg', 'd441f135-3bce-42cb-bee3-6bdeddd18783.jpg', '36adfd10-e6f8-4ce7-90f7-ce2641717ed2.jpg', '50f60ee2-565e-4a71-91ef-6020045b71ac.jpg', '60ef9536-3aab-4c01-8e74-207c78f6a987.jpg', '6091b1c8-bec2-4abf-b0b7-901e9b39f2e9.jpg', NULL, NULL, '<p>Satu setelan baju dan celana yang akan memberikan kenyamanan dan kepercayaan diri dalam aktivitas sehari-hari Anda.</p>\r\n\r\n<p>Kami memahami bahwa kualitas produk sangat penting bagi Anda, oleh karena itu kami memastikan bahwa baju dan celana satu setelan kami terbuat dari bahan yang terbaik. Bahan yang kami gunakan adalah bahan yang halus dan nyaman di kulit, sehingga Anda dapat merasakan kenyamanan sepanjang hari.</p>\r\n\r\n<p>Selain itu, kami juga memperhatikan ketahanan produk kami. Celana yang kami tawarkan tidak mudah robek, sehingga Anda tidak perlu khawatir tentang keawetan produk kami.</p>\r\n\r\n<p>Tampilan dari produk kami juga sangat menarik dan stylish, sehingga Anda dapat tampil dengan percaya diri dalam setiap kesempatan. Tersedia dalam berbagai warna dan ukuran, Anda dapat memilih yang sesuai dengan gaya dan preferensi Anda.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki satu setelan baju dan celana yang akan meningkatkan kenyamanan dan kepercayaan diri Anda dalam beraktivitas. Dapatkan produk kami sekarang dan nikmati pengalaman berpakaian yang lebih baik!</p>\r\n', 'admin', 1, '2023-05-13 22:30:47'),
(46, 13, 'Garden Dress D06', 'garden-dress-d06', 'pcs', 135000, 160000, 175000, '250', 0, 0, '45b4b484-d296-4f21-a0ee-af4d344dc461.jpg', '702c5ee0-1f4d-4ae0-af6a-2bfaa8f555c1.jpg', '794de505-8001-4b6a-bd63-035f0b889578.jpg', 'dc310a16-6b1f-47cb-b549-ec5583d4dea6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:32:00'),
(47, 13, 'Forest Dress D07', 'forest-dress-d07', 'pcs', 175000, 185000, 194999, '250', 0, 0, '8f36e407-b38e-4337-8964-f883601e146e.jpg', '31a1e17a-8a77-4300-8cb3-fc9059e6bff9.jpg', '01461d93-d7e8-48b8-b194-c00a34bd2dad.jpg', '5293e0b9-5473-4067-aedd-0dab91b7a8be.jpg', 'd0794960-f51e-40b6-9ab4-19db59b4de12.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:33:18'),
(48, 13, 'Sunset Dress D08', 'sunset-dress-d08', 'pcs', 140000, 150000, 159999, '250', 0, 0, 'f344f600-e697-486f-8925-ca76c7341e48.jpg', 'bf588462-d8ce-41c7-8444-b5b5e0603a54.jpg', '84b730d2-b12c-4ea1-802d-6a43c1306e38.jpg', '13c5ccf9-dec4-413e-af06-e6f063e5addc.jpg', '04b9c842-8003-4704-a600-495dea62e956(1).jpg', '04b9c842-8003-4704-a600-495dea62e956(1)1.jpg', NULL, NULL, NULL, NULL, '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:34:54'),
(49, 13, 'Night Sky Dress D09', 'night-sky-dress-d09', 'pcs', 149000, 159000, 168998, '250', 0, 0, '3a324e0b-5abf-41e9-99db-b777ffcf2b7a(3).jpg', '6a6a57b2-f304-4d87-9de4-8b00700cef6f.jpg', 'bc0b813c-c7db-4905-a4d5-2ae49e1bcc5a.jpg', 'd1d6ded2-c720-4693-8404-67d0118cfce7.jpg', '5af92a07-23d0-4da4-90df-1d48355211a8(1).jpg', '97411991-293d-4028-951f-612b7bcc6abf(2).jpg', '4e2b0e40-998b-45fa-9d8a-0419d8e1626e.jpg', NULL, NULL, NULL, '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:36:24'),
(50, 13, 'Blue Dress D10', 'blue-dress-d10', 'pcs', 188000, 198000, 217998, '250', 0, 0, '3b105e62-195e-4e17-bd54-e0527c999e60.jpg', '8e37dfcf-8b86-4f60-85ee-dcfd07fc82af(1).jpg', '32c41383-f861-43ad-832c-d555d0c2f495(1).jpg', 'a6371ae1-dc0d-4cbc-b7b3-67d26e4c8d67(1).jpg', 'dd75f860-2551-478f-bd10-327730467d10.jpg', 'dd8e8319-1c52-421f-9d80-ee06175d3fca.jpg', '14b1149b-3f88-4b78-aeef-a9e96b9fa02c.jpg', 'a60a3b32-c276-4fa6-b44d-11d4eba1289d.jpg', NULL, NULL, '<p>Dress kami adalah produk yang dibuat dengan kualitas terbaik dan desain yang menarik.</p>\r\n\r\n<p>Pertama-tama, dress kami terbuat dari bahan yang berkualitas tinggi dan nyaman di kulit. Bahan yang kami gunakan adalah bahan yang ringan dan bernapas, sehingga Anda akan merasa nyaman memakainya sepanjang hari.</p>\r\n\r\n<p>Selain kualitas bahan, kami juga memperhatikan desain dress kami dengan seksama. Dress kami memiliki desain yang menawan dan elegan, sehingga Anda dapat tampil dengan percaya diri dalam berbagai kesempatan.</p>\r\n\r\n<p>Keunggulan lain dari produk dress kami adalah fleksibilitas dalam penggunaannya. Dress kami dapat digunakan dalam berbagai situasi, mulai dari acara formal hingga santai. Anda bahkan dapat mengubah tampilannya dengan aksesori tambahan seperti jaket, syal, atau sepatu.</p>\r\n\r\n<p>Terakhir, kami memberikan jaminan kualitas untuk produk dress kami. Jika Anda tidak puas dengan produk kami, Anda dapat mengembalikannya dalam waktu 30 hari untuk pengembalian uang atau penukaran.</p>\r\n\r\n<p>Jangan lewatkan kesempatan untuk memiliki dress berkualitas tinggi dan menawan ini. Dapatkan produk kami sekarang dan rasakan sendiri keunggulan yang ditawarkan!</p>\r\n', 'admin', 1, '2023-05-13 22:37:59'),
(51, 14, 'Kaftan Breezy K01', 'kaftan-breezy-k01', 'pcs', 215000, 235000, 249998, '250', 0, 0, '876c94be-89d9-43ba-98c4-a5691837d701.jpg', 'aa52c643-c631-4951-b16d-474d2af3516c.jpg', '818c18cd-c807-4135-946b-9842c4dce6ca.jpg', '8a23dd2f-6a1c-46bd-bef6-46c40c9e7ce0.jpg', '26f86eba-478e-4b93-9caf-d9478601811d.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Kaftan dari VPM Collection memiliki keunggulan yang sulit ditandingi. Setiap kaftan kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk kaftan dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap kaftan kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan kaftan kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Kaftan kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap kaftan memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Kaftan kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh kaftan kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Harga Terjangkau: Meskipun kualitas dan desain produk kami terbaik, harga kaftan dari VPM Collection tetap terjangkau. Kami berkomitmen untuk memberikan produk berkualitas tanpa membuat Anda merogoh kocek terlalu dalam.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih kaftan, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:04:08'),
(52, 14, 'Kaftan Bliss K02', 'kaftan-bliss-k02', 'pcs', 189000, 199000, 218999, '250', 0, 0, '46107052-666f-4b85-b2ca-afa933f2794d.jpg', '5b7b3c6b-3f8f-4dee-9b92-1f54a256bdac.jpg', 'e79f86cc-84b0-4c37-90aa-4057d247bd79.jpg', '31279814-72a1-4df0-85b2-3dfd24ecc682(1).jpg', 'cd0dffd0-e82b-4bfb-8b3d-4521a82b26ae.jpg', NULL, NULL, NULL, NULL, NULL, '<p>Kaftan dari VPM Collection memiliki keunggulan yang sulit ditandingi. Setiap kaftan kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk kaftan dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap kaftan kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan kaftan kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Kaftan kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap kaftan memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Kaftan kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh kaftan kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Harga Terjangkau: Meskipun kualitas dan desain produk kami terbaik, harga kaftan dari VPM Collection tetap terjangkau. Kami berkomitmen untuk memberikan produk berkualitas tanpa membuat Anda merogoh kocek terlalu dalam.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih kaftan, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:06:39'),
(53, 14, 'Kaftan Mystical K03', 'kaftan-mystical-k03', 'pcs', 178000, 199000, 224999, '250', 0, 0, '7c63e76e-a526-480d-b3dc-61078d0517df.jpg', '63abcca9-a051-4874-b4ee-d69714e6a442.jpg', '72f42396-b946-4eba-af25-57df0f4e4723.jpg', NULL, '3cb48d90-c3a5-4d07-b1cf-c6a3d249cb17.jpg', 'bc0392f9-5c2c-4b27-a550-4ff9b7c581f0.jpg', NULL, NULL, NULL, NULL, '<p>Kaftan dari VPM Collection memiliki keunggulan yang sulit ditandingi. Setiap kaftan kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk kaftan dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap kaftan kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan kaftan kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Kaftan kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap kaftan memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Kaftan kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh kaftan kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Harga Terjangkau: Meskipun kualitas dan desain produk kami terbaik, harga kaftan dari VPM Collection tetap terjangkau. Kami berkomitmen untuk memberikan produk berkualitas tanpa membuat Anda merogoh kocek terlalu dalam.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih kaftan, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:08:29');
INSERT INTO `rb_produk` (`id_produk`, `id_kategori_produk`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_reseller`, `harga_konsumen`, `berat`, `diskon`, `total_terjual`, `gambar`, `gambar_2`, `gambar_3`, `gambar_4`, `gambar_5`, `gambar_6`, `gambar_7`, `gambar_8`, `gambar_9`, `gambar_10`, `keterangan`, `username`, `status_sale`, `waktu_input`) VALUES
(54, 14, 'Kaftan Mirage K04', 'kaftan-mirage-k04', 'pcs', 176000, 186000, 199000, '250', 0, 0, '1429c2d9-eb7d-43b1-af17-2795770ada80.jpg', '1cce8b1e-4c42-4611-8677-f7c50183cef1.jpg', '5d14a608-4bf0-4952-a566-40f8cf152517.jpg', NULL, '938d5798-4bd3-4952-97e0-49e02a4b7d18.jpg', NULL, 'dc2c5676-166f-41d9-8685-4e24244fe743.jpg', 'f60d3ccc-ea15-4129-8cfd-13e831aa5aa9.jpg', NULL, NULL, '<p>Kaftan dari VPM Collection memiliki keunggulan yang sulit ditandingi. Setiap kaftan kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk kaftan dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap kaftan kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan kaftan kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Kaftan kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap kaftan memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Kaftan kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh kaftan kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Harga Terjangkau: Meskipun kualitas dan desain produk kami terbaik, harga kaftan dari VPM Collection tetap terjangkau. Kami berkomitmen untuk memberikan produk berkualitas tanpa membuat Anda merogoh kocek terlalu dalam.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih kaftan, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:09:58'),
(55, 14, 'Kaftan Glimmer K05', 'kaftan-glimmer-k05', 'pcs', 215000, 235000, 249999, '250', 0, 0, 'e18ef0d6-9e73-411c-a6c3-9ad2ca60e0d8.jpg', 'f3169233-664f-46f5-afe4-8cdba715c4ac.jpg', '11761201-3c13-4484-8840-f2589e897fb5.jpg', 'c34e1ba9-0f2c-4193-958b-c17bac7bdeae.jpg', '1278296d-5ca3-48b5-9208-a80cc7759458.jpg', '68caa740-a475-4574-82d9-e56b20b4cce2.jpg', '3caf1719-be67-4a83-868b-ad5281eb127d.jpg', NULL, NULL, NULL, '<p>Kaftan dari VPM Collection memiliki keunggulan yang sulit ditandingi. Setiap kaftan kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk kaftan dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap kaftan kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan kaftan kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Kaftan kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap kaftan memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Kaftan kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh kaftan kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n	<li>\r\n	<p>Harga Terjangkau: Meskipun kualitas dan desain produk kami terbaik, harga kaftan dari VPM Collection tetap terjangkau. Kami berkomitmen untuk memberikan produk berkualitas tanpa membuat Anda merogoh kocek terlalu dalam.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih kaftan, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:11:01'),
(56, 15, 'Gamis Zahraflor G01', 'gamis-zahraflor-g01', 'pcs', 165000, 185000, 208999, '250', 0, 0, '4d3f2082-e439-4e32-9681-cbdb38e7375f.jpg', '344f64dc-064a-495f-8471-fdac06100bd8.jpg', 'd60a183f-e80f-4a72-b34f-07153179dc13.jpg', '0e687be6-4126-4d8a-9f3b-3e51e604eb33.jpg', '5b38c96d-e558-4eca-a04d-d6233d6001cc.jpg', '30e3c770-ef7a-4b74-905d-465cef75744c.jpg', 'b67cca61-98a9-4b11-86c8-af6054eb14d4.jpg', 'bfeace87-c882-4101-b7a9-c3e8921f324b.jpg', NULL, NULL, '<p>Tentu, berikut adalah contoh copywriting mengenai keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<p>Kami di VPM Collection menyediakan berbagai jenis gamis wanita dengan keunggulan yang sulit ditandingi. Setiap gamis kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap gamis kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan gamis kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Gamis kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap gamis memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Gamis kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh gamis kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih gamis, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:14:08'),
(57, 15, 'Gamis Aurorah G02', 'gamis-aurorah-g02', 'pcs', 177000, 189000, 198000, '250', 0, 0, '1a565f36-6469-45d8-8b32-99608d60a18f.jpg', '3d666889-5f0e-4970-8809-201aaad1113e.jpg', '86efab7f-e115-4ad7-839c-c3ff62220237.jpg', '86efab7f-e115-4ad7-839c-c3ff622202371.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tentu, berikut adalah contoh copywriting mengenai keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<p>Kami di VPM Collection menyediakan berbagai jenis gamis wanita dengan keunggulan yang sulit ditandingi. Setiap gamis kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap gamis kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan gamis kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Gamis kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap gamis memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Gamis kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh gamis kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih gamis, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:15:21'),
(58, 15, 'Gamis Zaharona G03', 'gamis-zaharona-g03', 'pcs', 199000, 229000, 248999, '250', 0, 0, '8adad07b-6f8b-4a70-8218-a080f8d3b828.jpg', '8af5ea26-ba95-49f1-826a-b6bde5dedd94.jpg', '306273d1-4526-4538-b24a-e42532619c29.jpg', 'a89ac5d9-cd51-4c8b-a141-069cb85baa16.jpg', 'b61c6a72-0ffc-45a1-9b49-6b0c18c86d55.jpg', '45526485-1f9d-4ce2-9b3e-3f70caebf31f.jpg', 'a0a0022c-0a29-4034-9af8-1117bf333fbb.jpg', 'd6c9cc12-383b-4ca0-8df5-38350a84eed9.jpg', NULL, NULL, '<p>Tentu, berikut adalah contoh copywriting mengenai keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<p>Kami di VPM Collection menyediakan berbagai jenis gamis wanita dengan keunggulan yang sulit ditandingi. Setiap gamis kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap gamis kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan gamis kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Gamis kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap gamis memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Gamis kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh gamis kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih gamis, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:16:38'),
(59, 15, 'Gamis Luminova G04', 'gamis-luminova-g04', 'pcs', 189000, 199000, 218999, '250', 0, 0, '33c3631b-d34f-4e7d-95e7-99f7f24e5a1b.jpg', '859bd909-c9d4-47d2-892b-7f54e89473af.jpg', '3669865e-77b3-497c-907e-11aa23d171f3.jpg', '48668756-96e5-4ee3-b3d0-13078873bf35.jpg', 'bc7c667b-3e37-4938-9395-00ea78d9ca3d.jpg', 'c1942703-1643-4d91-a95e-6d5858f9104b.jpg', NULL, NULL, NULL, NULL, '<p>Tentu, berikut adalah contoh copywriting mengenai keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<p>Kami di VPM Collection menyediakan berbagai jenis gamis wanita dengan keunggulan yang sulit ditandingi. Setiap gamis kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap gamis kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan gamis kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Gamis kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap gamis memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Gamis kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh gamis kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih gamis, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:17:29'),
(60, 15, 'Gamis Aurorise G05', 'gamis-aurorise-g05', 'pcs', 229000, 259000, 278998, '250', 0, 0, 'c2c5eef3-2311-47d5-a224-4c8a296d8061.jpg', '73b0d8b7-af31-4080-aadc-8837b31dc186(1).jpg', '73b0d8b7-af31-4080-aadc-8837b31dc186(1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tentu, berikut adalah contoh copywriting mengenai keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<p>Kami di VPM Collection menyediakan berbagai jenis gamis wanita dengan keunggulan yang sulit ditandingi. Setiap gamis kami dirancang dengan teliti dan diproduksi dengan kualitas terbaik untuk memastikan pengalaman pemakaian yang luar biasa. Berikut beberapa keunggulan produk gamis dari VPM Collection:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Kualitas Bahan Terbaik: Setiap gamis kami terbuat dari bahan berkualitas tinggi yang nyaman di kulit dan tahan lama. Kami memilih bahan dengan cermat untuk memastikan gamis kami tahan lama dan tetap terlihat cantik bahkan setelah beberapa kali penggunaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Desain yang Eksklusif: Gamis kami dirancang oleh desainer berbakat dengan detail yang teliti dan gaya yang unik. Setiap gamis memiliki karakter dan kepribadian yang berbeda, sehingga Anda dapat menemukan pilihan yang tepat untuk selera Anda.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kualitas Jahitan Terbaik: Gamis kami dijahit dengan presisi tinggi dan menggunakan teknik yang terbaik untuk memastikan kekuatan jahitan dan daya tahan. Seluruh gamis kami melalui proses quality control sebelum dikirimkan ke konsumen untuk memastikan produk yang diterima dalam kondisi terbaik.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Ketika memilih gamis, pilihlah VPM Collection. Kami memiliki produk yang berkualitas tinggi dengan harga yang terjangkau dan desain yang unik, memberikan Anda pengalaman pemakaian yang luar biasa dan penampilan yang menawan.</p>\r\n', 'admin', 1, '2023-05-14 10:18:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_provinsi`
--

CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_provinsi`
--

INSERT INTO `rb_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_rekening`
--

CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_rekening`
--

INSERT INTO `rb_rekening` (`id_rekening`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 'BRI', '078401008493534', 'Yuliana Hermaningsih'),
(2, 'BCA', '2761375760', 'Yuliana Hermaningsih'),
(3, 'QRIS DANA', '', 'Yuliana Hermaningsih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_supplier`
--

CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `katerangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_supplier`
--

INSERT INTO `rb_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_lengkap`, `no_hp`, `alamat_email`, `kode_pos`, `no_telpon`, `fax`, `katerangan`) VALUES
(4, 'CV. Ibadah Rajin', 'Iman Raharja', 'Kota Tasikmalaya', '089527123452', 'cvibadahrajin@gmail.com', 38291, '089527123452', '5', 'Perusahaan Produksi Mukena, Sajadah, dan Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_wishlist`
--

CREATE TABLE `rb_wishlist` (
  `id_wishlist` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rb_wishlist`
--

INSERT INTO `rb_wishlist` (`id_wishlist`, `id_produk`, `id_konsumen`) VALUES
(21, 24, 29),
(26, 21, 29);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reseller_akun`
--

CREATE TABLE `reseller_akun` (
  `id` int(11) NOT NULL,
  `ktp` varchar(250) DEFAULT NULL,
  `nama_olshop` varchar(250) NOT NULL,
  `link_olshop` varchar(250) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reseller_akun`
--

INSERT INTO `reseller_akun` (`id`, `ktp`, `nama_olshop`, `link_olshop`, `id_konsumen`, `status`) VALUES
(4, 'dribble.png', 'Rizki Wahyudie Shop', 'https://rizki.com', 29, 1),
(5, 'logoHijab_1_(1).png', 'Fathia Shop', 'https://www.fathiashop.com', 34, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slide`
--

INSERT INTO `slide` (`id_slide`, `keterangan`, `gambar`, `waktu`) VALUES
(1, 'Hijab makes a woman as beautiful as an angel', 'hijab3.jpg', '2016-05-13 08:09:18'),
(2, 'Beautiful Indonesian Women with Beautiful Eyes hijab niqab', 'hijab2.jpg', '2016-05-13 08:10:18'),
(4, 'Hijabers - Be inspiring woman with hijab', 'hijab1.jpg', '2018-02-18 00:42:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 5, '1451626224'),
('::1', '2016-01-12', 6, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-05-16', 37, '1463417273'),
('::1', '2016-04-27', 6, '1461765262'),
('::1', '2016-05-15', 7, '1463323116'),
('::1', '2016-05-03', 6, '1462232162'),
('::1', '2016-05-08', 7, '1462664246'),
('::1', '2016-05-11', 6, '1462969419'),
('::1', '2016-05-12', 6, '1463014545'),
('127.0.0.1', '2016-05-15', 3, '1463269324'),
('::1', '2016-05-17', 45, '1463492558'),
('::1', '2016-05-18', 106, '1463590677'),
('::1', '2016-05-19', 214, '1463630630'),
('::1', '2016-05-20', 487, '1463763520'),
('::1', '2016-05-21', 514, '1463847119'),
('::1', '2016-05-22', 1, '1463879088'),
('::1', '2016-05-23', 47, '1463994067'),
('::1', '2016-05-24', 326, '1464107038'),
('::1', '2016-05-25', 57, '1464193724'),
('::1', '2016-05-26', 344, '1464252857'),
('::1', '2016-05-27', 1, '1464344174'),
('::1', '2016-05-28', 663, '1464452162'),
('::1', '2016-05-29', 103, '1464517478'),
('::1', '2016-05-30', 2, '1464563692'),
('::1', '2016-06-01', 423, '1464756008'),
('::1', '2016-06-02', 516, '1464857838'),
('::1', '2016-06-03', 217, '1464939517'),
('::1', '2016-06-04', 146, '1465037330'),
('::1', '2016-06-05', 311, '1465140182'),
('::1', '2016-06-06', 63, '1465185192'),
('::1', '2016-06-07', 383, '1465278209'),
('::1', '2016-06-08', 392, '1465387331'),
('::1', '2016-06-09', 563, '1465453570'),
('::1', '2016-06-10', 23, '1465531632'),
('::1', '2016-06-13', 29, '1465793213'),
('::1', '2016-06-15', 373, '1466003972'),
('::1', '2016-06-16', 209, '1466046365'),
('120.164.43.190', '2016-06-16', 2, '1466047900'),
('180.254.135.210', '2016-06-16', 20, '1466048994'),
('36.66.250.50', '2016-06-16', 18, '1466051721'),
('178.162.216.38', '2016-06-16', 17, '1466048866'),
('178.162.216.32', '2016-06-16', 10, '1466049449'),
('91.109.30.77', '2016-06-16', 16, '1466073338'),
('91.109.30.71', '2016-06-16', 6, '1466052501'),
('178.162.216.35', '2016-06-16', 28, '1466053109'),
('91.109.30.83', '2016-06-16', 37, '1466054045'),
('91.109.30.107', '2016-06-16', 5, '1466054192'),
('178.162.216.36', '2016-06-16', 2, '1466054528'),
('36.84.224.103', '2016-06-16', 60, '1466062507'),
('36.84.1.46', '2016-06-16', 218, '1466073219'),
('69.61.12.70', '2016-06-16', 2, '1466083459'),
('180.254.134.13', '2016-06-16', 119, '1466072215'),
('66.249.65.96', '2016-06-16', 2, '1466087700'),
('66.249.66.172', '2016-06-16', 1, '1466070655'),
('158.69.228.18', '2016-06-16', 1, '1466072162'),
('91.109.30.101', '2016-06-16', 1, '1466073283'),
('91.121.83.118', '2016-06-16', 1, '1466075092'),
('161.69.163.20', '2016-06-16', 6, '1466076267'),
('36.75.253.198', '2016-06-16', 116, '1466095060'),
('66.249.93.191', '2016-06-16', 2, '1466079959'),
('36.84.1.54', '2016-06-16', 240, '1466093472'),
('66.249.65.90', '2016-06-16', 4, '1466089247'),
('66.249.65.96', '2016-06-17', 2, '1466181286'),
('66.249.93.189', '2016-06-17', 2, '1466097996'),
('5.189.159.157', '2016-06-17', 2, '1466098003'),
('69.61.12.70', '2016-06-17', 4, '1466169759'),
('66.249.65.93', '2016-06-17', 6, '1466181939'),
('208.80.194.125', '2016-06-17', 1, '1466117907'),
('108.61.157.59', '2016-06-17', 1, '1466120162'),
('208.80.194.27', '2016-06-17', 1, '1466124054'),
('180.254.142.113', '2016-06-17', 12, '1466155649'),
('114.121.239.181', '2016-06-17', 17, '1466133261'),
('114.125.188.40', '2016-06-17', 1, '1466135081'),
('180.76.15.5', '2016-06-17', 1, '1466136691'),
('36.84.1.66', '2016-06-17', 273, '1466160632'),
('198.27.69.229', '2016-06-17', 2, '1466146078'),
('161.69.163.20', '2016-06-17', 6, '1466146883'),
('91.219.237.229', '2016-06-17', 1, '1466150581'),
('110.53.183.50', '2016-06-17', 1, '1466151176'),
('66.249.65.90', '2016-06-17', 1, '1466154519'),
('202.67.36.245', '2016-06-17', 23, '1466172043'),
('207.102.138.158', '2016-06-17', 1, '1466182322'),
('91.121.83.118', '2016-06-17', 1, '1466182757'),
('66.249.65.93', '2016-06-18', 3, '1466188462'),
('69.61.12.70', '2016-06-18', 4, '1466256380'),
('202.67.37.46', '2016-06-18', 5, '1466200881'),
('180.249.17.243', '2016-06-18', 34, '1466263192'),
('125.162.241.179', '2016-06-18', 26, '1466263175'),
('180.249.226.71', '2016-06-18', 22, '1466263189'),
('208.80.194.125', '2016-06-18', 1, '1466203681'),
('36.75.253.198', '2016-06-18', 52, '1466215361'),
('208.80.194.27', '2016-06-18', 1, '1466209791'),
('110.136.242.160', '2016-06-18', 651, '1466260901'),
('167.114.228.206', '2016-06-18', 2, '1466229027'),
('66.249.65.96', '2016-06-18', 1, '1466231372'),
('202.67.37.37', '2016-06-18', 75, '1466238258'),
('146.20.65.193', '2016-06-18', 1, '1466237523'),
('202.67.37.41', '2016-06-18', 14, '1466243372'),
('36.83.123.122', '2016-06-18', 70, '1466257837'),
('162.251.167.90', '2016-06-18', 1, '1466244633'),
('84.177.14.46', '2016-06-18', 2, '1466248480'),
('46.165.230.5', '2016-06-18', 1, '1466244668'),
('37.146.189.147', '2016-06-18', 2, '1466248442'),
('69.195.159.138', '2016-06-18', 4, '1466248482'),
('185.86.78.204', '2016-06-18', 1, '1466244683'),
('65.19.167.131', '2016-06-18', 1, '1466244692'),
('162.247.73.74', '2016-06-18', 1, '1466244698'),
('146.0.43.126', '2016-06-18', 1, '1466244703'),
('147.175.187.143', '2016-06-18', 1, '1466244717'),
('73.219.221.183', '2016-06-18', 2, '1466248491'),
('62.210.37.82', '2016-06-18', 1, '1466244739'),
('149.202.98.160', '2016-06-18', 1, '1466248415'),
('163.172.152.231', '2016-06-18', 1, '1466248422'),
('171.25.193.131', '2016-06-18', 1, '1466248429'),
('178.62.71.57', '2016-06-18', 1, '1466248438'),
('71.19.157.127', '2016-06-18', 1, '1466248503'),
('161.69.163.20', '2016-06-18', 6, '1466250529'),
('91.121.83.118', '2016-06-18', 1, '1466250665'),
('45.55.229.210', '2016-06-18', 16, '1466252992'),
('180.254.142.113', '2016-06-18', 1, '1466253613'),
('45.33.15.94', '2016-06-18', 2, '1466253942'),
('114.125.177.53', '2016-06-18', 22, '1466256313'),
('23.92.215.2', '2016-06-18', 1, '1466255241'),
('202.67.37.40', '2016-06-18', 27, '1466267825'),
('78.47.67.232', '2016-06-18', 1, '1466264171'),
('69.61.12.70', '2016-06-19', 4, '1466340028'),
('141.8.143.187', '2016-06-19', 1, '1466277860'),
('66.249.65.90', '2016-06-19', 15, '1466354190'),
('66.249.66.165', '2016-06-19', 1, '1466280888'),
('66.249.65.96', '2016-06-19', 6, '1466308275'),
('66.249.65.93', '2016-06-19', 7, '1466321238'),
('36.83.123.122', '2016-06-19', 67, '1466348740'),
('73.78.200.51', '2016-06-19', 1, '1466292747'),
('208.80.192.33', '2016-06-19', 1, '1466293843'),
('208.80.194.120', '2016-06-19', 1, '1466296208'),
('180.249.0.227', '2016-06-19', 471, '1466322380'),
('36.75.253.198', '2016-06-19', 19, '1466306056'),
('66.249.85.219', '2016-06-19', 1, '1466305155'),
('66.102.6.245', '2016-06-19', 1, '1466305339'),
('66.249.66.172', '2016-06-19', 1, '1466310970'),
('66.102.6.237', '2016-06-19', 1, '1466310997'),
('161.69.163.20', '2016-06-19', 6, '1466311149'),
('141.8.143.221', '2016-06-19', 1, '1466317007'),
('66.102.6.241', '2016-06-19', 1, '1466323149'),
('66.249.85.222', '2016-06-19', 1, '1466323150'),
('193.90.12.90', '2016-06-19', 1, '1466323308'),
('91.121.83.118', '2016-06-19', 1, '1466324349'),
('202.67.37.35', '2016-06-19', 11, '1466324835'),
('73.219.221.183', '2016-06-19', 1, '1466329261'),
('84.177.12.15', '2016-06-19', 1, '1466329302'),
('46.166.186.225', '2016-06-19', 1, '1466329324'),
('85.159.237.210', '2016-06-19', 1, '1466329333'),
('69.195.159.138', '2016-06-19', 3, '1466329402'),
('199.127.226.150', '2016-06-19', 1, '1466329344'),
('37.146.82.214', '2016-06-19', 1, '1466329351'),
('158.130.0.242', '2016-06-19', 1, '1466329395'),
('114.125.191.58', '2016-06-19', 1, '1466330035'),
('46.229.167.149', '2016-06-19', 3, '1466334280'),
('120.169.255.153', '2016-06-19', 1, '1466335160'),
('180.249.226.71', '2016-06-19', 11, '1466342829'),
('125.162.241.179', '2016-06-19', 9, '1466342839'),
('180.249.17.243', '2016-06-19', 9, '1466342812'),
('114.125.179.243', '2016-06-19', 1, '1466344269'),
('36.75.249.65', '2016-06-19', 1, '1466344423'),
('180.76.15.13', '2016-06-19', 1, '1466346082'),
('185.51.65.87', '2016-06-19', 1, '1466347711'),
('106.186.122.169', '2016-06-19', 3, '1466351774'),
('66.249.65.90', '2016-06-20', 11, '1466440106'),
('69.61.12.70', '2016-06-20', 4, '1466427353'),
('163.172.38.173', '2016-06-20', 1, '1466361641'),
('66.249.65.93', '2016-06-20', 4, '1466408523'),
('36.83.123.122', '2016-06-20', 39, '1466415711'),
('185.51.65.87', '2016-06-20', 2, '1466409313'),
('208.80.194.27', '2016-06-20', 1, '1466377312'),
('208.80.194.120', '2016-06-20', 1, '1466379004'),
('66.249.65.96', '2016-06-20', 3, '1466440090'),
('36.66.250.50', '2016-06-20', 71, '1466407313'),
('180.254.134.109', '2016-06-20', 65, '1466397885'),
('161.69.163.20', '2016-06-20', 6, '1466388447'),
('36.83.79.26', '2016-06-20', 19, '1466392307'),
('163.172.38.175', '2016-06-20', 1, '1466391671'),
('114.125.173.85', '2016-06-20', 5, '1466392282'),
('66.249.84.167', '2016-06-20', 1, '1466393457'),
('66.102.6.245', '2016-06-20', 1, '1466393801'),
('54.198.96.122', '2016-06-20', 1, '1466398071'),
('36.83.82.69', '2016-06-20', 83, '1466418751'),
('128.199.99.114', '2016-06-20', 1, '1466401862'),
('65.19.167.132', '2016-06-20', 1, '1466407965'),
('85.25.103.119', '2016-06-20', 1, '1466409700'),
('91.121.83.118', '2016-06-20', 1, '1466414581'),
('162.251.167.74', '2016-06-20', 5, '1466419588'),
('84.177.20.13', '2016-06-20', 1, '1466415697'),
('73.219.221.183', '2016-06-20', 2, '1466419705'),
('148.251.255.92', '2016-06-20', 1, '1466415709'),
('35.0.127.52', '2016-06-20', 1, '1466415721'),
('46.165.251.153', '2016-06-20', 1, '1466415725'),
('65.19.167.131', '2016-06-20', 1, '1466415729'),
('37.146.64.203', '2016-06-20', 2, '1466419635'),
('46.28.110.136', '2016-06-20', 1, '1466415888'),
('158.69.228.18', '2016-06-20', 1, '1466415978'),
('95.175.97.229', '2016-06-20', 1, '1466417094'),
('104.200.24.65', '2016-06-20', 1, '1466419622'),
('97.74.237.196', '2016-06-20', 1, '1466419628'),
('185.100.85.132', '2016-06-20', 1, '1466419632'),
('179.43.143.162', '2016-06-20', 1, '1466419657'),
('84.177.28.32', '2016-06-20', 1, '1466419685'),
('84.177.17.180', '2016-06-20', 1, '1466419699'),
('120.161.1.135', '2016-06-20', 19, '1466421167'),
('114.125.172.5', '2016-06-20', 4, '1466422835'),
('120.169.254.244', '2016-06-20', 1, '1466424587'),
('185.100.86.167', '2016-06-20', 1, '1466426488'),
('36.75.253.198', '2016-06-20', 49, '1466432356'),
('104.236.142.110', '2016-06-20', 1, '1466431059'),
('176.10.104.240', '2016-06-20', 1, '1466431652'),
('129.10.115.51', '2016-06-20', 3, '1466436524'),
('129.10.115.241', '2016-06-20', 1, '1466436524'),
('69.61.12.70', '2016-06-21', 4, '1466514812'),
('114.125.179.192', '2016-06-21', 5, '1466458664'),
('202.67.37.43', '2016-06-21', 1, '1466462030'),
('129.10.115.241', '2016-06-21', 3, '1466462228'),
('129.10.115.51', '2016-06-21', 5, '1466492679'),
('208.80.194.123', '2016-06-21', 1, '1466463534'),
('36.83.123.122', '2016-06-21', 51, '1466515966'),
('66.249.65.93', '2016-06-21', 2, '1466524602'),
('208.80.194.121', '2016-06-21', 1, '1466465521'),
('66.249.84.165', '2016-06-21', 1, '1466469733'),
('66.102.6.237', '2016-06-21', 1, '1466469734'),
('114.125.179.246', '2016-06-21', 2, '1466475599'),
('162.243.233.58', '2016-06-21', 1, '1466475467'),
('36.75.241.70', '2016-06-21', 106, '1466495031'),
('180.76.15.156', '2016-06-21', 1, '1466483240'),
('162.223.88.37', '2016-06-21', 1, '1466487391'),
('66.249.65.90', '2016-06-21', 2, '1466510541'),
('114.125.171.104', '2016-06-21', 31, '1466499991'),
('121.40.64.73', '2016-06-21', 1, '1466498875'),
('120.26.72.221', '2016-06-21', 1, '1466499112'),
('121.40.141.31', '2016-06-21', 1, '1466499206'),
('202.67.36.253', '2016-06-21', 22, '1466506591'),
('91.121.83.118', '2016-06-21', 1, '1466504188'),
('5.255.250.50', '2016-06-21', 1, '1466512113'),
('178.32.53.131', '2016-06-21', 1, '1466515741'),
('167.114.103.181', '2016-06-21', 3, '1466516868'),
('66.249.66.169', '2016-06-21', 1, '1466520846'),
('66.249.65.90', '2016-06-22', 2, '1466533453'),
('8.37.230.21', '2016-06-22', 1, '1466532002'),
('36.83.74.181', '2016-06-22', 1, '1466532004'),
('66.249.65.96', '2016-06-22', 1, '1466533442'),
('69.61.12.70', '2016-06-22', 4, '1466601348'),
('161.69.163.20', '2016-06-22', 12, '1466593466'),
('202.67.36.245', '2016-06-22', 8, '1466541542'),
('212.117.180.21', '2016-06-22', 1, '1466542975'),
('114.125.186.35', '2016-06-22', 11, '1466544454'),
('180.241.178.201', '2016-06-22', 26, '1466567569'),
('208.80.192.33', '2016-06-22', 1, '1466551718'),
('208.80.194.27', '2016-06-22', 1, '1466553074'),
('129.10.115.241', '2016-06-22', 2, '1466554276'),
('129.10.115.51', '2016-06-22', 2, '1466554286'),
('36.75.253.198', '2016-06-22', 2, '1466556036'),
('8.37.230.141', '2016-06-22', 4, '1466557643'),
('114.125.171.23', '2016-06-22', 10, '1466559072'),
('66.249.65.93', '2016-06-22', 1, '1466558626'),
('114.125.175.227', '2016-06-22', 4, '1466559990'),
('66.249.84.166', '2016-06-22', 1, '1466562769'),
('36.83.66.159', '2016-06-22', 5, '1466583301'),
('8.37.232.111', '2016-06-22', 6, '1466604596'),
('120.169.255.122', '2016-06-22', 10, '1466577235'),
('36.75.144.179', '2016-06-22', 213, '1466611920'),
('36.83.123.122', '2016-06-22', 5, '1466581052'),
('178.162.216.30', '2016-06-22', 12, '1466580626'),
('91.109.30.68', '2016-06-22', 21, '1466581630'),
('91.109.30.86', '2016-06-22', 8, '1466582485'),
('195.154.165.246', '2016-06-22', 1, '1466582822'),
('91.121.83.118', '2016-06-22', 1, '1466583092'),
('42.62.176.10', '2016-06-22', 150, '1466598767'),
('91.109.30.110', '2016-06-22', 6, '1466583259'),
('114.125.170.127', '2016-06-22', 40, '1466593317'),
('114.125.169.45', '2016-06-22', 1, '1466587266'),
('114.125.179.202', '2016-06-22', 7, '1466589208'),
('114.125.176.4', '2016-06-22', 2, '1466589534'),
('114.125.177.250', '2016-06-22', 8, '1466591428'),
('114.125.179.126', '2016-06-22', 1, '1466592557'),
('114.125.191.247', '2016-06-22', 1, '1466593105'),
('114.125.179.243', '2016-06-22', 12, '1466597787'),
('36.75.145.205', '2016-06-22', 27, '1466602657'),
('202.67.37.38', '2016-06-22', 7, '1466600419'),
('120.169.255.213', '2016-06-22', 20, '1466605261'),
('114.125.178.147', '2016-06-22', 13, '1466605374'),
('138.201.58.84', '2016-06-22', 2, '1466612168'),
('180.254.203.64', '2016-06-23', 16, '1466621983'),
('69.61.12.70', '2016-06-23', 4, '1466687787'),
('54.158.107.22', '2016-06-23', 1, '1466628653'),
('208.80.194.120', '2016-06-23', 1, '1466638127'),
('208.80.194.27', '2016-06-23', 1, '1466638324'),
('114.125.173.254', '2016-06-23', 6, '1466638979'),
('128.199.100.9', '2016-06-23', 1, '1466648148'),
('202.67.37.45', '2016-06-23', 15, '1466648862'),
('36.83.80.96', '2016-06-23', 140, '1466668112'),
('101.255.82.139', '2016-06-23', 6, '1466650586'),
('178.162.216.35', '2016-06-23', 80, '1466674698'),
('178.162.216.32', '2016-06-23', 37, '1466672163'),
('178.162.216.38', '2016-06-23', 14, '1466668402'),
('66.249.66.165', '2016-06-23', 2, '1466683141'),
('178.162.216.30', '2016-06-23', 1, '1466657233'),
('91.109.30.72', '2016-06-23', 38, '1466660691'),
('8.37.232.111', '2016-06-23', 1, '1466659122'),
('120.164.46.64', '2016-06-23', 8, '1466659457'),
('91.109.30.96', '2016-06-23', 1, '1466660852'),
('178.162.216.36', '2016-06-23', 5, '1466662025'),
('178.162.216.34', '2016-06-23', 9, '1466661298'),
('66.249.85.222', '2016-06-23', 1, '1466661241'),
('66.249.65.93', '2016-06-23', 3, '1466687864'),
('91.109.30.90', '2016-06-23', 4, '1466664704'),
('161.69.163.20', '2016-06-23', 6, '1466665244'),
('115.178.254.83', '2016-06-23', 22, '1466668187'),
('36.75.141.232', '2016-06-23', 88, '1466693377'),
('36.83.111.227', '2016-06-23', 108, '1466674396'),
('148.251.255.92', '2016-06-23', 1, '1466669109'),
('142.4.218.156', '2016-06-23', 4, '1466669353'),
('91.109.30.117', '2016-06-23', 14, '1466670958'),
('8.37.233.242', '2016-06-23', 5, '1466679780'),
('120.164.45.74', '2016-06-23', 32, '1466682854'),
('91.121.83.118', '2016-06-23', 1, '1466678436'),
('114.125.176.139', '2016-06-23', 1, '1466681755'),
('66.249.65.90', '2016-06-23', 2, '1466687850'),
('180.249.17.35', '2016-06-23', 19, '1466683091'),
('157.55.39.91', '2016-06-23', 1, '1466685026'),
('66.249.84.166', '2016-06-23', 1, '1466688243'),
('202.67.37.35', '2016-06-23', 1, '1466689565'),
('202.67.37.33', '2016-06-23', 13, '1466691253'),
('107.170.130.29', '2016-06-23', 1, '1466697552'),
('173.252.88.93', '2016-06-24', 1, '1466702526'),
('36.69.25.93', '2016-06-24', 1, '1466702530'),
('66.249.65.90', '2016-06-24', 2, '1466787531'),
('141.8.143.221', '2016-06-24', 1, '1466705865'),
('66.249.65.93', '2016-06-24', 2, '1466712708'),
('69.61.12.70', '2016-06-24', 4, '1466773382'),
('104.131.147.112', '2016-06-24', 1, '1466709578'),
('66.249.65.96', '2016-06-24', 2, '1466744732'),
('202.67.37.44', '2016-06-24', 24, '1466715004'),
('115.178.251.10', '2016-06-24', 13, '1466721783'),
('8.37.232.111', '2016-06-24', 1, '1466722448'),
('120.164.45.74', '2016-06-24', 15, '1466724855'),
('208.80.194.27', '2016-06-24', 1, '1466723398'),
('208.80.194.124', '2016-06-24', 1, '1466723821'),
('54.90.213.208', '2016-06-24', 1, '1466728051'),
('180.249.17.35', '2016-06-24', 24, '1466738071'),
('180.251.170.96', '2016-06-24', 163, '1466759960'),
('36.83.129.40', '2016-06-24', 2, '1466741044'),
('115.178.235.203', '2016-06-24', 14, '1466750009'),
('104.236.182.170', '2016-06-24', 1, '1466754056'),
('36.66.250.52', '2016-06-24', 70, '1466759360'),
('146.20.65.193', '2016-06-24', 1, '1466756213'),
('206.253.224.14', '2016-06-24', 1, '1466758353'),
('161.69.163.20', '2016-06-24', 6, '1466763621'),
('158.69.228.18', '2016-06-24', 1, '1466764062'),
('91.121.83.118', '2016-06-24', 1, '1466766759'),
('36.83.140.156', '2016-06-24', 45, '1466771961'),
('202.67.36.252', '2016-06-24', 31, '1466768628'),
('115.178.252.98', '2016-06-24', 11, '1466771537'),
('198.27.69.229', '2016-06-24', 2, '1466771928'),
('8.37.233.242', '2016-06-24', 1, '1466778787'),
('120.169.255.92', '2016-06-24', 3, '1466778941'),
('60.250.188.6', '2016-06-24', 1, '1466779542'),
('202.67.37.35', '2016-06-24', 32, '1466785037'),
('36.75.240.59', '2016-06-24', 55, '1466785527'),
('66.249.65.90', '2016-06-25', 2, '1466853981'),
('66.249.65.93', '2016-06-25', 1, '1466792134'),
('69.61.12.70', '2016-06-25', 2, '1466861581'),
('104.236.200.76', '2016-06-25', 1, '1466795914'),
('8.37.232.111', '2016-06-25', 2, '1466860577'),
('120.169.255.92', '2016-06-25', 6, '1466798512'),
('208.80.194.27', '2016-06-25', 1, '1466810958'),
('208.80.194.121', '2016-06-25', 1, '1466812405'),
('91.109.30.91', '2016-06-25', 4, '1466812532'),
('91.109.30.79', '2016-06-25', 3, '1466812606'),
('202.67.37.46', '2016-06-25', 15, '1466813198'),
('8.37.234.170', '2016-06-25', 1, '1466853972'),
('114.125.14.229', '2016-06-25', 3, '1466854239'),
('91.109.30.80', '2016-06-25', 1, '1466854756'),
('36.75.240.59', '2016-06-25', 55, '1466865485'),
('120.164.43.84', '2016-06-25', 9, '1466861510'),
('202.67.36.241', '2016-06-25', 60, '1466861855'),
('66.249.84.165', '2016-06-25', 1, '1466863311'),
('180.249.230.111', '2016-06-25', 6, '1466865087'),
('180.249.228.105', '2016-06-25', 6, '1466865202'),
('36.83.138.142', '2016-06-25', 7, '1466865066'),
('36.75.141.10', '2016-06-25', 35, '1466865831'),
('69.171.230.99', '2016-06-25', 2, '1466867322'),
('69.171.230.109', '2016-06-25', 1, '1466865568'),
('69.171.230.114', '2016-06-25', 3, '1466867328'),
('69.171.230.106', '2016-06-25', 1, '1466865575'),
('69.171.230.107', '2016-06-25', 2, '1466867317'),
('69.171.230.101', '2016-06-25', 1, '1466865592'),
('69.171.230.100', '2016-06-25', 1, '1466865634'),
('78.47.67.232', '2016-06-25', 1, '1466865697'),
('69.171.230.113', '2016-06-25', 1, '1466865698'),
('69.171.230.102', '2016-06-25', 2, '1466867323'),
('69.171.230.119', '2016-06-25', 2, '1466865713'),
('69.171.230.112', '2016-06-25', 1, '1466867083'),
('69.171.230.116', '2016-06-25', 1, '1466867301'),
('69.171.230.121', '2016-06-25', 1, '1466867325'),
('69.171.230.120', '2016-06-25', 1, '1466867327'),
('69.171.230.103', '2016-06-25', 1, '1466867329'),
('45.79.203.152', '2016-06-25', 3, '1466872650'),
('69.61.12.70', '2016-06-26', 4, '1466948453'),
('114.125.171.245', '2016-06-26', 7, '1466887247'),
('202.67.37.35', '2016-06-26', 36, '1466900762'),
('208.80.192.33', '2016-06-26', 2, '1466898078'),
('69.171.230.99', '2016-06-26', 1, '1466903991'),
('36.75.240.59', '2016-06-26', 238, '1466959009'),
('66.249.65.90', '2016-06-26', 3, '1466905594'),
('66.249.65.93', '2016-06-26', 2, '1466905534'),
('66.249.65.96', '2016-06-26', 3, '1466938080'),
('36.75.141.10', '2016-06-26', 1, '1466905823'),
('202.67.37.37', '2016-06-26', 91, '1466920278'),
('180.249.17.92', '2016-06-26', 94, '1466940004'),
('91.109.30.90', '2016-06-26', 11, '1466909733'),
('178.162.216.34', '2016-06-26', 14, '1466912375'),
('120.164.44.245', '2016-06-26', 18, '1466912900'),
('161.69.163.20', '2016-06-26', 6, '1466914512'),
('8.37.232.111', '2016-06-26', 1, '1466915348'),
('120.164.43.33', '2016-06-26', 6, '1466915829'),
('36.84.1.15', '2016-06-26', 82, '1466922517'),
('202.67.37.41', '2016-06-26', 69, '1466952781'),
('180.249.230.33', '2016-06-26', 6, '1466934070'),
('202.67.37.47', '2016-06-26', 8, '1466940695'),
('65.19.167.132', '2016-06-26', 1, '1466938624'),
('66.249.84.166', '2016-06-26', 1, '1466940483'),
('114.125.187.31', '2016-06-26', 15, '1466941588'),
('208.87.237.201', '2016-06-26', 1, '1466946903'),
('72.182.40.181', '2016-06-26', 1, '1466946907'),
('162.243.233.58', '2016-06-26', 1, '1466946940'),
('202.67.37.42', '2016-06-26', 5, '1466949901'),
('91.121.83.118', '2016-06-26', 1, '1466948822'),
('38.99.62.91', '2016-06-26', 1, '1466949580'),
('146.20.65.193', '2016-06-26', 1, '1466952033'),
('104.236.122.179', '2016-06-26', 1, '1466958040'),
('45.33.15.94', '2016-06-27', 4, '1467042570'),
('69.61.12.70', '2016-06-27', 4, '1467034514'),
('36.75.240.59', '2016-06-27', 3, '1466972426'),
('202.67.36.250', '2016-06-27', 1, '1466973468'),
('208.80.194.125', '2016-06-27', 1, '1466982106'),
('208.80.194.126', '2016-06-27', 1, '1466983045'),
('66.249.65.90', '2016-06-27', 3, '1467010916'),
('36.66.250.52', '2016-06-27', 45, '1467000388'),
('66.249.65.96', '2016-06-27', 2, '1467038255'),
('161.69.163.20', '2016-06-27', 6, '1466989512'),
('66.249.84.166', '2016-06-27', 1, '1466989772'),
('180.251.145.230', '2016-06-27', 16, '1466990832'),
('114.125.178.24', '2016-06-27', 4, '1466993110'),
('202.67.37.36', '2016-06-27', 15, '1466994171'),
('178.162.216.34', '2016-06-27', 8, '1466998580'),
('180.251.171.189', '2016-06-27', 126, '1467016661'),
('91.109.30.122', '2016-06-27', 34, '1467015261'),
('114.125.176.167', '2016-06-27', 9, '1467000646'),
('91.109.30.110', '2016-06-27', 9, '1467000842'),
('91.109.30.68', '2016-06-27', 26, '1467003528'),
('178.162.216.38', '2016-06-27', 15, '1467004032'),
('66.102.6.241', '2016-06-27', 1, '1467007610'),
('104.236.121.91', '2016-06-27', 11, '1467012091'),
('91.109.30.116', '2016-06-27', 3, '1467012994'),
('158.69.25.178', '2016-06-27', 3, '1467022299'),
('202.67.37.47', '2016-06-27', 65, '1467034755'),
('69.171.230.108', '2016-06-27', 1, '1467028398'),
('180.249.10.63', '2016-06-27', 4, '1467028698'),
('180.249.13.5', '2016-06-27', 2, '1467028695'),
('180.254.194.156', '2016-06-27', 2, '1467028721'),
('66.249.65.93', '2016-06-27', 1, '1467028693'),
('146.20.65.193', '2016-06-27', 2, '1467041859'),
('114.125.176.188', '2016-06-27', 3, '1467031521'),
('141.8.143.224', '2016-06-27', 1, '1467034085'),
('148.251.255.92', '2016-06-27', 1, '1467040123'),
('114.125.191.91', '2016-06-27', 6, '1467041826'),
('54.225.50.187', '2016-06-27', 1, '1467041765'),
('91.121.83.118', '2016-06-27', 1, '1467043956'),
('114.125.191.219', '2016-06-28', 1, '1467047560'),
('66.249.65.90', '2016-06-28', 6, '1467122070'),
('161.69.163.20', '2016-06-28', 12, '1467079449'),
('69.61.12.70', '2016-06-28', 4, '1467121298'),
('120.26.63.86', '2016-06-28', 1, '1467059921'),
('120.26.53.92', '2016-06-28', 1, '1467059943'),
('120.26.72.221', '2016-06-28', 1, '1467059978'),
('121.43.226.181', '2016-06-28', 1, '1467060024'),
('121.40.160.128', '2016-06-28', 1, '1467060077'),
('202.67.37.36', '2016-06-28', 7, '1467062714'),
('46.229.167.149', '2016-06-28', 3, '1467063360'),
('114.125.191.191', '2016-06-28', 48, '1467068307'),
('66.249.65.96', '2016-06-28', 3, '1467131347'),
('208.80.194.124', '2016-06-28', 1, '1467069983'),
('208.80.192.33', '2016-06-28', 1, '1467072097'),
('36.83.104.153', '2016-06-28', 18, '1467095647'),
('168.235.207.205', '2016-06-28', 3, '1467082001'),
('114.125.178.33', '2016-06-28', 45, '1467084591'),
('69.171.230.121', '2016-06-28', 1, '1467086290'),
('69.171.230.122', '2016-06-28', 1, '1467086371'),
('180.251.153.221', '2016-06-28', 41, '1467114873'),
('114.125.175.102', '2016-06-28', 29, '1467093105'),
('114.125.170.92', '2016-06-28', 5, '1467092634'),
('64.74.215.113', '2016-06-28', 1, '1467098506'),
('129.10.232.9', '2016-06-28', 2, '1467103037'),
('129.10.232.5', '2016-06-28', 2, '1467103038'),
('114.125.169.3', '2016-06-28', 33, '1467107314'),
('202.67.37.34', '2016-06-28', 123, '1467123818'),
('114.125.190.245', '2016-06-28', 68, '1467114758'),
('180.251.145.230', '2016-06-28', 54, '1467109908'),
('114.125.175.113', '2016-06-28', 7, '1467117474'),
('36.83.127.172', '2016-06-28', 15, '1467121173'),
('114.125.173.77', '2016-06-28', 1, '1467117572'),
('66.249.84.166', '2016-06-28', 1, '1467117632'),
('114.125.185.64', '2016-06-28', 8, '1467118317'),
('8.37.233.242', '2016-06-28', 1, '1467121024'),
('69.171.230.107', '2016-06-28', 1, '1467121061'),
('120.169.254.84', '2016-06-28', 2, '1467121239'),
('66.249.93.187', '2016-06-28', 1, '1467121476'),
('139.195.48.133', '2016-06-28', 1, '1467121479'),
('139.255.134.233', '2016-06-28', 3, '1467121598'),
('202.67.39.24', '2016-06-28', 1, '1467121703'),
('114.121.153.172', '2016-06-28', 1, '1467121870'),
('114.125.27.64', '2016-06-28', 1, '1467122151'),
('79.35.127.67', '2016-06-28', 1, '1467122847'),
('122.100.184.165', '2016-06-28', 1, '1467123020'),
('99.62.92.27', '2016-06-28', 1, '1467123813'),
('86.126.86.140', '2016-06-28', 1, '1467124018'),
('114.120.237.160', '2016-06-28', 1, '1467124261'),
('120.169.254.240', '2016-06-28', 1, '1467124350'),
('36.75.240.59', '2016-06-28', 26, '1467126389'),
('1.187.14.36', '2016-06-28', 1, '1467126394'),
('223.196.83.254', '2016-06-28', 2, '1467127724'),
('192.99.46.89', '2016-06-28', 4, '1467128240'),
('45.33.15.94', '2016-06-28', 2, '1467128802'),
('180.251.148.14', '2016-06-28', 8, '1467133141'),
('36.83.129.6', '2016-06-28', 8, '1467132902'),
('36.75.148.121', '2016-06-28', 8, '1467133063'),
('120.169.254.32', '2016-06-28', 1, '1467132840'),
('129.10.232.9', '2016-06-29', 4, '1467168653'),
('129.10.232.5', '2016-06-29', 3, '1467170464'),
('120.164.41.208', '2016-06-29', 1, '1467138274'),
('69.61.12.70', '2016-06-29', 4, '1467207524'),
('69.171.230.102', '2016-06-29', 4, '1467203929'),
('91.121.83.118', '2016-06-29', 1, '1467145518'),
('202.67.37.45', '2016-06-29', 1, '1467146083'),
('180.254.194.156', '2016-06-29', 3, '1467148431'),
('180.249.13.5', '2016-06-29', 6, '1467148539'),
('180.249.10.63', '2016-06-29', 4, '1467148525'),
('202.67.37.38', '2016-06-29', 9, '1467157705'),
('115.178.235.102', '2016-06-29', 1, '1467155743'),
('208.80.192.33', '2016-06-29', 1, '1467156411'),
('208.80.194.123', '2016-06-29', 1, '1467158911'),
('24.240.81.186', '2016-06-29', 1, '1467159418'),
('36.73.120.151', '2016-06-29', 1, '1467160026'),
('69.171.230.96', '2016-06-29', 3, '1467203631'),
('69.171.230.105', '2016-06-29', 2, '1467202553'),
('180.242.23.192', '2016-06-29', 1, '1467170731'),
('36.66.250.52', '2016-06-29', 7, '1467172574'),
('114.125.184.63', '2016-06-29', 4, '1467175106'),
('91.109.30.66', '2016-06-29', 29, '1467177498'),
('91.109.30.84', '2016-06-29', 5, '1467178139'),
('178.162.216.36', '2016-06-29', 9, '1467178727'),
('178.162.216.35', '2016-06-29', 23, '1467179611'),
('114.121.153.240', '2016-06-29', 1, '1467180629'),
('110.136.245.53', '2016-06-29', 17, '1467191863'),
('208.91.66.226', '2016-06-29', 1, '1467186721'),
('188.40.45.81', '2016-06-29', 1, '1467188148'),
('161.69.163.20', '2016-06-29', 6, '1467189990'),
('158.69.229.134', '2016-06-29', 1, '1467190512'),
('66.249.65.93', '2016-06-29', 1, '1467196899'),
('66.249.65.90', '2016-06-29', 3, '1467216598'),
('66.249.65.96', '2016-06-29', 3, '1467214822'),
('91.219.237.229', '2016-06-29', 1, '1467200029'),
('69.171.230.121', '2016-06-29', 3, '1467203468'),
('69.171.230.119', '2016-06-29', 4, '1467203861'),
('69.171.230.103', '2016-06-29', 6, '1467203730'),
('69.171.230.120', '2016-06-29', 4, '1467203619'),
('69.171.230.101', '2016-06-29', 3, '1467203862'),
('69.171.230.97', '2016-06-29', 3, '1467203408'),
('69.171.230.98', '2016-06-29', 1, '1467202243'),
('69.171.230.106', '2016-06-29', 3, '1467203861'),
('69.171.230.108', '2016-06-29', 2, '1467203410'),
('69.171.230.112', '2016-06-29', 3, '1467203662'),
('69.171.230.117', '2016-06-29', 3, '1467203426'),
('69.171.230.104', '2016-06-29', 3, '1467203465'),
('69.171.230.123', '2016-06-29', 1, '1467203025'),
('69.171.230.116', '2016-06-29', 1, '1467203047'),
('69.171.230.115', '2016-06-29', 1, '1467203072'),
('69.171.230.109', '2016-06-29', 1, '1467203421'),
('69.171.230.113', '2016-06-29', 1, '1467203425'),
('69.171.230.107', '2016-06-29', 1, '1467203439'),
('69.171.230.118', '2016-06-29', 1, '1467203476'),
('69.171.230.122', '2016-06-29', 1, '1467203891'),
('36.75.240.59', '2016-06-29', 60, '1467217211'),
('114.125.169.208', '2016-06-29', 46, '1467215118'),
('36.75.240.59', '2016-06-30', 38, '1467302857'),
('69.171.230.101', '2016-06-30', 1, '1467225298'),
('69.171.230.103', '2016-06-30', 1, '1467225343'),
('69.171.230.100', '2016-06-30', 1, '1467225345'),
('69.171.230.108', '2016-06-30', 1, '1467225348'),
('114.125.169.130', '2016-06-30', 5, '1467225815'),
('54.234.231.219', '2016-06-30', 1, '1467226396'),
('69.61.12.70', '2016-06-30', 3, '1467272208'),
('91.121.83.118', '2016-06-30', 1, '1467233165'),
('202.67.37.33', '2016-06-30', 9, '1467233597'),
('208.80.194.124', '2016-06-30', 1, '1467240538'),
('114.125.169.129', '2016-06-30', 1, '1467242975'),
('69.171.230.115', '2016-06-30', 1, '1467243249'),
('69.171.230.116', '2016-06-30', 1, '1467245032'),
('208.80.194.120', '2016-06-30', 1, '1467245113'),
('69.171.230.99', '2016-06-30', 1, '1467245349'),
('69.171.230.97', '2016-06-30', 1, '1467245350'),
('69.171.230.123', '2016-06-30', 1, '1467245352'),
('69.171.230.109', '2016-06-30', 1, '1467245353'),
('180.254.181.202', '2016-06-30', 18, '1467267348'),
('91.109.30.98', '2016-06-30', 5, '1467267335'),
('91.109.30.122', '2016-06-30', 31, '1467268722'),
('178.162.216.32', '2016-06-30', 10, '1467268984'),
('178.162.216.35', '2016-06-30', 1, '1467270566'),
('114.125.178.67', '2016-06-30', 52, '1467279954'),
('202.67.36.248', '2016-06-30', 6, '1467296098'),
('66.249.65.96', '2016-06-30', 2, '1467290477'),
('158.69.228.18', '2016-06-30', 1, '1467282990'),
('114.125.178.83', '2016-06-30', 2, '1467287864'),
('66.249.84.243', '2016-06-30', 1, '1467289883'),
('54.201.12.207', '2016-06-30', 1, '1467291984'),
('180.249.12.168', '2016-06-30', 19, '1467294753'),
('50.116.16.218', '2016-06-30', 2, '1467303842'),
('167.114.209.192', '2016-07-01', 1, '1467306863'),
('180.249.2.112', '2016-07-01', 68, '1467378119'),
('66.249.65.90', '2016-07-01', 2, '1467322828'),
('148.251.84.9', '2016-07-01', 2, '1467312137'),
('114.125.173.150', '2016-07-01', 8, '1467316382'),
('202.67.37.39', '2016-07-01', 3, '1467316863'),
('69.171.230.100', '2016-07-01', 1, '1467318453'),
('69.171.230.115', '2016-07-01', 1, '1467318458'),
('91.121.83.118', '2016-07-01', 1, '1467318611'),
('69.171.230.116', '2016-07-01', 1, '1467318651'),
('107.207.156.29', '2016-07-01', 2, '1467356489'),
('129.10.232.9', '2016-07-01', 3, '1467327789'),
('129.10.232.5', '2016-07-01', 1, '1467326287'),
('::1', '2016-07-01', 7, '1467331185'),
('180.254.132.216', '2016-07-01', 13, '1467348950'),
('36.66.250.52', '2016-07-01', 57, '1467357030'),
('64.246.165.10', '2016-07-01', 1, '1467340460'),
('202.80.215.198', '2016-07-01', 8, '1467376425'),
('36.85.178.207', '2016-07-01', 12, '1467361182'),
('69.171.230.105', '2016-07-01', 1, '1467347735'),
('114.125.191.4', '2016-07-01', 3, '1467348714'),
('114.125.185.135', '2016-07-01', 7, '1467349440'),
('198.27.69.229', '2016-07-01', 2, '1467352565'),
('202.67.36.246', '2016-07-01', 76, '1467372889'),
('133.1.236.59', '2016-07-01', 1, '1467362656'),
('54.163.79.44', '2016-07-01', 1, '1467363507'),
('114.125.170.46', '2016-07-01', 56, '1467371204'),
('114.125.187.196', '2016-07-01', 90, '1467370008'),
('66.249.84.237', '2016-07-01', 1, '1467370455'),
('192.160.102.164', '2016-07-01', 1, '1467372128'),
('202.67.36.247', '2016-07-01', 16, '1467389006'),
('36.83.117.195', '2016-07-01', 5, '1467386057'),
('180.254.205.229', '2016-07-01', 1, '1467385912'),
('36.75.145.5', '2016-07-01', 4, '1467386272'),
('125.162.240.175', '2016-07-02', 6, '1467395375'),
('125.162.240.87', '2016-07-02', 5, '1467395392'),
('180.251.145.196', '2016-07-02', 5, '1467395393'),
('208.80.194.123', '2016-07-02', 1, '1467396297'),
('66.249.65.93', '2016-07-02', 1, '1467401578'),
('66.249.65.90', '2016-07-02', 3, '1467406200'),
('180.249.2.112', '2016-07-02', 213, '1467455746'),
('107.207.156.29', '2016-07-02', 3, '1467462933'),
('207.182.140.210', '2016-07-02', 1, '1467413300'),
('114.125.170.222', '2016-07-02', 23, '1467444747'),
('36.68.56.140', '2016-07-02', 3, '1467421384'),
('202.80.215.198', '2016-07-02', 2, '1467437733'),
('8.37.233.242', '2016-07-02', 1, '1467426811'),
('202.67.36.254', '2016-07-02', 27, '1467434226'),
('120.169.254.12', '2016-07-02', 1, '1467427203'),
('67.198.140.203', '2016-07-02', 1, '1467430871'),
('66.249.85.219', '2016-07-02', 1, '1467432896'),
('69.171.230.110', '2016-07-02', 1, '1467437851'),
('112.215.153.1', '2016-07-02', 4, '1467443333'),
('110.136.240.193', '2016-07-02', 49, '1467450561'),
('114.125.174.223', '2016-07-02', 23, '1467445680'),
('202.67.37.41', '2016-07-02', 8, '1467458763'),
('180.251.158.52', '2016-07-02', 14, '1467459481'),
('114.125.169.203', '2016-07-02', 14, '1467459243'),
('114.125.187.17', '2016-07-03', 15, '1467483399'),
('202.67.37.36', '2016-07-03', 1, '1467492897'),
('66.249.65.93', '2016-07-03', 2, '1467526445'),
('67.198.140.203', '2016-07-03', 1, '1467506870'),
('66.249.65.90', '2016-07-03', 1, '1467510001'),
('107.207.156.29', '2016-07-03', 1, '1467510327'),
('8.37.233.242', '2016-07-03', 2, '1467526326'),
('120.169.255.163', '2016-07-03', 10, '1467526874'),
('66.249.65.96', '2016-07-03', 1, '1467514042'),
('208.80.194.30', '2016-07-03', 1, '1467518863'),
('114.125.175.204', '2016-07-03', 2, '1467525182'),
('202.67.37.39', '2016-07-03', 4, '1467528854'),
('202.67.37.44', '2016-07-03', 19, '1467545774'),
('62.210.37.82', '2016-07-03', 1, '1467544581'),
('146.20.65.193', '2016-07-03', 1, '1467549222'),
('180.249.2.112', '2016-07-03', 4, '1467551457'),
('66.249.66.165', '2016-07-03', 1, '1467555965'),
('69.171.230.99', '2016-07-03', 1, '1467556613'),
('69.171.230.108', '2016-07-03', 1, '1467556621'),
('69.171.230.123', '2016-07-03', 1, '1467556633'),
('91.121.83.118', '2016-07-03', 1, '1467557793'),
('107.207.156.29', '2016-07-04', 1, '1467565993'),
('66.249.65.90', '2016-07-04', 7, '1467618324'),
('114.125.177.250', '2016-07-04', 7, '1467579114'),
('66.249.66.169', '2016-07-04', 2, '1467597405'),
('66.249.65.93', '2016-07-04', 3, '1467650395'),
('161.69.163.20', '2016-07-04', 6, '1467594037'),
('36.75.143.151', '2016-07-04', 48, '1467603297'),
('8.37.233.242', '2016-07-04', 2, '1467603525'),
('120.169.255.187', '2016-07-04', 6, '1467603907'),
('202.67.37.43', '2016-07-04', 32, '1467603367'),
('180.249.2.112', '2016-07-04', 87, '1467650464'),
('69.61.12.70', '2016-07-04', 2, '1467638329'),
('113.35.251.98', '2016-07-04', 1, '1467625899'),
('129.10.232.9', '2016-07-04', 3, '1467632050'),
('129.10.232.5', '2016-07-04', 1, '1467632051'),
('114.125.174.142', '2016-07-04', 3, '1467632650'),
('192.160.102.164', '2016-07-04', 1, '1467643424'),
('133.1.236.59', '2016-07-04', 1, '1467649658'),
('120.26.72.221', '2016-07-04', 1, '1467649795'),
('121.40.160.128', '2016-07-04', 1, '1467649813'),
('121.40.64.73', '2016-07-04', 1, '1467649834'),
('120.26.102.108', '2016-07-04', 1, '1467649876'),
('121.40.106.14', '2016-07-04', 1, '1467649937'),
('91.121.83.118', '2016-07-05', 1, '1467652490'),
('120.169.255.12', '2016-07-05', 13, '1467658137'),
('104.236.68.137', '2016-07-05', 10, '1467658452'),
('129.10.232.5', '2016-07-05', 1, '1467658815'),
('129.10.232.9', '2016-07-05', 3, '1467658816'),
('69.61.12.70', '2016-07-05', 4, '1467724592'),
('114.125.179.118', '2016-07-05', 1, '1467668472'),
('45.33.15.94', '2016-07-05', 2, '1467668780'),
('107.207.156.29', '2016-07-05', 1, '1467668781'),
('208.80.192.33', '2016-07-05', 1, '1467674590'),
('208.80.194.27', '2016-07-05', 1, '1467676832'),
('161.69.163.20', '2016-07-05', 6, '1467680743'),
('69.171.230.108', '2016-07-05', 1, '1467682995'),
('66.249.65.90', '2016-07-05', 1, '1467686250'),
('69.171.230.109', '2016-07-05', 1, '1467691654'),
('158.69.229.134', '2016-07-05', 3, '1467719736'),
('180.254.204.95', '2016-07-05', 1, '1467721252'),
('167.114.103.181', '2016-07-05', 4, '1467726947'),
('69.171.230.117', '2016-07-05', 1, '1467728589'),
('69.171.230.97', '2016-07-05', 1, '1467728593'),
('69.171.230.107', '2016-07-05', 1, '1467728593'),
('69.171.230.121', '2016-07-05', 1, '1467728595'),
('158.69.229.134', '2016-07-06', 3, '1467814598'),
('69.61.12.70', '2016-07-06', 4, '1467811253'),
('208.80.194.124', '2016-07-06', 1, '1467761110'),
('208.80.192.33', '2016-07-06', 1, '1467763439');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('120.164.42.249', '2016-07-06', 2, '1467768641'),
('107.207.156.29', '2016-07-06', 2, '1467788764'),
('129.10.232.5', '2016-07-06', 7, '1467784978'),
('129.10.232.9', '2016-07-06', 1, '1467771218'),
('180.251.152.149', '2016-07-06', 18, '1467776449'),
('161.69.163.20', '2016-07-06', 6, '1467777782'),
('67.198.140.203', '2016-07-06', 1, '1467781177'),
('66.249.65.90', '2016-07-06', 2, '1467795526'),
('114.125.173.62', '2016-07-06', 4, '1467800601'),
('69.171.230.114', '2016-07-06', 1, '1467805815'),
('36.68.10.197', '2016-07-06', 1, '1467809831'),
('101.255.45.46', '2016-07-06', 4, '1467818074'),
('54.198.171.152', '2016-07-07', 1, '1467831045'),
('66.249.65.93', '2016-07-07', 2, '1467895168'),
('69.61.12.70', '2016-07-07', 3, '1467875940'),
('46.229.167.149', '2016-07-07', 3, '1467835927'),
('208.80.194.123', '2016-07-07', 1, '1467846559'),
('180.251.152.149', '2016-07-07', 2, '1467847750'),
('208.80.194.27', '2016-07-07', 1, '1467848353'),
('107.207.156.29', '2016-07-07', 1, '1467853889'),
('158.69.229.134', '2016-07-07', 2, '1467895955'),
('36.83.140.225', '2016-07-07', 12, '1467868242'),
('66.249.84.237', '2016-07-07', 1, '1467861855'),
('66.102.6.177', '2016-07-07', 1, '1467867375'),
('125.167.114.46', '2016-07-07', 1, '1467869320'),
('66.249.65.96', '2016-07-07', 1, '1467869844'),
('66.249.65.90', '2016-07-07', 4, '1467895543'),
('66.249.84.243', '2016-07-07', 1, '1467893730'),
('45.33.40.107', '2016-07-07', 1, '1467899250'),
('114.125.176.3', '2016-07-07', 2, '1467908730'),
('45.33.15.94', '2016-07-08', 2, '1467918040'),
('77.247.181.163', '2016-07-08', 1, '1467919404'),
('114.125.168.238', '2016-07-08', 8, '1467925015'),
('158.69.25.178', '2016-07-08', 3, '1467924631'),
('66.249.65.93', '2016-07-08', 1, '1467941866'),
('91.121.83.118', '2016-07-08', 1, '1467955149'),
('198.27.69.229', '2016-07-08', 2, '1467955183'),
('66.249.65.90', '2016-07-08', 3, '1467985287'),
('213.239.205.118', '2016-07-08', 1, '1467975077'),
('114.125.186.63', '2016-07-08', 11, '1467978154'),
('80.87.193.80', '2016-07-08', 1, '1467982322'),
('66.249.84.243', '2016-07-08', 1, '1467983533'),
('114.125.174.64', '2016-07-08', 3, '1467989959'),
('66.249.65.93', '2016-07-09', 2, '1468016627'),
('66.249.65.51', '2016-07-09', 5, '1468052735'),
('66.249.65.52', '2016-07-09', 1, '1468024994'),
('163.172.137.135', '2016-07-09', 2, '1468038347'),
('114.125.173.74', '2016-07-09', 13, '1468069308'),
('114.125.190.79', '2016-07-09', 20, '1468049906'),
('114.125.172.30', '2016-07-09', 5, '1468048690'),
('114.125.184.64', '2016-07-09', 18, '1468051539'),
('162.243.233.58', '2016-07-09', 1, '1468053230'),
('66.249.65.53', '2016-07-09', 1, '1468061060'),
('36.83.140.225', '2016-07-09', 1, '1468061273'),
('66.249.84.240', '2016-07-09', 1, '1468061359'),
('36.75.242.1', '2016-07-09', 7, '1468066013'),
('66.102.6.180', '2016-07-09', 1, '1468066668'),
('114.125.176.148', '2016-07-09', 2, '1468067014'),
('114.125.177.224', '2016-07-09', 1, '1468075617'),
('114.125.170.79', '2016-07-09', 15, '1468078027'),
('114.125.173.230', '2016-07-10', 10, '1468113827'),
('8.37.232.111', '2016-07-10', 3, '1468108444'),
('120.169.254.122', '2016-07-10', 29, '1468111777'),
('168.235.206.148', '2016-07-10', 1, '1468108367'),
('120.164.43.63', '2016-07-10', 1, '1468108386'),
('120.161.1.130', '2016-07-10', 8, '1468109280'),
('8.37.233.238', '2016-07-10', 1, '1468108741'),
('168.235.206.61', '2016-07-10', 2, '1468111609'),
('114.125.170.2', '2016-07-10', 25, '1468114167'),
('66.249.79.210', '2016-07-10', 2, '1468116888'),
('66.249.79.231', '2016-07-10', 2, '1468128335'),
('194.153.113.35', '2016-07-10', 1, '1468126227'),
('66.249.79.224', '2016-07-10', 2, '1468155906'),
('199.193.119.77', '2016-07-10', 1, '1468135244'),
('66.102.8.161', '2016-07-10', 1, '1468135250'),
('36.75.242.1', '2016-07-10', 6, '1468138711'),
('114.125.185.94', '2016-07-10', 28, '1468144422'),
('114.125.177.8', '2016-07-10', 4, '1468144314'),
('69.171.230.113', '2016-07-10', 1, '1468145174'),
('64.74.215.113', '2016-07-10', 1, '1468152897'),
('114.125.179.190', '2016-07-10', 4, '1468153607'),
('114.125.189.230', '2016-07-10', 17, '1468159187'),
('66.249.79.224', '2016-07-11', 7, '1468242373'),
('104.131.113.190', '2016-07-11', 1, '1468180404'),
('114.125.178.141', '2016-07-11', 4, '1468181079'),
('167.114.157.46', '2016-07-11', 3, '1468184804'),
('141.8.143.133', '2016-07-11', 1, '1468188298'),
('36.68.52.30', '2016-07-11', 29, '1468194828'),
('36.66.250.52', '2016-07-11', 67, '1468227009'),
('52.71.155.178', '2016-07-11', 10, '1468197115'),
('66.249.79.210', '2016-07-11', 7, '1468242278'),
('114.125.178.73', '2016-07-11', 1, '1468199931'),
('36.75.244.34', '2016-07-11', 4, '1468199971'),
('114.125.188.222', '2016-07-11', 2, '1468200540'),
('114.125.174.98', '2016-07-11', 106, '1468239286'),
('157.55.39.17', '2016-07-11', 1, '1468204248'),
('66.102.7.193', '2016-07-11', 1, '1468212535'),
('125.167.114.46', '2016-07-11', 12, '1468213671'),
('114.125.169.79', '2016-07-11', 1, '1468214600'),
('66.102.7.200', '2016-07-11', 1, '1468214797'),
('66.102.6.183', '2016-07-11', 1, '1468215445'),
('114.125.188.34', '2016-07-11', 1, '1468215561'),
('66.102.6.76', '2016-07-11', 1, '1468219754'),
('114.125.190.152', '2016-07-11', 15, '1468220933'),
('69.171.230.105', '2016-07-11', 1, '1468222429'),
('69.171.230.102', '2016-07-11', 1, '1468222648'),
('114.125.184.8', '2016-07-11', 34, '1468230408'),
('115.178.253.154', '2016-07-11', 21, '1468228401'),
('91.200.12.70', '2016-07-11', 4, '1468229686'),
('114.125.170.139', '2016-07-11', 33, '1468239578'),
('114.125.168.9', '2016-07-11', 21, '1468242045'),
('66.249.79.231', '2016-07-11', 1, '1468242362'),
('207.182.140.210', '2016-07-11', 1, '1468253151'),
('114.125.174.98', '2016-07-12', 16, '1468276227'),
('36.66.250.52', '2016-07-12', 79, '1468286170'),
('66.249.65.51', '2016-07-12', 2, '1468285869'),
('114.125.189.145', '2016-07-12', 8, '1468287907'),
('180.254.194.90', '2016-07-12', 3, '1468291271'),
('66.249.85.219', '2016-07-12', 1, '1468293132'),
('66.249.65.52', '2016-07-12', 4, '1468339517'),
('114.125.168.9', '2016-07-12', 18, '1468299960'),
('114.125.169.77', '2016-07-12', 4, '1468302465'),
('114.125.188.134', '2016-07-12', 9, '1468306675'),
('100.43.85.3', '2016-07-12', 1, '1468313812'),
('120.26.107.181', '2016-07-12', 1, '1468315096'),
('121.40.141.31', '2016-07-12', 1, '1468315180'),
('121.40.250.9', '2016-07-12', 1, '1468315241'),
('120.26.72.221', '2016-07-12', 1, '1468315279'),
('121.40.64.118', '2016-07-12', 1, '1468315303'),
('69.171.230.103', '2016-07-12', 1, '1468317947'),
('69.171.230.109', '2016-07-12', 1, '1468317961'),
('66.249.65.53', '2016-07-12', 2, '1468338720'),
('180.254.194.3', '2016-07-12', 3, '1468339854'),
('180.251.157.196', '2016-07-12', 1, '1468339839'),
('69.171.230.108', '2016-07-13', 1, '1468366380'),
('69.171.230.102', '2016-07-13', 1, '1468366392'),
('69.171.230.113', '2016-07-13', 1, '1468366401'),
('125.167.114.46', '2016-07-13', 1, '1468367854'),
('114.125.185.241', '2016-07-13', 1, '1468368861'),
('36.66.250.52', '2016-07-13', 7, '1468372966'),
('36.84.224.14', '2016-07-13', 46, '1468393226'),
('66.249.84.234', '2016-07-13', 1, '1468382555'),
('162.243.233.58', '2016-07-13', 1, '1468386677'),
('114.125.179.46', '2016-07-13', 35, '1468389781'),
('114.125.177.130', '2016-07-13', 6, '1468392374'),
('66.249.65.51', '2016-07-13', 2, '1468417038'),
('69.171.230.107', '2016-07-13', 1, '1468399557'),
('180.76.15.147', '2016-07-13', 1, '1468404885'),
('202.46.55.175', '2016-07-13', 1, '1468406885'),
('104.193.88.243', '2016-07-13', 1, '1468408885'),
('114.125.179.248', '2016-07-13', 9, '1468412450'),
('114.125.172.121', '2016-07-13', 13, '1468422319'),
('114.125.176.10', '2016-07-13', 4, '1468424227'),
('114.125.170.69', '2016-07-13', 3, '1468421879'),
('114.125.176.96', '2016-07-13', 6, '1468424340'),
('136.243.92.152', '2016-07-13', 1, '1468428279'),
('141.8.143.133', '2016-07-13', 1, '1468428423'),
('36.75.243.166', '2016-07-13', 2, '1468429120'),
('36.75.243.166', '2016-07-14', 12, '1468430260'),
('66.249.65.52', '2016-07-14', 5, '1468473050'),
('114.125.172.121', '2016-07-14', 3, '1468459097'),
('69.171.230.98', '2016-07-14', 1, '1468457027'),
('69.171.230.106', '2016-07-14', 1, '1468457027'),
('69.171.230.107', '2016-07-14', 1, '1468457029'),
('69.171.230.122', '2016-07-14', 1, '1468457031'),
('180.249.227.140', '2016-07-14', 11, '1468460372'),
('114.125.175.32', '2016-07-14', 4, '1468460755'),
('114.125.175.209', '2016-07-14', 29, '1468460842'),
('36.83.71.48', '2016-07-14', 62, '1468466610'),
('61.131.59.138', '2016-07-14', 2, '1468466144'),
('114.125.187.53', '2016-07-14', 19, '1468470476'),
('66.249.65.53', '2016-07-14', 1, '1468476639'),
('114.125.189.149', '2016-07-14', 1, '1468479715'),
('114.125.177.238', '2016-07-14', 1, '1468483894'),
('180.251.163.240', '2016-07-14', 37, '1468491803'),
('104.131.127.144', '2016-07-14', 12, '1468490149'),
('180.251.171.121', '2016-07-14', 9, '1468502176'),
('180.254.182.174', '2016-07-14', 2, '1468504820'),
('45.33.15.94', '2016-07-15', 2, '1468521269'),
('54.198.194.71', '2016-07-15', 1, '1468522753'),
('45.55.250.43', '2016-07-15', 1, '1468524818'),
('114.125.168.229', '2016-07-15', 17, '1468534249'),
('114.125.177.2', '2016-07-15', 35, '1468536852'),
('69.171.230.114', '2016-07-15', 1, '1468537039'),
('36.75.249.167', '2016-07-15', 1, '1468537234'),
('114.125.172.250', '2016-07-15', 5, '1468540816'),
('66.249.65.51', '2016-07-15', 3, '1468584888'),
('110.136.246.194', '2016-07-15', 5, '1468555222'),
('66.249.65.53', '2016-07-15', 2, '1468557657'),
('66.249.65.52', '2016-07-15', 1, '1468556196'),
('45.55.241.187', '2016-07-15', 1, '1468557409'),
('36.83.126.13', '2016-07-15', 1, '1468558201'),
('114.125.168.247', '2016-07-15', 3, '1468559388'),
('222.124.103.65', '2016-07-15', 1, '1468560151'),
('114.125.170.126', '2016-07-15', 5, '1468562575'),
('114.125.168.195', '2016-07-15', 1, '1468566670'),
('114.125.200.56', '2016-07-15', 2, '1468567473'),
('114.125.184.62', '2016-07-15', 1, '1468567454'),
('114.125.179.248', '2016-07-15', 1, '1468567627'),
('114.125.178.85', '2016-07-15', 4, '1468567912'),
('114.125.178.138', '2016-07-15', 5, '1468568154'),
('114.125.190.13', '2016-07-15', 5, '1468568762'),
('114.125.204.20', '2016-07-15', 2, '1468569033'),
('114.125.168.255', '2016-07-15', 14, '1468572597'),
('114.125.170.92', '2016-07-15', 1, '1468582097'),
('114.125.209.157', '2016-07-15', 14, '1468583357'),
('157.55.39.76', '2016-07-15', 1, '1468582836'),
('180.251.151.32', '2016-07-15', 1, '1468590242'),
('180.251.156.145', '2016-07-15', 4, '1468590996'),
('125.167.117.52', '2016-07-15', 7, '1468593883'),
('114.125.185.145', '2016-07-15', 10, '1468594300'),
('114.125.190.85', '2016-07-15', 48, '1468599878'),
('114.125.179.0', '2016-07-15', 1, '1468592522'),
('66.249.65.52', '2016-07-16', 2, '1468686668'),
('66.249.65.53', '2016-07-16', 2, '1468614798'),
('114.125.171.159', '2016-07-16', 73, '1468619436'),
('101.226.33.240', '2016-07-16', 1, '1468623411'),
('114.125.176.33', '2016-07-16', 1, '1468629880'),
('45.55.133.236', '2016-07-16', 1, '1468636776'),
('114.125.184.98', '2016-07-16', 2, '1468637955'),
('69.171.230.119', '2016-07-16', 1, '1468641083'),
('69.171.230.101', '2016-07-16', 1, '1468641089'),
('110.136.246.194', '2016-07-16', 39, '1468674559'),
('168.235.206.61', '2016-07-16', 1, '1468647968'),
('120.169.254.186', '2016-07-16', 14, '1468649781'),
('180.254.185.121', '2016-07-16', 12, '1468650160'),
('114.79.28.65', '2016-07-16', 5, '1468649297'),
('115.178.237.166', '2016-07-16', 1, '1468649335'),
('36.68.180.221', '2016-07-16', 17, '1468662988'),
('66.249.84.246', '2016-07-16', 1, '1468670101'),
('66.102.6.75', '2016-07-16', 1, '1468670667'),
('66.249.65.51', '2016-07-16', 1, '1468686694'),
('114.125.191.155', '2016-07-16', 1, '1468687661'),
('66.249.65.51', '2016-07-17', 1, '1468694658'),
('180.76.15.5', '2016-07-17', 1, '1468703684'),
('114.125.178.161', '2016-07-17', 11, '1468705339'),
('66.220.149.32', '2016-07-17', 1, '1468711822'),
('69.171.230.98', '2016-07-17', 2, '1468711875'),
('69.171.230.114', '2016-07-17', 2, '1468711839'),
('69.171.230.120', '2016-07-17', 1, '1468711838'),
('69.171.230.108', '2016-07-17', 1, '1468711905'),
('110.136.246.194', '2016-07-17', 19, '1468720844'),
('162.243.233.58', '2016-07-17', 1, '1468718401'),
('36.68.75.215', '2016-07-17', 12, '1468724935'),
('66.249.65.53', '2016-07-17', 1, '1468721165'),
('202.67.37.46', '2016-07-17', 2, '1468722989'),
('36.84.224.10', '2016-07-17', 3, '1468723068'),
('64.246.165.10', '2016-07-17', 1, '1468725092'),
('::1', '2016-07-17', 96, '1468761387'),
('::1', '2016-07-18', 5, '1468803538'),
('::1', '2016-07-20', 106, '1469026786'),
('36.84.229.21', '2016-07-20', 16, '1469032161'),
('180.76.15.139', '2016-07-21', 1, '1469034080'),
('157.55.39.137', '2016-07-21', 1, '1469035945'),
('202.46.52.100', '2016-07-21', 1, '1469036080'),
('114.125.189.41', '2016-07-21', 57, '1469038796'),
('104.193.88.243', '2016-07-21', 1, '1469038079'),
('8.37.234.45', '2016-07-21', 2, '1469096578'),
('120.169.255.129', '2016-07-21', 15, '1469097195'),
('114.125.169.18', '2016-07-21', 2, '1469052673'),
('115.178.237.185', '2016-07-21', 29, '1469053343'),
('66.249.65.53', '2016-07-21', 2, '1469057469'),
('66.249.65.51', '2016-07-21', 1, '1469057572'),
('114.125.179.99', '2016-07-21', 1, '1469058787'),
('66.249.66.165', '2016-07-21', 1, '1469064404'),
('114.125.172.70', '2016-07-21', 1, '1469064520'),
('114.125.178.162', '2016-07-21', 2, '1469078396'),
('180.251.168.150', '2016-07-21', 68, '1469079578'),
('180.254.179.43', '2016-07-21', 63, '1469091767'),
('114.125.187.92', '2016-07-21', 9, '1469086001'),
('64.74.215.54', '2016-07-21', 12, '1469085953'),
('36.66.250.52', '2016-07-21', 20, '1469094112'),
('66.249.66.26', '2016-07-21', 1, '1469093275'),
('115.178.250.198', '2016-07-21', 20, '1469094451'),
('114.125.175.7', '2016-07-21', 10, '1469094341'),
('125.162.241.135', '2016-07-21', 13, '1469101157'),
('180.249.16.25', '2016-07-21', 16, '1469101541'),
('180.254.193.217', '2016-07-21', 10, '1469101106'),
('36.83.91.208', '2016-07-21', 12, '1469106735'),
('180.76.15.145', '2016-07-22', 1, '1469128803'),
('202.46.58.191', '2016-07-22', 1, '1469130811'),
('104.193.88.244', '2016-07-22', 1, '1469132820'),
('66.249.65.165', '2016-07-22', 3, '1469179273'),
('114.125.174.112', '2016-07-22', 1, '1469145673'),
('114.125.178.117', '2016-07-22', 1, '1469146802'),
('36.66.250.52', '2016-07-22', 17, '1469171917'),
('36.84.224.118', '2016-07-22', 1, '1469149232'),
('114.125.179.246', '2016-07-22', 1, '1469151690'),
('69.171.230.98', '2016-07-22', 1, '1469154362'),
('69.171.230.98', '2016-07-22', 1, '1469154362'),
('36.75.148.76', '2016-07-22', 48, '1469199407'),
('114.125.178.185', '2016-07-22', 26, '1469162099'),
('95.211.162.11', '2016-07-22', 1, '1469165829'),
('115.178.238.95', '2016-07-22', 13, '1469166393'),
('114.125.168.163', '2016-07-22', 76, '1469183443'),
('66.249.66.172', '2016-07-22', 1, '1469185507'),
('69.171.230.105', '2016-07-22', 1, '1469188303'),
('69.171.230.108', '2016-07-22', 1, '1469188334'),
('69.171.230.113', '2016-07-22', 1, '1469188338'),
('180.251.164.24', '2016-07-22', 12, '1469190929'),
('114.125.169.176', '2016-07-22', 12, '1469201175'),
('64.74.215.113', '2016-07-22', 1, '1469198080'),
('180.254.203.55', '2016-07-22', 1, '1469199897'),
('139.162.161.115', '2016-07-23', 1, '1469221379'),
('66.249.65.165', '2016-07-23', 3, '1469248911'),
('114.125.215.169', '2016-07-23', 20, '1469236811'),
('114.125.213.199', '2016-07-23', 13, '1469238837'),
('114.125.215.77', '2016-07-23', 1, '1469239479'),
('180.251.171.141', '2016-07-23', 1, '1469239636'),
('66.249.65.169', '2016-07-23', 2, '1469292538'),
('8.37.234.45', '2016-07-23', 2, '1469252223'),
('120.164.47.180', '2016-07-23', 8, '1469252454'),
('36.75.148.76', '2016-07-23', 2, '1469268637'),
('114.125.174.192', '2016-07-23', 1, '1469252903'),
('114.125.188.85', '2016-07-23', 21, '1469265018'),
('114.125.200.4', '2016-07-23', 21, '1469268365'),
('54.90.41.238', '2016-07-23', 3, '1469268275'),
('103.210.120.1', '2016-07-23', 6, '1469270705'),
('180.251.164.24', '2016-07-23', 11, '1469272096'),
('202.67.37.47', '2016-07-23', 21, '1469274207'),
('69.171.230.102', '2016-07-23', 1, '1469276088'),
('114.125.172.237', '2016-07-23', 4, '1469280111'),
('45.55.229.95', '2016-07-24', 16, '1469298714'),
('114.125.214.66', '2016-07-24', 13, '1469313396'),
('114.125.200.79', '2016-07-24', 39, '1469315006'),
('128.72.234.74', '2016-07-24', 1, '1469316865'),
('46.188.61.8', '2016-07-24', 1, '1469316866'),
('95.28.36.208', '2016-07-24', 1, '1469316870'),
('114.125.173.35', '2016-07-24', 1, '1469317688'),
('176.77.71.6', '2016-07-24', 1, '1469323314'),
('128.68.12.35', '2016-07-24', 1, '1469323316'),
('114.125.200.9', '2016-07-24', 3, '1469323841'),
('66.249.65.172', '2016-07-24', 1, '1469323918'),
('66.249.65.169', '2016-07-24', 3, '1469333543'),
('36.75.148.76', '2016-07-24', 38, '1469343205'),
('36.69.6.57', '2016-07-24', 7, '1469335641'),
('180.251.164.24', '2016-07-24', 1, '1469336525'),
('52.71.155.178', '2016-07-24', 4, '1469338292'),
('66.249.73.232', '2016-07-24', 1, '1469340650'),
('95.24.150.202', '2016-07-24', 1, '1469345231'),
('66.249.65.165', '2016-07-24', 1, '1469351113'),
('8.37.234.12', '2016-07-24', 2, '1469352921'),
('120.164.45.18', '2016-07-24', 1, '1469353590'),
('114.125.189.68', '2016-07-24', 1, '1469364609'),
('173.234.153.122', '2016-07-24', 1, '1469364612'),
('114.125.172.201', '2016-07-24', 16, '1469371589'),
('69.171.230.112', '2016-07-24', 1, '1469370601'),
('206.253.226.22', '2016-07-24', 1, '1469370787'),
('70.42.131.170', '2016-07-24', 1, '1469371935'),
('168.235.206.204', '2016-07-25', 2, '1469402198'),
('120.169.254.182', '2016-07-25', 1, '1469402366'),
('180.254.133.44', '2016-07-25', 19, '1469408555'),
('52.71.155.178', '2016-07-25', 7, '1469406755'),
('114.125.191.215', '2016-07-25', 12, '1469407806'),
('36.66.250.52', '2016-07-25', 21, '1469430304'),
('114.125.185.214', '2016-07-25', 13, '1469422117'),
('70.42.131.170', '2016-07-25', 1, '1469410246'),
('114.125.179.130', '2016-07-25', 14, '1469420399'),
('114.125.186.91', '2016-07-25', 19, '1469420348'),
('114.125.177.76', '2016-07-25', 1, '1469421156'),
('66.249.65.165', '2016-07-25', 1, '1469423491'),
('66.249.66.165', '2016-07-25', 1, '1469433578'),
('36.84.224.66', '2016-07-25', 45, '1469436395'),
('69.171.230.120', '2016-07-25', 1, '1469435225'),
('69.171.230.113', '2016-07-25', 2, '1469455029'),
('69.171.230.112', '2016-07-25', 1, '1469435228'),
('36.75.148.76', '2016-07-25', 62, '1469450424'),
('114.125.186.161', '2016-07-25', 1, '1469444259'),
('114.125.178.101', '2016-07-25', 2, '1469449078'),
('114.125.178.251', '2016-07-25', 1, '1469454723'),
('69.171.230.116', '2016-07-25', 1, '1469455020'),
('114.125.178.237', '2016-07-25', 3, '1469456079'),
('69.171.230.109', '2016-07-25', 1, '1469457284'),
('163.172.34.17', '2016-07-26', 4, '1469525473'),
('168.235.206.204', '2016-07-26', 1, '1469484749'),
('120.164.44.169', '2016-07-26', 13, '1469485707'),
('114.125.190.5', '2016-07-26', 1, '1469486122'),
('36.75.148.76', '2016-07-26', 29, '1469492052'),
('66.249.75.111', '2016-07-26', 1, '1469491292'),
('114.125.190.91', '2016-07-26', 1, '1469493501'),
('66.249.75.97', '2016-07-26', 1, '1469497246'),
('69.171.230.102', '2016-07-26', 1, '1469497434'),
('69.171.230.119', '2016-07-26', 2, '1469514327'),
('36.83.71.124', '2016-07-26', 32, '1469500145'),
('69.171.230.116', '2016-07-26', 2, '1469514329'),
('69.171.230.117', '2016-07-26', 1, '1469497646'),
('36.84.1.114', '2016-07-26', 13, '1469509541'),
('66.249.75.241', '2016-07-26', 1, '1469503750'),
('69.171.230.118', '2016-07-26', 1, '1469514328'),
('69.171.230.112', '2016-07-26', 2, '1469518114'),
('69.171.230.114', '2016-07-26', 1, '1469514340'),
('69.171.230.106', '2016-07-26', 1, '1469514340'),
('69.171.230.103', '2016-07-26', 1, '1469514354'),
('180.249.7.246', '2016-07-26', 32, '1469522064'),
('114.125.189.218', '2016-07-26', 36, '1469519548'),
('69.171.230.101', '2016-07-26', 1, '1469518118'),
('69.171.230.108', '2016-07-26', 1, '1469518125'),
('69.171.230.96', '2016-07-26', 1, '1469518127'),
('69.171.230.99', '2016-07-26', 1, '1469518158'),
('66.220.149.32', '2016-07-26', 1, '1469518167'),
('180.76.15.161', '2016-07-26', 1, '1469522685'),
('151.80.97.149', '2016-07-26', 2, '1469522760'),
('66.249.69.138', '2016-07-26', 2, '1469523298'),
('114.125.191.226', '2016-07-26', 1, '1469524103'),
('66.249.75.104', '2016-07-26', 1, '1469524523'),
('202.46.57.23', '2016-07-26', 1, '1469524694'),
('104.193.88.243', '2016-07-26', 1, '1469526703'),
('176.9.10.227', '2016-07-26', 1, '1469531459'),
('66.249.75.233', '2016-07-27', 1, '1469561612'),
('114.125.186.46', '2016-07-27', 1, '1469568545'),
('168.235.206.204', '2016-07-27', 1, '1469574172'),
('120.169.254.194', '2016-07-27', 3, '1469574672'),
('114.125.212.162', '2016-07-27', 1, '1469581609'),
('114.125.212.0', '2016-07-27', 1, '1469582436'),
('180.249.9.135', '2016-07-27', 9, '1469588353'),
('125.167.117.168', '2016-07-27', 5, '1469588292'),
('36.75.149.17', '2016-07-27', 6, '1469588334'),
('69.171.230.103', '2016-07-27', 1, '1469596844'),
('36.75.243.209', '2016-07-27', 45, '1469609344'),
('66.249.79.172', '2016-07-27', 1, '1469607020'),
('66.249.79.178', '2016-07-27', 1, '1469627445'),
('168.235.206.113', '2016-07-27', 1, '1469629509'),
('114.125.176.153', '2016-07-28', 13, '1469645821'),
('36.75.247.81', '2016-07-28', 19, '1469668370'),
('114.125.175.52', '2016-07-28', 14, '1469673339'),
('54.244.48.9', '2016-07-28', 1, '1469666587'),
('114.125.168.26', '2016-07-28', 16, '1469671275'),
('168.235.206.113', '2016-07-28', 1, '1469675362'),
('120.164.41.175', '2016-07-28', 4, '1469675717'),
('114.125.191.102', '2016-07-28', 1, '1469676328'),
('114.125.174.141', '2016-07-28', 39, '1469703660'),
('180.254.198.175', '2016-07-28', 2, '1469682558'),
('114.125.170.22', '2016-07-28', 2, '1469692815'),
('114.125.187.42', '2016-07-28', 1, '1469693573'),
('114.125.177.48', '2016-07-28', 13, '1469705793'),
('62.210.148.246', '2016-07-28', 1, '1469722474'),
('36.83.92.214', '2016-07-29', 119, '1469781273'),
('114.125.176.95', '2016-07-29', 1, '1469760741'),
('114.125.185.13', '2016-07-29', 11, '1469780094'),
('180.254.198.178', '2016-07-29', 30, '1469789308'),
('36.66.250.52', '2016-07-29', 18, '1469780878'),
('69.171.230.101', '2016-07-29', 1, '1469780851'),
('54.157.223.193', '2016-07-29', 1, '1469780932'),
('173.252.90.89', '2016-07-29', 1, '1469781210'),
('114.125.190.183', '2016-07-29', 1, '1469783574'),
('100.43.85.22', '2016-07-29', 1, '1469784097'),
('36.83.77.208', '2016-07-29', 49, '1469806346'),
('114.125.168.112', '2016-07-29', 62, '1469789818'),
('114.125.168.90', '2016-07-29', 3, '1469794807'),
('114.125.75.39', '2016-07-29', 1, '1469794883'),
('112.215.124.199', '2016-07-29', 1, '1469794983'),
('114.125.60.104', '2016-07-29', 2, '1469795073'),
('115.178.197.245', '2016-07-29', 1, '1469795210'),
('114.125.83.147', '2016-07-29', 1, '1469795233'),
('66.249.65.169', '2016-07-29', 1, '1469797509'),
('144.76.29.162', '2016-07-29', 1, '1469797542'),
('8.37.234.113', '2016-07-29', 1, '1469801286'),
('112.215.63.35', '2016-07-29', 1, '1469801289'),
('202.67.37.47', '2016-07-29', 16, '1469809127'),
('114.120.234.82', '2016-07-29', 1, '1469806369'),
('46.229.170.193', '2016-07-30', 1, '1469823384'),
('66.249.65.165', '2016-07-30', 4, '1469890035'),
('66.249.65.172', '2016-07-30', 1, '1469828501'),
('66.249.65.169', '2016-07-30', 1, '1469828513'),
('114.125.170.220', '2016-07-30', 9, '1469876172'),
('115.178.252.119', '2016-07-30', 5, '1469844446'),
('114.125.62.89', '2016-07-30', 1, '1469845548'),
('114.4.79.3', '2016-07-30', 1, '1469846221'),
('52.33.65.229', '2016-07-30', 1, '1469846351'),
('114.124.7.92', '2016-07-30', 1, '1469847659'),
('112.215.44.173', '2016-07-30', 1, '1469848713'),
('114.125.190.145', '2016-07-30', 19, '1469858659'),
('114.124.7.167', '2016-07-30', 1, '1469850746'),
('36.83.93.69', '2016-07-30', 26, '1469854260'),
('114.125.168.112', '2016-07-30', 45, '1469857338'),
('114.125.185.4', '2016-07-30', 1, '1469867951'),
('114.125.173.28', '2016-07-30', 1, '1469873762'),
('180.76.15.29', '2016-07-30', 1, '1469873804'),
('202.46.57.198', '2016-07-30', 1, '1469875814'),
('104.193.88.244', '2016-07-30', 1, '1469877823'),
('114.125.170.120', '2016-07-30', 3, '1469885420'),
('66.249.65.172', '2016-07-31', 1, '1469904365'),
('5.255.250.41', '2016-07-31', 1, '1469908344'),
('66.249.65.165', '2016-07-31', 3, '1469967512'),
('168.235.206.113', '2016-07-31', 1, '1469917638'),
('120.169.254.46', '2016-07-31', 3, '1469917803'),
('69.171.230.107', '2016-07-31', 1, '1469919436'),
('114.125.172.89', '2016-07-31', 8, '1469923018'),
('114.125.170.43', '2016-07-31', 17, '1469939609'),
('114.125.173.122', '2016-07-31', 18, '1469945950'),
('112.215.45.110', '2016-07-31', 7, '1469947492'),
('114.125.178.202', '2016-07-31', 1, '1469954767'),
('46.229.167.149', '2016-07-31', 3, '1469956201'),
('69.171.230.98', '2016-07-31', 1, '1469957294'),
('168.235.197.219', '2016-07-31', 1, '1469957295'),
('114.125.45.171', '2016-07-31', 6, '1469970683'),
('202.67.37.34', '2016-07-31', 1, '1469977508'),
('180.249.22.171', '2016-07-31', 25, '1469978171'),
('180.254.174.236', '2016-07-31', 2, '1469978194'),
('51.254.130.61', '2016-07-31', 1, '1469978393'),
('62.210.97.48', '2016-07-31', 1, '1469979551'),
('36.66.250.52', '2016-08-01', 4, '1470013864'),
('114.125.177.194', '2016-08-01', 4, '1470014879'),
('36.85.197.140', '2016-08-01', 1, '1470014340'),
('36.75.221.68', '2016-08-01', 6, '1470019983'),
('128.199.75.236', '2016-08-01', 1, '1470024125'),
('114.125.170.220', '2016-08-01', 8, '1470034404'),
('66.249.84.240', '2016-08-01', 1, '1470034741'),
('114.125.168.175', '2016-08-01', 1, '1470046523'),
('176.9.10.227', '2016-08-01', 1, '1470046934'),
('66.249.65.165', '2016-08-01', 1, '1470049516'),
('45.55.133.226', '2016-08-01', 1, '1470054138'),
('202.67.37.35', '2016-08-01', 1, '1470062024'),
('69.171.230.118', '2016-08-01', 1, '1470068919'),
('69.171.230.97', '2016-08-01', 1, '1470068922'),
('69.171.230.110', '2016-08-01', 1, '1470068926'),
('69.171.230.106', '2016-08-01', 1, '1470068944'),
('69.171.230.101', '2016-08-01', 1, '1470068963'),
('66.249.65.169', '2016-08-02', 2, '1470124217'),
('45.55.229.176', '2016-08-02', 10, '1470087784'),
('157.55.39.126', '2016-08-02', 1, '1470089881'),
('114.125.170.220', '2016-08-02', 14, '1470095806'),
('168.235.206.113', '2016-08-02', 1, '1470095663'),
('120.169.255.48', '2016-08-02', 3, '1470096021'),
('103.19.58.26', '2016-08-02', 17, '1470102988'),
('36.83.96.45', '2016-08-02', 6, '1470102993'),
('114.125.173.121', '2016-08-02', 29, '1470110576'),
('66.249.65.165', '2016-08-02', 1, '1470110032'),
('114.125.171.157', '2016-08-02', 21, '1470128958'),
('36.66.250.52', '2016-08-02', 16, '1470117446'),
('180.254.189.52', '2016-08-02', 1, '1470117012'),
('64.246.165.150', '2016-08-02', 1, '1470119615'),
('36.84.224.49', '2016-08-02', 4, '1470121183'),
('180.251.165.8', '2016-08-02', 16, '1470122573'),
('144.76.61.6', '2016-08-02', 1, '1470125316'),
('114.125.171.246', '2016-08-02', 19, '1470128439'),
('112.215.45.117', '2016-08-02', 1, '1470129369'),
('125.167.113.94', '2016-08-02', 1, '1470140936'),
('66.249.65.172', '2016-08-02', 1, '1470142103'),
('114.125.170.175', '2016-08-02', 1, '1470151144'),
('162.243.233.58', '2016-08-02', 1, '1470153858'),
('36.75.240.15', '2016-08-02', 1, '1470155219'),
('114.125.172.126', '2016-08-03', 1, '1470192508'),
('180.254.110.120', '2016-08-03', 1, '1470192592'),
('36.66.250.52', '2016-08-03', 76, '1470209870'),
('180.251.169.32', '2016-08-03', 138, '1470214446'),
('66.249.65.172', '2016-08-03', 1, '1470198089'),
('168.235.197.36', '2016-08-03', 4, '1470200720'),
('66.249.65.165', '2016-08-03', 1, '1470201220'),
('114.125.184.156', '2016-08-03', 15, '1470206508'),
('178.162.216.36', '2016-08-03', 2, '1470204695'),
('36.84.229.51', '2016-08-03', 1, '1470205233'),
('36.84.229.54', '2016-08-03', 6, '1470215133'),
('178.162.216.30', '2016-08-03', 1, '1470208336'),
('66.249.65.169', '2016-08-03', 2, '1470228846'),
('114.125.179.36', '2016-08-03', 11, '1470217705'),
('52.71.155.178', '2016-08-03', 2, '1470218745'),
('36.83.139.178', '2016-08-03', 8, '1470227434'),
('114.125.170.121', '2016-08-03', 18, '1470229939'),
('114.125.191.213', '2016-08-03', 35, '1470232564'),
('36.75.240.15', '2016-08-03', 47, '1470236451'),
('114.125.189.56', '2016-08-03', 6, '1470235931'),
('114.125.191.213', '2016-08-04', 51, '1470292404'),
('64.74.215.113', '2016-08-04', 1, '1470263254'),
('114.125.178.69', '2016-08-04', 6, '1470264056'),
('36.66.250.52', '2016-08-04', 1, '1470271666'),
('36.83.115.63', '2016-08-04', 4, '1470274099'),
('180.251.161.240', '2016-08-04', 73, '1470294803'),
('114.125.190.85', '2016-08-04', 6, '1470278125'),
('178.162.216.35', '2016-08-04', 1, '1470278150'),
('69.171.230.101', '2016-08-04', 1, '1470281290'),
('114.125.188.43', '2016-08-04', 14, '1470292370'),
('67.198.140.203', '2016-08-04', 2, '1470312738'),
('114.125.175.245', '2016-08-04', 16, '1470317473'),
('114.125.178.205', '2016-08-04', 7, '1470311897'),
('114.125.188.196', '2016-08-04', 1, '1470313287'),
('52.71.155.178', '2016-08-04', 2, '1470320972'),
('114.125.178.125', '2016-08-04', 27, '1470324355'),
('114.125.187.246', '2016-08-04', 1, '1470325006'),
('114.125.60.246', '2016-08-04', 1, '1470327656'),
('36.83.70.223', '2016-08-05', 2, '1470337071'),
('66.249.65.165', '2016-08-05', 3, '1470394323'),
('8.37.235.215', '2016-08-05', 1, '1470350551'),
('120.164.45.121', '2016-08-05', 12, '1470351111'),
('66.249.65.169', '2016-08-05', 1, '1470350866'),
('114.125.177.238', '2016-08-05', 41, '1470352700'),
('36.84.1.49', '2016-08-05', 1, '1470357939'),
('36.85.182.116', '2016-08-05', 32, '1470384244'),
('69.171.230.119', '2016-08-05', 1, '1470370327'),
('114.125.177.18', '2016-08-05', 1, '1470373878'),
('67.198.140.203', '2016-08-05', 1, '1470378865'),
('114.125.173.88', '2016-08-05', 6, '1470386920'),
('114.125.186.60', '2016-08-05', 16, '1470394327'),
('36.83.69.180', '2016-08-05', 12, '1470398226'),
('66.249.65.169', '2016-08-06', 1, '1470417224'),
('66.249.65.181', '2016-08-06', 1, '1470420405'),
('157.55.39.116', '2016-08-06', 1, '1470428417'),
('66.249.65.172', '2016-08-06', 1, '1470434224'),
('36.83.97.40', '2016-08-06', 97, '1470471532'),
('36.75.146.142', '2016-08-06', 80, '1470474590'),
('66.249.65.165', '2016-08-06', 2, '1470475083'),
('114.125.51.176', '2016-08-06', 1, '1470467128'),
('36.75.247.95', '2016-08-06', 20, '1470480998'),
('114.125.189.91', '2016-08-06', 11, '1470476741'),
('69.171.230.109', '2016-08-06', 1, '1470478280'),
('36.83.70.79', '2016-08-06', 44, '1470497189'),
('112.215.153.130', '2016-08-06', 5, '1470487072'),
('66.249.65.169', '2016-08-07', 2, '1470567154'),
('66.249.65.165', '2016-08-07', 1, '1470541254'),
('66.249.65.172', '2016-08-07', 3, '1470567131'),
('36.83.70.79', '2016-08-07', 110, '1470562843'),
('36.75.146.142', '2016-08-07', 53, '1470561507'),
('66.220.149.32', '2016-08-07', 1, '1470577761'),
('194.153.113.35', '2016-08-07', 1, '1470580419'),
('36.83.129.54', '2016-08-07', 1, '1470584045'),
('114.125.186.90', '2016-08-08', 2, '1470621478'),
('180.249.16.136', '2016-08-08', 2, '1470624293'),
('114.125.172.224', '2016-08-08', 1, '1470624001'),
('114.125.179.207', '2016-08-08', 4, '1470624318'),
('125.162.208.96', '2016-08-08', 58, '1470660639'),
('8.37.231.185', '2016-08-08', 1, '1470640198'),
('69.171.230.105', '2016-08-08', 1, '1470640207'),
('114.125.178.137', '2016-08-08', 20, '1470649080'),
('103.3.77.34', '2016-08-08', 6, '1470647274'),
('36.83.115.98', '2016-08-08', 5, '1470647198'),
('66.249.65.169', '2016-08-08', 1, '1470648469'),
('36.83.74.143', '2016-08-08', 6, '1470655729'),
('88.198.22.8', '2016-08-08', 1, '1470658178'),
('144.76.80.151', '2016-08-08', 1, '1470658790'),
('69.171.230.109', '2016-08-08', 1, '1470660555'),
('114.125.185.213', '2016-08-08', 4, '1470665031'),
('66.249.65.165', '2016-08-08', 1, '1470665271'),
('178.140.87.205', '2016-08-08', 1, '1470668274'),
('176.77.30.43', '2016-08-08', 1, '1470672932'),
('114.125.187.179', '2016-08-09', 5, '1470692432'),
('8.37.225.114', '2016-08-09', 5, '1470697084'),
('202.67.37.44', '2016-08-09', 22, '1470697663'),
('114.125.176.231', '2016-08-09', 5, '1470698984'),
('36.66.250.52', '2016-08-09', 70, '1470733050'),
('114.125.172.245', '2016-08-09', 2, '1470702834'),
('114.125.186.84', '2016-08-09', 22, '1470703486'),
('69.171.230.104', '2016-08-09', 1, '1470707340'),
('114.125.170.64', '2016-08-09', 5, '1470709564'),
('66.249.65.172', '2016-08-09', 2, '1470752486'),
('180.249.16.136', '2016-08-09', 15, '1470719281'),
('178.162.216.30', '2016-08-09', 9, '1470718742'),
('36.83.80.229', '2016-08-09', 15, '1470731394'),
('162.243.233.58', '2016-08-09', 1, '1470722473'),
('66.249.88.32', '2016-08-09', 1, '1470738470'),
('144.76.175.75', '2016-08-09', 1, '1470738585'),
('36.83.115.98', '2016-08-09', 1, '1470742039'),
('66.249.65.169', '2016-08-09', 1, '1470742294'),
('114.125.169.251', '2016-08-09', 1, '1470744490'),
('114.125.185.88', '2016-08-09', 9, '1470750931'),
('114.125.185.161', '2016-08-10', 1, '1470762900'),
('66.249.65.165', '2016-08-10', 2, '1470771491'),
('66.249.65.169', '2016-08-10', 2, '1470844889'),
('36.75.148.190', '2016-08-10', 12, '1470802263'),
('91.109.30.113', '2016-08-10', 3, '1470794495'),
('180.249.5.13', '2016-08-10', 56, '1470799874'),
('54.234.95.83', '2016-08-10', 2, '1470796122'),
('114.125.170.51', '2016-08-10', 6, '1470804127'),
('180.251.149.196', '2016-08-10', 2, '1470804448'),
('54.191.244.235', '2016-08-10', 1, '1470804188'),
('36.75.252.122', '2016-08-10', 63, '1470821336'),
('36.66.250.52', '2016-08-10', 21, '1470818084'),
('163.172.137.135', '2016-08-10', 2, '1470819822'),
('66.249.65.172', '2016-08-10', 1, '1470819926'),
('69.171.230.100', '2016-08-10', 2, '1470830760'),
('178.162.216.38', '2016-08-10', 5, '1470826078'),
('69.171.230.97', '2016-08-10', 1, '1470830769'),
('69.171.230.108', '2016-08-10', 1, '1470830824'),
('69.171.230.101', '2016-08-10', 1, '1470830829'),
('69.171.230.103', '2016-08-10', 1, '1470830834'),
('69.171.230.119', '2016-08-10', 1, '1470830834'),
('69.171.230.114', '2016-08-10', 1, '1470830835'),
('69.171.230.107', '2016-08-10', 1, '1470830848'),
('45.55.133.238', '2016-08-10', 1, '1470833601'),
('66.249.65.172', '2016-08-11', 3, '1470926124'),
('104.131.19.146', '2016-08-11', 17, '1470850868'),
('114.125.185.244', '2016-08-11', 8, '1470852205'),
('66.249.65.165', '2016-08-11', 2, '1470873718'),
('114.125.174.95', '2016-08-11', 12, '1470867260'),
('114.125.173.211', '2016-08-11', 3, '1470868657'),
('114.125.189.136', '2016-08-11', 5, '1470868958'),
('114.125.172.243', '2016-08-11', 4, '1470869411'),
('66.249.65.169', '2016-08-11', 1, '1470870178'),
('125.162.211.212', '2016-08-11', 107, '1470903447'),
('46.229.167.149', '2016-08-11', 3, '1470876761'),
('8.37.235.215', '2016-08-11', 1, '1470885185'),
('120.164.41.244', '2016-08-11', 10, '1470886118'),
('180.251.149.196', '2016-08-11', 1, '1470886320'),
('110.136.89.49', '2016-08-11', 2, '1470896816'),
('114.125.173.206', '2016-08-11', 1, '1470896775'),
('36.66.250.52', '2016-08-11', 9, '1470899278'),
('91.109.30.99', '2016-08-11', 5, '1470908679'),
('180.249.15.51', '2016-08-11', 5, '1470912100'),
('69.171.230.122', '2016-08-11', 1, '1470912008'),
('40.77.167.63', '2016-08-11', 1, '1470913382'),
('61.5.105.11', '2016-08-11', 1, '1470913418'),
('125.162.210.95', '2016-08-11', 1, '1470919967'),
('114.125.185.146', '2016-08-12', 3, '1470940566'),
('40.77.167.63', '2016-08-12', 2, '1471003381'),
('66.249.65.165', '2016-08-12', 2, '1471000552'),
('36.83.67.64', '2016-08-12', 13, '1470991966'),
('36.66.250.52', '2016-08-12', 16, '1470965196'),
('66.249.73.232', '2016-08-12', 1, '1470977768'),
('66.249.65.172', '2016-08-12', 1, '1470984082'),
('69.171.230.119', '2016-08-12', 1, '1470986419'),
('69.171.230.99', '2016-08-12', 1, '1470986420'),
('69.171.230.113', '2016-08-12', 1, '1470986424'),
('8.37.235.215', '2016-08-12', 1, '1471003496'),
('120.164.41.244', '2016-08-12', 16, '1471005113'),
('114.121.132.245', '2016-08-12', 3, '1471010015'),
('66.249.65.165', '2016-08-13', 2, '1471035783'),
('180.254.179.80', '2016-08-13', 2, '1471051658'),
('66.249.84.234', '2016-08-13', 1, '1471052790'),
('66.249.65.169', '2016-08-13', 1, '1471053441'),
('::1', '2017-06-04', 451, '1496572066'),
('::1', '2017-06-03', 70, '1496471843'),
('::1', '2017-06-05', 3, '1496612977'),
('::1', '2017-06-07', 300, '1496849875'),
('::1', '2017-06-08', 178, '1496887857'),
('::1', '2018-02-17', 96, '1518886500'),
('::1', '2018-02-18', 702, '1518963063'),
('::1', '2018-02-19', 59, '1519027309'),
('::1', '2018-02-20', 29, '1519086259'),
('::1', '2018-02-21', 1, '1519190509'),
('::1', '2018-03-03', 895, '1520079952'),
('::1', '2018-03-04', 255, '1520143723'),
('::1', '2018-03-05', 35, '1520236218'),
('::1', '2018-03-06', 21, '1520314823'),
('::1', '2018-03-07', 13, '1520379122'),
('::1', '2019-07-13', 10, '1562983985'),
('::1', '2019-07-16', 23, '1563264667'),
('::1', '2019-07-17', 45, '1563361033'),
('::1', '2019-07-18', 3, '1563414921'),
('::1', '2019-07-20', 2, '1563634419'),
('::1', '2019-07-21', 1, '1563663141'),
('::1', '2019-07-24', 4, '1563922861'),
('::1', '2019-07-26', 4, '1564109291'),
('::1', '2019-08-03', 3, '1564788194'),
('::1', '2019-08-19', 26, '1566179915'),
('::1', '2019-11-20', 117, '1574209879'),
('::1', '2023-04-30', 109, '1682840507'),
('::1', '2023-05-01', 13, '1682908172'),
('::1', '2023-05-02', 211, '1683029294'),
('::1', '2023-05-03', 366, '1683115760'),
('::1', '2023-05-04', 335, '1683197911'),
('::1', '2023-05-05', 156, '1683270459'),
('::1', '2023-05-06', 158, '1683369250'),
('::1', '2023-05-07', 370, '1683460181'),
('::1', '2023-05-08', 635, '1683541556'),
('::1', '2023-05-09', 1226, '1683626224'),
('::1', '2023-05-10', 205, '1683717161'),
('::1', '2023-05-11', 196, '1683800454'),
('::1', '2023-05-13', 209, '1683994672'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032826'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032837'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032847'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032851'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032856'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032860'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032862'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032867'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032869'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032872'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032901'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032904'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032931'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032935'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032939'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032948'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032953'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684032965'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033248'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033251'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033254'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033257'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033281'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033283'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684033295'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034490'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034497'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034505'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034519'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034521'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034526'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034527'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034541'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034545'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034547'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034567'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034570'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034576'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034588'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034591'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034597'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034601'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034601'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034606'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034641'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034643'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034661'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034662'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034670'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034671'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034677'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034679'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034684'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034689'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034772'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034778'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034780'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034785'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034830'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034834'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034838'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034840'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034844'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034846'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034848'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684034852'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035004'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035006'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035008'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035010'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035127'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035129'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035131'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035143'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035178'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035179'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035179'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035182'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035184'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035191'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035192'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035194'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035248'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035250'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035252'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035253'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035260'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035263'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035266'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035268'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035271'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035274'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035275'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035277'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035278'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035280'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035281'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035284'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035285'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035346'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035353'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035361'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035363'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035388'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035395'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035660'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035667'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035674'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684035690'),
('125.161.72.23', '2023-05-14', 7, '1684070855'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037302'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037308'),
('202.43.172.4', '2023-05-14', 2, '1684037785'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037312'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037366'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037369'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037443'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037447'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037450'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037455'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037780'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037784'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037834'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037842'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037846'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037850'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037854'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037860'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037869'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037873'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037882'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037901'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037924'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037930'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684037949'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038244'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038254'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038257'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038263'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038264'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038266'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038351'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038358'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038363'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038368'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038374'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038382'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038390'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038411'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038473'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038476'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038478'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038480'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038487'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038501'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038617'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038626'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038630'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038643'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038672'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038680'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038702'),
('150.129.59.5', '2023-05-14', 1, '1684038705'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038718'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038724'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038728'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038731'),
('118.98.26.6', '2023-05-14', 1, '1684038734'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038735'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038741'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038804'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038809'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038815'),
('110.50.81.203', '2023-05-14', 1, '1684038817'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038843'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038848'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038852'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038874'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038880'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038883'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038886'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038888'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038901'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038905'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038971'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038974'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038977'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038989'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684038998'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039063'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039095'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039098'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039102'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039105'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039110'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039119'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039123'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039125'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039128'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039165'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039172'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039174'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039181'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039182'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039185'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039230'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039237'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039334'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039337'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039343'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039345'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039348'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039354'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039358'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039371'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039372'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039379'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039383'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039386'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039392'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039398'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039493'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039501'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039512'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039516'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684039520'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041483'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041487'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041498'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041500'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041508'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041513'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041516'),
('113.197.108.36', '2023-05-14', 1, '1684041518'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041521'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041524'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684041534'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042019'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042020'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042052'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042057'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042066'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042068'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042076'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042079');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042508'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042528'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042534'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042541'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042548'),
('2001:448a:2002:19d4:', '2023-05-14', 1, '1684042560'),
('152.39.145.190', '2023-05-14', 1, '1684051217'),
('94.139.59.165', '2023-05-14', 1, '1684052885'),
('180.242.71.141', '2023-05-14', 5, '1684069474'),
('152.39.251.0', '2023-05-14', 1, '1684076288'),
('180.242.71.141', '2023-05-15', 6, '1684111280'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107856'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107897'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107904'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107926'),
('113.197.108.36', '2023-05-15', 1, '1684107927'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107943'),
('202.43.172.5', '2023-05-15', 1, '1684107945'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107963'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107966'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107968'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107974'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107974'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107980'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684107994'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108004'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108010'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108023'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108025'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108035'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108295'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108297'),
('110.50.81.203', '2023-05-15', 1, '1684108297'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108306'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684108314'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684109022'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684109056'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684109656'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684110504'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684110507'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684110639'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684110993'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684110995'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684111137'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684111653'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684111653'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113782'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113786'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113788'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113796'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113799'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113813'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113814'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113817'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113822'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113824'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684113886'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114368'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114376'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114383'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114386'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114677'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114747'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114753'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114757'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114768'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114884'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114923'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114932'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114952'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114954'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114955'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114972'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114976'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684114987'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115001'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115020'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115030'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115042'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115043'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115047'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684115062'),
('31.171.152.186', '2023-05-15', 1, '1684115732'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120350'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120356'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120365'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120367'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120370'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120374'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120376'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120377'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684120772'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684121270'),
('2001:448a:20e0:2c31:', '2023-05-15', 1, '1684121271'),
('2001:448a:20e0:2c31:', '2023-05-16', 1, '1684245077'),
('125.160.234.127', '2023-05-16', 1, '1684245079'),
('2001:448a:20e0:2c31:', '2023-05-16', 1, '1684245083'),
('2001:448a:20e0:2c31:', '2023-05-16', 1, '1684245090'),
('110.50.81.200', '2023-05-16', 1, '1684245095'),
('2001:448a:20e0:2c31:', '2023-05-16', 1, '1684245104'),
('2001:448a:20e0:2c31:', '2023-05-16', 1, '1684245114'),
('125.160.236.253', '2023-05-17', 1, '1684263781'),
('2001:448a:20e0:2c31:', '2023-05-17', 1, '1684298354'),
('125.160.234.217', '2023-06-01', 11, '1685618634'),
('202.43.172.5', '2023-06-01', 1, '1685618604'),
('2001:448a:20e0:4b16:', '2023-06-01', 1, '1685618663'),
('180.242.70.123', '2023-06-01', 2, '1685626014'),
('125.160.226.155', '2023-06-01', 39, '1685623654'),
('110.50.81.202', '2023-06-01', 2, '1685620529'),
('110.50.81.197', '2023-06-01', 1, '1685620345'),
('175.45.186.196', '2023-06-01', 1, '1685620357'),
('110.50.81.199', '2023-06-01', 2, '1685620420'),
('110.50.81.198', '2023-06-01', 1, '1685620377'),
('202.43.172.4', '2023-06-01', 1, '1685620405'),
('110.50.81.200', '2023-06-01', 1, '1685623515'),
('103.26.211.5', '2023-06-01', 1, '1685623533'),
('175.45.186.197', '2023-06-01', 1, '1685623543'),
('125.160.234.126', '2023-06-02', 1, '1685639986'),
('125.160.237.65', '2023-06-02', 1, '1685681879'),
('149.154.161.216', '2023-06-02', 1, '1685691024'),
('125.160.228.117', '2023-06-02', 22, '1685692903'),
('2001:448a:20e0:4b16:', '2023-06-02', 1, '1685692434'),
('180.242.70.123', '2023-06-02', 1, '1685702583'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794726'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794751'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794763'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794766'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794773'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794775'),
('2001:448a:2002:81bc:', '2023-06-03', 1, '1685794784'),
('::1', '2023-06-03', 113, '1685800273'),
('::1', '2023-06-04', 2, '1685853467'),
('::1', '2023-06-05', 112, '1685984308'),
('::1', '2023-06-06', 25, '1686046611');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(17, 'PHP[mu] Template V.3 Full Color', 'admin', 'Admin', 'tha-net', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
(1, 'admin', 'edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648', 'Admin Toko', 'admin@gmail.com', '089527363619', 'blank.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`),
  ADD KEY `kota_id` (`kota_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indeks untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indeks untuk tabel `rb_konfirmasi`
--
ALTER TABLE `rb_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Indeks untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`),
  ADD KEY `kota_id` (`kota_id`);

--
-- Indeks untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD PRIMARY KEY (`kota_id`),
  ADD KEY `provinsi_id` (`provinsi_id`);

--
-- Indeks untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`),
  ADD KEY `id_pembelian` (`id_pembelian`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indeks untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  ADD PRIMARY KEY (`id_penjualan_detail`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `id_produk` (`id_produk`),
  ADD KEY `id_kategori_produk` (`id_kategori_produk`);

--
-- Indeks untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indeks untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `rb_wishlist`
--
ALTER TABLE `rb_wishlist`
  ADD PRIMARY KEY (`id_wishlist`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_konsumen` (`id_konsumen`);

--
-- Indeks untuk tabel `reseller_akun`
--
ALTER TABLE `reseller_akun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_konsumen` (`id_konsumen`);

--
-- Indeks untuk tabel `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `id_session` (`id_session`),
  ADD KEY `id_session_2` (`id_session`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`),
  ADD KEY `id_modul` (`id_modul`),
  ADD KEY `id_session` (`id_session`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  MODIFY `id_keterangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rb_konfirmasi`
--
ALTER TABLE `rb_konfirmasi`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rb_wishlist`
--
ALTER TABLE `rb_wishlist`
  MODIFY `id_wishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `reseller_akun`
--
ALTER TABLE `reseller_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD CONSTRAINT `identitas_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `rb_kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_konfirmasi`
--
ALTER TABLE `rb_konfirmasi`
  ADD CONSTRAINT `rb_konfirmasi_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `rb_penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rb_konfirmasi_ibfk_2` FOREIGN KEY (`id_rekening`) REFERENCES `rb_rekening` (`id_rekening`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  ADD CONSTRAINT `rb_konsumen_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `rb_kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD CONSTRAINT `rb_kota_ibfk_1` FOREIGN KEY (`provinsi_id`) REFERENCES `rb_provinsi` (`provinsi_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  ADD CONSTRAINT `rb_pembelian_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `rb_supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  ADD CONSTRAINT `rb_pembelian_detail_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `rb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rb_pembelian_detail_ibfk_2` FOREIGN KEY (`id_pembelian`) REFERENCES `rb_pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  ADD CONSTRAINT `rb_penjualan_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `rb_konsumen` (`id_konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  ADD CONSTRAINT `rb_penjualan_detail_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `rb_penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rb_penjualan_detail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `rb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  ADD CONSTRAINT `rb_penjualan_temp_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `rb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  ADD CONSTRAINT `rb_produk_ibfk_1` FOREIGN KEY (`id_kategori_produk`) REFERENCES `rb_kategori_produk` (`id_kategori_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rb_wishlist`
--
ALTER TABLE `rb_wishlist`
  ADD CONSTRAINT `rb_wishlist_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `rb_produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rb_wishlist_ibfk_2` FOREIGN KEY (`id_konsumen`) REFERENCES `rb_konsumen` (`id_konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reseller_akun`
--
ALTER TABLE `reseller_akun`
  ADD CONSTRAINT `reseller_akun_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `rb_konsumen` (`id_konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
