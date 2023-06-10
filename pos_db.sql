-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 06:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `kategori` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `kategori`) VALUES
(1, 'Aqua 330ml', 2500, '1'),
(2, 'Mie Instan Indomie Goreng', 3000, '1'),
(3, 'Teh Botol Sosro 500ml', 4500, '1'),
(4, 'Susu Ultra UHT 1L', 19000, '1'),
(5, 'Kopiko 25 g', 2000, '1'),
(6, 'Pringles 107 g', 27300, '1'),
(7, 'Cheetos 70 g', 8000, '1'),
(8, 'Oreo 137 g', 10000, '1'),
(9, 'Nutella 350 g', 50000, '1'),
(10, 'Pocari Sweat 500 mL', 8000, '1'),
(11, 'Pringles 42 g', 13500, '1'),
(12, 'Teh Pucuk 400 mL', 7000, '1'),
(13, 'Silver Queen 165 g', 25000, '1'),
(14, 'Kellogg\'s Cereal 500 g', 49800, '1'),
(15, 'Naraya Oat Cookies 150 g', 25000, '1'),
(16, 'FINNA Pars', 5500, '1'),
(17, 'Supermie 80 g', 2500, '1'),
(18, 'Good Day 800 mL', 12000, '1'),
(19, 'Naraya Muruku 60 g', 13900, '1'),
(20, 'Coca-Cola 1.25 L', 10000, '1'),
(21, 'Pepsi 1.25 L', 9000, '1'),
(22, 'Fanta 1.25 L', 8000, '1'),
(23, 'Sprite 1.25 L', 8000, '1'),
(24, 'paldo Tofu Kimchi 60 g', 13000, '1'),
(25, 'Monde Serena Egg Rolls 168 g', 25000, '1'),
(26, 'Chitato Lite Seaweed 68 g', 11500, '1'),
(27, 'meiji Yan Yan 40 g', 9500, '1'),
(28, 'Good Time Coffe 72 g', 8900, '1'),
(29, 'Good Time Rainbow 72 g', 8900, '1'),
(30, 'Lays 60 g', 12000, '1'),
(31, 'Chitato 75 g', 10000, '1'),
(32, 'Qtela 60 g', 5000, '1'),
(33, 'Kit Kat 45 g', 8000, '1'),
(34, 'Tango 350 mL', 7000, '1'),
(35, 'Dancow 400 g', 25000, '1'),
(36, 'Teh Botol 500 mL', 5000, '1'),
(37, 'Sosro 450 mL', 7000, '1'),
(38, 'Kapal Api 200 g', 3000, '1'),
(39, 'ABC 135 mL', 10000, '1'),
(40, 'Richeese 150 g', 15000, '1'),
(41, 'Mie ABC 70 g', 5000, '1'),
(42, 'Nutrijell 10 g', 3000, '1'),
(43, 'French Fries 2000 62 g', 7900, '1'),
(44, 'Lemonilo Brownies', 12900, '1'),
(45, 'CHIKI Balls 55 g', 7100, '1'),
(46, 'WONG COCO Pudding 120 g', 13100, '1'),
(47, 'Twister Vanilla 70 g', 8500, '1'),
(48, 'Tango Vanilla 110 g', 8900, '1'),
(49, 'Tao Kae Noi 15 g', 17700, '1'),
(50, 'Yupi Gummy 110 g', 12000, '1'),
(51, 'Pulsa Telkomsel 5000', 7000, '2'),
(52, 'Pulsa Telkomsel 10000', 13000, '2'),
(53, 'Pulsa Telkomsel 20000', 22000, '2'),
(54, 'Pulsa Telkomsel 50000', 52000, '2'),
(55, 'Pulsa Telkomsel 100000', 101000, '2'),
(56, 'Pulsa Tri 5000', 6000, '2'),
(57, 'Pulsa Tri 10000', 12000, '2'),
(58, 'Pulsa Tri 20000', 22000, '2'),
(59, 'Pulsa Tri 50000', 52000, '2'),
(60, 'Pulsa Tri 100000', 102000, '2'),
(61, 'Pulsa XL 5000', 6000, '2'),
(62, 'Pulsa XL 10000', 12000, '2'),
(63, 'Pulsa XL 20000', 22000, '2'),
(64, 'Pulsa XL 50000', 51000, '2'),
(65, 'Pulsa XL 100000', 101000, '2'),
(66, 'Pulsa Smartfren 5000', 7500, '2'),
(67, 'Pulsa Smartfren 10000', 12000, '2'),
(68, 'Pulsa Smartfren 20000', 22000, '2'),
(69, 'Pulsa Smartfren 50000', 52000, '2'),
(70, 'Pulsa Smartfren 100000', 102000, '2'),
(71, 'Token Listrik 20000', 23000, '3'),
(72, 'Token Listrik 50000', 52000, '3'),
(73, 'Token Listrik 100000', 101000, '3'),
(74, 'Token Listrik 200000', 200000, '3'),
(75, 'Token Listrik 500000', 500000, '3'),
(76, 'Token Listrik 1000000', 1000000, '3'),
(77, 'Token Listrik 5000000', 5000000, '3');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_barang`, `id_transaksi`, `qty`, `harga`) VALUES
(6, 1, 8, 5, 50000),
(38, 59, 762460, 1, 52000),
(39, 11, 762460, 1, 13500),
(40, 59, 794038, 1, 52000),
(41, 11, 794038, 1, 13500),
(42, 11, 649910, 1, 13500),
(43, 15, 604362, 1, 25000),
(44, 15, 876489, 1, 25000),
(45, 15, 159923, 7, 175000),
(46, 15, 680907, 1, 25000),
(47, 59, 450511, 1, 52000),
(48, 75, 450511, 1, 500000),
(49, 10, 878599, 1, 8000),
(50, 35, 782260, 6, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `harga` float NOT NULL,
  `tanggal_kadaluwarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `harga`, `tanggal_kadaluwarsa`) VALUES
