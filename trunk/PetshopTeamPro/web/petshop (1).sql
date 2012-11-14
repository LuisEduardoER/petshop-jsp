-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2012 at 11:54 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `descript` text NOT NULL,
  `imgThumb` text NOT NULL,
  `s_price` double NOT NULL,
  `full_desc` text NOT NULL,
  `full_img` text NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `type`, `descript`, `imgThumb`, `s_price`, `full_desc`, `full_img`, `amount`) VALUES
(3, 'cho', 'Tổ tiên của giống chó Boxer là 2 giống chó thuộc nhóm Mastiff của Đức: Bullenbeiszer và Barenbeiszer. Sau đó chúng lại được lai tạo với giống Bulldog. Trước kia, giống chó này đã thu được nhiều giải thưởng như loại chó dùng để săn bò rừng và chó kéo xe... ', 'images/puppy.jpg', 120, 'Chó phốc là giống chó nhỏ được nuôi chủ yếu ở phương tây. Giống chó này nhỏ con nhưng rất hung dữ. Một con chó phốc trưởng thành cũng chỉ nặng tầm 5kg, lông ngắn và dày, rất linh hoạt hay ăn vụng và vô tích sự', 'images/cat02.jpg', 13),
(4, 'meo', 'Mèo rừng là loài động vật 4 chân, sống trong rừng, thịt ăn rất ngon. Một con mèo rừng trưởng thành có thể nặng tới 10kg đủ làm một bữa cho cả nhà', 'images/cat.jpg', 150, 'Mèo kitty là loài mèo không lông và có chiều dài khoảng 50cm, nuôi giống mèo này bạn không phải lo trẻ nhỏ bị dị ứng với lông mèo, hơn nữa loài mèo rất thân thiện và sạch sẽ. Khi nuôi mèo cần chú ý vệ sinh tắm rửa cho nó ít nhất 2 lần/tuần để đảm bảo sức khỏe cho cả mèo và người. Thức ăn chủ yếu của mèo là bánh quy, tuy nhiên bạn cũng có thể sử dụng thức ăn thừa(không khuyến khích). Khi mèo mang thai nên cho nó ăn chân giò để bổ sung vitamin', 'images/cat01.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `accNum` int(13) NOT NULL,
  `email` text NOT NULL,
  `phone` int(12) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `accNum`, `email`, `phone`, `address`) VALUES
(1, 'smith', 123456, 'smith@hotmail.com', 12345678, 'nhà không số, phố không tên');

-- --------------------------------------------------------

--
-- Table structure for table `shoping`
--

CREATE TABLE IF NOT EXISTS `shoping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shoping_detail`
--

CREATE TABLE IF NOT EXISTS `shoping_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_id` int(11) NOT NULL,
  `shoping_id` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `control` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `control`) VALUES
(1, 'sa', '123', 'nm'),
(2, 'hien', '123', 'ad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
