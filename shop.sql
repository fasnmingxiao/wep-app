-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2015 at 09:56 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tinhtrang` text NOT NULL,
  `ngaydat` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `id`, `user`, `soluong`, `tinhtrang`, `ngaydat`) VALUES
(141, 71368667, 'admin', 1, 'damua', '2013-12-20 10:16:52'),
(142, 71368671, 'admin', 2, 'damua', '2013-12-20 10:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `cty` varchar(255) NOT NULL,
  `id` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tinhtrang` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `hoten`, `diachi`, `email`, `dienthoai`, `fax`, `cty`, `id`, `soluong`, `tongtien`, `ngaydat`, `tinhtrang`) VALUES
(32, 'Phan Đức Trường', 'Hà Nội', 'ductruong@gmail.com', 1655296622, 25, '', '7', 7, 108220000, '2013-12-21 12:32:15', 'damua');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lienhe` int(10) NOT NULL,
  `hoten` text NOT NULL,
  `cty` text NOT NULL,
  `email` text NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `diachi` text NOT NULL,
  `noidung` text NOT NULL,
  `ngaylienhe` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id_loai` int(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `tenloaisp` text NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `id_nhom`, `tenloaisp`, `ghichu`) VALUES
(15, 2, 'Loa Laptop', ''),
(11, 2, 'USB 3G', ''),
(10, 2, 'USB', ''),
(13, 2, 'Chuột', ''),
(4, 1, 'HP Compaq', ''),
(3, 1, 'Asus', ''),
(9, 1, 'Lenovo', ''),
(8, 1, 'Dell', ''),
(1, 1, 'Apple (Macbook)', ''),
(2, 1, 'Acer', '');

-- --------------------------------------------------------

--
-- Table structure for table `nhomsanpham`
--

CREATE TABLE `nhomsanpham` (
  `id_nhom` int(10) NOT NULL,
  `tennhom` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`id_nhom`, `tennhom`) VALUES
(1, 'Laptop'),
(2, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(20) NOT NULL,
  `id_loai` int(10) NOT NULL,
  `tensp` text NOT NULL,
  `mota` text NOT NULL,
  `hinh` text NOT NULL,
  `gia` int(15) NOT NULL,
  `ghichu` text NOT NULL,
  `soluongban` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_loai`, `tensp`, `mota`, `hinh`, `gia`, `ghichu`, `soluongban`, `id_menu`) VALUES
(4, 1, 'MacBook 2015 MF840ZP/A ', '<ul>\r\n	<li>Bộ xử lý: 2.7GHz dual-core Intel Core i5</li>\r\n	<li>RAM: 8GB - DDR3L - 1866 Mhz</li>\r\n	<li>HDD: SSD - 256GB</li>\r\n	<li>Màn hình: 13.3 inch - 2560x1600 pixels</li>\r\n	<li>Đồ họa: Intel Iris Graphics</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'MacBook2015MF840ZPA.jpg', 35999000, 'new', 0, 0),
(900, 4, 'HP Probook G2', '<ul>\r\n	<li>Bộ vi xử lý :	Intel Core i5-4210U (3 MB L3 Cache, 2.7 GHz)</li>\r\n	<li>RAM: 4 GB(DDR3 1600MHz)</li>\r\n	<li>HDD: 500 GB</li>\r\n	<li>Màn hình: 15.6 inch(HD LED 1366 x 768 pixels)</li>\r\n	<li>Đồ họa: AMD Radeon R5 M255</li>\r\n	<li>Pin: 4 Cell(2 đến 3 giờ sử dụng)</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'HPProbookG2.jpg', 12590000, 'new', 0, 0),
(870599, 3, 'Asus GL552JX', '<ul>\r\n	<li>Bộ vi xử lý : Intel® Core™ i5-4200H Processor 2.8 GHz(3M Cache, up to 3.40 GHz)</li>\r\n	<li>RAM: 6 GB(DDR3L bus 1600MHz)</li>\r\n	<li>HDD: 1 TB</li>\r\n	<li>Màn hình: 15.6 inch(1366 x 768 pixels)</li>\r\n	<li>Đồ họa: Nvidia Geforce GTX 950M(4 GB)</li>\r\n	<li>Pin: 4 Cell(2 đến 3 giờ sử dụng)</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'AsusGL552JX.jpg', 16999000, 'new', 0, 0),
(2147483647, 9, 'Lenovo Yoga 500', '<ul>\r\n	<li>Bộ vi xử lý : Intel® Core™ i3-5020U Processor (3M Cache, 2.20 GHz)</li>\r\n	<li>RAM: 4 GB(DDR3 1600MHz)</li>\r\n	<li>HDD: 500 GB(HDD 5400rpm)</li>\r\n	<li>Màn hình: 14 inch(IPS LCD Full HD 1920 x 1080 pixels)</li>\r\n	<li>Đồ họa: Intel HD Graphics</li>\r\n	<li>Pin: 3 Cell Lithium</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'LenovoYoga500.jpg', 10790000, 'hienthi', 0, 0),
(0, 2, 'Acer E5-573', '<ul>\r\n	<li>Bộ vi xử lý : Intel® Core™ i3-4005U Processor(3M Cache, 1.70 GHz)</li>\r\n	<li>RAM: 4 GB(DDR3 1600MHz)</li>\r\n	<li>HDD: 500 GB(HDD 5400rpm)</li>\r\n	<li>Màn hình: 15.6 inch(HD LED 1366 x 768 pixels)</li>\r\n	<li>Đồ họa: Intel HD Graphics</li>\r\n	<li>Pin: 3 Cell Lithium</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'AcerE5573.jpg', 7000000, 'new', 0, 0),
(27, 8, 'Dell N3542', '<ul>\r\n	<li>Bộ vi xử lý : Intel Core i5-4210U (3 MB L3 Cache, 1.7 GHz up to 2.7 GHz)</li>\r\n	<li>RAM: 4 GB(DDR3 1600MHz)</li>\r\n	<li>HDD: 500 GB(HDD 5400rpm)</li>\r\n	<li>Màn hình: 15.6 inch(HD LED 1366 x 768 pixels)</li>\r\n	<li>Đồ họa: Nvidia Geforce 820M (2 GB)</li>\r\n	<li>Pin: 3 Cell Lithium</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'DellN3542.jpg', 12999000, 'new', 0, 0),
(7, 9, 'Lenovo Z5070', '<ul>\r\n	<li>Bộ vi xử lý : Intel Core-i3 4030U 1.9 GHz (3 MB Cache)</li>\r\n	<li>RAM: 4 GB(DDR3 1600MHz)</li>\r\n	<li>HDD: 500 GB(HDD 5400rpm)</li>\r\n	<li>Màn hình: 15.6 inch (Full HD 1920 x 1080 pixels)</li>\r\n	<li>Đồ họa: Nvidia Geforce 820M (2 GB)</li>\r\n	<li>Pin: 3 Cell Lithium</li>\r\n	<li>Thời gian bảo hành: 12 Tháng</li>\r\n</ul>', 'LenovoZ5070.jpg', 9999000, 'new', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `hieuluc` int(10) NOT NULL,
  `capquyen` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `diachi`, `email`, `dienthoai`, `user`, `pass`, `hieuluc`, `capquyen`) VALUES
('Tom', 'Hà Nội', 'sieugadhv@gmail.com', 1655296622, 'Admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `nhomsanpham`
--
ALTER TABLE `nhomsanpham`
  ADD PRIMARY KEY (`id_nhom`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lienhe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
