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
(1, 'master', 'eb0a191797624dd3a48fa681d3061212', 'master', 'admin', ''),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '');

-- --------------------------------------------------------

create table mahasiswa (
ID_Mhs int (6) NOT NULL,
Nama_Mhs varchar(40),
Jenis_Kelamin varchar (1),
Alamat varchar (40),
Status varchar (10),
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
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `Kode` varchar(20) NOT NULL,
  `Nama_Mhs` varchar(40) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `keluar` int(20) NOT NULL,
primary key (Kode)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`kode`, `Nama_Mhs`,`tgl`, `jumlah`, `jenis`,`keterangan`,`keluar`) VALUES
('MSK00001' , 'Rommel Malik Kusnadi' , '2021-05-01','3000','masuk','Kas Feb 2021',0),
('MSK00002' , 'Wafa Tsabita', '2021-05-01', '6000' ,'masuk','Kas Feb-Maret 2021',0),
('MSK00003' , 'Rafa Azka Ulinnuha' ,'2021-05-02', '3000' ,'masuk','Kas Feb 2021',0),
('MSK00004' , 'Zahran Hanif Fathanmubin' , '2021-05-03','3000' ,'masuk' ,'Kas Feb 2021',0),
('MSK00005' , 'Wafi Fahruzzaman' ,'2021-05-03', '6000','masuk','Kas Feb-Maret 2021',0 ),
('MSK00006' , 'Laura Azra Aprilyanti' , '2021-05-04' , '6000','masuk','Kas Feb-Maret 2021',0),
('HTG00006' , 'admin1' ,'2021-05-09', '0','keluar','Fotocopy Tugas Sisdat',5000);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
