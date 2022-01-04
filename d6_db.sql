-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 04:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d6_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_surname`, `customer_email`, `customer_phone_number`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'marco', 'tshimanga', 'thimsmarco@gmail.com', '0727483205', '80 campground rondebosch', '2021-12-28 18:25:51', '2021-12-28 18:25:51'),
(2, 'jenny', 'mulonday', 'jenny@test.com', '0789520314', '183 arum rd,parkland', '2021-12-28 18:25:51', '2021-12-28 18:25:51'),
(3, 'marcus', 'tshimang', 'thimsklasmarco@gmail.com', '0727483205', '8015 campground rondebosch', '2021-12-28 18:25:51', '2021-12-28 18:25:51'),
(4, 'jen', 'muonday', 'jen@test.com', '0789520314', '183 rum rd,parkland', '2021-12-28 18:25:51', '2021-12-28 18:25:51'),
(5, 'Abby Braun', 'Eryn Gorczany', 'ali46@hotmail.com', '678-791-5914', '212 Prohaska Path\nTylerburgh, GA 09594', '2022-01-04 12:25:07', '2022-01-04 12:25:07'),
(6, 'Kaitlyn Hyatt IV', 'Brenda Mills', 'wyman.beverly@gmail.com', '+1 (708) 372-8866', '690 Runolfsson Via\nPort Napoleon, VT 78844', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(7, 'Damian Wyman Sr.', 'Estevan Gusikowski', 'ktremblay@gmail.com', '+1.909.626.7863', '35177 Anjali Prairie Apt. 774\nAntoninaview, RI 14550', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(8, 'Ms. Jodie Willms V', 'Misty Langworth', 'luettgen.euna@smitham.com', '+1-317-455-6674', '94984 Dickinson Isle\nBeckerhaven, UT 44645-2607', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(9, 'Candelario Waelchi', 'Chadd Davis', 'makenzie.emmerich@grimes.com', '(570) 234-4652', '93530 Lorenza Cliff\nEast Conormouth, OR 10028', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(10, 'Emile Hermiston', 'Asha Schinner DVM', 'douglas.dewayne@reynolds.com', '+1.941.789.0577', '287 Schmeler Corners\nWest Roxaneville, NH 48799', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(11, 'Trey Dickens', 'Bethel Spencer', 'abbott.jayda@yahoo.com', '(575) 215-1747', '367 Lacy Row Apt. 604\nLittelstad, NH 57296', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(12, 'Mr. Llewellyn Kuhic I', 'Kayli Kulas', 'corwin.joey@gmail.com', '458.501.1407', '43129 West Terrace\nCamrynview, NJ 83659-4668', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(13, 'Narciso Kris I', 'Hans Kulas', 'suzanne.kemmer@yahoo.com', '+1 (209) 624-0557', '4135 Huel Estate Apt. 627\nKlockostad, NH 84906', '2022-01-04 12:25:08', '2022-01-04 12:25:08'),
(14, 'Prof. Quinn Schamberger V', 'Dr. Ulises Treutel', 'gdaugherty@hotmail.com', '740.666.9701', '54096 Beth Court Suite 063\nParkerhaven, LA 31560-7478', '2022-01-04 12:25:08', '2022-01-04 12:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_due_date` date NOT NULL,
  `receiver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `taxable` double(8,2) NOT NULL,
  `tax_rate` double(8,2) NOT NULL,
  `tax_due` double(8,2) NOT NULL,
  `other` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `invoice_date`, `invoice_number`, `customer_id`, `invoice_due_date`, `receiver_name`, `receiver_company_name`, `receiver_address`, `receiver_city`, `receiver_phone_number`, `subtotal`, `taxable`, `tax_rate`, `tax_due`, `other`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, '2021-12-08', 'acfrt4188981', '156', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '727408325', 150.00, 6.50, 10.00, 10.00, 10.00, 106.52, NULL, NULL),
(2, '2021-12-08', 'acfrt4188981', '156', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(3, '2021-12-08', 'acfrt4188981', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(4, '2021-12-08', 'acfrt4188981', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(5, '2021-12-08', 'acfrt4188981', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(6, '2021-12-08', 'acfrt41', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(7, '2021-12-08', 'acfrt4', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 10.00, 10.00, NULL, 106.52, NULL, NULL),
(8, '2021-12-08', 'acfr5t4', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 0.00, 10.00, NULL, 106.52, NULL, NULL),
(9, '2021-12-08', 'acfr5t', '1', '2021-12-12', 'marco tshimangasix', 'inpureceiver78 company nam', 'cap', '80 campr', '0727408325', 150.00, 6.50, 0.00, 10.00, NULL, 106.52, NULL, NULL),
(10, '2021-12-08', 'frgt', '1', '2021-12-08', 'marco', 'marco', 'cape town', '80 campground rondebosch', 'marco', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, NULL),
(11, '2021-12-08', 'frgt45', '1', '2021-12-08', 'marco', 'marco', 'cape town', '80 campground rondebosch', 'marco', 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, NULL),
(12, '2021-12-08', 'frgt85', '1', '2021-12-08', 'marco', 'marco', 'cape town', '80 campground rondebosch', 'marco', 300.00, 300.00, 300.00, 562.00, NULL, 5000.00, NULL, NULL),
(13, '2021-12-31', 'fg4545', '1', '2021-12-08', 'marc', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 52.02, 5000.55, 45.20, 5214.00, 0.00, 5000.00, NULL, NULL),
(14, '2021-12-31', 'fg45455', '1', '2021-12-08', 'marc', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 52.02, 5000.55, 45.20, 5214.00, 0.00, 5000.00, NULL, NULL),
(15, '2021-12-31', 'fg454557', '1', '2021-12-08', 'marc', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 52.02, 5000.55, 45.20, 5214.00, 0.00, 5000.00, NULL, NULL),
(16, '2021-12-31', 'fg45456', '1', '2022-01-07', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 2000.00, 1.00, 1.00, 1.00, NULL, 5000.00, NULL, NULL),
(17, '2022-01-03', 'frgt15', '1', '2022-01-03', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(18, '2022-01-03', 'frgt89', '1', '2022-01-04', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', 'marco', 0.00, 0.00, 20.00, 6.00, NULL, 36.00, NULL, NULL),
(19, '2022-01-04', 'frgt56', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 20.00, NULL, 120.00, NULL, NULL),
(20, '2022-01-03', 'frgt8996', '1', '2022-02-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(21, '2022-01-03', 'frgt89966', '1', '2022-02-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 400.00, NULL, 2400.00, NULL, NULL),
(22, '2022-01-03', 'fg4545xyz', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 20.00, NULL, 120.00, NULL, NULL),
(23, '2022-01-03', 'frgt96321', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(24, '2022-01-03', 'frgt963215', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(25, '2022-01-04', 'frgt89kl', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', 'marco', 0.00, 0.00, 20.00, 104.00, NULL, 624.00, NULL, NULL),
(26, '2022-01-04', 'frgt89kly', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', 'marco', 0.00, 0.00, 20.00, 104.00, NULL, 624.00, NULL, NULL),
(27, '2022-01-03', 'frgtyu23', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 100.00, 0.00, 20.00, 20.00, NULL, 120.00, NULL, NULL),
(28, '2022-01-03', 'frgt89po', '1', '2022-01-03', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(29, '2022-01-03', 'Qfrgt89po', '1', '2022-01-03', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(30, '2022-01-03', '1Qfrgt89po', '1', '2022-01-03', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(31, '2022-01-03', 'frgt43', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 100.00, 0.00, 20.00, 20.00, NULL, 120.00, NULL, NULL),
(32, '2022-01-04', 'frgt78', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 2000.00, 0.00, 20.00, 400.00, NULL, 2400.00, NULL, NULL),
(33, '2022-01-03', 'frgt8520', '1', '2021-12-26', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(34, '2022-01-04', 'frgt89re7', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 1000.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(35, '2022-01-03', 'frgto', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 1000.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(36, '2022-01-03', 'frgt1', '1', '2022-02-03', 'marco', 'octobyte', 'cape town', '80 campground rondebosch', '0727408325', 1000.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(37, '2021-12-26', 'frgt89k', '2', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 200.00, 0.00, 20.00, 40.00, NULL, 240.00, NULL, NULL),
(38, '2021-12-26', 'frgt89kp', '2', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 240.00, 0.00, 20.00, 48.00, NULL, 288.00, NULL, NULL),
(39, '2022-01-03', 'frgt14', '1', '2022-01-03', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(40, '2022-01-03', 'frxsgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(41, '2022-01-04', 'frgt58', '1', '2022-01-04', 'marco', 'octobyes', 'cape town', '80 campground rondebosch', '0727408325', 4560.00, 0.00, 20.00, 912.00, NULL, 5472.00, NULL, NULL),
(42, '2022-01-04', 'ftefrgt', '2', '2022-01-11', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '5265214586', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(43, '2022-01-04', '1ftefrgt', '2', '2022-01-11', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '5265214586', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(44, '2022-01-04', '1458', '1', '2022-01-04', 'marco', 'octobtes', 'cape town', '80 campground rondebosch', '0727408325', 66410.00, 0.00, 20.00, 13282.00, NULL, 79692.00, NULL, NULL),
(45, '2022-01-04', '1rgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 1000.00, 0.00, 20.00, 200.00, NULL, 1200.00, NULL, NULL),
(46, '2022-01-04', '2rgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 1100.00, 0.00, 20.00, 220.00, NULL, 1320.00, NULL, NULL),
(47, '2022-01-04', '3fgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 10.00, 0.00, 20.00, 2.00, NULL, 12.00, NULL, NULL),
(48, '2022-01-04', '4fgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 10.00, 0.00, 20.00, 2.00, NULL, 12.00, NULL, NULL),
(49, '2022-01-04', '5fgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 10.00, 0.00, 20.00, 2.00, NULL, 12.00, NULL, NULL),
(50, '2022-01-04', '6fgt', '1', '2022-01-04', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 10.00, 0.00, 20.00, 2.00, NULL, 12.00, NULL, NULL),
(51, '2022-01-04', 'f9gt', '1', '2022-01-05', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 5000.00, 0.00, 20.00, 1000.00, NULL, 6000.00, NULL, NULL),
(52, '2022-01-04', 'fr9t', '1', '2022-01-05', 'cash1011', 'test1011', 'cape town', '80 campground rondebosch', '0727408325', 0.00, 0.00, 20.00, 0.00, NULL, 0.00, NULL, NULL),
(53, '2022-01-04', 'fr5t', '1', '2022-01-05', 'cash1011', 'test1011', 'cape town', '80 campground rondebosch', '0727408325', 5500.00, 0.00, 20.00, 1100.00, NULL, 6600.00, NULL, NULL),
(54, '2022-01-04', 'f15t', '12', '2022-01-20', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '5054682135', 0.00, 0.00, 15.00, 0.00, NULL, 0.00, NULL, NULL),
(55, '2022-01-05', '5rgt', '1', '2022-01-05', 'marco', 'octobytes', 'cape town', '80 campground rondebosch', '0727408325', 220.00, 0.00, 15.00, 33.00, NULL, 253.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices_items`
--

