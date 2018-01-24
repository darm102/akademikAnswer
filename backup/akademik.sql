-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Mar 2017 pada 06.04
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
  `hari` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_matkul`
--

INSERT INTO `detail_matkul` (`id_detail`, `id_dosen`, `id_matkul`, `jam`, `hari`) VALUES
(2, 1, 4, '-', 'senin'),
(3, 1, 10, '08.00-12.00', 'senin'),
(4, 2, 13, '08.00-10.00', 'rabu'),
(5, 2, 16, '10.00-12.00', 'kamis'),
(6, 3, 14, '08.00-10.00', 'jumat'),
(7, 3, 15, '08.00-10.00', 'selasa'),
(8, 4, 16, '10.00-14.00', 'rabu'),
(9, 4, 15, '08.00-10.00', 'senin'),
(10, 2, 1, '08.00-12.00', 'senin'),
(11, 3, 3, '08.00-12.00', 'jumat'),
(12, 3, 2, '08.00-12.00', 'selasa');

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
(1, '10001', 'wawan nurmansayah', 'informatika', 'sains dan teknologi', 'koordinator kp', 'nama'),
(2, '1002', 'latius hermawan', 'informatika', 'sains dan teknologi', 'dosen', 'nama'),
(3, '1003', 'kristoforus jawa bendi', 'informatika', 'Sains dan teknologi', 'dekan', 'nama'),
(4, '10003', 'nurmansayah', 'teknik industri', 'sains dan teknologi', 'dosen', 'nama'),
(5, '1097553435', 'javanda', 'informatika', 'sains dan teknologi', 'ketua prodi', 'nama');

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
(1, '1313015', 'wahyu', 'informatika', 'sains dan teknolgi', 'jln dimana saja', '0988776554', 2013, 2),
(2, '1313013', 'johan nes', 'informatika', 'sains dan teknologi', 'jln waktu berputar', '0988776554', 2013, 2),
(3, '1312012', 'vero', 'industri', 'sains dan teknologi', 'jln merpati', '0878765556', 2014, 4);

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
(1, '', 'information retival', 0, 0, '', '', '', '', 'mata kuliah'),
(2, '', 'kriptografi', 0, 0, '', '', '', '', 'mata kuliah'),
(3, '', 'kerja praktik', 0, 0, '', '', '', '', 'mata kuliah'),
(4, '', 'kp', 0, 0, '', '', '', '', 'mata kuliah'),
(5, 'IF-12014', 'Pengantar Teknologi Informasi', 4, 1, 'Tidak Ada', 'Setelah Menggikuti mata kuliah ini mahasiswa diharapkan mampu mengunakan komputer dengan baik,serta mahasiswa dan melihat kemajuan teknolgi.', 'MKK', 'Informatika', 'mata kuliah'),
(6, 'IF-12015', 'Algoritma & struktur data I', 4, 1, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritma', 'MKK', 'Informatika', 'mata kuliah'),
(7, 'IF-12016', 'Struktur diskrit', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiswa diharapkan mengerti mengenai struktur diskrit', 'MKK', 'Informatika', 'mata kuliah'),
(8, 'IF-12017', 'Sistem digital', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiswa diharapkan mengerti mengenai sistem digital dan penggunaanya pada teknologi', 'MKK', 'Informatika', 'mata kuliah'),
(9, 'IF-12018', 'Kalkulus', 4, 1, 'Tidak Ada', 'Setelah menggikuti mata kuliah ini mahasiwa diharpkan mengerti konsep kalkulus', 'MKK', 'Informatika', 'mata kuliah'),
(10, 'IF-12019', 'Algoritma & struktur data II', 4, 2, 'Algoritma & struktur data I (C)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(11, 'IF-12020', 'Komunikasi Data', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(12, 'IF-12021', 'aljabar linier', 2, 2, 'Kalkulus (D)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(13, 'IF-12022', 'Teori Bahasa dan Otomata', 2, 2, 'Struktur diskrit (D)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(14, 'IF-12023', 'Bahasa Inggris I', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(15, 'IF-12024', 'Tata Tulis Ilmiah', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(16, 'IF-12025', 'Manajeman Umum', 2, 2, 'Tidak Ada', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKK', 'Informatika', 'mata kuliah'),
(17, 'IF-12026', 'Arsitektur dan Organisasi Komputer', 4, 2, 'Sistem digital (C)', 'Setelah menggikuti ini mahasiswa dapat memahami dasar algoritm', 'MKB', 'Informatika', 'mata kuliah');

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
(1, 'siapa dosen yang mengajar information retival'),
(2, 'siapa yang mengajar kriptografi'),
(3, 'siapa dosen yang mengajar kriptografi'),
(4, 'apa saja mata kuliah yang diajar oleh wawan nurmansayah'),
(5, 'siapa saja dosen yang mengajar prodi informatika'),
(6, 'siapa koordinator kerja praktik informatika'),
(7, 'siapa ketua prodi informatika'),
(8, 'siapa dosen pembimbing akademik mahasiswa prodi informatika tahun akademik 2016'),
(9, 'siapa dosen pembimbing akademik mahasiswa informatika tahun akademik 2016'),
(10, 'siapa dosen pembimbing akademik mahasiswa informatika tahun akademik 2013'),
(11, 'siapa dosen pembimbing akademik mahasiswa prodi informatika tahun akademik 2013'),
(12, 'siapa mahasiswa yang dibimbing akademik oleh latius hermawan'),
(13, 'apa nidn dosen latius hermawan'),
(14, 'apa nidn latius hermawan'),
(15, 'apa nidn dekan fakultas sains dan teknologi'),
(16, 'apa nidn ketua prodi fakultas sains dan teknologi'),
(17, 'apa nidn koordinator kerja praktik informatika'),
(18, 'apa nidn ketua prodi informatika'),
(19, 'apa syarat mata kuliah aljabar linier'),
(20, 'apa syarat untuk mengambil mata kuliah aljabar linier'),
(21, 'apa saja mata kuliah prodi informatika yang dibuka pada saat krs semester 1'),
(22, 'apa mata kuliah prodi informatika yang dibuka pada semester 1'),
(23, 'apa saja mata kuliah yang diajar oleh dosen latius hermawan');

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
(36, 'praktik', 'NN');

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
(1, 'WH NN SC VB mata kuliah'),
(2, 'WH NN SC VB other '),
(3, 'WH RB NN SC VB NNP other'),
(4, 'WH RB NN NN SC other other nama'),
(5, 'WH SC VB mata kuliah'),
(6, 'WH RB NN SC VB NN NN mata kuliah'),
(7, 'WH NN NN NN mata kuliah'),
(8, 'WH SC VB NN NN mata kuliah'),
(10, 'WH SC VB IN NNP other'),
(11, 'WH NN SC VB IN NNP other'),
(12, 'WH RB NN SC VB IN NNP other'),
(13, 'WH NN NN other NN NNP other NN other other'),
(14, 'WH NN SC other other other nama'),
(15, 'WH NNP mata kuliah other'),
(16, 'WH NN NNP other'),
(17, 'WH other NN other'),
(18, 'WH other NN nama'),
(19, 'WH other nama'),
(20, 'WH other other NN other'),
(21, 'WH other NNP mata kuliah other'),
(22, 'WH other NN NNP other'),
(23, 'WH NN NN NN mata kuliah'),
(24, 'WH NN other VB NN NN other'),
(25, 'WH RB NN NN NNP other SC VB IN NN other NN other'),
(26, 'WH NN NN NNP other SC VB IN NN other'),
(27, 'WH NN NN mata kuliah VB IN NN other'),
(28, 'WH NN other other NN other VB'),
(29, 'WH RB NN NN SC other other NN nama'),
(30, 'WH NN NN NN other'),
(31, 'WH other other'),
(32, 'WH NN NN other NN other NN other other'),
(33, 'WH other other other'),
(34, 'WH NN other VB NN NN mata kuliah'),
(35, 'WH RB NN NN SC VB IN NN other ');

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
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mahsiswa`
--
ALTER TABLE `mahsiswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `whitepos`
--
ALTER TABLE `whitepos`
  MODIFY `id_whitepos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
