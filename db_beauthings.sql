-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 06:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beauthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(40) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_telp` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ariana Grande', 'admin', 'arianagrande123', '0221212', 'arianagrande@gmail.com', 'Jl. Bumi Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Dress'),
(5, 'Shoes'),
(6, 'Bags'),
(7, 'Jeans'),
(8, 'Blouse'),
(9, 'T-shirts'),
(10, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_desc`, `product_image`, `product_status`, `date_created`) VALUES
(5, 4, 'Mini  Dress', 5000000, 'ASYMMETRIC VELVET MINI BLACK DRESS\r\nAn asymmetrical, sleeveless design, this mini dress is crafted from a soft textured velvet.', 'dress1.png', 1, '2023-01-01'),
(6, 4, 'Dress Atelier', 8000000, 'Runway - Haute Couture S/S 2014\r\nThat crotch stretching is just too cheap-looking. Its Ver-trashy. Ha ha. That almost works.', 'dress2.png', 1, '2022-12-30'),
(7, 4, 'Dress Anya Taylor Joy', 12000000, 'Green Lurex gown and accompanying cape. Dripping with glamour, the dress came with a draped bust to evoke a bombshell ’70s feel. Ure the main character!', 'dress3.png', 1, '2023-01-03'),
(8, 5, 'Shoes / High Boots', 4000000, 'High Knee Boots\r\nHighland suede over-the knee boots\r\nNot only is every heel height offered, but heel styles are a-plenty. ', 'highboots.jpg', 1, '2023-01-01'),
(9, 5, 'Shoes heels platform', 3000000, 'Butterfly-Chain Platforms  / Flatform Boots\r\nShoes Heels Classy', 'highheels1.jpg', 1, '2023-01-02'),
(10, 6, 'Bag 01', 800000, 'a cute bag with a beautiful moon decoration for an amazing person', 'bag1.jpg', 1, '2023-01-02'),
(11, 6, 'Bag 02', 900000, 'An elegant bag that can be used for all conditions including formal events.', 'bag2.jpg', 1, '2023-01-03'),
(12, 7, 'Jeans 01', 6000000, 'Jeans Cute Floral Denim be amazing \r\nwill definitely make you feel comfortable like the main character', 'jeans1.jpg', 1, '2023-01-03'),
(13, 7, 'Jeans 02', 4000000, 'Ripped Jeans\r\nTheres is endless street style inspiration for how to make ripped jeans look chic. Looks casual femininos.', 'jeans2.jpg', 1, '2023-01-02'),
(14, 8, 'Blouse', 3000000, '\r\nBlouse that looks simple but t hese Blouse Designs will surely leave you mesmerized | Stylish', 'blouse.jpg', 1, '2023-01-01'),
(15, 9, 'T-shirt 01', 500000, 'Harry Styles t-shirt\r\nAre you a Harry Styles fan? \r\nWe make the t-shirt with soft and comfortable material suitable for ootd', 'tshirt1.png', 1, '2023-01-02'),
(16, 9, 'T-shirt 02', 400000, 'Vintage T-Shirt\r\nGood news for vintage lovers! the t-shirt is comfortable. We made this t-shirt for you guys', 'tshirt2.jpg', 1, '2022-12-30'),
(17, 10, 'Accessories 01', 300000, 'cute Necklace\r\ndefinitely fits your neck. The cute shape can make you comfortable.', 'accessories1.jpg', 1, '2023-01-02'),
(18, 10, 'Accessories 02', 100000, 'cute bracelet 6 in 1\r\nYes! You can get 6 bracelets in 1 package. Its so cute, right?', 'accessories2.jpg', 1, '2023-01-01');

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
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
