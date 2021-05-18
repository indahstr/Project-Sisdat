-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2020 at 08:44 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uang3`
--

-- --------------------------------------------------------

create table mahasiswa (
'ID_Mhs' int (6) NOT NULL,
'Nama_Mhs' varchar(40),
'Jenis_Kelamin' varchar (1),
'Alamat' varchar (40),
'Status' varchar (10),
primary key (ID_Mhs)
); 

insert into mahasiswa values
('200004' , 'Aulia Rahmanita' , 'P' , 'Kuningan' , 'BE'),
('200014' , 'Nawang Ilmi Adzani' , 'P' , 'Bandung' , 'BE'),
('200040' , 'Indah Sutriyati' , 'P' , 'Cimahi' , 'BE'),
('200001' , 'Ariq Hakim Ruswadi' , 'L' , 'Bandung' , 'non-BE'),
('200002' , 'Rommel Malik Kusnadi' , 'L' , 'Kuningan' , 'non-BE'),
('200003' , 'Affan Rifqy Kurniadi' , 'L' , 'Bandung' , 'non-BE'),
('200006' , 'Hali Putri Aisyah' , 'P' , 'Bandung' , 'non-BE'),
('200009' , 'Wafi Fahruzzaman' , 'L' , 'Bandung' , 'BE'),
('200010' , 'Rizky Mahardika Hariyanto' , 'L' , 'Cimahi' , 'BE'),
('200033' , 'Rafa Azka Ulinnuha' , 'P' , 'Bekasi' , 'non-BE'),
('200047' , 'Kharisma Fitri Nurunnisa Siahaan' , 'P' , 'Bandung' , 'non-BE'),
('200055' , 'Wafa Tsabita' , 'P' , 'Sumedang' , 'BE'),
('200062' , 'Zahran Hanif Fathanmubin' , 'L' , 'Jakarta' , 'BE'),
('200064' , 'Muhammad Ariiq Rakha Shafa' , 'L' , 'Garut' , 'BE'),
('200036' , 'Laura Azra Aprilyanti' , 'P' , 'Banjar' , 'BE');

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'master', '12345', 'master', 'admin', ''),
(2, 'admin', '12345', 'admin', 'admin', '');
(3, 'admin1','00000','admin','admin','');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `kode` int(11) NOT NULL,
  `penanggung` varchar(100) NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keluar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`kode`, `penanggung`, `keterangan`, `tgl`, `jumlah`, `jenis`, `keluar`) VALUES
(2165, 'bedahara', 'testtt', '2018-08-19', 50000, 'masuk', 0),
(2166, '0', 'test masuk 2', '2018-08-19', 30000, 'masuk', 0),
(2169, '0', 'gg', '2020-04-01', 20000, 'masuk', 0),
(11111, '0', 'ADAS', '2020-04-25', 2300000, 'masuk', 0),
(11112, '0', 'FGHFG', '2020-04-04', 200000, 'masuk', 0),
(11113, '', 'fafafafafafafa', '2020-04-06', 123456, 'masuk', 0),
(11114, 'asad', 'asd', '2020-04-01', 123456789, 'masuk', 0),
(11115, 'ivan', 'infaq', '2020-04-20', 120000, 'masuk', 0),
(11117, 'bendahara', 'ganti rugi', '2020-04-30', 0, 'keluar', 120000),
(11118, 'bendahara', 'bayar hutang', '2020-04-30', 0, 'keluar', 50000),
(11119, 'inan', 'beli aqua', '2020-04-21', 0, 'keluar', 25000),
(11120, 'inan', 'infaq hamba Allah', '0000-00-00', 250000, 'masuk', 0),
(11121, 'ivan', 'dapat dijaln', '2020-04-29', 10000, 'masuk', 0),
(11122, 'ivan', 'dari hasil mulung', '2020-04-28', 23000, 'masuk', 0),
(11123, 'ivan', 'hasil infaq 5 tahun', '2020-04-27', 100000000, 'masuk', 0),
(11124, 'a', 'a', '2020-04-01', 100000, 'masuk', 0),
(11125, 'b', 'b', '2020-04-22', 100000000, 'masuk', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
