-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Jun 2017 pada 19.20
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_matkul`
--

CREATE TABLE `detail_matkul` (
  `id_detail` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `waktu` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_matkul`
--

INSERT INTO `detail_matkul` (`id_detail`, `id_dosen`, `id_matkul`, `jam`, `hari`, `waktu`) VALUES
(1, 20, 40, '08.00-11.40', 'selasa', 'pagi'),
(2, 19, 39, '08.00-11.40', 'rabu', 'pagi'),
(3, 26, 2, '-', '-', '-'),
(4, 23, 18, '08.00-11.40', 'jumat', 'pagi'),
(5, 14, 3, '08.00-10.40', 'kamis', 'pagi'),
(6, 21, 7, '-', '-', '-'),
(7, 29, 9, '-', '-', '-'),
(8, 14, 48, '-', '-', '-'),
(9, 23, 22, '-', '-', '-'),
(10, 23, 32, '-', '-', '-'),
(11, 14, 100, '08.00-9.40', 'senin', 'pagi'),
(12, 14, 103, '10.00-11.40', 'rabu', 'pagi'),
(13, 12, 105, '08.00-11.00', 'kamis', 'pagi'),
(14, 5, 128, '08.00-09.40', 'senin', 'pagi'),
(15, 2, 122, '08.00-09.40', 'jumat', 'pagi'),
(16, 19, 31, '08.00-11.40', 'rabu', 'pagi'),
(17, 19, 31, '17.00-19.40', 'kamis', 'sore'),
(18, 20, 33, '08.00-11.40', 'selasa', 'pagi'),
(19, 18, 23, '17.00-20.40', 'selasa', 'sore'),
(20, 18, 23, '08.00-11.40', 'selasa', 'pagi'),
(21, 23, 7, '10.00-13.40', 'kamis', 'pagi'),
(22, 21, 34, '08.00-10.40', 'jumat', 'pagi'),
(23, 17, 25, '08.00-11.40', 'rabu', 'pagi'),
(24, 21, 25, '17.00-20.40', 'senin', 'sore'),
(25, 9, 92, '-', '-', '-'),
(26, 25, 66, '-', '-', '-'),
(27, 25, 54, '-', '-', '-'),
(28, 25, 79, '-', '-', '-'),
(29, 26, 80, '-', '-', '-'),
(30, 19, 51, '-', '-', '-'),
(31, 22, 83, '-', '-', '-'),
(32, 25, 82, '-', '-', '-'),
(33, 22, 69, '-', '-', '-'),
(34, 22, 70, '-', '-', '-'),
(35, 29, 71, '-', '-', '-'),
(36, 29, 57, '-', '-', '-'),
(37, 29, 53, '-', '-', '-'),
(38, 29, 67, '-', '-', '-'),
(39, 14, 52, '-', '-', '-'),
(40, 20, 81, '-', '-', '-'),
(41, 0, 0, '', '', ''),
(42, 1, 122, '-', '-', 'pagi'),
(43, 2, 122, '-', '-', '-'),
(44, 14, 100, '-', '-', '-'),
(45, 14, 103, '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `no_induk` varchar(255) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `ner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `no_induk`, `nama_dosen`, `prodi`, `fakultas`, `jabatan`, `ner`) VALUES
(1, '222097301', 'abdul rachmad zahrial amin, s.t., m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'ketua prodi', 'nama'),
(2, '229088501', 'dhita wahyu anggareni, s.t., m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(3, '-', 'ir. herman tanri', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(4, '-', 'imelda widjaja, m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(5, '214036801', 'ir.j.m sri narhadi, m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'koordinator kp', 'nama'),
(6, '-', 'l.h. parulian siregar, s.t.,m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(7, '204085901', 'ir. prisca yeniyati,m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(8, '-', 'suzzana winda artha mustika, s.t., m.t', 'teknik arsitektur', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(9, '-', 'agustinus riyanto, s.cj., m.a', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(10, '220106901', 'achmad alfian, s.t., m.t', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(11, '-', 'ir. doorce sakti batubara, m.sc', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(12, '216078202', 'dominikus budiarto, s.t., m.t', 'teknik industri', 'fakultas sains dan teknologi', 'ketua prodi', 'nama'),
(13, '211107101', 'dr. heri setiawan, s.t., m.t', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(14, '212057702', 'meylinda mulyati, s.t., m.t', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(15, '20587504', 'theresia sunarni, s.t., m.t', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(16, '216068902', 'y.dicka pratama, s.t', 'teknik industri', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(17, '224116901', 'hendra widjaja, s.i.kom, m.app.sc', 'informatika', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(18, '215028540', 'kladius jevanda, b.s., s.kom., m.t', 'informatika', 'fakultas sains dan teknologi', 'ketua prodi', 'nama'),
(19, '0015019101\r\n', 'latius hermawan, s.t., m.kom', 'informatika', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(20, '221097701', 'r.kristoforus jawa bendi, s.t., m.cs', 'informatika', 'fakultas sains dan teknologi', 'dekan', 'nama'),
(21, '222077601', 'sri andayani, s.kom.,m.cs', 'sistem informasi', 'fakultas sains dan teknologi', 'ketua prodi', 'nama'),
(22, '229128901\r\n', 'maria bellaniar ismiati, s.kom., m.eng', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(23, '221038002', 'wawan nurmansyah, s.kom., m.cs', 'informatika', 'fakultas sains dan teknologi', 'koordinator kp', 'nama'),
(24, '-', 'albertus hendro kristanto, s.kom', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(25, '209078401', 'andri wijaya, s.kom.,m.t.i', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(26, '631127205', 'arif aliyanto, s.kom., m.kom', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(27, '-', 'ir.ciein wijaya, m.kom', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(28, '-', 'hendrik fery herdiatmoko, s.t', 'informatika', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(29, '202017101', 'masayu jamilah, s.kom., m.kom', 'sistem informasi', 'fakultas sains dan teknologi', 'dosen', 'nama'),
(30, '22234223444', 'wawan wijaya s.kom', 'informatika', 'sains dan teknologi', 'dosen', 'nama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahsiswa`
--

CREATE TABLE `mahsiswa` (
  `id_siswa` int(11) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `tahun_akademik` year(4) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahsiswa`
--

INSERT INTO `mahsiswa` (`id_siswa`, `nim`, `nama`, `jurusan`, `fakultas`, `alamat`, `no_hp`, `tahun_akademik`, `id_dosen`) VALUES
(1, '1313015', 'Wahyu', 'Informatika', 'sains dan teknologi', 'jln slamet Riady', '87897995644', 2013, 23),
(2, '1313004', 'Indra Junior', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(3, '1313013', 'Johan Nes', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(4, '1313018', 'Pur  Wanto', 'Informatika', 'sains dan teknologi', '-', '89877654411', 2013, 23),
(5, '1313002', 'Katlin Gewani', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(6, '1313016', 'Andri Hartono', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(7, '1313006', 'Rexy Oemar', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(8, '1313003', 'Agustin Dina Anggraini', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(9, '1313005', 'Adrian Leonardi', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(10, '1313007', 'Nike Ardila', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(11, '1313008', 'Yunita Sari', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(12, '1313009', 'Daniel Kurniadi', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(13, '1313010', 'Idawarti', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(14, '1313012', 'martondy victor sitangang', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(15, '1313011', 'isidora vani', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(16, '1313019', 'Dermawan ', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(17, '1313020', 'Ricky Aryanto', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(18, '1313021', 'mei  Roby', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(19, '1313022', 'Thomas Wijaya', 'Informatika', 'sains dan teknologi', '-', '-', 2013, 23),
(20, '1413001', 'Ramses', 'Informatika', 'sains dan teknologi', '-', '-', 2014, 19),
(21, '1413002', 'Tomy Rafael', 'Informatika', 'sains dan teknologi', '-', '-', 2014, 19),
(22, '1413003', 'shinta', 'Informatika', 'sains dan teknologi', '-', '-', 2014, 19),
(23, '1413004', 'vivi', 'Informatika', 'sains dan teknologi', '-', '-', 2014, 19),
(24, '1413005', 'Toni', 'Informatika', 'sains dan teknologi', '-', '-', 2014, 19),
(25, '1314001', 'Ricky Wijaya', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(26, '1314002', 'Angelo steven', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(27, '1314003', 'megawati', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(28, '1314004', 'eka', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(29, '1314005', 'viviyana', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(30, '1314006', 'joko', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(31, '1314007', 'rudi wijaya', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(32, '1314008', 'indra kusuma', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(33, '1314009', 'jerry charles', 'sistem informasi', 'sains dan teknologi', '-', '-', 2013, 29),
(34, '1414001', 'willy ', 'sistem informasi', 'sains dan teknologi', '-', '-', 2014, 26),
(35, '1414002', 'wiliam', 'sistem informasi', 'sains dan teknologi', '-', '-', 2014, 26),
(36, '1414003', 'budi', 'sistem informasi', 'sains dan teknologi', '-', '-', 2014, 26),
(37, '1414004', 'lia wijaya', 'sistem informasi', 'sains dan teknologi', '-', '-', 2014, 26),
(38, '1414005', 'melvin wijaya', 'sistem informasi', 'sains dan teknologi', '-', '-', 2014, 26),
(39, '1312001', 'Hanjaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(40, '1312002', 'Fanny', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(41, '1312003', 'nico salim', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(42, '1312004', 'jay', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(43, '1312005', 'siska', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(44, '1312006', 'putri wijaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(45, '1312007', 'andri kusuma', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(46, '1312008', 'willy  wijaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(47, '1312009', 'adrian kusuma', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(48, '1312010', 'riky halim', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(49, '1312011', 'veronica', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(50, '1312012', 'wiliam hartono', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(51, '1312013', 'rexy wijaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(52, '1312014', 'lia veronica', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(53, '1312015', 'sumanto', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(54, '1312016', 'johannes', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(55, '1312017', 'yohanes', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(56, '1312018', 'diana ', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(57, '1312019', 'andri hermawan', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(58, '1312020', 'budi kusuma ', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(59, '1312021', 'veronica wijaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(60, '1312022', 'ermita', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(61, '1312023', 'fia ', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(62, '1312024', 'oktaviani', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(63, '1312025', 'vishent', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(64, '1312026', 'miachel', 'teknik industri', 'sains dan teknologi', '-', '-', 2013, 14),
(65, '1412001', 'melvin hermawan', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(66, '1412002', 'Ricky Pratama', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(67, '1412003', 'fernando', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(68, '1412004', 'fernando salim', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(69, '1412005', 'william wijaya', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(70, '1412006', 'evan johan', 'teknik industri', 'sains dan teknologi', '-', '-', 2014, 15),
(71, '1311001', 'vero', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(72, '1311002', 'marissa', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(73, '1311003', 'jeffry chandra', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(74, '1311004', 'lissa', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(75, '1311005', 'kevin hermawan', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(76, '1311006', 'kevin oswari', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(77, '1311007', 'cyntia', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(78, '1311008', 'budi harsono', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(79, '1311009', 'veronica', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(80, '1311010', 'siska hermawan', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(81, '1311011', 'siska oktavia', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(82, '1311012', 'diven', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2013, 5),
(83, '1411001', 'lidia', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(84, '1411002', 'ernawati', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(85, '1411003', 'purdayanto', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(86, '1411004', 'margalenni', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(87, '1411005', 'magdareta', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(88, '1411006', 'riana oktavia', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(89, '1411007', 'renaldi', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(90, '1411008', 'tommy', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6),
(91, '1411009', 'yurilus', 'teknik arsitektur', 'sains dan teknologi', '-', '-', 2014, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `syarat` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `ner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `kode_matkul`, `nama_matkul`, `sks`, `semester`, `syarat`, `deskripsi`, `keterangan`, `prodi`, `ner`) VALUES
(1, 'IF-12014', 'pengantar teknologi informasi', 4, 1, 'Tidak Ada', 'Setelah Menggikuti mata kuliah ini mahasiswa diharapkan mampu mengunakan komputer dengan baik,serta mahasiswa dan melihat kemajuan teknolgi.', 'MKK', 'Informatika', 'mata kuliah'),
(2, 'IF-12015', 'algoritma dan struktur data i', 4, 1, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritma', 'MKK', 'Informatika', 'mata kuliah'),
(3, 'IF-12016', 'struktur diskrit', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiswa diharapkan mengerti mengenai struktur diskrit', 'MKK', 'Informatika', 'mata kuliah'),
(4, 'IF-12017', 'sistem digital', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiswa diharapkan mengerti mengenai sistem digital dan penggunaanya pada teknologi', 'MKK', 'Informatika', 'mata kuliah'),
(5, 'IF-12018', 'kalkulus', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiwa diharpkan mengerti konsep kalkulus', 'MKK', 'Informatika', 'mata kuliah'),
(6, 'IF-12019', 'algoritma dan struktur data ii', 4, 2, 'Algoritma & struktur data I (C)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(7, 'IF-12020', 'komunikasi data', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(8, 'IF-12021', 'aljabar linier', 2, 2, 'Kalkulus (D)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(9, 'IF-12022', 'teori bahasa dan otomata', 2, 2, 'Struktur diskrit (D)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(10, 'IF-12023', 'bahasa inggris i', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(11, 'IF-12024', 'tata tulis ilmiah', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(12, 'IF-12025', 'manajeman umum', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(13, 'IF-12026', 'arsitektur dan organisasi komputer', 4, 2, 'Sistem digital (C)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKB', 'Informatika', 'mata kuliah'),
(14, 'IF-31012', 'pendidikan pancasila', 2, 3, 'Tidak Ada', '-', 'MPK', 'Informatika', 'mata kuliah'),
(15, 'IF-32182', 'bahasa inggris ii', 2, 3, 'Bahasa Inggris I (C)', '-', 'MKK', 'Informatika', 'mata kuliah'),
(16, 'IF-32142', 'statistik i', 2, 3, 'Tidak Ada', '-', 'MKK', 'Informatika', 'mata kuliah'),
(17, 'IF-33024', 'sistem operasi', 4, 3, 'Arsitektur dan Organisasi Komputer (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(18, 'IF-33034', 'jaringan komputer i', 4, 3, 'Komunikasi Data (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(19, 'IF-33044', 'pemrograman basis web i', 4, 3, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(20, 'IF-33052', 'sistem infromasi manajemen', 2, 3, 'Manajemen Umum (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(21, 'IF-42154', 'statistik ii', 4, 4, 'Statistik I (D)', '-', 'MKK', 'Informatika', 'mata kuliah'),
(22, 'IF-43064', 'jaringan komputer ii', 4, 4, 'Jaringan Komputer I (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(23, 'IF-43074', 'pemrograman basis web ii', 4, 4, 'Pemograman Basis Web I (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(24, 'IF-43084', 'basis data i', 4, 4, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(25, 'IF-43094', 'rekayasa perangkat lunak i', 4, 4, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(26, 'IF-53104', 'basis data ii', 4, 5, 'Basis Data I (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(27, 'IF-53114', 'rekayasa perangkat lunak ii', 4, 5, 'Rekayasa Perangkat Lunak I (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(28, 'IF-53124', 'pemograman basis objek i', 4, 5, 'Algoritma & struktur data II (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(29, 'IF-53134', 'grafika komputer', 4, 5, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(30, 'IF-53144', 'interaksi manusia & komputer', 4, 5, 'Pengantar Teknologi Informasi (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(31, 'IF-63154', 'pemrograman basis objek ii', 4, 6, 'Pemograman Basis Objek I (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(32, 'IF-63164', 'kecerdasan buatan', 4, 6, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(33, 'IF-63172', 'riset teknologi informasi', 2, 6, 'Statistik II (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(34, 'IF-65012', 'proyek perangkat lunak', 2, 6, 'Rekayasa Perangkat Lunak II (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(35, 'IF-71022', 'fenomologi agama', 2, 7, 'Tidak Ada', '-', 'MPK', 'Informatika', 'mata kuliah'),
(36, 'IF-73182', 'seminar', 2, 7, 'Riset Teknologi Informasi (C) dan >=110 SKS', '-', 'MKB', 'Informatika', 'mata kuliah'),
(37, 'IF-74012', 'etika profesi', 2, 7, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(38, 'IF-75022', 'kerja praktik', 2, 7, '>= 100 sks', '-', 'MKB', 'Informatika', 'mata kuliah'),
(39, 'IF-76034', 'information retrieval', 2, 7, 'Tidak Ada', '-', 'MKB', 'Informatika', 'mata kuliah'),
(40, 'IF-76124', 'kriptografi', 4, 7, 'Jaringan Komputer II (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(41, 'IF-81032', 'kewarganegaraan', 2, 8, 'Tidak Ada', '-', 'MPK', 'Informatika', 'mata kuliah'),
(42, 'IF-83196', 'skripsi', 6, 8, 'Seminar (C) dan >=130 sks', '-', 'MKB', 'Informatika', 'mata kuliah'),
(43, 'IF-86074', 'pemrograman aplikasi mobile', 4, 8, 'Pemograman Basis Objek II (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(44, 'IF-86134', 'sistem multimedia', 4, 8, 'Grafika Komputer (C)', '-', 'MKB', 'Informatika', 'mata kuliah'),
(45, 'SI-12014', 'pengantar teknologi informasi', 4, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(46, 'SI-12024', 'algoritma dan struktur data i', 4, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(47, 'SI-12034', 'struktur diskrit', 4, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(48, 'SI-12044', 'matematika bisnis', 4, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(49, 'SI-12052', 'pengantar ekonomi', 2, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(50, 'SI-12062', 'pengetahuan bisnis', 2, 1, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(51, 'SI-22074', 'algoritma dan struktur data ii', 4, 2, 'Algoritma dan Struktur Data I', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(52, 'SI-22082', 'aljabar linier', 2, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(53, 'SI-22092', 'analisis proses bisnis', 2, 2, 'Pengetahuan Bisnis (C)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(54, 'SI-22152', 'konsep sistem informasi', 2, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(55, 'SI-22112', 'bahasa inggris i', 2, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(56, 'SI-22122', 'tata tulis ilmiah', 2, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(57, 'SI-22162', 'manajeman umum', 2, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(58, 'SI-22144', 'dasar akuntansi', 4, 2, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(59, 'SI-32222', 'bahasa inggris ii', 2, 3, 'Bahasa Inggris I (D)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(60, 'SI-32162', 'perilaku organisasi', 2, 3, 'Manajemen Umum (D)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(61, 'SI-32172', 'statistik i', 2, 3, 'Tidak Ada', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(62, 'SI-33014', 'sistem operasi', 4, 3, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(63, 'SI-33024', 'jaringan komputer', 4, 3, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(64, 'SI-33034', 'pemrograman basis web i', 4, 3, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(65, 'SI-33042', 'sistem infromasi manajemen', 2, 3, 'Manajeman Umum (D)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(66, 'SI-42184', 'analisis dan perancangan sistem informasi', 4, 4, 'Analisis Proses Bisnis (C)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(67, 'SI-42192', 'manajemen sains', 2, 4, 'Statistik I (D)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(68, 'SI-43054', 'pemrograman basis web ii', 4, 4, 'Pemrograman Basis Web I (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(69, 'SI-43064', 'basis data i', 4, 4, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(70, 'SI-42214', 'statistik ii', 4, 4, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(71, 'SI-43072', 'electronic business', 2, 4, 'Konsep Sistem Informasi (D)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(72, 'SI-51012', 'fenomologi agama', 2, 5, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(73, 'SI-52202', 'pengujian dan implementasi sistem informasi', 2, 5, 'Analisis dan Perancangan Sistem Informasi (C)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(74, 'SI-53082', 'manajemen hubungan pelanggan', 2, 5, 'Electronic business (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(75, 'SI-53094', 'basis data ii', 4, 5, 'Basis Data I (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(76, 'SI-53104', 'pemrograman basis objek i', 4, 5, 'Algoritma dan Struktur Data II (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(77, 'SI-53114', 'rekayasa sistem informasi', 4, 5, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(78, 'SI-53122', 'sistem infromasi akuntansi', 2, 5, 'Dasar Akuntansi (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(79, 'SI-62212', 'manajeman proyek sistem informasi', 2, 6, 'Rekayasa Sistem Informasi (C)', '-', 'MKK', 'sistem informasi', 'mata kuliah'),
(80, 'SI-63134', 'pemrograman basis objek ii', 4, 6, 'Pemrograman Basis Objek I (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(81, 'SI-63142', 'metode penelitian', 2, 6, 'Statistik II (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(82, 'SI-63152', 'manajemen rantai pasokan ', 2, 6, 'Electronic business (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(83, 'SI-63164', 'kecerdasan buatan', 4, 6, 'Tidak Ada', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(84, 'SI-65012', 'proyek sistem informasi', 2, 6, 'Rekayasa Sistem Informasi (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(85, 'SI-71022', 'pendidikan pancasila', 2, 7, 'Tidak Ada', '-', 'MPK', 'sistem informasi', 'mata kuliah'),
(86, 'SI-73172', 'perencanaan sumber daya organisasi ', 2, 7, 'Electronic business (C)', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(87, 'SI-73182', 'seminar', 2, 7, 'Metode Penelitian (C) dan >=110 sks', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(88, 'SI-74012', 'etika profesi', 2, 7, 'Tidak Ada', '-', 'MPB', 'sistem informasi', 'mata kuliah'),
(89, 'SI-75022', 'kerja praktik', 2, 7, '>=100 sks', '-', 'MBB', 'sistem informasi', 'mata kuliah'),
(90, 'SI-81032', 'kewarganegaraan', 2, 8, 'Tidak Ada', '-', 'MPK', 'sistem informasi', 'mata kuliah'),
(91, 'SI-83196', 'skripsi', 6, 8, 'Seminar (C) dan >=130 sks', '-', 'MKB', 'sistem informasi', 'mata kuliah'),
(92, 'SI-84022', 'kewirausahaan', 2, 8, 'Tidak Ada', '-', 'MPB', 'sistem informasi', 'mata kuliah'),
(93, 'TI-14013', 'pancasila dan kewarganegaraan', 3, 1, 'Tidak Ada', '-', 'MPK', 'Teknik Industri', 'mata kuliah'),
(94, 'TI-13012', 'tata tulis ilmiah', 2, 1, 'Tidak Ada', '-', 'MPB', 'Teknik Industri', 'mata kuliah'),
(95, 'TI-12013', 'fisaka dasar i', 3, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(96, 'TI-12022', 'kimia dasar i', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(97, 'TI-12033', 'kalkulus i', 3, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(98, 'TI-13023', 'bahasa inggris ', 3, 1, 'Tidak Ada', '-', 'MPB', 'Teknik Industri', 'mata kuliah'),
(99, 'TI-12043', 'pengantar teknik industri', 3, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(100, 'TI-22052', 'ilmu lingkungan', 2, 2, '', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(101, 'TI-22062', 'pengantar ilmu ekonomi', 2, 2, '', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(102, 'TI-22072', 'fisika dasar ii', 2, 2, 'Fisika Dasar I (D)', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(103, 'TI-22082', 'kimia dasar ii', 2, 2, 'Kimia Dasar I (D)', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(104, 'TI-22093', 'kalkulus ii', 3, 2, 'Kalkulus I (D)', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(105, 'TI-22103', 'mengambar teknik', 3, 2, '', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(106, 'TI-22112', 'material teknik', 2, 2, 'Fisika Dasar I (D)', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(107, 'TI-22121', 'praktikum fisika dasar', 1, 2, '', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(108, 'TI-22131', 'praktikum kimia dasar', 1, 2, '', '-', 'MKK', 'Teknik Industri', 'mata kuliah'),
(109, 'TI-73062', 'kerja praktik', 2, 7, 'Tidak Ada', '-', 'MPB', 'Teknik Industri', 'mata kuliah'),
(110, 'TI-81265', 'skripsi', 5, 8, 'Tidak Ada', '-', 'MKB', 'Teknik Industri', 'mata kuliah'),
(111, 'TA-13014', 'studio perancangan arsitektur i', 4, 1, 'Tidak Ada', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah'),
(112, 'TA-13022', 'konstruksi bangunan i', 2, 1, 'Tidak Ada', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah'),
(113, 'TA-12012', 'matematika', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(114, 'TA-12022', 'mekanika teknik i', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(115, 'TA-12032', 'estetika bentuk i', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(116, 'TA-12042', 'teknik komputer arsitektur i', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(117, 'TA-12052', 'pengantar arsitektur', 2, 1, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(118, 'TA-11012', 'pancasila', 2, 1, 'Tidak Ada', '-', 'MPK', 'Teknik Arsitektur', 'mata kuliah'),
(119, 'TA-11022', 'bahasa inggris', 2, 1, 'Tidak Ada', '-', 'MPK', 'Teknik Arsitektur', 'mata kuliah'),
(120, 'TA-11032', 'logika', 2, 1, 'Tidak Ada', '-', 'MPK', 'Teknik Arsitektur', 'mata kuliah'),
(121, 'TA-23034', 'studio perancangan arsitektur ii', 4, 2, 'Tidak Ada', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah'),
(122, 'TA-23042', 'konstruksi bangunan ii', 2, 2, 'Tidak Ada', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah'),
(123, 'TA-22062', 'teori arsitektur i', 2, 2, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(124, 'TA-22072', 'mekanika teknik ii', 2, 2, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(125, 'TA-22082', 'estetika bentuk ii', 2, 2, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(126, 'TA-22092', 'teknik komputer arsitektur ii', 2, 2, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(127, 'TA-22102', 'teknologi bahan i', 2, 2, 'Tidak Ada', '-', 'MKK', 'Teknik Arsitektur', 'mata kuliah'),
(128, 'TA-22112', 'arsitektur dan lingkungan', 2, 2, 'Tidak Ada', '-', 'MPK', 'Teknik Arsitektur', 'mata kuliah'),
(129, 'TA-74032', 'kerja praktik', 2, 7, 'Semua Mata Kuliah dari Semester I-IV dan Studio pe', '-', 'MPB', 'Teknik Arsitektur', 'mata kuliah'),
(130, 'TA-73224', 'seminar arsitektur', 4, 7, 'Semua Mata Kuliah dari Semester I-IV dan Studio pe', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah'),
(131, 'TA-83258', 'skripsi', 8, 8, 'Semua Mata Kuliah dari Semester I-VI , Kuliah Lapa', '-', 'MKB', 'Teknik Arsitektur', 'mata kuliah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, 'Siapa yang mengajar mata kuliah kriptografi'),
(2, 'Siapa dosen yang mengajar mata kuliah kriptografi'),
(3, 'Siapa dosen mata kuliah kriptografi'),
(4, 'Siapakah yang mengajar mata kuliah kriptografi'),
(5, 'Siapakah yang mengajar kriptografi'),
(6, 'Siapakah dosen yang mengajar kriptografi'),
(7, 'Siapa dosen yang mengajar information retrieval'),
(8, 'Siapa  yang mengajar information retrieval'),
(9, 'Siapa dosen mata kuliah information retrieval'),
(10, 'Siapa  yang mengajar mata kuliah information retrieval'),
(11, 'Siapa dosen yang mengajar mata kuliah information'),
(12, 'Siapakah yang mengajar information'),
(13, 'Siapa dosen yang mengajar mata kuliah retrieval'),
(14, 'Siapa yang mengajar mata kuliah algoritma dan struktur data I'),
(15, 'Siapa dosen mata kuliah algoritma dan struktur data I'),
(16, 'Siapa  yang mengajar mata kuliah algoritma dan struktur data I'),
(17, 'Siapakah yang mengajar mata kuliah algoritma dan struktur data I'),
(18, 'Siapa dosen yang mengajar prodi informatika'),
(19, 'Siapa saja dosen yang mengajar prodi informatika'),
(20, 'Siapa yang mengajar di prodi informatika'),
(21, 'Siapakah saja dosen yang mengajar prodi informatika'),
(22, 'Siapakah yang mengajar di prodi informatika'),
(23, 'Siapa yang mengajar di prodi teknik arsitektur'),
(24, 'Siapa dosen yang mengajar prodi teknik arsitektur'),
(25, 'Siapa dosen yang memiliki nidn 0221097701'),
(26, 'Siapa yang memiliki nomor induk dosen  221097701'),
(27, 'Siapa dosen yang memiliki nomor induk dosen 221097701'),
(28, 'Apa nidn dosen wawan nurmansyah'),
(29, 'Apa nomor induk dosen  nasional wawan nurmansyah'),
(30, 'Apa nomor induk dosen  wawan nurmansyah'),
(31, 'Apa nidn wawan nurmansyah'),
(32, 'Apa nomor induk wawan nurmansyah'),
(33, 'Apa nidn dosen nurmansyah'),
(34, 'Apa nidn dosen Wawan Nurmansyah, S.kom., M.Cs'),
(35, 'Apa nidn dekan fakultas sains dan teknologi'),
(36, 'Apa nomor induk dosen dekan fakultas sains dan teknologi'),
(37, 'Apa nomor induk dosen  nasional dekan fakultas sains dan teknologi'),
(38, 'Apa nidn koordinator kerja praktik  informatika'),
(39, 'Apa nidn koordinator kerja praktik  teknik arsitektur'),
(40, 'Apa nomor induk dosen koordinator kerja praktik  teknik arsitektur'),
(41, 'Apa nomor induk dosen koordinator kerja praktik  informatika'),
(42, 'Apa nidn ketua prodi informatika'),
(43, 'Apa nidn ketua prodi teknik arsitektur'),
(44, 'Apa nidn kaprodi informatika'),
(45, 'Siapa dosen pembimbing akademik  mahasiswa prodi informatika tahun akademik 2013'),
(46, 'Siapa dosen pembimbing akademik  mahasiswa prodi Teknik arsitektur tahun akademik 2013'),
(47, 'Siapa mahasiswa yang dibimbing akademik oleh wawan nurmansyah'),
(48, 'Siapa saja mahasiswa yang dibimbing akademik oleh wawan nurmansyah'),
(49, 'Siapa saja mahasiswa yang dibimbing akademik oleh wawan'),
(50, 'Siapa mahasiswa yang pembimbing akademiknya wawan nurmansyah'),
(51, 'Siapa saja yang pembimbing akademiknya wawan nurmansyah'),
(52, 'Siapa koordinator kerja praktik Informatika'),
(53, 'Siapa koordinator kerja praktik prodi Informatika'),
(54, 'Siapa koordinator kerja praktik teknik arsitektur'),
(55, 'Siapa koordinator kp informatika'),
(56, 'Siapa koordinator kp prodi informatika'),
(57, 'Siapakah koordinator kerja praktik Informatika'),
(58, 'Siapa ketua prodi informatika'),
(59, 'Siapa kaprodi informatika'),
(60, 'Siapa dekan fakultas sains dan teknologi'),
(61, 'Siapakah dekan fakultas sains dan teknologi'),
(62, 'Apa syarat mata kuliah kriptografi'),
(63, 'Apa syarat untuk mengambil mata kuliah kriptografi'),
(64, 'Apa syarat untuk ambil mata kuliah kriptografi'),
(65, 'Apa syarat mata kuliah aljabar linier'),
(66, 'Apa syarat  untuk mengambil mata kuliah Algoritma'),
(67, 'Apa syarat  untuk mengambil mata kuliah aljabar linier'),
(68, 'Apa syarat mata kuliah Algoritma'),
(69, 'Apa mata kuliah prodi Informatika yang dibuka pada saat krs semester 2'),
(70, 'Apa saja mata kuliah prodi Informatika yang dibuka pada saat krs semester 2'),
(71, 'Apa mata kuliah prodi Informatika yang dibuka pada saat kartu rencana studi semester 2'),
(72, 'Apa mata kuliah prodi teknik arsitektur yang dibuka pada saat kartu rencana studi semester 2'),
(73, 'Apa saja mata kuliah yang di buka pada semester genap'),
(74, 'Apa saja mata kuliah yang di buka pada semester ganjil'),
(75, 'Apa mata kuliah yang di buka pada semester ganjil'),
(76, 'Apa saja   mata kuliah yang diajar oleh dosen R.kristoforus Jawa Bendi, S.T., M.cs'),
(77, 'Apa saja mata kuliah yang diajar oleh dosen kristoforus'),
(78, 'Apa saja   mata kuliah yang diajar oleh wawan nurmansyah'),
(79, 'Apa saja mata kuliah yang diajar oleh arif aliyanto'),
(80, 'Kapan jadwal pengisian krs semester ganjil'),
(81, 'Kapan jadwal mengisi  krs semester genap'),
(82, 'Kapankah mata kuliah  kriptografi dimulai'),
(83, 'Kapan Jadwal bayaran semester genap'),
(84, 'Kapan jadwal berakhirnya bayaran semester genap'),
(85, 'Kapan jadwal terakhir bayaran semester genap'),
(86, 'Kapan jadwal mengisi krs semester ganjil'),
(87, 'Kapan jadwal mengisi krs semester genap'),
(88, 'kapan jadwal pengisian krs semester genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pos`
--

CREATE TABLE `pos` (
  `id_pos` int(11) NOT NULL,
  `kata` varchar(255) NOT NULL,
  `list_pos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pos`
--

INSERT INTO `pos` (`id_pos`, `kata`, `list_pos`) VALUES
(1, 'siapa', 'WH'),
(2, 'apa', 'WH'),
(3, 'kapan', 'WH'),
(4, 'dosen', 'NN'),
(5, 'karyawan', 'NN'),
(6, 'mahasiswa', 'NN'),
(7, 'syarat', 'NN'),
(8, 'syarat-syarat', 'NN'),
(9, 'persayaratan', 'NN'),
(10, 'teknik', 'NN'),
(11, 'pembayaran', 'NN'),
(12, 'bayaran', 'NN'),
(13, 'semester', 'NN'),
(14, 'jadwal', 'NN'),
(15, 'pembimbing', 'NN'),
(16, 'tahun', 'NN'),
(17, 'ketua', 'NN'),
(18, 'fakultas', 'NN'),
(19, 'saat', 'NN'),
(20, 'mata', 'NN'),
(21, 'kuliah', 'NN'),
(22, 'nomor', 'NN'),
(23, 'koordinator', 'NNP'),
(24, 'induk', 'NNP'),
(25, 'prodi', 'NNP'),
(26, 'nasional', 'NNP'),
(27, 'mengambil', 'VB'),
(28, 'dibuka', 'VB'),
(29, 'mengajar', 'VB'),
(30, 'saja', 'RB'),
(31, 'yang', 'SC'),
(32, 'pada', 'IN'),
(33, 'memiliki', 'VB'),
(34, 'di', 'IN'),
(35, 'kerja', 'NN'),
(36, 'praktik', 'NN'),
(37, 'dimulai', 'VB'),
(38, 'mulai', 'VB'),
(39, 'mulai', 'VB'),
(40, 'dimulainya', 'NN'),
(41, 'terakhir', 'JJ'),
(42, 'mengisi', 'VB'),
(43, 'siapakah', 'WH'),
(44, 'apakah', 'WH'),
(45, 'kapankah', 'WH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `konten` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `konten`, `tanggal_mulai`, `tanggal_akhir`, `semester`) VALUES
(1, 'bayaran', '2017-06-22', '2017-07-05', 'ganjil'),
(2, 'kartu rencana studi', '2017-08-11', '2017-08-14', 'ganjil'),
(3, 'kartu rencana studi', '2018-02-10', '2018-02-15', 'genap'),
(4, 'bayaran', '2017-12-22', '2018-01-05', 'genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `whitepos`
--

CREATE TABLE `whitepos` (
  `id_whitepos` int(11) NOT NULL,
  `whitepos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `whitepos`
--

INSERT INTO `whitepos` (`id_whitepos`, `whitepos`) VALUES
(1, 'WH NN SC VB NN NN mata kuliah'),
(2, 'WH RB NN SC VB NN NN mata kuliah'),
(3, 'WH NN NN NN mata kuliah'),
(4, 'WH SC VB NN NN mata kuliah'),
(5, 'WH NN SC VB mata kuliah'),
(6, 'WH SC VB mata kuliah'),
(7, 'WH NN mata kuliah'),
(8, 'WH RB NN SC VB mata kuliah'),
(9, 'WH NN SC VB IN NNP other'),
(10, 'WH RB NN SC VB NNP other'),
(11, 'WH SC VB IN NNP other'),
(12, 'WH NN SC VB other other'),
(13, 'WH NN SC VB NN NNP NN NNP other'),
(14, 'WH NN NN other NN NNP other NN other other'),
(15, 'WH NN SC other other other nama'),
(16, 'WH NNP mata kuliah other'),
(17, 'WH NNP mata kuliah NNP other'),
(18, 'WH other other'),
(19, 'WH other NN other'),
(20, 'WH other NN nama'),
(21, 'WH NN NNP NN NNP NN nama'),
(22, 'WH other nama'),
(23, 'WH NN NNP NN NNP nama'),
(24, 'WH other other NN other'),
(25, 'WH NN NNP NN NNP other NN other'),
(26, 'WH other NNP mata kuliah other'),
(27, 'WH NN NNP NN NNP NNP mata kuliah other'),
(28, 'WH NN NNP NN other mata kuliah NNP other'),
(29, 'WH other other other'),
(30, 'WH NN NNP NN NNP other other'),
(31, 'WH NN NN NN mata kuliah'),
(32, 'WH NN other VB NN NN mata kuliah'),
(33, 'WH RB NN NN NNP other SC VB IN NN other NN other'),
(34, 'WH NN NN NNP other SC VB IN NN other'),
(35, 'WH RB NN NN SC VB IN NN other'),
(36, 'WH RB NN NN SC other other NN nama'),
(37, 'WH NN other other NN other'),
(38, 'WH NN VB other other NN other VB'),
(39, 'WH NN JJ other other NN other'),
(40, 'WH NN NN mata kuliah VB'),
(41, 'WH NN NN NN other'),
(42, 'WH NN VB NN NN other'),
(43, 'WH NN NN NN NN other'),
(44, 'WH NN JJ NN NN other'),
(45, 'WH NN NN other other NN other VB'),
(46, 'WH NN other other other other NN other'),
(47, 'WH NN VB other other other other NN other VB'),
(48, 'WH NN JJ other other other other NN other'),
(49, 'WH NN VB other NN other'),
(50, 'WH NN VB other other other NN other'),
(51, 'WH RB SC VB NNP other'),
(52, 'WH SC VB NNP other'),
(53, 'WH NN SC VB NNP other'),
(55, 'WH NN NN other NN other NN other other'),
(56, 'WH RB NN SC other other other nama'),
(57, 'WH NN SC NN other nama'),
(58, 'WH RB NN SC NN other nama'),
(60, 'WH NNP other NNP other'),
(61, 'WH NN NNP NN nama'),
(62, 'WH NN other other NN NN mata kuliah'),
(63, 'WH RB NN NN NNP other SC other IN NN other NN other'),
(64, 'WH NN VB VB other other other NN other VB'),
(65, 'WH NN VB VB other NN other VB'),
(66, 'WH NN JJ VB other other other NN other'),
(67, 'WH NN JJ VB other NN other'),
(68, 'WH NN SC VB NN NN other'),
(69, 'WH RB NN SC VB NN NN other'),
(70, 'WH NN NN NN other'),
(71, 'WH SC VB NN NN other'),
(72, 'WH NN SC VB other'),
(73, 'WH SC VB other'),
(74, 'WH NN other'),
(75, 'WH NN NNP NN NNP NN other'),
(77, 'WH NN NNP NN NNP other'),
(78, 'WH other NNP other other'),
(79, 'WH NN NNP NN NNP NNP other other'),
(80, 'WH NN NNP NN other other NNP other'),
(81, 'WH NN NN NN other'),
(82, 'WH NN other VB NN NN other'),
(83, 'WH RB NN NN SC other other NN other'),
(84, 'WH NN NN other VB'),
(85, 'WH RB NN SC other other other other'),
(86, 'WH NN SC NN other other'),
(87, 'WH RB NN SC NN other other'),
(88, 'WH NN NNP NN other'),
(89, 'WH NN other other NN NN other'),
(90, 'WH RB NN NN SC other other other'),
(91, 'WH RB NN NN SC other other other other'),
(92, 'WH other NN NNP other'),
(93, 'WH other NN nama nama'),
(94, 'WH other NN nama nama nama nama'),
(95, 'WH NN NNP NN NNP nama nama'),
(96, 'WH NN NNP NN nama nama'),
(97, 'WH other nama nama'),
(98, 'WH NN NNP nama nama'),
(99, 'WH other nama nama'),
(100, 'WH other NN nama'),
(101, 'WH NN NNP NN other other'),
(102, 'WH NN SC other other other nama nama'),
(103, 'WH RB NN SC other other other nama nama'),
(104, 'WH NN SC NN other nama nama'),
(105, 'WH RB NN SC NN other nama nama'),
(106, 'WH RB SC NN other nama nama'),
(107, 'WH RB SC NN other nama nama nama'),
(108, 'WH RB NN SC NN other nama nama nama'),
(109, 'WH RB NN SC other other other nama nama nama '),
(110, 'WH SC VB NN NNP NN other'),
(111, 'WH NN SC VB NN NNP NN other'),
(112, 'WH NN NNP NN NNP mata kuliah other'),
(113, 'WH other NNP other'),
(114, 'WH NN NN NNP other SC VB IN NN other NN other'),
(115, 'WH RB NN NN SC IN other IN NN other'),
(116, 'WH RB NN NN SC other other NN nama nama'),
(117, 'WH RB NN NN SC other other NN nama nama nama'),
(118, 'WH RB NN NN SC other other NN nama nama nama nama'),
(119, 'WH RB NN NN NNP other SC VB IN NN other mata kuliah mata kuliah NN other'),
(120, 'WH RB NN NN NNP other SC VB IN NN other mata kuliah mata kuliah NN other'),
(121, 'WH NN NN NNP other SC VB IN NN other mata kuliah mata kuliah NN other'),
(122, 'WH NN NN SC IN other IN NN other'),
(123, 'WH NN NN SC other other NN nama nama'),
(124, 'WH NN NN SC other other NN nama nama nama'),
(125, 'WH RB NN NN SC other other nama nama'),
(126, 'WH RB NN NN SC other other nama nama nama'),
(127, 'WH NN other NN NN other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_matkul`
--
ALTER TABLE `detail_matkul`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `mahsiswa`
--
ALTER TABLE `mahsiswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id_pos`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `whitepos`
--
ALTER TABLE `whitepos`
  ADD PRIMARY KEY (`id_whitepos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_matkul`
--
ALTER TABLE `detail_matkul`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mahsiswa`
--
ALTER TABLE `mahsiswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `whitepos`
--
ALTER TABLE `whitepos`
  MODIFY `id_whitepos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