(1, 'Aqua 330ml', 2500, '2024-06-09'),
(2, 'Mie Instan Indomie G', 3000, '2024-06-09'),
(3, 'Teh Botol Sosro 500m', 4500, '2024-06-09'),
(4, 'Susu Ultra UHT 1L', 19000, '2024-06-09'),
(5, 'Kopiko 25 g', 2000, '2024-06-09'),
(6, 'Pringles 107 g', 27300, '2024-06-09'),
(7, 'Cheetos 70 g', 8000, '2024-06-09'),
(8, 'Oreo 137 g', 10000, '2024-06-09'),
(9, 'Nutella 350 g', 50000, '2024-06-09'),
(10, 'Pocari Sweat 500 mL', 8000, '2024-06-09'),
(11, 'Pringles 42 g', 13500, '2024-06-09'),
(12, 'Teh Pucuk 400 mL', 7000, '2024-06-09'),
(13, 'Silver Queen 165 g', 25000, '2024-06-09'),
(14, 'Kelloggs Cereal 500 ', 49800, '2024-06-09'),
(15, 'Naraya Oat Cookies 1', 25000, '2024-06-09'),
(16, 'FINNA Pars', 5500, '2024-06-09'),
(17, 'Supermie 80 g', 2500, '2024-06-09'),
(18, 'Good Day 800 mL', 12000, '2024-06-09'),
(19, 'Naraya Muruku 60 g', 13900, '2024-06-09'),
(20, 'Coca-Cola 1.25 L', 10000, '2024-06-09'),
(21, 'Pepsi 1.25 L', 9000, '2024-06-09'),
(22, 'Fanta 1.25 L', 8000, '2024-06-09'),
(23, 'Sprite 1.25 L', 8000, '2024-06-09'),
(24, 'paldo Tofu Kimchi 60', 13000, '2024-06-09'),
(25, 'Monde Serena Egg Rol', 25000, '2024-06-09'),
(26, 'Chitato Lite Seaweed', 11500, '2024-06-09'),
(27, 'meiji Yan Yan 40 g', 9500, '2024-06-09'),
(28, 'Good Time Coffe 72 g', 8900, '2024-06-09'),
(29, 'Good Time Rainbow 72', 8900, '2024-06-09'),
(30, 'Lays 60 g', 12000, '2024-06-09'),
(31, 'Chitato 75 g', 10000, '2024-06-09'),
(32, 'Qtela 60 g', 5000, '2024-06-09'),
(33, 'Kit Kat 45 g', 8000, '2024-06-09'),
(34, 'Tango 350 mL', 7000, '2024-06-09'),
(35, 'Dancow 400 g', 25000, '2024-06-09'),
(36, 'Teh Botol 500 mL', 5000, '2024-06-09'),
(37, 'Sosro 450 mL', 7000, '2024-06-09'),
(38, 'Kapal Api 200 g', 3000, '2024-06-09'),
(39, 'ABC 135 mL', 10000, '2024-06-09'),
(40, 'Richeese 150 g', 15000, '2024-06-09'),
(41, 'Mie ABC 70 g', 5000, '2024-06-09'),
(42, 'Nutrijell 10 g', 3000, '2024-06-09'),
(43, 'French Fries 2000 62', 7900, '2024-06-09'),
(44, 'Lemonilo Brownies', 12900, '2024-06-09'),
(45, 'CHIKI Balls 55 g', 7100, '2024-06-09'),
(46, 'WONG COCO Pudding 12', 13100, '2024-06-09'),
(47, 'Twister Vanilla 70 g', 8500, '2024-06-09'),
(48, 'Tango Vanilla 110 g', 8900, '2024-06-09'),
(49, 'Tao Kae Noi 15 g', 17700, '2024-06-09'),
(50, 'Yupi Gummy 110 g', 12000, '2024-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `pulsa`
--

CREATE TABLE `pulsa` (
  `id_pulsa` int(11) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `harga` float NOT NULL,
  `nominal` float NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pulsa`
--

INSERT INTO `pulsa` (`id_pulsa`, `operator`, `no_telp`, `harga`, `nominal`, `id_barang`, `id_transaksi`) VALUES
(1, 'Smartfren', '086131258715', 102000, 100000, 70, 423574),
(2, 'Tri', '089571293712', 52000, 50000, 59, 762460),
(3, 'Tri', '089571293712', 52000, 50000, 59, 794038),
(4, 'Tri', '089501293401', 52000, 50000, 59, 450511);

-- --------------------------------------------------------

--
-- Table structure for table `qris_details`
--

CREATE TABLE `qris_details` (
  `id` int(11) NOT NULL,
  `qris_content` varchar(255) DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `qris_invoiceid` int(11) DEFAULT NULL,
  `qris_nmid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qris_details`
--

INSERT INTO `qris_details` (`id`, `qris_content`, `request_date`, `qris_invoiceid`, `qris_nmid`) VALUES
(1, '00020101021226680016ID.CO.TELKOM.WWW011893600898025599662702150001952559966270303UMI51440014ID.CO.QRIS.WWW0215ID10200211817450303UMI520457325303360540825578.005502015802ID5916InterActive Corp6013KOTA SURABAYA61056013662130509413255111630439B7', '2020-08-07 04:13:42', 413255111, 'ID1020021181745'),
(2, 'veZdVfQXho3xQRMwPEnOEyEwRCEiXIvgTewVWfFyCXZ8d0y3fF9Rfj0L405i4KEIuxnvikfXpjCebPWsMywNnAfDlCjQ9T7BfzalSHYyLghIydQlPnnVSTJRfBe6ESFrL08XGC0XzY9E7IUK9eX7a7Qxgi8O8O302NEvw4Zde2yDfzVHsxT32aM8ONwk2yWCE2ZAs5upXcg8bh72Og7HD4f775AjBw33jEbEgHBUdBk1oNe9Dq', '2023-06-10 12:08:26', 795604, 'ID1022175375800'),
(3, 'kKLJ2au3Lr2ycn84xoGhVqxZessRxk2HLnWVpXO2qUOIQ7KuAnP6uudXmJ1cq7p3l3VJauSLf8dDFpMq5ulX5x6JXpJL2JMCpjUIpRTH6N2WsPezMaz4lzMCrWf9pz4gaSXdUlkJznSLOgvd5AqXBpqjZhQf4jrXOUtC8MYN9GCQyNjDCrkI8JqKswsjdpFWExydXpsyyhMmLJruRSyRC9tLa7AMIu7EjOp5ma7xJXaWOEkQbi', '2023-06-10 12:31:18', 565632, 'ID1022175375800'),
(4, 'oJtKqTesBDkUqdP4O7fMAjQj2LWPYEOR8ZEgixdbvK6DBWFFPlyGaoMG0q4jtKgZttK91cfPupW7Zu9D9ytyQJKD3pgXTfj5yXT9TcIKxt1EzloRjuaOpXOwMoPy6OF6wDuPTMeMe4Et7EZfWJVO9I8RPERCRrsnzpD30dmfYVuWDTocto7xA1qyt7FwsADiD3psRlUnLYXeTKHWy9LCGuOXM62rydb9sajs0ZtfPGt0du3r6f', '2023-06-10 12:33:42', 458304, 'ID1022175375800'),
(5, 'egRELeUWYMH7pbTGdOPmgiTpV9YLezOB5OdDyW45CikfG001l3g4SDs5AsBzRUuFBSOYQnbMfTMPWqiXPzwzRF2dDmWXxaSSYvQD0zIM1o5zIW20SDbeR9V8UfbZFuEwLot57xwkfU9yzq1AKlCnTCVdHpNaxqoKyyokXKlnAueUfnD8GCktP5tB9cxTXsjXnBmLqEVvXMjsUGVfL4VV2W222wt97zbIbyqD5Mt73Lndzrm5rj', '2023-06-10 13:13:59', 592525, 'ID1022175375800'),
(6, 'occC1UbDiowRbk9yDXmiThZgh1icGpBBhgSSD4Y5PxgpeG6JUk2OXFCB9AyvXEdapRPxswNumGpuRIUq1kbwkx3CL47JXcXqqmVAWJUqeSvPcsYJtueBzMEoRK9HBAhj29zrgUUw6YpEUnb1I72IF0PTogZaFsBHskMXPbYQuWe5vI8rKGtHIzTpZ3YW6WRoBQOjUhgKXDoaWs3zzEtdvI3bwzpg9hxJsbUt9cUVxUAIvqd8ag', '2023-06-10 14:25:12', 794038, 'ID1022175375800'),
(7, 'QLX2GtwN2bEc81QIvivtxepQB2hoWukUyyWi8BwE08PeDNVNJgsSVZBskGLHc9sMnRZmRhPEFYR7v6gS14XLBbW7XxbyTYfvMaupEy2I2iClVzgAvGkIV5xFOu8kOLwlEwj94rbEHBc542RrdtHJxBNQkdNP0mPwNufZp6M6YdtdFn9f0mXm7gCRMsOdYbvPtLW1s8W79QHqr4zJki3HqO5JJbVMTV84dGguUcAhJvCSnEeXHU', '2023-06-10 15:07:16', 159923, 'ID1022175375800'),
(8, 'ip8erosvkK2KBEtJhU0nXeFZ1NMfTVDixUiGexR6tPF9Jj1EwPIqfdcWapA6638jE3QTKWgUQwKGQ8PMFGoax5ktXCXG4NISNAKBEKnVElcwsWZpYHYUEmVB3uvlvJCyPmOIiofbwRwRiLgj9LJ4o5gAWpBOht2uaOxxDTPz4vpB296mmEsTCwa3jQYAMiKQVEnCzwrfGD4sPiBCTUO1WlYkJjwKiNI28Sc8Xdp4FnYQv5W8zc', '2023-06-10 15:39:52', 450511, 'ID1022175375800');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id_token` int(11) NOT NULL,
  `no_meteran` varchar(11) NOT NULL,
  `kode_token` varchar(20) NOT NULL,
  `nominal` float NOT NULL,
  `harga` float NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id_token`, `no_meteran`, `kode_token`, `nominal`, `harga`, `id_barang`, `id_transaksi`) VALUES
(1, '12345678910', '78577502167523801662', 101000, 89890, 73, 179910),
(2, '12345678910', '01634919030256556182', 101000, 89890, 73, 717199),
(3, '12345678910', '28416244197000867140', 101000, 89890, 73, 592525),
(4, '75847264810', '54562050854078524902', 1000000, 890000, 76, 423574),
(5, '12345678910', '03715401072822585639', 500000, 445000, 75, 450511);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `waktu_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_harga` float NOT NULL,
  `total_dibayar` float NOT NULL,
  `kembalian` float NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu_transaksi`, `total_harga`, `total_dibayar`, `kembalian`, `metode_pembayaran`) VALUES
(1, '2023-04-25 11:02:58', 500000, 1000000, 500000, ''),
(2, '2023-04-26 12:41:21', 22000, 50000, 28000, ''),
(3, '2023-04-26 12:44:02', 5500, 10000, 4500, ''),
(4, '2023-04-26 13:48:26', 57000, 60000, 3000, ''),
(5, '2023-04-26 14:04:23', 30000, 50000, 20000, ''),
(6, '2023-04-26 14:20:13', 7500, 10000, 2500, ''),
(7, '2023-04-26 14:25:18', 7500, 10000, 2500, ''),
(8, '2023-04-26 14:32:08', 13000, 15000, 2000, ''),
(9, '2023-04-26 14:40:39', 23000, 25000, 2000, ''),
(10, '2023-04-26 14:46:04', 13500, 15000, 1500, ''),
(11, '2023-04-26 14:46:58', 8000, 10000, 2000, ''),
(12, '2023-04-26 15:29:28', 20500, 25000, 4500, ''),
(13, '2023-04-26 15:45:57', 51500, 51500, 0, ''),
(14, '2023-04-26 16:24:26', 42500, 50000, 7500, ''),
(15, '2023-04-26 16:39:23', 34500, 50000, 15500, ''),
(16, '2023-04-26 17:45:17', 34500, 50000, 15500, ''),
(17, '2023-05-03 14:53:31', 20000, 30000, 10000, ''),
(18, '2023-06-08 12:37:51', 10000, 11000, 1000, ''),
(19, '2023-06-09 06:51:14', 52000, 100000, 48000, ''),
(20, '2023-06-09 10:16:10', 54000, 75000, 21000, ''),
(21, '2023-06-09 11:16:08', 10000, 15000, 5000, ''),
(22, '2023-06-10 12:06:51', 0, 110000, 4000, ''),
(23, '2023-06-10 12:08:18', 0, 106000, 0, ''),
(24, '2023-06-10 12:08:26', 0, 106000, 0, ''),
(25, '2023-06-10 14:30:35', 0, 15000, 1500, 'Cash'),
(26, '2023-06-10 14:31:35', 25000, 25000, 0, 'Cash'),
(27, '2023-06-10 14:33:52', 25000, 25000, 0, 'Kartu Debit'),
(28, '2023-06-10 15:07:15', 0, 175000, 0, 'QRIS'),
(29, '2023-06-10 15:20:53', 0, 50000, 25000, 'Cash'),
(30, '2023-06-10 15:39:51', 0, 552000, 0, 'QRIS'),
(31, '2023-06-10 15:52:10', 0, 10000, 2000, 'Cash'),
(32, '2023-06-10 15:58:02', 150000, 150000, 0, 'Cash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pulsa`
--
ALTER TABLE `pulsa`
  ADD PRIMARY KEY (`id_pulsa`);

--
-- Indexes for table `qris_details`
--
ALTER TABLE `qris_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pulsa`
--
ALTER TABLE `pulsa`
  MODIFY `id_pulsa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qris_details`
--
ALTER TABLE `qris_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
