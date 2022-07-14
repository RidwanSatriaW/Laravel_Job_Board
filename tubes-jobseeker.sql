-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 06:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes-jobseeker`
--

-- --------------------------------------------------------

--
-- Table structure for table `clicks`
--

CREATE TABLE `clicks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clicks`
--

INSERT INTO `clicks` (`id`, `listing_id`, `user_agent`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '127.0.0.1', '2022-07-13 18:40:34', '2022-07-13 18:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_highlighted` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `slug`, `company`, `location`, `logo`, `is_highlighted`, `is_active`, `content`, `apply_link`, `created_at`, `updated_at`) VALUES
(1, 1, '3D Designer - Internship', '3d-designer-internship-9735', 'Synapsis.id', 'Jakarta Timur, Halim', '4qxCir2vj3sqlVwyaM6DUdT4Z1D1f9bzRrr4cGYM.png', 0, 1, '<ol>\n<li>Analyze the design requirement of the product from the user.</li>\n<li>Measure and re-draw the used component of the devices precisely.</li>\n<li>Design the 3D things using CAD and 3D Design Software.</li>\n<li>Present the Design Concept to the team.</li>\n<li>Build the prototype using 3D Printer.</li>\n</ol>', 'https://docs.google.com/forms/d/e/1FAIpQLSf2L56rrmNMq82DB8IONH8WqHJSF8eQ4wHWq6wt8RvOmues7Q/viewform', '2022-07-13 18:38:20', '2022-07-13 18:38:20'),
(2, 1, 'System Analist', 'system-analist-6010', 'PT Ecomindo', 'Jl. H.R. Rasuna Said Kav. C-22. Jakarta Selatan, 12940', '7nTwTTIU7Iwh7vWl3RsJ4r3a4dvvr64XTxgAhb52.jpg', 0, 1, '<ul>\n<li>Analyze busines requirements</li>\n<li>Communicate with lead and in House Analyst to define requirement</li>\n<li>Create spesification program and test case document</li>\n<li>Design ERD and create script for necessary database objects (tables, index, query, functions, etc)</li>\n<li>Communicate with programmer to develop application</li>\n<li>Conduct Unit test with developer</li>\n<li>Conduct QA test with QA</li>\n</ul>', 'https://ecomindoportal.powerappsportals.com/start/', '2022-07-13 18:50:22', '2022-07-13 18:50:22'),
(3, 1, 'Backend Developer', 'backend-developer-5916', 'PT. Global Prima Textilindo', 'Kebon Jeruk, Jakarta Barat', 'fvyWqueHngkRdjXSVuqoHn2gPQxmtrLTYOMWSG6S.jpg', 0, 1, '<ol>\n<li>pengalaman minimal 1 tahun</li>\n<li>terbiasa menggunakan rest api</li>\n<li>terbiasa menggunakan git</li>\n<li>mampu bekerjasama dalam tim</li>\n<li>siap bekerja dibawah tekanan </li>\n<li>onsite</li>\n</ol>', 'https://docs.google.com/forms/d/e/1FAIpQLSesKcM66BxRNCBqleqf3NWamrgo8IM8CDHkBd28vxpRZq8YvQ/viewform', '2022-07-13 19:02:57', '2022-07-13 19:02:57'),
(4, 1, 'UI/UX DESIGNER', 'uiux-designer-9306', 'PT Hadid Parama Indonesia', 'Depan Ruko Green Junction, Citraland Utara Palma Grandia K1 No 2, Sememi, Kec. Benowo, Kota SBY, Jawa Timur', 'zsjqurhKKXYXXH2rpdLtVMDzsoG02t69LP1x5nt4.jpg', 0, 1, '<p>1.Mandiri dalam bekerja dan belajar\n2.Siap belajar hal-hal baru\n3.Mampu meletakkan ego demi suksesnya kerjasama tim.\n4.Memiliki skill berkomunikasi yang baik\n5.Memiliki passion untuk membuat produk bermanfaat yang digunakan puluhan juta pengguna.\n6.Berpengalaman dalam mendesain UI/UX aplikasi website maupun mobile\n7.Siap bekerja di lokasi Sidoarjo</p>', 'https://boscod.com/hiring-ui-ux/', '2022-07-13 19:09:20', '2022-07-13 19:09:20'),
(5, 1, 'Dosen Tetap Program Studi S1 Sistem Informasi', 'dosen-tetap-program-studi-s1-sistem-informasi-4118', 'Universitas Bakrie', 'Kawasan Rasuna Epicentrum, Jl. H. R. Rasuna Said No.2, RT.2/RW.5, Karet, Kecamatan Setiabudi, Kuningan, Daerah Khusus Ibukota Jakarta', 'iISPj383916Qlpc9ivlZMDAqD3vQhyFGvh7AnAPZ.png', 0, 1, '<ol>\n<li>Sehat jasmani dan rohani.</li>\n<li>Memiliki jiwa dan semangat untuk menjadi tenaga pendidik. </li>\n<li>Mempunyai kemampuan bekerjasama yang baik.</li>\n<li>Bersedia bekerja penuh waktu / Full Time.</li>\n<li>Pendidikan S2 atau S3 dari PTN/PTS/PT LN terkemuka. </li>\n<li>Fresh Graduate/atau berpengalaman baik dibidang akademik maupun praktisi (memiliki NIDN/JJA/Serdos)</li>\n<li>Usia maksimal 45 tahun untuk S3, dan 35 tahun untuk S2</li>\n<li>Memiliki kemampuan berkomunikasi dalam Bahasa Inggris dibuktikan dengan Score TOEFL minimal 500 atau IELTS dengan score minimal 5.</li>\n<li>Mempunyai softskills yang baik </li>\n<li>Bersedia melaksanakan tridharma perguruan tinggi (pengajaran, penelitian dan pengabdian masyarakat)</li>\n</ol>', 'https://docs.google.com/forms/d/e/1FAIpQLSf3kP6S1wTHd_kmOt2IWDWX9vMDRIdN6SgRGnmaZaIGM2gYwQ/viewform', '2022-07-13 19:14:33', '2022-07-13 19:14:33'),
(6, 1, 'PHP/NODE.JS PROGRAMMER', 'phpnodejs-programmer-6368', 'PT. Visi Satu Teknologi', 'Jl. Pakel Ruko Mulyo Mandiri No.9, Klodran Indah, Banyuanyar, Kec. Banjarsari, Kota Surakarta', 'lhYDAMmJqB5uEABhvnvjjh7LbY3jAhtFjA2Db6NN.jpg', 0, 1, '<ul>\n<li>Pengalaman atau menguasai bahasa pemrograman PHP (Pengalaman project dipersilahkan melamar)</li>\n<li>Pengalaman Node JS menjadi nilai tambah</li>\n<li>Familiar dengan HTML 5, CSS, dan Javascript</li>\n<li>Menguasai framework CI, Nest JS, Next JS, React menjadi nilai tambah</li>\n<li>Fresh-graduated dipersilahkan melamar</li>\n<li>Penempatan di Solo</li>\n</ul>', 'https://docs.google.com/forms/d/e/1FAIpQLScx4Xb_4ICsVzZnBYSvhuFsxtLAvgL5xbEcBekrgeIi0JhDaQ/viewform', '2022-07-13 19:18:02', '2022-07-13 19:18:02'),
(7, 1, 'IT Programmer', 'it-programmer-8565', 'PT. AUTORENT LANCAR SEJAHTERA (MOBIRENT)', 'Jl. Bojong Raya Blok B No.122 Rawa Buaya Cengkareng Jakarta Barat', '1qWulTv7NyNp6anC8F2o1B576OJBveDbTNp8QrtX.png', 0, 1, '<ol>\n<li>Menguasai ASP .NET C#</li>\n<li>Berpengalaman membangun system Front End dan Back End</li>\n<li>Berpengalaman dengan Microsft SQL Server</li>\n<li>Berpengalaman dengan Java Script, HTML, dan CSS</li>\n<li>Mengerti konsep OOP, RESTful API</li>\n<li>Menguasai Angular, ReactJs, Vue (nilai plus)</li>\n<li>Menguasai Reporting Tools (nilai plus)</li>\n</ol>', 'https://mobirent.id/id/contact.php?subject=Tentang%20rekruitmen', '2022-07-13 19:28:58', '2022-07-13 19:28:58'),
(8, 1, 'Flutter Developer', 'flutter-developer-2270', 'PT Kharisma Agri Inovasi', 'Cibanteng, Ciampea, Bogor, Jawa Barat', 'wUU4cwVTPzY0oX4ZBUPm1ZVn9jgyCiqtsojplR6f.png', 0, 1, '<ul>\n<li>Pendidikan D3/D4/S1 Jurusan Computer Science/ Teknik Informatika</li>\n<li>Usia maksimal 25 tahun</li>\n<li>Memiliki pengalaman minimal 1 tahun</li>\n<li>Memiliki ilmu di bidang peternakan merupakan nilai plus</li>\n<li>Outsourcing Job selama 1 bulan</li>\n<li>Penempatan Bogor,Jawa Barat</li>\n</ul>', 'https://docs.google.com/forms/d/e/1FAIpQLScbY0pLBEpwGAevTJzB9cGmcDjMspVmUguqs58LV1RbXht9ig/viewform', '2022-07-13 19:32:30', '2022-07-13 19:32:30'),
(9, 1, 'FULLSTACK DEVELOPER', 'fullstack-developer-1141', 'PT Qwords Company International', 'Jl. Blotan Kayen No.18 , Rt/Rw: 03/40, Blotan Wedomartani, Barat.Lap.Kayen 5km utara Stadion No.1, Krajan, Maguwoharjo, Kec. Ngemplak, Kabupaten Sleman, Daerah Istimewa Yogyakarta', 'ye7I96ktBdIxzu3VqGzw9VJH62yxF4w7ecYny8KV.png', 0, 1, '<ul>\n<li>Minimum 2 years of working experience, fresh graduates with projects are welcome</li>\n<li>Familiar with WordPress, Javascript, HTML/HTML5, CSS3, Framework ReactJS, PHP Framework (Laravel and Codeigniter), REST API, and MySQL</li>\n<li>Proficient Knowledge in the NodeJS environment is a plus</li>\n<li>Comfortable operating in a Linux environment</li>\n<li>Experience with version control systems like Git</li>\n<li>Excellent understanding of back end service (Microservice and MVC)</li>\n<li>Excellent analytical and time management skills</li>\n<li>Teamwork skills with a problem-solving attitude</li>\n<li>Willing to work on-site (Bandung)</li>\n</ul>', 'http://qwrd.so/recruitment', '2022-07-13 19:35:06', '2022-07-13 19:35:06'),
(10, 1, 'Network Engineer CCNA', 'network-engineer-ccna-3878', 'PT Swadharma Duta Data', 'Jl. Dewi Sartika No.262, RT.7/RW.5, Cawang, Kec. Kramat jati, Kota Jakarta Timur', 'rnDQhFxTkkdmUfe9dFtRx1oHrBa1vE6OisiAtS1c.png', 0, 1, '<ol>\n<li>Laki-Laki</li>\n<li>Pendidikan D3/S1 Jurusan IT (wajib)</li>\n<li>GPA min. 2,75</li>\n<li>Familiar dengan produk Cisco</li>\n<li>Memiliki sertifikasi Cisco CCNA International (wajib)</li>\n<li>Bersedia bekerja shifting</li>\n<li>Dapat bergabung segera/ASAP</li>\n<li>Jenis Pekerjaan: Penuh Waktu, Kontrak</li>\n<li>Panjang kontrak: 12 bulan</li>\n</ol>', 'https://m5.apply.indeed.com/beta/indeedapply/form/resume', '2022-07-13 19:44:59', '2022-07-13 19:44:59'),
(11, 1, 'Product Manager Lead (Payment)', 'product-manager-lead-payment-7320', 'PT TOKOPEDIA', 'Kompleks Ruko Graha Handaya Unit R, S, T, Jalan Raya Pejuangan no. 12-A, Kebon Jeruk, Jakarta', 'nVaRqKB1wReNoOZXzUkpsBhwpoJWuokIfsTCZ8GY.png', 0, 1, '<ol>\n<li>Drive product vision and prioritize roadmap for a tribe based on market opportunity and shape the future</li>\n<li>Manage data driven prioritization to ensure timely execution.</li>\n<li>Provide appropriate coaching and development feedback to product team.</li>\n<li>Engage closely and drive collaboration with cross functional team (engineers, designers, and business)</li>\n<li>Develop improvement and solutions to support the growth of products.</li>\n<li>Act as a product evangelist to build awareness of Tokopedia\'s competitive position to deliver products that recognized best in the industry.</li>\n</ol>', 'https://www.tokopedia.com/careers/product/a62b011fe9c267', '2022-07-13 19:57:28', '2022-07-13 19:57:28'),
(12, 1, 'Copywriter Intern', 'copywriter-intern-7567', 'PT TOKOPEDIA', 'Kompleks Ruko Graha Handaya Unit R, S, T, Jalan Raya Pejuangan no. 12-A, Kebon Jeruk, Jakarta', 'yvG4YjmdtFlV2voDzotPhEvfegOLp0gKu3bk5Uou.png', 0, 1, '<ol>\n<li>Write product-related copy for the web, including product titles, detailed descriptions, and enhanced product information.</li>\n<li>Improve the quality of product information across our e-commerce experience to aid our customers with their purchasing decisions.</li>\n<li>Ensure brand consistency with compelling written content that strengthens and maintains our brand\'s voice and tone across the e-commerce platform.</li>\n<li>Assess own work as well as incorporate revisions; execute all corrections from team and review for brand guidelines and editorial quality assurance.</li>\n<li>Create and maintain effective communications material.\nAdhere to stringent deadlines to ensure smooth flow of projects; manage time and multiple projects efficiently to contribute to team goals.</li>\n</ol>', 'https://www.tokopedia.com/careers/marketing/a62bc37e189931', '2022-07-13 20:35:33', '2022-07-13 20:35:33'),
(13, 1, 'ADMINISTRASI', 'administrasi-2678', 'YAMAHA INDONESIA MOTOR MANUFACTURING', 'JL. DR KRT RADJIMAN WIDYODININGRAT RT/RW 009-06 RAWA TERATE, CAKUNG JAKARTA TIMUR', 'AcMWK7yfRJJOZdRJff8KHMs9A6GZKjjbsGajkr1j.png', 0, 1, '<ol>\n<li>Wanita, D3 Akuntansi / Manajemen Keuangan</li>\n<li>Teliti dan jujur</li>\n<li>Memiliki minat pada bidang administrasi</li>\n<li>Penempatan : Yogyakarta</li>\n</ol>', 'https://www.yamaha-motor.co.id/career/job-vacancies/d3/', '2022-07-13 20:38:48', '2022-07-13 20:38:48'),
(14, 1, 'Database Engineer', 'database-engineer-5982', 'Bank BCA', 'Bekasi, Jakarta, Surabaya, DIY ( Lokasi Test)', 'tCQ89MwwBKjMEkkdq1Jr9lN8HZHggj6QQLfQCQW5.jpg', 0, 1, '<ol>\n<li>Minimal lulusan S1 yang berkaitan dengan Teknik Informatika dan Sistem Informasi</li>\n<li>IPK minimal 2.75</li>\n<li>Usia maksimal 30 tahun</li>\n<li>Memiliki pemahaman yang kuat dalam konsep database, lebih disukai bila pernah melakukan manajemen/administrasi database\nMemiliki pengetahuan dalam pengoperasian sistem operasi seperti Windows, Unix, dan Linux</li>\n<li>Memiliki pengetahuan mengenai teknologi database seperti Oracle, SQL, PostgreSQL, dan MongoDB</li>\n<li>Memiliki pengetahuan mengenai Big Data dan infrastruktur Big Data.</li>\n<li>Bersedia ditempatkan di Jakarta / Tangerang</li>\n</ol>', 'https://karir.bca.co.id/karir/detail/database-engineer', '2022-07-13 20:45:13', '2022-07-13 20:45:13'),
(15, 1, 'PPIC Admin', 'ppic-admin-5073', 'PT INDOFOOD FORTUNA MAKMUR', 'Jl. Candi Raya Blok F8-F9, Purwoyoso, Kec. Ngaliyan, Kota Semarang,', 'dv9L4MlNrHHiV6Yu3L5M2WbF4JrcvB4hAvsBjAZ9.png', 0, 1, '<p>Syarat :</p>\n<ol>\n<li>Sehat, Dapat bekerja dalam tim, Komunikatif, Berpengalaman di PPIC min 1 tahun</li>\n<li>Memahami sistem penggunaan SAP, Memiliki pengetahuan mengenai perencanaan dan proses produksi</li>\n<li>Memiliki pengetahuan mengenai IT / program perencanaan, Memiliki kemampuan komunikasi dan kepribadian interpersonal yang baik</li>\n</ol>\n<p>Jobdesc</p>\n<ol>\n<li>Menyiapkan data dan membuat jadwal produksi sesuai dengan hasil production planning meeting</li>\n<li>Membuat laporan-laporan bulanan, mingguan, harian dan laporan lain yang diperlukan</li>\n<li>Membuat Purchase Requisition melalui SAP, Memonitor persediaan stock barang dan akurasi data inventori</li>\n<li>Melakukan follow up data yang berhubungan dengan material produksi sampai dengan job order</li>\n</ol>', 'https://e-recruitment.indofood.com/190Register/frmRegister.aspx', '2022-07-13 20:50:10', '2022-07-13 20:50:10'),
(16, 1, 'Civil Engineer', 'civil-engineer-4164', 'PT INDOFOOD FORTUNA MAKMUR', 'Jl. Candi Raya Blok F8-F9, Purwoyoso, Kec. Ngaliyan, Kota Semarang', 'TFvX5LnSk8ocX5zqjdLvy1RaqfQ28PFm94uiqyoj.png', 0, 1, '<p>Job Requirement</p>\n<ul>\n<li>Lulusan Teknik Sipil</li>\n<li>Usia Maks 30</li>\n<li>Diutamakan berpengalaman</li>\n<li>Disiplin dan Tanggung Jawab</li>\n</ul>\n<p>Job Description</p>\n<ul>\n<li>Membantu Technical Spv dalam realisasi TEchnical Job Order dari Dept Lain</li>\n<li>Membuat rencana kerja Teknik PU (Pekerjaan Umum)</li>\n<li>Mengatur dan mengawasi Pekerjaan Teknik PU</li>\n<li>Memelihara, menjaga dan mengamankan asset perusahaan yang berkaitan dengan Teknik</li>\n<li>Bertanggung jawab atas realisasi Technical Job Order dari Dept lain</li>\n</ul>', 'https://e-recruitment.indofood.com/110JobVacancy/frmJobVacancy.aspx', '2022-07-13 20:53:15', '2022-07-13 20:53:15'),
(17, 1, 'HSE Supervisor', 'hse-supervisor-1533', 'PT Indofood Fortuna Makmur', 'Jl. Candi Raya Blok F8-F9, Purwoyoso, Kec. Ngaliyan, Kota Semarang', 'UDtLU2ztn8BMvwm1j3TKH1pQmdx9qSxrGHQ7ZBtS.png', 0, 1, '<p>Job Requirement\n• Max age 35 years old.\n• Candidate must possess at least Bachelor\'s Degree in Public Health Science, Environmental/Health/Safety or equivalent\n• At least 3 Year(s) of working experience in the related field is required for this position.\n• Required Skill(s): SMK3, OHSAS 18001, ISO 14001, 5S, Risk assessment, UKL-UPL, Fire Safety, Environment Audit, Safety and health management, first aid\n• Willing to be placed in Tangerang, Cakung (Jakarta) and Purwakarta.</p>\n<p>Job Description\nDo all HSE procedures and protocol in the plant.</p>', 'https://e-recruitment.indofood.com/110JobVacancy/frmJobVacancy.aspx', '2022-07-13 20:56:05', '2022-07-13 20:56:05'),
(18, 1, 'Driver Distribution', 'driver-distribution-3895', 'PT INDOFOOD FORTUNA MAKMUR', 'Jl. Candi Raya Blok F8-F9, Purwoyoso, Kec. Ngaliyan, Kota Semarang', 'OIAg1jqh5f7jBVyGVCcO0EHMgKzZhqCwrt5WwHgM.png', 0, 1, '<p>Job Requirement</p>\n<blockquote>\n<p>memiliki SIM B1\nMengerti dengan mesin</p>\n</blockquote>\n<p>Job Description</p>\n<blockquote>\n<p>Melakukan Pengiriman Barang\nMelakukan service rutin</p>\n</blockquote>', 'https://e-recruitment.indofood.com/110JobVacancy/frmJobVacancy.aspx', '2022-07-13 20:57:53', '2022-07-13 20:57:53'),
(19, 1, 'Business Development and Partnership - ShopeeMall Campaign Management', 'business-development-and-partnership-shopeemall-campaign-management-1962', 'PT Shopee International Indonesia', 'Indonesia - Jakarta', '34A2XMuWKdtPXFv4SFzzLJe531ABwTQPxD89xBYD.jpg', 0, 1, '<p>Deskripsi Pekerjaan:</p>\n<ol>\n<li>Assisting in weekly Shopee Mall campaign planning\nLiaising with Marketing and Business Development teams for campaign execution</li>\n<li>Applying best-practice in campaign types and mechanisms to maximise campaign results</li>\n<li>Tracking campaign results, providing campaign learnings and constantly improving campaign execution based on those learnings\nAssisting in managing Shopee Mall campaign projects with clearly-defined Key Performance Indicators and timeline</li>\n</ol>\n<p>Persyaratan:</p>\n<ol>\n<li>Bachelor\'s degree from any major\nMinimum 3-5 years of work experience either in management consulting, FMCG, media agency, e-commerce industry, or has the passion in the e-commerce industry</li>\n<li>Experience with business development, marketing campaign management will be an advantage</li>\n<li>Strong analytical skills and a self-starter</li>\n</ol>', 'https://careers.shopee.co.id/apply?id=3598&dep_name=Business%20Development%20and%20Partnerships&job_name=Business%20Development%20and%20Partnership%20-%20ShopeeMall%20Campaign%20Management&is_ats=false&job_type=1', '2022-07-13 21:02:10', '2022-07-13 21:02:10'),
(20, 1, 'Management Trainee', 'management-trainee-8374', 'PT. SEMARANG AUTOCOMP MANUFACTURING INDONESIA', 'JL. Raya Walisongo Km. 9.8, Tugurejo, Semarang, Tugurejo, Tugu, Semarang', 'KD2m2FDwF3s83JTOEBEQh745cCAcOKoyJtMXWnsi.jpg', 0, 1, '<p>-S1 Teknik ( Semua Jurusan )\n-Mempunyai pengalaman bekerja di industri manufacture\n-Mempunyai skill negosiasi, teliti dan cekatan\n-Mampu berbahasa Inggris aktif dan pasif\n-Bersedia bekerja di bawah tekanan\n-Bersedia ditempatkan di Mayong Jepara\n-Menguasai Ms.Office</p>', 'https://docs.google.com/forms/d/e/1FAIpQLSep8q7BwNSLiIAAcjvpt0RclV43AcLv86-PtZoXjlL29ThpzA/viewform', '2022-07-13 21:13:51', '2022-07-13 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `listing_tag`
--

CREATE TABLE `listing_tag` (
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_tag`
--

INSERT INTO `listing_tag` (`listing_id`, `tag_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 11),
(5, 12),
(5, 13),
(6, 14),
(6, 15),
(6, 16),
(7, 17),
(7, 18),
(7, 19),
(8, 20),
(8, 21),
(8, 22),
(9, 23),
(9, 24),
(9, 25),
(10, 26),
(10, 27),
(10, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(12, 33),
(12, 34),
(13, 35),
(13, 36),
(13, 37),
(14, 38),
(14, 39),
(15, 40),
(15, 41),
(15, 42),
(16, 43),
(16, 44),
(16, 41),
(16, 45),
(17, 46),
(17, 41),
(17, 47),
(18, 48),
(18, 49),
(18, 41),
(19, 50),
(19, 51),
(19, 52),
(20, 53),
(20, 41),
(20, 54);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_03_000001_create_customer_columns', 1),
(4, '2019_05_03_000002_create_subscriptions_table', 1),
(5, '2019_05_03_000003_create_subscription_items_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_06_29_160030_create_listings_table', 1),
(9, '2022_06_29_160051_create_clicks_table', 1),
(10, '2022_06_29_160126_create_tags_table', 1),
(11, '2022_06_29_160207_create_listing_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '#WereHiring#3Ddesigner', 'werehiring3ddesigner', '2022-07-13 18:38:20', '2022-07-13 18:38:20'),
(2, 'SystemAnalist', 'systemanalist', '2022-07-13 18:50:22', '2022-07-13 18:50:22'),
(3, 'Data Engineer', 'data-engineer', '2022-07-13 18:50:22', '2022-07-13 18:50:22'),
(4, 'Lokerdata', 'lokerdata', '2022-07-13 18:50:22', '2022-07-13 18:50:22'),
(5, 'Backend', 'backend', '2022-07-13 19:02:57', '2022-07-13 19:02:57'),
(6, 'Backenddeveloper', 'backenddeveloper', '2022-07-13 19:02:57', '2022-07-13 19:02:57'),
(7, 'Laravel', 'laravel', '2022-07-13 19:02:57', '2022-07-13 19:02:57'),
(8, 'UIUX', 'uiux', '2022-07-13 19:09:20', '2022-07-13 19:09:20'),
(9, 'UiuxDesigner', 'uiuxdesigner', '2022-07-13 19:09:20', '2022-07-13 19:09:20'),
(10, 'LokerUIUX', 'lokeruiux', '2022-07-13 19:09:20', '2022-07-13 19:09:20'),
(11, 'LokerDosen', 'lokerdosen', '2022-07-13 19:14:33', '2022-07-13 19:14:33'),
(12, 'LokerDosenSistemInformasi', 'lokerdosensisteminformasi', '2022-07-13 19:14:33', '2022-07-13 19:14:33'),
(13, 'SIdosen', 'sidosen', '2022-07-13 19:14:33', '2022-07-13 19:14:33'),
(14, 'NodeJsLoker', 'nodejsloker', '2022-07-13 19:18:02', '2022-07-13 19:18:02'),
(15, 'ProgrammerNodeJs', 'programmernodejs', '2022-07-13 19:18:02', '2022-07-13 19:18:02'),
(16, 'PhpProgrammer', 'phpprogrammer', '2022-07-13 19:18:02', '2022-07-13 19:18:02'),
(17, 'LokeITProgrammer', 'lokeitprogrammer', '2022-07-13 19:28:58', '2022-07-13 19:28:58'),
(18, 'LokerFrontEnd', 'lokerfrontend', '2022-07-13 19:28:58', '2022-07-13 19:28:58'),
(19, 'LokerBackend', 'lokerbackend', '2022-07-13 19:28:58', '2022-07-13 19:28:58'),
(20, 'LokerFlutter', 'lokerflutter', '2022-07-13 19:32:30', '2022-07-13 19:32:30'),
(21, 'FlutterDeveloper', 'flutterdeveloper', '2022-07-13 19:32:30', '2022-07-13 19:32:30'),
(22, 'FlutterMobileApps', 'fluttermobileapps', '2022-07-13 19:32:30', '2022-07-13 19:32:30'),
(23, 'Fullstackdeveloper', 'fullstackdeveloper', '2022-07-13 19:35:06', '2022-07-13 19:35:06'),
(24, 'LokerFullStack', 'lokerfullstack', '2022-07-13 19:35:06', '2022-07-13 19:35:06'),
(25, 'FrontBackEngineer', 'frontbackengineer', '2022-07-13 19:35:06', '2022-07-13 19:35:06'),
(26, 'LokerJaringan', 'lokerjaringan', '2022-07-13 19:44:59', '2022-07-13 19:44:59'),
(27, 'LokerNetwork', 'lokernetwork', '2022-07-13 19:44:59', '2022-07-13 19:44:59'),
(28, 'NetworkEngineer', 'networkengineer', '2022-07-13 19:44:59', '2022-07-13 19:44:59'),
(29, 'ProductmanagerLoker', 'productmanagerloker', '2022-07-13 19:57:28', '2022-07-13 19:57:28'),
(30, 'ProdukLead', 'produklead', '2022-07-13 19:57:28', '2022-07-13 19:57:28'),
(31, 'ManagerLead', 'managerlead', '2022-07-13 19:57:28', '2022-07-13 19:57:28'),
(32, 'ManagerLoker', 'managerloker', '2022-07-13 19:57:28', '2022-07-13 19:57:28'),
(33, 'CopyWriterLoker', 'copywriterloker', '2022-07-13 20:35:33', '2022-07-13 20:35:33'),
(34, 'JobCopyWriter', 'jobcopywriter', '2022-07-13 20:35:33', '2022-07-13 20:35:33'),
(35, 'LokerAdmin', 'lokeradmin', '2022-07-13 20:38:48', '2022-07-13 20:38:48'),
(36, 'AdminYamaha', 'adminyamaha', '2022-07-13 20:38:48', '2022-07-13 20:38:48'),
(37, 'AdminD3', 'admind3', '2022-07-13 20:38:48', '2022-07-13 20:38:48'),
(38, 'KarirBCA', 'karirbca', '2022-07-13 20:45:13', '2022-07-13 20:45:13'),
(39, 'LokerDataEngineerIndonesia', 'lokerdataengineerindonesia', '2022-07-13 20:45:13', '2022-07-13 20:45:13'),
(40, 'LokerPPIC', 'lokerppic', '2022-07-13 20:50:10', '2022-07-13 20:50:10'),
(41, 'LokerSemarang', 'lokersemarang', '2022-07-13 20:50:10', '2022-07-13 20:50:10'),
(42, 'LokerAdminPPIC', 'lokeradminppic', '2022-07-13 20:50:10', '2022-07-13 20:50:10'),
(43, 'Civilloker', 'civilloker', '2022-07-13 20:53:15', '2022-07-13 20:53:15'),
(44, 'Lokersipil', 'lokersipil', '2022-07-13 20:53:15', '2022-07-13 20:53:15'),
(45, 'Civilengineerloker', 'civilengineerloker', '2022-07-13 20:53:15', '2022-07-13 20:53:15'),
(46, 'LokerSupervisor', 'lokersupervisor', '2022-07-13 20:56:05', '2022-07-13 20:56:05'),
(47, 'LokerHSESupervisor', 'lokerhsesupervisor', '2022-07-13 20:56:05', '2022-07-13 20:56:05'),
(48, 'LokerDriver', 'lokerdriver', '2022-07-13 20:57:53', '2022-07-13 20:57:53'),
(49, 'LokerSupir', 'lokersupir', '2022-07-13 20:57:53', '2022-07-13 20:57:53'),
(50, 'BusinessCareer', 'businesscareer', '2022-07-13 21:02:10', '2022-07-13 21:02:10'),
(51, 'ShopeeCareer', 'shopeecareer', '2022-07-13 21:02:10', '2022-07-13 21:02:10'),
(52, 'JobBusiness', 'jobbusiness', '2022-07-13 21:02:10', '2022-07-13 21:02:10'),
(53, 'ManagementTraineeLoker', 'managementtraineeloker', '2022-07-13 21:13:51', '2022-07-13 21:13:51'),
(54, 'LokerSAMI', 'lokersami', '2022-07-13 21:13:51', '2022-07-13 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Synapsis', 'recruitment@synapsis.id', NULL, '$2y$10$nabaQlWeZl2ZyayiVq7PP.zJFpv1CJt.c2Nru6TZmNvfg0BdfGQ5i', NULL, '2022-07-13 18:38:17', '2022-07-13 18:38:18', 'cus_M3NlJ7WPDhgDKH', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
