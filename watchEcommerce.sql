-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2023 at 10:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchEcommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(3, 'Anh', 'nguyenthacanh01@gmail.com', 'nta27', 'nta27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'DOXA'),
(2, 'BULOVA'),
(3, 'SEIKO'),
(5, 'CASIO'),
(6, 'MOVADO'),
(7, 'G-SHOCK &amp; BAYBY-G'),
(8, 'SKAGEN'),
(9, 'CALVIN KLEIN'),
(10, 'ROTARY'),
(11, 'FOUETTÉ'),
(12, 'CITIZEN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(131, 12, 'f1almqvuotjk92nsosl2b9c3lp', 'SEIKO SSA345J1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', '13900000', 1, 'ea3a7798af.jpg'),
(132, 48, 'jccaq4lt9jg3qoqh7k0om3il27', 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', '14700000', 1, '4d459813de.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(11, 'Đồng Hồ Đôi'),
(12, 'Đồng Hồ Trẻ Em'),
(13, 'Đồng Hồ Nữ'),
(14, 'Đồng Hồ Nam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(2, 'duc', 'Thị Trấn Lâm-Ý Yên-Nam Định', 'Thi trấn lâm', 'nd', '342342', '0917804337', 'duongbaduc2000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Duc Nguyệt', 'Thị Trấn Lâm-Ý Yên-Nam Định', 'Nam Định', 'Việt Nam', '234234', '0384703233', 'nguyet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'linh', 'Long Biên-Hà Nội', 'hà nội', 'việt nam', '3423423', '0917804334', 'linh@gmail.com', '123456'),
(5, 'Thac Anh', 'hanoi', 'Ha Noi', 'hanoii', '10000', '0389442917', 'nguyenthacanh01@gmail.com', '70c7b2c43a5cbe5bb3b0161ec86da210');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `date_order`, `status`) VALUES
(25, 18, 'DOXA D224RIY – NAM – KÍNH SAPPHIRE – DÂY DA', 2, 2, '78940000', 'd74cf9aed5.jpg', '2021-05-28 17:55:29', 2),
(26, 14, 'BULOVA 97A136 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', 2, 3, '30297000', '1f67b2a4b0.jpg', '2021-05-28 17:55:29', 2),
(28, 48, 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', 2, 1, '14700000', '4d459813de.jpg', '2021-05-29 06:17:03', 2),
(29, 12, 'SEIKO SSA345J1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', 2, 2, '27800000', 'ea3a7798af.jpg', '2021-05-29 06:17:03', 2),
(30, 19, 'DOXA D185SSD – NAM – KÍNH SAPPHIRE  – DÂY KIM LOẠI', 3, 4, '85560000', '5e9583eca7.jpg', '2021-05-29 06:35:12', 2),
(31, 18, 'DOXA D224RIY – NAM – KÍNH SAPPHIRE – DÂY DA', 3, 2, '78940000', 'd74cf9aed5.jpg', '2021-05-30 04:29:04', 2),
(32, 15, 'BULOVA 97A106 – NAM – QUARTZ (PIN) – DÂY DA', 3, 3, '16500000', '2bafec2207.jpg', '2021-05-30 04:29:04', 2),
(33, 9, 'CASIO EFR-534D-7AVDF – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 3, 1, '4230000', '785d942dd1.jpg', '2021-05-30 04:29:04', 2),
(34, 43, 'ROTARY LB90188/01 – NỮ – KÍNH SAPPHIRE– DÂY KIM LOẠI', 2, 2, '19580000', '1ee150b26b.jpg', '2021-06-17 05:45:32', 0),
(35, 48, 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', 2, 1, '14700000', '4d459813de.jpg', '2021-06-17 05:45:32', 0),
(36, 15, 'BULOVA 97A106 – NAM – QUARTZ (PIN) – DÂY DA', 2, 1, '5500000', '2bafec2207.jpg', '2021-06-17 05:46:20', 1),
(37, 48, 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', 5, 1, '14700000', '4d459813de.jpg', '2023-05-12 06:53:35', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sohieusanpham` varchar(255) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `gioitinh` varchar(100) NOT NULL,
  `kinh` varchar(255) NOT NULL,
  `may` varchar(255) NOT NULL,
  `baohanhquocte` varchar(100) NOT NULL,
  `baohanhcuahang` varchar(100) NOT NULL,
  `duongkinhmatso` varchar(255) NOT NULL,
  `bedaymatso` varchar(255) NOT NULL,
  `nieng` varchar(255) NOT NULL,
  `daydeo` varchar(255) NOT NULL,
  `maumatso` varchar(255) NOT NULL,
  `chongnuoc` varchar(255) NOT NULL,
  `chucnangkhac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `sohieusanpham`, `xuatxu`, `gioitinh`, `kinh`, `may`, `baohanhquocte`, `baohanhcuahang`, `duongkinhmatso`, `bedaymatso`, `nieng`, `daydeo`, `maumatso`, `chongnuoc`, `chucnangkhac`) VALUES
(1, 'SEIKO SUR266P1 – NAM – QUARTZ (PIN) – DÂY DA', 14, 3, '<p>Mẫu Seiko SUR266P1 phi&ecirc;n bản mạ v&agrave;ng sang trọng với phần vỏ m&aacute;y c&ugrave;ng chi tiết kim chỉ, điểm nhấn nổi bật với khả năng chống nước l&ecirc;n đến 10atm.</p>', 1, '3690000', '77bb6df256.jpg', 'SUR266P1', 'Nhật Bản', 'Nam', 'Hardlex Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '5 Năm', '41 mm', '9 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', ' Trắng', '10 ATM', 'Lịch Ngày'),
(2, 'SEIKO SYMC18K1 – NỮ – AUTOMATIC (TỰ ĐỘNG) – DÂY KIM LOẠI', 13, 3, '<p>Mẫu Seiko SYMC18K1 phi&ecirc;n bản thời trang cho ph&aacute;i đẹp phần d&acirc;y vỏ kim loại mạ v&agrave;ng c&ugrave;ng nền mặt số tr&ograve;n nhỏ nữ t&iacute;nh kiểu d&aacute;ng đơn giản 3 kim với k&iacute;ch thước mặt 24mm.</p>', 1, '4040000', '0fa6421baa.jpg', 'SYMC18K1', 'Nhật Bản', 'Nữ', 'Hardlex Crystal (Kính Cứng)', 'Automatic (Tự Động)', '1 Năm', '5 Năm', '24 mm', '10 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Vàng', '3 ATM', 'Lịch Ngày – Lịch Thứ'),
(3, 'SEIKO SRPD37J1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', 14, 3, '<p>Mẫu Seiko SRPD37J1 ph&acirc;n kh&uacute;c sang trọng trẻ trung với mẫu d&acirc;y da trơn phối c&ugrave;ng c&aacute;c chi tiết vạch số mạ bạc tạo h&igrave;nh lưỡi kiếm tinh tế nổi bật tr&ecirc;n mặt số size 40mm họa tiết trải tia.</p>', 1, '11620000', '90a68e9f06.jpg', 'SRPD37J1', 'SEIKO', 'Nam', 'Hardlex Crystal (Kính Cứng)', 'Automatic (Tự Động)', '1 Năm', '5 Năm', '40.5 mm', '11.8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Xanh', '5 ATM', 'Lịch Ngày'),
(5, 'CASIO LTP-1303L-7BVDF – NỮ – QUARTZ (PIN) – DÂY DA', 13, 5, '<p>Đồng hồ Casio LTP-1303L-7BVDF c&oacute; mặt đồng hồ tr&ograve;n truyền thống, nền số trắng c&ugrave;ng vạch số được phủ m&agrave;u đen v&agrave; kim chỉ được phủ phản quang nổi bật, d&acirc;y đeo da v&acirc;n đen quyến rũ.</p>', 1, '1043000', '05c93f7f69.jpg', 'LTP-1303L-7BVDF', 'Nhật Bản', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '2 Năm', '30mm', '7.5 mm', 'Không ', 'Dây Da Chính Hãng', 'Trắng', '5 ATM', 'Không'),
(6, 'CASIO EFV-520DB-2AVUDF – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 5, '<p>Mẫu Casio EFV-520DB-2AVUDF thiết kế tạo h&igrave;nh vỏ m&aacute;y d&agrave;y dặn mang lại vẻ nam t&iacute;nh thuộc d&ograve;ng Edifice với đặc trưng đồng hồ 6 kim, phong c&aacute;ch thể thao ấn tượng c&ugrave;ng khả năng chịu nước l&ecirc;n đến 10 ATM.</p>', 1, '4066000', 'b2ce36b243.jpg', 'EFV-520DB-2AVUDF', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '2 Năm', '47.2 mm', '12.3 mm', 'Không ', 'Không', 'Xanh', '10 ATM', 'Lịch Ngày – Chronograph'),
(7, 'CASIO MTP-1303L-7BVDF–NAM – QUARTZ (PIN) – DÂY DA (MTP-1303L-7BVDF)', 14, 5, '<p>Đồng hồ Casio MTP-1303L-7BVDF phong c&aacute;ch thanh lịch với d&acirc;y da đen tinh tế, mặt đồng hồ nền trắng cũng chữ số m&agrave;u đen r&otilde; r&agrave;ng, vỏ m&aacute;y kim loại mạ bạc, c&ograve;n c&oacute; 3 kim chỉ giờ.</p>', 1, '1034000', '55e4ae71e9.jpg', 'MTP-1303L-7BVDF', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '2 Năm', ' 40mm', '8mm', 'Không ', 'Dây Da Chính Hãng', ' Trắng', '5 ATM', 'Không'),
(8, 'CASIO B650WD-1ADF – NAM – KÍNH NHỰA – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 5, '<p>Mẫu Casio B650WD-1ADF thiết kế mặt số vu&ocirc;ng được c&aacute;c bạn trẻ ưa chuộng, với nền mặt số điện tử hiện thị nhiều t&iacute;nh năng tiện &iacute;ch ph&ugrave; hợp cho c&aacute;c hoạt động phượt d&atilde; ngoại hoặc thể thao.</p>', 1, '987000', 'f96e070643.jpg', 'B650WD-1ADF', 'Nhật Bản', 'Nam', 'Resin Glass (Kính Nhựa)', 'Quartz (Pin)', '1 Năm', '2 Năm', ' 43.1 mm ×41.2 mm', '10.5 mm', 'Không ', 'Không', ' Trắng', '5 ATM', ' Lịch – Bộ Bấm Giờ – Giờ Kép – Đèn Led – Vài Chức Năng Khác'),
(9, 'CASIO EFR-534D-7AVDF – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 5, '<p>Đồng hồ Casio EFR-534D-7AVDF với phong c&aacute;ch thể thao mạnh mẽ, mặt số được tạo chi tiết dập nổi độc đ&aacute;o, kim chỉ v&agrave; vạch chỉ giờ được phủ phản quang, mặt số phụ m&agrave;u đen nổi bật.</p>', 1, '4230000', '785d942dd1.jpg', 'EFR-534D-7AVDF', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '2 Năm', '46mm', '13.7 mm', 'Không ', 'Không', 'Trắng', '10 ATM', 'Lịch Ngày – Chronograph – Đồng hồ 24h'),
(11, 'SEIKO SRPD51K1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY KIM LOẠI', 14, 3, '<p>Mẫu Seiko SRPD51K1 nổi bật với vẻ ngo&agrave;i d&agrave;y dặn với phẩn vỏ m&aacute;y kim loại loại mạ bạc độ d&agrave;y 13mm, c&aacute;c chấm tr&ograve;n trắng dạ quang với thiết kế to bản nổi bật tr&ecirc;n mặt số xanh.</p>', 1, '7060000', '7414d8357a.jpg', 'SRPD51K1', 'Nhật Bản', 'Nam', 'Hardlex Crystal (Kính Cứng)', 'Automatic (Tự Động)', '1 Năm', '5 Năm', '42.5 mm', '13.4 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Xanh', '10 ATM', 'Lịch Ngày – Lịch Thứ'),
(12, 'SEIKO SSA345J1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', 14, 3, '<p>Mẫu Seiko SSA345J1 với chức năng lịch ng&agrave;y được t&aacute;ch hẳn ra 1 &ocirc; số ri&ecirc;ng biệt thiết kế kiểu d&aacute;ng kh&ocirc;ng đồng trục tạo n&ecirc;n vẻ độc đ&aacute;o v&agrave; đầy nam t&iacute;nh với n&ecirc;n mặt số t&ocirc;ng đen, c&aacute;c chi tiết kim chỉ vạch số được phủ bạc mang lại một vẻ ngo&agrave;i sang trọng.</p>', 1, '13900000', 'ea3a7798af.jpg', 'SSA345J1', 'Nhật Bản', 'Nam', 'Hardlex Crystal (Kính Cứng)', 'Automatic (Tự Động)', '1 Năm', '5 Năm', '40.5 mm', '14.5 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '5 ATM', 'Lịch Ngày'),
(13, 'BULOVA 98M124 – NỮ – QUARTZ (PIN) – DÂY KIM LOẠI', 13, 2, '<p>Mẫu đồng hồ 98M124 kh&ocirc;ng đơn thuần chỉ để xem giờ m&agrave; c&ograve;n l&agrave; một phụ kiện thời trang đến từ thương hiệu Bulova d&agrave;nh cho ph&aacute;i đẹp vẻ ngo&agrave;i sang trọng với c&aacute;c chi tiết vạch số n&uacute;m vặn phủ v&agrave;ng phối c&ugrave;ng mẫu d&acirc;y đeo demi.</p>', 1, '7900000', '4f01805b02.jpg', '98M124', 'Thụy Sỹ / Mỹ', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '3 Năm', '4 Năm', '27 mm', '6.5 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Xanh', '3 ATM', 'Lịch Ngày'),
(14, 'BULOVA 97A136 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', 14, 2, '<p>Mẫu Bulova 97A136 thiết kế độc đ&aacute;o với &ocirc; số ch&acirc;n k&iacute;nh ph&ocirc; diễn ra 1 phần của bộ m&aacute;y cơ đặc trưng nam t&iacute;nh, vẻ ngo&agrave;i giản dị đồng hồ 3 kim, phong c&aacute;ch lịch l&atilde;m với phần vỏ m&aacute;y phủ t&ocirc;ng v&agrave;ng hồng kết hợp c&ugrave;ng mẫu d&acirc;y da.</p>', 1, '10099000', '1f67b2a4b0.jpg', '97A136', 'Thụy Sỹ / Mỹ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Automatic (Tự Động)', '3 Năm', '4 Năm', '41 mm', '12 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', '3 ATM', 'Không'),
(15, 'BULOVA 97A106 – NAM – QUARTZ (PIN) – DÂY DA', 14, 2, '<p>Đồng hồ Bulova 97A106 với thiết kế mặt đồng hồ tr&ograve;n nền trắng, niềng kim loại, kim chi v&agrave; gạch số được mạ đồng, d&acirc;y đeo da n&acirc;u mang lại n&eacute;t lịch l&atilde;m, sang trọng cho ph&aacute;i mạnh.</p>', 1, '5500000', '2bafec2207.jpg', ' 97A106', 'Thụy Sỹ / Mỹ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '3 Năm', '4 Năm', '38 mm', '7 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', ' 3 ATM', 'Không'),
(16, 'DOXA D204SWL – NỮ – KÍNH SAPPHIRE – QUARTZ (PIN) – DÂY DA', 13, 1, '<p>Mẫu Doxa D204SWL kiểu d&aacute;ng 3 kim đơn giản trẻ trung trước nền k&iacute;nh Sapphire, phi&ecirc;n bản sang trọng với vi&ecirc;n kim cương đ&iacute;nh tr&ecirc;n mặt số xa cừ size 28mm.</p>', 1, '14830000', '27ab609e84.jpg', 'D204SWL', 'Thụy Sỹ ', 'Nữ', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '4 Năm', '28 mm', '7.4 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', '3 ATM', 'Không'),
(17, 'DOXA 130.60.022.02 – NAM – KÍNH SAPPHIRE  – DÂY DA', 14, 1, '<p>Đồng hồ nam Doxa 130.60.022.02 mặt đồng hồ tr&ograve;n viền ngo&agrave;i tạo h&igrave;nh c&aacute;c kh&iacute;a cạnh nam t&iacute;nh mạ v&agrave;ng sang trọng, thiết kế theo phong c&aacute;ch giản dị với 3 kim chỉ c&ugrave;ng chức năng lịch ng&agrave;y tr&ecirc;n nền k&iacute;nh Sapphire.</p>', 1, '32660000', 'fbb41b3a1d.jpg', '130.60.022.02', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '41 mm', '11 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', '10 ATM', 'Lịch Ngày'),
(18, 'DOXA D224RIY – NAM – KÍNH SAPPHIRE – DÂY DA', 14, 1, '<p>Mẫu Doxa D224RIY v&agrave;ng hồng tone m&agrave;u sang trọng trẻ trung tr&ecirc;n cọc vạch số được tạo h&igrave;nh mỏng với thiết kế họa tiết tim đ&ocirc;i tr&ecirc;n nền mặt số size 41mm.</p>', 1, '39470000', 'd74cf9aed5.jpg', 'D224RIY', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '41 mm', '11 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Vàng Hồng', '10 ATM', 'Lịch Ngày'),
(19, 'DOXA D185SSD – NAM – KÍNH SAPPHIRE  – DÂY KIM LOẠI', 14, 1, '<p>Mẫu Doxa D185SSD phi&ecirc;n bản đ&iacute;nh 8 vi&ecirc;n kim cương tạo n&ecirc;n vẻ sang trọng trẻ trung với nền cọc số la m&atilde; tạo h&igrave;nh mỏng tone m&agrave;u đen nổi bật trước mặt k&iacute;nh Sapphire size 41mm.</p>', 1, '21390000', '5e9583eca7.jpg', 'D185SSD', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '5 Năm', '41 mm', '9 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', ' Trắng', '5 ATM', 'Lịch Ngày'),
(20, 'DOXA D158RWH – NỮ – KÍNH SAPPHIRE – QUARTZ (PIN) – DÂY DA', 13, 1, '<p>Mẫu Doxa D158RWH với phong c&aacute;ch sang trọng, dưới mặt k&iacute;nh Sapphire thiết kế gia c&ocirc;ng đ&iacute;nh 8 vi&ecirc;n kim cương thời trang nổi bật tr&ecirc;n mặt số x&agrave; cừ size 29mm.</p>', 1, '16070000', '9aa01295e0.jpg', 'D158RWH', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '5 Năm', '29 mm', '5 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', ' Trắng', '3 ATM', 'Xà Cừ – 8 Viên Kim Cương Thật'),
(21, 'MOVADO 606114 – NAM – KÍNH SAPPHIRE – DÂY DA', 14, 6, '<p>Mẫu Movado 606114 mặt đồng hồ k&iacute;ch thước to tr&ograve;n với trải nghiệm b&ocirc; m&aacute;y cơ d&agrave;nh cho nam, thiết kế theo phong c&aacute;ch giản dị chức năng lịch ng&agrave;y sắp ở vị tr&iacute; m&uacute;i 6 giờ tinh tế tr&ecirc;n nền mặt số tone m&agrave;u đen nam t&iacute;nh.</p>', 1, '44800000', '32e27b3421.jpg', '606114', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '38 mm', '10 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Đen', '3 ATM', 'Lịch Ngày'),
(22, 'MOVADO 0607092 – NAM – KÍNH SAPPHIRE – QUARTZ (PIN) – DÂY DA', 14, 6, '<p>Mẫu đồng hồ 0607092 với một vẻ ngo&agrave;i giản dị điềm đạm của một ph&aacute;i mạnh đến từ thương hiệu Movado, thiết kế c&aacute;c chi tiết vạch số mỏng của sự tinh tế đầy nổi bật tr&ecirc;n mặt số xanh thời trang.</p>', 1, '22800000', 'c71c0adf7c.jpg', '0607092', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '4 Năm', ' 40mm', '6.3 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Xanh', '3 ATM', 'Không'),
(23, 'MOVADO 0606875 – NAM – KÍNH SAPPHIRE – DÂY DA', 14, 6, '<p>Đồng hồ Movado 0606875 c&oacute; thiết kế cổ điển khi mặt số tr&ograve;n kết hợp với d&acirc;y đeo da cao cấp m&agrave;u đen mạnh mẽ, kim chỉ v&agrave; vạch số được mạ v&agrave;ng nổi bật tr&ecirc;n nền số m&agrave;u đen c&oacute; họa tiết độc đ&aacute;o như h&igrave;nh tượng mặt trời tỏa s&aacute;ng, c&oacute; &ocirc; lịch ng&agrave;y vị tr&iacute; 6h tinh tế.</p>', 1, '32100000', '96516b76ab.jpg', '0606875', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '39.5 mm', '12 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '3 ATM', 'Lịch Ngày'),
(24, 'MOVADO 3600104 – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 6, '<p>Đồng hồ nam Movado 3600104 với thiết kế sang trọng d&agrave;nh cho nam, kim chỉ l&agrave;m mỏng tinh tế nổi bật tr&ecirc;n nền v&agrave;ng, kết hợp c&ugrave;ng d&acirc;y đeo được mạ v&agrave;ng tạo n&ecirc;n vẻ sang trọng cho ph&aacute;i mạnh.</p>', 1, '22300000', '7486687650.jpg', '3600104', 'Thụy Sỹ ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Automatic (Tự Động)', '2 Năm', '5 Năm', '36 mm', '6 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Vàng', '3 ATM', 'Không'),
(25, 'MOVADO ĐÔI – KÍNH SAPPHIRE – QUARTZ (PIN) – DÂY KIM LOẠI', 11, 6, '<p>Đồng hồ Movado Đ&ocirc;i c&oacute; vỏ v&agrave; d&acirc;y đeo kim loại mạ bạc s&aacute;ng b&oacute;ng, kim chỉ mỏng v&agrave; chấm tr&ograve;n nổi bật tr&ecirc;n nền đen mặt số, phi&ecirc;n bản mặt k&iacute;nh Sapphire chống trầy.</p>', 1, '51200000', 'd0303f8766.jpg', '0606504 (Nam) – 0606505 (Nữ)', 'Thụy Sỹ ', 'Nam-Nữ', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '4 Năm', '40 mm (Nam) – 28 mm (Nữ)', '8 mm (Nam) – 7 mm (Nữ) ', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Đen', '3 ATM', 'Không'),
(26, 'BABY-G MSG-S200G-7ADR – NỮ – DÂY CAO SU', 12, 7, '<p>Thời trang c&aacute; t&iacute;nh với k&iacute;ch thước d&agrave;y dặn c&ugrave;ng phi&ecirc;n bản d&acirc;y đeo chất liệu cao su trắng, tạo n&ecirc;n điểm nhấn nổi bật với c&ocirc;ng nghệ hiện đại Solar (Năng Lượng &Aacute;nh S&aacute;ng) được trang bị cho mẫu Baby-G MSG-S200G-7ADR.</p>', 1, '4230000', '588ae16570.jpg', 'MSG-S200G-7ADR', 'Nhật Bản', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Solar (Năng lượng ánh sáng)', '5 Năm', '5 Năm', '47.5 mm ×38.4 mm', '12.3 mm', 'Không', 'Dây Cao Su', 'Trắng', '10 ATM', 'Lịch – Bộ Bấm Giờ – Giờ Kép – Đèn Led – Vài Chức Năng Khác'),
(27, 'BABY-G BGA-210-7B4DR – NỮ – QUARTZ (PIN) – DÂY CAO SU', 12, 7, '<p>Đồng hồ Baby-G BGA-210-7B4DR c&oacute; kim chỉ phủ phản quang v&agrave; vạch số d&agrave;y độc đ&aacute;o nổi bật tr&ecirc;n nền số m&agrave;u trắng trang nh&atilde;, d&acirc;y đeo cao su cao cấp đem lại phụ kiện thời trang c&aacute; t&iacute;nh trẻ trung cho c&aacute;c bạn nữ.</p>', 1, '4230000', '139f4c8b4d.jpg', 'BGA-210-7B4DR', 'Nhật Bản', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '5 Năm', '5 Năm', '49mm × 46mm', '14.9 mm', 'Nhựa', 'Dây Cao Su', 'Trắng', '10 ATM', 'Lịch – Bộ Bấm Giờ – Giờ Kép – Đèn Led – Vài Chức Năng Khác'),
(28, 'G-SHOCK DW-6900-1VDR – NAM – QUARTZ (PIN) – DÂY CAO SU', 12, 7, '<p>Đồng hồ nam G-Shock DW-6900-1VDR t&iacute;nh năng đa dụng hỗ trợ cho bộ đếm giờ, phong c&aacute;ch thể thao năng động, chất liệu cao cấp nhựa si&ecirc;u bền, d&acirc;y đeo cao su.</p>', 1, '2162000', 'cd80ef7eec.jpg', ' DW-6900-1VDR', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '5 Năm', '5 Năm', '50 mm', '16 mm', 'Nhựa', 'Dây Cao Su', 'Khác', '20 ATM', 'Lịch – Bộ Bấm Giờ – Đèn Led – Vài Chức Năng Khác'),
(29, 'BABY-G BA-130-4ADR – NỮ – QUARTZ (PIN) – DÂY CAO SU', 12, 7, '<p>Mẫu Baby-G BA-130-4ADR phi&ecirc;n bản năng động với khả năng chịu nước 10atm, d&acirc;y vỏ nhựa phối tone m&agrave;u hồng thời trang nổi bật, mặt số kim chỉ kết hợp với &ocirc; số điện tử hiện thị đa chức năng tiện &iacute;ch.</p>', 1, '4136000', '2c7bb2ac08.jpg', 'BA-130-4ADR', 'Nhật Bản', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '5 Năm', '5 Năm', '46.3 mm x 43.3 mm', '15.8 mm', 'Nhựa', 'Dây Cao Su', 'Hồng', '10 ATM', 'Lịch – Bộ Bấm Giờ – Đèn Led – Vài Chức Năng Khác'),
(30, 'G-SHOCK GA-140-1A1DR – NAM – QUARTZ (PIN) – DÂY CAO SU', 12, 7, '<p>Mẫu G-Shock GA-140-1A1DR mặt số điện tử đa dụng kết hợp c&ugrave;ng chức năng kim chỉ th&ecirc;m phần độc đ&aacute;o c&aacute; t&iacute;nh với vỏ m&aacute;y pin d&agrave;y dặn khả năng chống nước 20atm.</p>', 1, '3572000', 'a9e3ebab6f.jpg', 'GA-140-1A1DR', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '5 Năm', '5 Năm', '55 mm x 51.2 mm', '16.9 mm', 'Nhựa', 'Dây Cao Su', 'Đen', '20 ATM', 'Lịch – Bộ Bấm Giờ – Giờ Kép – Đèn Led – Vài Chức Năng Khác'),
(31, 'SKAGEN SKW1112 – NỮ – QUARTZ (PIN) – DÂY KIM LOẠI', 13, 8, '<p>Mẫu Skagen SKW1112 phi&ecirc;n bản d&acirc;y lưới bạc thời trang c&ugrave;ng với thiết kế đ&iacute;nh pha l&ecirc; tương ứng với c&aacute;c m&uacute;i giờ tạo n&ecirc;n vẻ sang trọng tr&ecirc;n nền mặt số size 25mm.</p>', 1, '4630000', '5d6cd0b9b7.jpg', 'SKW1112', 'Đan Mạch', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', '25 mm', '4 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Trắng', '3 ATM', 'Không'),
(32, 'SKAGEN SKW2592 – NỮ – QUARTZ (PIN) – DÂY DA', 13, 8, '<p>Mẫu đồng hồ Skagen SKW2592 tr&ecirc;n nền mặt số với c&aacute;c vạch số c&ugrave;ng kim chỉ được thiết kế thanh mảnh nữ t&iacute;nh, vỏ m&aacute;y bằng th&eacute;p kh&ocirc;ng gỉ mạ m&agrave;u v&agrave;ng đồng phối c&ugrave;ng b&ocirc; d&acirc;y đeo bằng da mang lại vẻ đẹp thời trang trẻ trung</p>', 1, '3720000', '32d0fa738a.jpg', 'SKW2592', 'Đan Mạch', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '5 Năm', '5 Năm', '30 mm', '7.8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', '3 ATM', 'Không'),
(33, 'SKAGEN SKW2644 – NỮ – QUARTZ (PIN) – DÂY DA', 13, 8, '<p>Giản dị thời trang lu&ocirc;n l&agrave; yếu tố h&agrave;ng đầu đến từ thương hiệu Skagen d&agrave;nh cho mẫu đồng hồ nữ SKW2644 với c&aacute;c chi tiết vạch số kim chỉ được tạo h&igrave;nh thanh mảnh c&ugrave;ng vỏ m&aacute;y bao phủ t&ocirc;ng v&agrave;ng hồng tạo n&ecirc;n vẻ trẻ trung thanh lịch khi phối c&ugrave;ng mẫu d&acirc;y da x&aacute;m.</p>', 1, '3740000', '37a7daba81.jpg', 'SKW2644', 'Đan Mạch', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', '30 mm', '8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', ' Trắng', '5 ATM', 'Không'),
(34, 'SKAGEN SKW6455 – NAM – QUARTZ (PIN) – DÂY DA', 14, 8, '<p>Mẫu đồng hồ SKW6455 thiết kế mang đậm phong c&aacute;ch đặc trưng đến từ thương hiệu Skagen khi c&aacute;c chi tiết m&aacute;y được tạo h&igrave;nh mỏng tinh tế, nền mặt số nổi bật với c&aacute;c chi tiết kim chỉ đa m&agrave;u sắc tạo n&ecirc;n vẻ trẻ trung.</p>', 1, '4630000', '9b358a4d58.jpg', 'SKW6455', 'Đan Mạch', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', ' 40mm', '9 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', ' Trắng', '5 ATM', 'Không'),
(35, 'SKAGEN SKW6464 – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 8, '<p>Thời trang nam t&iacute;nh với thiết kế mang đậm phong c&aacute;ch đặc trưng đến từ thương hiệu Skagen, tạo điểm nhấn với kiểu d&aacute;ng đồng hồ SKW6464 kiểu d&aacute;ng 6 kim phong c&aacute;ch thể thao c&ugrave;ng t&iacute;nh năng Chronograph.</p>', 1, '5230000', '0336efcd2a.jpg', 'SKW6464', 'Đan Mạch', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '5 Năm', ' 40mm', '11 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Xám', '5 ATM', 'Chronograph'),
(36, 'CALVIN KLEIN K2G211C1 – NAM – QUARTZ (PIN) – DÂY DA', 14, 9, '<p>Đồng hồ Calvin Klein K2G211C1 với nền đen mặt số, kim chỉ v&agrave; gạch số mỏng nổi bật, d&acirc;y đeo da đen mạnh mẽ, l&agrave; phụ kiện thời trang mạnh mẽ, nam t&iacute;nh, trẻ trung cho ph&aacute;i mạnh.</p>', 1, '5560000', 'b964c390f5.jpg', 'K2G211C1', 'Thụy Sỹ ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '5 Năm', '43 mm', '8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '3 ATM', 'Không'),
(37, 'CALVIN KLEIN K9H236L6 – NỮ – QUARTZ (PIN) – DÂY DA', 13, 9, '<p>Mẫu Calvin Klein K9H236L6 trang bị bộ d&acirc;y da trơn tone m&agrave;u trắng trẻ trung, c&ugrave;ng với thiết kế mỏng tr&ecirc;n chi tiết vạch số hiện thị tr&ecirc;n mặt số size 32mm.</p>', 1, '6770000', 'b056f8d139.jpg', 'K9H236L6', 'Thụy Sỹ ', 'Nữ', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', '32 mm', '8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Trắng', '3 ATM', 'Lịch Ngày'),
(38, 'CALVIN KLEIN K5S341CZ – NAM – KÍNH SAPPHIRE – DÂY DA', 14, 9, '<p>Mẫu Calvin Klein K5S341CZ kiểu m&aacute;y cơ với thiết kế mỏng thời trang với độ d&agrave;y chỉ 9mm, phối c&ugrave;ng phi&ecirc;n bản d&acirc;y da tạo h&igrave;nh v&acirc;n phong c&aacute;ch lịch l&atilde;m.</p>', 1, '14090000', 'c33cda8c22.jpg', 'K5S341CZ', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '42 mm', '9 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '3 ATM', 'Lịch Ngày'),
(39, 'CALVIN KLEIN K4D211CY – NAM – QUARTZ (PIN) – DÂY DA', 14, 9, '<p>Mẫu Calvin Klein K4D211CY phi&ecirc;n bản d&acirc;y da trơn tone m&agrave;u đen thời trang cho ph&aacute;i mạnh đi c&ugrave;ng thiết kế n&eacute;t đơn giản 2 kim đặc trưng tr&ecirc;n nền mặt đen size 38mm.</p>', 1, '4410000', 'ea24f582ef.jpg', 'K4D211CY', 'Thụy Sỹ ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', '38 mm', '8 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '3 ATM', 'Không'),
(40, 'ROTARY GB90063/06 – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 10, '<p>Đồng hồ Rotary GB90063/06 c&oacute; niềng kim loại mạ v&agrave;ng bo tr&ograve;n mạnh mẽ quanh nền số trắng c&oacute; điểm nhấn kim chỉ v&agrave; vạch số m&agrave;u v&agrave;ng, d&acirc;y đeo demi đem lại vẻ thời trang lịch l&atilde;m.</p>', 1, '9000000', 'f6b21c925e.jpg', 'GB90063/06', 'Thụy Sỹ ', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '2 Năm', '4 Năm', '36 mm', '9 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', ' Trắng', '3 ATM', 'Lịch Ngày'),
(41, 'ROTARY GB90050/06– NAM – KÍNH SAPPHIRE – DÂY KIM LOẠI', 14, 10, '<p>Đồng hồ Rotary GB90050/06 với thiết kế mạnh mẽ khi viền mặt số v&agrave; d&acirc;y đeo l&agrave;m bằng kim loại th&eacute;p kh&ocirc;ng gỉ, 2 kim chỉ mảnh mai c&ugrave;ng gạch số m&agrave;u đen nổi bật tr&ecirc;n nền trắng mặt số.</p>', 1, '11480000', '395c92979b.jpg', 'GB90050/06', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '2 Năm', '4 Năm', '38 mm', '7.3 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', ' Trắng', '3 ATM', 'Lịch Ngày'),
(42, 'ROTARY GB90070/04 – NAM – KÍNH SAPPHIRE – DÂY KIM LOẠI', 14, 10, '<p>Đồng hồ Rotary GS90070/04 thiết kế d&aacute;ng thể thao mạnh mẽ c&ugrave;ng d&acirc;y đeo da đen b&oacute;ng, mặt đồng hồ với nền đen với k&iacute;nh Sapphire chống trầy c&ugrave;ng kim chỉ v&agrave; gạch số m&agrave;u trắng phản quang,.</p>', 1, '11480000', 'bb95435e68.jpg', 'GS90070/04', 'Thụy Sỹ ', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '4 Năm', ' 40mm', '12 mm', 'Thép Không Gỉ', 'Dây Da Chính Hãng', 'Đen', '3 ATM', 'Lịch Ngày'),
(43, 'ROTARY LB90188/01 – NỮ – KÍNH SAPPHIRE– DÂY KIM LOẠI', 13, 10, '<p>Mẫu Rotary LB90188/01 thiết kế bộ m&aacute;y nhỏ gọn vẻ ngo&agrave;i thanh mảnh nữ t&iacute;nh với nền cọc số chữ la m&atilde; c&aacute;ch t&acirc;n trẻ trung trước mặt k&iacute;nh Sapphire.</p>', 1, '9790000', '1ee150b26b.jpg', 'LB90188/01', 'Thụy Sỹ ', 'Nữ', 'Sapphire (Kính Chống Trầy)', 'Quartz (Pin)', '2 Năm', '4 Năm', '34 mm', '9 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', ' Trắng', '3 ATM', 'Lịch Ngày'),
(44, 'FOUETTÉ OR-LOVE – NỮ – QUARTZ (PIN) – DÂY DA', 13, 11, '<p>Mẫu đồng hồ Fouett&eacute; OR-LOVE mang tr&ecirc;n m&igrave;nh một thiết kế độc đ&aacute;o khắc họa l&ecirc;n h&igrave;nh ảnh một vũ c&ocirc;ng ba l&ecirc; chuy&ecirc;n nghiệp đang tr&igrave;nh diễn tr&ecirc;n nền mặt số được đ&iacute;nh k&egrave;m c&aacute;c vi&ecirc;n kim cương tạo n&ecirc;n một vẻ đẹp đầy cuốn h&uacute;t d&agrave;nh cho ph&aacute;i đẹp.</p>', 1, '15500000', '548fb4cdc5.jpg', 'OR-LOVE', 'Hong Kong (Nhà vô địch cuộc thi thiết kế đồng hồ Hong Kong Watch)', 'Nữ', 'Mineral Crystal (Kính Cứng)', ' Đồng hồ Quartz (Pin) Ronda (Thụy Sỹ) & Búp bê Ba lê hoạt động bằng bộ máy cơ', '2 Năm', '4 Năm', '38 mm', 'Không', 'Thép Không Gỉ', ' Dây da Áo của hãng Hirsch, da bò thật 100% phủ Satin', 'Hồng', '3 ATM', ' Xà cừ tự nhiên, đính pha lê Swarovski (Váy búp bê 12 viên, viền 76 viên)'),
(45, 'FOUETTÉ OR-STAR – NỮ – QUARTZ (PIN) – DÂY DA', 13, 11, '<p>Mẫu Fouett&eacute; OR-STAR mang tr&ecirc;n m&igrave;nh một thiết kế độc đ&aacute;o khắc họa l&ecirc;n h&igrave;nh ảnh một vũ c&ocirc;ng ba l&ecirc; chuy&ecirc;n nghiệp đang tr&igrave;nh diễn tr&ecirc;n nền mặt số được đ&iacute;nh k&egrave;m c&aacute;c vi&ecirc;n kim cương tạo n&ecirc;n một vẻ đẹp đầy cuốn h&uacute;t d&agrave;nh cho ph&aacute;i đẹp.</p>', 1, '15500000', '6b8ee186b7.jpg', 'OR-STAR', 'Hong Kong (Nhà vô địch cuộc thi thiết kế đồng hồ Hong Kong Watch)', 'Nữ', 'Mineral Crystal (Kính Cứng)', ' Đồng hồ Quartz (Pin) Ronda (Thụy Sỹ) & Búp bê Ba lê hoạt động bằng bộ máy cơ', '2 Năm', '4 Năm', '38 mm', 'Không', 'Thép Không Gỉ', ' Dây da Áo của hãng Hirsch, da bò thật 100% phủ Satin', 'Đen', '3 ATM', ' Xà cừ tự nhiên, đính pha lê Swarovski (Váy búp bê 12 viên, viền 76 viên)'),
(46, 'CITIZEN BI5010-59A – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', 14, 12, '<p>Đồng hồ Citizen BI5010-59A c&oacute; mặt số tr&ograve;n lớn nam t&iacute;nh, nền số trắng sang trọng, kim chỉ v&agrave; vạch chỉ giờ được mạ bạc sang trọng, c&ograve;n c&oacute; lịch ng&agrave;y vị tr&iacute; 6h nổi bật, d&acirc;y đeo kim loại lịch l&atilde;m, mạnh mẽ.</p>', 1, '3150000', '989e45c4ac.jpg', 'BI5010-59A', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '1 Năm', '5 Năm', ' 40mm', '7.2 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Đen', '5 ATM', 'Lịch Ngày'),
(47, 'CITIZEN BM7330-67L – NAM – ECO– DÂY KIM LOẠI', 14, 12, '<p>Mẫu Citizen BM7330-67L mặt số xanh phi&ecirc;n bản đầy thời trang với c&aacute;c chi tiết vạch số tạo n&eacute;t mỏng tinh tế mạ bạc, kiểu d&aacute;ng đơn giản 3 kim k&egrave;m theo 1 &ocirc; lịch ng&agrave;y.</p>', 1, '6930000', '7d4da6cba4.jpg', 'BM7330-67L', 'Nhật Bản', 'Nam', 'Mineral Crystal (Kính Cứng)', 'Quartz (Pin)', '3 Năm', '5 Năm', ' 40mm', '9.5 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Xanh', '10 ATM', 'Lịch Ngày'),
(48, 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', 14, 12, '<p>Đồng hồ Citizen NB1021-57E c&oacute; mặt đồng hồ tr&ograve;n nền đen mạnh mẽ, kim chỉ v&agrave; vạch số được phủ m&agrave;u trắng phản quang nổi bật, d&acirc;y đeo kim loại đem đến n&eacute;t lịch l&atilde;m sang trọng cho ph&aacute;i mạnh</p>', 1, '14700000', '4d459813de.jpg', 'NB1021-57E', 'Nhật Bản', 'Nam', 'Sapphire (Kính Chống Trầy)', 'Automatic (Tự Động)', '3 Năm', '5 Năm', '41 mm', '11 mm', 'Thép Không Gỉ', 'Thép Không Gỉ', 'Đen', '3 ATM', 'Lịch Ngày');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider 4', 'c2b37c86ae.jpg', 1),
(6, 'slider 5', '0cba9a1388.jpg', 1),
(7, 'slider 6', '042cc8a9e4.jpg', 1),
(8, 'slider 7', '56cbbff241.jpg', 1),
(9, 'slider 8', '44938868d9.jpg', 1),
(10, 'slider 9', 'b612bdae52.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(7, 5, 9, 'CASIO EFR-534D-7AVDF – NAM – QUARTZ (PIN) – DÂY KIM LOẠI', '4230000', '785d942dd1.jpg'),
(8, 5, 12, 'SEIKO SSA345J1 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', '13900000', 'ea3a7798af.jpg'),
(9, 5, 14, 'BULOVA 97A136 – NAM – AUTOMATIC (TỰ ĐỘNG) – DÂY DA', '10099000', '1f67b2a4b0.jpg'),
(10, 5, 48, 'CITIZEN NB1021-57E – NAM – KÍNH SAPPHIRE– DÂY KIM LOẠI', '14700000', '4d459813de.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
