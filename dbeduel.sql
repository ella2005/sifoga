-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 04:39 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbeduel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cek_soal`
--

CREATE TABLE `cek_soal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cek_soal`
--

INSERT INTO `cek_soal` (`id`, `soal_id`, `session_id`, `created_at`, `updated_at`) VALUES
(74, 1, 1, NULL, NULL),
(75, 1, 1, NULL, NULL),
(76, 2, 1, NULL, NULL),
(77, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nama_materi` varchar(200) NOT NULL,
  `artikel` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `id_user`, `nama_materi`, `artikel`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mengelola Data Pembibitan', '<p>Teknik menanam buah naga</p> sebernarnya sederhana. Baik untuk budidaya di kebun maupun dalam pot.\r\n\r\nHanya saja, sebagian orang melupakan bagian penting di awal sehinga setelah beberapa tahun pohon buah naganya tidak berbuah. Normalnya buah naga bisa berbuah setalah 7 -10 bulan. Jika beruntung 5 bulan sudah berbuah.\r\n1. Kenali Buah Naga yang Akan Anda Tanam\r\nDi Indonesia jenis buah naga ada 6. Merah, putih, super merah, kuning, orang dan hitam. Apapun jenisnya tetap menguntungkan.\r\nsifoga', '2020-11-22 11:35:12', '2020-11-22 04:35:12'),
