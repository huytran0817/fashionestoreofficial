-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 10, 2023 lúc 01:21 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashionstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `count`, `product_id`, `user_id`) VALUES
(3, 2, 2, 'hoanhao1512'),
(4, 1, 5, 'hoanhao1512'),
(5, 1, 32, 'hoanhao1512'),
(9, 1, 52, 'phuc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(1111) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Áo'),
(2, 'Quần'),
(3, 'Giày'),
(4, 'Mũ'),
(5, 'Kính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `address` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `country` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `payment_method` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `address`, `booking_date`, `country`, `email`, `fullname`, `note`, `payment_method`, `phone`, `status`, `total`, `user_id`) VALUES
(2, 'Ho Chi Minh City', '2023-05-10', 'Việt Nam', 'lyphuc823@gmail.com', 'Phuc Ly Hoang', 'Khongk', 'Payment on delivery', '0794290037', 'Pending', 2, 'phuc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id`, `count`, `order_id`, `product_id`) VALUES
(6, 2, 2, 52);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `description` varchar(11111) CHARACTER SET utf8 DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_selling` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_name` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `created_at`, `description`, `is_active`, `is_selling`, `price`, `product_name`, `quantity`, `sold`, `category_id`) VALUES
(1, '2022-11-21', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 500000, 'Men\'s Jacket AKHTK306', 97, 23, 1),
(2, '2022-11-21', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 300000, 'Men\'s polo shirt POTTK333', 98, 12, 1),
(3, '2022-11-11', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 360000, 'Men\'s polo shirt POHTK313', 97, 23, 1),
(4, '2022-10-10', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 549000, 'Men\'s jeans QJDTK323', 100, 90, 2),
(5, '2022-03-09', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 520000, 'Men\'s jeans QJDTK320', 99, 11, 2),
(6, '2022-10-10', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 230000, 'Men\'s shorts QSGTK312', 100, 75, 2),
(7, '2022-08-04', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 750000, 'GIACN226 Men\'s Shoes', 100, 80, 3),
(8, '2022-11-11', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 720000, 'Men\'s shoes GIACN302', 100, 50, 3),
(9, '2022-10-10', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 520000, 'Men\'s shoes GIACN308', 100, 10, 3),
(10, '2022-03-09', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 249000, 'Men\'s fashion hat MLTTK301', 100, 100, 4),
(11, '2022-10-10', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 250000, 'Panama Men\'s Fashion Hat 18EM250', 200, 310, 4),
(12, '2022-08-04', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 180000, 'Men\'s Fashion Caps 16HM180', 100, 10, 4),
(13, '2022-07-04', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 999000, 'UNISEX high-end eyewear ELLY – EKU148', 100, 30, 5),
(14, '2022-05-30', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 899000, 'High-end eyewear ELLY – EKU141', 40, 50, 5),
(15, '2022-01-29', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 690000, 'High-end eyewear ELLY HOMME – EKM133', 80, 70, 5),
(20, '2022-11-07', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 180000, 'QATTK301 Mens Pants', 100, 20, 2),
(21, '2022-11-06', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 100000, 'Mens SHORT Pants QSVTK805', 100, 200, 2),
(22, '2022-07-29', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 370000, 'GIACN312 Mens Shoes', 100, 20, 3),
(23, '2022-10-30', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 120000, 'GIACN235 Mens Shoes', 100, 20, 3),
(24, '2022-09-12', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 510000, 'SNEKER SPORTY SHOES G1011', 100, 100, 3),
(25, '2022-12-14', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 990000, 'Men fashion hat MTRTK306', 100, 90, 4),
(26, '2022-11-16', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 100000, 'Mens Fashion Caps Caps 16HM180', 100, 20, 4),
(27, '2022-10-23', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 190000, 'Mens fashion hat MLTTK301', 100, 70, 4),
(28, '2022-09-27', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 230000, 'Gentle Monster Loful Sunglasses 01 56 -19 Black', 100, 10, 5),
(29, '2022-04-06', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 760000, 'MarcJacobs MARC192FS-IPR-9O', 100, 20, 5),
(30, '2022-03-30', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 520000, 'Anti-blue light sunglasses', 100, 90, 5),
(31, '2022-03-30', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 520000, 'Blazer jacket ABZTK303', 100, 90, 1),
(32, '2022-12-09', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 120000, 'Men\'s shirt STDTK341', 99, 81, 1),
(33, '2022-11-03', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 340000, 'Men\'s T-shirt APHTK358', 100, 130, 1),
(34, '2022-10-17', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 370000, 'QGNTK308 jogger pants', 100, 200, 2),
(35, '2022-09-11', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 910000, 'Men\'s shorts QSNTK302', 100, 10, 2),
(36, '2022-01-18', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 200000, 'Men\'s jeans QJDTK235', 100, 20, 2),
(37, '2022-10-29', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 820000, 'GIACN209 Men\'s Shoes', 100, 70, 3),
(38, '2022-07-24', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 670000, 'Men\'s SHOES GIACN101', 100, 50, 3),
(39, '2022-05-23', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 710000, 'GIACN SHOES 115', 100, 90, 3),
(40, '2022-03-25', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 200000, 'Men\'s fashion hat MLTTK304', 100, 90, 4),
(41, '2022-01-19', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 560000, 'Men\'s fashion hat MLTTK303', 100, 78, 4),
(42, '2022-01-15', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 120000, 'Men\'s Fashion Caps Caps 16HM180', 100, 120, 4),
(43, '2022-04-15', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 350000, 'OWNDAYS - Sunglasses SUN8005J-2S', 100, 10, 5),
(44, '2022-08-16', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 120000, 'MUJOSH glass', 100, 50, 5),
(45, '2022-03-11', 'Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening with placket.', 1, 1, 240000, 'MAX&Co glass', 100, 500, 5),
(46, '2023-05-03', '', 1, 1, 100000, 'Men\'s Jacket AKHTK306', 100, 0, 1),
(52, '2023-05-10', 'hello', 1, 1, 10000, 'Phuc', 98, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `url_image` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `url_image`, `product_id`) VALUES
(1, 'https://360.com.vn/wp-content/uploads/2022/12/AKHTK306-QGNTK315-2.jpg', 1),
(2, 'https://360.com.vn/wp-content/uploads/2022/12/AKHTK306-QGNTK315-3.jpg', 1),
(3, 'https://360.com.vn/wp-content/uploads/2022/12/AKHTK306-QGNTK315-5.jpg', 1),
(4, 'https://360.com.vn/wp-content/uploads/2022/11/POTTK333-QJDTK310-2.jpg', 2),
(5, 'https://360.com.vn/wp-content/uploads/2022/11/POTTK333-QJDTK310-3.jpg', 2),
(6, 'https://360.com.vn/wp-content/uploads/2022/11/POTTK333-QJDTK310-5.jpg', 2),
(10, 'https://360.com.vn/wp-content/uploads/2022/12/QJDTK323-1.jpg', 4),
(11, 'https://360.com.vn/wp-content/uploads/2022/12/QJDTK323-2.jpg', 4),
(12, 'https://360.com.vn/wp-content/uploads/2022/12/QJDTK323-3.jpg', 4),
(13, 'https://360.com.vn/wp-content/uploads/2022/10/QJDTK320-1.jpg', 5),
(14, 'https://360.com.vn/wp-content/uploads/2022/10/QJDTK320-4.jpg', 5),
(15, 'https://360.com.vn/wp-content/uploads/2022/10/QJDTK320-3.jpg', 5),
(16, 'https://360.com.vn/wp-content/uploads/2022/08/QSGTK312-1.jpg', 6),
(17, 'https://360.com.vn/wp-content/uploads/2022/08/QSGTK312-2.jpg', 6),
(18, 'https://360.com.vn/wp-content/uploads/2022/08/QSGTK312-3.jpg', 6),
(19, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN226-1.jpg', 7),
(20, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN226-3.jpg', 7),
(21, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN226-2.jpg', 7),
(22, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN302-1.jpg', 8),
(23, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN302-2.jpg', 8),
(25, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN308-4.jpg', 9),
(26, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN308-5.jpg', 9),
(27, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN308-6.jpg', 9),
(28, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-9.jpg', 10),
(29, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-10.jpg', 10),
(30, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-11.jpg', 10),
(31, 'https://360.com.vn/wp-content/uploads/2018/08/18Em250.jpg', 11),
(32, 'https://360.com.vn/wp-content/uploads/2018/08/18EM280-2.jpg', 11),
(33, 'https://360.com.vn/wp-content/uploads/2018/08/18EM280-2.jpg', 11),
(34, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-4.jpg', 12),
(35, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-5.jpg', 12),
(36, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-3.jpg', 12),
(37, 'https://cdn.elly.vn/uploads/2022/06/16104911/kinh-mat-unisex-cao-cap-elly-eku148-26.jpg', 13),
(38, 'https://cdn.elly.vn/uploads/2022/06/16104809/kinh-mat-unisex-cao-cap-elly-eku148-18-2.jpg', 13),
(39, 'https://cdn.elly.vn/uploads/2022/06/16104721/kinh-mat-unisex-cao-cap-elly-eku148-12-2.jpg', 13),
(40, 'https://cdn.elly.vn/uploads/2022/07/12224407/kinh-mat-nu-thoi-trang-cao-cap-EKU141-11.jpg', 14),
(41, 'https://cdn.elly.vn/uploads/2022/07/12224306/kinh-mat-nu-thoi-trang-cao-cap-EKU141-3-510x510.jpg', 14),
(42, 'https://cdn.elly.vn/uploads/2022/07/12224258/kinh-mat-nu-thoi-trang-cao-cap-EKU141-2.jpg', 14),
(43, 'https://cdn.elly.vn/uploads/2021/06/23231113/kinh-mat-nu-thoi-trang-cao-cap-Elly-Ek133-0-510x510.jpg', 15),
(44, 'https://cdn.elly.vn/uploads/2021/06/18224937/z3648822848148_ff75fe182aa2d2fb59e42cf4bcb934b2.jpg', 15),
(45, 'https://cdn.elly.vn/uploads/2021/06/23231156/kinh-mat-nu-thoi-trang-cao-cap-Elly-Ek133-6.jpg', 15),
(59, 'https://360.com.vn/wp-content/uploads/2022/09/QATTK301-1.jpg', 20),
(60, 'https://360.com.vn/wp-content/uploads/2022/09/QATTK301-2.jpg', 20),
(61, 'https://360.com.vn/wp-content/uploads/2022/09/QATTK301-3.jpg', 20),
(62, 'https://360.com.vn/wp-content/uploads/2022/08/APHTK613-1-1.jpg', 21),
(65, 'https://360.com.vn/wp-content/uploads/2022/10/GIACN312-1.jpg', 22),
(66, 'https://360.com.vn/wp-content/uploads/2022/10/GIACN312-3.jpg', 22),
(67, 'https://360.com.vn/wp-content/uploads/2022/10/GIACN312-2.jpg', 22),
(68, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN235-1.jpg', 23),
(69, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN235-2.jpg', 23),
(70, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN235-3.jpg', 23),
(71, 'https://360.com.vn/wp-content/uploads/2018/08/G1011-750k-2-copy-Copy.jpg', 24),
(72, 'https://360.com.vn/wp-content/uploads/2018/08/G1011-750k-3-copy-Copy.jpg', 24),
(73, 'https://360.com.vn/wp-content/uploads/2022/08/MTRTK306-1.jpg', 25),
(74, 'https://360.com.vn/wp-content/uploads/2022/08/MTRTK306-2.jpg', 25),
(75, 'https://360.com.vn/wp-content/uploads/2022/08/MTRTK306-3.jpg', 25),
(76, 'https://360.com.vn/wp-content/uploads/2022/06/MTRTK306-5.jpg', 25),
(77, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-9.jpg', 26),
(78, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-11.jpg', 26),
(79, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-11.jpg', 26),
(80, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-9.jpg', 27),
(81, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-10.jpg', 27),
(82, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK301-11.jpg', 27),
(83, 'https://i5.walmartimages.com/asr/3f03248d-4501-426a-b3a0-67b623a7b6f1_1.abfbdef9da932a016410c2a6434de724.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 28),
(84, 'https://i5.walmartimages.com/asr/d968e44f-8589-41d1-8c8d-59f753e59c35_1.95650280ecc167a019cb222c80b0fbef.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 28),
(85, 'https://i5.walmartimages.com/asr/5d9809b4-3cfb-4bf5-bf69-da58600236e6_1.85a7dfbb9d57a27c42a7aef4a638bd5b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 28),
(86, 'https://i5.walmartimages.com/asr/ff582578-b104-498d-b763-d67d65546693.ec6def46b9737499a8ee96ddb555c19b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 29),
(87, 'https://i5.walmartimages.com/asr/14abc3bc-dd02-439a-8ddf-0cdfdf88adf5.309714af395966532b878c660484f56c.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 29),
(88, 'https://i5.walmartimages.com/asr/0d992eea-340c-4290-a68e-82a34002816c.bd177b7423cdab5afb169c56f30d3b17.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 29),
(89, 'https://i5.walmartimages.com/asr/2338cd59-aa29-4179-bf4a-c2ec35abe5ff.d18e5ac7fa473ed5bf9d18697f67782b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 30),
(90, 'https://i5.walmartimages.com/asr/2338cd59-aa29-4179-bf4a-c2ec35abe5ff.d18e5ac7fa473ed5bf9d18697f67782b.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 30),
(91, 'https://i5.walmartimages.com/asr/49130cc9-4cda-4745-8b2d-99e1771e794d.33e91f9f7715a68eabeba08d2ceac6cf.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF', 30),
(92, 'https://360.com.vn/wp-content/uploads/2022/09/ABZTK303-QATTK310-6.jpg', 31),
(93, 'https://360.com.vn/wp-content/uploads/2022/09/ABZTK303-QATTK310-7.jpg', 31),
(94, 'https://360.com.vn/wp-content/uploads/2022/09/ABZTK303-QATTK310-8.jpg', 31),
(95, 'https://360.com.vn/wp-content/uploads/2022/09/STDTK341-QJDTK310-3.jpg', 32),
(96, 'https://360.com.vn/wp-content/uploads/2022/09/STDTK341-QJDTK310-6.jpg', 32),
(97, 'https://360.com.vn/wp-content/uploads/2022/09/STDTK341-QJDTK310-4.jpg', 32),
(98, 'https://360.com.vn/wp-content/uploads/2022/09/STDTK341-QJDTK310-7.jpg', 32),
(99, 'https://360.com.vn/wp-content/uploads/2022/08/APHTK358-1.jpg', 33),
(100, 'https://360.com.vn/wp-content/uploads/2022/08/APHTK358-2.jpg', 33),
(101, 'https://360.com.vn/wp-content/uploads/2022/08/APHTK358-3.jpg', 33),
(102, 'https://360.com.vn/wp-content/uploads/2022/11/ApTTK360-QGNTK308-7.jpg', 34),
(103, 'https://360.com.vn/wp-content/uploads/2022/11/ApTTK360-QGNTK308-4.jpg', 34),
(104, 'https://360.com.vn/wp-content/uploads/2022/11/ApTTK360-QGNTK308-2.jpg', 34),
(105, 'https://360.com.vn/wp-content/uploads/2022/09/QSNTK302-1.jpg', 35),
(106, 'https://360.com.vn/wp-content/uploads/2022/09/QSNTK302-2.jpg', 35),
(107, 'https://360.com.vn/wp-content/uploads/2022/09/QSNTK302-3.jpg', 35),
(108, 'https://360.com.vn/wp-content/uploads/2022/08/QJDTK235-2.jpg', 36),
(109, 'https://360.com.vn/wp-content/uploads/2022/08/QJDTK235-3.jpg', 36),
(110, 'https://360.com.vn/wp-content/uploads/2022/08/QJDTK235-4.jpg', 36),
(111, 'https://360.com.vn/wp-content/uploads/2022/09/GIACN209-1.jpg', 37),
(112, 'https://360.com.vn/wp-content/uploads/2022/09/GIACN209-2.jpg', 37),
(113, 'https://360.com.vn/wp-content/uploads/2022/09/GIACN209-3.jpg', 37),
(114, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN101-4.jpg', 38),
(115, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN101-5.jpg', 38),
(116, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN101-6.jpg', 38),
(117, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN115.jpg', 39),
(118, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN115-1-1.jpg', 39),
(119, 'https://360.com.vn/wp-content/uploads/2022/08/GIACN115-4.jpg', 39),
(120, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK304-1.jpg', 40),
(121, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK304-3.jpg', 40),
(122, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK304-5.jpg', 40),
(123, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK303-3.jpg', 41),
(124, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK303-4.jpg', 41),
(125, 'https://360.com.vn/wp-content/uploads/2022/08/MLTTK303-5.jpg', 41),
(126, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-50.jpg', 42),
(127, 'https://360.com.vn/wp-content/uploads/2018/08/16HM180-49.jpg', 42),
(128, 'https://www.owndays.com/storage/products/3cb63b4a-06d0-420f-a9ee-108634862a76.webp', 43),
(129, 'https://www.owndays.com/storage/products/dd6fd399-0b3d-4d51-9898-4b73770443c0.webp', 43),
(130, 'https://www.owndays.com/storage/products/bed3f3ac-709d-4645-a4a0-c7215f2d0e9a.webp', 43),
(131, 'https://product.hstatic.net/1000284478/product/slc3_mj101fh052_1_b17573f903a54e2596326573c9a91fe2_large.jpg', 44),
(132, 'https://product.hstatic.net/1000284478/product/slc3_mj101fh052_1_b17573f903a54e2596326573c9a91fe2_large.jpg', 44),
(133, 'https://product.hstatic.net/1000284478/product/bkc1_mj101fh052_1_0a67bf652c7e466f9417ad37e0244d99_large.jpg', 44),
(134, 'https://product.hstatic.net/1000284478/product/1_4804041803_1_dafff5d31a2c4eeca56b8441344b08e7_large.jpg', 45),
(135, 'https://product.hstatic.net/1000284478/product/2_4804041803_1_17006b97fedf46b2bb293256f074e570_large.jpg', 45),
(136, 'https://product.hstatic.net/1000284478/product/2_4804041803_2_b8fc0c2f8cda4a468e1e61b732e57563_large.jpg', 45),
(137, 'http://res.cloudinary.com/drlroexjl/image/upload/v1683107859/xoqmumz7iqqfukwppezs.webp', 46),
(138, 'http://res.cloudinary.com/drlroexjl/image/upload/v1683712870/b8bpjxmoseymdjuxavbq.webp', 52),
(139, 'http://res.cloudinary.com/drlroexjl/image/upload/v1683715180/gibvhvnyxtfouzahawjo.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `avatar` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `login_type` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `role` varchar(1111) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(1111) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `avatar`, `email`, `login_type`, `password`, `phone_number`, `role`, `user_name`) VALUES
('admin', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'haovo1512@gmail.com', 'default', 'MQ==', '0794290037', 'admin', 'Ly Hoang Phuc'),
('hoanhao1512', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'haovo1512@gmail.com', 'default', 'MQ==', '0799197703', 'user', 'Võ Hoàn Hảo'),
('phuc', 'https://haycafe.vn/wp-content/uploads/2022/02/Avatar-trang-den.png', 'lyphuc823@gmail.com', 'default', 'MTIzNDU=', NULL, 'user', 'Ly Hoang Phuc');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  ADD KEY `FKl70asp4l4w0jmbm1tqyofho4o` (`user_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcpl0mjoeqhxvgeeeq5piwpd3i` (`user_id`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs234mi6jususbx4b37k44cipy` (`order_id`),
  ADD KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6oo0cvcdtb6qmwsga468uuukk` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FKcpl0mjoeqhxvgeeeq5piwpd3i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKs234mi6jususbx4b37k44cipy` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
