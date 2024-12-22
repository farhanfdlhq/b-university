-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2024 at 10:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b-university`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutmes`
--

CREATE TABLE `aboutmes` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutmes`
--

INSERT INTO `aboutmes` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Universitas yang berfokus pada integritas, ilmu pengetahuan, dan pengembangan karakter untuk membentuk pemimpin masa depan.', '[\"01JF9FRH3T2T67SE6YS4B9W7YV.png\",\"01JF9FRH426KD5HBQP07Y20BV7.png\",\"01JF9FRH479897ZFVE97SQM1Q6.png\"]', '2024-11-25 07:36:53', '2024-12-16 21:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `nip`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ilham Maulana', '0728089414', 'Photographer', '01JF9KRQN0GDTTJET48D317N8E.png', '2024-11-25 07:54:29', '2024-12-16 23:16:33'),
(2, 'Marta Ulina', '0728089415', 'Staff IT', '01JF9KT9CFQM8ZVQMSBA75HQBM.png', '2024-11-25 07:54:56', '2024-12-16 23:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mahasiswa PKM-KC Alat Sensor Batuk Pasien TBC', '<p style=\"text-align: justify;\">Dalam upaya mendukung inovasi teknologi kesehatan, tim mahasiswa dari Program Kreativitas Mahasiswa Kategori Karsa Cipta (PKM-KC) telah berhasil mengembangkan sebuah alat sensor batuk khusus untuk pasien Tuberkulosis (TBC). Alat ini dirancang untuk memantau frekuensi dan intensitas batuk pasien TBC secara real-time, sehingga memudahkan petugas kesehatan dalam menganalisis perkembangan penyakit dan menentukan langkah penanganan yang tepat. Inovasi ini diharapkan mampu memberikan kontribusi besar dalam mendukung program eradikasi TBC di Indonesia.</p>\n<p style=\"text-align: justify;\">Sensor yang dikembangkan memiliki keunggulan utama berupa sensitivitas tinggi dalam mendeteksi suara batuk, bahkan di lingkungan yang ramai. Selain itu, alat ini dilengkapi dengan teknologi berbasis IoT (Internet of Things), yang memungkinkan data batuk pasien dikirimkan langsung ke platform digital untuk dianalisis oleh dokter atau tim medis. Dengan fitur ini, alat sensor batuk juga dapat membantu pasien yang menjalani perawatan di rumah untuk tetap mendapatkan pemantauan kesehatan secara optimal tanpa harus sering mengunjungi fasilitas kesehatan.</p>\n<p style=\"text-align: justify;\">Keberhasilan ini membuktikan bahwa kolaborasi antara mahasiswa dan dosen pembimbing dalam PKM-KC mampu menghasilkan inovasi yang relevan dengan kebutuhan masyarakat. Proyek ini sekaligus menjadi bentuk nyata partisipasi generasi muda dalam menyelesaikan permasalahan kesehatan global. Tim berharap alat ini dapat segera dikembangkan lebih lanjut dan digunakan secara luas untuk membantu penanganan pasien TBC di Indonesia dan bahkan di tingkat internasional.</p>', 1, 'mahasiswa-pkm-kc-alat-sensor-batuk-pasien-tbc', '2024-11-25 07:40:51', '2024-11-25 07:40:51'),
(2, 'Green Idul Adha  Dapat Apresiasi Majelis Lingkungan', '<p style=\"text-align: justify;\">Program <em>Green Idul Adha</em> yang digagas oleh mahasiswa dalam rangka perayaan Idul Adha tahun ini mendapatkan apresiasi tinggi dari Majelis Lingkungan. Program ini berfokus pada pengelolaan limbah kurban yang ramah lingkungan serta edukasi kepada masyarakat tentang pentingnya menjaga kelestarian alam selama pelaksanaan ibadah kurban. Dengan mengusung semangat keberlanjutan, program ini berhasil memberikan dampak positif di tengah-tengah masyarakat.</p>\n<p style=\"text-align: justify;\">Dalam pelaksanaannya, <em>Green Idul Adha</em> melibatkan berbagai elemen masyarakat untuk memastikan setiap bagian dari proses kurban, mulai dari penyembelihan hingga pengelolaan limbah, dilakukan secara berkelanjutan. Limbah organik seperti sisa daging dan tulang diolah menjadi kompos, sedangkan kulit hewan dimanfaatkan untuk kerajinan. Selain itu, program ini juga mempromosikan penggunaan kantong ramah lingkungan sebagai pengganti plastik dalam pembagian daging kurban. Langkah-langkah ini dinilai efektif dalam mengurangi dampak negatif terhadap lingkungan.</p>\n<p style=\"text-align: justify;\">Apresiasi yang diberikan oleh Majelis Lingkungan ini menjadi motivasi bagi para mahasiswa untuk terus mengembangkan program serupa di masa mendatang. Dengan dukungan dari masyarakat dan lembaga terkait, <em>Green Idul Adha</em> diharapkan dapat menjadi inspirasi bagi komunitas lain untuk mengintegrasikan nilai-nilai keberlanjutan dalam setiap aspek kehidupan, termasuk dalam pelaksanaan ibadah.</p>', 1, 'green-idul-adha-dapat-apresiasi-majelis-lingkungan', '2024-11-25 07:41:49', '2024-11-25 07:41:49'),
(3, 'Prodi Informatika Pemenang Juara 1 Gemastik 2024', '<p style=\"text-align: justify;\">Program Studi Informatika kembali mengukir prestasi gemilang dengan meraih Juara 1 pada ajang bergengsi GEMASTIK 2024. Kompetisi Nasional Bidang Teknologi Informasi dan Komunikasi ini mempertemukan talenta terbaik mahasiswa dari seluruh Indonesia. Tim Prodi Informatika berhasil mengungguli ratusan tim lainnya melalui inovasi teknologi yang relevan dengan tema tahun ini, yaitu <em>\"Transformasi Digital untuk Indonesia Maju\"</em>.</p>\n<p style=\"text-align: justify;\">Dalam kompetisi tersebut, tim Informatika menghadirkan solusi berbasis kecerdasan buatan untuk mendukung efisiensi sektor pendidikan. Inovasi mereka, sebuah platform yang mampu menganalisis kebutuhan pembelajaran secara personal, mendapatkan pujian dari para juri atas manfaatnya yang luas dan implementasi teknologinya yang canggih. Proyek ini tidak hanya menunjukkan penguasaan teknis, tetapi juga kepekaan terhadap isu-isu sosial yang dihadapi masyarakat Indonesia.</p>\n<p style=\"text-align: justify;\">Keberhasilan ini menjadi bukti nyata kualitas pendidikan yang ditawarkan oleh Prodi Informatika. Selain mengharumkan nama universitas, pencapaian ini juga memotivasi mahasiswa lain untuk terus berinovasi dan berkontribusi dalam pembangunan bangsa melalui teknologi. Selamat kepada Tim Informatika atas prestasi yang luar biasa ini!</p>', 1, 'prodi-informatika-pemenang-juara-1-gemastik-2024', '2024-11-25 07:42:10', '2024-11-25 07:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1732546549),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1732546549;', 1732546549),
('77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:2;', 1734415822),
('77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1734415822;', 1734415822),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1734411252),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1734411252;', 1734411252);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cooperations`
--

