-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2024 pada 19.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holy-crossroads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reads` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `excerpt`, `image`, `description`, `category_id`, `created_at`, `updated_at`, `reads`) VALUES
(1, 'Yerusalem: Kota Suci bagi Tiga Agama', 'yerusalem-kota-suci-bagi-tiga-agama', 'Yerusalem adalah kota yang memiliki makna spiritual mendalam bagi tiga agama besar dunia: Yahudi, Kristen, dan Islam. Dengan sejarah yang panjang dan kompleks, Yerusalem menjadi pusat ibadah dan ziarah yang penting, serta simbol persatuan dan konflik antaragama. Berikut adalah penjelasan tentang keistimewaan Yerusalem bagi ketiga agama tersebut.', 'blog/images/oiMETfQBWtwIrmrMFt1jN2kDBJ55m4qJj8QP2VQR.jpg', '<h4>Yahudi: Tembok Ratapan (Western Wall)</h4><p>Bagi umat Yahudi, Yerusalem adalah kota paling suci, karena merupakan lokasi dari Bait Suci yang dibangun oleh Raja Salomo dan kemudian diperbarui oleh Raja Herodes. Tembok Ratapan, atau Western Wall, adalah sisa dari dinding penahan Bait Suci kedua yang dihancurkan oleh Romawi pada tahun 70 M. Umat Yahudi datang dari seluruh dunia untuk berdoa di tembok ini, memasukkan permohonan tertulis di celah-celah batu. Tembok Ratapan menjadi simbol iman, harapan, dan koneksi umat Yahudi dengan sejarah dan tanah suci mereka.</p><h4>Kristen: Gereja Makam Kudus (Church of the Holy Sepulchre)</h4><p>Yerusalem juga memiliki arti yang sangat penting bagi umat Kristen. Gereja Makam Kudus adalah salah satu situs paling suci dalam Kekristenan, dipercaya sebagai lokasi penyaliban, penguburan, dan kebangkitan Yesus Kristus. Gereja ini dibangun pada abad ke-4 oleh Kaisar Konstantinus dan telah menjadi tujuan ziarah utama bagi umat Kristen dari seluruh dunia. Kompleks gereja ini mencakup Golgota (tempat penyaliban) dan makam Yesus, menjadikannya pusat ibadah dan meditasi yang sangat penting.</p><h4>Islam: Masjid Al-Aqsa</h4><p>Dalam Islam, Yerusalem dikenal sebagai Al-Quds, kota yang sangat dihormati. Masjid Al-Aqsa, yang terletak di kompleks Al-Haram Al-Sharif (Temple Mount), adalah salah satu masjid tersuci dalam Islam setelah Masjidil Haram di Mekah dan Masjid Nabawi di Madinah. Menurut tradisi Islam, Nabi Muhammad melakukan perjalanan malam (Isra dan Mi\'raj) dari Mekah ke Yerusalem dan naik ke surga dari tempat ini. Masjid Al-Aqsa menjadi pusat spiritual yang penting bagi umat Muslim, tempat mereka beribadah dan merasakan kedekatan dengan Tuhan.</p><h4>Simbol Persatuan dan Konflik</h4><p>Yerusalem, dengan kekayaan sejarah dan makna spiritualnya, sering kali menjadi simbol persatuan dan harapan bagi ketiga agama besar. Namun, kota ini juga menjadi pusat konflik yang berkelanjutan, karena klaim yang tumpang tindih dan perselisihan politik. Meski demikian, Yerusalem tetap menjadi tempat yang memancarkan kedamaian dan spiritualitas, menginspirasi jutaan orang yang datang untuk berziarah dan beribadah.</p><h4>Penutup</h4><p>Yerusalem adalah kota yang unik, di mana sejarah dan spiritualitas dari tiga agama besar bertemu dan berbaur. Tembok Ratapan, Gereja Makam Kudus, dan Masjid Al-Aqsa adalah simbol-simbol dari warisan keagamaan yang kaya dan mendalam. Meskipun sering kali menjadi sumber ketegangan, Yerusalem tetap menjadi tempat harapan dan doa bagi banyak orang, mengingatkan kita akan pentingnya toleransi, pemahaman, dan kedamaian antarumat beragama.</p><p>Yerusalem, dengan segala kekayaan sejarah dan spiritualitasnya, akan selalu menjadi salah satu kota terpenting di dunia, menginspirasi generasi mendatang untuk menjaga dan menghargai warisan keagamaan yang berharga ini.</p>', 6, '2024-07-12 09:45:31', '2024-07-12 09:45:46', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number_phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 'islam', '2024-07-12 09:41:00', '2024-07-12 09:41:00'),
(2, 'Kristen', 'kristen', '2024-07-12 09:41:10', '2024-07-12 09:41:10'),
(3, 'Hindu', 'hindu', '2024-07-12 09:41:19', '2024-07-12 09:41:19'),
(4, 'Buddha', 'buddha', '2024-07-12 09:41:28', '2024-07-12 09:41:28'),
(5, 'Dalam Negeri', 'dalam-negeri', '2024-07-12 09:41:40', '2024-07-12 09:41:40'),
(6, 'Luar negeri', 'luar-negeri', '2024-07-12 09:41:49', '2024-07-12 09:41:49');

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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `travel_package_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `images`, `travel_package_id`, `created_at`, `updated_at`) VALUES
(2, 'Masjid Agung Jawa Tengah', 'travel_package/gallery/7JsmHMk6iDb056J2nTrBBG3AeDXjWBIb4TZZ6cDK.jpg', 2, '2024-07-12 09:09:06', '2024-07-12 09:09:06'),
(3, 'Klenteng Sam Poo Kong', 'travel_package/gallery/QW4oniG9ZbdYfXoQXTW7re9LbZqnImLWHxt8tZFZ.jpg', 2, '2024-07-12 09:11:11', '2024-07-12 09:11:11'),
(4, 'Gereja Blenduk', 'travel_package/gallery/QC7HLZA3MVuSwP3uTlzaaQgEgraTCY1ZLKeYSgS9.jpg', 2, '2024-07-12 09:14:34', '2024-07-12 09:14:34'),
(5, 'Pagoda Avalokitesvara Watugong', 'travel_package/gallery/j24O6L6JTYK3CtvefOg1ouNPlJPepsljPAGOOZtn.jpg', 2, '2024-07-12 09:15:15', '2024-07-12 09:15:15'),
(6, 'Masjid Istiqlal', 'travel_package/gallery/Cgbzb0AibG1F2fakxjmTtAd7KSujnrFwLo6wVZEJ.jpg', 3, '2024-07-12 09:21:52', '2024-07-12 09:21:52'),
(7, 'Gereja Katedral Jakarta', 'travel_package/gallery/IKCufV7vQ1JgJh0N66VrB4FK44OUt0EPldq0UWi6.jpg', 3, '2024-07-12 09:23:20', '2024-07-12 09:23:20'),
(8, 'Vihara Dharma Bhakti', 'travel_package/gallery/L07z17lvL52pJk552yA9kmcAEHFPS1rCF83A1Nbp.jpg', 3, '2024-07-12 09:24:01', '2024-07-12 09:24:01'),
(9, 'Pura Aditya Jaya', 'travel_package/gallery/g0xi05u52MT8CfHhSvOsAA753BqFJhzYPubmq6pI.jpg', 3, '2024-07-12 09:24:42', '2024-07-12 09:24:42'),
(10, 'Masjid Raya Al-Mashun', 'travel_package/gallery/aapn6oPzT94OYTjiQUzQzQGhIql9GF92oQu9DABt.jpg', 4, '2024-07-12 09:29:08', '2024-07-12 09:29:08'),
(11, 'Gereja Graha Maria Annai Velangkanni', 'travel_package/gallery/RrCP0iQZPbAl07RLbRMwTlncxhqwXXDfCUbNCks8.jpg', 4, '2024-07-12 09:31:31', '2024-07-12 09:31:31'),
(12, 'Vihara Gunung Timur', 'travel_package/gallery/ERg4IsUDvqC0jBsKahSIsodYBeBJ3kw2uXbYFKgk.jpg', 4, '2024-07-12 09:33:05', '2024-07-12 09:33:05'),
(13, 'Kuil Shri Mariamman', 'travel_package/gallery/jdIHEmyveJMi1Fo09HaeuH6bNy909ERghoX37vrK.jpg', 4, '2024-07-12 09:34:21', '2024-07-12 09:34:21'),
(14, 'Tembok Ratapan (Western Wall)', 'travel_package/gallery/5jHrsGwsZT6V6DdOxbmiuvcvFMmgqalafkXdZxI9.png', 5, '2024-07-12 09:37:41', '2024-07-12 09:37:41'),
(15, 'Gereja Makam Kudus (Church of the Holy Sepulchre)', 'travel_package/gallery/lgcJ7nCrxi9sqtGgQAqotG2KaNSVXNJxBa1sQXHs.jpg', 5, '2024-07-12 09:38:32', '2024-07-12 09:38:32'),
(16, 'Masjid Al-Aqsa', 'travel_package/gallery/TGLITWHC5Drn9iqa1XpIDJaZ6WYx0PpMqCrzFHvz.jpg', 5, '2024-07-12 09:39:32', '2024-07-12 09:39:32');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_28_050111_create_categories_table', 1),
(7, '2023_02_28_065501_create_travel_packages_table', 1),
(8, '2023_02_28_065908_create_blogs_table', 1),
(9, '2023_02_28_070324_create_bookings_table', 1),
(10, '2023_03_01_020708_create_galleries_table', 1),
(11, '2023_03_01_151237_add_reads_to_blogs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `type`, `slug`, `location`, `price`, `description`, `created_at`, `updated_at`) VALUES
(2, 'SMG1', 'semarang-indonesia', 'Semarang, Indonesia', 500000, '<h2><strong>Travel Religi di Semarang</strong></h2><p>Semarang, kota dengan keragaman budaya dan agama yang kaya, menawarkan pengalaman spiritual yang memukau. Jelajahi tempat-tempat ibadah yang ikonik, di antaranya:</p><h4><strong>Masjid Agung Jawa Tengah</strong>&nbsp;</h4><p>Menara yang menjulang tinggi dan arsitektur yang megah membuat Masjid Agung Jawa Tengah menjadi landmark penting. Dibangun dengan sentuhan arsitektur Arab, Jawa, dan Romawi, masjid ini bukan hanya tempat ibadah, tetapi juga pusat kebudayaan dan wisata religi.</p><h4><strong>Klenteng Sam Poo Kong</strong>&nbsp;</h4><p>Klenteng tertua di Semarang ini dibangun untuk menghormati Laksamana Cheng Ho, seorang penjelajah dari Tiongkok. Keindahan arsitektur Tionghoa dan suasana sakral menjadikan klenteng ini tempat yang wajib dikunjungi bagi mereka yang mencari ketenangan spiritual.</p><h4><strong>Gereja Blenduk</strong>&nbsp;</h4><p>Terletak di Kota Lama Semarang, Gereja Blenduk adalah gereja tertua di Jawa Tengah dengan kubah besar yang ikonik. Dibangun pada abad ke-18 dengan gaya arsitektur kolonial Belanda, gereja ini menjadi saksi bisu sejarah panjang kota Semarang.</p><h4><strong>Pagoda Avalokitesvara Watugong</strong>&nbsp;</h4><p>Pagoda yang megah ini adalah simbol perdamaian dan kebijaksanaan. Dengan tinggi 45 meter, pagoda ini memiliki tujuh tingkat yang masing-masing diisi dengan patung Avalokitesvara. Suasana tenang dan panorama indah menjadikan tempat ini ideal untuk meditasi dan refleksi spiritual.</p>', '2024-07-12 09:08:26', '2024-07-12 09:08:26'),
(3, 'JKT1', 'jakarta-indonesia', 'Jakarta, Indonesia', 1500000, '<h2><strong>Travel Religi di Jakarta</strong></h2><p>Jakarta, sebagai ibu kota Indonesia, menampilkan keragaman budaya dan agama yang luar biasa. Kota ini menjadi rumah bagi berbagai tempat ibadah yang megah dan penuh sejarah, memberikan pengalaman spiritual yang mendalam. Berikut adalah destinasi utama yang mewakili empat agama besar:</p><h4><strong>Masjid Istiqlal</strong>&nbsp;</h4><p>Masjid terbesar di Asia Tenggara ini merupakan simbol toleransi dan kemerdekaan Indonesia. Dengan arsitektur modern yang menakjubkan, Masjid Istiqlal menjadi pusat kegiatan keagamaan Islam serta simbol persatuan nasional.</p><h4><strong>Gereja Katedral Jakarta</strong>&nbsp;</h4><p>Terletak berseberangan dengan Masjid Istiqlal, Gereja Katedral Jakarta menampilkan arsitektur neo-gotik yang megah. Dibangun pada awal abad ke-20, gereja ini merupakan salah satu gereja Katolik terbesar di Indonesia dan menjadi pusat ibadah serta kegiatan keagamaan umat Katolik.</p><h4><strong>Vihara Dharma Bhakti</strong>&nbsp;</h4><p>Sebagai vihara tertua di Jakarta, Vihara Dharma Bhakti di Glodok merupakan pusat keagamaan bagi umat Buddha. Dengan suasana yang damai dan arsitektur tradisional Tionghoa, vihara ini menjadi tempat yang ideal untuk meditasi dan refleksi spiritual.</p><h4><strong>Pura Aditya Jaya</strong>&nbsp;</h4><p>Pura Hindu terbesar di Jakarta ini terletak di Rawamangun. Pura Aditya Jaya adalah pusat kegiatan keagamaan bagi umat Hindu di ibu kota. Dengan arsitektur khas Bali yang indah, pura ini menawarkan suasana yang tenang dan sakral.</p>', '2024-07-12 09:19:14', '2024-07-12 09:19:14'),
(4, 'MDN1', 'medan-indonesia', 'Medan, Indonesia', 1400000, '<h2><strong>Travel Religi di Medan</strong></h2><p>Medan, kota terbesar di Sumatera Utara, dikenal dengan keragaman budayanya yang kaya. Kota ini menawarkan berbagai destinasi spiritual yang mengesankan, mewakili empat agama utama. Berikut adalah tempat-tempat ibadah yang wajib dikunjungi:</p><h4><strong>Masjid Raya Al-Mashun</strong>&nbsp;</h4><p>Dikenal juga sebagai Masjid Raya Medan, bangunan megah ini merupakan salah satu ikon kota Medan. Dibangun pada awal abad ke-20 dengan gaya arsitektur Maroko, Turki, dan Timur Tengah, masjid ini menjadi pusat kegiatan keagamaan umat Islam di Medan.</p><h4><strong>Gereja Graha Maria Annai Velangkanni</strong>&nbsp;</h4><p>Gereja Katolik yang unik ini memiliki arsitektur bergaya India dengan ornamen yang rumit. Terletak di Tanjung Selamat, gereja ini menjadi tempat ibadah yang indah dan damai bagi umat Katolik serta menarik banyak wisatawan karena keindahan dan keunikannya.</p><h4><strong>Vihara Gunung Timur</strong>&nbsp;</h4><p>Vihara terbesar di Medan ini adalah pusat keagamaan bagi umat Buddha. Terletak di Jalan Hang Tuah, vihara ini menampilkan arsitektur tradisional Tionghoa dan merupakan tempat yang sempurna untuk meditasi dan mencari ketenangan.</p><h4><strong>Kuil Shri Mariamman</strong>&nbsp;</h4><p>Kuil Hindu tertua di Medan ini dibangun pada tahun 1881 dan didedikasikan untuk Dewi Mariamman. Terletak di kawasan Kampung Madras, kuil ini menawarkan suasana yang tenang dan sakral serta merupakan pusat kegiatan keagamaan umat Hindu di Medan.</p>', '2024-07-12 09:28:09', '2024-07-12 09:34:37'),
(5, 'JRS1', 'jerusallem', 'Jerusallem', 15000000, '<h2><strong>Travel Religi di Yerusalem</strong></h2><p>Yerusalem, kota suci yang kaya akan sejarah dan spiritualitas, adalah destinasi utama bagi para peziarah dari berbagai agama. Berikut adalah tiga tempat ibadah utama yang mewakili agama-agama besar:</p><h4><strong>Tembok Ratapan (Western Wall)</strong>&nbsp;</h4><p>Tembok Ratapan adalah situs suci bagi umat Yahudi. Terletak di Kota Tua Yerusalem, tembok ini adalah bagian yang tersisa dari Bait Suci kedua yang hancur pada tahun 70 M. Umat Yahudi dari seluruh dunia datang untuk berdoa dan memasukkan permohonan tertulis di celah-celah tembok ini.</p><h4><strong>Gereja Makam Kudus (Church of the Holy Sepulchre)</strong>&nbsp;</h4><p>Gereja ini adalah salah satu tempat paling suci bagi umat Kristen, diyakini sebagai lokasi penyaliban, penguburan, dan kebangkitan Yesus Kristus. Terletak di dalam Kota Tua Yerusalem, gereja ini menjadi tujuan ziarah utama bagi umat Kristen dari seluruh dunia.</p><h4><strong>Masjid Al-Aqsa</strong>&nbsp;</h4><p>Masjid Al-Aqsa adalah salah satu tempat suci utama dalam Islam. Terletak di kompleks Al-Haram Al-Sharif (Temple Mount), masjid ini memiliki sejarah yang kaya dan spiritualitas yang mendalam. Umat Muslim mengunjungi tempat ini untuk beribadah dan merasakan kedamaian yang ditawarkannya.</p>', '2024-07-12 09:37:02', '2024-07-12 09:37:02');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$yVZ1UkffVFWKSvIK/BoT4OhdZ6Oq4CcRIwV983B7n7oNbiHyo4CiC', NULL, 1, '2024-07-10 10:49:02', '2024-07-10 10:49:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_category_id_foreign` (`category_id`),
  ADD KEY `blogs_reads_index` (`reads`);

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_travel_package_id_foreign` (`travel_package_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_travel_package_id_foreign` (`travel_package_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travel_packages_slug_unique` (`slug`);

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
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel_packages` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_travel_package_id_foreign` FOREIGN KEY (`travel_package_id`) REFERENCES `travel_packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
