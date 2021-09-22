-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Sep 2021 pada 17.56
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nouva_pos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_acara`
--

CREATE TABLE `admin_acara` (
  `id_acara` int(11) NOT NULL,
  `acara` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_acara`
--

INSERT INTO `admin_acara` (`id_acara`, `acara`, `tanggal`) VALUES
(1, 'rangkaian acara 1, rangkaian acara 2', '10/9/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_daftar_kupon`
--

CREATE TABLE `admin_daftar_kupon` (
  `id_daftar_kupon` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `kode_kupon` varchar(255) NOT NULL,
  `tenant` varchar(50) NOT NULL,
  `nama_tenant` varchar(255) NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_daftar_kupon`
--

INSERT INTO `admin_daftar_kupon` (`id_daftar_kupon`, `id_user`, `kode_kupon`, `tenant`, `nama_tenant`, `nominal`, `foto`, `created_at`, `updated_at`) VALUES
(0, '12', '#Youth-o4ag-001', 'distro', 'jxloth', '125000', '61363c75b7e6c.jpg', '2021-09-06 16:06:13', '2021-09-06 23:06:13'),
(0, '13', '#Youth-ebo5-001', 'studio music', 'jam studio', '125000', '6136a033ac833.png', '2021-09-06 23:11:47', '2021-09-07 06:11:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_kupon`
--

CREATE TABLE `admin_kupon` (
  `id_kupon` int(11) NOT NULL,
  `judul` text NOT NULL,
  `sub_arti` text NOT NULL,
  `tata_cara` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_kupon`
--

INSERT INTO `admin_kupon` (`id_kupon`, `judul`, `sub_arti`, `tata_cara`, `gambar`) VALUES
(1, '#YOUTHFESTBERHADIAH', 'Foto nota belanja di distro, coffee shop\r\ndan barbershop di Kota Denpasar', 'Tata cara mengikuti #UNDIANYUK1 yaitu :\r\nMelakukan transaksi di distro, coffee shop dan barbershop di Kota Denpasar\r\n Minimal transaksi sebesar Rp. 15.000\r\nMemasukan informasi mengenai transaksi berupa lokasi belanja, nominal transaksi, tanggal transaksi dan foto nota\r\nUndian akan otomatis terlihat pada halaman kupon', '612fa46f483e7.png'),
(6, '#YOUTHFESTBERHADIAH 2', 'hadiah2', 'tatacara2', '612fc1a471e7b.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_lomba`
--

CREATE TABLE `admin_lomba` (
  `id_lomba` int(11) NOT NULL,
  `acara` varchar(255) NOT NULL,
  `deksripsi` text NOT NULL,
  `pendaftaran` varchar(255) NOT NULL,
  `technicalmeeting` varchar(255) NOT NULL,
  `pelaksanaan_lomba` varchar(255) NOT NULL,
  `link_daftar` varchar(255) NOT NULL,
  `link_lengkap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_lomba`
--

INSERT INTO `admin_lomba` (`id_lomba`, `acara`, `deksripsi`, `pendaftaran`, `technicalmeeting`, `pelaksanaan_lomba`, `link_daftar`, `link_lengkap`) VALUES
(1, 'D\'youth Pantomime Competition', 'Denpasar Meprawerti adalah eksistensi budaya dengan memberikan ruang bebas berekspresi kepada pelaku seni dan budaya tradisional yang dominan adalah anak muda, serta penguatan dalam penggalian tradisi seni kerawitan dan budaya bersaudara melalui proses seni balaganjur yang melibatkan anak muda dan memberikan nilai yang berbeda kepada pelaku seni untuk tetap mempertahankan eksistensi dari kesenian dan kebudayaan tradisionalnya serta tetap dapat melestarikan budaya.\r\n\r\n', '6 Agustus 2021 -27 Agustus 2021', '29 Agustus 2021, 25 September 2021', '1 Oktober 2021 - 3 Oktober 2021', 'https://dyouthfest.com/dyouth-pantomime-competition/', 'https://api.whatsapp.com/send?phone=6282146834481&text=Halo saya ingin mendaftar tentang Lomba Pantomime '),
(2, 'Lomba Tari Tradisional (Condong, Baris, Oleg)', 'Teruna Teruni Denpasar Festival merupakan ajang pagelaran seni yang diadakan oleh Teruna Teruni Denpasar dan bekerjasama dengan Pemerintah Kota Denpasar dalam rangka membangkitkan semangat generasi muda untuk ikut melestarikan seni dan budaya Bali. Teruna Teruni Denpasar mengajak generasi muda untuk tetap produktif di tengah pandemi COVID-19 dengan menyalurkan bakat, kreativitas, dan inovasi mereka yang dituangkan dalam Teruna Teruni Denpasar Festival. Tidak hanya itu, acara ini diselenggarakan di Tukad Bindu, Kesiman, Denpasar dengan tujuan membangkitkan kembali destinasi wisata yang ada di Kota Denpasar. Dalam acara ini salah satu lomba yang akan diadakan yaitu lomba Tari Bali.  Lomba Tari Bali merupakan salah satu cabang lomba yang dilaksanakan oleh Teruna Teruni Denpasar untuk memeriahkan acara Teruna Teruni Denpasar Festival. Kegiatan ini menjadi salah satu bentuk untuk membangkitkan semangat kreativitas, seni, dan bakat dari generasi milenial Kota Denpasar serta dapat menumbuhkan rasa cinta pada kebudayaan lokal sehingga dapat melestarikan seni dan budaya Bali khususnya pada bidang seni tari.   Beberapa tari Bali yang dilombakan diantaranya Tari Condong, Tari Baris, dan Tari Oleg Tamulilingan. Tarian ini tentu sudah sangat populer dan diminati khususnya di kalangan generasi muda Kota Denpasar. Tari Bali tidak hanya terkenal di Bali, namun Tari Bali ini juga sudah terkenal di kancah Internasonal. Kesenian Bali memang selalu memberikan pesona tersendiri bagi masyarakat lokal maupun internasional. Arus globalisasi modern pada saat ini tidak menutup kemungkinan akan berdampak pada kesenian di Pulau Dewata Bali.  Oleh karena itu, melalui ajang perlombaan ini kami dari panitia pelaksana Teruna Teruni Denpasar Festival, yang dimana memiliki maksud dan tujuan untuk melaksanakan kegiatan ini tiada lain untuk membangkitkan semangat generasi muda di masa Pandemi COVID-19 ini untuk selalu berkreativitas dan mewadahi potensi-potensi generasi muda yang ingin melestarikan kesenian Bali.', '1 September 2021 – 30 September 2021', 'Hari/Tanggal : Sabtu,2 Oktober 2021, Waktu : 09.00 WITA – Selesai, Tempat : Platform Zoom Meeting ,Pakaian : Menyesuaikan', '16 Oktober 2021', 'https://dyouthfest.com/lomba-tari-tradisional/', 'https://docs.google.com/forms/d/1v_G3QZ6Q1UsLtnWjT0UJhQL1unHZ9UiXJ3vfg6o9zls/viewform?edit_requested=true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_table`
--

CREATE TABLE `admin_table` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin_table`
--

INSERT INTO `admin_table` (`id_admin`, `username`, `password`) VALUES
(1, 'admina', 'admin12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_gelang` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_cell` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_saldo` decimal(50,0) DEFAULT 0,
  `customer_status` varchar(100) NOT NULL DEFAULT 'OUT',
  `customer_address` varchar(255) NOT NULL,
  `customer_avatar` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_gelang`, `customer_name`, `customer_cell`, `customer_email`, `customer_saldo`, `customer_status`, `customer_address`, `customer_avatar`, `timestamp`) VALUES
(21, 'C1D86F34', 'Jhonson', '8801954796214', 'jhonson@gmail.com', '447500', 'OUT', 'Australia', '1602741643.png', '2020-10-06 06:44:54'),
(41, '8FF657A8', 'register', '0846754849', 'email@email.com', '763750', 'IN', '', 'image_placeholder.png', '2020-10-06 06:44:54'),
(30, '3956E10E', 'yuu', '8846464646', 'testini@dong.in', '1017250', 'OUT', 'jalan jaalan', '1602741613.png', '2020-10-06 06:44:54'),
(42, '917D5C34', 'putu agus', '0815433515', 'email@email.com', '1212750', 'OUT', 'ajalan jalan jalan', 'image_placeholder.png', '2020-10-06 06:44:54'),
(59, '11B97434', 'ahay', '46644646', 'yaga@hai.vi', '0', 'IN', 'guu', '1603176978.png', '2020-10-15 04:24:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense`
--

CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL,
  `expense_name` varchar(255) NOT NULL,
  `expense_note` varchar(255) NOT NULL,
  `expense_amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) NOT NULL,
  `expense_time` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `expense`
--

INSERT INTO `expense` (`expense_id`, `expense_name`, `expense_note`, `expense_amount`, `expense_date`, `expense_time`, `timestamp`) VALUES
(4, 'Snacks Bil', 'Snacks Bill', '50', '2020-05-12', '11:01 AM', '2020-06-06 18:31:42'),
(5, 'Employee Salary', 'Employee Salary', '2000', '2020-05-12', '12:41 AM', '2020-06-06 18:31:42'),
(28, 'Employment Cost', 'cost for employee ', '5000', '2020-06-07', '21:42', '2020-07-02 12:57:46'),
(39, 'store', 'hj', '6778', '2020-07-07', '04:48 PM ', '2020-07-07 10:48:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_menu`
--

CREATE TABLE `home_menu` (
  `home_id` int(11) NOT NULL,
  `home_menu` varchar(255) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `menu_activity` varchar(255) NOT NULL,
  `authorized_user_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_menu`
--

INSERT INTO `home_menu` (`home_id`, `home_menu`, `menu_image`, `menu_activity`, `authorized_user_type`) VALUES
(1, 'PRODUCTS', 'products.png', 'com.app.onlinesmartpos.product.ProductActivity', 'admin,manager,resto'),
(2, 'SUPPLIERS', 'supplier.png', 'com.app.onlinesmartpos.suppliers.SuppliersActivity', 'admin,manager'),
(3, 'CUSTOMERS', 'customer.png', 'com.app.onlinesmartpos.customers.CustomersActivity', 'admin,manager,kasir'),
(4, 'VISITORS', 'visitor.png', 'com.app.onlinesmartpos.visitors.VisitorNfcActivity', 'admin,manager,security'),
(5, 'POS', 'pos_terminal.png', 'com.app.onlinesmartpos.pos.PosActivity', 'admin,manager,resto,kasir,waitress'),
(6, 'ALL WALLET', 'wallet.jpg', 'com.app.onlinesmartpos.wallet.WalletActivity', 'admin,manager,resto,kasir,waitress'),
(7, 'ALL ORDER', 'order_list.png', 'com.app.onlinesmartpos.orders.OrdersActivity', 'admin,manager,resto,kasir,waitress'),
(8, 'REPORT', 'report.png', 'com.app.onlinesmartpos.report.ReportActivity', 'admin,manager,security'),
(9, 'ABOUT US', 'nouvacore.png', 'com.app.onlinesmartpos.about.AboutActivity', 'admin,manager,resto,kasir,waitress,security'),
(10, 'SETTINGS', 'settings.png', 'com.app.onlinesmartpos.settings.SettingsActivity', 'admin,manager,resto,kasir,waitress,security');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `product_name` text NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_weight` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_order_date` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `invoice_id`, `product_name`, `product_quantity`, `product_weight`, `product_price`, `product_order_date`, `product_id`, `product_image`, `timestamp`) VALUES
(514, 'INV120201593361714', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-06-28', '7', '1591954736.png', '2020-06-28 16:28:38'),
(513, 'INV120201593361714', 'Chicken Topa', '2', '250 g', '100', '2020-06-28', '6', '1591619186.png', '2020-06-28 16:28:38'),
(512, 'INV120201593361180', 'Pasta', '1', '195 g', '27000', '2020-05-28', '3', '1591629834.png', '2020-07-02 09:28:58'),
(511, 'INV120201593361180', 'Chicken Biryani', '2', '500 g', '270', '2020-06-28', '5', 'chicken_biryani.jpg', '2020-06-28 16:19:44'),
(509, 'INV120201593361180', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-05-28', '7', '1591954736.png', '2020-07-02 09:29:03'),
(510, 'INV120201593361180', 'Poco F1', '1', '195 pcs', '27000', '2020-06-28', '4', 'poco_f1.png', '2020-06-28 16:19:44'),
(508, 'INV120201593361180', 'Chicken Topa', '2', '250 g', '100', '2020-06-28', '6', '1591619186.png', '2020-06-28 16:19:44'),
(507, 'INV120201593360678', 'Fried Rice With Chicken Fry', '2', '200 g', '200', '2020-06-28', '7', '1591954736.png', '2020-06-28 16:11:22'),
(506, 'INV120201593360678', 'Chicken Topa', '1', '250 g', '100.50', '2020-06-28', '6', '1591619186.png', '2020-07-02 12:55:16'),
(515, 'INV820201594011412', 'water', '1', '2 L', '15', '2020-07-06', '19', '1593866858.png', '2020-07-06 04:56:56'),
(516, 'INV820201594011412', 'plag', '1', '3 g', '567', '2020-07-06', '20', '1593866842.png', '2020-07-06 04:56:56'),
(517, 'INV820201594011412', 'Poco F1', '1', '195 pcs', '27000', '2020-07-06', '4', 'poco_f1.png', '2020-07-06 04:56:56'),
(518, 'INV820201594011412', 'Chicken Biryani', '1', '500 g', '270', '2020-07-06', '5', 'chicken_biryani.jpg', '2020-07-06 04:56:56'),
(519, 'INV820201594011412', 'Pasta', '1', '195 g', '27000', '2020-07-06', '3', '1591629834.png', '2020-07-06 04:56:56'),
(535, 'INV820201595760757', 'Banana 43', '6', '2 g', '222', '2020-07-26', '11', '1593670819.png', '2020-07-26 10:52:36'),
(537, 'INV820201596090831', 'basket', '1', '3 pcs', '567', '2020-07-30', '20', '1593866842.png', '2020-07-30 06:33:51'),
(523, 'INV820201594018936', 'Test', '1', '20 g', '999', '2020-07-06', '29', 'image_placeholder.png', '2020-07-06 07:02:20'),
(524, 'INV820201594019134', 'plag', '4', '3 g', '567', '2020-07-06', '20', '1593866842.png', '2020-07-06 07:05:39'),
(525, 'INV820201594019134', 'water', '2', '2 L', '15', '2020-07-06', '19', '1593866858.png', '2020-07-06 07:05:39'),
(526, 'INV820201595481825', 'juice', '1', '22 pcs', '120', '2020-07-23', '27', '1594012986.png', '2020-07-23 05:23:46'),
(527, 'INV820201595481825', 'chicken', '1', '1.5 Kg', '5', '2020-07-23', '28', '1594012951.png', '2020-07-23 05:23:46'),
(528, 'INV820201595594903', 'juice', '1', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 12:48:26'),
(529, 'INV820201595594903', 'chicken', '1', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 12:48:26'),
(530, 'INV820201595595293', 'juice', '2', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 12:54:56'),
(531, 'INV820201595595293', 'chicken', '2', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 12:54:56'),
(532, 'INV820201595596848', 'juice', '1', '22 pcs', '120', '2020-07-24', '27', '1594012986.png', '2020-07-24 13:20:49'),
(533, 'INV820201595596848', 'chicken', '1', '1.5 Kg', '5', '2020-07-24', '28', '1594012951.png', '2020-07-24 13:20:49'),
(536, 'INV820201596090831', 'chicken eggs , hen eggs', '1', '2 g', '222', '2020-07-30', '14', '1593670631.jpg', '2020-07-30 06:33:51'),
(538, 'INV820201596090831', 'juice', '1', '1 pcs', '120', '2020-07-30', '27', '1594012986.png', '2020-07-30 06:33:51'),
(539, 'INV820201596098193', 'juice', '1', '1 pcs', '120', '2020-07-30', '27', '1594012986.png', '2020-07-30 08:36:31'),
(540, 'INV820201599614568', 'Spicy Pasta', '1', '1 pcs', '120', '2020-09-09', '27', '1591629834.png', '2020-09-09 01:22:48'),
(541, 'INV820201599614568', 'Chicken Topa', '1', '1.5 Kg', '5', '2020-09-09', '28', '1591619186.png', '2020-09-09 01:22:48'),
(542, 'INV820201599814943', 'Chicken Dum Biryani', '1', '2 g', '222', '2020-09-11', '14', 'chicken_biryani.jpg', '2020-09-11 09:02:24'),
(543, 'INV820201599814943', 'Chicken Topa', '1', '1.5 Kg', '5', '2020-09-11', '28', '1591619186.png', '2020-09-11 09:02:24'),
(544, 'INV820201599814943', 'Chicken Fried Rice', '1', '3 pcs', '567', '2020-09-11', '20', '1591954736.png', '2020-09-11 09:02:24'),
(545, 'INV820201599814943', 'Spicy Pasta', '1', '1 pcs', '120', '2020-09-11', '27', '1591629834.png', '2020-09-11 09:02:24'),
(546, 'INV820201600049214', 'Spicy Pasta', '1', '1 pcs', '120', '2020-09-14', '27', '1591629834.png', '2020-09-14 02:06:55'),
(547, 'INV820201600049239', 'Chicken Topa', '1', '1.5 Kg', '5', '2020-09-14', '28', '1591619186.png', '2020-09-14 02:07:19'),
(548, 'INV820201600418650', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-18', '20', '1591954736.png', '2020-09-18 08:44:10'),
(549, 'INV820201600658124', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 03:15:26'),
(550, 'INV820201600658124', 'Chicken Topa', '1', '1.5 Kg', '50000', '2020-09-21', '28', '1591619186.png', '2020-09-21 03:15:26'),
(551, 'INV820201600662448', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 04:27:29'),
(552, 'INV820201600662448', 'Chicken Topa', '1', '1.5 Kg', '50000', '2020-09-21', '28', '1591619186.png', '2020-09-21 04:27:29'),
(553, 'INV820201600662799', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 04:33:20'),
(554, 'INV820201600662946', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 04:35:48'),
(555, 'INV820201600663580', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 04:46:21'),
(556, 'INV820201600667106', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 05:45:08'),
(557, 'INV820201600667242', 'Chicken Dum Biryani', '2', '2 g', '75000', '2020-09-21', '14', 'chicken_biryani.jpg', '2020-09-21 05:47:23'),
(558, 'INV820201600667479', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-21', '14', 'chicken_biryani.jpg', '2020-09-21 05:51:22'),
(559, 'INV820201600668958', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-21', '14', 'chicken_biryani.jpg', '2020-09-21 06:15:59'),
(560, 'INV820201600669293', 'Chicken Topa', '1', '1.5 Kg', '50000', '2020-09-21', '28', '1591619186.png', '2020-09-21 06:21:35'),
(561, 'INV820201600680892', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-21', '27', '1591629834.png', '2020-09-21 09:34:53'),
(562, 'INV820201600751022', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-22', '20', '1591954736.png', '2020-09-22 05:03:42'),
(563, 'INV820201600751022', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-22', '14', 'chicken_biryani.jpg', '2020-09-22 05:03:42'),
(564, 'INV820201600838745', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-23', '27', '1591629834.png', '2020-09-23 05:25:47'),
(565, 'INV820201600838745', 'Chicken Topa', '1', '1.5 Kg', '50000', '2020-09-23', '28', '1591619186.png', '2020-09-23 05:25:47'),
(566, 'INV820201600838939', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-23', '14', 'chicken_biryani.jpg', '2020-09-23 05:29:01'),
(567, 'INV820201600838939', 'Chicken Fried Rice', '4', '3 pcs', '60000', '2020-09-23', '20', '1591954736.png', '2020-09-23 05:29:01'),
(568, 'INV820201600838939', 'Spicy Pasta', '4', '1 pcs', '72000', '2020-09-23', '27', '1591629834.png', '2020-09-23 05:29:01'),
(569, 'INV820201600838939', 'Chicken Topa', '3', '1.5 Kg', '50000', '2020-09-23', '28', '1591619186.png', '2020-09-23 05:29:01'),
(570, 'INV820201600846075', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-23', '20', '1591954736.png', '2020-09-23 07:27:57'),
(571, 'INV820201600846075', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-23', '14', 'chicken_biryani.jpg', '2020-09-23 07:27:57'),
(572, 'INV820201600911158', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-24', '27', '1591629834.png', '2020-09-24 01:32:38'),
(573, 'INV820201600911158', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-24', '14', 'chicken_biryani.jpg', '2020-09-24 01:32:38'),
(574, 'INV820201601197457', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-27', '14', 'chicken_biryani.jpg', '2020-09-27 09:04:17'),
(575, 'INV820201601197457', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-27', '27', '1591629834.png', '2020-09-27 09:04:17'),
(576, 'INV820201601259509', 'Spicy Pasta', '3', '1 pcs', '72000', '2020-09-28', '27', '1591629834.png', '2020-09-28 02:18:30'),
(577, 'INV820201601269668', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-28', '20', '1591954736.png', '2020-09-28 05:07:48'),
(578, 'INV820201601269668', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-28', '14', 'chicken_biryani.jpg', '2020-09-28 05:07:48'),
(579, 'INV820201601269668', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-09-28', '27', '1591629834.png', '2020-09-28 05:07:48'),
(580, 'INV820201601274591', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-28', '20', '1591954736.png', '2020-09-28 06:29:52'),
(581, 'INV820201601274591', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-28', '14', 'chicken_biryani.jpg', '2020-09-28 06:29:52'),
(582, 'INV820201601274591', 'Spicy Pasta', '2', '1 pcs', '72000', '2020-09-28', '27', '1591629834.png', '2020-09-28 06:29:52'),
(583, 'INV820201601284877', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-09-28', '20', '1591954736.png', '2020-09-28 09:21:18'),
(584, 'INV820201601284877', 'Spicy Pasta', '2', '1 null', '72000', '2020-09-28', '27', '1591629834.png', '2020-09-28 09:21:18'),
(585, 'INV820201601432921', 'Chicken Fried Rice', '1', '3 pcs', '60000', '2020-09-30', '20', '1591954736.png', '2020-09-30 02:28:43'),
(586, 'INV820201601432921', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-09-30', '14', 'chicken_biryani.jpg', '2020-09-30 02:28:43'),
(587, 'INV820201601452589', 'Chicken Dum Biryani', '5', '2 null', '75000', '2020-09-30', '14', 'chicken_biryani.jpg', '2020-09-30 07:56:29'),
(588, 'INV820201601452589', 'Spicy Pasta', '1', '1 null', '72000', '2020-09-30', '27', '1591629834.png', '2020-09-30 07:56:29'),
(589, 'INV820201601513354', 'Chicken Dum Biryani', '1', '2 g', '75000', '2020-10-01', '14', 'chicken_biryani.jpg', '2020-10-01 00:49:14'),
(590, 'INV820201601513354', 'Spicy Pasta', '1', '1 pcs', '72000', '2020-10-01', '27', '1591629834.png', '2020-10-01 00:49:14'),
(591, 'INV820201601543295', 'Spicy Pasta', '1', '1 null', '72000', '2020-10-01', '27', '1591629834.png', '2020-10-01 09:08:16'),
(592, 'INV820201601605462', 'Spicy Pasta', '2', '1 null', '72000', '2020-10-02', '27', '1591629834.png', '2020-10-02 02:24:23'),
(593, 'INV820201601606191', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-02', '14', 'chicken_biryani.jpg', '2020-10-02 02:36:31'),
(594, 'INV820201601606191', 'Chicken Fried Rice', '2', '3 null', '60000', '2020-10-02', '20', '1591954736.png', '2020-10-02 02:36:31'),
(595, 'INV820201601606191', 'Spicy Pasta', '1', '1 null', '72000', '2020-10-02', '27', '1591629834.png', '2020-10-02 02:36:31'),
(596, 'INV820201601624153', 'Spicy Pasta', '2', '2 null', '72000', '2020-10-02', '27', '1591629834.png', '2020-10-02 07:35:53'),
(597, 'INV820201601624153', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-02', '14', 'chicken_biryani.jpg', '2020-10-02 07:35:53'),
(598, 'INV820201601624792', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-02', '14', 'chicken_biryani.jpg', '2020-10-02 07:46:33'),
(599, 'INV820201601624792', 'Spicy Pasta', '1', '2 null', '72000', '2020-10-02', '27', '1591629834.png', '2020-10-02 07:46:33'),
(600, 'INV820201601624952', 'Chicken Fried Rice', '3', '3 null', '60000', '2020-10-02', '20', '1591954736.png', '2020-10-02 07:49:13'),
(601, 'INV820201601868363', 'Spicy Pasta', '1', '2 null', '72000', '2020-10-05', '27', '1591629834.png', '2020-10-05 03:26:04'),
(602, 'INV820201601868849', 'Chicken Dum Biryani', '2', '2 null', '75000', '2020-10-05', '14', 'chicken_biryani.jpg', '2020-10-05 03:34:11'),
(603, 'INV820201601868849', 'Spicy Pasta', '1', '2 null', '72000', '2020-10-05', '27', '1591629834.png', '2020-10-05 03:34:11'),
(604, 'INV820201601869463', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-05', '20', '1591954736.png', '2020-10-05 03:44:24'),
(605, 'INV820201601869463', 'Chicken Dum Biryani', '2', '2 null', '75000', '2020-10-05', '14', 'chicken_biryani.jpg', '2020-10-05 03:44:24'),
(606, 'INV820201601869519', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-05', '20', '1591954736.png', '2020-10-05 03:45:20'),
(607, 'INV820201601869519', 'Chicken Dum Biryani', '2', '2 null', '75000', '2020-10-05', '14', 'chicken_biryani.jpg', '2020-10-05 03:45:20'),
(608, 'INV720201602057713', 'Chicken Dum Biryani', '2', '2 null', '75000', '2020-10-07', '14', 'chicken_biryani.jpg', '2020-10-07 08:01:55'),
(609, 'INV720201602058234', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-07', '14', 'chicken_biryani.jpg', '2020-10-07 08:10:35'),
(610, 'INV820201602234689', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-09', '20', '1591954736.png', '2020-10-09 09:11:30'),
(611, 'INV820201602234689', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-09', '14', 'chicken_biryani.jpg', '2020-10-09 09:11:30'),
(612, 'INV820201602567861', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-13', '20', '1591954736.png', '2020-10-13 05:44:22'),
(613, 'INV820201602567861', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-13', '14', 'chicken_biryani.jpg', '2020-10-13 05:44:22'),
(614, 'INV820201602589561', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-13', '14', 'chicken_biryani.jpg', '2020-10-13 11:46:02'),
(615, 'INV820201602748067', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-15', '14', 'chicken_biryani.jpg', '2020-10-15 07:47:48'),
(616, 'INV820201602946295', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-17', '14', 'chicken_biryani.jpg', '2020-10-17 14:51:36'),
(617, 'INV820201603180075', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-20', '14', 'chicken_biryani.jpg', '2020-10-20 07:47:54'),
(618, 'INV820201603246722', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-21', '20', '1591954736.png', '2020-10-21 02:18:42'),
(619, 'INV820201603269293', 'Chicken Topa', '1', '1.5 null', '50000', '2020-10-21', '28', '1591619186.png', '2020-10-21 08:34:54'),
(620, 'INV820201603287799', 'Chicken Topa', '1', '1.5 null', '50000', '2020-10-21', '28', '1591619186.png', '2020-10-21 13:43:20'),
(621, 'INV820201603679455', 'Chicken Topa', '1', '1.5 null', '50000', '2020-10-26', '28', '1591619186.png', '2020-10-26 02:30:56'),
(622, 'INV820201603781892', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-27', '20', '1591954736.png', '2020-10-27 06:58:13'),
(623, 'INV820201603781892', 'Chicken Topa', '1', '1.5 null', '50000', '2020-10-27', '28', '1591619186.png', '2020-10-27 06:58:13'),
(624, 'INV820201603941880', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-29', '20', '1591954736.png', '2020-10-29 03:24:40'),
(625, 'INV820201603941880', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-29', '14', 'chicken_biryani.jpg', '2020-10-29 03:24:40'),
(626, 'INV820201603943446', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-29', '14', 'chicken_biryani.jpg', '2020-10-29 03:50:47'),
(627, 'INV820201603943446', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-29', '20', '1591954736.png', '2020-10-29 03:50:47'),
(628, 'INV820201603943871', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-29', '14', 'chicken_biryani.jpg', '2020-10-29 03:57:51'),
(629, 'INV820201603943871', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-29', '20', '1591954736.png', '2020-10-29 03:57:51'),
(630, 'INV820201603943943', 'Chicken Dum Biryani', '1', '2 null', '75000', '2020-10-29', '14', 'chicken_biryani.jpg', '2020-10-29 03:59:03'),
(631, 'INV820201603943943', 'Chicken Fried Rice', '1', '3 null', '60000', '2020-10-29', '20', '1591954736.png', '2020-10-29 03:59:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_time` varchar(255) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `order_payment_method` varchar(255) NOT NULL,
  `order_price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `served_by` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_list`
--

INSERT INTO `order_list` (`order_id`, `invoice_id`, `order_date`, `order_time`, `order_type`, `order_payment_method`, `order_price`, `discount`, `tax`, `customer_name`, `served_by`, `timestamp`) VALUES
(67, 'INV820201594011412', '2020-07-06', '10:56 AM', 'PICK UP', 'CASH', '54852.0', '85.2', '5485.2', 'Walk In Customer', 'Admin', '2020-07-06 04:56:56'),
(74, 'INV820201595595293', '2020-07-24', '06:54 PM', 'HOME DELIVERY', 'CASH', '250.0', '12.5', '12.5', 'Walk In Customer', 'Admin', '2020-07-24 12:54:56'),
(73, 'INV820201595594903', '2020-07-24', '06:48 PM', 'PERCEL', 'CARD', '125.0', '6.25', '6.25', 'Walk in Customer', 'Admin', '2020-07-24 12:48:26'),
(72, 'INV820201595481825', '2020-07-23', '11:23 AM', 'PICK UP', 'CASH', '125.0', '0.00', '12.5', 'Walk In Customer', 'Admin', '2020-07-23 05:23:46'),
(79, 'INV820201596098193', '2020-07-30', '02:36 PM', 'PICK UP', 'CASH', '120.0', '0.00', '6.0', 'Walk In Customer', 'Admin', '2020-07-30 08:36:31'),
(70, 'INV820201594018936', '2020-07-06', '01:02 PM', 'PICK UP', 'CASH', '999.0', '0.00', '99.9', 'Walk In Customer', 'Admin', '2020-07-06 07:02:20'),
(77, 'INV820201595760757', '2020-07-26', '04:52 PM', 'PICK UP', 'CASH', '1332.0', '0.00', '66.6', 'Walk In Customer', 'Admin', '2020-07-26 10:52:36'),
(71, 'INV820201594019134', '2020-07-06', '01:05 PM', 'PICK UP', 'CASH', '2298.0', '0.00', '229.8', 'Walk In Customer', 'Admin', '2020-07-06 07:05:39'),
(75, 'INV820201595596848', '2020-07-24', '07:20 PM', 'Table Booking', 'CARD', '125.0', '6.25', '6.25', 'Noor Mohammed Anik', 'Admin', '2020-07-24 13:20:49'),
(78, 'INV820201596090831', '2020-07-30', '12:33 PM', 'HOME DELIVERY', 'CASH', '909.0', '50', '45.45', 'Jhon Due', 'Admin', '2020-07-30 06:33:51'),
(80, 'INV820201599614568', '2020-09-09', '08:22 AM', 'PICK UP', 'CASH', '125.0', '0.00', '6.25', 'Walk In Customer', 'Admin', '2020-09-09 01:22:48'),
(81, 'INV820201599814943', '2020-09-11', '04:02 PM', 'PICK UP', 'CASH', '914.0', '0.00', '45.7', 'Walk In Customer', 'Admin', '2020-09-11 09:02:24'),
(82, 'INV820201600049214', '2020-09-14', '09:06 AM', 'Pre Order', 'CASH', '120.0', '0.00', '6.0', 'Jasim Uddin', 'Admin', '2020-09-14 02:06:55'),
(83, 'INV820201600049239', '2020-09-14', '09:07 AM', 'PICK UP', 'PAYPAL', '5.0', '0.00', '0.25', 'Walk In Customer', 'Admin', '2020-09-14 02:07:19'),
(84, 'INV820201600418650', '2020-09-18', '04:44 PM', 'PICK UP', 'CASH', '60000.0', '0.00', '3000.0', 'Walk In Customer', 'Admin', '2020-09-18 08:44:10'),
(85, 'INV820201600658124', '2020-09-21', '10:15 AM', 'PICK UP', 'Wristpay', '122000.0', '0.00', '6100.0', 'yuu (3956E10E)', 'Admin', '2020-09-21 03:15:26'),
(86, 'INV820201600662448', '2020-09-21', '11:27 AM', 'PICK UP', 'WRISTPAY', '122000.0', '0.00', '6100.0', '', 'Admin', '2020-09-21 04:27:29'),
(87, 'INV820201600662799', '2020-09-21', '11:33 AM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', '', 'Admin', '2020-09-21 04:33:20'),
(88, 'INV820201600662946', '2020-09-21', '11:35 AM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', '', 'Admin', '2020-09-21 04:35:48'),
(89, 'INV820201600663580', '2020-09-21', '11:46 AM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', 'Jhonson', 'Admin', '2020-09-21 04:46:21'),
(90, 'INV820201600667106', '2020-09-21', '12:45 PM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', 'Jhonson', 'Admin', '2020-09-21 05:45:08'),
(91, 'INV820201600667242', '2020-09-21', '12:47 PM', 'PICK UP', 'WRISTPAY', '150000.0', '0.00', '7500.0', 'anta', 'Admin', '2020-09-21 05:47:23'),
(92, 'INV820201600667479', '2020-09-21', '12:51 PM', 'PICK UP', 'WRISTPAY', '75000.0', '0.00', '3750.0', 'yuu', 'Admin', '2020-09-21 05:51:22'),
(93, 'INV820201600668958', '2020-09-21', '01:15 PM', 'PICK UP', 'WRISTPAY', '75000.0', '0.00', '3750.0', 'Jhonson', 'Admin', '2020-09-21 06:15:59'),
(94, 'INV820201600669293', '2020-09-21', '01:21 PM', 'PICK UP', 'WRISTPAY', '50000.0', '0.00', '2500.0', 'Jhonson, C1D86F34', 'Admin', '2020-09-21 06:21:35'),
(95, 'INV820201600680892', '2020-09-21', '04:34 PM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', 'Jhonson, C1D86F34', 'Admin', '2020-09-21 09:34:53'),
(96, 'INV820201600751022', '2020-09-22', '12:03 PM', 'PICK UP', 'WRISTPAY', '135000.0', '0.00', '6750.0', 'Jhonson, C1D86F34', 'Admin', '2020-09-22 05:03:42'),
(97, 'INV820201600838745', '2020-09-23', '01:25 PM', 'PICK UP', 'CARD', '122000.0', '0.00', '6100.0', 'anta caem, 8FF657A8', 'Admin', '2020-09-23 05:25:47'),
(98, 'INV820201600838939', '2020-09-23', '01:28 PM', 'PICK UP', 'CASH', '753000.0', '0.00', '37650.0', 'alex, 290C6427', 'Admin', '2020-09-23 05:29:01'),
(99, 'INV820201600846075', '2020-09-23', '03:27 PM', 'PICK UP', 'CASH', '135000.0', '0.00', '6750.0', 'alexz, 95128AF1', 'Admin', '2020-09-23 07:27:57'),
(100, 'INV820201600911158', '2020-09-24', '09:32 AM', 'PICK UP', 'CASH', '147000.0', '0.00', '7350.0', 'alex, 290C6427', 'Admin', '2020-09-24 01:32:38'),
(101, 'INV820201601197457', '2020-09-27', '05:04 PM', 'PICK UP', 'CASH', '147000.0', '0.00', '7350.0', 'bunga, 917D5C34', 'Admin', '2020-09-27 09:04:17'),
(102, 'INV820201601259509', '2020-09-28', '09:18 AM', 'PICK UP', 'WRISTPAY', '216000.0', '0.00', '10800.0', 'Jebs, 043D5EC2516380', 'Admin', '2020-09-28 02:18:30'),
(103, 'INV820201601269668', '2020-09-28', '01:07 PM', 'PICK UP', 'CASH', '207000.0', '0.00', '10350.0', 'sarah, 917D5C34', 'Admin', '2020-09-28 05:07:48'),
(104, 'INV820201601274591', '2020-09-28', '01:29 PM', 'PICK UP', 'WRISTPAY', '279000.0', '0.00', '13950.0', 'yuu, 3956E10E', 'Admin', '2020-09-28 06:29:52'),
(105, 'INV820201601284877', '2020-09-28', '04:21 PM', 'PICK UP', 'WRISTPAY', '204000.0', '0.00', '10200.0', 'yuu, 3956E10E', 'Admin', '2020-09-28 09:21:18'),
(106, 'INV820201601344148', '2020-09-29', '08:49 AM', 'PICK UP', 'WRISTPAY', '324000.0', '0.00', '16200.0', 'yuu, 3956E10E', 'Admin', '2020-09-29 01:49:08'),
(107, 'INV820201601432921', '2020-09-30', '10:28 AM', 'PICK UP', 'CASH', '135000.0', '0.00', '6750.0', 'eric, 84FC571C', 'Admin', '2020-09-30 02:28:43'),
(108, 'INV820201601452589', '2020-09-30', '02:56 PM', 'PICK UP', 'WRISTPAY', '447000.0', '0.00', '22350.0', 'yuu, 3956E10E', 'Admin', '2020-09-30 07:56:29'),
(109, 'INV820201601513354', '2020-10-01', '08:49 AM', 'PICK UP', 'CASH', '147000.0', '0.00', '7350.0', 'putu agus, 917D5C34', 'Admin', '2020-10-01 00:49:14'),
(110, 'INV820201601532626', '2020-10-01', '01:10 PM', 'PICK UP', 'WRISTPAY', '369000.0', '0.00', '18450.0', 'yuu, 3956E10E', 'Admin', '2020-10-01 06:10:27'),
(111, 'INV820201601541792', '2020-10-01', '03:43 PM', 'PICK UP', 'WRISTPAY', '555000.0', '0.00', '27750.0', 'yuu, 3956E10E', 'Admin', '2020-10-01 08:43:13'),
(112, 'INV820201601543295', '2020-10-01', '04:08 PM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', 'Jhonson, C1D86F34', 'Admin', '2020-10-01 09:08:16'),
(113, 'INV820201601605462', '2020-10-02', '09:24 AM', 'PICK UP', 'WRISTPAY', '339000.0', '0.00', '16950.0', 'yuu, 3956E10E', 'Admin', '2020-10-02 02:24:23'),
(114, 'INV820201601606191', '2020-10-02', '09:36 AM', 'PICK UP', 'WRISTPAY', '267000.0', '0.00', '13350.0', 'yuu, 3956E10E', 'Admin', '2020-10-02 02:36:31'),
(115, 'INV820201601624153', '2020-10-02', '02:35 PM', 'PICK UP', 'WRISTPAY', '219000.0', '0.00', '10950.0', 'Jhonson, C1D86F34', 'Admin', '2020-10-02 07:35:53'),
(116, 'INV820201601624792', '2020-10-02', '03:46 PM', 'PICK UP', 'CASH', '147000.0', '0.00', '7350.0', 'putu agus, 917D5C34', 'Admin', '2020-10-02 07:46:33'),
(117, 'INV820201601624952', '2020-10-02', '03:49 PM', 'PICK UP', 'WRISTPAY', '180000.0', '0.00', '9000.0', 'putu agus, 917D5C34', 'Admin', '2020-10-02 07:49:13'),
(118, 'INV820201601868363', '2020-10-05', '10:26 AM', 'PICK UP', 'WRISTPAY', '72000.0', '0.00', '3600.0', 'yuu, 3956E10E', 'Admin', '2020-10-05 03:26:04'),
(119, 'INV820201601868849', '2020-10-05', '10:34 AM', 'PICK UP', 'WRISTPAY', '222000.0', '0.00', '11100.0', 'yuu, 3956E10E', 'Admin', '2020-10-05 03:34:11'),
(120, 'INV820201601869463', '2020-10-05', '10:44 AM', 'PICK UP', 'WRISTPAY', '210000.0', '0.00', '10500.0', 'yuu, 3956E10E', 'Admin', '2020-10-05 03:44:24'),
(121, 'INV820201601869519', '2020-10-05', '10:45 AM', 'PICK UP', 'WRISTPAY', '210000.0', '0.00', '10500.0', 'yuu, 3956E10E', 'Admin', '2020-10-05 03:45:20'),
(122, 'INV720201602057713', '2020-10-07', '04:01 PM', 'PICK UP', 'CASH', '150000.0', '0.00', '7500.0', 'reg, 8FF657A8', 'cheef', '2020-10-07 08:01:55'),
(123, 'INV720201602058234', '2020-10-07', '04:10 PM', 'PICK UP', 'CASH', '75000.0', '0.00', '3750.0', 'reg, 8FF657A8', 'cheef', '2020-10-07 08:10:35'),
(124, 'INV820201602234689', '2020-10-09', '04:11 PM', 'PICK UP', 'WRISTPAY', '135000.0', '0.00', '6750.0', 'putu agus, 917D5C34', 'Admin', '2020-10-09 09:11:30'),
(125, 'INV820201602567861', '2020-10-13', '01:44 PM', 'PICK UP', 'WRISTPAY', '135000.0', '0.00', '6750.0', 'putu agus, 917D5C34', 'Admin', '2020-10-13 05:44:22'),
(126, 'INV820201602589561', '2020-10-13', '07:46 PM', 'PICK UP', 'WRISTPAY', '75000.0', '0.00', '3750.0', 'putu agus, 917D5C34', 'Admin', '2020-10-13 11:46:02'),
(127, 'INV820201602748067', '2020-10-15', '02:47 PM', 'PICK UP', 'CASH', '75000.0', '0.00', '3750.0', 'yuu (3956E10E)', 'Admin', '2020-10-15 07:47:48'),
(128, 'INV820201602946295', '2020-10-17', '10:51 PM', 'PICK UP', 'WRISTPAY', '75000.0', '0.00', '3750.0', 'putu agus, 917D5C34', 'Admin', '2020-10-17 14:51:36'),
(129, 'INV820201603180075', '2020-10-20', '03:47 PM', 'PICK UP', 'CASH', '75000.0', '0.00', '3750.0', 'putu agus (917D5C34)', 'Admin', '2020-10-20 07:47:54'),
(130, 'INV820201603246722', '2020-10-21', '09:18 AM', 'PICK UP', 'CASH', '60000.0', '0.00', '3000.0', 'yuu (3956E10E)', 'Admin', '2020-10-21 02:18:42'),
(131, 'INV820201603269293', '2020-10-21', '04:34 PM', 'PICK UP', 'CASH', '50000.0', '0.00', '2500.0', 'putu agus (917D5C34)', 'Admin', '2020-10-21 08:34:54'),
(132, 'INV820201603287799', '2020-10-21', '09:43 PM', 'PICK UP', 'CASH', '50000.0', '0.00', '2500.0', 'dian (84FC571C)', 'Admin', '2020-10-21 13:43:20'),
(133, 'INV820201603679455', '2020-10-26', '09:30 AM', 'PICK UP', 'CASH', '50000.0', '0.00', '2500.0', 'Jhonson (C1D86F34)', 'Admin', '2020-10-26 02:30:56'),
(134, 'INV820201603781892', '2020-10-27', '02:58 PM', 'PICK UP', 'CASH', '110000.0', '0.00', '11000.0', 'putu agus (917D5C34)', 'Admin', '2020-10-27 06:58:13'),
(135, 'INV820201603941880', '2020-10-29', '11:24 AM', 'PICK UP', 'CASH', '135000.0', '0.00', '13500.0', 'putu agus (917D5C34)', 'Admin', '2020-10-29 03:24:40'),
(136, 'INV820201603943446', '2020-10-29', '11:50 AM', 'PICK UP', 'CASH', '135000.0', '0.00', '13500.0', 'putu agus (917D5C34)', 'Admin', '2020-10-29 03:50:47'),
(137, 'INV820201603943871', '2020-10-29', '11:57 AM', 'PICK UP', 'CASH', '135000.0', '0.00', '13500.0', 'putu agus (917D5C34)', 'Admin', '2020-10-29 03:57:51'),
(138, 'INV820201603943943', '2020-10-29', '11:59 AM', 'PICK UP', 'CASH', '135000.0', '0.00', '13500.0', 'putu agus (917D5C34)', 'Admin', '2020-10-29 03:59:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` text NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_sell_price` decimal(50,0) NOT NULL,
  `product_weight` varchar(255) NOT NULL,
  `product_weight_unit_id` int(11) NOT NULL,
  `product_supplier_id` int(11) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_code`, `product_category_id`, `product_description`, `product_sell_price`, `product_weight`, `product_weight_unit_id`, `product_supplier_id`, `product_image`, `product_stock`, `timestamp`) VALUES
(14, 'Chicken Dum Biryani', 'eggs', 3, 'well & fresh', '75000', '2', 1, 15, 'chicken_biryani.jpg', 458, '2020-10-29 03:59:03'),
(27, 'Spicy Pasta', 'sst', 3, 'well and healthy', '72000', '2', 4, 15, '1591629834.png', 0, '2020-10-05 03:34:11'),
(28, 'Chicken Topa', '001', 3, 'fresh & good', '50000', '1.5', 2, 15, '1591619186.png', 1, '2020-10-27 06:58:13'),
(20, 'Chicken Fried Rice', 'chicken002', 5, 'Very testy foods', '60000', '3', 4, 15, '1591954736.png', 868, '2020-10-29 03:59:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `product_category_id` int(11) NOT NULL,
  `product_category_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`product_category_id`, `product_category_name`) VALUES
(1, 'Mobile'),
(3, 'Food & Drink'),
(5, 'vegetable'),
(9, 'Fish '),
(19, 'Baby food');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_contact` varchar(255) NOT NULL,
  `shop_email` varchar(255) NOT NULL,
  `shop_address` varchar(255) NOT NULL,
  `shop_timezone` varchar(255) DEFAULT NULL,
  `tax` varchar(11) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `shop_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `shop_contact`, `shop_email`, `shop_address`, `shop_timezone`, `tax`, `currency_symbol`, `shop_status`) VALUES
(1, 'KEKEB RESTO', '+812345678900', 'kekebresto@gmail.com', 'Bali, Indonesia', 'Asia/Makassar', '10', 'Rp. ', 'OPEN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `suppliers_id` int(11) NOT NULL,
  `suppliers_name` varchar(255) NOT NULL,
  `suppliers_contact_person` varchar(255) NOT NULL,
  `suppliers_cell` varchar(255) NOT NULL,
  `suppliers_email` varchar(255) NOT NULL,
  `suppliers_address` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`suppliers_id`, `suppliers_name`, `suppliers_contact_person`, `suppliers_cell`, `suppliers_email`, `suppliers_address`, `timestamp`) VALUES
(5, 'jon', 'Jamal', '01831758798', 'jamul@gmail.com', 'Iiuc', '2020-07-06 16:16:59'),
(19, 'Pepsi', 'Jhon', '88800891994', 'pepsi9@gmail.com', 'USA', '2020-07-30 06:31:14'),
(18, 'Addidas', 'Jhon due', '88085585588', 'addidas@gmail.com', 'USA', '2020-07-30 06:31:53'),
(15, 'Evaly', 'Jamil', '01831758799', 'evaly@gmail.com', 'Dhaka', '2020-07-25 15:36:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cell` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `born` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `category` varchar(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `otp` varchar(11) NOT NULL,
  `user_pin` varchar(11) NOT NULL,
  `kode_qr` varchar(255) NOT NULL,
  `photo_profile` varchar(255) NOT NULL,
  `is_active` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `cell`, `email`, `password`, `user_type`, `born`, `gender`, `category`, `photo`, `otp`, `user_pin`, `kode_qr`, `photo_profile`, `is_active`) VALUES
(8, 'Admin', '123456789', 'admin@gmail.com', '0r4ng3rt1', 'admin', '', '', '', '', '', '', '', '', 0),
(3, 'Manager', '777888', 'manager@gmail.com', '0r4ng3rt1', 'manager', '', '', '', '', '', '', '', '', 0),
(5, 'Kasir 2', '01778001401', 'noor.bd92@gmail.com', '12345', 'kasir', '', '', '', '', '', '', '', '', 0),
(7, 'cheef', '0122', 'staff@gmail.com', 'resto', 'resto', '', '', '', '', '', '', '', '', 0),
(9, 'Waitress', '12333323', 'waitress@gmail.com', 'waitress', 'waitress', '', '', '', '', '', '', '', '', 0),
(10, 'Security', '3435443235', 'security@gmail.com', 'security', 'security', '', '', '', '', '', '', '', '', 0),
(11, 'kasir', '34829384', 'kasir@gmail.com', 'kasir', 'kasir', '', '', '', '', '', '', '', '', 0),
(28, 'miftahul munir', '08551886763', 'munirrmiftahul94@gmail.com', '$2y$10$SwfYxgZzRBP8TPYVDrQTMeU7rMAHGzTz4uG2tDwWd0aRkhW8XCAry', 'visitor', '08-01-1994', 'Laki', 'Umum', '6142be27ddb21.png', '1189', '111111', 'munirrmiftahul94@gmail.com.png', '', 1),
(35, 'Atom', '085156682872', 'seconddie002@gmail.com', '$2y$10$19yyPecmlWWi1rF3F3nv8.IByXNlPYo43KjQGoMmOzB/DUV7PVedy', 'visitor', '', '', '', '', '1048', '111111', 'seconddie002@gmail.com.png', '', 1),
(32, 'Adi Purnama', '085739832726', 'imadeadipurnamayasa@gmail.com', '$2y$10$VteXAdGZym1XLyZgVw7T..GneMyfrlhyxW5bUYJap2LdvVxnLv//O', 'visitor', '', '', '', '', '1684', '111111', 'imadeadipurnamayasa@gmail.com.png', '', 1),
(34, 'Ucup', '082145566210', 'ucup@gmail.com', '$2y$10$DW2irLyx7ll2uyzZJPMqIugs69eRiF8Nbcobe3Iwn4J7dm1PNFzFW', 'visitor', '', '', '', '', '1405', '098765', 'ucup@gmail.com.png', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_dompet`
--

CREATE TABLE `users_dompet` (
  `id_dompet` int(11) NOT NULL,
  `id_users` int(255) NOT NULL,
  `saldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users_dompet`
--

INSERT INTO `users_dompet` (`id_dompet`, `id_users`, `saldo`) VALUES
(1, 32, 900),
(4, 34, 98.2),
(5, 35, 1.8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_ticket`
--

CREATE TABLE `users_ticket` (
  `id_ticket` int(11) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `status_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users_ticket`
--

INSERT INTO `users_ticket` (`id_ticket`, `id_user`, `tanggal`, `barcode`, `status_ticket`) VALUES
(19, '16', '10-09-2021', 'd35a5c.png', 0),
(20, '16', '10-09-2021', '114227.png', 0),
(21, '26', '29-09-2021', '252f23.png', 0),
(22, '26', '29-09-2021', 'd9bda4.png', 0),
(23, '26', '21-09-2021', '3cf59f.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_transaksi`
--

CREATE TABLE `users_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users_transaksi`
--

INSERT INTO `users_transaksi` (`id_transaksi`, `sender_id`, `recipient_id`, `status`, `tanggal`, `jumlah`, `kategori`) VALUES
(5, 32, 34, '', '2021-09-21 13:45:38', '100', ''),
(6, 34, 35, '', '2021-09-21 13:59:48', '0.9', ''),
(7, 34, 35, '', '2021-09-21 14:02:09', '0.9', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id_token` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id_token`, `email`, `token`, `date_created`) VALUES
(7, 'munirrmiftahul94@gmail.com', 'X5NWkkC7U+Ia99HglrTFxVuIlawPvEOSLLTEcHJtk5s=', 1630685870),
(8, 'munirrmiftahul94@gmail.com', 'LhH0/elU06XBVCD+tl6nv5s6OuL9MlHyOtxBSMnoG1I=', 1631133533);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `visitor_gelang` varchar(255) NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `visitor_status` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visitors`
--

INSERT INTO `visitors` (`visitor_id`, `visitor_gelang`, `visitor_name`, `visitor_status`, `timestamp`) VALUES
(3, '8FF657A8', 'reg', 'IN', '2020-10-07 02:38:54'),
(2, '8FF657A8', 'reg', 'OUT', '2020-10-06 07:42:40'),
(4, '917D5C34', 'putu agus', 'IN', '2020-10-07 03:18:43'),
(5, '3956E10E', 'yuu', 'IN', '2020-10-07 04:21:48'),
(6, '8FF657A8', 'reg', 'OUT', '2020-10-07 08:05:46'),
(7, '8FF657A8', 'reg', 'IN', '2020-10-07 08:06:11'),
(8, '8FF657A8', 'reg', 'OUT', '2020-10-07 08:06:22'),
(9, '8FF657A8', 'reg', 'IN', '2020-10-07 08:08:08'),
(10, '84FC571C', 'eric', 'OUT', '2020-10-09 03:43:28'),
(15, '3956E10E', 'yuu', 'OUT', '2020-10-12 04:25:39'),
(13, '917D5C34', 'putu agus', 'OUT', '2020-10-12 02:50:35'),
(16, '3956E10E', 'yuu', 'IN', '2020-10-12 04:27:44'),
(17, '3956E10E', 'yuu', 'OUT', '2020-10-12 04:28:04'),
(18, '3956E10E', 'yuu', 'IN', '2020-10-12 05:46:11'),
(19, 'C1D86F34', 'Jhonson', 'IN', '2020-10-12 05:47:20'),
(20, 'C1D86F34', 'Jhonson', 'OUT', '2020-10-12 08:41:52'),
(21, 'C1D86F34', 'Jhonson', 'IN', '2020-10-12 09:17:15'),
(22, '917D5C34', 'putu agus', 'IN', '2020-10-13 05:45:08'),
(23, '3956E10E', 'yuu', 'OUT', '2020-10-16 07:30:53'),
(24, '917D5C34', 'putu agus', 'OUT', '2020-10-20 07:46:31'),
(25, '917D5C34', 'putu agus', 'IN', '2020-10-20 07:47:34'),
(26, '917D5C34', 'putu agus', 'OUT', '2020-10-20 07:51:00'),
(27, '917D5C34', 'putu agus', 'IN', '2020-10-20 07:51:08'),
(28, 'C1D86F34', 'Jhonson', 'OUT', '2020-10-21 01:17:05'),
(29, 'C1D86F34', 'Jhonson', 'IN', '2020-10-21 01:25:18'),
(30, 'C1D86F34', 'Jhonson', 'OUT', '2020-10-26 02:22:04'),
(31, '917D5C34', 'putu agus', 'OUT', '2020-10-27 03:38:10'),
(32, '917D5C34', 'putu agus', 'IN', '2020-10-27 03:38:15'),
(33, '917D5C34', 'putu agus', 'OUT', '2020-10-27 03:39:49'),
(34, '917D5C34', 'putu agus', 'IN', '2020-10-27 06:57:15'),
(35, '917D5C34', 'putu agus', 'OUT', '2020-10-27 06:57:30'),
(36, '917D5C34', 'putu agus', 'IN', '2020-10-29 03:23:58'),
(37, '917D5C34', 'putu agus', 'OUT', '2020-10-29 03:41:28'),
(38, '917D5C34', 'putu agus', 'IN', '2020-10-29 03:42:10'),
(39, '917D5C34', 'putu agus', 'OUT', '2020-10-29 03:42:26'),
(40, '917D5C34', 'putu agus', 'IN', '2020-10-29 03:44:34'),
(41, '917D5C34', 'putu agus', 'OUT', '2020-10-29 03:44:43'),
(42, '917D5C34', 'putu agus', 'IN', '2020-10-29 03:45:45'),
(43, '917D5C34', 'putu agus', 'OUT', '2020-10-29 03:47:01'),
(44, '11B97434', 'ahay', 'IN', '2020-11-05 05:44:52'),
(45, '3956E10E', 'yuu', 'IN', '2020-11-11 11:23:58'),
(46, '3956E10E', 'yuu', 'OUT', '2020-11-11 11:25:58'),
(47, '3956E10E', 'yuu', 'IN', '2020-11-11 11:36:29'),
(48, '3956E10E', 'yuu', 'OUT', '2020-11-11 12:24:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wallet`
--

CREATE TABLE `wallet` (
  `wallet_id` int(11) NOT NULL,
  `id_gelang` varchar(255) NOT NULL,
  `jumlah` decimal(50,0) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `wallet_type` varchar(255) NOT NULL,
  `timesstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `wallet`
--

INSERT INTO `wallet` (`wallet_id`, `id_gelang`, `jumlah`, `nama_pelanggan`, `wallet_type`, `timesstamp`) VALUES
(1, 'C1D86F34', '1000000', 'Jhonson', 'Top Up', '2020-09-16 01:16:13'),
(25, 'C1D86F34', '300000', 'Jhonson', 'Top Up', '2020-09-18 06:16:45'),
(26, 'C1D86F34', '300000', 'Jhonson', 'Withdraw', '2020-09-18 06:21:26'),
(27, '8FF657A8', '200000', 'anta', 'Top Up', '2020-09-20 10:28:08'),
(28, '3956E10E', '100000', 'yuu', 'Top Up', '2020-09-21 06:17:52'),
(29, '8FF657A8', '200000', 'anta', 'Top Up', '2020-09-23 05:23:42'),
(31, 'C1D86F34', '500000', 'Jhonson', 'Withdraw', '2020-09-23 06:57:09'),
(32, 'C1D86F34', '500000', 'Jhonson', 'Top Up', '2020-09-23 06:58:38'),
(33, 'C1D86F34', '1000000', 'Jhonson', 'Withdraw', '2020-09-23 06:59:08'),
(34, 'C1D86F34', '1000000', 'Jhonson', 'Top Up', '2020-09-23 07:06:09'),
(36, 'C1D86F34', '400000', 'Jhonson', 'Withdraw', '2020-09-23 07:17:20'),
(37, 'C1D86F34', '400000', 'Jhonson', 'Withdraw', '2020-09-23 07:17:20'),
(38, 'C1D86F34', '50000', 'Jhonson', 'Withdraw', '2020-09-23 07:24:04'),
(39, 'C1D86F34', '50000', 'Jhonson', 'Withdraw', '2020-09-23 07:24:04'),
(40, '95128AF1', '200000', 'alexz', 'Top Up', '2020-09-23 07:26:48'),
(41, 'C1D86F34', '20000', 'Jhonson', 'Withdraw', '2020-09-23 07:33:17'),
(42, '4F55B80D', '50000000', 'yanti', 'Top Up', '2020-09-23 12:58:22'),
(46, '290C6427', '200000', 'alex', 'Top Up', '2020-09-24 01:33:22'),
(48, '917D5C34', '500000', 'bunga', 'Top Up', '2020-09-27 09:03:40'),
(49, 'C1D86F34', '500000', 'Jhonson', 'Top Up', '2020-09-28 02:18:06'),
(50, '917D5C34', '500000', 'sarah', 'Top Up', '2020-09-28 05:06:39'),
(51, '3956E10E', '500000', 'yuu', 'Top Up', '2020-09-28 06:20:36'),
(52, '3956E10E', '500000', 'yuu', 'Top Up', '2020-09-28 06:32:26'),
(53, '3956E10E', '1000000', 'yuu', 'Top Up', '2020-09-29 01:45:08'),
(54, '3956E10E', '500000', 'yuu', 'Top Up', '2020-09-29 01:52:22'),
(55, '84FC571C', '2000000', 'eric', 'Top Up', '2020-09-30 02:28:00'),
(56, '84FC571C', '1500000', 'eric', 'Withdraw', '2020-09-30 02:29:31'),
(57, '917D5C34', '2000000', 'putu agus', 'Top Up', '2020-10-01 00:48:44'),
(58, '917D5C34', '1500000', 'putu agus', 'Withdraw', '2020-10-01 00:49:48'),
(59, '3956E10E', '500000', 'yuu', 'Top Up', '2020-10-01 06:10:05'),
(60, '3956E10E', '1000000', 'yuu', 'Top Up', '2020-10-01 06:15:04'),
(61, '3956E10E', '1000000', 'yuu', 'Top Up', '2020-10-02 02:36:15'),
(62, 'C1D86F34', '500000', 'Jhonson', 'Top Up', '2020-10-02 07:35:45'),
(63, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-02 07:46:10'),
(64, '917D5C34', '1500000', 'putu agus', 'Top Up', '2020-10-02 07:48:22'),
(65, '3956E10E', '1500000', 'yuu', 'Top Up', '2020-10-05 02:07:24'),
(66, '3956E10E', '100000', 'yuu', 'Withdraw', '2020-10-05 02:58:22'),
(67, '3956E10E', '1100000', 'yuu', 'Withdraw', '2020-10-05 03:17:25'),
(68, '3956E10E', '2000000', 'yuu', 'Top Up', '2020-10-05 03:18:49'),
(69, '3956E10E', '2100000', 'yuu', 'Withdraw', '2020-10-05 03:24:08'),
(70, '3956E10E', '500000', 'yuu', 'Top Up', '2020-10-05 03:33:43'),
(71, '3956E10E', '2000000', 'yuu', 'Top Up', '2020-10-05 05:35:07'),
(72, '8FF657A8', '500000', 'reg', 'Top Up', '2020-10-07 08:01:39'),
(73, '8FF657A8', '500000', 'reg', 'Top Up', '2020-10-07 08:10:11'),
(74, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-09 09:10:54'),
(75, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-13 05:44:53'),
(76, '917D5C34', '500000', 'putu agus', 'Top Up', '2020-10-13 11:45:48'),
(77, '3956E10E', '500000', 'yuu', 'Top Up', '2020-10-16 04:32:05'),
(78, '3956E10E', '500000', 'yuu', 'Top Up', '2020-10-16 08:14:01'),
(79, '3956E10E', '900000', 'yuu', 'Withdraw', '2020-10-16 08:16:31'),
(80, '3956E10E', '500000', 'yuu', 'Top Up', '2020-10-16 08:16:58'),
(81, 'C1D86F34', '500000', 'Jhonson', 'Top Up', '2020-10-16 08:20:30'),
(82, 'C1D86F34', '1000000', 'Jhonson', 'Top Up', '2020-10-16 08:20:43'),
(83, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-17 14:50:36'),
(84, '917D5C34', '2000000', 'putu agus', 'Withdraw', '2020-10-20 07:48:18'),
(85, '917D5C34', '500000', 'putu agus', 'Top Up', '2020-10-20 07:48:33'),
(86, 'C1D86F34', '500000', 'Jhonson', 'Top Up', '2020-10-21 01:16:53'),
(87, '917D5C34', '500000', 'putu agus', 'Top Up', '2020-10-21 08:34:24'),
(88, '84FC571C', '1000000', 'dian', 'Top Up', '2020-10-21 13:43:00'),
(89, 'C1D86F34', '1500000', 'Jhonson', 'Withdraw', '2020-10-26 02:22:49'),
(90, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-27 06:57:42'),
(91, '917D5C34', '2000000', 'putu agus', 'Withdraw', '2020-10-27 06:58:44'),
(92, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-29 03:26:06'),
(93, '917D5C34', '1000000', 'putu agus', 'Withdraw', '2020-10-29 03:26:42'),
(94, '917D5C34', '1000000', 'putu agus', 'Top Up', '2020-10-29 05:28:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `weight_unit`
--

CREATE TABLE `weight_unit` (
  `weight_unit_id` int(11) NOT NULL,
  `weight_unit_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `weight_unit`
--

INSERT INTO `weight_unit` (`weight_unit_id`, `weight_unit_name`) VALUES
(1, 'g'),
(2, 'Kg'),
(3, 'L'),
(4, 'pcs'),
(5, 'ml');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_acara`
--
ALTER TABLE `admin_acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indeks untuk tabel `admin_kupon`
--
ALTER TABLE `admin_kupon`
  ADD PRIMARY KEY (`id_kupon`);

--
-- Indeks untuk tabel `admin_lomba`
--
ALTER TABLE `admin_lomba`
  ADD PRIMARY KEY (`id_lomba`);

--
-- Indeks untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`) USING BTREE;

--
-- Indeks untuk tabel `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`expense_id`) USING BTREE;

--
-- Indeks untuk tabel `home_menu`
--
ALTER TABLE `home_menu`
  ADD PRIMARY KEY (`home_id`) USING BTREE;

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`) USING BTREE;

--
-- Indeks untuk tabel `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`) USING BTREE,
  ADD UNIQUE KEY `invoice_id` (`invoice_id`) USING BTREE;

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`product_category_id`) USING BTREE;

--
-- Indeks untuk tabel `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`) USING BTREE;

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`suppliers_id`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `users_dompet`
--
ALTER TABLE `users_dompet`
  ADD PRIMARY KEY (`id_dompet`);

--
-- Indeks untuk tabel `users_ticket`
--
ALTER TABLE `users_ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indeks untuk tabel `users_transaksi`
--
ALTER TABLE `users_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indeks untuk tabel `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`) USING BTREE;

--
-- Indeks untuk tabel `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`wallet_id`) USING BTREE;

--
-- Indeks untuk tabel `weight_unit`
--
ALTER TABLE `weight_unit`
  ADD PRIMARY KEY (`weight_unit_id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_acara`
--
ALTER TABLE `admin_acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_kupon`
--
ALTER TABLE `admin_kupon`
  MODIFY `id_kupon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `admin_lomba`
--
ALTER TABLE `admin_lomba`
  MODIFY `id_lomba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `expense`
--
ALTER TABLE `expense`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `home_menu`
--
ALTER TABLE `home_menu`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT untuk tabel `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `product_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `suppliers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `users_dompet`
--
ALTER TABLE `users_dompet`
  MODIFY `id_dompet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users_ticket`
--
ALTER TABLE `users_ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users_transaksi`
--
ALTER TABLE `users_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `wallet`
--
ALTER TABLE `wallet`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `weight_unit`
--
ALTER TABLE `weight_unit`
  MODIFY `weight_unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
