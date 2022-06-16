-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 05:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_brg` int(11) NOT NULL,
  `nm_brg` varchar(50) NOT NULL,
  `stk_brg` int(10) NOT NULL,
  `jml_trjl` int(10) NOT NULL,
  `tgl_trns` date NOT NULL,
  `jns_brg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_brg`, `nm_brg`, `stk_brg`, `jml_trjl`, `tgl_trns`, `jns_brg`) VALUES
(33, 'Kopi', 1000, 100, '2022-06-17', 'Konsumsi'),
(34, 'Teh', 100, 194, '2021-05-05', 'Konsumsi'),
(35, 'Kopi', 90, 15, '2021-05-10', 'Konsumsi'),
(37, 'Sabun Mandi', 100, 30, '2021-05-11', 'Pembersih'),
(38, 'Sampo', 100, 25, '2021-05-12', 'Pembersih'),
(39, 'Teh', 81, 5, '2022-06-23', 'Konsumsi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_brg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