(2, 0, 'Mengelola Data Pemupukan', 'Di awal pertumbuhan, Anda harus memberi pupuk yang kandungan N nya banyak. di masa siap berbuah, kandungan P dan K bisa diperbanyak.\r\nJangan beri pupuk urea, bisa terjadi busuk batang.\r\nJangan beri pupuk kandang yang belum matang apalagi kotoran langsung.\r\nRajinlah membersihkan gulma dan rumput agar peresapan pupuk sempurna.\r\nsifoga', '2020-11-22 05:31:38', '2020-11-21 22:31:38'),
(3, 0, 'Mengelola Data Tanaman', '<p>Pengairan<p>\r\nSiramlah buah naga 2 hari sekali pagi dan sore saat tidak hujan, jangan sampai airnya menggenang.\r\nuntuk awal-awal pertumbuhan sampai pohonnya mencapai ujung tiang panjatan, pangkaslah tunas dan sisakan 1 saja. ini agar pohon cepat tumbuh ke atas. Setelah dewasa, pangkaslah tunas yang kira-kira tidak diperlukan, yang busuk, atau yang terkena penyakit lalu timbun ke dalam tanah agar tidak menular. Cabang buah naga yang telah berbuah 4 kali sebaiknya di potong dan dijadikan bibit.\r\nsifoga', '2020-11-22 05:44:08', '2020-11-21 22:44:08'),
(4, 0, 'Mengelola Data Lahan', '<p>Mengelola Data Lahan</p>\r\nBahasa ilmiahnya, ia bisa hidup bagus di daerah dengan ketinggian 0-350m di atas permukaan laut dan curah hujan 720mm per tahun.\r\n\r\nKondisi yang terlalu basah dan kurang sinar matahari akan membuat buah naga mengalami busuk batang.\r\n\r\nPohon naga cocok untuk daerah tegalan (ladang) yang bila hujan selesai, airnya tidak menggenang.\r\nTanaman buah naga telah menjadi perhatian bukan hanya karena warna merah yang\r\nmenarik dan nilai ekonominya tetapi juga karena anti oksidan yang dikandungnya.\r\nKomoditas ini telah dikembangkan di beberapa daerah di Indonesia yang pada umumnya di\r\nlahan marjinal. Namun sampai saat ini belum tersedia data lengkap tentang produktivitas\r\nbuah naga di lokasi pengembangan buah naga tersebut. Penelitian ini bertujuan untuk\r\nmengetahui produktivitas buah naga di lahan marjinal. Penelitian dilakukan di Kebun\r\nPercobaan Aripan Balai Penelitian Tanaman Buah Tropika, Solok Sumatera Barat dari April\r\n2014–April 2015. Penelitian dilakukan secara deskriptif menggunakan 18 tanaman buah\r\nnaga (Hylocereus polyrhizus) berumur ±2 tahun. Hasil penelitian menunjukkan bahwa\r\ntanaman buah naga di lahan marjinal (KP. Aripan) berproduksi sepanjang tahun dengan\r\njumlah yang berfluktuatif. Produksi tertinggi bulan September 2014 6,53 kg/tan (5,44\r\nton/ha), dan terendah Februari 2015 0,59 kg/tan (0,49 ton/ha). Jumlah bunga berkisar\r\nantara 2,11-27,7/tan/bulan, persentase bunga mekar berkisar antara 39,72-68,24%,\r\npersentase bunga gugur yang tertinggi terjadi saat bunga pada fase bakal bunga sampai\r\nbunga mekar berkisar antara 31,75-60,27% dan terendah pada fase bunga mekar sampai\r\nterbentuknya buah berkisar antara 0,34-41,57 %, jumlah buah berkisar antara 1,33-\r\n13,05/tan/bulan, fruitset berkisar antara 30,76- 65,78%,', '2020-11-22 11:28:33', '2019-11-29 20:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_27_193926_create_jawaban_table', 2),
(4, '2019_11_27_203840_create_cek_soal_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soal_jawaban`
--

CREATE TABLE `soal_jawaban` (
  `id` bigint(20) NOT NULL,
  `tipe_id` bigint(20) DEFAULT NULL,
  `soalnya` varchar(200) NOT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `jawaban_benar` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `point_a` varchar(191) DEFAULT NULL,
  `point_b` varchar(191) DEFAULT NULL,
  `point_c` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_jawaban`
--

INSERT INTO `soal_jawaban` (`id`, `tipe_id`, `soalnya`, `a`, `b`, `c`, `jawaban_benar`, `created_at`, `updated_at`, `point_a`, `point_b`, `point_c`) VALUES
(1, 1, 'Untuk media tanam dapat dengan mencampurkan pasir,tanah,pupuk kompos atau pupuk kandang dengan komposisi', '1:1:1', '2:1:2', '1:2:2', '1:1:1', '2019-11-27 20:54:58', '2019-11-27 09:46:26', '0.2', '0', '0.1'),
(2, 1, 'Untuk Jarak antara tiang panjat adalah', '2 m', '3 m dan diantara baris dibuatkan drainase untuk menyerap air yang berlebihan', '4 m', '3 m dan diantara baris dibuatkan drainase untuk menyerap air yang berlebihan', '2019-11-27 20:55:02', '2019-11-27 09:44:03', '0.05', '0.025', '0'),
(3, 1, 'Untuk menambah kalsium pada tanah maka dilakukan', 'Menambahkan kapur atau dolomit kira-kira 300 gr', 'Menambahkan pupuk', 'Menambahkan air', 'Menambahkan kapur atau dolomit kira-kira 300 gr', '2019-11-27 20:55:04', '2019-11-27 09:49:19', '0.1', '0', '0'),
(4, 1, 'Berapa diameter batang yang benar untuk digunakan sebagai calon bibit buah naga?', '8 cm dan batang pernah berbuah 3-4 kali', '8 cm dan batang tidak pernah berbuah', '8 cm dan batang sudah tua', '8 cm dan batang pernah berbuah 3-4 kali', '2019-11-27 20:55:08', '2019-11-27 09:26:31', '0.12', '0.03', '0.03'),
(5, 1, 'Berapa panjang kira-kira batang tanaman yang dijadikan calon bibit buah naga?', '20-60 cm', '80-120 cm', '100-140 cm', '80-120 cm', '2019-11-27 20:55:11', '2019-11-27 09:29:21', '0.1125', '0.15', '0'),
(6, 1, 'Suhu yang tepat untuk menaman buah naga adalah', '500 mdpl', '700 mdpl', '900 mdpl', '900 mdpl', '2019-11-27 20:55:15', '2019-11-27 09:36:11', '0.0625', '0.125', '0.25'),
(7, 1, 'Tiang panjat dapat dibuat dari beton atau tanaman hidup dengan ukuran', 'Diameter 10-15 cm dan tinggi 2-2,5 cm', 'Diameter 20-25 cm dan tinggi 3-3,5 cm', 'Diameter 30-35 cm dan tinggi 4-4,5 cm', 'Diameter 10-15 cm dan tinggi 2-2,5 cm', '2019-11-27 20:55:20', '2019-11-27 09:42:53', '0.12', '0.06', '0'),
(100, 1, 'awdwa', 'awdafw', 'awfawf', 'awfawfas', 'awfawf', '2020-11-21 09:50:11', '2020-11-21 02:50:11', NULL, NULL, NULL),
(395, 1, 'aku sapa', 'aa', 'bb', 'gg', 'aa', '2020-11-23 02:47:32', '2020-11-23 02:47:32', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `temp_point`
--

CREATE TABLE `temp_point` (
  `id` int(11) NOT NULL,
  `point` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_point`
--

INSERT INTO `temp_point` (`id`, `point`) VALUES
(1, '0.45000000000000007');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_soal`
--

CREATE TABLE `tipe_soal` (
  `id` bigint(20) NOT NULL,
  `tipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_soal`
--

INSERT INTO `tipe_soal` (`id`, `tipe`) VALUES
(1, 'Pra Penanaman'),
(2, 'Penanaman'),
(3, 'Tanaman Berbunga');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9844, 'admin', 'admin', 'admin', 'admin@mail.com', NULL, '$2y$10$m41nRmrSeLUhlfZHVOrowuwnTrDJg8yEqln88RrFHUfUams2Obv2m', NULL, '2019-10-16 01:25:03', '2019-10-16 01:25:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_soal`
--
ALTER TABLE `cek_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`tipe_id`);

--
-- Indexes for table `temp_point`
--
ALTER TABLE `temp_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_soal`
--
ALTER TABLE `tipe_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_soal`
--
ALTER TABLE `cek_soal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `temp_point`
--
ALTER TABLE `temp_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipe_soal`
--
ALTER TABLE `tipe_soal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9845;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `soal_jawaban`
--
ALTER TABLE `soal_jawaban`
  ADD CONSTRAINT `soal_jawaban_ibfk_1` FOREIGN KEY (`tipe_id`) REFERENCES `tipe_soal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
