-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 27 Okt 2022 pada 12.55
-- Versi server: 8.0.29
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manlan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_admin`
--

CREATE TABLE `manlan_admin` (
  `id_user` int NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(200) NOT NULL,
  `sebagai` enum('calonasisten','calonprogrammer','asisten','programmer','staff','admin') NOT NULL,
  `foto` varchar(100) NOT NULL,
  `npm` varchar(25) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `region` varchar(100) NOT NULL,
  `angkatan` varchar(25) NOT NULL,
  `lahir` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `cv` varchar(100) NOT NULL,
  `surat_lamaran` varchar(100) NOT NULL,
  `rangkuman_nilai` varchar(100) NOT NULL,
  `krs_upload` varchar(100) NOT NULL,
  `ktm_upload` varchar(100) NOT NULL,
  `sertifikat` varchar(100) NOT NULL,
  `seleksi_berkas` enum('ya','tidak','') NOT NULL,
  `seleksi_ujian` enum('ya','tidak','') NOT NULL,
  `seleksi_wawancara` enum('ya','tidak','') NOT NULL,
  `seleksi_staff` enum('ya','tidak','') NOT NULL,
  `status_peserta` enum('proses','lulus','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_admin`
--

INSERT INTO `manlan_admin` (`id_user`, `email`, `password`, `nama`, `jurusan`, `sebagai`, `foto`, `npm`, `kelas`, `telepon`, `region`, `angkatan`, `lahir`, `alamat`, `cv`, `surat_lamaran`, `rangkuman_nilai`, `krs_upload`, `ktm_upload`, `sertifikat`, `seleksi_berkas`, `seleksi_ujian`, `seleksi_wawancara`, `seleksi_staff`, `status_peserta`) VALUES
(1, 'admin.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Admin', 's1-teknik-inromatika', 'admin', 'admin-panitia.png', 'adminadmin', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', 'ya', 'ya', 'ya', 'lulus'),
(2, 'staff.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Staff', 'staff', 'staff', 'staff-panitia.png', 'staff', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', 'ya', 'ya', 'ya', 'lulus'),
(3, 'asisten.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Asisten', 's1-akuntansi', 'asisten', 'asisten-panitia.png', 'asisten', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', 'ya', 'ya', 'ya', 'lulus'),
(4, 'programmer.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Programmer', 's1-sistem-informasi', 'programmer', 'programmer-panitia.png', 'programmer', '', '', '', '', '', '', '', '', '', '', '', '', 'ya', 'ya', 'ya', 'ya', 'lulus'),
(5, 'calonasisten.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Calon Asisten', 's1-manajemen', 'calonasisten', 'calonasisten.png', 'calonasisten', '2EA99', '085800112233', 'depok', '2022', '2002-01-30', 'Margonda', 'cv.pdf', 'surat_lamaran.pdf', 'rangkuman_nilai.pdf', 'krs.pdf', 'ktm.pdf', '', 'ya', 'ya', 'ya', 'ya', 'lulus'),
(6, 'calonprogrammer.manlan@webku.one', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Calon Programmer', 's1-teknik-inromatika', 'calonprogrammer', 'calonprogrammer.png', 'calonprogrammer', '2IA99', '081200112233', 'depok', '2022', '2002-01-30', 'Margonda', '', '', '', '', '', '', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_member`
--

CREATE TABLE `manlan_member` (
  `id_member` int NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_member`
--

INSERT INTO `manlan_member` (`id_member`, `gambar`, `nama`, `status`) VALUES
(1, 'KARTIKA SARI STAFF.png', 'DR. KARTIKA SARI', 'STAFF'),
(2, 'AGUS SUJARWANTO STAFF.png', 'AGUS SUJARWANTO', 'STAFF'),
(3, 'DINI TRI WARDANI STAFF.png', 'DINI TRI WARDANI', 'STAFF'),
(4, 'IBNU CAHYO RAMADHAN STAFF.png', 'IBNU CAHYO RAMADHAN', 'STAFF'),
(5, 'ABDUL IMRON ASISTEN.png', 'ABDUL', 'ASISTEN'),
(6, 'AGNES SAFIRA ALEXANDRA ASISTEN.png', 'AGNES', 'ASISTEN'),
(7, 'ALFIAH NUR ASISTEN.png', 'ALFIAH', 'ASISTEN'),
(8, 'ALIFYA DARADINANTI FARMAYANA ASISTEN.png', 'DARA', 'ASISTEN'),
(9, 'ALINZA PURWITIYA ASISTEN.png', 'ALINZA', 'ASISTEN'),
(10, 'AMELIA ANGGRAINI ASISTEN.png', 'AMELIA', 'ASISTEN'),
(11, 'ANI SUSELA ASISTEN.png', 'ANI', 'ASISTEN'),
(12, 'ANNISA AL AYUBY ASISTEN.png', 'ANNISA', 'ASISTEN'),
(13, 'CLARISSA FIDELIA ASISTEN.png', 'CLARISSA', 'ASISTEN'),
(14, 'CLEOSA REYNARD ASISTEN.png', 'CLEOSA', 'ASISTEN'),
(15, 'DAVID GALIH ASISTEN.png', 'DAVID', 'ASISTEN'),
(16, 'DEMITRIYANA ZACHRAH ASISTEN.png', 'DEMITRIYANA', 'ASISTEN'),
(17, 'DEWANA FILARDY ASISTEN.png', 'DEWANA', 'ASISTEN'),
(18, 'DZIKRI ALKHAFI ASISTEN.png', 'DZIKRI', 'ASISTEN'),
(19, 'EVA NOVIA ASISTEN.png', 'EVA', 'ASISTEN'),
(20, 'FADHIL WIRA ASISTEN.png', 'FADHIL', 'ASISTEN'),
(21, 'FADHLURRAHMAN FAJARI ASISTEN.png', 'FADHLURRAHMAN', 'ASISTEN'),
(22, 'FIINA DWIJULIANTI ASISTEN.png', 'FIINA', 'ASISTEN'),
(23, 'FLAMELIA ASISTEN.png', 'FLAMELIA', 'ASISTEN'),
(24, 'GHITHRIF APPRILIO ASISTEN.png', 'GHITHRIF', 'ASISTEN'),
(25, 'HABIB FITRA RAMADHAN ASISTEN.png', 'HABIB', 'ASISTEN'),
(26, 'HANA KAMILIA ARYANTO ASISTEN.png', 'HANA', 'ASISTEN'),
(27, 'HELEN FITRIANA ASISTEN.png', 'HELEN', 'ASISTEN'),
(28, 'HILMI AKBAR ASISTEN.png', 'HILMI', 'ASISTEN'),
(29, 'I GEDE BAYU ASISTEN.png', 'BAYU', 'ASISTEN'),
(30, 'IMAM ABDUL FATAH ASISTEN.png', 'IMAM', 'ASISTEN'),
(31, 'JESSICA LIDYA ASISTEN.png', 'JESSICA', 'ASISTEN'),
(32, 'KIKI MULIAWATI ASISTEN.png', 'KIKI', 'ASISTEN'),
(33, 'LUTPIAH NUR AZIZAH ASISTEN.png', 'LUTPIAH', 'ASISTEN'),
(34, 'MARIA HYASINDIKA ASISTEN.png', 'MARIA', 'ASISTEN'),
(35, 'MAULID ZHAHIRAH ASISTEN.png', 'MAULID', 'ASISTEN'),
(36, 'MUTIA WARDANI ASISTEN.png', 'MUTIA', 'ASISTEN'),
(37, 'NADILA WIJAYANTI ASISTEN.png', 'NADILA', 'ASISTEN'),
(38, 'NAUFAL IRAWAN ASISTEN.png', 'NAUFAL', 'ASISTEN'),
(39, 'NIA JUITA RODEARNI ASISTEN.png', 'NIA', 'ASISTEN'),
(40, 'NUR IKLAS SAPUTRA ASISTEN.png', 'SAPUTRA', 'ASISTEN'),
(41, 'NURUL HIKMAH ASISTEN.png', 'NURUL', 'ASISTEN'),
(42, 'PUTRI AYU DIAH ASISTEN.png', 'PUTRI', 'ASISTEN'),
(43, 'RAIHAN HAMMAM SUKMA ASISTEN.png', 'RAIHAN', 'ASISTEN'),
(44, 'RATNA EKA YULIATI ASISTEN.png', 'RATNA', 'ASISTEN'),
(45, 'RAVITA NURUL ASMI ASISTEN.png', 'RAVITA', 'ASISTEN'),
(46, 'RENDI KIKI RIZKI ASISTEN.png', 'RENDI', 'ASISTEN'),
(47, 'RENGGANIS PUTRI ASISTEN.png', 'RENGGANIS', 'ASISTEN'),
(48, 'REZA HIDAYAT ASISTEN.png', 'REZA', 'ASISTEN'),
(49, 'RIFDAH LUTHFIYYAH ASISTEN.png', 'RIFDAH', 'ASISTEN'),
(50, 'RIMA ROSALINA CAHYANI ASISTEN.png', 'RIMA', 'ASISTEN'),
(51, 'RIYAN ARDIANSAH ASISTEN.png', 'RIYAN', 'ASISTEN'),
(52, 'RIZKA AZZAHRA ASISTEN.png', 'RIZKA', 'ASISTEN'),
(53, 'RIZKY RAMADHAN ASISTEN.png', 'RIZKY', 'ASISTEN'),
(54, 'ROBI YULIANA RAHMAT ASISTEN.png', 'ROBI', 'ASISTEN'),
(55, 'SILVIRA ALIVIA SYAHNISA ASISTEN.png', 'SILVIRA', 'ASISTEN'),
(56, 'SYAIR YASMANI AGITRA ASISTEN.png', 'SYAIR', 'ASISTEN'),
(57, 'SYIFA NURUL AMELIANA ASISTEN.png', 'SYIFA', 'ASISTEN'),
(58, 'TALINDRA SALSABILA ASISTEN.png', 'TALINDRA', 'ASISTEN'),
(59, 'TASYA APRILIA ASISTEN.png', 'TASYA', 'ASISTEN'),
(60, 'VIRLY YOLANDA ARYANTI ASISTEN.png', 'VIRLY', 'ASISTEN'),
(61, 'WALDAH SALASAH ASISTEN.png', 'WALDAH', 'ASISTEN'),
(62, 'WIDYATI CAHYA PUTRI ASISTEN.png', 'WIDYATI', 'ASISTEN'),
(63, 'ZANITA MAHARANI ASISTEN.png', 'ZANITA', 'ASISTEN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_nilaiprogrammer`
--

CREATE TABLE `manlan_nilaiprogrammer` (
  `id_nilaiprogrammer` int NOT NULL,
  `id_penilaian` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ketepatan` varchar(100) NOT NULL,
  `kecepatan` varchar(100) NOT NULL,
  `rekomendasi` enum('ya','tidak') NOT NULL,
  `nama_penilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_nilaiprogrammer`
--

INSERT INTO `manlan_nilaiprogrammer` (`id_nilaiprogrammer`, `id_penilaian`, `nama`, `email`, `ketepatan`, `kecepatan`, `rekomendasi`, `nama_penilai`) VALUES
(1, '5', 'Calon Asisten', 'calonasisten.manlan@webku.one', '80', '80', 'ya', 'admin'),
(2, '6', 'Calon Programmer', 'calonprogrammer.manlan@webku.one', '', '', 'tidak', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_nilaistaff`
--

CREATE TABLE `manlan_nilaistaff` (
  `id_nilaistaff` int NOT NULL,
  `id_penilaian` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `penyampaian` int NOT NULL,
  `penguasaan` int NOT NULL,
  `pengetahuan` int NOT NULL,
  `kerapihan` int NOT NULL,
  `ketegasan` int NOT NULL,
  `komentar` text NOT NULL,
  `rekomendasi` enum('ya','tidak','') NOT NULL,
  `nama_penilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_nilaistaff`
--

INSERT INTO `manlan_nilaistaff` (`id_nilaistaff`, `id_penilaian`, `nama`, `email`, `penyampaian`, `penguasaan`, `pengetahuan`, `kerapihan`, `ketegasan`, `komentar`, `rekomendasi`, `nama_penilai`) VALUES
(1, '5', 'Calon Asisten', 'calonasisten.manlan@webku.one', 90, 80, 80, 90, 80, '...', 'ya', 'admin'),
(2, '6', 'Calon Programmer', 'calonprogrammer.manlan@webku.one', 0, 0, 0, 0, 0, '...', 'tidak', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_nilaitutor`
--

CREATE TABLE `manlan_nilaitutor` (
  `id_nilaitutor` int NOT NULL,
  `id_penilaian` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `penyampaian` int NOT NULL,
  `penguasaan` int NOT NULL,
  `pengetahuan` int NOT NULL,
  `kerapihan` int NOT NULL,
  `ketegasan` int NOT NULL,
  `rekomendasi` enum('','ya','tidak') NOT NULL,
  `nama_penilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_nilaitutor`
--

INSERT INTO `manlan_nilaitutor` (`id_nilaitutor`, `id_penilaian`, `nama`, `email`, `penyampaian`, `penguasaan`, `pengetahuan`, `kerapihan`, `ketegasan`, `rekomendasi`, `nama_penilai`) VALUES
(1, '5', 'Calon Asisten', 'calonasisten.manlan@webku.one', 90, 80, 80, 90, 80, 'ya', 'admin'),
(2, '6', 'Calon Programmer', 'calonprogrammer.manlan@webku.one', 0, 0, 0, 0, 0, 'tidak', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_nilaiujian`
--

CREATE TABLE `manlan_nilaiujian` (
  `id_nilaiujian` int NOT NULL,
  `id_penilaian` int NOT NULL,
  `nilai_ujian` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_nilaiujian`
--

INSERT INTO `manlan_nilaiujian` (`id_nilaiujian`, `id_penilaian`, `nilai_ujian`) VALUES
(1, 6, 0),
(2, 5, 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `manlan_nilaiwawancara`
--

CREATE TABLE `manlan_nilaiwawancara` (
  `id_nilaiwawancara` int NOT NULL,
  `id_penilaian` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `komentar` text NOT NULL,
  `rekomendasi` enum('ya','tidak') NOT NULL,
  `nama_penilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `manlan_nilaiwawancara`
--

INSERT INTO `manlan_nilaiwawancara` (`id_nilaiwawancara`, `id_penilaian`, `nama`, `email`, `komentar`, `rekomendasi`, `nama_penilai`) VALUES
(1, '5', 'Calon Asisten', 'calonasisten.manlan@webku.one', 'nice', 'ya', 'admin'),
(2, '6', 'Calon Programmer', 'calonprogrammer.manlan@webku.one', '...', 'tidak', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `manlan_admin`
--
ALTER TABLE `manlan_admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `manlan_member`
--
ALTER TABLE `manlan_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `manlan_nilaiprogrammer`
--
ALTER TABLE `manlan_nilaiprogrammer`
  ADD PRIMARY KEY (`id_nilaiprogrammer`);

--
-- Indeks untuk tabel `manlan_nilaistaff`
--
ALTER TABLE `manlan_nilaistaff`
  ADD PRIMARY KEY (`id_nilaistaff`);

--
-- Indeks untuk tabel `manlan_nilaitutor`
--
ALTER TABLE `manlan_nilaitutor`
  ADD PRIMARY KEY (`id_nilaitutor`);

--
-- Indeks untuk tabel `manlan_nilaiujian`
--
ALTER TABLE `manlan_nilaiujian`
  ADD PRIMARY KEY (`id_nilaiujian`);

--
-- Indeks untuk tabel `manlan_nilaiwawancara`
--
ALTER TABLE `manlan_nilaiwawancara`
  ADD PRIMARY KEY (`id_nilaiwawancara`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `manlan_admin`
--
ALTER TABLE `manlan_admin`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `manlan_member`
--
ALTER TABLE `manlan_member`
  MODIFY `id_member` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `manlan_nilaiprogrammer`
--
ALTER TABLE `manlan_nilaiprogrammer`
  MODIFY `id_nilaiprogrammer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `manlan_nilaistaff`
--
ALTER TABLE `manlan_nilaistaff`
  MODIFY `id_nilaistaff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `manlan_nilaitutor`
--
ALTER TABLE `manlan_nilaitutor`
  MODIFY `id_nilaitutor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `manlan_nilaiujian`
--
ALTER TABLE `manlan_nilaiujian`
  MODIFY `id_nilaiujian` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `manlan_nilaiwawancara`
--
ALTER TABLE `manlan_nilaiwawancara`
  MODIFY `id_nilaiwawancara` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
