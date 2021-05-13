-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 08:44 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytour_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `passsave` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `passsave`, `name`, `image`, `email`, `phone`, `address`, `role`, `code`, `isActive`) VALUES
(1, 'admin', 'e24bfe242ea35f40bfa6826a2076eef0', '07112020', 'Mytour.vn', 'image/paris.jpg', 'ntchuyen.19it1@vku.udn.vn', '0967765522', '470 Trần Đại Nghĩa, phường Hòa Hải, quận Ngũ Hành Sơn,Thành phố Đà Nẵng', 1, '', 0),
(2, 'camhuyen', '183c17b8a815b1379acb672934603d7a', '07072001', 'Nguyễn Thị Cẩm Huyền', 'image/B612_20191215_123940_801.jpg', 'greenbook.vku@gmail.com', '0123456789', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', 2, '', 0),
(3, 'thanhphong', 'e24bfe242ea35f40bfa6826a2076eef0', '07112020', 'Hồ Thanh Phong', 'image/128078826_402437887567604_8472730812473317076_n.jpg', 'greenbook.vku@gmail.com', '0123456789', 'Cập nhật Địa chỉ của bạn', 3, '', 0),
(4, 'trucly', 'aa6e3ddfe8384b05d658d6bd83de7e3e', 'trucly2001', 'Nguyễn Thị Trúc Ly', 'image/4hoa-si-nhat-ban-ve-ra-mot-the-gioi-noi-con-nguoi-vui-song-giua-n-aff.jpg', 'greenbook.vku@gmail.com', '0327216383', 'Quận Thanh Xuân, Hà Nội', 2, '', 0),
(5, 'hapham', '25f9e794323b453885f5181f1b624d0b', '123456789', 'Phạm Khánh Hà', 'image/aab98d8b-2.png', 'pkha2009@gmail.com', '0327216383', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', 3, '', 0),
(6, 'truonggiang', 'ba8e3394c007ceb25cc3af1df18e8dff', 'truonggiang01', 'Trương Trường Giang', 'image/lgoo_35.jpg', 'truonggiang2001@gmail.com', '0967765522', 'Cập nhật Địa chỉ của bạn', 2, '', 0),
(7, 'huonggiang', '820ab25f3f337354effe95226a21ce84', 'huonggiang', 'Ngô Thị Hương Giang', '', 'greenbook.vku@gmail.com', '0327216383', 'phường Hòa Hải, quận Ngũ Hành Sơn, Thành phố Đà Nẵng', 2, '', 0),
(9, 'nhatminh', 'b1148e254afb4e7ceacaf1a197116cf2', 'olympia', 'nhatminh', '', 'phandangnhatminh2000@gmail.com', '0795645634', '', 2, '', 0),
(10, 'Hellen', '0c93cf787bf43678880faf4116ae7fa1', 'hellenlondon', 'Hellen', '', 'hellenkinler@gmail.com', '07712387591', '', 2, '', 0),
(11, 'DonaldTrump', 'a91a07e2de2cc5f49094b6595ef2804d', 'DonaldTrump', 'Donald Trump', 'image/11Donald_Trump_official_portrait.jpg', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', 2, '', 0),
(12, 'KimYooJung', 'f0c1de715b3cb3696ea0774d66a3b4c8', 'yoojung', 'KimYooJung', '', 'kyjung1999@gmail.kr', '0327216383', '', 2, '', 0),
(13, 'KangDaniel', '90372d26809b6f10f59d0159102c927c', 'daonhodethuong', 'KangDaniel', '', 'kangdanielkorea@gmail.kr', '1234567889', '', 2, '', 0),
(14, 'khanhhuyen', '0b8aaf060f0e5de274d1ca6b2969aa97', 'khanhhuyen', 'khanhhuyen', '', 'vkhuyen@gmail.com', '0987664321', '', 2, '', 0),
(15, 'TanCa', 'be7288619def590b37694796208f83c0', 'tamkimanhhau', 'TanCa', '', 'chautan@gmail.cn', '0123654780', '', 2, '', 0),
(16, 'QuocAnh', 'bb67ccb42ce1b2ca897d0260e2fcc27d', 'quocanh', 'Khách Sạn Căn Hộ Daisy Boutique', 'image/LOGO.jpg', 'greenbook.vku@gmail.com', '0967765527', 'Cập nhật Địa chỉ của bạn', 3, '', 0),
(17, 'thanhhuyen', '597e978396241156594995dba08bfb0d', 'thanhhuyen', 'thanhhuyen', '', 'tranthanhhuyen0195@gmail.com', '0967765643', '', 2, '', 0),
(18, 'DuongSuong', 'd261b0d25d6787234b5e703868e7d049', 'c3dongha', 'DuongSuong', '', 'duongmysuong@gmail.com', '0327216666', '', 2, '', 0),
(19, 'GoldenBay', 'bdcf7e7c1b1c5d2d5ebf1a49b2ef002c', 'GoldenBay', 'Đà Nẵng Golden Bay', 'image/19unnamed (2).jpg', 'dngoldenbay@gmail.vn', '0987664356', 'Cập nhật Địa chỉ của bạn', 3, '', 0),
(20, 'phongho', 'e24bfe242ea35f40bfa6826a2076eef0', '07112020', 'Phong Thanh Hồ (htphong01)', 'image/20unnamed (1).jpg', 'greenbook.vku@gmail.com', '0123456789', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', 2, '', 0),
(21, 'TnThanhTam', 'e24bfe242ea35f40bfa6826a2076eef0', '07112020', 'Tn Thanh Tâm', 'image/21Hình-avatar-cô-gái-tóc-ngắn-dễ-thương.jpg', 'greenbook.vku@gmail.com', '0123456789', 'Quận 1, TP Hồ Chí Minh', 2, '', 0),
(23, 'htphong01', '4297f44b13955235245b2497399d7a93', '123123', 'Hồ Thanh Phong', NULL, 'phonghopro2001@gmail.com', '1231231231', NULL, 2, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`) VALUES
(1, 'Quận Hải Châu'),
(2, 'Quận Cẩm Lệ'),
(3, 'Quận Liên Chiểu'),
(4, 'Quận Sơn Trà'),
(5, 'Quận Thanh Khê'),
(6, 'Quận Ngũ Hành Sơn'),
(7, 'Huyện Hòa Vang');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2021-04-30 16:25:32.653665', '2021-04-30 16:25:32.653665');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `set_date` datetime DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `checkin_date` datetime DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `sum_price` float DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `showname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `name`, `email`, `phone`, `address`, `set_date`, `room`, `hotel`, `price`, `checkin_date`, `checkout_date`, `amount`, `sum_price`, `pay`, `status`, `rating`, `comment`, `showname`) VALUES
(3, 4, 'Nguyễn Thị Trúc Ly', 'nttly.19it1@vku.udn.vn', '0327216383', 'Hòa Khánh Nam, Liên Chiểu, Đà Nẵng', '2021-01-03 17:05:13', 1, 1, 733000, '2021-01-03 14:00:00', '2021-01-05 11:00:00', 2, 2932000, 'Thẻ tín dụng', 4, 0, '', ''),
(4, 2, 'Nguyễn Thị Cẩm Huyền', 'camhuyen772001@gmail.com', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '2021-01-03 17:49:42', 18, 6, 1937000, '2021-01-07 14:00:00', '2021-01-10 11:00:00', 2, 11622000, 'Thẻ tín dụng', 4, 5, 'Dịch vụ rất tốt', 'Huyền Nguyễn'),
(5, 11, 'Donald Trump', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', '2021-01-03 18:55:25', 18, 6, 1937000, '2021-01-11 14:00:00', '2021-01-15 11:00:00', 1, 7748000, 'Thẻ tín dụng', 6, 0, '', ''),
(6, 7, 'Ngô Thị Hương Giang', 'nthgiang.19it1@vku.udn.vn', '0327216383', 'phường Hòa Hải, quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '2021-01-03 19:09:44', 11, 11, 747000, '2021-01-09 14:00:00', '2021-01-12 11:00:00', 2, 4482000, 'Thẻ ATM nội địa', 4, 4, 'Homestay khá ổn', 'Ngô Thị Hương Giang'),
(7, 11, 'Donald Trump', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', '2021-01-03 23:07:22', 6, 1, 1241000, '2021-01-07 14:00:00', '2021-01-09 11:00:00', 2, 4964000, 'Thẻ tín dụng', 4, 5, 'Phục vụ tốt nhưng không bằng Vinpearl Condotel', 'DonaldTrumpcutebaby'),
(8, 4, 'Nguyễn Thị Trúc Ly', 'nttly.19it1@vku.udn.vn', '0327216383', 'Hòa Khánh Nam, Liên Chiểu, Đà Nẵng', '2021-01-03 23:23:35', 7, 6, 1090000, '2021-01-07 14:00:00', '2021-01-09 11:00:00', 3, 6540000, 'Thẻ ATM nội địa', 4, 5, 'Chưa bao giờ trải nghiệm 1 khách sạn nào mà tuyệt vời như này. Phòng ở thoáng mát. Quản lý thân thiện, dễ thương. Cho 10 điểm chất lượng.', 'Nguyễn Thị Trúc Ly'),
(9, 3, 'Hồ Thanh Phong', 'htphong.19it1@vku.udn.vn', '0795525037', 'Cập nhật Địa chỉ của bạn', '2021-01-12 12:43:24', 11, 11, 747000, '2021-01-12 14:00:00', '2021-01-13 11:00:00', 2, 1494000, 'Thẻ ATM nội địa', 4, 0, '', ''),
(10, 2, 'Nguyễn Thị Cẩm Huyền', 'camhuyen772001@gmail.com', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '2021-01-14 15:54:03', 18, 6, 1937000, '2021-01-16 14:00:00', '2021-01-17 11:00:00', 1, 1937000, 'Thẻ ATM nội địa', 4, 0, '', ''),
(11, 20, 'Hồ Thanh Phong', 'htphong.19it1@vku.udn.vn', '0123456789', 'TP Huế, Thừa Thiên - Huế', '2021-01-15 09:52:30', 7, 6, 1090000, '2021-01-17 14:00:00', '2021-01-19 11:00:00', 2, 4360000, 'Thẻ ATM nội địa', 6, 0, '', ''),
(12, 11, 'Donald Trump', 'htphong.19it1@vku.udn.vn', '0987664321', 'White House, Washington, America', '2021-01-15 11:33:17', 11, 11, 747000, '2021-01-17 14:00:00', '2021-01-19 11:00:00', 5, 7470000, 'Thẻ tín dụng', 4, 0, '', ''),
(13, 11, 'Donald Trump', 'htphong.19it1@vku.udn.vn', '0987664321', 'White House, Washington, America', '2021-01-15 13:35:09', 1, 1, 733000, '2021-01-21 14:00:00', '2021-01-23 11:00:00', 2, 1466000, 'Thẻ tín dụng', 6, 0, '', ''),
(14, 4, 'trucly', 'nttly.19it1@vku.udn.vn', '0327216383', ' 01 An Thượng, Mỹ An, Ngũ Hành Sơn, Đà Nẵng', '2021-01-15 13:36:39', 1, 1, 733000, '2021-01-22 14:00:00', '2021-01-24 11:00:00', 2, 2932000, 'Thẻ tín dụng', 4, 0, '', ''),
(15, 2, 'Cẩm Huyền', 'htphong.19it1@vku.udn.vn', '0795525037', 'TP Huế, Thừa Thiên - Huế', '2021-01-15 23:03:21', 18, 6, 1937000, '2021-01-10 14:00:00', '2021-01-14 11:00:00', 1, 9685000, 'Thẻ tín dụng', 4, 5, 'Mình đánh giá cao chất lượng phòng ở đây. Tạo cảm giác thoải mái cho khách hàng. Nhân viên cũng rất nhiệt tình và thân thiện', 'c******n'),
(16, 20, 'Thanh Phong', 'htphong.19it1@vku.udn.vn', '0795525037', 'TP Huế, Thừa Thiên - Huế', '2021-01-11 23:03:21', 18, 6, 1937000, '2021-01-10 14:00:00', '2021-01-14 11:00:00', 1, 9685000, 'Thẻ tín dụng', 6, 5, 'Nói thật, nếu hệ thống đánh giá này có 10 sao, tôi nhất định sẽ cho 10 sao. Khách sạn Vinpearl là một khách sạn tuyệt vời. Với nội thất tiện nghi, không gian thoáng đãng, phục vụ nhiệt tình, đặc biệt là anh quản lý rất là thân thiện. Tôi nhất định sẽ quay', 'Thanh Phong'),
(17, 11, 'Donald Trump', 'htphong.19it1@vku.udn.vn', '0795525037', 'TP Huế, Thừa Thiên - Huế', '2021-01-10 23:03:21', 18, 6, 1937000, '2021-01-10 14:00:00', '2021-01-14 11:00:00', 1, 9685000, 'Thẻ tín dụng', 4, 5, 'Dịch vụ tuyệt vời, nhân viên chu đáo, không gian thoáng đãng, góc nhìn đẹp, mọi thứ đều tuyệt vời! Chắc chắn là vậy', 'Tổng thống Donald Trump cute hột me'),
(18, 20, 'Thanh Phong', 'htphong.19it1@vku.udn.vn', '0795525037', 'TP Huế, Thừa Thiên - Huế', '2021-01-09 23:03:21', 18, 6, 1937000, '2021-01-10 14:00:00', '2021-01-14 11:00:00', 1, 9685000, 'Thẻ tín dụng', 4, 5, 'Tốt lắm ạ', 'Thanh Phong cute'),
(19, 11, 'Donald Trump', 'htphong.19it1@vku.udn.vn', '0987664321', 'White House, Washington, America', '2021-01-11 11:33:17', 11, 11, 747000, '2021-01-17 14:00:00', '2021-01-19 11:00:00', 5, 7470000, 'Thẻ tín dụng', 4, 5, 'Phòng tốt', 'DonaldTrump'),
(20, 7, 'Ngô Thị Hương Giang', 'nthgiang.19it1@vku.udn.vn', '0327216383', 'phường Hòa Hải, quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '2021-01-16 07:40:43', 1, 1, 733000, '2021-01-21 14:00:00', '2021-01-24 11:00:00', 1, 2199000, 'Thẻ tín dụng', 4, 0, '', ''),
(21, 7, 'Ngô Thị Hương Giang', 'camhuyen772001@gmail.com', '0327216383', 'phường Hòa Hải, quận Ngũ Hành Sơn, Thành phố Đà Nẵng', '2021-01-16 07:43:50', 18, 6, 1937000, '2021-01-17 14:00:00', '2021-01-19 11:00:00', 2, 7748000, 'Thẻ tín dụng', 4, 0, '', ''),
(22, 2, 'Nguyễn Thị Cẩm Huyền', 'camhuyen772001@gmail.com', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '2021-01-16 09:27:42', 7, 6, 1090000, '2021-01-22 14:00:00', '2021-01-25 11:00:00', 3, 9810000, 'Thẻ ATM nội địa', 6, 0, '', ''),
(23, 2, 'Nguyễn Thị Cẩm Huyền', 'greenbook.vku@gmail.com', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '2021-01-16 09:27:42', 2, 1, 733000, '2021-05-02 00:00:00', '2021-05-07 00:00:00', 1, 2880000, 'Thẻ ATM nội địa', 4, NULL, NULL, NULL),
(28, 2, 'Nguyễn Thị Cẩm Huyền', 'greenbook.vku@gmail.com', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '2021-05-02 16:13:58', 2, 1, 576000, '2021-05-02 14:00:00', '2021-05-06 11:00:00', 1, 2304000, 'Thẻ tín dụng', 4, NULL, NULL, NULL),
(29, 11, 'Donald Trump', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', '2021-05-07 08:45:03', 1, 1, 733000, '2021-05-01 14:00:00', '2021-05-02 11:00:00', 1, 733000, 'Thẻ tín dụng', 4, 5, 'Có trời mới biết tôi đã ở một nơi tuyệt vời như thế nào. Cảm tạ chúa, cảm ơn mọi người :v', 'Cựu tổng thống thường  lên hotsearch Weibo:>'),
(30, 11, 'Donald Trump', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', '2021-05-07 11:01:57', 1, 1, 733000, '2021-05-16 07:00:00', '2021-05-20 04:00:00', 2, 5864000, 'Thẻ tín dụng', 1, NULL, NULL, NULL),
(31, 11, 'Donald Trump', 'donaldtrump@gmail.ac', '0987664321', 'White House, Washington, America', '2021-05-08 00:48:37', 1, 1, 733000, '2021-05-09 07:00:00', '2021-05-11 04:00:00', 2, 2932000, 'Thẻ tín dụng', 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `bookday` datetime DEFAULT NULL,
  `dayleave` datetime DEFAULT NULL,
  `priceRoom` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `numberRoom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer`, `contact`, `address`, `room`, `pay`, `bookday`, `dayleave`, `priceRoom`, `payment`, `numberRoom`) VALUES
(2, 'thanhphong', '0795525037', 'Cập nhật Địa chỉ của bạn', 'Superior Giường king, Quang cảnh Thành Phố', 0, '2020-12-30 14:52:26', '2020-12-30 14:52:26', NULL, 'Chưa thanh toán', 1),
(31, 'camhuyen', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '', 1, '2020-12-30 14:52:26', '2020-12-30 14:52:26', '1.200.000đ', 'Thanh toán bằng thẻ tín dụng nội địa', 1),
(32, 'camhuyen', '0987783627', 'Kí túc xá Trường Đại học Công nghệ thông tin và Truyền thông Việt - Hàn, phường Hòa Quý, quận Ngũ Hành Sơn, thành phố Đà Nẵng', '', 1, '2020-12-30 14:52:26', '2020-12-30 14:52:26', '1.200.000đ', 'Thanh toán bằng phương thức đến cửa hàng gần nhất !', 1),
(33, 'thanhphong', '0795525037', 'Cập nhật Địa chỉ của bạn', '', 1, '2021-01-01 09:59:53', '2021-01-01 09:59:53', '1.200.000đ', 'Thanh toán bằng thẻ tín dụng', 1),
(34, 'thanhphong', '0795525037', 'Cập nhật Địa chỉ của bạn', '', 1, '2021-01-01 10:21:01', '2021-01-01 10:21:01', '1.200.000đ', 'Thanh toán bằng phương thức đến cửa hàng gần nhất !', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `namecate` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `namecate`, `parent_id`, `description`) VALUES
(1, 'Homestay', 0, '<p>Homestay l&agrave; g&igrave; ?</p>\r\n'),
(2, 'Hotel', 0, '<p>N&oacute;i đến Hotel phải n&oacute;i nghĩ ngay đến Vinpearl Condotel Đ&agrave; Nẵng. Với quản l&yacute; cực kỳ th&acirc;n thiện</p>\r\n'),
(3, 'Hostel', 0, ''),
(4, 'Bungalow', 0, ''),
(5, 'Resort', 0, ''),
(6, '1 <i class=\"fas fa-star\" style=\"color:orange\"></i>', 2, ''),
(7, '2 <i class=\"fas fa-star\" style=\"color:orange\"></i>', 2, ''),
(8, '3 <i class=\"fas fa-star\" style=\"color:orange\"></i>', 2, ''),
(9, '4 <i class=\"fas fa-star\" style=\"color:orange\"></i>', 2, ''),
(10, '5 <i class=\"fas fa-star\" style=\"color:orange\"></i>', 2, ''),
(12, 'Apartment', 0, ''),
(14, 'Guest House', 0, '<p>Nh&agrave; cho kh&aacute;ch nghỉ trọ</p>\r\n'),
(15, 'Phòng Vip', 0, '<p>Hello</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` bigint(20) NOT NULL,
  `namehotel` varchar(255) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `1sao` float DEFAULT NULL,
  `2sao` float DEFAULT NULL,
  `3sao` float DEFAULT NULL,
  `4sao` float DEFAULT NULL,
  `5sao` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `namehotel`, `star`, `comment`, `1sao`, `2sao`, `3sao`, `4sao`, `5sao`) VALUES
(1, 'Khách Sạn Sala Đà Nẵng Beach', 5, '', 1, 3.4, 3.6, 4, 3.8);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL,
  `datecmt` datetime DEFAULT NULL,
  `isShow` int(11) DEFAULT NULL,
  `likecmt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `parent_id`, `user`, `idpost`, `datecmt`, `isShow`, `likecmt`) VALUES
(3, 'Mỳ Quảng có phải đặc sản của Đà Nẵng hông vậy?', 0, 2, 3, '2021-01-14 17:18:00', 0, 2),
(4, 'Không hẳn bạn ạ', 3, 3, 3, '2021-01-14 17:50:00', 0, 0),
(5, 'Xin chào Việt Nam!', 0, 11, 3, '2021-01-14 21:51:01', 0, 4),
(6, 'Bài viết rất hay và hữu ích', 0, 11, 3, '2021-01-14 23:34:07', 0, 1),
(23, 'Hello VietNam', 3, 11, 3, '2021-01-15 00:41:13', 0, 1),
(24, 'Tôi muốn đến Đà Nẵng một lần, vì ở đó con người hồn hậu lại thân thiện. Thiên nhiên và mọi thứ đều tuyệt vời', 0, 11, 6, '2021-01-15 01:10:22', 0, 5),
(25, 'Rất hân hạnh được đón tiếp Tổng thống đến tham quan và du lịch Đà Nẵng!', 24, 2, 6, '2021-01-15 01:11:51', 0, 0),
(26, 'Cảm ơn bạn Nguyễn Thị Cẩm Huyền rất nhiều', 24, 11, 6, '2021-01-15 01:20:51', 0, 1),
(27, 'Mời ngài đến khách sạn Vinpearl Condotel Riverfront Đà Nẵng của chúng tôi!', 24, 3, 6, '2021-01-15 02:23:49', 0, 1),
(28, 'Mọi người nhớ ghé thăm khách sạn Vinpearl Condotel của Phong nhó!!!\n^^', 0, 3, 2, '2021-01-15 02:25:49', 0, 2),
(29, 'Nhớ like và cmt cho bài của Phong nha:>>>', 0, 3, 2, '2021-01-15 02:27:29', 0, 0),
(30, 'Vào đọc đi mọi người ơi, vừa hay vừa bổ ích vừa giúp Phong tăng view nữa ahihi', 0, 3, 2, '2021-01-15 02:28:10', 0, 1),
(31, 'Chào bạn Admin của Vinpearl:vv', 30, 1, 2, '2021-01-15 02:29:28', 0, 0),
(32, 'Free 100% thì đi nhó:vv', 28, 1, 2, '2021-01-15 02:29:48', 0, 0),
(33, 'Yêu thương thật nhiều với những người dành tình yêu cho Đà Nẵng <3 <3', 0, 1, 6, '2021-01-15 02:31:12', 0, 8),
(34, 'Hiiiii admin', 33, 20, 6, '2021-01-15 10:02:53', 0, 0),
(35, 'Đúng là một bài viết hay và bổ ích. Cảm ơn Admin đã cho mình những kinh nghiệm hay cho chuyến du lịch đến Đà Nẵng sắp tới nhé!', 0, 20, 6, '2021-01-15 10:03:43', 0, 3),
(36, 'Xin chào ngài Donald Trump', 5, 20, 3, '2021-01-15 10:05:29', 0, 0),
(37, 'Xin cảm ơn vì đã dành dự quan tâm và tin tưởng đến Golden Bay!', 0, 19, 8, '2021-01-15 10:17:43', 0, 0),
(38, 'Xin chào Admin MyTour.vn ^^. Hợp tác vui vẻ nha', 33, 19, 6, '2021-01-15 10:19:09', 0, 1),
(39, 'Hello', 33, 11, 6, '2021-01-15 11:52:09', 0, 1),
(40, 'Hello everyone', 0, 4, 6, '2021-01-15 15:32:02', 0, 2),
(41, 'Hi mọi người! Chúc mọi người cuối tuần vui vẻ', 0, 21, 9, '2021-01-15 15:51:12', 0, 0),
(42, 'Heeeee', 0, 11, 1, '2021-01-15 19:42:16', 0, 1),
(43, 'Đồ bị mất chức tổng thống lêu lêu', 42, 11, 1, '2021-01-15 19:42:33', 1, 0),
(45, 'Mlem Mlem', 0, 20, 10, '2021-01-15 23:11:28', 1, 0),
(46, 'Đồ bị mất chức tổng thống lêu lêu haha', 42, 11, 1, '2021-01-13 19:42:33', 1, 0),
(47, 'Hello', 33, 11, 6, '2021-01-12 11:52:09', 0, 0),
(48, 'Hello everyone', 0, 4, 6, '2021-01-12 15:32:02', 0, 1),
(49, 'Hi mọi người! Chúc mọi người cuối tuần vui vẻ', 0, 21, 9, '2021-01-11 15:51:12', 0, 0),
(50, 'Heeeee', 0, 11, 1, '2021-01-11 19:42:16', 0, 0),
(51, 'Đồ bị mất chức tổng thống lêu lêu', 42, 11, 1, '2021-01-11 19:42:33', 1, 0),
(52, 'Xin cảm ơn vì đã dành dự quan tâm và tin tưởng đến Golden Bay!', 0, 19, 8, '2021-01-10 10:17:43', 0, 0),
(53, 'Xin chào Admin MyTour.vn ^^. Hợp tác vui vẻ nha', 33, 19, 6, '2021-01-10 10:19:09', 0, 0),
(54, 'Hello', 33, 11, 6, '2021-01-09 11:52:09', 0, 0),
(55, 'Hello everyone', 0, 4, 6, '2021-01-09 15:32:02', 0, 1),
(56, 'Hi mọi người! Chúc mọi người cuối tuần vui vẻ', 0, 21, 9, '2021-01-09 15:51:12', 0, 0),
(57, 'Heeeee', 0, 11, 1, '2021-01-10 19:42:16', 0, 0),
(58, 'Đồ bị mất chức tổng thống lêu lêu', 42, 11, 1, '2021-01-09 19:42:33', 1, 0),
(59, 'Chào bạn!\n', 57, 4, 1, '2021-01-16 00:07:11', 0, 2),
(60, 'Hiiii', 57, 4, 1, '2021-01-16 00:11:38', 0, 0),
(61, 'Xin chào ngài Donald Trump. Nếu được hi vọng ngài một lần ghé thăm Việt Nam', 5, 4, 3, '2021-01-16 00:39:56', 0, 0),
(62, 'Bài viết rất hay và ý nghĩa! Cảm ơn rất nhiều', 0, 7, 6, '2021-01-16 07:58:44', 0, 1),
(63, 'Hay lắm ạ', 0, 2, 6, '2021-01-16 09:32:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL,
  `reply` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user`, `name`, `email`, `content`, `date_send`, `reply`) VALUES
(1, 4, 'Nguyễn Thị Trúc Ly', 'nttly.19it1@vku.udn.vn', '<p>Hello admin</p>\r\n', '2021-01-14 01:41:20', '<p>Hello Tr&uacute;c Ly,</p>\r\n\r\n<p>M&igrave;nh l&agrave; Huyền n&egrave;:vvv</p>\r\n'),
(2, 2, 'Nguyễn Thị Cẩm Huyền', 'camhuyen772001@gmail.com', '<p>Xin ch&agrave;o admin,&nbsp;</p>\r\n\r\n<p>M&igrave;nh đ&atilde; đặt v&eacute; du lịch đến Đ&agrave; Nẵng v&agrave;o ng&agrave;y 1/2 tới. V&igrave; vậy m&igrave;nh đang t&igrave;m kiếm một kh&aacute;ch sạn để lưu lại Đ&agrave; Nẵng trong khoảng 3 ng&agrave', '2021-01-14 09:14:28', '<p>Xin ch&agrave;o bạn,cảm ơn bạn đ&atilde; li&ecirc;n hệ với&nbsp;ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Ch&agrave;o bạn Nguyễn Thị Cẩm Huyền, rất vui khi nhận được lời nhắn từ bạn.</p>\r\n\r\n<p>Theo như t&ocirc;i thấy, nếu bạn muốn lựa chọn dịch vụ kh&aacute;ch'),
(3, 3, 'Hồ Thanh Phong', 'htphong.19it1@vku.udn.vn', '<p>Xin ch&agrave;o Admin, sắp tới m&igrave;nh c&oacute; chuyến c&ocirc;ng t&aacute;c đến Đ&agrave; Nẵng.&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể tư vấn cho m&igrave;nh một dịch vụ nghỉ dưỡng lưu tr&uacute; tiện nghi v&agrave; thoải m&aacute;i được kh&ocirc;ng</', '2021-01-15 02:08:02', '<p>Xin ch&agrave;o bạn Hồ Thanh Phong,</p>\r\n\r\n<p>M&igrave;nh đ&atilde; đọc được thắc mắc của bạn. V&agrave; m&igrave;nh xin được tư vấn cũng như giải đ&aacute;p thắc mắc như sau:</p>\r\n\r\n<p>Về kh&aacute;ch sạn tiện nghi bạn c&oacute; thể lựa chọn Vinpearl '),
(4, 20, 'Phong Thanh Hồ', 'htphong.19it1@vku.udn.vn', '<p>M&igrave;nh ở Huế, nhưng m&igrave;nh muốn đến Đ&agrave; Nẵng vui chơi khắp chốn đến hết mới th&ocirc;i</p>\r\n\r\n<p>N&ecirc;n c&oacute; thể m&igrave;nh sẽ ở lại Đ&agrave; Nẵng trong v&agrave;i ng&agrave;y.</p>\r\n\r\n<p>Admin giới thiệu cho m&igrave;nh một v&', '2021-01-15 10:07:33', ''),
(5, 20, 'Thanh Phong', 'htphong.19it1@vku.udn.vn', '<p>T&ocirc;i sắp đến Đ&agrave; Nẵng để du lịch v&agrave;o dịp Tết Nguy&ecirc;n Đ&aacute;n n&agrave;y. T&ocirc;i c&oacute; t&igrave;m hiểu qua một v&agrave;i kh&aacute;ch sạn nhưng chưa được ứng &yacute; cho lắm. C&aacute;c bạn c&oacute; thể gợi &yacute; c', '2021-01-15 23:13:33', '<p>Bạn c&oacute; thể li&ecirc;n hệ Hồ Thanh Phong - quản l&yacute; của kh&aacute;ch sạn Vinpearl Condotel Đ&agrave; Nẵng nh&eacute;. Bạn n&agrave;y cực kỳ th&acirc;n thiện. Nhất định bạn sẽ t&igrave;m được 1 kh&aacute;ch sạn ứng &yacute;. Ch&uacute;c bạn '),
(6, 11, 'Donald Trump', 'donaldtrump@gmail.com', '<p>Xin ch&agrave;o</p>\r\n', '2021-05-08 00:50:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id_address` int(11) DEFAULT NULL,
  `cate` int(11) DEFAULT NULL,
  `admin_hotel` int(11) DEFAULT '0',
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `image`, `address`, `id_address`, `cate`, `admin_hotel`, `description`) VALUES
(1, 'Khách Sạn Sala Đà Nẵng Beach', 'image/1SALASuite.jpg', ' 36 - 38 Lâm Hoành, Phước Mỹ, Sơn Trà, Đà Nẵng', 4, 9, 9, '<p>Tọa lạc ngay b&ecirc;n bờ Mỹ Kh&ecirc; thơ mộng, kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach ch&iacute;nh l&agrave; lựa chọn h&agrave;ng đầu cho du kh&aacute;ch khi đặt ch&acirc;n đến nơi đ&acirc;y. Kh&ocirc;ng chỉ chọn ngay được vị tr&iacute; đắc địa, kh&aacute;ch sạn c&ograve;n đem lại cho du kh&aacute;ch những tiện nghi c&ugrave;ng trải nghiệm độc nhất v&ocirc; nhị khi đến với th&agrave;nh phố đ&aacute;ng sống nhất Việt Nam n&agrave;y.<br />\r\n<strong>Đặc điểm chỉ c&oacute; tại kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach</strong><br />\r\n<strong>Vị tr&iacute; thuận lợi</strong><br />\r\nSala Đ&agrave; Nẵng Beach được x&acirc;y dựng ngay cạnh bờ biển Mỹ Kh&ecirc; quanh năm nước trong xanh. Kh&aacute;ch sạn chỉ c&aacute;ch bờ s&ocirc;ng H&agrave;n v&agrave; trung t&acirc;m th&agrave;nh phố đ&uacute;ng 2km. Với địa điểm đắc địa như vậy, Sala đ&atilde; đem lại cho c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh những trải nghiệm đẳng cấp 4 sao h&agrave;ng đầu.<br />\r\n<strong>Dịch vụ h&agrave;ng đầu tại Sala</strong><br />\r\nDịch vụ đầu ti&ecirc;n phải kể đến l&agrave; nh&agrave; h&agrave;ng. Đ&acirc;y l&agrave; một trong số &iacute;t kh&aacute;ch sạn d&aacute;m đầu tư hẳn 2 nh&agrave; h&agrave;ng trong kh&aacute;ch sạn, đem lại trải nghiệm ẩm thực đa dạng. Menu phong ph&uacute; với những m&oacute;n &Aacute;-&Acirc;u đan xen. Kh&aacute;ch sạn c&ograve;n bố tr&iacute; hẳn một b&atilde;i đỗ xe ri&ecirc;ng miễn ph&iacute; d&agrave;nh cho những du kh&aacute;ch đi du lịch tự t&uacute;c. Hồ bơi v&ocirc; cực cũng l&agrave; một dịch vụ nổi bật tại Sala Đ&agrave; Nẵng. Du kh&aacute;ch c&oacute; thể thay đổi cảm gi&aacute;c sau một ng&agrave;y chơi đ&ugrave;a với s&oacute;ng biển. C&ograve;n g&igrave; tuyệt hơn l&agrave; tối lại l&agrave; ng&acirc;m m&igrave;nh trong l&agrave;n nước m&aacute;t lạnh v&agrave; tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh của Đ&agrave; Nẵng. To&agrave;n cảnh về đ&ecirc;m của th&agrave;nh phố thu trọng v&agrave;o tầm nh&igrave;n tr&ecirc;n tầng 25 của kh&aacute;ch sạn.<br />\r\nBắt kịp xu hướng sống xanh, kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach cung cấp cho c&aacute;c du kh&aacute;ch dịch vụ xe đạp để c&oacute; thể thỏa th&iacute;ch tham quan th&agrave;nh phố m&agrave; kh&ocirc;ng g&acirc;y &ocirc; nhiễm m&ocirc;i trường. Dịch vụ n&agrave;y được kh&aacute;ch sạn cung cấp cho c&aacute;c du kh&aacute;ch của m&igrave;nh ho&agrave;n to&agrave;n miễn ph&iacute;.<br />\r\nTiện &iacute;ch tuyệt vời, xứng tầm đẳng cấp Khi thu&ecirc; ph&ograve;ng tại kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach, c&aacute;c du kh&aacute;ch cũng được sử dụng c&aacute;c tiện &iacute;ch đi k&egrave;m của kh&aacute;ch sạn như trung t&acirc;m thể dục, quan bar v&agrave; ph&ograve;ng kh&aacute;ch chung. C&aacute;c tiện &iacute;ch n&agrave;y cũng lu&ocirc;n kh&ocirc;ng ngừng được cải tiến dưới sự g&oacute;p &yacute; cảu kh&aacute;ch h&agrave;ng m&agrave; ng&agrave;y một ho&agrave;n thiện hơn. C&aacute;c du kh&aacute;ch đến đ&acirc;y lu&ocirc;n được đảm bảo c&oacute; trải nghiệm tuyệt vời nhất.<br />\r\n<strong>Những điểm tham quan nổi tiếng gần kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach</strong><br />\r\nSau khi chọn cho m&igrave;nh một căn ph&ograve;ng như &yacute; tại kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach, c&ograve;n chần chờ g&igrave; nữa m&agrave; bạn kh&ocirc;ng bắt đầu chuyến tham quan quanh th&agrave;nh phố Đ&agrave; Nẵng xinh đẹp. H&atilde;y bắt đầu từ những địa điểm rất gần quanh đấy nh&eacute;.<br />\r\n<em>B&atilde;i biển Mỹ Kh&ecirc;</em><br />\r\nNằm trong top 10 những b&atilde;i biển đẹp nhất thế giới, Mỹ Kh&ecirc; nhiều năm nay đ&atilde; thu h&uacute;t bao nhi&ecirc;u du kh&aacute;ch bởi b&atilde;i c&aacute;t trắng mịn m&agrave;ng c&ugrave;ng l&agrave;n nước xanh trong vắt. Điểm đặc biệt hơn Mỹ Kh&ecirc; nằm ngay cạnh kh&aacute;ch sạn Sala Đ&agrave; Nẵng n&ecirc;n h&atilde;y bắt đầu h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; Đ&agrave; Nẵng tại b&atilde;i biển xinh đẹp n&agrave;y nh&eacute;. Bạn chỉ mất v&agrave;i ph&uacute;t đi bộ từ kh&aacute;ch sạn Sala Đ&agrave; Nẵng Beach đến b&atilde;i biển.<br />\r\n<em>Cầu Rồng</em><br />\r\nMặc d&ugrave; chỉ mới được x&acirc;y dựng gần đ&acirc;y nhưng cầu rồng nhanh ch&oacute;ng trở th&agrave;nh một địa điểm du lịch nổi tiếng b&ecirc;n cạnh c&acirc;y cầu quay S&ocirc;ng H&agrave;n. Đặc biệt tiết mục phun nước v&agrave; phun lửa tại đ&acirc;y l&agrave;m tăng th&ecirc;m vẻ đẹp đ&ecirc;m tại Đ&agrave; Nẵng.<br />\r\n<em>Cầu t&igrave;nh y&ecirc;u</em><br />\r\nNếu đ&atilde; đến cầu rồng th&igrave; kh&ocirc;ng ngại g&igrave; kh&ocirc;ng bước th&ecirc;m v&agrave;i bước ch&acirc;n,đến tham quan lu&ocirc;n c&acirc;y cầu t&igrave;nh y&ecirc;u d&agrave;i chừng 70m n&agrave;y. Với những &aacute;nh đ&egrave;n được sắp xếp th&agrave;nh h&igrave;nh tr&aacute;i tim đ&acirc;y sẽ l&agrave; địa điểm tuyệt vời để bạn c&oacute; thể hẹn ước với người bạn đời của m&igrave;nh.</p>\r\n'),
(2, 'Khách Sạn Stella Maris Beach Đà Nẵng', 'image/StellaMarisBeach.jpg', ' 3 Võ Văn Kiệt, Phước Mỹ, Sơn Trà, Đà Nẵng ', 4, 9, 0, ''),
(3, 'Khách Sạn Diamond Sea Đà Nẵng', 'image/Khách-sạn-Diamond-Sea-Đà-Nẵng2.jpg', ' 232 Võ Nguyên Giáp, Sơn Trà, Đà Nẵng ', 4, 9, 0, ''),
(4, 'Đà Nẵng Golden Bay ', 'image/khach-san-golden-bay-da-nang.png', ' 01 Lê Văn Duyệt, Nại Hiên Đông, Sơn Trà, Đà Nẵng ', 4, 10, 19, ''),
(5, 'Sheraton Grand Danang Resort', 'image/SheratonGrandDanangResort.jpg', ' 35 Trường Sa, phường Hòa Hải, Ngũ Hành Sơn, Đà Nẵng', 6, 10, 0, ''),
(6, 'Vinpearl Condotel Riverfront Đà Nẵng', 'image/VinpearlCondotelRiverfront.jpg', ' Ngô Quyền, An Hải Bắc, Sơn Trà, Đà Nẵng ', 4, 10, 3, '<p>Xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; lựa chọn ch&uacute;ng t&ocirc;i trong suốt thời gian qua!</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lưc đem đến dịch vụ tốt nhất cho bạn.</p>\r\n\r\n<h3><strong><a href=\"http://localhost/Lab_php/MyTour/View/detailhotel.php?id=6\" target=\"_blank\">Vinpearl Condotel Riverfront Đ&agrave; Nẵng</a></strong></h3>\r\n'),
(7, 'Khách Sạn Dana Marina', 'image/DanaMarina.jpg', ' 47-49 Đường Võ Văn Kiệt, Phường Phước Mỹ, Sơn Trà, Đà Nẵng', 4, 9, 0, ''),
(8, 'Khách Sạn New Orient Đà Nẵng', 'image/NewOrient.jpg', ' 20 Đống Đa , Thuận Phước, Hải Châu, Đà Nẵng ', 1, 9, 0, ''),
(9, 'Fusion Suites Đà Nẵng Beach ', 'image/fusion-suite-da-nang.jpg', ' Đường Hoàng Sa, thuộc khu An Cư 5, Mân Thái, Sơn Trà, Đà Nẵng', 4, 9, 0, ''),
(10, 'HAIAN Beach Hotel & Spa', 'image/HAIANBeachHotel&Spa.jpg', ' 278 Võ Nguyên Giáp, Mỹ An, Ngũ Hành Sơn, Đà Nẵng', 6, 9, 0, ''),
(11, 'Khách Sạn Căn Hộ Daisy Boutique', 'image/DaisyBoutique.jpg', ' 67 Chế Lan Viên, Bắc Mỹ An, Ngũ Hành Sơn, Đà Nẵng ', 6, 1, 16, ''),
(12, 'Khách Sạn Mường Thanh Luxury Đà Nẵng', 'image/khach-san-muong-thanh-luxury-da-nang.jpg', ' 270 đường Võ Nguyên Giáp, Phường Mỹ An, Ngũ Hành Sơn, Đà Nẵng ', 6, 10, 0, ''),
(13, 'Khách Sạn Dreamy Sky Boutique Đà Nẵng', 'image/DreamySkyBoutique.jpg', ' Cổng sân bay Quốc tế đường Nguyễn Văn Linh, Hải Châu, Đà Nẵng', 1, 8, 0, ''),
(14, 'Khách Sạn Tolia Đà Nẵng', 'image/khach-san-tolia-da-nang.jpg', ' Lô 22-23 Đỗ Bá, Ngũ Hành Sơn, Đà Nẵng ', 6, 8, 0, ''),
(15, 'Khách Sạn Bamboo Green', 'image/image_33.jpg', ' 177 Trần Phú, Hải Châu, Đà Nẵng', 1, 8, 0, ''),
(16, 'Mercure Danang French Village Bana Hills', 'image/MercureDanangFrenchVillageBanaHills.jpg', ' An Sơn, Hòa Ninh, Hòa Vang, Đà Nẵng ', 7, 9, 0, ''),
(17, 'Altara Suites By Ri-Yaz', 'image/khach-san-altara-suites-da-nang-800x450.png', ' 120 Võ Nguyên Giáp, Phước Mỹ, Sơn Trà, Đà Nẵng', 4, 10, 0, ''),
(18, 'La Maison De Anh', 'image/256264567.jpg', ' 01 An Thượng, Mỹ An, Ngũ Hành Sơn, Đà Nẵng', 6, 1, 0, ''),
(19, 'Monarque Hotel', 'image/1SALASuite.jpg', '238 Võ Nguyên Giáp, Phuoc My, Đà Nẵng 550000 Việt Nam', 4, 2, 0, '<p><strong>Du lịch an to&agrave;n giữa đại dịch&nbsp;COVID-19</strong></p>\r\n\r\n<p>H&atilde;y truy cập&nbsp;<a href=\"https://www.tripadvisor.com.vn/travel-safe\" target=\"_blank\">trung t&acirc;m Du lịch An to&agrave;n</a>&nbsp;của ch&uacute;ng t&ocirc;i v&agrave; xem ch&uacute;ng t&ocirc;i c&oacute; thể gi&uacute;p g&igrave; để gi&uacute;p bạn đưa ra quyết định s&aacute;ng suốt hơn trong đại dịch COVID-19.</p>\r\n\r\n<p>C&aacute;c biện ph&aacute;p được nơi lưu tr&uacute; thực hiện:</p>\r\n\r\n<ul>\r\n	<li>Tất cả khăn trải giường được khử tr&ugrave;ng bằng c&aacute;ch giặt ở nhiệt độ cao</li>\r\n	<li>C&oacute; sẵn nước s&aacute;t khuẩn tay cho kh&aacute;ch &amp; nh&acirc;n vi&ecirc;n</li>\r\n	<li>Khu vực đ&ocirc;ng người qua lại được khử tr&ugrave;ng thường xuy&ecirc;n</li>\r\n	<li>Nh&acirc;n vi&ecirc;n phải rửa tay thường xuy&ecirc;n</li>\r\n	<li>Kiểm tra nhiệt độ thường xuy&ecirc;n cho nh&acirc;n vi&ecirc;n</li>\r\n</ul>\r\n'),
(21, 'Khách sạn mới', 'image/khach-san.jpeg', 'Hòa Hải, Đà Nẵng', 6, 2, 0, '<p>Kh&aacute;ch sạn Vip</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `imageshotels`
--

CREATE TABLE `imageshotels` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `idhotel` int(11) DEFAULT NULL,
  `uploaded` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imageshotels`
--

INSERT INTO `imageshotels` (`id`, `image`, `idhotel`, `uploaded`) VALUES
(1, 'image/hotel/1SALASuite.jpg', 1, ''),
(2, 'image/hotel/4-1-cr-800x450.png', 1, ''),
(3, 'image/hotel/prd-39946.jpg', 1, ''),
(4, 'image/hotel/Sala hotel-24h-com-vn-2.jpg', 1, ''),
(5, 'image/hotel/4a0fef672dc3048bc67c2dd5f058e287.png', 1, ''),
(6, 'image/hotel/unnamed.jpg', 1, ''),
(7, 'image/hotel/condotel1.jpg', 6, ''),
(8, 'image/hotel/condontel2.jpg', 6, ''),
(9, 'image/hotel/condotel3.jpg', 6, ''),
(10, 'image/hotel/condotel4.jpg', 6, ''),
(11, 'image/hotel/condotel5.jpg', 6, ''),
(12, 'image/hotel/condotel6.jpg', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `imagesposts`
--

CREATE TABLE `imagesposts` (
  `id` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagesrooms`
--

CREATE TABLE `imagesrooms` (
  `id` bigint(20) NOT NULL,
  `idroom` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `uploaded` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imagesrooms`
--

INSERT INTO `imagesrooms` (`id`, `idroom`, `images`, `uploaded`) VALUES
(1, 1, 'image/Superiorking_tp.jpg', ''),
(2, 1, 'image/8_edit-1-900x600.png', ''),
(3, 1, 'image/sala-danang-beach-hotel.jpg', ''),
(4, 1, 'image/unnamed.jpg', ''),
(5, 1, 'image/e3d2f3a13bd952caa9be367ccfba6d2d.jpg', ''),
(6, 7, 'image/Studio Suite1.jpg', ''),
(7, 7, 'image/Studio Suite2.jpg', ''),
(8, 7, 'image/Studio Suite3.jpg', ''),
(9, 7, 'image/Studio Suite4.jpg', ''),
(10, 7, 'image/Studio Suite5.jpg', ''),
(11, 7, 'image/Studio Suite6.jpg', ''),
(12, 8, 'image/Executive Suite1.jpg', ''),
(13, 8, 'image/Executive Suite2.jepg', '');

-- --------------------------------------------------------

--
-- Table structure for table `likecomments`
--

CREATE TABLE `likecomments` (
  `id` bigint(20) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `idcmt` int(11) DEFAULT NULL,
  `isShow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likecomments`
--

INSERT INTO `likecomments` (`id`, `user`, `idcmt`, `isShow`) VALUES
(1, 11, 3, 0),
(2, 2, 3, 1),
(3, 2, 5, 1),
(4, 2, 6, 1),
(5, 2, 24, 0),
(6, 3, 24, 1),
(7, 3, 28, 1),
(8, 1, 28, 1),
(9, 1, 30, 1),
(10, 1, 33, 1),
(11, 1, 24, 1),
(12, 3, 33, 1),
(13, 20, 33, 1),
(14, 20, 24, 1),
(15, 20, 35, 1),
(16, 20, 5, 1),
(17, 20, 3, 1),
(18, 19, 33, 1),
(19, 11, 33, 1),
(20, 4, 33, 1),
(21, 4, 42, 0),
(22, 4, 0, 1),
(23, 4, 0, 1),
(24, 4, 0, 1),
(25, 4, 0, 1),
(26, 4, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 4, 59, 1),
(30, 4, 40, 1),
(31, 4, 35, 1),
(32, 4, 39, 1),
(33, 4, 38, 1),
(34, 4, 24, 1),
(35, 4, 27, 1),
(36, 4, 26, 1),
(37, 4, 3, 1),
(38, 4, 5, 1),
(39, 2, 59, 1),
(40, 2, 42, 1),
(41, 2, 35, 1),
(42, 2, 33, 1),
(43, 2, 48, 1),
(44, 2, 55, 1),
(45, 7, 33, 1),
(46, 2, 62, 1),
(47, 2, 40, 1),
(48, 0, 0, 1),
(49, 0, 0, 1),
(50, 0, 0, 1),
(51, 11, 23, 1),
(52, 11, 5, 1),
(53, 11, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `datepost` datetime DEFAULT NULL,
  `checkpost` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `isShow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `user`, `datepost`, `checkpost`, `slug`, `view`, `isShow`) VALUES
(1, 'Cẩm nang du lịch Đà Nẵng từ A - Z', '<p><strong><em>Sau những ng&agrave;y chu du tr&ecirc;n những cung đường T&acirc;y Bắc đẹp ng&uacute;t ng&agrave;n, rồi lạc bước xuống miền T&acirc;y Nam Bộ để ru l&ograve;ng trong c&acirc;u h&ograve; &agrave; ơi của người thiếu nữ miệt vườn, ta bỗng nhớ n&ocirc;n nao một Đ&agrave; Nẵng đẹp xinh m&agrave; bấy l&acirc;u nay ta chưa gh&eacute;. Dường như ở Đ&agrave; Nẵng ta t&igrave;m thấy một vẻ đẹp rất ri&ecirc;ng, phảng phất ch&uacute;t phong vị của miền Trung nắng gi&oacute; những hơn bao giờ hết, Đ&agrave; Nẵng ng&agrave;y nay gợi l&ecirc;n trong t&acirc;m tr&iacute; người lữ kh&aacute;ch về một th&agrave;nh phố văn minh, hiện đại b&ecirc;n d&ograve;ng s&ocirc;ng H&agrave;n &ecirc;m đềm chảy ng&agrave;y đ&ecirc;m</em></strong>.</p>\r\n\r\n<p>Dặn l&ograve;ng phải gh&eacute; v&agrave;o một ng&agrave;y kh&ocirc;ng xa tới, ta v&agrave; bạn rỉ tai nhau về những kinh nghiệm chẳng thể n&agrave;o qu&ecirc;n, để chuyến h&agrave;nh tr&igrave;nh trọn vẹn v&agrave; ta được thưởng ngoạn đủ đầy non nước m&acirc;y trời c&ugrave;ng những đặc trưng ri&ecirc;ng của Đ&agrave; Nẵng dấu y&ecirc;u.</p>\r\n\r\n<h2>ĐƯỜNG VỀ Đ&Agrave; NẴNG &ndash; NGHE L&Ograve;NG H&Aacute;O HỨC TRONG TỪNG BƯỚC CH&Acirc;N QUEN</h2>\r\n\r\n<p>Đ&agrave; Nẵng được xem l&agrave; tr&aacute;i tim của to&agrave;n miền Trung, v&agrave; l&agrave; nơi c&oacute; tốc độ ph&aacute;t triển mạnh mẽ trong những năm gần đ&acirc;y với hệ thống giao th&ocirc;ng gần như kết nối tới mọi miền tổ quốc. Vậy n&ecirc;n, đường về Đ&agrave; Nẵng chẳng hề xa vời như ch&uacute;ng ta vẫn tưởng, d&ugrave; bạn ở bất cứ nơi đ&acirc;u, bạn cũng c&oacute; thể t&igrave;m kiếm những phương tiện di chuyển đến địa danh n&agrave;y một c&aacute;ch dễ d&agrave;ng nhất.</p>\r\n\r\n<p>Th&ocirc;ng thường c&oacute; ba loại phương tiện ch&iacute;nh để di chuyển tới Đ&agrave; Nẵng:</p>\r\n\r\n<p><strong>M&aacute;y bay:</strong></p>\r\n\r\n<p>Cho d&ugrave; bạn xuất ph&aacute;t từ H&agrave; Nội hay Tp. Hồ Ch&iacute; Minh th&igrave; m&aacute;y bay vẫn được xem l&agrave; một phương tiện kh&aacute; tuyệt vời để tiết kiệm thời gian. Bạn c&oacute; thể chọn c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng như: Vietnam Airlines, Jetstar v&agrave; Vietjet Air, gi&aacute; v&eacute; từng thời điểm dao động trong khoảng 600.000đ đến 2.200.000đ t&ugrave;y h&atilde;ng v&agrave; chỉ mất khoảng 1h30p l&agrave; bạn đ&atilde; c&oacute; mặt tại th&agrave;nh phố Đ&agrave; Nẵng đẹp xinh.</p>\r\n\r\n<p>Kh&ocirc;ng những vậy, c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng n&agrave;y vẫn thường c&oacute; rất nhiều chương tr&igrave;nh khuyến m&atilde;i, bạn c&oacute; thể l&ecirc;n lịch v&agrave; săn c&aacute;c loại v&eacute; gi&aacute; rẻ để tiết kiệm chi ph&iacute; tốt nhất.</p>\r\n\r\n<p><strong>Xe kh&aacute;ch:</strong></p>\r\n\r\n<p>Nếu bạn xuất ph&aacute;t từ Tp. Hồ Ch&iacute; Minh, bạn c&oacute; thể mua v&eacute; tại Bến xe miền Đ&ocirc;ng. Nếu bạn đang ở H&agrave; Nội th&igrave; Bến xe Gi&aacute;p B&aacute;t hay Bến xe Nước Ngầm cũng c&oacute; c&aacute;c loại v&eacute; đi Đ&agrave; Nẵng cho bạn lựa chọn.</p>\r\n\r\n<p>C&oacute; rất nhiều h&atilde;ng xe giường nằm của Mai Linh, Phương Trang, Ho&agrave;ng Long,&hellip;. Với mức gi&aacute; dao động từ 400.000đ &ndash; 600.000đ/ người. Tuy nhi&ecirc;n, bạn sẽ mất một thời gian kh&aacute; d&agrave;i để di chuyển, thường l&agrave; khoảng 16 &ndash; 20 tiếng bạn mới c&oacute; mặt tại Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong>T&agrave;u hỏa:</strong></p>\r\n\r\n<p>Một lựa chọn kh&aacute; th&uacute; vị cho chuyến du lịch Đ&agrave; Nẵng, bạn sẽ c&oacute; những trải nghiệm chưa từng c&oacute; khi được nh&igrave;n ngắm những cung đường mới lạ trong cuộc h&agrave;nh tr&igrave;nh. Th&ocirc;ng thường chi ph&iacute; cho mỗi chuyến t&agrave;u từ H&agrave; Nội/ Tp. Hồ Ch&iacute; Minh &ndash; Đ&agrave; Nẵng nằm trong khoảng 300.000đ &ndash; 1.200.000đ t&ugrave;y loại ghế. V&agrave; bạn sẽ mất 14 &ndash; 20 tiếng nếu di chuyển bằng phương tiện n&agrave;y.</p>\r\n\r\n<h2>N&Ecirc;N ĐẾN Đ&Agrave; NẴNG V&Agrave;O THỜI ĐIỂM N&Agrave;O?</h2>\r\n\r\n<p>Nằm trong khu vực c&oacute; kh&iacute; hậu nhiệt đới gi&oacute; m&ugrave;a điển h&igrave;nh, do đ&oacute; Đ&agrave; Nẵng c&oacute; hai m&ugrave;a r&otilde; rệt trong năm. Từ th&aacute;ng 1 cho tới th&aacute;ng 7 được gọi l&agrave; m&ugrave;a kh&ocirc; với kh&iacute; hậu trong l&agrave;nh, trời trong, nắng đẹp. Trong khi đ&oacute; từ th&aacute;ng 8 tới th&aacute;ng 12 c&oacute; một m&ugrave;a mưa k&eacute;o d&agrave;i, kh&ocirc;ng kh&iacute; ẩm thấp, đ&ocirc;i l&uacute;c k&egrave;m theo những đợt d&ocirc;ng b&atilde;o.</p>\r\n\r\n<p>Vậy n&ecirc;n, th&ocirc;ng thường người ta chọn tới Đ&agrave; Nẵng v&agrave;o những ng&agrave;y từ th&aacute;ng 2 cho tới th&aacute;ng 8. Đ&oacute; được xem l&agrave; thời điểm l&yacute; tưởng nhất để thưởng ngoạn trọn vẹn non nước m&acirc;y trời của th&agrave;nh phố biển miền Trung.</p>\r\n\r\n<h2>DỪNG CH&Acirc;N NƠI Đ&Acirc;U ĐỂ TRỌN VẸN CHỐN H&Agrave;NH TR&Igrave;NH?</h2>\r\n\r\n<p>Được đ&aacute;nh gi&aacute; l&agrave; một th&agrave;nh phố biển năng động v&agrave; hiện đại, trong những năm gần đay du lịch Đ&agrave; Nẵng ph&aacute;t triển kh&ocirc;ng ngừng, c&aacute;c kh&aacute;ch sạn, resort đua nhau mọc l&ecirc;n để đ&aacute;p ứng nhu cầu của du kh&aacute;ch. Vậy n&ecirc;n, tới Đ&agrave; Nẵng, bạn sẽ chẳng phải lo sợ về nơi ăn chốn ở.</p>\r\n\r\n<p>Bạn c&oacute; thể chọn những nh&agrave; nghỉ, kh&aacute;ch sạn đủ tiện nghi ở dọc bờ biển hay ngay b&ecirc;n bờ s&ocirc;ng H&agrave;n lộng gi&oacute;. C&ograve;n g&igrave; tuyệt vời hơn, khi s&aacute;ng sớm tinh mơ được ngắm b&igrave;nh minh tr&ecirc;n biển, rồi khi chiều xuống thấy b&oacute;ng tịch dương l&agrave;m ma mị cả một khoảng kh&ocirc;ng.</p>\r\n\r\n<p>Ở trung t&acirc;m th&agrave;nh phố cũng c&oacute; kh&ocirc;ng &iacute;t nơi lưu tr&uacute; ph&ugrave; hợp với y&ecirc;u cầu v&agrave; ng&acirc;n s&aacute;ch của mỗi người. Bạn c&oacute; thể t&igrave;m tr&ecirc;n những con đường Trần Ph&uacute;, Phan Chu Trinh, Nguyễn Ch&iacute; Thanh, Y&ecirc;n B&aacute;i, Đống Đa, H&ugrave;ng Vương, L&ecirc; Duẩn..., bất cứ đ&acirc;u cũng c&oacute; thể khiến bạn cảm thấy ưng &yacute; khi lựa chọn.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c resort ven biển cũng rất tuyệt vời cho những ai c&oacute; điều kiện. Những InterContinental, Fusion Maia, Furama, Hyatt, Crown Plaza, Life Style, Ocean Villas, &hellip; với kiểu thiết kế đặc trưng v&agrave; c&aacute;c tiện &iacute;ch sang trọng, lu&ocirc;n mang tới cho bạn những kỳ nghỉ như mơ.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, nếu bạn du lịch Đ&agrave; Nẵng v&agrave;o những khoảng thời gian cao điểm, bạn n&ecirc;n gọi điện đặt trước ph&ograve;ng để c&oacute; thể an t&acirc;m về nơi lưu tr&uacute; ngay khi đặt ch&acirc;n tới.</p>\r\n\r\n<h2>THƯỞNG NGOẠN CẢNH SẮC THI&Ecirc;N NHI&Ecirc;N Ở Đ&Agrave; NẴNG ĐẸP XINH</h2>\r\n\r\n<p>Dường như tạo h&oacute;a qu&aacute; ưu &aacute;i cho mảnh đất Đ&agrave; Nẵng đẹp xinh, bất cứ nơi đ&acirc;u trong l&ograve;ng địa danh n&agrave;y, người ta cũng t&igrave;m thấy những cảnh sắc tuyệt vời nhất.</p>\r\n\r\n<p><strong>Những b&atilde;i biển thơ mộng ở bờ Đ&ocirc;ng</strong></p>\r\n\r\n<p>Đ&oacute; l&agrave; những b&atilde;i biển d&agrave;i v&agrave; đẹp mơ m&agrave;ng, nơi người ta được thỏa th&ecirc; đ&ugrave;a nghịch với l&agrave;n nước xanh tận đ&aacute;y. Đ&agrave; Nẵng c&oacute; b&atilde;i biển Mỹ Kh&ecirc;, nơi được tạp ch&iacute; Forbes b&igrave;nh chọn l&agrave; một trong sau b&atilde;i biển quyến rũ nhất h&agrave;nh tinh.</p>\r\n\r\n<p><strong>Cầu s&ocirc;ng H&agrave;n &ecirc;m đềm nước chảy</strong></p>\r\n\r\n<p>Được x&acirc;y dựng tr&ecirc;n trục ch&iacute;nh của đường Bạch Đằng, nối liền b&aacute;n đảo Sơn Tr&agrave; v&agrave; quận Hải Ch&acirc;u, cầu S&ocirc;ng H&agrave;n l&agrave; c&acirc;y cầu quay mang niềm tự h&agrave;o của người d&acirc;n Đ&agrave; Nẵng. Khi m&agrave;n đ&ecirc;m bu&ocirc;ng xuống, &aacute;nh s&aacute;ng lung linh tỏa ra từ cầu khiến du kh&aacute;ch phải trầm trồ t&aacute;n thưởng v&agrave; đặc biệt hơn v&agrave;o mỗi đ&ecirc;m, cầu lại quay 90 độ quanh trục giữa cầu, mang lại một ấn tượng rất ri&ecirc;ng, m&agrave; ai đi rồi, nhắc về Đ&agrave; Nẵng cũng nhớ tới cầu S&ocirc;ng H&agrave;n đầy m&ecirc; hoặc.</p>\r\n\r\n<p><strong>B&aacute;n đảo Sơn Tr&agrave;/ N&uacute;i Khỉ</strong></p>\r\n\r\n<p>Người ta gọi Sơn Tr&agrave; l&agrave; vi&ecirc;n ngọc qu&yacute; của Đ&agrave; Nẵng với những bờ biển k&eacute;o d&agrave;i, uốn lượn m&agrave; nh&igrave;n từ tr&ecirc;n cao cảm tưởng như một dải lụa mềm của n&agrave;ng ti&ecirc;n nữ bỏ qu&ecirc;n.</p>\r\n\r\n<p><strong>Ngũ H&agrave;nh Sơn</strong></p>\r\n\r\n<p>Ngũ H&agrave;nh Sơn c&aacute;ch trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng khoảng 7km về ph&iacute;a Đ&ocirc;ng Nam, nơi m&agrave; trong k&yacute; ức của nhiều người vẫn tưởng nhớ về một v&ugrave;ng &ldquo;địa linh&rdquo; xứ Quảng.</p>\r\n\r\n<p><strong>L&ecirc;n đỉnh B&agrave; N&agrave;</strong></p>\r\n\r\n<p>C&aacute;ch Đ&agrave; Nẵng 25km về ph&iacute;a T&acirc;y Nam, đỉnh B&agrave; N&agrave; nằm ở độ cao 1487m so với mực nước biển. Bất cứ thời điểm n&agrave;o, B&agrave; N&agrave; cũng m&aacute;t l&agrave;nh như thế khiến bao người t&igrave;m tới để trốn n&oacute;ng những ng&agrave;y h&egrave;.</p>\r\n\r\n<h2>ẨM THỰC Đ&Agrave; NẴNG &ndash; ĐỦ ĐẦY PHONG VỤ CỦA NẮNG GI&Oacute; MIỀN TRUNG</h2>\r\n\r\n<p>Mỗi một v&ugrave;ng qu&ecirc; đều mang một nền ẩm thực đặc trưng, v&agrave; Đ&agrave; Nẵng cũng thế, c&oacute; chăng ẩm thực Đ&agrave; Nẵng lại được sản sinh từ ch&iacute;nh c&aacute;i nắng gi&oacute; bao m&ugrave;a của miền Trung y&ecirc;u dấu. Đến Đ&agrave; Nẵng một lần, thưởng thức những m&oacute;n ngon tr&ecirc;n những cung đường m&agrave; ta đ&atilde; đi quả, ắt hẳn sẽ khiến bao người nhớ m&atilde;i, chỉ mong rằng, được một lần nữa thưởng thức trọn vẹn hơn.</p>\r\n\r\n<p>Ẩm thực Đ&agrave; Nẵng phong ph&uacute; lắm, nhưng tựu chung lại n&oacute; vẫn mang trong m&igrave;nh c&aacute;i hồn của biển cả, của đồng qu&ecirc; v&agrave; hơn hết l&agrave; t&igrave;nh người dạt d&agrave;o qua bao năm th&aacute;ng. Những m&oacute;n ăn được tạo ra từ b&agrave;n tay nghệ thuật của người đầu bếp nhưng ẩn s&acirc;u trong đ&oacute; ta cảm nhận được t&igrave;nh qu&ecirc; hương, t&igrave;nh đất nước v&agrave; l&ograve;ng mến kh&aacute;ch của những con người mảnh đất miền Trung.</p>\r\n\r\n<h2>DU LỊCH Đ&Agrave; NẴNG, N&Ecirc;N MUA G&Igrave; L&Agrave;M QU&Agrave;?</h2>\r\n\r\n<p>Kết th&uacute;c cuộc h&agrave;nh tr&igrave;nh thăm th&uacute;, c&oacute; đ&ocirc;i khi ta c&ograve;n tiếc nuối ch&uacute;t đ&oacute; ở mảnh đất Đ&agrave; Th&agrave;nh, muốn mang về v&agrave;i kỷ niệm để đ&aacute;nh dấu những chặng đường đi qua hay đơn giản muốn kiếm v&agrave;i m&oacute;n qu&agrave; tặng bạn b&egrave;, người th&acirc;n sau những ng&agrave;y du ngoạn. Vậy Đ&agrave; Nẵng c&oacute; g&igrave; để mang về l&agrave;m qu&agrave; nhỉ?</p>\r\n\r\n<p>K&igrave;a đ&agrave; mỹ nghệ Non Nước &ndash; Ngũ H&agrave;nh Sơn, một m&oacute;n qu&agrave; mang đặc trưng ri&ecirc;ng của đất Đ&agrave; th&agrave;nh. Bạn c&oacute; thể chọn cho m&igrave;nh những m&oacute;n đồ trang sức nhỏ xinh như v&ograve;ng, nhẫn, chuỗi hạt, được chạm khắc tinh tế với đầy đủ sắc m&agrave;u. Nếu ưa th&iacute;ch đồ trang tr&iacute; văn ph&ograve;ng, nh&agrave; ở th&igrave; những con c&oacute;c chặn giấy bằng đ&aacute; b&iacute;ch v&acirc;n, những cặp sư tử h&iacute; cầu, cặp c&aacute; thần ti&ecirc;n vừa mang &yacute; nghĩa phong thủy tốt đẹp vừa khiến bạn thỏa mắt nh&igrave;n.</p>\r\n\r\n<p>Tới Đ&agrave; Nẵng chắc hẳn bạn kh&ocirc;ng thể kh&ocirc;ng mua về ch&uacute;t Tr&eacute; B&agrave; Đệ, b&aacute;nh kh&ocirc; m&egrave;, c&aacute;c loại hải sản kh&ocirc;, &iacute;t chả b&ograve;, mực rim, mắm dưa, mắm n&ecirc;m, mắm ruốc, nước mắm Nam &Ocirc; hay rong biển Mỹ Kh&ecirc;. Đ&oacute; đều l&agrave; những đặc sản mang đậm phong vị Đ&agrave; Nẵng n&oacute;i ri&ecirc;ng v&agrave; miền Trung n&oacute;i chung, những m&oacute;n qu&agrave; tuy giản dị những chắc hẳn sẽ khiến người nhận phải trầm trồ.</p>\r\n\r\n<p>Những thức qu&agrave; thơm lừng mũi, m&agrave; ai tới Đ&agrave; Nẵng cũng muốn x&aacute;ch về thật nhiều, giữ lại một &iacute;t để thưởng thức về sau hay chia sẻ c&ugrave;ng bạn b&egrave; những m&oacute;n ngon tr&ecirc;n mọi miền tổ quốc. Cứ thế Đ&agrave; Nẵng nhẹ nh&agrave;ng đi v&agrave;o l&ograve;ng người bởi những đặc sản mộc mạc m&agrave; rất ri&ecirc;ng, khiến mỗi khi t&igrave;m tới, người ta lại dặn l&ograve;ng, phải giữ lại ri&ecirc;ng m&igrave;nh những phong vị đặc trưng ấy.</p>\r\n\r\n<h2>NHỮNG LƯU &Yacute; KHI DU LỊCH Đ&Agrave; NẴNG</h2>\r\n\r\n<p>Những lưu &yacute; nhỏ nhưng lại g&oacute;p phần để chuyến h&agrave;nh tr&igrave;nh th&ecirc;m trọn vẹn. Vậy n&ecirc;n, nếu bạn c&oacute; kế hoạch đi Đ&agrave; Nẵng, đừng bỏ qua những điều sau, hy vọng những điều nhỏ nhoi ấy lại gi&uacute;p bạn c&oacute; được những gi&acirc;y ph&uacute;t trải nghiệm thật tuyệt vời:</p>\r\n\r\n<p>- Tốt nhất, bạn n&ecirc;n mang theo những bộ quần &aacute;o nhẹ nh&agrave;ng, dễ giặt v&agrave; dễ gấp nhỏ. Đặc biệt, n&oacute;n v&agrave; những chiếc d&ugrave; l&agrave; kh&ocirc;ng thể thiếu gi&uacute;p bạn c&oacute; thể tr&aacute;nh những đợt nắng n&oacute;ng giữa trưa hay những đợt mưa thấy thường kh&ocirc;ng b&aacute;o trước.</p>\r\n\r\n<p>- H&atilde;y chuẩn bị quần &aacute;o tắm, kem chống nắng, mũ rộng v&agrave;nh nếu kh&ocirc;ng bạn sẽ bỏ lỡ những điều rất tuyệt vời từ b&atilde;i biển.</p>\r\n\r\n<p>- N&ecirc;n mang những đ&ocirc;i gi&agrave;y đế thấp, những đ&ocirc;i d&eacute;p đế mềm bởi bạn phải di chuyển kha nhiều trong th&agrave;nh phố cũng như khi leo n&uacute;i tham quan đấy.</p>\r\n\r\n<p>- V&agrave; tất nhi&ecirc;n, một &iacute;t thuốc cảm, thuốc đau bụng, thuốc chống say t&agrave;u xe, m&aacute;y bay, băng c&aacute; nh&acirc;n, oxy gi&agrave;</p>\r\n\r\n<p><em><strong>T&ocirc;i ch&uacute;c bạn c&oacute; một chuyến đi thật vui vẻ v&agrave; thoải m&aacute;i khi đến Đ&agrave; Nẵng. Đừng qu&ecirc;n lưu lại một ch&uacute;t kỷ niệm trong k&yacute; ức cuộc đời rằng m&igrave;nh đ&atilde; từng đặt ch&acirc;n đến mảnh đất ch&acirc;n chất hồn người miền Trung nh&eacute;!</strong></em></p>\r\n', 'image/post/du-lich-da-nang-thien-duong-mien-trung.jpg', 2, '2021-01-14 10:12:53', 1, '', 105, 0),
(2, 'Ở đâu khi du lịch Đà Nẵng?', '<p><strong><em>Đ&agrave; Nẵng &ndash; th&agrave;nh phố biển xinh đẹp giữa dải đất miền Trung đầy nắng v&agrave; gi&oacute; &ndash; kh&ocirc;ng chỉ sở hữu cho m&igrave;nh những b&atilde;i biển trải d&agrave;i quyến rũ, những cảnh sắc thi&ecirc;n nhi&ecirc;n l&agrave;m ng&acirc;y ngất l&ograve;ng người, th&agrave;nh phố n&agrave;y c&ograve;n sở hữu cho m&igrave;nh v&ocirc; số những c&ocirc;ng tr&igrave;nh kiến tr&uacute;c độc đ&aacute;o v&agrave; s&aacute;ng tạo c&ugrave;ng sự văn m&igrave;nh, th&acirc;n thiện đ&aacute;ng ngưỡng mộ. Đ&oacute; l&agrave; l&yacute; do m&agrave; bạn đ&atilde; chọn Đ&agrave; Nẵng l&agrave;m điểm đến tiếp theo cho m&igrave;nh. Bạn đ&atilde; chuẩn bị cho m&igrave;nh một lịch tr&igrave;nh hấp dẫn v&agrave; đ&atilde; sẵn s&agrave;ng đến với th&agrave;nh phố biển tuyệt vời n&agrave;y, nhưng bạn vẫn chưa thể lựa chọn cho m&igrave;nh một chỗ ở th&iacute;ch hợp khi du lịch đến đ&acirc;y. Nếu bạn đang c&oacute; trong đầu m&igrave;nh c&acirc;u hỏi &ldquo;Ở đ&acirc;u khi du lịch Đ&agrave; Nẵng&rdquo; th&igrave; b&agrave;i viết n&agrave;y ch&iacute;nh l&agrave; d&agrave;nh cho bạn đấy! N&agrave;o bạn h&atilde;y c&ugrave;ng Mytour trả lời c&acirc;u hỏi c&oacute; vẻ b&igrave;nh thường như lại kh&ocirc;ng hề đơn giản n&agrave;y nh&eacute;!</em></strong></p>\r\n\r\n<h2>I. BẠN LỰA CHỌN CHỖ Ở KHI DU LỊCH Đ&Agrave; NẴNG THEO TI&Ecirc;U CH&Iacute; N&Agrave;O?</h2>\r\n\r\n<p>Để c&oacute; thể lựa chọn được một chỗ ở th&iacute;ch hợp khi du lịch Đ&agrave; Nẵng du kh&aacute;ch cần x&aacute;c định được nhu cầu của m&igrave;nh &ndash; bạn chỉ cần một chỗ ở để nghỉ ch&acirc;n khi du lịch Đ&agrave; Nẵng hay l&agrave; một địa điểm nghỉ dưỡng l&yacute; tưởng d&agrave;nh cho gia đ&igrave;nh v&agrave; bạn b&egrave;, vị tr&iacute; m&agrave; bạn muốn lưu tr&uacute; &ndash; khu vực trung t&acirc;m th&agrave;nh phố hay khu vực ven biển, v&agrave; số tiền m&agrave; bạn muốn d&agrave;nh ra cho việc lưu tr&uacute; tại Đ&agrave; Nẵng. H&atilde;y c&ugrave;ng Mytour giải quyết từng vấn đề một ngay b&acirc;y giờ bạn nh&eacute;!</p>\r\n\r\n<p>Trước hết du kh&aacute;ch cần phải x&aacute;c định được nhu cầu lưu tr&uacute; của m&igrave;nh khi du lịch Đ&agrave; Nẵng l&agrave; g&igrave;? Nếu bạn l&agrave; một bạn trẻ y&ecirc;u th&iacute;ch sự dịch chuyển, kh&aacute;m ph&aacute; v&agrave; chỉ muốn c&oacute; được một điểm dừng ch&acirc;n nghỉ ngơi khi du lịch đến Đ&agrave; Nẵng th&igrave; c&aacute;c nh&agrave; nghỉ b&igrave;nh d&acirc;n, c&aacute;c kh&aacute;ch sạn ph&acirc;n kh&uacute;c phổ th&ocirc;ng v&agrave; c&aacute;c homestay gi&aacute; rẻ sẽ l&agrave; những lựa chọn l&yacute; tưởng d&agrave;nh cho bạn. C&ograve;n nếu bạn muốn c&oacute; một kỳ nghỉ thật thoải m&aacute;i v&agrave; thư gi&atilde;n c&ugrave;ng gia đ&igrave;nh v&agrave; người th&acirc;n th&igrave; du kh&aacute;ch h&atilde;y chọn ngay cho m&igrave;nh những resort ven biển sang trọng hoặc những homestay ở ph&acirc;n kh&uacute;c cao cấp.</p>\r\n\r\n<p>Sau khi x&aacute;c định được nhu cầu lưu tr&uacute; của bản th&acirc;n, du kh&aacute;ch cần phải tiếp tục x&aacute;c định khu vực m&agrave; m&igrave;nh muốn lưu tr&uacute; lại khi du lịch Đ&agrave; Nẵng. C&oacute; hai khu vực thường được c&aacute;c du kh&aacute;ch lựa chọn lưu tr&uacute; khi du lịch đến Đ&agrave; Nẵng l&agrave; khu vực trung t&acirc;m th&agrave;nh phố - v&ugrave;ng phụ cận v&agrave; khu vực ven biển dọc theo tuyến đường V&otilde; Nguy&ecirc;n Gi&aacute;p thuộc hai quận Sơn Tr&agrave; v&agrave; Ngũ H&agrave;nh Sơn.</p>\r\n\r\n<p>Nếu bạn l&agrave; một người lần đầu đến với th&agrave;nh phố biển Đ&agrave; Nẵng v&agrave; muốn kh&aacute;m ph&aacute; hết những điều th&uacute; vị của th&agrave;nh phố n&agrave;y, Mytour khuy&ecirc;n bạn n&ecirc;n lựa chọn cho m&igrave;nh những địa điểm lưu tr&uacute; tại khu vực trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng v&agrave; v&ugrave;ng phụ cận, khu vực n&agrave;y bao gồm phần lớn quận Hải Ch&acirc;u v&agrave; một phần quận Thanh Kh&ecirc; (bao gồm khu vực Ga Đ&agrave; Nẵng, trục đường Nguyễn Văn Linh &ndash; H&agrave;m Nghi, một phần đường Điện Bi&ecirc;n Phủ từ khu vực Ng&atilde; ba C&acirc;y Lan đến Ng&atilde; tư Điện Bi&ecirc;n Phủ - L&ecirc; Độ). C&ograve;n nếu bạn chỉ muốn thưởng thức vẻ quyến rũ của biển Đ&agrave; Nẵng hoặc lịch tr&igrave;nh của bạn l&agrave; kh&aacute;m ph&aacute; Hội An &ndash; B&aacute;n đảo Sơn Tr&agrave; th&igrave; trong trường hợp n&agrave;y du kh&aacute;ch n&ecirc;n lựa chọn cho m&igrave;nh những điểm lưu tr&uacute; tại khu vực ven biển.</p>\r\n\r\n<p>Về gi&aacute; cả khi lựa chọn điểm lưu tr&uacute;, c&aacute;c homestay v&agrave; c&aacute;c nh&agrave; nghỉ sẽ c&oacute; gi&aacute; rẻ nhất, trong khi đ&oacute; c&aacute;c resort cao cấp ven biển, c&aacute;c kh&aacute;ch sạn chuẩn 4-5 sao khu vực trung t&acirc;m th&agrave;nh phố v&agrave; ven biển sẽ l&agrave; những điểm lưu tr&uacute; hướng đến c&aacute;c đối tượng cao cấp. Trong trường hợp du kh&aacute;ch muốn lựa chọn những điểm lưu tr&uacute; c&oacute; gi&aacute; ở ph&acirc;n kh&uacute;c trung cấp, du kh&aacute;ch c&oacute; thể lựa chọn cho m&igrave;nh c&aacute;c kh&aacute;ch sạn từ 1-3 sao, c&aacute;c kh&aacute;ch sạn n&agrave;y kh&ocirc;ng tập trung m&agrave; rải r&aacute;c tr&ecirc;n to&agrave;n th&agrave;nh phố. Một số khu vực ở Đ&agrave; Nẵng m&agrave; du kh&aacute;ch c&oacute; thể lựa chọn cho m&igrave;nh c&aacute;c kh&aacute;ch sạn ở ph&acirc;n kh&uacute;c trung cấp như l&agrave;: khu vực đường 3/2, khu vực thuộc hai trục đường Nguyễn Ch&iacute; Thanh v&agrave; đường L&ecirc; Lợi &ndash; Phan Ch&acirc;u Trinh.</p>\r\n\r\n<h2>II. LỰA CHỌN CH&Ocirc; Ở TR&Ecirc;N MỘT SỐ PH&Acirc;N KH&Uacute;C</h2>\r\n\r\n<h2>1. MỘT SỐ HOMESTAY GI&Aacute; RẺ TẠI Đ&Agrave; NẴNG</h2>\r\n\r\n<p>- Homestay Heo Đất: 32 Đ&agrave;o Cam Mộc, Quận Hải Ch&acirc;u &ndash; Điện thoại: 0964 467 901 &ndash; Facebook: Homestay Heo Đất 2016;</p>\r\n\r\n<p>- T &ndash; homestay: 207 Dương Đ&igrave;nh Nghệ, Sơn Tr&agrave; &ndash; Điện thoại: 0511. 3923 777</p>\r\n\r\n<p>- Seakite homestay: L&ocirc; 21-B2.3, tổ 144, phường Mỹ An, Ngũ H&agrave;nh Sơn &ndash; Điện thoại: 05113.958.785 &ndash; 0127.626.2069</p>\r\n\r\n<p>- Linda homestay: 25 Chế &nbsp;Lan Vi&ecirc;n, Mỹ An, Ngũ H&agrave;nh Sơn &ndash; Điện thoại: 0905 612 357</p>\r\n\r\n<p>- Homestay Đ&agrave; Nẵng: 473 Trần Hưng Đạo, Sơn Tr&agrave; &ndash; Điện thoại: 0935 150 674</p>\r\n\r\n<h2>2. MỘT SỐ LỰA CHỌN D&Agrave;NH CHO PH&Acirc;N KH&Uacute;C CAO CẤP</h2>\r\n\r\n<p><strong>Kh&aacute;ch sạn Vinpearl&nbsp;Condotel Riverfront&nbsp;Đ&agrave; Nẵng - Nơi ch&uacute;ng t&ocirc;i tận t&igrave;nh phục vụ kh&aacute;ch h&agrave;ng</strong></p>\r\n\r\n<p>Nằm trong một t&ograve;a nh&agrave; cao tầng nh&igrave;n ra S&ocirc;ng H&agrave;n thơ mộng, Vinpearl Condotel Riverfront Da Nang cung cấp chỗ nghỉ hiện đại với Wi-Fi miễn ph&iacute;. Kh&aacute;ch sạn c&oacute; 4 nh&agrave; h&agrave;ng trong khu&ocirc;n vi&ecirc;n, quầy bar tr&ecirc;n s&acirc;n thượng cũng như hồ bơi ngo&agrave;i trời.</p>\r\n\r\n<p>Tất cả ph&ograve;ng nghỉ của kh&aacute;ch sạn đều được trang bị b&agrave;n l&agrave;m việc, TV m&agrave;n h&igrave;nh phẳng, ph&ograve;ng tắm ri&ecirc;ng v&agrave; m&aacute;y điều h&ograve;a. Một số chỗ nghỉ c&ograve;n c&oacute; ban c&ocirc;ng.</p>\r\n\r\n<p>Du kh&aacute;ch c&oacute; thể tận hưởng dịch vụ m&aacute;t-xa nhẹ nh&agrave;ng tại Vincharm Spa sau một ng&agrave;y bận rộn. Du kh&aacute;ch cũng c&oacute; thể sử dụng trung t&acirc;m thể dục miễn ph&iacute;. Nh&acirc;n vi&ecirc;n tại quầy lễ t&acirc;n c&oacute; thể giải đ&aacute;p mọi thắc mắc của qu&yacute; kh&aacute;ch. Trẻ em đi c&ugrave;ng cha mẹ c&oacute; thể tận hưởng v&ocirc; số hoạt động tại CLB d&agrave;nh cho trẻ em.</p>\r\n\r\n<p>Vinpearl Condotel Riverfront Da Nang c&aacute;ch C&ocirc;ng vi&ecirc;n Ch&acirc;u &Aacute; 4,2 km v&agrave; s&acirc;n bay gần nhất l&agrave; s&acirc;n bay quốc tế Đ&agrave; Nẵng 5 km.</p>\r\n\r\n<p><strong>Hẹn gặp qu&yacute; kh&aacute;ch tại Vinpearl Condotel Riverfront Đ&agrave; Nẵng!</strong></p>\r\n\r\n<p><em><strong>Hồ Thanh Phong - Quản l&yacute; kh&aacute;ch sạn Vinpearl^^</strong></em></p>\r\n', 'image/post/374bab9cb8662a071ce7a782de2e40a1.jpg', 3, '2021-01-14 13:06:18', 1, '', 23, 0),
(3, 'Ăn gì khi du lịch ở Đà Nẵng?', '<p><strong><em>B&ecirc;n cạnh những h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute;, checkin những địa điểm đẹp, mỗi chuyến du lịch c&ograve;n l&agrave; một h&agrave;nh tr&igrave;nh ẩm thực đầy th&uacute; vị dối với bất kỳ du kh&aacute;ch n&agrave;o. Đ&agrave; Nẵng cũng như vậy, kh&ocirc;ng chỉ c&oacute; những khung cảnh thi&ecirc;n tuyệt đẹp hay những c&acirc;y cầu độc đ&aacute;o bắc qua d&ograve;ng s&ocirc;ng H&agrave;n hiền h&ograve;a chảy giữa l&ograve;ng phố thị, th&agrave;nh phố biển xinh đẹp n&agrave;y c&ograve;n sở hữu cho m&igrave;nh v&ocirc; v&agrave;ng những m&oacute;n ăn ngon tuyệt, l&agrave;m say đắm bao t&iacute;n đồ ẩm thực. N&agrave;o, bạn h&atilde;y c&ugrave;ng Mytour kh&aacute;m ph&aacute; những m&oacute;n ăn v&agrave; những qu&aacute;n ăn kh&ocirc;ng thể bỏ qua mỗi khi du lịch Đ&agrave; Nẵng bạn nh&eacute;!</em></strong></p>\r\n\r\n<h2>MỲ QUẢNG</h2>\r\n\r\n<p>C&oacute; thể n&oacute;i nếu đến Đ&agrave; Nẵng m&agrave; bạn chưa được thưởng thức Mỳ Quảng tại đ&acirc;y th&igrave; tức l&agrave; bạn đ&atilde; bỏ đi phần lớn cuộc h&agrave;nh tr&igrave;nh ẩm thực của m&igrave;nh tại th&agrave;nh phố biển tuyệt vời n&agrave;y rồi đấy! Hương vị hấp dẫn của Mỳ Quảng đến từ ch&iacute;nh c&aacute;ch ăn, c&aacute;ch chế biến mộc mạc, giản dị nhưng lại kh&ocirc;ng k&eacute;m phần tinh tế của m&oacute;n ăn n&agrave;y. H&atilde;y để Mytour gợi &yacute; cho bạn một v&agrave;i địa điểm tuyệt với để bạn c&oacute; thể thưởng thức m&oacute;n ăn hấp dẫn n&agrave;y khi du lịch Đ&agrave; Nẵng ngay b&acirc;y giờ nh&eacute;!</p>\r\n\r\n<p>Mỳ Quảng B&agrave; Mua (19-21 Trần B&igrave;nh Trọng, Q, Hải Ch&acirc;u, Đ&agrave; Nẵng): Đ&acirc;y được xem l&agrave; tiệm Mỳ Quảng nổi tiếng h&agrave;ng đầu tại Đ&agrave; Nẵng kh&ocirc;ng chỉ đối với du kh&aacute;ch đến Đ&agrave; Nẵng m&agrave; c&ograve;n đối với người d&acirc;n th&agrave;nh phố n&agrave;y. So với nhiều qu&aacute;n Mỳ Quảng kh&aacute;c th&igrave; Mỳ Quảng B&agrave; Mua mang đậm hương vị truyền thống của m&oacute;n mỳ n&agrave;y với nước nhưn đậm đ&agrave; v&agrave; dậy m&ugrave;i củ n&eacute;n &ndash; loại hương liệu kh&ocirc;ng thể thiếu đối với m&oacute;n Mỳ Quảng truyền thống. Gi&aacute; một t&ocirc; mỳ ở đ&acirc;y chỉ khoảng từ 25.000 &ndash; 45.000 đồng.</p>\r\n\r\n<p>Mỳ Quảng B&agrave; Li&ecirc;n (K54/34 &Ocirc;ng &Iacute;ch Khi&ecirc;m, Q, Hải Ch&acirc;u, Đ&agrave; Nẵng): D&ugrave; kh&ocirc;ng qu&aacute; nổi tiếng như B&agrave; Mua hay nhiều tiệm Mỳ Quảng kh&aacute;c ở Đ&agrave; Nẵng nhưng hương vị của Mỳ B&agrave; Li&ecirc;n ho&agrave;n to&agrave;n kh&ocirc;ng thua k&eacute;m bất kỳ tiệm Mỳ Quảng n&agrave;o ở Đ&agrave; Nẵng. D&ugrave; Mỳ rất ngon với nước nhưn h&ograve;a quyện giữa m&ugrave;i hương của củ n&eacute;n, vị nồng của nghệ v&agrave; cả vị ngọt ngọt b&eacute;o b&eacute;o của dầu điều v&agrave; gi&aacute; một t&ocirc; mỳ cũng kh&aacute; rẻ chỉ từ 20.000 &ndash; 35.000 nhưng qu&aacute;n mỳ n&agrave;y lại kh&aacute; kh&oacute; &ldquo;tiếp cận&rdquo; v&igrave; qu&aacute;n chỉ b&aacute;n trong tầm 2 tiếng từ 6h &ndash; 8h s&aacute;ng.</p>\r\n\r\n<p>Mỳ Quảng B&iacute;ch (1-5 Đặng Dung, Q. Li&ecirc;n Chiểu, Đ&agrave; Nẵng): Tuy nằm kh&aacute; xa trung t&acirc;m th&agrave;nh phố (nằm ở khu vực chợ H&ograve;a Kh&aacute;nh) nhưng Mỳ Quảng B&iacute;ch lại kh&ocirc;ng hề k&eacute;m cạnh về &ldquo;độ nổi tiếng&rdquo; với những qu&aacute;n Mỳ Quảng kh&aacute;c ở khu vực trung t&acirc;m. Với chỉ khoản 22.000 &ndash; 25.000 đồng, du kh&aacute;ch đ&atilde; c&oacute; ngay cho m&igrave;nh một t&ocirc; mỳ thơm ngon với nước nh&acirc;n đậm đ&agrave;, b&eacute;o ngậy.</p>\r\n\r\n<p>Mỳ Quảng B&agrave; Tỉnh (ch&acirc;n cầu Giăng, QL14B, x&atilde; H&ograve;a Nhơn, huyện H&ograve;a Vang, Đ&agrave; Nẵng): Mỳ Quảng B&agrave; Tỉnh hay c&ograve;n được người d&acirc;n Đ&agrave; th&agrave;nh gọi l&agrave; Mỳ Quảng T&uacute;y Loan (T&uacute;y Loan l&agrave; một l&agrave;ng thuộc huyện H&ograve;a Vang, Đ&agrave; Nẵng). Nổi bật với hương vị đậm đ&agrave;, mộc mạc của người d&acirc;n qu&ecirc; nhưng lại kh&ocirc;ng thiếu đi sự tinh tế trong c&aacute;c chế biến với sợi mỳ dai dai b&ugrave;i b&ugrave;i, nước nhưn đậm đ&agrave; v&agrave; c&aacute;i b&aacute;nh tr&aacute;ng T&uacute;y Loan với hương vị kh&ocirc;ng thể lẫn v&agrave;o đ&acirc;u được, Mỳ Quảng T&uacute;y Loan quả thực l&agrave; một &ldquo;sản vật&rdquo; đối với bất kỳ t&iacute;n đồ ẩm thực n&agrave;o. Tuy nhi&ecirc;n, để ăn được một t&ocirc; Mỳ Quảng T&uacute;y Loan ngon tuyệt th&igrave; du kh&aacute;ch phải chấp nhận đi một qu&atilde;ng đường kh&aacute; xa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>B&Aacute;NH TR&Aacute;NG CUỐN THỊT HEO</h2>\r\n\r\n<p>B&ecirc;n cạnh Mỳ Quảng th&igrave; B&aacute;nh tr&aacute;ng cuốn thịt heo l&agrave; m&oacute;n ăn thứ hai m&agrave; du kh&aacute;ch kh&ocirc;ng n&ecirc;n bỏ qua khi đến với th&agrave;nh phố Đ&agrave; Nẵng. Điểm đặc biệt của B&aacute;nh trắng cuốn thịt heo Đ&agrave; Nẵng đ&oacute; ch&iacute;nh l&agrave; miếng thịt với hai đầu mỡ, da độc đ&aacute;o c&ugrave;ng với những loại nước chấm thơm lừng. Sẽ thật tuyệt vời khi được cắn v&agrave;o một cuốn b&aacute;nh tr&aacute;ng với sự h&ograve;a quyện giữa vị thơm của mắm, c&aacute;i b&eacute;o b&eacute;o ngậy ngậy của mỡ heo b&ecirc;n cạnh m&ugrave;i thơm của c&aacute;c loại rau sống ăn k&egrave;m. Một số qu&aacute;n B&aacute;nh tr&aacute;ng cuốn thịt heo nổi tiếng nhất ở Đ&agrave; Nẵng c&oacute; thể kể đến l&agrave;:</p>\r\n\r\n<p>Trần: Đ&acirc;y l&agrave; thương hiệu B&aacute;nh tr&aacute;ng cuốn thịt heo nổi tiếng h&agrave;ng đầu ở Đ&agrave; Nẵng. Nước chấm ở đ&acirc;y kh&aacute; ngon v&agrave; phong c&aacute;ch phục vụ kh&aacute; chuy&ecirc;n nghiệp. Tuy nhi&ecirc;n, do Trần phục vụ theo kiểu nh&agrave; h&agrave;ng n&ecirc;n gi&aacute; ở Trần c&oacute; phần cao hơn mặt bằng chung, từ 70.000 đồng/phần</p>\r\n\r\n<p>Qu&aacute;n Mậu: Nếu như Trần nổi tiếng với phong c&aacute;ch phục vụ chuy&ecirc;n nghiệp th&igrave; Mậu được biết đến như l&agrave; một qu&aacute;n b&aacute;nh tr&aacute;ng cuốn thịt heo với nước chấm tuyệt hảo. So với Trần th&igrave; Mậu c&oacute; phần b&igrave;nh d&acirc;n hơn. Với gi&aacute; chỉ từ 40.000 đồng l&agrave; du kh&aacute;ch đ&atilde; c&oacute; thể c&oacute; được một bữa B&aacute;nh tr&aacute;ng cuốn thịt heo ngon miệng nơi đ&acirc;y. Mậu c&oacute; 2 cơ sở: Cơ sở 1: 35 Đỗ Th&uacute;c Tịnh, Cẩm Lệ - Cơ sở 2 (Mậu Con): 215 Trưng Nữ Vương, Hải Ch&acirc;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>B&Uacute;N MẮM N&Ecirc;M</h2>\r\n\r\n<p>L&agrave; sự h&ograve;a quyện giữa miếng thịt quay gi&ograve;n gi&ograve;n với hương vị ngọt ngọt, đậm đ&agrave; của mắm n&ecirc;m đ&atilde; qua chế biến, B&uacute;n mắm n&ecirc;m sẽ l&agrave; một thức ngon tuyệt vời m&agrave; du kh&aacute;ch kh&ocirc;ng thể bỏ qua khi du lịch đến Đ&agrave; Nẵng. Một số qu&aacute;n B&uacute;n mắm ngon ở Đ&agrave; Nẵng:</p>\r\n\r\n<p>- Qu&aacute;n V&acirc;n (K23/14 Trần Kế Xương, Q. Hải Ch&acirc;u): gi&aacute; dao động từ 15.000 - 28.000 đồng/t&ocirc;</p>\r\n\r\n<p>- Qu&aacute;n T&acirc;m (K23/2 Trần Kế Xương, Q. Hải Ch&acirc;u): cũng như qu&aacute;n V&acirc;n, gi&aacute; ở qu&aacute;n T&acirc;m cũng giao động từ 15.000 &ndash; 28.000 đồng/t&ocirc;</p>\r\n\r\n<p>- B&uacute;n mắm B&agrave; C&uacute;c (K14/29 Ho&agrave;ng Diệu, Q. Hải Ch&acirc;u): gi&aacute; một t&ocirc; b&uacute;n ở đ&acirc;y giao động từ 15.000 đến 33.000 đồng.</p>\r\n\r\n<p>- B&uacute;n mắm B&agrave; Li&ecirc;n (52 Trần B&igrave;nh Trọng, Q. Hải Ch&acirc;u): d&ugrave; chỉ l&agrave; một qu&aacute;n vỉa h&egrave; nhưng b&uacute;n mắm ở đ&acirc;y lại rất ngon. Gi&aacute; cho một t&ocirc; b&uacute;n mắm ở đ&acirc;y v&agrave;o khoảng 15.000 đến 28.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>B&Aacute;NH CANH</h2>\r\n\r\n<p>Với hương vị đậm đ&agrave; của nước xương hầm kết hợp với từng miếng chả c&aacute; dai dai ngọt ngọt b&ecirc;n cạnh những sợi b&aacute;nh canh dai, b&ugrave;i, những t&ocirc; b&aacute;nh canh ngon tuyệt hứa hẹn sẽ mang đến cho du kh&aacute;ch những trải nghiệm ẩm thực kh&ocirc;ng thể n&agrave;o tuyệt hơn khi du lịch Đ&agrave; Nẵng. Sau đ&acirc;y Mytour xin giới thiệu cho bạn một số qu&aacute;n b&aacute;nh canh chả c&aacute; ngon ở Đ&agrave; Nẵng.</p>\r\n\r\n<p>B&aacute;nh canh Nga (78 Nguyễn Ch&iacute; Thanh, Q. Hải Ch&acirc;u hoặc 193 Đống Đa, Q. Hải Ch&acirc;u). L&agrave; một qu&aacute;n b&aacute;nh canh nổi tiếng từ l&acirc;u của Đ&agrave; Nẵng với nước d&ugrave;ng ngọt thanh nhưng lại kh&ocirc;ng thiếu đi sự đậm đ&agrave; trong hương vị, B&aacute;nh canh Nga hứa hẹn sẽ mang đến cho du kh&aacute;ch những trải nghiệm ẩm thực th&uacute; vị. Gi&aacute; một t&ocirc; b&aacute;nh canh ở đ&acirc;y v&agrave;o khoảng 25.000 đến 40.000 đồng.</p>\r\n\r\n<p>B&aacute;nh canh Ruộng H&agrave; Thị Th&acirc;n (20 H&agrave; Thị Th&acirc;n, Sơn Tr&agrave;): Nằm đối diện với K&yacute; t&uacute;c x&atilde; của trường THPT chuy&ecirc;n L&ecirc; Qu&yacute; Đ&ocirc;n, B&aacute;nh canh Ruộng H&agrave; Thị Th&acirc;n từ l&acirc;u đ&atilde; nổi tiếng với những t&ocirc; b&aacute;nh canh ngon tuyệt nhưng lại c&oacute; gi&aacute; cực kỳ b&igrave;nh d&acirc;n với chỉ 15.000 đến 33.000 đồng/t&ocirc;. Nếu như c&aacute;c qu&aacute;n b&aacute;nh canh kh&aacute;c b&aacute;n cả ng&agrave;y th&igrave; B&aacute;nh canh Ruộng H&agrave; Thị Th&acirc;n chỉ b&aacute;n v&agrave;o l&uacute;c chiều tối từ 15h00 đến 22h00.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>B&Uacute;N CHẢ C&Aacute; &ndash; B&Uacute;N C&Aacute;</h2>\r\n\r\n<p>L&agrave; một th&agrave;nh phố biển n&ecirc;n Đ&agrave; Nẵng sở hữu cho m&igrave;nh rất nhiều c&aacute;c sản vật từ biển cả, đặc biệt trong đ&oacute; phải kể đến v&ocirc; số c&aacute;c loại c&aacute;. C&oacute; lẽ v&igrave; thế m&agrave; nhưng t&ocirc; b&uacute;n ca hay b&uacute;n chả c&aacute; ở Đ&agrave; Nẵng lại rất thơm ngon với c&aacute;i ngọt thanh từ c&aacute; kết hợp với ch&uacute;t chua chua của thơm, c&agrave; c&ugrave;ng với sự tươi ngon của từng miếng c&aacute; thu, c&aacute; ngừ. Một số qu&aacute;n b&uacute;n c&aacute;, b&uacute;n chả c&aacute; nổi tiếng ở Đ&agrave; Nẵng c&oacute; thể kể đến như sau:</p>\r\n\r\n<p>B&uacute;n Chả c&aacute; &ndash; B&uacute;n C&aacute; B&agrave; Phiến (63 L&ecirc; Hồng Phong, Q. Hải Ch&acirc;u). Đ&acirc;y l&agrave; một trong những qu&aacute;n B&uacute;n Chả c&aacute; &ndash; B&uacute;n C&aacute; nổi tiếng nhất Đ&agrave; Nẵng v&agrave; được kh&aacute; nhiều du kh&aacute;ch lựa chọn khi du lịch đến th&agrave;nh phố. Gi&aacute; một t&ocirc; b&uacute;n ở đ&acirc;y từ 25.000 &ndash; 55.000 đồng.</p>\r\n\r\n<p>B&uacute;n Chả C&aacute; &ndash; B&uacute;n C&aacute; B&agrave; &Acirc;n (293-295 H&ugrave;ng Vương, Q. Hải Ch&acirc;u). Qu&aacute;n mở cửa 24/24 n&ecirc;n đ&acirc;y l&agrave; địa điểm tuyệt vời cho để du kh&aacute;ch c&oacute; thể &ldquo;l&agrave;m ấm bụng&rdquo; của m&igrave;nh sau khi xem cầu S&ocirc;ng H&agrave;n quay. Gi&aacute; một t&ocirc; b&uacute;n ở đ&acirc;y cũng kh&aacute; hợp l&yacute; chỉ từ 20.000 đồng một t&ocirc;. Ngo&agrave;i ra tr&ecirc;n đường H&ugrave;ng Vương cũng c&oacute; một qu&aacute;n b&uacute;n c&aacute; rất ngon nữa l&agrave; qu&aacute;n B&uacute;n Lan (424 H&ugrave;ng Vương), tuy nhi&ecirc;n qu&aacute;n b&uacute;n n&agrave;y chỉ mở cửa v&agrave;o độ chiều tối sau 17h.</p>\r\n\r\n<p>Tr&ecirc;n đường Nguyễn Ch&iacute; Thanh c&oacute; hai qu&aacute;n b&uacute;n chả c&aacute; kh&aacute; nổi tiếng ở Đ&agrave; Nẵng l&agrave; B&uacute;n chả c&aacute; Nguyễn Ch&iacute; Thanh (109 Nguyễn Ch&iacute; Thanh) v&agrave; B&uacute;n chả c&aacute; &Ocirc;ng Tạ (113A Nguyễn Ch&iacute; Thanh), đ&acirc;y đều l&agrave; hai qu&aacute;n b&uacute;n chả c&aacute; kh&aacute; nổi tiếng ở Đ&agrave; Nẵng. Với gi&aacute; một t&ocirc; b&uacute;n chỉ từ 20.000 đồng, đ&acirc;y sẽ l&agrave; những địa điểm tuyệt vời để du kh&aacute;ch c&oacute; thể thưởng thức m&oacute;n b&uacute;n chả c&aacute; thơm ngon khi du lịch Đ&agrave; Nẵng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>HẢI SẢN</h2>\r\n\r\n<p>Đ&atilde; đến Đ&agrave; Nẵng th&igrave; du kh&aacute;ch kh&ocirc;ng n&ecirc;n bỏ qua cơ hội được thưởng thức những bữa tiệc hải sản no n&ecirc; với gi&aacute; cả cực kỳ hợp l&yacute;. Ở Đ&agrave; Nẵng du kh&aacute;ch c&oacute; thể đến với khu vực biển Phạm Văn Đồng để thưởng thức hải sản. Ngo&agrave;i ra, du kh&aacute;ch cũng c&oacute; thể đến với qu&aacute;n B&agrave; Th&ocirc;i (96 L&ecirc; Đ&igrave;nh Dương) để c&oacute; được một bữa hải sản đầy hấp dẫn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>MỘT S&Ocirc; THI&Ecirc;N ĐƯỜNG ĂN VẶT TẠI Đ&Agrave; NẴNG</h2>\r\n\r\n<p>Nếu bạn l&agrave; một t&iacute;n đồ ăn vặt v&agrave; muốn thưởng thức v&ocirc; v&agrave;ng c&aacute;c thức ăn vặt của Đ&agrave; th&agrave;nh th&igrave; Mytour khuy&ecirc;n bạn h&atilde;y đến với khu ăn vặt ở ch&acirc;n cầu Trần Thị L&yacute;. Từ bờ đ&ocirc;ng cầu Trần Thị L&yacute;, v&ograve;ng qua v&ograve;ng xoay về đường Trần Hưng Đạo, đến đường B&ugrave;i Thị Xu&acirc;n rẽ v&agrave;o l&agrave; du kh&aacute;ch c&oacute; thể đến ngay với thi&ecirc;n đường ăn vặt ở Đ&agrave; th&agrave;nh. Đến với khu ăn vặt ch&acirc;n cầu Trần Thị L&yacute; du kh&aacute;ch sẽ được thưởng thức v&ocirc; số c&aacute;c m&oacute;n ăn vặt như ốc h&uacute;t, m&iacute;t trộn, yaout muối... với gi&aacute; cả cực kỳ b&igrave;nh d&acirc;n. Một số qu&aacute;n ăn vặt nổi bật ở khu vực n&agrave;y c&oacute; thể kể đến như l&agrave; qu&aacute;n C&acirc;y B&agrave;ng, &Uacute;t Cưng, B&eacute; Ny,&hellip;</p>\r\n\r\n<p>Đến với Đ&agrave; Nẵng th&igrave; du kh&aacute;ch cũng kh&ocirc;ng n&ecirc;n bỏ qua cơ hội được thưởng thức m&oacute;n b&aacute;nh tr&aacute;ng kẹp &ndash; đặc sản ăn vặt xứ Đ&agrave; th&agrave;nh. Một số qu&aacute;n b&aacute;nh tr&aacute;ng kẹp ngon c&oacute; thể kể đến như B&aacute;nh tr&aacute;ng kẹp D&igrave; Hoa (62/2A N&uacute;i Th&agrave;nh), Qu&aacute;n B&agrave; Năm (96/63 Điện Bi&ecirc;n Phủ), B&aacute;nh tr&aacute;ng kẹp cuối đường Đ&agrave;o Duy Từ, B&aacute;nh tr&aacute;ng kẹp kiệt Trần Kế Xương (9/3 Đo&agrave;n Thị Điểm).</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;c địa điểm ẩm thực ở tr&ecirc;n, du kh&aacute;ch c&ograve;n c&oacute; thể thưởng thức những đĩa b&aacute;nh b&egrave;o &ndash; nậm &ndash; lọc thơm ngon tại B&agrave; B&eacute; (100 Ho&agrave;ng Văn Thụ) hoặc Qu&aacute;n T&acirc;m (291 Nguyễn Ch&iacute; Thanh) hay những t&ocirc; b&uacute;n b&ograve; thơm ngon tại B&uacute;n Thủy (K218 Đống Đa). B&ecirc;n cạnh đ&oacute;, khi đến với Đ&agrave; Nẵng th&igrave; du kh&aacute;ch cũng kh&ocirc;ng n&ecirc;n bỏ qua cơ hội được thưởng thức những l&aacute;t b&ecirc; thui thơm ngon tại 100 Điện Bi&ecirc;n Phủ.</p>\r\n\r\n<p>B&ecirc;n cạnh những địa điểm hấp dẫn th&igrave; ẩm thực Đ&agrave; Nẵng cũng sẽ l&agrave; trải nghiệm du kh&aacute;ch kh&ocirc;ng n&ecirc;n bỏ qua khi du lịch đến th&agrave;nh phố biển xinh đẹp n&agrave;y. H&atilde;y c&ugrave;ng Mytour trải nghiệm h&agrave;nh tr&igrave;nh ẩm thực trong chuyến du lịch Đ&agrave; Nẵng sắp đến của bạn nh&eacute;!</p>\r\n\r\n<p><em><strong>Thanh Phong</strong></em></p>\r\n', 'image/post/các-món-ăn-ngon-tại-Đà-Nẵng-945x641.jpg', 3, '2021-01-14 13:26:38', 1, '', 211, 0),
(4, '6 địa điểm đi chơi tuyệt vời cho CẶP ĐÔI tại Đà Nẵng', '<p>Thật tuyệt vời khi ghi lại kỷ niệm bằng những chuyến du lịch thực tế .&nbsp;Nếu chọn Đ&agrave; Nẵng l&agrave; điểm đến trong list h&agrave;nh tr&igrave;nh của hai bạn, th&igrave; bạn c&oacute; thể tham khảo một số điểm tham quan sau đ&acirc;y :</p>\r\n\r\n<h2><strong>1/ B&agrave; N&agrave; Hills :</strong></h2>\r\n\r\n<p>Đến với B&agrave; N&agrave; Hills , bạn sẽ trải nghiệm tuyến c&aacute;p treo một d&acirc;y d&agrave;i nhất thế giới . Cảnh quan được nh&igrave;n từ tr&ecirc;n cao thật tuyệt vời với m&acirc;y giăng huyền ảo giữa khung cảnh n&uacute;i rừng, th&aacute;c nước xen lẫn&hellip;.</p>\r\n\r\n<p>Tại đỉnh B&agrave; N&agrave;, khu du lịch được mở ra với v&ocirc; số c&aacute;c tr&ograve; chơi hấp dẫn, cảnh đẹp nao l&ograve;ng . Trong c&ugrave;ng một ng&agrave;y bạn c&oacute; thể cảm nhận được thời ti&ecirc;t 4 m&ugrave;a : xu&acirc;n , hạ, thu, đ&ocirc;ng.</p>\r\n\r\n<p>Cầu V&agrave;ng : thuộc B&agrave; N&agrave; Hills, l&agrave; c&acirc;y cầu đi bộ , với lan can inox mạ v&agrave;ng , được x&acirc;y dựng ở độ cao hơm 1400m so với mực nước biển , d&agrave;i 148,6m chia th&agrave;nh 8 nhịp , chiều ngang 3m với vật liệu mặt cầu bằng gỗ kiềng d&agrave;y 5cm.</p>\r\n\r\n<p>Cầu V&agrave;ng như được vắt ngang qua bầu trời, với đ&ocirc;i b&agrave;n tay như đỡ lấy th&acirc;n cầu đầy nghệ thuật , khiến du kh&aacute;ch ng&acirc;y ngất như được bước đi giữa những đ&aacute;m m&acirc;y v&agrave; bầu trời.</p>\r\n\r\n<h2><strong>2/ Hội An :</strong></h2>\r\n\r\n<p>D&ugrave; về h&agrave;nh ch&iacute;nh, Hội An kh&ocirc;ng thuộc Đ&agrave; Nẵng, nhưng khi nhắc đến du lịch Đ&agrave; Nẵng, hơn 90% kh&aacute;ch du lịch sẽ vẫn đưa Hội An v&agrave;o list c&aacute;c điểm sẽ đến tham quan, đặc biệt l&agrave; c&aacute;c cặp đ&ocirc;i. Hội An &ndash; phố cổ , y&ecirc;n b&igrave;nh, cổ k&iacute;nh , xinh đẹp v&agrave; văn h&oacute;a ẩm thực n&iacute;u ch&acirc;n du kh&aacute;ch.</p>\r\n\r\n<h2><strong>3/ Cầu Rồng :</strong></h2>\r\n\r\n<p>Một trong những biểu tượng của th&agrave;nh phố Đ&agrave; Nẵng, điều đặc biệt l&agrave; thiết kế con rồng tr&ecirc;n cầu, c&oacute; khả năng phun nước v&agrave; lửa v&agrave;o tối thứ 7 , chủ nhật hoặc c&aacute;c dịp lễ lớn trong năm.</p>\r\n\r\n<p>Nếu muốn chi&ecirc;m ngưỡng được một vẻ đẹp kh&aacute;c của c&acirc;y cầu , bạn cũng c&oacute; thể đến đ&acirc;y l&uacute;c ho&agrave;ng h&ocirc;n .</p>\r\n\r\n<h2><strong>4/ Cầu t&igrave;nh y&ecirc;u :</strong></h2>\r\n\r\n<p>Được ho&agrave;n th&agrave;nh v&agrave;o 5/2015 , đ&acirc;y l&agrave; địa điểm thuận lợi để ngắm đ&ocirc;i bờ s&ocirc;ng H&agrave;n, với thiết kế hai b&ecirc;n cầu l&agrave; những c&acirc;y treo đ&egrave;n lồng đỏ h&igrave;nh tr&aacute;i tim l&atilde;ng mạn.</p>\r\n\r\n<p>Ngo&agrave;i ra du kh&aacute;ch c&oacute; thể gắn c&aacute;c ổ kh&oacute;a t&igrave;nh y&ecirc;u hai b&ecirc;n cầu như th&aacute;p Namsan H&agrave;n Quốc.</p>\r\n\r\n<h2><strong>5/ B&atilde;i biển Mỹ Kh&ecirc; :</strong></h2>\r\n\r\n<p>Một trong những b&atilde;i biển nổi tiếng, từng được tạp ch&iacute; Forbes b&igrave;nh chọn một trong những b&atilde;i biển quyến rũ nhất h&agrave;nh tinh.</p>\r\n\r\n<p>Với những b&atilde;i c&aacute;t tr&aacute;ng mịn , biển trong xanh , h&agrave;ng dừa thơ mộng, nước ấm quanh năm , t&iacute;ch hợp nhiều khu nghỉ dưỡng từ b&igrave;nh d&acirc;n đến sang trọng , cao cấp.</p>\r\n\r\n<h2><strong>6/ B&aacute;n đảo Sơn Tr&agrave; :</strong></h2>\r\n\r\n<p>Với thi&ecirc;n nhi&ecirc;n tr&ugrave; ph&uacute;, xanh tươi v&agrave; nhiều điểm tham quan hấp dẫn :</p>\r\n\r\n<p>+ Ch&ugrave;a Linh Ứng : c&oacute; tượng phật Quan Thế &Acirc;m cao nhất nước , với chiều cao 67m</p>\r\n\r\n<p>+ Đỉnh B&agrave;n Cờ : để l&ecirc;n được đỉnh B&agrave;n Cờ, du kh&aacute;ch phải vượt qua cầu thang kh&aacute; dốc , lối đi quanh co, tr&ecirc;n đường đi du kh&aacute;ch sẽ được ngắm cảnh thi&ecirc;n nhi&ecirc;n n&uacute;i non hung vĩ từ tr&ecirc;n cao.</p>\r\n\r\n<p>+ C&acirc;y đa ng&agrave;n năm : l&agrave; 1 quần thể với nhiều c&acirc;y đa to lớn, l&acirc;u năm, trong đ&oacute; đặc biệt nhất c&oacute; 1 c&acirc;y đa rất cao lớn , c&oacute; nhiều rễ phụ đ&acirc;m s&acirc;u xuống đất.</p>\r\n\r\n<p>+ Cảng Ti&ecirc;n Sa : du kh&aacute;ch c&oacute; thể ngắm nh&igrave;n được cảnh sinh hoạt của cuộc sống nơi đ&acirc;y.</p>\r\n\r\n<p>+ B&atilde;i Đ&aacute; Đen : khung cảnh thi&ecirc;n nhi&ecirc;n hoang sơ mang lại một n&eacute;t độc đ&aacute;o ri&ecirc;ng cho du kh&aacute;ch cảm nhận.</p>\r\n\r\n<p>+ Mũi ngh&ecirc; :nơi đ&oacute;n b&igrave;nh minh đầu ti&ecirc;n của th&agrave;nh phố Đ&agrave; Nẵng , biển trong xanh, với nhiều lo&agrave;i san h&ocirc; th&iacute;ch hợp cho hoạt động lặn ngắm.</p>\r\n\r\n<p>Đ&egrave;o Hải V&acirc;n : ranh giới giữa Thừa Thi&ecirc;n Huế v&agrave; Đ&agrave; Nẵng, đ&acirc;y cũng l&agrave; cung đường phượt mơ ước của nhiều bạn trẻ . Với vẻ đẹp thi&ecirc;n nhi&ecirc;n hung vĩ, hoang sơ v&agrave; n&ecirc;n thơ.</p>\r\n\r\n<p>Đặc biệt v&agrave;o l&uacute;c ho&agrave;ng h&ocirc;n , du kh&aacute;ch sẽ trải nghiệm ngắm nh&igrave;n m&acirc;y lượn quanh sườn n&uacute;i.</p>\r\n\r\n<p>Ngo&agrave;i ra đ&egrave;o hải v&acirc;n c&ograve;n nổi tiếng với cầu v&ograve;m Đồn Cả - khi l&ecirc;n h&igrave;nh được mệnh danh l&agrave; &ldquo;Cổng Trời&rdquo;&nbsp; .</p>\r\n', 'image/post/lich-trinh-du-lich-da-nang-hoi-an-3ngay-2-dem-5.jpg', 3, '2021-01-14 13:35:58', 1, '', 16, 0),
(5, 'Đà Nẵng – thành phố đáng sống nhất Việt Nam', '<p><strong><em>Dường như bất cứ lữ kh&aacute;ch phương xa n&agrave;o cũng sẽ phải l&ograve;ng v&agrave; y&ecirc;u mến th&agrave;nh phố mang t&ecirc;n Đ&agrave; Nẵng ngay từ lần đầu đặt ch&acirc;n đến.</em></strong></p>\r\n\r\n<p>Đ&agrave; Nẵng kh&ocirc;ng chỉ g&acirc;y ấn tượng với du kh&aacute;ch với h&igrave;nh ảnh năng động, lu&ocirc;n căng tr&agrave;n sức sống m&agrave; c&ograve;n thu h&uacute;t bởi cảnh sắc thi&ecirc;n nhi&ecirc;n thơ mộng, đẹp m&ecirc; hồn với biển trời bao la, n&uacute;i non sừng sững. Đ&agrave; Nẵng hội tụ biết bao vẻ đẹp tinh hoa của đất trời, tựa như một h&ograve;n ngọc qu&yacute; gi&aacute; nằm giữa dải đất h&igrave;nh chữ S!</p>\r\n\r\n<p><a href=\"https://mytour.vn/c65/khach-san-tai-da-nang.html\" target=\"_blank\">Đ&agrave; Nẵng</a>&nbsp;nằm ở v&ugrave;ng Nam Trung Bộ, l&agrave; một trong những th&agrave;nh phố trực thuộc Trung ương của Việt Nam v&agrave; l&agrave; trung t&acirc;m lớn của nhiều lĩnh vực. Kh&ocirc;ng những thế, Đ&agrave; Nẵng c&ograve;n l&agrave; một th&agrave;nh phố du lịch tuyệt vời của đất Việt, l&agrave; nơi bạn để bạn kh&aacute;m ph&aacute; những danh lam thắng cảnh đẹp xinh, thưởng thức những m&oacute;n ăn ngon đậm đ&agrave; hương vị đặc trưng v&agrave; tận hưởng những khu nghỉ dưỡng sang trọng v&agrave; đẳng cấp.</p>\r\n\r\n<p>Đ&agrave; Nẵng sở hữu nhiều b&atilde;i biển xinh đẹp, trong số đ&oacute; c&oacute; thể kể đến như b&atilde;i biển Mỹ Kh&ecirc;, biển Nam &Ocirc;, biển Phạm Văn Đồng, b&atilde;i Ghềnh B&agrave;ng,... Đến với th&agrave;nh phố biển, bạn c&oacute; thể d&agrave;nh cả ng&agrave;y để đắm m&igrave;nh trong l&agrave;n nước biển m&aacute;t lạnh, ngắm nh&igrave;n những con s&oacute;ng vỗ, dạo chơi tr&ecirc;n b&atilde;i c&aacute;t mịn v&agrave; thưởng thức vẻ đẹp của biển trời m&ecirc;nh m&ocirc;ng vời vợi. Nơi đ&acirc;y cũng sẽ mang đến cho bạn cơ hội được chi&ecirc;m ngưỡng vẻ đẹp huyền b&iacute;, kỳ ảo của biển cả trong thời khắc b&igrave;nh minh v&agrave; ho&agrave;ng h&ocirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&agrave; Nẵng kh&ocirc;ng chỉ c&oacute; biển, m&agrave; c&ograve;n c&oacute; những ngọn n&uacute;i kỳ vĩ, sừng sững bao bọc th&agrave;nh phố. Du kh&aacute;ch c&oacute; thể d&agrave;nh thời gian để kh&aacute;m ph&aacute; n&uacute;i Ngũ H&agrave;nh Sơn hay n&uacute;i B&agrave; N&agrave;. Đồng thời, bạn cũng c&oacute; thể vui chơi tại những khu du lịch gần ngay th&agrave;nh phố như Suối Mơ hay tham quan ch&ugrave;a Linh Ứng - điểm du lịch t&acirc;m linh nổi tiếng của xứ Đ&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&agrave; N&agrave; Hills như một thị trấn thu nhỏ của nước Ph&aacute;p, với lối kiến tr&uacute;c cổ điển đặc trưng, tạo n&ecirc;n kh&ocirc;ng gian thanh lịch, l&atilde;ng mạn v&agrave; ho&agrave;i cổ. Ở nơi đ&acirc;y, bạn sẽ được dịp ngắm nh&igrave;n h&agrave;ng trăm lo&agrave;i hoa đua nhau khoe sắc, được lạc v&agrave;o chốn cổ t&iacute;ch đẹp mi&ecirc;n man v&agrave; khẽ chạm v&agrave;o l&agrave;n m&acirc;y bồng bềnh hờ hững tr&ocirc;i &ecirc;m đềm tr&ecirc;n đỉnh B&agrave; N&agrave;. Đ&acirc;y sẽ l&agrave; nơi để bạn thỏa th&iacute;ch săn ảnh, lưu giữ những khoảnh khắc kh&oacute; qu&ecirc;n.</p>\r\n\r\n<p>Th&agrave;nh phố Đ&agrave; Nẵng về đ&ecirc;m đẹp ngỡ ng&agrave;ng với những &aacute;nh đ&egrave;n nổi bật lấp l&aacute;nh, to&aacute;t l&ecirc;n vẻ trẻ trung, năng động v&agrave; nhộn nhịp. Buổi tối, bạn c&oacute; thể lang thang tr&ecirc;n những tuyến phố, tr&ecirc;n những c&acirc;y cầu bắc qua s&ocirc;ng H&agrave;n để cảm nhận vẻ đẹp rực rỡ của th&agrave;nh phố n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&agrave; Nẵng quả thật l&agrave; một th&agrave;nh phố đ&aacute;ng sống với những điều tuyệt vời, những vẻ đẹp của ri&ecirc;ng m&igrave;nh. Đ&acirc;y ch&iacute;nh l&agrave; một trong những th&agrave;nh phố bạn n&ecirc;n đặt ch&acirc;n đến kh&aacute;m ph&aacute; v&agrave; trải nghiệm. Ch&iacute;nh v&igrave; thế, h&atilde;y để Mytour c&ugrave;ng bạn đồng h&agrave;nh trong chuyến du lịch Đ&agrave; Nẵng nh&eacute;! C&oacute; &ldquo;qu&acirc;n sư&rdquo; Mytour - thương hiệu chiến lược được đầu tư bởi tập đo&agrave;n Recruit Holdings của Nhật Bản, bạn sẽ được tư vấn chọn kh&aacute;ch sạn, những g&oacute;i du lịch được ưu đ&atilde;i với chi ph&iacute; tiết kiệm nhất đấy!</p>\r\n\r\n<p>Bạn c&oacute; thể t&igrave;m kiếm th&ocirc;ng tin hơn 500 kh&aacute;ch sạn trực tuyến tại Đ&agrave; Nẵng v&agrave; cập nhật đ&aacute;nh gi&aacute; mới nhất từ những kh&aacute;ch h&agrave;ng trước tr&ecirc;n website ch&iacute;nh thức của MyTour.vn. Từ đ&oacute; c&oacute; thể dễ d&agrave;ng lựa chọn kh&aacute;ch sạn ph&ugrave; hợp với nhu cầu của m&igrave;nh, cho c&ocirc;ng việc hay đi du lịch. Mytour cũng sẽ lu&ocirc;n d&agrave;nh cho bạn phương thức thanh to&aacute;n đảm bảo thuận tiện khi lựa chọn đặt ph&ograve;ng tại Mytour.</p>\r\n\r\n<p>Kh&ocirc;ng những thế, trong suốt thời gian du lịch Đ&agrave; Nẵng, bạn sẽ c&ograve;n được hỗ trợ nhiệt t&igrave;nh bởi đội ngũ tổng đ&agrave;i vi&ecirc;n nhiệt t&igrave;nh v&agrave; &acirc;n cần. Nếu gặp bất cứ kh&oacute; khăn n&agrave;o về kh&aacute;ch sạn, h&atilde;y cứ thoải m&aacute;i li&ecirc;n lạc với Mytour để được hỗ trợ v&agrave; t&igrave;m ra phương &aacute;n giải quyết thuận tiện nhất nh&eacute;!</p>\r\n\r\n<p>Ngo&agrave;i ra, <strong>Mytour </strong>sẽ lu&ocirc;n d&agrave;nh cho bạn nhiều chương tr&igrave;nh khuyến m&atilde;i hấp dẫn, nếu bạn vừa lỡ một chương tr&igrave;nh khuyến m&atilde;i n&agrave;o đ&oacute; th&igrave; đừng vội buồn, bởi Mytour sẽ lại mang đến cho bạn những chương tr&igrave;nh khuyến m&atilde;i sau c&ograve;n ưu đ&atilde;i, &ldquo;hot&rdquo; hơn nữa đấy! Bất cứ l&uacute;c n&agrave;o, bạn cũng c&oacute; thể truy cập v&agrave;o website của Mytour, sử dụng ứng dụng Mytour d&agrave;nh cho smartphone để theo d&otilde;i chương tr&igrave;nh khuyến m&atilde;i, cập nhật th&ocirc;ng tinh kh&aacute;ch sạn v&agrave; đừng qu&ecirc;n đăng k&yacute; th&agrave;nh vi&ecirc;n nh&eacute;! H&atilde;y để Mytour trở th&agrave;nh người bạn th&acirc;n thiết của bạn tr&ecirc;n những chuyến du lịch vui chơi tại Đ&agrave; Nẵng nh&eacute;!</p>\r\n\r\n<p><em><strong>Cẩm Huyền - Quản trị vi&ecirc;n MyTour.vn</strong></em></p>\r\n', 'image/post/nhung-bai-tho-viet-ve-da-nang-rat-la-hay-tu-cu-dan-mang-facebook-4.jpg', 1, '2021-01-14 13:45:25', 1, '', 26, 0);
INSERT INTO `posts` (`id`, `title`, `content`, `image`, `user`, `datepost`, `checkpost`, `slug`, `view`, `isShow`) VALUES
(6, 'Điểm danh 7 khu check-in sống ảo cho giới trẻ tại Đà Nẵng', '<p>Kh&ocirc;ng chỉ được thi&ecirc;n nhi&ecirc;n ưu &aacute;i cho những cảnh quan thi&ecirc;n nhi&ecirc;n tuyệt đẹp m&agrave; c&aacute;c điểm đến mới nổi từ cung văn h&oacute;a thiếu nhi, Thuận Phước Field,&hellip; l&agrave; điểm sống ảo chất lừ cho giới trẻ Đ&agrave; Th&agrave;nh.</p>\r\n\r\n<p>L&ecirc;n lịch sống ảo, lưu giữ h&agrave;ng trăm bức h&igrave;nh y&ecirc;u th&iacute;ch của bạn tại c&aacute;c điểm check-in, sống ảo nổi tiếng tại Đ&agrave; Nẵng dưới đ&acirc;y.</p>\r\n\r\n<h2><strong>1. Cung văn h&oacute;a thiếu nhi Đ&agrave; Nẵng</strong></h2>\r\n\r\n<p>Cung văn h&oacute;a thiếu nhi Đ&agrave; Nẵng c&oacute; tọa lạc tại phường H&ograve;a Cường Bắc (quận Hải Ch&acirc;u), ph&iacute;a Nam đ&agrave;i tưởng niệm, mặt tiền hướng ra đường 2/9 với&nbsp;c&aacute;c khu đa chức năng bao gồm: khu vui chơi, giải tr&iacute;, c&ocirc;ng vi&ecirc;n, c&aacute;c ph&ograve;ng học, ph&ograve;ng tập thể thao, khu s&acirc;n vườn,&hellip; bố tr&iacute; kh&ocirc;ng gian mới lạ cả trong v&agrave; ngo&agrave;i cung văn h&oacute;a.</p>\r\n\r\n<p>Mới được đưa v&agrave;o hoạt động v&agrave;o khoảng th&aacute;ng 8/2016 tuy nhi&ecirc;n đ&acirc;y được xem l&agrave; điểm săn h&igrave;nh được nhiều bạn trẻ v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Ra v&agrave;o miễn ph&iacute;, thiết kế của cung thiếu nhi với họa tiết trang tr&iacute; độc đ&aacute;o, tại đ&acirc;y c&ograve;n được bố tr&iacute; th&ecirc;m nhiều c&acirc;y hoa anh đ&agrave;o n&ecirc;n l&agrave; điểm sống &aacute;o kh&ocirc;ng thể bỏ qua của nhiều bạn trẻ.</p>\r\n\r\n<p>Bạn c&oacute; thể thu&ecirc; trang phục truyền thống H&agrave;n Quốc, Nhật Bản để chụp h&igrave;nh tại đ&acirc;y với mức gi&aacute; cho thu&ecirc; l&agrave; 20.000 đồng/bộ, d&ugrave;: 10.000 đồng/c&aacute;i.</p>\r\n\r\n<p>V&agrave; nếu l&agrave; một người y&ecirc;u th&iacute;ch c&aacute;c tấm h&igrave;nh nghệ thuật, sẽ kh&ocirc;ng kh&oacute; để bạn t&igrave;m thấy một tấm h&igrave;nh ưng &yacute; n&agrave;o tại cung thiếu nhi Đ&agrave; Nẵng khi lướt instagram.</p>\r\n\r\n<h2><strong>2. Đ&egrave;o Hải V&acirc;n</strong></h2>\r\n\r\n<p>Đ&egrave;o Hải V&acirc;n cắt ngang d&atilde;y n&uacute;i Bạch M&atilde;, l&agrave; con đ&egrave;o cắt ngang giữa hai tỉnh Thừa Thi&ecirc;n Huế v&agrave; th&agrave;nh phố Đ&agrave; Nẵng. Đ&egrave;o Hải V&acirc;n hay c&ograve;n gọi l&agrave; Đ&egrave;o M&acirc;y với chiều d&agrave;i v&agrave;o khoảng 20km, cao 500m so với mặt nước biển.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; cung đ&egrave;o được mệnh danh l&agrave; &ldquo;Đệ nhất h&ugrave;ng quan&rdquo;, do đ&oacute; để chi&ecirc;m ngưỡng được hết những vẻ đẹp độc đ&aacute;o của Hải V&acirc;n quan bạn n&ecirc;n di chuyển bằng xe m&aacute;y&nbsp;mới tận mắt ngắm hết những g&igrave; tinh t&uacute;y v&agrave; đẹp nhất ở con đường n&agrave;y.</p>\r\n\r\n<p>Trước đ&acirc;y, Hải V&acirc;n quan l&agrave; tuyến đường giao th&ocirc;ng ch&iacute;nh nối từ Huế v&agrave;o đến Đ&agrave; Nẵng. Tuy nhi&ecirc;n, về sau con đ&egrave;o được ph&aacute;t triển, mở rộng tuyến đường bộ qua hầm n&ecirc;n đoạn đường n&agrave;y bớt nguy hiểm hơn do số lượng c&aacute;c xe lớn cũng giảm.</p>\r\n\r\n<p>Từ Hải V&acirc;n quan bạn sẽ được chi&ecirc;m ngưỡng to&agrave;n cảnh th&agrave;nh phố Đ&agrave; Nẵng từ tr&ecirc;n cao tuyệt đẹp, mỗi kh&uacute;c cua tr&ecirc;n đ&egrave;o l&agrave; mỗi đoạn sống ảo được giới trẻ v&ocirc; c&ugrave;ng y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Bạn c&oacute; thể di chuyển đến Hải V&acirc;n quan v&agrave;o khoảng s&aacute;ng sớm hoặc chiều t&agrave; để được chi&ecirc;m ngưỡng cảnh m&acirc;y giăng khắp n&uacute;i từ con đ&egrave;o tuyệt đẹp n&agrave;y.</p>\r\n\r\n<h2><strong>3. B&aacute;n đảo Sơn Tr&agrave;</strong></h2>\r\n\r\n<p>Nếu c&oacute; thời gian bạn c&oacute; thể chạy dọc theo hai nh&aacute;nh: l&ecirc;n Linh Ứng Sơn Tr&agrave; hoặc l&ecirc;n n&uacute;i khỉ để kh&aacute;m ph&aacute; hết vẻ đẹp độc đ&aacute;o của b&aacute;n đảo Sơn Tr&agrave;.</p>\r\n\r\n<p>Được xem l&agrave; l&aacute; phổi xanh của th&agrave;nh phố Đ&agrave; Nẵng, từ b&aacute;n đảo Sơn Tr&agrave; bạn sẽ dễ d&agrave;ng để h&iacute;t thở bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh ở nơi đ&acirc;y.&nbsp;Kh&ocirc;ng ồn &agrave;o, n&aacute;o nhiệt, tr&aacute;i lại khung cảnh xanh m&aacute;t mắt từ biển cả cho đến c&aacute;c đồi n&uacute;i sau lưng sẽ khiến bạn cho&aacute;ng ngợp trước cảnh đẹp độc đ&aacute;o của b&aacute;n đảo xinh đẹp n&agrave;y.</p>\r\n\r\n<p>V&igrave; ho&agrave;n to&agrave;n t&aacute;ch biệt với những n&aacute;o nhiệt b&ecirc;n ngo&agrave;i n&ecirc;n b&aacute;n đảo Sơn Tr&agrave; cũng l&agrave; điểm lui tới được y&ecirc;u th&iacute;ch của nhiều bạn trẻ. V&agrave; kh&ocirc;ng kh&oacute; để bạn săn về c&aacute;c bức ảnh ưng &yacute; từ cảnh m&acirc;y n&uacute;i tuyệt đẹp từ b&aacute;n đảo Sơn Tr&agrave;.</p>\r\n\r\n<h2><strong>4. Thuận Phước Field</strong></h2>\r\n\r\n<p>Để đến Thuận Phước Field, du kh&aacute;ch c&oacute; thể di chuyển dọc theo đường Trần Hưng Đạo theo hướng đến cầu Thuận Phước, đến cuối đường sẽ thấy.</p>\r\n\r\n<p>Với phong cảnh tự nhi&ecirc;n, tho&aacute;ng đ&atilde;ng c&ugrave;ng lối thiết kế độc đ&aacute;o, Thuận Phước Field được đưa v&agrave;o khai th&aacute;c từ th&aacute;n 4/2016 v&agrave; l&agrave; điểm d&atilde; ngoại, khu picnic l&yacute; tưởng cho c&aacute;c bạn trẻ v&agrave; gia đ&igrave;nh v&agrave;o c&aacute;c dịp cuối tuần.</p>\r\n\r\n<p>Được x&acirc;y dựng nhằm mục đ&iacute;ch tạo ra studio chụp h&igrave;nh y&ecirc;u th&iacute;ch cho c&aacute;c cặp đ&ocirc;i chụp ảnh cưới v&agrave; quay MV độc đ&aacute;o. Được trang tr&iacute; với nhiều kiểu d&aacute;ng kh&aacute;c nhau từ một ng&ocirc;i l&agrave;ng cổ Ch&acirc;u &Acirc;u với h&igrave;nh ảnh những chiếc cối xay gi&oacute;, vườn hoa anh đ&agrave;o, những ch&uacute; b&ecirc; gặm cỏ.</p>\r\n\r\n<p><strong>Gi&aacute; v&eacute; v&agrave;o Thuận Phước Field</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch lẻ: 200.000 đồng/kh&aacute;ch. Thời gian 1 tiếng.</li>\r\n	<li>Kh&aacute;ch đo&agrave;n ekip cưới: 2.000.000 đồng/ekip/5 người. Thời gian 2 tiếng.</li>\r\n</ul>\r\n\r\n<p>Nếu đang muốn t&igrave;m kiếm một địa điểm để check-in, sống ảo cuối tuần th&igrave; Thuận Phước Field l&agrave; điểm dừng ch&acirc;n l&yacute; tưởng m&agrave; bạn kh&ocirc;ng thể bỏ qua.</p>\r\n\r\n<h2><strong>5. B&agrave; N&agrave; Hills</strong></h2>\r\n\r\n<p>Được biết đến l&agrave; ti&ecirc;n cảnh dưới hạ giới, B&agrave; N&agrave; Hills l&agrave; một trong những điểm đến đ&atilde; qu&aacute; nổi tiếng&nbsp;v&agrave; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với bất cứ vị kh&aacute;ch n&agrave;o.</p>\r\n\r\n<p>Ngự tr&ecirc;n một ngọn n&uacute;i cao, sở hữu kh&iacute; hậu 4 m&ugrave;a trong c&ugrave;ng một ng&agrave;y, B&agrave; N&agrave; Hills t&aacute;i hiện lại một khung cảnh Ch&acirc;u &Acirc;u tuyệt đẹp&nbsp;ngay giữa l&ograve;ng th&agrave;nh phố Đ&agrave; Nẵng.</p>\r\n\r\n<p>C&oacute; thể n&oacute;i, với B&agrave; N&agrave; Hills du kh&aacute;ch kh&ocirc;ng chỉ được thưởng ngoạn một bức tranh thi&ecirc;n nhi&ecirc;n k&igrave; th&uacute; với cảnh m&acirc;y trời độc đ&aacute;o m&agrave; n&eacute;t cổ k&iacute;nh, l&atilde;ng mạn từ khu l&agrave;ng Ph&aacute;p cho đến khung cảnh n&ecirc;n thơ của vườn hoa Le Jardin D&rsquo;Amour hay khu hầm rượu Debay đều khiến du kh&aacute;ch như được tan chảy.</p>\r\n\r\n<p>Mỗi g&oacute;c của B&agrave; N&agrave; Hills đều dễ d&agrave;ng gi&uacute;p bạn thu lượm về cho m&igrave;nh h&agrave;ng ng&agrave;n bức h&igrave;nh đẹp. V&igrave; vậy, ngo&agrave;i tham gia h&agrave;ng loạt c&aacute;c tr&ograve; chơi th&uacute; vị, h&ograve;a v&agrave;o chốn bồng lai ti&ecirc;n cảnh th&igrave; đ&acirc;y xứng đ&aacute;ng l&agrave; điểm lưu tr&uacute; tuyệt vời để bạn kh&aacute;m ph&aacute; khi đến Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong>Gi&aacute; v&eacute; tham quan B&agrave; N&agrave; Hills</strong></p>\r\n\r\n<ul>\r\n	<li>Người lớn: 500.000 đồng/v&eacute;</li>\r\n	<li>Trẻ em dưới 1m: 200.000 đồng/v&eacute;</li>\r\n	<li>Trẻ em tr&ecirc;n 1m: T&iacute;nh như người lớn.</li>\r\n</ul>\r\n\r\n<h2><strong>6. A La Carte</strong></h2>\r\n\r\n<p>Nằm tr&ecirc;n tầng cao nhất thuộc kh&aacute;ch sạn A La Carte, c&oacute; tọa lạc s&aacute;t n&aacute;ch b&atilde;i biển Mỹ Kh&ecirc; tuyệt đẹp, bể bơi v&ocirc; cực tại A La Carte được xem l&agrave; điểm sống ảo chất lừ của nhiều bạn trẻ.</p>\r\n\r\n<p>Đến với A La Carte ngo&agrave;i được nh&acirc;m nhi những ly cocktail thơm ngon, say m&igrave;nh trong đ&ecirc;m nhạc s&ocirc;i động bạn c&ograve;n được chi&ecirc;m ngưỡng cảnh biển cả bất tận hay to&agrave;n cảnh th&agrave;nh phố Đ&agrave; Nẵng từ tr&ecirc;n cao tuyệt đẹp.</p>\r\n\r\n<p>Với mức gi&aacute; cho c&aacute;c loại nước uống, tắm bể bơi v&ocirc; cực v&agrave;o khoảng từ 60.000 &ndash; 300.000 đồng/loại nước uống. Đ&acirc;y hứa hẹn l&agrave; điểm lui tới m&agrave; bạn kh&ocirc;ng thể bỏ qua nếu c&oacute; dịp gh&eacute; thăm th&agrave;nh phố biển mộng mơ n&agrave;y.</p>\r\n\r\n<h2><strong>7. Cầu t&agrave;u T&igrave;nh Y&ecirc;u</strong></h2>\r\n\r\n<p>Cầu tọa lạc ngay cầu Rồng, đường Trần Hưng Đạo, Sơn Tr&agrave;, Đ&agrave; Nẵng nơi đ&acirc;y l&agrave; điểm đến được y&ecirc;u th&iacute;ch của h&agrave;ng trăm bạn trẻ. C&ocirc;ng tr&igrave;nh n&agrave;y lấy &yacute; tưởng từ những cầu kh&oacute;a t&igrave;nh y&ecirc;u nổi tiếng như Pont des Arts (Ph&aacute;p), Hohenzollern (Đức), Milvio (Italya)&hellip;</p>\r\n\r\n<p>C&acirc;y cầu t&agrave;u T&igrave;nh Y&ecirc;u cũng được xem l&agrave; một biểu tượng mới của th&agrave;nh phố Đ&agrave; Nẵng. Kh&ocirc;ng chỉ sở hữu kiến tr&uacute;c độc đ&aacute;o m&agrave; nơi đ&acirc;y c&ograve;n chứa đựng nhiều &yacute; nghĩa do đ&oacute; kh&ocirc;ng kh&oacute; để nơi đ&acirc;y trở th&agrave;nh một trong những điểm đến được y&ecirc;u th&iacute;ch bởi nhiều bạn trẻ.</p>\r\n\r\n<p>Để săn về những bức h&igrave;nh ưng &yacute; nhất bạn n&ecirc;n gh&eacute; thăm cầu t&agrave;u T&igrave;nh Y&ecirc;u v&agrave;o khoảng 4h chiều hoặc sau 10h tối. V&igrave; l&uacute;c n&agrave;y, lượt kh&aacute;ch tham quan cầu đ&atilde; giảm bớt, gi&uacute;p bạn lấy g&oacute;c chụp ưng &yacute; nhất.</p>\r\n\r\n<p>Với nhiều g&oacute;c chụp ưng &yacute; c&ugrave;ng c&aacute;c điểm đến ưng &yacute;, những điểm hẹn mới toanh như cung thiếu nhi, Thuận Phước Field,&hellip; chắc chắn sẽ l&agrave; điểm sống ảo cực th&iacute;ch để bạn thu về cho m&igrave;nh những bức h&igrave;nh đẹp nhất.</p>\r\n', 'image/post/1542470254.jpg', 1, '2021-01-14 13:54:31', 1, '', 191, 0),
(7, 'Cách tiết kiệm chi phí khi du lịch Đà Nẵng vào dịp Tết Nguyên Đán', '<p>Tết l&agrave; thời gian nghỉ nhiều, rất ph&ugrave; hợp đối với những ai muốn c&oacute; một chuyến đi Đ&agrave; Nẵng v&agrave;o dịp Tết để thỏa l&ograve;ng ước mong. Bỏ ra một khoản thời gian d&agrave;i để đi cộng chi ph&iacute; đắt đỏ ở đất nước kinh tế bậc nhất thế giới quả l&agrave; 1 b&agrave;i to&aacute;n chi ti&ecirc;u cho nhiều người, tuy nhi&ecirc;n bạn vẫn c&oacute; thể tiết kiệm được kha kh&aacute; ng&acirc;n s&aacute;ch của m&igrave;nh nếu l&agrave;m theo những b&iacute; quyết sau đ&acirc;y:</p>\r\n\r\n<p><strong>1. Đặt v&eacute; hoặc đặt tour sớm trước &iacute;t nhất 2 th&aacute;ng</strong></p>\r\n\r\n<p>Nếu bạn đ&atilde; quyết định đi du lịch Đ&agrave; Nẵng&nbsp;v&agrave;o dịp Tết th&igrave; n&ecirc;n đặt v&eacute;, đặt tour v&agrave; c&aacute;c dịch vụ đi k&egrave;m c&agrave;ng sớm c&agrave;ng tốt. Đặt dịch vụ sớm sẽ gi&uacute;p bạn lấy được gi&aacute; tốt hơn nhiều so với đặt cận ng&agrave;y, b&ecirc;n cạnh đ&oacute; cũng kh&ocirc;ng sợ hết chỗ.</p>\r\n\r\n<p>Ngo&agrave;i ra gần Tết khoảng độ 2 3 th&aacute;ng l&agrave; thời điểm c&aacute;c c&ocirc;ng ty du lịch tung nhiều chương tr&igrave;nh khuyến m&atilde;i tour tết để th&uacute;c đẩy thị trường du lịch m&ugrave;a tết. Bạn chỉ cần theo d&otilde;i thong tin từ c&ocirc;ng ty cập nhật, lựa chọn sẵn đất nước m&igrave;nh mong muốn v&agrave; săn tour th&ocirc;i.</p>\r\n\r\n<p><strong>2. L&ecirc;n kế hoạch chi ti&ecirc;u cụ thể cho chuyến đi</strong><br />\r\n<br />\r\nTrước khi đi bạn n&ecirc;n l&agrave;m một bản kế hoạch chi ph&iacute;, ở mỗi địa điểm bạn sẽ chi ti&ecirc;u những g&igrave;, những thứ cần mua sắm g&igrave; v&agrave; xem lại ng&acirc;n s&aacute;ch của m&igrave;nh c&oacute; ph&ugrave; hợp kh&ocirc;ng? Một h&agrave;nh tr&igrave;nh d&agrave;i cũng c&oacute; lợi khi bạn c&oacute; thể c&acirc;n nhắc việc lựa chọn chơi g&igrave; ở 1 điểm v&agrave; ăn uống đặc sản hay mua sắm ở 1 điểm kh&aacute;c. Bạn cần chọn cụ thể để c&oacute; thể trải nghiệm những điều đặc biệt v&agrave; đ&aacute;ng thử nhất.</p>\r\n\r\n<p>V&agrave; khi đi bạn cũng n&ecirc;n mang theo bản kế hoạch n&agrave;y để tr&aacute;nh việc ti&ecirc;u x&agrave;i qu&aacute; tay m&agrave; kh&ocirc;ng biết nh&eacute;!</p>\r\n\r\n<p><strong>3. Mua sắm h&agrave;ng hiệu trong trung t&acirc;m thương mại lớn</strong><br />\r\nNếu bạn l&agrave; t&iacute;n đồ mua sắm v&agrave; mua h&agrave;ng hiệu của những h&agrave;ng quốc tế lớn, vậy th&igrave; bạn n&ecirc;n mua trong c&aacute;c trung t&acirc;m thương mại lớn ở Đ&agrave; Nẵng, kh&ocirc;ng mua ngo&agrave;i chợ hay c&aacute;c điểm bu&ocirc;n b&aacute;n nhỏ lẻ để tr&aacute;nh h&agrave;ng giả nh&eacute;.</p>\r\n\r\n<p>Ngo&agrave;i ra một số thương hiệu hay trung t&acirc;m mua sắm sẽ c&oacute; ho&agrave;n thuế cho du kh&aacute;ch v&igrave; vậy khi mua sắm bạn h&atilde;y giữ h&oacute;a đơn lại để c&oacute; thể ho&agrave;n lại một &iacute;t tiền cho bạn.</p>\r\n\r\n<p>Tuy nhi&ecirc;n một mẹo kh&aacute;c l&agrave; bạn c&oacute; thể mua sắm c&aacute;c mặt hang miễn thuế ở s&acirc;n bay, gi&aacute; sẽ rẻ hơn rất nhiều v&agrave; trong c&aacute;c s&acirc;n bay lớn th&igrave; c&oacute; đủ mọi thương hiệu bạn cần thiết đấy.<br />\r\n<br />\r\n<strong>4. Mua vật phẩm lưu niệm ở chợ địa phương</strong></p>\r\n\r\n<p>Đối với những vật phẩm lưu niệm c&oacute; gi&aacute; trị nhỏ, mang t&iacute;nh chất địa phương th&igrave; bạn kh&ocirc;ng n&ecirc;n mua trong trung t&acirc;m thương mại lớn v&igrave; chi ph&iacute; sẽ cao hơn rất nhiều so với mua ở c&aacute;c khu chợ địa phương hay chợ đ&ecirc;m. Tuy nhi&ecirc;n bạn h&atilde;y nhớ trả gi&aacute; nh&eacute;, thường họ sẽ rao với gi&aacute; gấp 2,3 lần gi&aacute; trị thực n&ecirc;n d&ugrave; c&oacute; rẻ hơn trong trung t&acirc;m nhưng vẫn n&ecirc;n trả gi&aacute; để tr&aacute;nh bị lừa nh&eacute;.</p>\r\n\r\n<p><strong>5. Vui chơi, sống ảo ở những nơi ho&agrave;n to&agrave;n miễn ph&iacute;</strong></p>\r\n\r\n<p>Ng&agrave;y Tết, rất nhiều dịch vụ&nbsp;vui chơi được diễn ra ở Đ&agrave; Nẵng. Để tiết kiệm chi ph&iacute; cho bản th&acirc;n, bạn n&ecirc;n đến những địa điểm kh&ocirc;ng cần tốn tiền hoặc kh&ocirc;ng tốn nhiều tiền như: vườn hoa ch&agrave;o mừng Tết Nguy&ecirc;n Đ&aacute;n, tham quan check-in tại c&aacute;c c&acirc;y cầu nổi tiếng của Đ&agrave; Nẵng, h&ograve;a m&igrave;nh v&agrave;o c&aacute;c đo&agrave;n diễu h&agrave;nh mừng Tết nguy&ecirc;n đ&aacute;n, tắm biển, l&ecirc;n b&aacute;n đảo Sơn Tr&agrave; hay c&aacute;c c&ocirc;ng vi&ecirc;n triễn l&atilde;m,...</p>\r\n', 'image/post/Wanderlust-Tips-kham-pha-3-dia-diem-check-da-nang-moi-toanh-3.png', 3, '2021-01-14 16:50:19', 1, '', 35, 0),
(8, 'Đà Nẵng Golden Bay - Nơi tận hưởng cuộc sống tuyệt vời', '<h3><strong>Nơi tận hưởng cuộc sống tuyệt vời</strong></h3>\r\n\r\n<p>Danang Golden Bay &ndash; kh&aacute;ch sạn 5 sao với những dịch vụ nghỉ dưỡng sang trọng v&agrave; đẳng cấp. Sở hữu địa thế tuyệt vời nơi của d&ograve;ng s&ocirc;ng H&agrave;n đổ ra biển Đ&ocirc;ng xanh ngắt, kh&aacute;ch sạn Danang Golden Bay l&agrave; điểm giao thoa h&ograve;a hợp giữa n&uacute;i, trời v&agrave; biển, l&agrave; địa điểm l&yacute; tưởng khởi đầu cho h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; th&agrave;nh phố Đ&agrave; Nẵng năng động, vẻ đẹp quyến rũ của biển Đ&agrave; Nẵng, B&aacute;n đảo Sơn Tr&agrave; xanh tươi v&agrave; kh&aacute;m ph&aacute; h&agrave;nh tr&igrave;nh di sản miền Trung từ Cố đ&ocirc; Huế cổ k&iacute;nh, Hội An thơ mộng hay th&aacute;nh địa Mỹ Sơn huyền b&iacute;.</p>\r\n\r\n<p>Hệ thống ph&ograve;ng nghỉ hiện đại v&agrave; rộng r&atilde;i với tầm nh&igrave;n tuyệt đẹp ra d&ograve;ng s&ocirc;ng thơ mộng, đường ch&acirc;n trời với những t&ograve;a nh&agrave; hiện đại hay vịnh Đ&agrave; Nẵng. Ẩm thực đa dạng, đặc biệt sỡ hữu hồ bơi v&ocirc; cực d&aacute;t v&agrave;ng 24K cao nhất v&agrave; lớn nhất thế giới c&ugrave;ng tầm nh&igrave;n to&agrave;n cảnh ra th&agrave;nh phố Đ&agrave; Nẵng xinh đẹp sẽ ho&agrave;n thiện h&agrave;nh tr&igrave;nh trải nghiệm đầy th&uacute; vị của bạn.</p>\r\n\r\n<p>&ndash; 949 ph&ograve;ng v&agrave; căn hộ với nội thất d&aacute;t v&agrave;ng</p>\r\n\r\n<p>&ndash; 07 nh&agrave; h&agrave;ng v&agrave; bar với tầm nh&igrave;n tuyệt diệu ra th&agrave;nh phố Đ&agrave; Nẵng</p>\r\n\r\n<p>Lấy cảm hứng từ những di sản thế giới, kh&aacute;ch sạn Danang Golden Bay mang lại cảm gi&aacute;c thư gi&atilde;n tuyệt đối trong kh&ocirc;ng gian đậm chất ch&acirc;u &Aacute; v&agrave; kiến tr&uacute;c hiện đại h&ograve;a quyện v&agrave;o nhau. 949 ph&ograve;ng, bao gồm cả 92 căn hộ c&oacute; k&iacute;ch thước kh&aacute;c nhau với hướng nh&igrave;n 360 độ ra biển Đ&ocirc;ng, n&uacute;i Sơn Tr&agrave;, s&ocirc;ng H&agrave;n v&agrave; th&agrave;nh phố Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong><em>Hẹn gặp qu&yacute; kh&aacute;ch tại Golden Bay</em></strong></p>\r\n', 'image/post/Feature.jpg', 19, '2021-01-15 10:16:29', 1, '', 2, 0),
(9, 'Một Ngày Tuyệt Vời Tại Đà Nẵng | Kinh Nghiệm Du Lịch Đà Nẵng', '<p>Thời gian th&iacute;ch hợp để đi du lịch Đ&agrave; Nẵng<br />\r\nCũng như đa phần c&aacute;c tỉnh du lịch biển kh&aacute;c ở Việt Nam, th&aacute;ng 9 đến th&aacute;ng 2 l&agrave; thời điểm Đ&agrave; Nẵng mưa, b&atilde;o nhiều, kh&ocirc;ng qu&aacute; th&iacute;ch hợp cho một chuyến du lịch biển. Tuy nhi&ecirc;n, do địa h&igrave;nh ở Đ&agrave; Nẵng rất đa dạng, kh&ocirc;ng chỉ c&oacute; BIỂN m&agrave; c&oacute; cả N&Uacute;I, S&Ocirc;NG v&agrave; ĐỒNG BẰNG n&ecirc;n du lịch Đ&agrave; Nẵng v&agrave;o m&ugrave;a n&agrave;o cũng c&oacute; sức h&uacute;t ri&ecirc;ng của n&oacute;. Tất nhi&ecirc;n, cũng c&oacute; những thời điểm trong năm thuộc trường hợp đặc biệt như mưa b&atilde;o bạn n&ecirc;n coi thời tiết trước khi lựa chọn đi nh&eacute;.</p>\r\n\r\n<p>Thời điểm th&iacute;ch hợp nhất l&agrave; để đi du lịch Đ&agrave; Nẵng l&agrave; từ th&aacute;ng 3 đến th&aacute;ng 8. Thời điểm n&agrave;y Đ&agrave; Nẵng bước v&agrave;o m&ugrave;a kh&ocirc;, &iacute;t mưa, trời trong xanh cực k&igrave; th&iacute;ch hợp cho chuyến đi du lịch của bạn. Hơn nữa, thời tiết của Đ&agrave; Nẵng l&agrave; sự giao thoa của miền Bắc v&agrave; miền Nam n&ecirc;n cũng thuận hơn 2 miền kia rất nhiều, ban ng&agrave;y trời nắng kh&ocirc;ng n&oacute;ng, gắt, khắc nghiệt như ngo&agrave;i Bắc, ban đ&ecirc;m th&igrave; cực k&igrave; m&aacute;t mẻ. Những điều kiện thuận lợi về thời tiết m&agrave; kh&ocirc;ng phải tỉnh th&agrave;nh n&agrave;o cũng c&oacute; được đ&acirc;u nh&eacute;!</p>\r\n\r\n<p>NOTE: M&igrave;nh thấy mọi người hay đi v&agrave;o th&aacute;ng 5 trở đi, một phần v&igrave; thời tiết từ th&aacute;ng 5 trở đi kh&aacute; n&oacute;ng nực, một chuyến đi du lịch biển sẽ gi&uacute;p giải tỏa được rất nhiều thứ, một phần v&igrave; đ&acirc;y l&agrave; thời điểm học sinh, sinh vi&ecirc;n được nghỉ học, c&oacute; nhiều thời gian đi du lịch c&ugrave;ng gia đ&igrave;nh, bạn b&egrave;&hellip; Tuy nhi&ecirc;n, bản th&acirc;n m&igrave;nh thấy thời điểm đẹp nhất để đi du lịch Đ&agrave; Nẵng tự t&uacute;c l&agrave; th&aacute;ng 3 v&agrave; th&aacute;ng 4, bởi thời điểm n&agrave;y Đ&agrave; Nẵng rất m&aacute;t mẻ, dễ chịu, cũng hiếm khi mưa, rồi gi&aacute; kh&aacute;ch sạn, dịch vụ vẫn ở mức gi&aacute; cho m&ugrave;a thấp điểm hơn nữa kh&ocirc;ng đ&ocirc;ng đ&uacute;c, chen ch&uacute;c như thời điểm từ th&aacute;ng 5 trở đi. Ch&iacute;nh bản th&acirc;n m&igrave;nh đ&atilde; rất nhiều lần đi du lịch Đ&agrave; Nẵng v&agrave;o thời gian n&agrave;y!</p>\r\n\r\n<p>Để chuẩn bị tốt cho một kỳ nghỉ hợp l&yacute;, theo Kinh nghiệm du lịch Đ&agrave; Nẵng tự t&uacute;c của m&igrave;nh đ&atilde; trải qua, bạn sẽ cần phải chuẩn bị kha kh&aacute; nhiều thứ nhỉ? V&agrave; dưới đ&acirc;y l&agrave; hai th&ocirc;ng tin chắc chắn bạn sẽ rất quan t&acirc;m, n&ecirc;n ưu ti&ecirc;n chuẩn bị trước cho chuyến đi của m&igrave;nh l&agrave; kh&aacute;ch sạn v&agrave; phương tiện di chuyến đến Đ&agrave; Nẵng.</p>\r\n\r\n<p>Những KH&Aacute;CH SẠN n&ecirc;n Ở khi đi Du lịch Đ&agrave; Nẵng<br />\r\nKh&ocirc;ng biết c&aacute;c bạn thế n&agrave;o, nhưng với ri&ecirc;ng m&igrave;nh khi đ&atilde; đi du lịch Đ&agrave; Nẵng tự t&uacute;c th&igrave; sẽ lựa chọn kh&aacute;ch sạn gần biển Mỹ Kh&ecirc;, bất kể m&ugrave;a cao điểm hay thấp điểm. Bởi khu gần biển thuận tiện cho việc đi lại c&aacute;c địa điểm du lịch, m&aacute;t mẻ, tho&aacute;ng đ&atilde;ng, gi&uacute;p m&igrave;nh tho&aacute;t được ra c&aacute;i kh&ocirc;ng kh&iacute; ngột ngạt ở H&agrave; Nội &ndash; S&agrave;i G&ograve;n, điều m&agrave; ng&agrave;y n&agrave;o m&igrave;nh cũng tiếp x&uacute;c. D&ugrave; th&agrave;nh phố Đ&agrave; Nẵng hiện nay kh&ocirc;ng qu&aacute; nhộn nhịp, tấp nập như H&agrave; Nội hay S&agrave;i G&ograve;n. Khu vực biển Mỹ Kh&ecirc; rất gần c&aacute;c địa điểm ăn uống hơn, kh&ocirc;ng giống như b&ecirc;n trung t&acirc;m lu&ocirc;n c&oacute; t&igrave;nh trạng kẹt xe, v&agrave; dường như cuộc sống nơi đ&acirc;y đ&atilde; nhanh v&agrave; gấp g&aacute;p hơn trước kh&aacute; nhiều.</p>\r\n\r\n<p>THAM KHẢO KỸ HƠN: Những kh&aacute;ch sạn Đ&agrave; Nẵng gần biển Đẹp đang giảm 50%</p>\r\n\r\n<p>M&igrave;nh đ&atilde; từng được trải nghiệm ở Đ&agrave; Nẵng rất nhiều loại h&igrave;nh, kiểu kh&aacute;ch sạn kh&aacute;c nhau từ hostel, homestay, nh&agrave; nghỉ, kh&aacute;ch sạn 1 sao, 2 sao, 3 sao hay resort 4 sao&hellip; Trong đ&oacute;, cũng giống như rất nhiều bạn đọc blog, kh&aacute;ch sạn 1 sao v&agrave; 2 sao vẫn l&agrave; nhiều nhất. V&agrave; trong b&agrave;i viết n&agrave;y, m&igrave;nh cũng xin tập trung chia sẻ về c&aacute;c kh&aacute;ch sạn chất lượng, gi&aacute; cả hợp l&yacute; ở tầm mức 1 sao đến 3 sao. Những th&ocirc;ng tin kh&aacute;ch sạn dưới đ&acirc;y đều l&agrave; những kh&aacute;ch sạn m&igrave;nh đ&atilde; trực tiếp trải nghiệm trong những lần tới Đ&agrave; Nẵng. C&oacute; kh&aacute;ch sạn m&igrave;nh ở một lần, c&oacute; kh&aacute;ch sạn ở tới v&agrave;i lần, thậm ch&iacute; c&oacute; kh&aacute;ch sạn m&igrave;nh ở đ&oacute; cả tuần trời. Rất mong những trải nghiệm n&agrave;y hữu &iacute;ch cho bạn!</p>\r\n', 'image/post/du-lich-da-nang-1024x576.jpg', 21, '2021-01-15 15:46:03', 1, '', 3, 0),
(10, '5 món quà vặt hấp dẫn nhất ở Đà Nẵng', '<p>Thưởng thức c&aacute;c m&oacute;n ăn ngon l&agrave; một phần kh&ocirc;ng thể thiếu với kh&aacute;ch du lịch Đ&agrave; Nẵng. B&ecirc;n cạnh những đặc sản đ&atilde; l&agrave;m n&ecirc;n thương hiệu, Đ&agrave; Nẵng c&ograve;n c&oacute; nhiều m&oacute;n ăn vặt v&ocirc; c&ugrave;ng hấp dẫn với gi&aacute; rẻ bất ngờ như: B&aacute;nh tr&aacute;ng kẹp, ốc h&uacute;t, kem, b&ograve; kh&ocirc;&hellip;<br />\r\n&nbsp;</p>\r\n\r\n<h2>1. B&aacute;nh tr&aacute;ng kẹp</h2>\r\n\r\n<p>Phải n&oacute;i rằng b&aacute;nh tr&aacute;ng kẹp kh&ocirc;ng c&oacute; nơi n&agrave;o ngon m&agrave; đậm đ&agrave;, đa dạng như ở Đ&agrave; Nẵng. Từ một loại b&aacute;nh tr&aacute;ng tương ban đầu, người Đ&agrave; Nẵng đ&atilde; chế biến ra th&agrave;nh đủ loại b&aacute;nh tr&aacute;ng kẹp pate, kẹp trứng, b&ograve; kh&ocirc; với v&ocirc; v&agrave;n kiểu h&igrave;nh: loại th&igrave; cuốn, loại th&igrave; trải rộng, loại th&igrave; ướt, loại th&igrave; kh&ocirc;, ốp la&hellip; Nhưng d&ugrave; l&agrave; loại b&aacute;nh tr&aacute;ng n&agrave;o cũng phải chấm với loại nước tương chuy&ecirc;n dụng c&oacute; m&agrave;u đỏ au của xốt b&ograve; kh&ocirc;, s&aacute;nh mịn quyện lẫn vị mặn ngọt c&ugrave;ng ch&uacute;t cay nồng của ớt rim th&igrave; mới ngon v&agrave; hợp vị.<br />\r\n<em>B&aacute;ng tr&aacute;ng c&oacute; gi&aacute; b&aacute;n từ 8.000đ/1 dĩa trở l&ecirc;n. Tại Đ&agrave; Nẵng c&oacute; rất nhiều tiệm b&aacute;n m&oacute;n n&agrave;y, nhưng ngon nhất l&agrave; ở ng&otilde; gần kh&aacute;ch sạn Thăng Long, đường Điện Bi&ecirc;n Phủ.</em></p>\r\n\r\n<h2>2. Kem x&ocirc;i</h2>\r\n\r\n<p>Với thời tiết nắng n&oacute;ng, oi bức của miền Trung th&igrave; c&ograve;n tuyệt hơn khi nh&acirc;m nhi những muỗng kem m&aacute;t lạnh. Kem x&ocirc;i l&agrave; một m&oacute;n qu&agrave; vặt kh&aacute; th&uacute; vị của Đ&agrave; Nẵng. Vị m&aacute;t lạnh, thơm lừng của những vi&ecirc;n kem socola, sầu ri&ecirc;ng, vani&hellip; quyện với từng hạt x&ocirc;i dẻo nấu chung với đậu xanh được chế biến cầu kỳ, th&ecirc;m v&agrave;o đ&oacute; l&agrave; ch&uacute;t b&eacute;o ngậy của sợi dừa sẽ khiến bạn kh&ocirc;ng thể qu&ecirc;n khi đ&atilde; một lần thưởng thức.<br />\r\n<em>Gi&aacute; khoảng từ 7.000đ- 12.000đ/1 ly ở đường Ng&ocirc; Sĩ Li&ecirc;n, H&ograve;a Kh&aacute;nh.</em></p>\r\n\r\n<h2>3. T&agrave;u hũ cocktail</h2>\r\n\r\n<p>Cũng l&agrave; l&agrave;m từ đậu n&agrave;nh nhưng t&agrave;u hũ ở Đ&agrave; Nẵng rất đặc, mịn v&agrave; kết d&iacute;nh cao, khi đổ ra đĩa kh&ocirc;ng vỡ n&aacute;t n&ecirc;n thoạt nh&igrave;n người ta sẽ nghĩ ngay đến m&oacute;n rau c&acirc;u m&aacute;t lạnh. T&agrave;u hũ thường được đựng trong những chiếc khu&ocirc;n h&igrave;nh tr&ograve;n. T&ugrave;y theo sở th&iacute;ch của kh&aacute;ch m&agrave; chủ tiệm k&egrave;m đ&aacute; v&agrave; c&aacute;c hương vị, hoa quả kh&aacute;c như s&ocirc; c&ocirc; la, sầu ri&ecirc;ng hay cocktail (hỗn hợp tr&aacute;i c&acirc;y trộn c&ugrave;ng siro)&hellip; M&uacute;c từng th&igrave;a t&agrave;u hũ nhỏ đưa v&agrave;o miệng, bạn sẽ cảm nhận r&otilde; rệt được vị thơm, b&ugrave;i, b&eacute;o, mịn của đậu n&agrave;nh l&agrave;m k&igrave; c&ocirc;ng h&ograve;a chung vị ngọt của đường.<br />\r\n<em>Một điểm lưu &yacute; nhỏ l&agrave; t&agrave;u hũ phải ăn nhanh bởi nếu để đ&aacute; tan hết th&igrave; vị của t&agrave;u hũ sẽ nhạt đi phần n&agrave;o. Bạn c&oacute; thể gh&eacute; đường Nguyễn Văn Linh để thưởng thức m&oacute;n t&agrave;u hũ ngon với gi&aacute; từ 14.000đ/1 đĩa.</em></p>\r\n\r\n<h2>4. Sữa chua muối v&agrave; m&iacute;t lạnh</h2>\r\n\r\n<p>Điểm kh&aacute;c biệt của sữa chua Đ&agrave; Nẵng kh&ocirc;ng chỉ nằm ở trong những chiếc hũ nhựa nhỏ xinh m&agrave; c&ograve;n l&agrave; bởi sự kết hợp v&ocirc; c&ugrave;ng độc đ&aacute;o của vị chua chua ngọt ngọt với ch&uacute;t mặn mặn của muối. Thoạt nghe, bạn sẽ cảm thấy c&oacute; ch&uacute;t v&ocirc; l&yacute;, nhưng nếu đ&atilde; nếm thử, bạn sẽ ph&aacute;t hiện ra ch&iacute;nh c&aacute;i mặn của muối phần n&agrave;o gi&uacute;p người ăn đỡ ng&aacute;n hơn.<br />\r\n<em>Sữa chua muối b&aacute;n nhiều ở Quận 3, gần cầu Nguyễn Văn Trỗi với gi&aacute; si&ecirc;u rẻ chỉ 10.000/ khay. Mỗi khay gồm 10 hũ. Ngo&agrave;i sữa chua th&igrave; th&igrave; những qu&aacute;n n&agrave;y c&ograve;n b&aacute;n m&iacute;t ướp lạnh rất ngon với gi&aacute; 5000/ bao.</em></p>\r\n\r\n<h2>5. Ốc h&uacute;t</h2>\r\n\r\n<p>L&agrave; một th&agrave;nh phố ven biển n&ecirc;n ốc dường như trở th&agrave;nh một m&oacute;n ăn vặt quen thuộc của người d&acirc;n nơi đ&acirc;y. Ốc sau khi được ng&acirc;m với nước vo gạo để r&atilde; hết đất sẽ được cắt đ&iacute;t rồi đem x&agrave;o chung với ớt, nước cốt dừa, gừng xả để những gia vị ấy thấm đều v&agrave;o từng con. Ốc h&uacute;t thường được ăn k&egrave;m với đu đủ xanh v&agrave; b&aacute;nh tr&aacute;ng. Chỉ nghĩ đến c&aacute;i gi&ograve;n tan của b&aacute;nh tr&aacute;ng quyệt với ốc thơ, nước ốc sền sệt thơm lừng c&oacute; đủ vị mặn ngọt, cay b&ugrave;i cũng đủ &ldquo;bắt th&egrave;m&rdquo; những người đ&atilde; từng được thưởng thức m&oacute;n qu&agrave; d&acirc;n d&atilde; n&agrave;y của Đ&agrave; Nẵng.<br />\r\n<em>Gi&aacute; một đĩa ốc h&uacute;t trung b&igrave;nh từ 20.000đ trở l&ecirc;n, với c&aacute;c loại ốc ngon như ốc đ&aacute;, ốc bưu&hellip; th&igrave; gi&aacute; sẽ nhỉnh hơn một ch&uacute;t. Ở Đ&agrave; Nẵng c&oacute; rất nhiều qu&aacute;n ốc nhưng được nhiều người khen nhất phải kể đến qu&aacute;n ốc tr&ecirc;n đường L&ecirc; Duẩn.</em></p>\r\n', 'image/post/banh trang.jpg', 20, '2021-01-15 23:10:29', 1, '', 8, 0),
(11, 'Đừng ngủ nướng nữa, khám phá thế giới thôi', '<p>Hmmmmmmmmmmmmmmmmmmmmmmmmmmm</p>\r\n\r\n<p>test thử th&ocirc;i nhaaaaaaaa</p>\r\n', 'image/post/hinh-nen-nhung-chu-cun-cho-may-tinh-6.jpg', 7, '2021-01-16 07:55:25', 0, '', 0, 0),
(12, 'Du lịch Đà Nẵng', '<p>Testttt</p>\r\n', 'image/post/hinh-anh-nhung-chu-cho-de-thuong-nhat.jpg', 2, '2021-01-16 09:30:45', 1, '', 2, 0),
(13, 'Xin chào Việt Nam', '<p>Xin ch&agrave;o Việt Nam</p>\r\n', 'image/post/du-lich-da-nang-thien-duong-mien-trung.jpg', 11, '2021-05-07 11:58:27', 0, NULL, 0, 0),
(14, 'Xin chào Việt Nam', '<p>Xin ch&agrave;o Việt Nam</p>\r\n', 'image/post/bai-viet.jpg', 11, '2021-05-08 00:50:03', 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `namerole` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `namerole`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'hotel');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) NOT NULL,
  `nameroom` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `final_price` float DEFAULT NULL,
  `policy` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `beds` varchar(255) DEFAULT NULL,
  `breakfast` int(11) DEFAULT NULL,
  `description` text,
  `discount` int(11) DEFAULT NULL,
  `hotel` int(11) DEFAULT NULL,
  `typeroom` int(11) DEFAULT NULL,
  `maximun` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `nameroom`, `image`, `amount`, `price`, `final_price`, `policy`, `area`, `direction`, `beds`, `breakfast`, `description`, `discount`, `hotel`, `typeroom`, `maximun`, `status`) VALUES
(1, 'Superior Giường king, Quang cảnh Thành Phố', 'image/Superiorking_tp.jpg', 5, 1233000, 733000, 0, 25, 'Hướng phố', '1 giường đôi rất lớn', 1, '<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute;c mức ph&iacute; tr&ecirc;n chưa bao gồm thuế, ph&iacute;</li>\r\n	<li>Giường phụ kh&ocirc;ng &aacute;p dụng cho loại ph&ograve;ng Superior Giường king, Quang cảnh Th&agrave;nh Phố</li>\r\n	<li>1 ph&ograve;ng được th&ecirc;m tối đa v&agrave; 1 trẻ em (tuỳ v&agrave;o loại ph&ograve;ng)</li>\r\n	<li>Trẻ từ 12 tuổi trở l&ecirc;n được t&iacute;nh như người lớn</li>\r\n	<li>Vui l&ograve;ng nhập c&aacute;c y&ecirc;u cầu đặc biệt v&agrave;o mục Y&ecirc;u cầu kh&aacute;c b&ecirc;n dưới</li>\r\n	<li>Th&ocirc;ng tin li&ecirc;n hệ để được hỗ trợ</li>\r\n</ul>\r\n\r\n<p><strong>Ch&iacute;nh s&aacute;ch hủy</strong><br />\r\nĐ&acirc;y l&agrave; gi&aacute; đặc biệt n&ecirc;n kh&ocirc;ng được ho&agrave;n huỷ.<br />\r\nBạn sẽ kh&ocirc;ng được ho&agrave;n trả tiền khi thay đổi hay huỷ đơn đặt ph&ograve;ng n&agrave;y.</p>\r\n', 500000, 1, 2, 2, 5),
(2, 'Superior Giường king, Quang cảnh Một góc biển', 'image/Superiorking_beach.jpg', 5, 1905000, 576000, 0, 28, 'Hướng biển', '1 giường đôi rất lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 67, 1, 2, 2, 0),
(3, 'Junior Suite, ban công, trực diện biển', 'image/Junior Suite.jpg', 4, 3687000, 672000, 0, 32, 'Hướng biển', '2 giường đơn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 80, 1, 1, 2, 4),
(4, 'SALA Suite, ban Công, trực diện biển', 'image/SALASuite.jpg', 5, 4099000, 816000, 0, 45, 'Hướng biển', '1 giường đôi rất lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 78, 1, 1, 2, 5),
(5, 'Deluxe 02 Giường đơn, ban công, trực diện biển', 'image/DeluxeTwin.jpg', 3, 2316000, 576000, 0, 48, 'Hướng biển', '1 giường đôi rất lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 73, 1, 2, 2, 3),
(6, 'Suite gia đình, 02 phòng ngủ, hướng biển và phố', 'image/Suite.jpg', 2, 3136000, 1241000, 0, 56, 'Hướng biển', '2 giường đơn, 1 giường đôi rất lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 57, 1, 2, 4, 2),
(7, 'Studio Suite (Khách Việt Nam)', 'image/Superiorking_beach.jpg', 12, 3115000, 1090250, 0, 28, 'Hướng trung tâm thành phố', '2 giường đơn rất lớn', 1, '<p><strong>Lưu &yacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>C&aacute;c mức ph&iacute; tr&ecirc;n chưa bao gồm thuế, ph&iacute;</li>\r\n	<li>Giường phụ kh&ocirc;ng &aacute;p dụng cho loại ph&ograve;ng Studio Suite (Kh&aacute;ch Việt Nam), Quang cảnh Th&agrave;nh Phố</li>\r\n	<li>1 ph&ograve;ng được th&ecirc;m tối đa v&agrave; 1 trẻ em (tuỳ v&agrave;o loại ph&ograve;ng)</li>\r\n	<li>Trẻ từ 12 tuổi trở l&ecirc;n được t&iacute;nh như người lớn</li>\r\n	<li>Vui l&ograve;ng nhập c&aacute;c y&ecirc;u cầu đặc biệt v&agrave;o mục Y&ecirc;u cầu kh&aacute;c b&ecirc;n dưới</li>\r\n	<li>Th&ocirc;ng tin li&ecirc;n hệ để được hỗ trợ</li>\r\n</ul>\r\n\r\n<p><strong>Ch&iacute;nh s&aacute;ch hủy</strong><br />\r\nĐ&acirc;y l&agrave; gi&aacute; đặc biệt n&ecirc;n kh&ocirc;ng được ho&agrave;n huỷ.<br />\r\nBạn sẽ kh&ocirc;ng được ho&agrave;n trả tiền khi thay đổi hay huỷ đơn đặt ph&ograve;ng n&agrave;y.</p>\r\n', 65, 6, 1, 2, 12),
(8, 'Executive Suite ( Khách Việt Nam)', 'image/145051238.jpg', 10, 3783000, 1310000, 0, 0, '', '0', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 65, 6, 1, 2, 10),
(9, 'Executive Suite River View ( Khách Việt Nam)', 'image/executive-suite-river-view-vinpearl-condotel-riverfront-danang-tgroup-travel-3.jpg', 5, 4770000, 1652000, 0, 0, '', '0', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 65, 6, 1, 2, 5),
(10, 'FAMILY SUITE ( Khách Việt Nam)', 'image/218291433.jpg', 3, 5428000, 1880000, 0, 0, '', '0', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 65, 6, 1, 2, 3),
(11, 'Deluxe Double with the pool view', 'image/230933283.jpg', 5, 954000, 747000, 0, 22, 'Hướng hồ bơi', '1 giường đôi', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 22, 11, 2, 2, 5),
(12, 'Superior Studio with garden view', 'image/b89941a4_z.jpg', 5, 1138000, 891000, 0, 28, 'Hướng vườn', '1 giường đôi', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 22, 11, 2, 2, 5),
(13, 'Suite Apartment with pool view', 'image/230937276.jpg', 2, 1712000, 1340000, 0, 40, 'Hướng hồ bơi', '2 giường đôi', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 22, 11, 1, 4, 2),
(14, 'Standard', 'image/tải xuống.jpg', 3, 731000, 382000, 0, 22, 'Có cửa sổ (Không hướng)', '2 giường đơn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 48, 15, 2, 2, 3),
(15, 'Deluxe', 'image/43387_14072211240020388576.jpg', 5, 1045000, 637000, 0, 30, 'Hướng phố', '1 giường đôi lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 39, 15, 2, 2, 5),
(17, 'Suite', 'image/107262060.jpg', 5, 1463000, 891000, 0, 45, 'Hướng sông', '1 giường đôi lớn', 1, '<b>Lưu ý:</b><ul><li>  Các mức phí trên chưa bao gồm thuế, phí</li><li> Giường phụ không áp dụng cho loại phòng Superior Giường king, Quang cảnh Thành Phố</li><li> 1 phòng được thêm tối đa và 1 trẻ em (tuỳ vào loại phòng)</li><li> Trẻ từ 12 tuổi trở lên được tính như người lớn</li><li> Vui lòng nhập các yêu cầu đặc biệt vào mục Yêu cầu khác bên dưới</li><li> Thông tin liên hệ để được hỗ trợ</li></ul> <b>Chính sách hủy</b><br> Đây là giá đặc biệt nên không được hoàn huỷ.<br>Bạn sẽ không được hoàn trả tiền khi thay đổi hay huỷ đơn đặt phòng này.<br>', 39, 15, 2, 2, 5),
(18, 'Executive Suite bao gồm Vé VinWonder( Khách Việt Nam)', 'image/vinpearl-condotel-riverfront-da-nang-19-800x450.jpeg', 3, 5236000, 1937000, 1, 42, 'Hướng một phần thành phố', '1 giường đôi lớn', 1, '', 63, 6, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20210401065906'),
('20210401070135'),
('20210401071202'),
('20210401071223'),
('20210401071259'),
('20210401072520'),
('20210401072547'),
('20210401073054'),
('20210401073107'),
('20210401073136'),
('20210430150929'),
('20210430151026'),
('20210430151220'),
('20210430151315'),
('20210430152223'),
('20210430152545'),
('20210430155840');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `description`) VALUES
(1, 'Chờ xác nhận', 'Người dùng đã tiến hành đặt lịch. Chờ nhân viên khách sạn xác nhận'),
(2, 'Đặt thành công', 'Bên khách sạn đã xác nhận đặt phòng cho khách hàng'),
(3, 'Đã nhận phòng', 'Người dùng đã đến nhận phòng, dịch vụ chăm sóc. Thanh toán trước khi nhận phòng'),
(4, 'Đã trả phòng', 'Người dùng đã trả phòng. Bên khách sạn tiến hành kiểm tra và cập nhật trạng thái. Có thể cho người dùng khác tiến hành đặt '),
(5, 'Chờ xác nhận hủy', 'Người đặt yêu cầu hủy đơn đã đặt trước đó'),
(6, 'Đã hủy', 'Trước thời gian nhận phòng, người dùng có nhu cầu hủy đơn. Nếu bên khách hàng xác nhận hủy thì cập nhật trạng thái mới');

-- --------------------------------------------------------

--
-- Table structure for table `typerooms`
--

CREATE TABLE `typerooms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typerooms`
--

INSERT INTO `typerooms` (`id`, `name`, `description`) VALUES
(1, 'VIP', ''),
(2, 'Thường', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageshotels`
--
ALTER TABLE `imageshotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagesrooms`
--
ALTER TABLE `imagesrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likecomments`
--
ALTER TABLE `likecomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typerooms`
--
ALTER TABLE `typerooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `imageshotels`
--
ALTER TABLE `imageshotels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `imagesrooms`
--
ALTER TABLE `imagesrooms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `likecomments`
--
ALTER TABLE `likecomments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `typerooms`
--
ALTER TABLE `typerooms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
