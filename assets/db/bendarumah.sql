-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2022 at 08:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bendarumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `benda`
--

CREATE TABLE `benda` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `harga` char(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `benda`
--

INSERT INTO `benda` (`id`, `nama`, `tahun`, `harga`, `warna`, `gambar`) VALUES
(1, 'gitar', 2020, '500.000', 'coklat muda', 'gitar.jpg'),
(2, 'helm', 2022, '400.000', 'hitam glossy', 'helm.jpg'),
(3, 'hp infinix', 2019, '1.700.000', 'hitam', 'hp.jpg'),
(4, 'laptop', 2015, '5.000.000', 'hitam', 'laptop.jpg'),
(5, 'aquarium', 2013, '90.000', 'bening', 'aquarium.jpg'),
(13, 'tas kkn', 2021, '100000', 'dongker coklat', 'tas'),
(14, 'mouse', 2022, '50000', 'merah hitam', 'mouse');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `nrp` int(6) NOT NULL,
  `email` varchar(250) NOT NULL,
  `jurusan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`) VALUES
(1, 'saep', 123456, 'saep@gmail.com', 'sistem informasi'),
(2, 'molana', 123457, 'molana@gmail.com', 'sistem informasi'),
(3, 'budi santoso', 123458, 'budi@gmail.com', 'PAI'),
(9, 'abc', 123, 'abc@123.abc', 'Teknik Informatika'),
(10, 'pppcccc', 321, 'ppp@321.ppp', 'PJKR'),
(11, 'jay', 333222111, 'jay@123.jay', 'PGSD'),
(12, 'oki oki oki', 980980, 'oki@980.oki', 'PAI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'saep', '$2y$10$nM.b3jqrBL2eNj2tbI7nAuwx2ffqPEBAPcFt4FtTFru1yVi./ROu6', 0),
(3, 'admin', '$2y$10$eVXp7yi3E2J4ejoB0ndxnuR9m2kIm9oVvsKK/7ZPdm/7QQ7AGC3ii', 1),
(4, 'saepudin', '$2y$10$.2VatmH9AJzsCao5mV9Ea.MxuNwhZVeSTtkvZaNvPbJIq3ILlOdCa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benda`
--
ALTER TABLE `benda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benda`
--
ALTER TABLE `benda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
