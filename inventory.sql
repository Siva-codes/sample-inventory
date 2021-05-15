-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 03:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `iv_admin`
--

CREATE TABLE `iv_admin` (
  `admin_id` smallint(1) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `img` varchar(32) DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_admin`
--

INSERT INTO `iv_admin` (`admin_id`, `name`, `email`, `password`, `img`, `status`) VALUES
(1, 'Admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'person_-_Copy.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `iv_city`
--

CREATE TABLE `iv_city` (
  `city_id` smallint(1) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_city`
--

INSERT INTO `iv_city` (`city_id`, `name`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(6, 'Salem', 'A', 1, 1618832507, NULL, NULL),
(7, 'Kovai', 'A', 1, 1618832525, NULL, NULL),
(8, 'Trichy', 'A', 1, 1618832550, 1, 1618832899),
(9, 'Madurai', 'A', 1, 1618832577, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iv_company`
--

CREATE TABLE `iv_company` (
  `company_id` tinyint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` smallint(1) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_by` tinyint(1) DEFAULT 0,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_company`
--

INSERT INTO `iv_company` (`company_id`, `name`, `mobile`, `email`, `city_id`, `address`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'abc traders', '221', '331', 9, '551\r\naaaaa\r\nbbbb\r\nccccc', '1', 1, 123, 1, 1620882431);

-- --------------------------------------------------------

--
-- Table structure for table `iv_customer`
--

CREATE TABLE `iv_customer` (
  `customer_id` bigint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` smallint(1) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_by` tinyint(1) DEFAULT 0,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_customer`
--

INSERT INTO `iv_customer` (`customer_id`, `name`, `mobile`, `email`, `city_id`, `address`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'raj', '32432432', 'abc1@g.com', 8, '324324', 'A', 1, 1618835545, NULL, NULL),
(2, 'vinoth', '32432415', '', 7, '111\r\n2222\r\n3333', 'A', 1, 1618835570, 1, 1620882777);

-- --------------------------------------------------------

--
-- Table structure for table `iv_product`
--

CREATE TABLE `iv_product` (
  `product_id` bigint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product_category_id` smallint(1) NOT NULL DEFAULT 0,
  `unit_id` tinyint(1) DEFAULT NULL,
  `pur_price` varchar(10) DEFAULT NULL,
  `sal_price` varchar(10) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_product`
--

INSERT INTO `iv_product` (`product_id`, `name`, `product_category_id`, `unit_id`, `pur_price`, `sal_price`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'ponni rice', 1, 2, '10', '15', 'A', 1, 1618831814, NULL, NULL),
(2, 'Gopuram rice', 1, 0, '', '', 'A', 1, 1618831853, NULL, NULL),
(3, 'Medimix', 4, 3, '50', '60', 'A', 1, 1618831919, 1, 1618832309),
(4, 'Lays', 3, 3, '70', '75', 'A', 1, 1618831956, 1, 1619965429);

-- --------------------------------------------------------

--
-- Table structure for table `iv_product_category`
--

CREATE TABLE `iv_product_category` (
  `product_category_id` smallint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_product_category`
--

INSERT INTO `iv_product_category` (`product_category_id`, `name`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'Rice', 'A', 1, 1618829721, NULL, NULL),
(2, 'Oil', 'A', 1, 1618829752, NULL, NULL),
(3, 'Snacks', 'A', 1, 1618829782, 1, 1618829846),
(4, 'Soap', 'A', 1, 1618829796, 1, 1618832997),
(5, 'Sweets', 'A', 1, 1619878014, 1, 1619965038);

-- --------------------------------------------------------

--
-- Table structure for table `iv_purchase`
--

CREATE TABLE `iv_purchase` (
  `purchase_id` bigint(1) NOT NULL,
  `bill_type` varchar(1) DEFAULT NULL,
  `bill_no` varchar(10) DEFAULT NULL,
  `bill_date` int(1) DEFAULT NULL,
  `supplier_id` bigint(1) DEFAULT NULL,
  `pay_type` varchar(2) NOT NULL,
  `tot_amt` double NOT NULL,
  `tax_id` tinyint(1) NOT NULL DEFAULT 0,
  `tax_amt` double NOT NULL DEFAULT 0,
  `bill_amt` double DEFAULT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iv_purchase`
--

INSERT INTO `iv_purchase` (`purchase_id`, `bill_type`, `bill_no`, `bill_date`, `supplier_id`, `pay_type`, `tot_amt`, `tax_id`, `tax_amt`, `bill_amt`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'B', '1', 1619461800, 1, 'CA', 48757.5, 4, 1950.3, 50707.8, 1, 1619508325, NULL, NULL),
(4, 'B', '2423', 1619560800, 3, 'CA', 82500, 4, 3300, 85800, 1, 1619619603, 1, 1619965931),
(3, 'B', 'wrwr', 1619548200, 2, 'CA', 26800, 6, 1340, 28140, 1, 1619575105, 1, 1619603687),
(5, 'R', 'yrty', 1619807400, 3, 'CA', 2250, 0, 0, 2250, 1, 1619849740, 1, 1619850391);

-- --------------------------------------------------------

--
-- Table structure for table `iv_purchase_dtl`
--

CREATE TABLE `iv_purchase_dtl` (
  `purchase_dtl_id` bigint(1) NOT NULL,
  `purchase_id` bigint(1) NOT NULL,
  `product_id` bigint(1) NOT NULL,
  `unit_id` tinyint(1) DEFAULT NULL,
  `qty` double NOT NULL,
  `price` double NOT NULL,
  `sal_unit_id` tinyint(1) DEFAULT NULL,
  `sal_price` double DEFAULT NULL,
  `amt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_purchase_dtl`
--

INSERT INTO `iv_purchase_dtl` (`purchase_dtl_id`, `purchase_id`, `product_id`, `unit_id`, `qty`, `price`, `sal_unit_id`, `sal_price`, `amt`) VALUES
(1, 1, 4, 2, 15, 250.5, 2, 260, 3757.5),
(2, 1, 1, 1, 100, 450, 1, 470, 45000),
(17, 3, 4, 5, 40, 220, 5, 250, 8800),
(18, 3, 1, 2, 24, 750, 2, 800, 18000),
(22, 5, 1, 1, 5, 450, 1, 0, 2250),
(23, 4, 2, 2, 100, 750, 2, 820, 75000),
(24, 4, 3, 4, 150, 50, 4, 60, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `iv_sales`
--

CREATE TABLE `iv_sales` (
  `sales_id` bigint(1) NOT NULL,
  `bill_type` varchar(1) DEFAULT NULL,
  `bill_no` varchar(10) DEFAULT NULL,
  `bill_date` int(1) DEFAULT NULL,
  `customer_id` bigint(1) DEFAULT NULL,
  `pay_type` varchar(2) NOT NULL,
  `tot_amt` double NOT NULL,
  `tax_id` tinyint(1) NOT NULL DEFAULT 0,
  `tax_amt` double NOT NULL DEFAULT 0,
  `bill_amt` double DEFAULT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iv_sales`
--

INSERT INTO `iv_sales` (`sales_id`, `bill_type`, `bill_no`, `bill_date`, `customer_id`, `pay_type`, `tot_amt`, `tax_id`, `tax_amt`, `bill_amt`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(2, 'B', '435', 1619474400, 2, 'CA', 1250, 6, 62.5, 1312.5, 1, 1619587995, 1, 1620887163),
(3, 'B', '3243', 1619548200, 2, 'CA', 3460, 0, 0, 3460, 1, 1619619705, NULL, NULL),
(4, 'B', 'try', 1619807400, 2, 'CA', 6000, 0, 0, 6000, 1, 1619849384, NULL, NULL),
(5, 'R', 'tr', 1619893800, 1, 'CA', 560, 0, 0, 560, 1, 1619850607, NULL, NULL),
(6, 'R', 'tt', 1619807400, 1, 'CA', 1600, 6, 80, 1680, 1, 1619850663, NULL, NULL),
(7, 'B', 'sasd', 1620856800, 2, 'CA', 9080, 4, 363.2, 9443.2, 1, 1620887218, 1, 1620887257),
(8, 'B', 'kkk', 1622412000, 1, 'CA', 1680, 0, 0, 1680, 1, 1620887521, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iv_sales_dtl`
--

CREATE TABLE `iv_sales_dtl` (
  `sales_dtl_id` bigint(1) NOT NULL,
  `sales_id` bigint(1) NOT NULL,
  `product_id` bigint(1) NOT NULL,
  `unit_id` tinyint(1) DEFAULT NULL,
  `qty` double NOT NULL,
  `price` double NOT NULL,
  `pur_unit_id` tinyint(1) DEFAULT NULL,
  `pur_price` double DEFAULT NULL,
  `amt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_sales_dtl`
--

INSERT INTO `iv_sales_dtl` (`sales_dtl_id`, `sales_id`, `product_id`, `unit_id`, `qty`, `price`, `pur_unit_id`, `pur_price`, `amt`) VALUES
(6, 3, 2, 2, 4, 820, 2, 750, 3280),
(7, 3, 3, 3, 3, 60, 4, 50, 180),
(8, 4, 1, 7, 50, 120, NULL, 0, 6000),
(9, 5, 1, 7, 10, 56, NULL, 0, 560),
(10, 6, 1, 1, 2, 800, 2, 750, 1600),
(55, 2, 1, 1, 10, 25, 2, 750, 250),
(56, 2, 4, 1, 4, 250, 5, 220, 1000),
(59, 7, 4, 2, 34, 260, 2, 250.5, 8840),
(60, 7, 3, 4, 4, 60, 4, 50, 240),
(61, 8, 1, 1, 1, 40, 1, 450, 40),
(62, 8, 2, 2, 2, 820, 2, 750, 1640);

-- --------------------------------------------------------

--
-- Table structure for table `iv_stock`
--

CREATE TABLE `iv_stock` (
  `stock_id` bigint(1) NOT NULL,
  `bill_type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `bill_id` bigint(1) NOT NULL,
  `bill_date` int(1) NOT NULL,
  `product_id` bigint(1) NOT NULL,
  `pur_unit_id` tinyint(1) DEFAULT NULL,
  `pur_price` double NOT NULL,
  `sal_unit_id` tinyint(1) DEFAULT NULL,
  `sal_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `amt` double NOT NULL,
  `created_by` tinyint(1) NOT NULL,
  `created_date` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_stock`
--

INSERT INTO `iv_stock` (`stock_id`, `bill_type`, `bill_id`, `bill_date`, `product_id`, `pur_unit_id`, `pur_price`, `sal_unit_id`, `sal_price`, `qty`, `amt`, `created_by`, `created_date`) VALUES
(1, 'PB', 1, 1619461800, 4, 2, 250.5, 2, 260, 15, 3757.5, 1, 1619508326),
(2, 'PB', 1, 1619461800, 1, 1, 450, 1, 470, 100, 45000, 1, 1619508326),
(22, 'PB', 3, 1619548200, 4, 5, 220, 5, 250, 40, 8800, 1, 1619603687),
(23, 'PB', 3, 1619548200, 1, 2, 750, 2, 800, 24, 18000, 1, 1619603687),
(27, 'PB', 3, 1619548200, 4, 5, 220, 5, 250, 40, 8800, 1, 1619603687),
(30, 'SB', 3, 1619548200, 2, 2, 750, 2, 820, -4, 3280, 1, 1619619705),
(31, 'SB', 3, 1619548200, 3, 4, 50, 3, 60, -3, 180, 1, 1619619705),
(32, 'SB', 4, 1619807400, 1, NULL, 0, 7, 120, -50, 6000, 1, 1619849384),
(34, 'PR', 5, 1619807400, 1, 1, 450, 1, 0, -5, 2250, 1, 1619850391),
(35, 'SR', 5, 1619893800, 1, NULL, 0, 7, 56, 10, 560, 1, 1619850607),
(36, 'SR', 6, 1619807400, 1, 2, 750, 1, 800, 2, 1600, 1, 1619850663),
(37, 'PB', 4, 1619560800, 2, 2, 750, 2, 820, 100, 75000, 1, 1619965932),
(38, 'PB', 4, 1619560800, 3, 4, 50, 4, 60, 150, 7500, 1, 1619965932),
(83, 'SB', 2, 1619474400, 1, 2, 750, 1, 25, -10, 250, 1, 1620887163),
(84, 'SB', 2, 1619474400, 4, 5, 220, 1, 250, -4, 1000, 1, 1620887163),
(87, 'SB', 7, 1620856800, 4, 2, 250.5, 2, 260, -34, 8840, 1, 1620887258),
(88, 'SB', 7, 1620856800, 3, 4, 50, 4, 60, -4, 240, 1, 1620887258),
(89, 'SB', 8, 1622412000, 1, 1, 450, 1, 40, -1, 40, 1, 1620887522),
(90, 'SB', 8, 1622412000, 2, 2, 750, 2, 820, -2, 1640, 1, 1620887522);

-- --------------------------------------------------------

--
-- Table structure for table `iv_supplier`
--

CREATE TABLE `iv_supplier` (
  `supplier_id` bigint(1) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` smallint(1) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_by` tinyint(1) DEFAULT 0,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `iv_supplier`
--

INSERT INTO `iv_supplier` (`supplier_id`, `name`, `mobile`, `email`, `city_id`, `address`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'sundar', '123456789', 'abc@g.com', 9, 'aaa\r\nbbbb\r\ncccc', 'A', 1, 1618834953, 1, 1618835311),
(2, 'Govindha', '3333333333', 'gg@gmail.com', 0, 'aaa', 'A', 1, 1618835360, 1, 1618835464),
(3, 'raj', '112233', 'abc@g.com', 6, 'aaa', 'A', 1, 1618835428, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iv_tax`
--

CREATE TABLE `iv_tax` (
  `tax_id` tinyint(1) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `tax_percent` varchar(5) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(1) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_tax`
--

INSERT INTO `iv_tax` (`tax_id`, `name`, `tax_percent`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(4, 'vat 4', '4', 'A', 1, 1618836148, 1, 1618836208),
(5, 'vat 12.5', '12.5', 'A', 1, 1618836174, NULL, NULL),
(6, 'vat 5', '5', 'A', 1, 1618836192, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iv_unit`
--

CREATE TABLE `iv_unit` (
  `unit_id` tinyint(1) NOT NULL,
  `parent_unit_id` tinyint(1) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `conversion` varchar(5) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `created_date` int(11) DEFAULT NULL,
  `modified_by` tinyint(1) DEFAULT NULL,
  `modified_date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iv_unit`
--

INSERT INTO `iv_unit` (`unit_id`, `parent_unit_id`, `name`, `conversion`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 7, 'kgs', '1000', 'A', 1, 1618567787, 1, 1619606913),
(2, 1, '50 kg', '50', 'A', 1, 1618568012, NULL, NULL),
(3, 0, 'Nos', '', 'A', 1, 1618568053, NULL, NULL),
(4, 3, '10 pcs', '10', 'A', 1, 1618826170, NULL, NULL),
(5, 1, '75 kg', '75', 'A', 1, 1618826238, 1, 1618828585),
(7, 0, 'Grm', '', 'A', 1, 1619606875, 1, 1619606934);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iv_admin`
--
ALTER TABLE `iv_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `iv_city`
--
ALTER TABLE `iv_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `iv_company`
--
ALTER TABLE `iv_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `iv_customer`
--
ALTER TABLE `iv_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `iv_product`
--
ALTER TABLE `iv_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `iv_product_category`
--
ALTER TABLE `iv_product_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `iv_purchase`
--
ALTER TABLE `iv_purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `iv_purchase_dtl`
--
ALTER TABLE `iv_purchase_dtl`
  ADD PRIMARY KEY (`purchase_dtl_id`);

--
-- Indexes for table `iv_sales`
--
ALTER TABLE `iv_sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `iv_sales_dtl`
--
ALTER TABLE `iv_sales_dtl`
  ADD PRIMARY KEY (`sales_dtl_id`);

--
-- Indexes for table `iv_stock`
--
ALTER TABLE `iv_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `iv_supplier`
--
ALTER TABLE `iv_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `iv_tax`
--
ALTER TABLE `iv_tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `iv_unit`
--
ALTER TABLE `iv_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iv_admin`
--
ALTER TABLE `iv_admin`
  MODIFY `admin_id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iv_city`
--
ALTER TABLE `iv_city`
  MODIFY `city_id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `iv_company`
--
ALTER TABLE `iv_company`
  MODIFY `company_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iv_customer`
--
ALTER TABLE `iv_customer`
  MODIFY `customer_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `iv_product`
--
ALTER TABLE `iv_product`
  MODIFY `product_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iv_product_category`
--
ALTER TABLE `iv_product_category`
  MODIFY `product_category_id` smallint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iv_purchase`
--
ALTER TABLE `iv_purchase`
  MODIFY `purchase_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iv_purchase_dtl`
--
ALTER TABLE `iv_purchase_dtl`
  MODIFY `purchase_dtl_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `iv_sales`
--
ALTER TABLE `iv_sales`
  MODIFY `sales_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `iv_sales_dtl`
--
ALTER TABLE `iv_sales_dtl`
  MODIFY `sales_dtl_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `iv_stock`
--
ALTER TABLE `iv_stock`
  MODIFY `stock_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `iv_supplier`
--
ALTER TABLE `iv_supplier`
  MODIFY `supplier_id` bigint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iv_tax`
--
ALTER TABLE `iv_tax`
  MODIFY `tax_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iv_unit`
--
ALTER TABLE `iv_unit`
  MODIFY `unit_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