CREATE TABLE `cooperations` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cooperations`
--

INSERT INTO `cooperations` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '01JF9FEM2SEEMBEYE162A6RMEN.png', '2024-11-25 07:37:19', '2024-12-16 21:54:03'),
(2, '01JF9FFMVSMQ8RCHKWRK1BF3EJ.png', '2024-11-25 07:37:30', '2024-12-16 21:54:37'),
(3, '01JF9FH28A6G8KH3E5QFWRX491.png', '2024-11-25 07:37:40', '2024-12-16 21:55:23'),
(4, '01JF9FJ2Y14Q0DQJW6MQQYMGFX.png', '2024-11-25 07:37:53', '2024-12-16 21:55:57'),
(5, '01JF9FK4SSM5JFAKSBFYVSJK9X.png', '2024-11-25 07:38:08', '2024-12-16 21:56:31'),
(6, '01JF9FMD4RJEG1TQ5AC2MRZ4YE.png', '2024-11-25 07:38:20', '2024-12-16 21:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<h3>Laboratorium Sistem dan Teknologi Informasi</h3>\n<p style=\"text-align: justify;\">Laboratorium Sistem dan Teknologi Informasi berfokus kepada pengembangan sistem Informasi antara lain Enterprise System, Business Process Management, Business Modelling, Data and Knowledge Management, dan Information System Management. Lab STI juga diharapkan dapat menjadi wadah berbagai riset keahlian Sistem Informasi mulai dari aspek strategis, manajemen proyek, peningkatan performa proses bisnis dengan dukungan SI/TI sampai pada evaluasi kinerja TI dalam mendukung organisasi.</p>\n<h4>Topik Penelitian</h4>\n<ul>\n<li>IT Adoption in Healthcare</li>\n<li>Gamification in Health Apps</li>\n<li>Mobile Health (Wearable Device in Healthcare)</li>\n<li>Big Data in HealthCare</li>\n<li>Internet of Things</li>\n<li>User Centred Design</li>\n<li>Usability Testing</li>\n<li>User Requirement Analysis and Design</li>\n<li>E-government and E-governance</li>\n<li>E-learning</li>\n<li>Health CareData Mining</li>\n</ul>\n<h3>Pengurus Laboratorium</h3>\n<ul>\n<li>Elfan Efendi, S.Kom., M.Kom.</li>\n</ul>', '01JF9KE5EXPZ6Y4KWKTA6K78W8.png', '2024-11-25 07:32:35', '2024-12-16 23:03:42'),
(2, '<h3>Laboratorium ICD</h3>\n<p style=\"text-align: justify;\">Laboratorium ICD adalah laboratorium yang digunakan untuk pembelajaran ilmu kesehatan dan diagnosis penyakit serta tindakan yang harus dilakukan. Lab ini sebagai dasar penunjang dalam pembuatan teknologi kesehatan berbasis kecerdasan buatan.</p>\n<h4>Topik Penelitian</h4>\n<ul>\n<li>e-Rekam Medik</li>\n<li>Sistem Pakar diagnosa penyakit</li>\n</ul>\n<h3>Pengurus Laboratorium</h3>\n<ul>\n<li>Taufan Fadhilah Iskandar, M.Kom</li>\n</ul>', '01JF9KF8ZMRHAZ04BPAQSQY9J9.png', '2024-11-25 07:33:36', '2024-12-16 23:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_gmaps` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `image`, `link_instagram`, `link_youtube`, `link_linkedin`, `link_facebook`, `alamat`, `email`, `wa`, `link_gmaps`, `created_at`, `updated_at`) VALUES
(1, '01JF9G3ADAWG75PS4QJA4S8DCS.png', 'https://www.instagram.com/itshafidh_', 'https://www.youtube.com', 'https://www.linkedin.com/in', 'https://www.facebook.com', 'Jl. Teknik Kimia, Keputih, Kec. Sukolilo, Surabaya, Jawa Timur 60111', 'admin@b-university.ac.id', '+62 878-7777-9999', 'https://maps.app.goo.gl/MLXaYywySJgQM6mn7', '2024-11-25 07:36:20', '2024-12-16 22:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `greetings`
--

CREATE TABLE `greetings` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `greetings`
--

INSERT INTO `greetings` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">B-University, yang berdiri pada tahun 2021 di Surabaya, telah berkembang menjadi sebuah perguruan tinggi yang berkomitmen tinggi terhadap kualitas pendidikan. Dengan tiga fakultas utama, yaitu Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik, kami berusaha untuk memberikan pendidikan yang holistik dan relevan dengan kebutuhan zaman.<br><br>Menghadapi tantangan global seperti revolusi industri 4.0, kami di B-University berfokus pada pengembangan literasi data, teknologi, dan manusia, yang dipadukan dengan nilai-nilai moral yang kuat. Kami yakin bahwa kombinasi ini akan menghasilkan lulusan yang kompeten, berintegritas, dan siap bersaing di kancah internasional.<br><br>Selain itu, B-University juga menerapkan tata kelola universitas yang baik (Good University Governance) dan bertekad untuk menjadi pusat keunggulan akademik. Visi kami adalah mencetak lulusan yang tidak hanya unggul dalam bidangnya masing-masing, tetapi juga memiliki jiwa sosiopreneur yang mampu memberikan dampak positif bagi masyarakat luas.<br><br>Kami percaya bahwa dengan semangat kebersamaan dan dedikasi yang tinggi, B-University akan terus berkembang menjadi universitas yang tidak hanya berprestasi dalam akademik tetapi juga berkontribusi nyata dalam pembangunan masyarakat yang lebih baik. Semoga Allah SWT selalu memberikan petunjuk dan kekuatan kepada kita semua dalam setiap langkah kita.</p>', '01JF9K9BSY1RAJ7BC5HCR3CX82.png', '2024-11-25 07:30:52', '2024-12-16 23:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">B-University didirikan pada tahun 2021 di Surabaya, sebagai respons terhadap tantangan besar yang dihadapi dunia pendidikan akibat pandemi COVID-19 pada tahun 2020. Pandemi ini tidak hanya mengganggu berbagai sektor kehidupan, tetapi juga mempercepat transformasi digital dalam dunia pendidikan. Menyadari perlunya inovasi dan adaptasi cepat terhadap perubahan ini, para pendiri B-University mengambil langkah berani untuk mendirikan sebuah institusi pendidikan yang mampu menghadapi era baru.<br><br>Dengan visi untuk menciptakan lembaga pendidikan yang fleksibel, adaptif, dan berorientasi pada masa depan, B-University dirancang untuk memenuhi kebutuhan pendidikan di era digital. Tiga fakultas utama didirikan: Fakultas Ilmu Kesehatan, Fakultas Ekonomi dan Bisnis, serta Fakultas Teknik. Fakultas-fakultas ini dipilih untuk memberikan pendidikan yang relevan dengan tuntutan global dan kebutuhan masyarakat akan tenaga profesional yang kompeten.<br><br>Dalam waktu singkat, B-University berhasil menarik perhatian sebagai institusi yang inovatif dan responsif terhadap perkembangan zaman. Dengan pendekatan pembelajaran yang mengintegrasikan teknologi, keterampilan praktis, dan nilai-nilai etika, B-University bertujuan untuk mencetak lulusan yang siap menghadapi tantangan global dan memberikan kontribusi positif bagi masyarakat.<br><br>Kini, meskipun masih berusia muda, B-University terus berupaya memperluas dampaknya dalam dunia pendidikan, berpegang pada prinsip bahwa krisis dapat menjadi peluang untuk menciptakan sesuatu yang lebih baik dan lebih kuat.</p>', '01JF9G024AASH2HXZD8CPFHZV3.png', '2024-11-25 07:28:48', '2024-12-16 22:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `nama`, `nidn`, `pendidikan`, `jabatan`, `email`, `topik`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Elfan Efendi, S.Kom., M.Kom.', '0728089410', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer', 'elfanefendi88@gmail.com', 'Software Engineering', '01JF9KJ797PHERVYWBX3E3C9F6.png', '2024-11-25 07:50:36', '2024-12-16 23:05:55'),
(2, 'Ahmad Hafidh Ayatullah, M.Kom', '0728089411', 'D4 Teknik Informatika - POLINEMA | S2 Teknik Informatika - ITS', 'Junior Lecturer dan PJ Kerjasama Prodi Teknik Informatika', 'ahmad.hafidhayatullah@gmail.com', 'Artificial Intelligence, Machine Learning, Deep Learning', '01JF9KKCP7G5HA6YN0S5D64MSN.png', '2024-11-25 07:51:22', '2024-12-16 23:06:34'),
(3, 'Della Reno Rinaldi, S.Kom., M.Sc.', '0728089412', 'S1 Teknik Informatika - ITS | S2 Teknik Informatika - UGM', 'Junior Lecturer dan Unit Penjaminan Mutu Prodi Teknik Informatika', 'della@gmail.com', 'Network Security', '01JF9KMMMN2MGEMYA0YA0JTFSP.png', '2024-11-25 07:52:40', '2024-12-16 23:07:15'),
(4, 'Taufan Fadhilah Iskandar, S.Kom., M.Kom.', '0728089413', 'S1 Teknik Informatika Telkom University | S2 Informatika ITS', 'Asisten Ahli', 'taufan@gmail.com', 'Keamanan Data dan Data Mining', '01JF9KPDBR6VJRWE1QAXWK7W0P.png', '2024-11-25 07:53:49', '2024-12-16 23:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_06_160150_create_cooperations_table', 1),
(5, '2024_11_06_160239_create_students_table', 1),
(6, '2024_11_06_160424_create_lectures_table', 1),
(7, '2024_11_06_160538_create_admins_table', 1),
(8, '2024_11_06_160627_create_rektors_table', 1),
(9, '2024_11_06_160831_create_greetings_table', 1),
(10, '2024_11_06_160905_create_facilities_table', 1),
(11, '2024_11_06_160928_create_histories_table', 1),
(12, '2024_11_06_160949_create_aboutmes_table', 1),
(13, '2024_11_06_161012_create_visimisis_table', 1),
(14, '2024_11_06_161218_create_announcements_table', 1),
(15, '2024_11_06_161347_create_news_table', 1),
(16, '2024_11_06_164531_create_footers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `users_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Alat Pemotongan Adonan Kerupuk untuk UMKM J&R Dinoyo Malang', '<p style=\"text-align: justify;\">Mahasiswa Program Studi Teknik Mesin menciptakan alat pemotongan adonan kerupuk inovatif untuk mendukung produksi UMKM J&amp;R di Dinoyo, Malang. Alat ini dirancang untuk mempercepat proses pemotongan adonan, meningkatkan produktivitas, dan menjaga konsistensi ukuran kerupuk. Dengan teknologi sederhana namun efektif, alat ini mampu memangkas waktu produksi hingga 50% dibandingkan metode manual.</p>\n<p style=\"text-align: justify;\">Proyek ini merupakan bagian dari pengabdian masyarakat yang berfokus pada pemberdayaan UMKM. Melalui kolaborasi dengan pemilik UMKM J&amp;R, mahasiswa memastikan bahwa desain alat sesuai dengan kebutuhan operasional di lapangan. Selain itu, tim juga memberikan pelatihan teknis kepada mitra UMKM untuk memastikan alat dapat digunakan dan dirawat dengan optimal.</p>\n<p style=\"text-align: justify;\">Dengan adanya alat ini, diharapkan UMKM J&amp;R dapat meningkatkan skala produksinya sekaligus menjaga kualitas produk yang konsisten. Inovasi ini membuktikan bahwa kolaborasi antara akademisi dan pelaku usaha dapat memberikan manfaat nyata bagi masyarakat.</p>', '01JF9FTWD00XK2D1X4PCRG3HR7.jpeg', 1, 'alat-pemotongan-adonan-kerupuk-untuk-umkm-jr-dinoyo-malang', '2024-11-25 07:46:07', '2024-12-16 22:00:45'),
(2, 'Himpunan Informatika (HMTI) gelar kuliah praktisi', '<p style=\"text-align: justify;\">Himpunan Mahasiswa Teknik Informatika (HMTI) sukses menyelenggarakan <em>Kuliah Praktisi</em> dengan tema <em>\"Transformasi Digital di Era Industri 4.0\"</em>. Kegiatan ini menghadirkan narasumber dari praktisi teknologi terkemuka yang berbagi pengalaman dan wawasan terkait perkembangan teknologi terkini serta tantangan di dunia kerja.</p>\n<p style=\"text-align: justify;\">Kuliah praktisi ini bertujuan untuk menjembatani teori yang dipelajari mahasiswa di kampus dengan kebutuhan industri. Selain mendapatkan materi yang inspiratif, peserta juga diajak untuk berdiskusi langsung dengan narasumber mengenai peluang karier, pentingnya penguasaan teknologi baru, serta strategi untuk tetap relevan di tengah persaingan global.</p>\n<p style=\"text-align: justify;\">Kegiatan ini mendapat antusiasme tinggi dari mahasiswa, terlihat dari jumlah peserta yang melebihi kuota yang disediakan. Melalui acara seperti ini, HMTI berharap dapat terus mendukung pengembangan kompetensi mahasiswa agar siap bersaing di dunia profesional.</p>', '01JF9G8QTQ0DEB7HEECGNHBY8A.png', 1, 'himpunan-informatika-hmti-gelar-kuliah-praktisi', '2024-11-25 07:47:15', '2024-12-16 22:08:19'),
(3, 'Rapat Konsolidasi Pembentukan APSIMI (Asosiasi Program Studi Informatika Medis Indonesia)', '<p style=\"text-align: justify;\">Proses pembentukan APSIMI (Asosiasi Program Studi Informatika Medis Indonesia) memasuki tahap penting dengan digelarnya rapat konsolidasi nasional. Kegiatan yang berlangsung secara daring ini dihadiri oleh perwakilan dari berbagai perguruan tinggi yang memiliki Program Studi Informatika Medis di Indonesia. Rapat ini bertujuan untuk menyepakati visi, misi, dan langkah strategis dalam membangun asosiasi.</p>\n<p style=\"text-align: justify;\">Dalam rapat tersebut, peserta berdiskusi mengenai kebutuhan standar kompetensi lulusan, peluang kolaborasi penelitian, hingga pengembangan kurikulum berbasis teknologi terkini. Selain itu, pembentukan APSIMI diharapkan dapat menjadi wadah untuk memperkuat jejaring antarperguruan tinggi sekaligus memperjuangkan kepentingan program studi di tingkat nasional.</p>\n<p style=\"text-align: justify;\">Keberadaan APSIMI nantinya diharapkan dapat meningkatkan sinergi dalam pengembangan Informatika Medis di Indonesia. Langkah ini menjadi bukti komitmen bersama dalam mencetak lulusan yang mampu berkontribusi secara signifikan di bidang teknologi kesehatan.</p>', '01JF9GAW3V34V4H5T8M194X4VH.png', 1, 'rapat-konsolidasi-pembentukan-apsimi-asosiasi-program-studi-informatika-medis-indonesia', '2024-11-25 07:47:58', '2024-12-16 22:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rektors`
--

CREATE TABLE `rektors` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rektors`
--

INSERT INTO `rektors` (`id`, `nama`, `jabatan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Angga Setiawan', 'Rektor', '01JF9GJNZCM1BP8TRENV6D9YTX.png', '2024-11-25 07:43:13', '2024-12-16 22:13:45'),
(2, 'Galih Pratama', 'Wakil Rektor 1 ', '01JF9GM150QX48K49CZZH76512.png', '2024-11-25 07:43:32', '2024-12-16 22:14:29'),
(3, 'Ahmad Hafidh Ayatullah', 'Wakil Rektor 2', '01JF9GN7Z14WSSEC7345FD1R6Q.png', '2024-11-25 07:43:48', '2024-12-16 22:15:09'),
(4, 'Della Reno Rinaldi', 'Wakil Rektor 3', '01JF9GPCQ863SQH4RXHS9DQMJQ.png', '2024-11-25 07:44:33', '2024-12-16 22:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ANxszVeSVg4bjvrJx3P46LzsiwoLbmb7B5SJzsvb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2dnWWhUOHFNYTNUWWNDdlpTMTdwVHBvWmh0b0FBbGttZkN0QlJiSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734410774),
('kI3uxpd7rrFqH2sDKvZlRY4crN0wHmXzyDv2iEM1', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRlVuekR2OXhRTzNRWktReFRkSkpqMmRORW4wVVFQQWxESXlkUzF0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkbEh5cXM4bzJlQzVHdndJQWpCSGhqZVBFeUdmWjVlRUZPdDhTRXJqM0cyWDkzMmUzd3BSOUsiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1734418351),
('LpJD84w33D4EgWue2yLVazm9iJ3bgugvIVUJdyv7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0JFeXBaNjQ2bnd0bHFIUGJxdDZIbmxZUW5FOUViMExrRmNaNEU5OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734433033);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `namalengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapanggilan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `programstudi_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `namalengkap`, `namapanggilan`, `email`, `nomor_hp`, `jalur`, `image`, `programstudi_1`, `programstudi_2`, `created_at`, `updated_at`) VALUES
(1, 'Tes aja ini mahh', 'student', 'student@gmail.com', '082113287706', 'Reguler', '01JF9JNJWF2G1HGAGJ3MS7Q763.png', 'D3 FARMASI', 'S1 KEWIRAUSAHAAN', '2024-11-25 07:49:31', '2024-12-16 22:50:17'),
(2, 'Farhan Achmad Fadhillah', 'sdgs', 'admin@tes.com', '082113287706', 'KIP-K', '1734414563_orang-1.png', 'S1 Keperawatan', 'S1 Manajemen', '2024-12-16 22:49:23', '2024-12-16 22:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '12345678', NULL, '2024-11-25 07:26:23', '2024-11-25 07:26:23'),
(3, 'superadmin', 'superadmin@gmail.com', NULL, '$2y$12$lHyqs8o2eC5GvwIAjBHhjePEyGfZ5eEFOt8SErj3G2X932e3wpR9K', NULL, '2024-12-16 21:52:34', '2024-12-16 21:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint UNSIGNED NOT NULL,
  `visi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: center;\">\"Menjadi Universitas&nbsp;Yang Inovatif, Profesional dan Islami&rdquo;</p>', '<ol>\n<li>Menyelenggarakan pendidikan yang berkualitas dan berlandaskan nilai keislaman.</li>\n<li>Melaksanakan penelitian yang inovatif bagi kemajuan ilmu pengetahuan dan teknologi, industri dan kesehatan serta kemaslahatan umat.</li>\n<li>Melaksanakan pengabdian kepada masyarakat yang berbasis industri kesehatan.</li>\n<li>Memberikan dasar moral-religius terhadap pengembangan ilmu pengetahuan, teknologi dan seni, serta pembinaan iman dan taqwa dalam rangka da&rsquo;wah islamiyah dan amar ma&rsquo;ruf nahi mungkar.</li>\n<li>Membangun kepercayaan dan mengembangkan kerjasama dengan berbagai pihak untuk meningkatkan kualitas pelaksanaan catur dharma perguruan tinggi.</li>\n</ol>', '[\"01JF9K1DAKT269YH9AKCRFJ6FD.png\",\"01JF9K1DAXEGEC55NXRZJ1WDZH.png\",\"01JF9K1DB4D4BDASMAQ52RES43.png\"]', '2024-11-25 07:30:14', '2024-12-16 22:56:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutmes`
--
ALTER TABLE `aboutmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`),
  ADD KEY `announcements_users_id_foreign` (`users_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cooperations`
--
ALTER TABLE `cooperations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greetings`
--
ALTER TABLE `greetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_users_id_foreign` (`users_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rektors`
--
ALTER TABLE `rektors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutmes`
--
ALTER TABLE `aboutmes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cooperations`
--
ALTER TABLE `cooperations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `greetings`
--
ALTER TABLE `greetings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rektors`
--
ALTER TABLE `rektors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