CREATE TABLE `invoices_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `item_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` double NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_items`
--

INSERT INTO `invoices_items` (`item_id`, `item_description`, `item_price`, `invoice_number`, `created_at`, `updated_at`) VALUES
(1, 'this', 450, 'acfrt4188981', NULL, NULL),
(2, 'this', 450, 'acfrt4188981', NULL, NULL),
(3, 'this', 450, 'acfrt4188981', NULL, NULL),
(4, 'this', 450, 'acfrt4188981', NULL, NULL),
(5, 'this', 450, 'acfrt4188981', NULL, NULL),
(6, 'this', 450, 'acfrt41', NULL, NULL),
(7, 'this', 450, 'acfrt4', NULL, NULL),
(8, 'this', 450, 'acfr5t4', NULL, NULL),
(9, 'this', 450, 'acfr5t', NULL, NULL),
(10, 'marco', 2500, 'frgt', NULL, NULL),
(11, 'marco', 2500, 'frgt45', NULL, NULL),
(12, 'marco', 250, 'frgt85', NULL, NULL),
(13, 'gulite', 50, 'fg4545', NULL, NULL),
(14, 'gulite', 50, 'fg45455', NULL, NULL),
(15, 'gulite', 50, 'fg454557', NULL, NULL),
(16, 'phone', 50, 'fg45456', NULL, NULL),
(17, 'marco', 500, '896584', NULL, NULL),
(18, 'marco', 500, '896584', NULL, NULL),
(19, 'Item name1', 1000, 'frgt15', NULL, NULL),
(20, 'Item name', 10, 'frgt89', NULL, NULL),
(21, 'Item name1', 100, '1515', NULL, NULL),
(22, 'Item name1', 100, '1515', NULL, NULL),
(23, 'Item name', 1000, '1515', NULL, NULL),
(24, 'Item name', 0, '1515', NULL, NULL),
(25, 'Item name', 1000, '1515', NULL, NULL),
(26, 'Item name', 1000, '1515', NULL, NULL),
(27, 'Item name', 100, '1515', NULL, NULL),
(28, 'Item name', 1000, '0', NULL, NULL),
(29, 'Item name', 1000, '0', NULL, NULL),
(30, 'Item name25', 520, '1717', NULL, NULL),
(31, 'Item name25', 520, '1717', NULL, NULL),
(32, 'Item name1', 100, '0', NULL, NULL),
(33, 'Item name1', 1000, '0', NULL, NULL),
(34, 'Item name1', 1000, '0', NULL, NULL),
(51, 'Item name', 4560, '0', NULL, NULL),
(52, 'Item name', 4560, '0', NULL, NULL),
(53, 'Item name5', 0, '0', NULL, NULL),
(54, 'Item name5', 0, '0', NULL, NULL),
(55, 'Item name5', 0, '0', NULL, NULL),
(56, 'Item name1', 1200, '0', NULL, NULL),
(57, 'Item name2', 65210, '0', NULL, NULL),
(58, 'Item name', 1000, '0', NULL, NULL),
(59, 'Item name', 1000, '0', NULL, NULL),
(60, 'Item name1', 100, '0', NULL, NULL),
(61, 'Item name', 10, '0', NULL, NULL),
(62, 'Item name', 10, '0', NULL, NULL),
(63, 'Item name', 10, '0', NULL, NULL),
(64, 'Item name', 10, '0', NULL, NULL),
(65, 'Item name1', 5000, 'f9gt', NULL, NULL),
(66, 'Item name1', 0, 'fr9t', NULL, NULL),
(67, 'Item name', 0, 'fr9t', NULL, NULL),
(68, 'Item name1', 4500, 'fr5t', NULL, NULL),
(69, 'Item name2', 1000, 'fr5t', NULL, NULL),
(70, 'Item name', 0, 'f15t', NULL, NULL),
(71, 'Item name1', 200, '5rgt', NULL, NULL),
(72, 'Item name2', 20, '5rgt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2021_12_17_150922_create_customers_table', 1),
(18, '2021_12_17_151223_create_invoices_table', 1),
(19, '2021_12_28_092027_create_invoices_items_table', 1),
(20, '2021_12_28_165708_create_items_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoices_items`
--
ALTER TABLE `invoices_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `invoices_items`
--
ALTER TABLE `invoices_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
