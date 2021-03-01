-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2021 at 12:20 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mkcollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Maulin Karmila', 'admin', '25d55ad283aa400af464c76d713c07ad', '+6282234564321', 'karmilamaulin67@gmail.com', 'Jalan Kalasan Barat No. 3 Melong, Cimahi Selatan, Cimahi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(9, 'Gantungan Kunci'),
(10, 'Tas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(25, 9, 'Gantungan Kunci HelloKitty Merah', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213691.jpg', 1, '2021-02-13 10:54:51'),
(26, 9, 'Gantungan Kunci HelloKitty Pink', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213732.jpg', 1, '2021-02-13 10:55:32'),
(27, 9, 'Gantungan Kunci HelloKitty Biru Muda', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213788.jpg', 1, '2021-02-13 10:56:28'),
(28, 9, 'Gantungan Kunci HelloKitty Orange', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213826.jpg', 1, '2021-02-13 10:57:06'),
(29, 9, 'Gantungan Kunci HelloKitty Biru Tua', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213873.jpg', 1, '2021-02-13 10:57:53'),
(30, 9, 'Gantungan Kunci HelloKitty Ungu', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213907.jpg', 1, '2021-02-13 10:58:27'),
(31, 9, 'Gantungan Kunci HelloKitty Hijau', 15000, '<p>Spesifikasi :</p>\r\n\r\n<p>Terbuat dari manik - manik</p>\r\n\r\n<p>Handmade</p>\r\n', 'produk1613213947.jpg', 1, '2021-02-13 10:59:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
