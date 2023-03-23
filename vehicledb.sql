-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 06:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` longtext NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `VList` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`, `VList`) VALUES
(1, 'testuser', 'test@test.com', '$2y$10$gAfAIxkpP4YKg2HBPERV..Za9I.DtE3oi7Y7o58D/O7wEU9oH/ezG', '1, 3, 5, 7, 9, 13, 22');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleimages`
--

CREATE TABLE `vehicleimages` (
  `Id` int(11) NOT NULL,
  `Vid` int(11) NOT NULL,
  `Image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicleimages`
--

INSERT INTO `vehicleimages` (`Id`, `Vid`, `Image_path`) VALUES
(1, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-1.jpg'),
(2, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-2.jpg'),
(3, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-3.jpg'),
(4, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-4.jpg'),
(5, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-5.jpg'),
(6, 1, 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-6.jpg'),
(7, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-1.jpg'),
(8, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-2.jpg'),
(9, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-3.jpg'),
(10, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-4.jpg'),
(11, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-5.jpg'),
(12, 2, 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-6.jpg'),
(13, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-1.jpg'),
(14, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-2.jpg'),
(15, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-3.jpg'),
(16, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-4.jpg'),
(17, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-5.jpg'),
(18, 3, 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-6.jpg'),
(19, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-1.jpg'),
(20, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-2.jpg'),
(21, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-3.jpg'),
(22, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-4.jpg'),
(23, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-5.jpg'),
(24, 4, 'https://vehicle-photos-published.vauto.com/59/da/8c/02-0fd9-4d89-b530-30cc7bda2600/image-6.jpg'),
(25, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-1.jpg'),
(26, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-2.jpg'),
(27, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-3.jpg'),
(28, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-4.jpg'),
(29, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-5.jpg'),
(30, 5, 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-6.jpg'),
(31, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-1.jpg'),
(32, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-2.jpg'),
(33, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-3.jpg'),
(34, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-4.jpg'),
(35, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-5.jpg'),
(36, 6, 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-6.jpg'),
(37, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-1.jpg'),
(38, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-2.jpg'),
(39, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-3.jpg'),
(40, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-4.jpg'),
(41, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-5.jpg'),
(42, 7, 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-6.jpg'),
(43, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-6.jpg'),
(44, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-2.jpg'),
(45, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-3.jpg'),
(46, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-4.jpg'),
(47, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-5.jpg'),
(48, 8, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-6.jpg'),
(49, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-1.jpg'),
(50, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-2.jpg'),
(51, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-3.jpg'),
(52, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-4.jpg'),
(53, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-5.jpg'),
(54, 9, 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-6.jpg'),
(55, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-1.jpg'),
(56, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-2.jpg'),
(57, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-3.jpg'),
(58, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-4.jpg'),
(59, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-5.jpg'),
(60, 10, 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-6.jpg'),
(61, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-1.jpg'),
(62, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-2.jpg'),
(63, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-3.jpg'),
(64, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-4.jpg'),
(65, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-5.jpg'),
(66, 11, 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-6.jpg'),
(67, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-1.jpg'),
(68, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-2.jpg'),
(69, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-3.jpg'),
(70, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-4.jpg'),
(71, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-5.jpg'),
(72, 12, 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-6.jpg'),
(73, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-1.jpg'),
(74, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-2.jpg'),
(75, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-3.jpg'),
(76, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-4.jpg'),
(77, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-5.jpg'),
(78, 13, 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-6.jpg'),
(79, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-1.jpg'),
(80, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-2.jpg'),
(81, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-3.jpg'),
(82, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-4.jpg'),
(83, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-5.jpg'),
(84, 14, 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-6.jpg'),
(85, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-1.jpg'),
(86, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-2.jpg'),
(87, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-3.jpg'),
(88, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-4.jpg'),
(89, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-5.jpg'),
(90, 15, 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-6.jpg'),
(91, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-1.jpg'),
(92, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-2.jpg'),
(93, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-3.jpg'),
(94, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-4.jpg'),
(95, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-5.jpg'),
(96, 16, 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-6.jpg'),
(97, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-1.jpg'),
(98, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-2.jpg'),
(99, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-3.jpg'),
(100, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-4.jpg'),
(101, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-5.jpg'),
(102, 17, 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-6.jpg'),
(103, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-1.jpg'),
(104, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-2.jpg'),
(105, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-3.jpg'),
(106, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-4.jpg'),
(107, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-5.jpg'),
(108, 18, 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-6.jpg'),
(109, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-1.jpg'),
(110, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-2.jpg'),
(111, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-3.jpg'),
(112, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-4.jpg'),
(113, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-5.jpg'),
(114, 19, 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-6.jpg'),
(115, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-1.jpg'),
(116, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-2.jpg'),
(117, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-3.jpg'),
(118, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-4.jpg'),
(119, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-5.jpg'),
(120, 20, 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-6.jpg'),
(121, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-1.jpg'),
(122, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-2.jpg'),
(123, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-3.jpg'),
(124, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-4.jpg'),
(125, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-5.jpg'),
(126, 21, 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-6.jpg'),
(127, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-1.jpg'),
(128, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-2.jpg'),
(129, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-3.jpg'),
(130, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-4.jpg'),
(131, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-5.jpg'),
(132, 22, 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclelist`
--

CREATE TABLE `vehiclelist` (
  `Id` int(11) NOT NULL,
  `vehicleName` text NOT NULL,
  `vehicleImage` longtext NOT NULL,
  `DiscPrice` text NOT NULL,
  `DescName` text NOT NULL,
  `DescFullName` longtext NOT NULL,
  `DescCon` text NOT NULL,
  `DescRPrice` text NOT NULL,
  `DescSavings` text NOT NULL,
  `DescSPrice` text NOT NULL,
  `DescStockNum` text NOT NULL,
  `DescMileage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehiclelist`
--

INSERT INTO `vehiclelist` (`Id`, `vehicleName`, `vehicleImage`, `DiscPrice`, `DescName`, `DescFullName`, `DescCon`, `DescRPrice`, `DescSavings`, `DescSPrice`, `DescStockNum`, `DescMileage`) VALUES
(1, '2022 Chevrolet Silverado 1500', 'https://vehicle-photos-published.vauto.com/f2/47/2a/ea-af61-44b4-b8f7-94d209ed85ff/image-1.jpg', '$56,400.00', 'Chevrolet', '2022 Chevrolet Silverado 1500', 'New', '$58,150.00', '$1,750.00', '$56,400.00', '617281', 5),
(2, '2023 Buick Envision', 'https://vehicle-photos-published.vauto.com/6d/ee/79/9f-fd60-49cd-a86b-327c3d04d919/image-1.jpg', '$39,365.00', 'Buick', '2023 Buick Envision', 'New', '$39,365.00', '', '', '024590', 11),
(3, '2023 Buick Envision', 'https://vehicle-photos-published.vauto.com/b8/71/da/cd-4e4d-4cb5-8cdf-5edf94458baa/image-1.jpg', '$37,990.00', 'Buick', '2023 Buick Envision', 'New', '$37,990.00', '', '', '024279', 16),
(4, '2023 Buick Envision', 'https://vehicle-photos-published.vauto.com/a0/73/87/0f-a5c2-4080-ad4b-09ad93dd1c84/image-1.jpg', '$47,080.00', 'Buick', '2023 Buick Envision', 'New', '$47,080.00', '', '', '023071', 13),
(5, '2023 Buick Envision', 'https://vehicle-photos-published.vauto.com/01/2b/fd/76-499a-4267-af46-3cadf0f9d44c/image-1.jpg', '$38,870.00', 'Buick', '2023 Buick Envision', 'New', '$38,870.00', '', '', '022183', 12),
(6, '2023 Chevrolet Silverado 1500', 'https://vehicle-photos-published.vauto.com/a0/73/87/0f-a5c2-4080-ad4b-09ad93dd1c84/image-1.jpg', '$60,880.00', 'Chevrolet', '2023 Chevrolet Silverado 1500', 'New', '$61,130.00', '$250.00', '$60,880.00', '143343', 11),
(7, '2023 GMC Sierra 1500', 'https://vehicle-photos-published.vauto.com/83/55/c4/b9-c615-4a13-8e23-1c739e14b2c8/image-1.jpg', '$66,890.00', 'GMC', '2023 GMC Sierra 1500', 'New', '$66,890.00', '', '', '160074', 4),
(8, '2023 Buick Enclave', 'https://vehicle-photos-published.vauto.com/43/b0/07/8d-c928-4b17-8b9d-20ad80818b31/image-1.jpg', '$58,845.00', 'Buick', '2023 Buick Enclave', 'New', '$59,095.00', '$250.00', '$58,845.00', '186139', 4),
(9, '2023 Buick Encore GX', 'https://vehicle-photos-published.vauto.com/e6/0f/1d/b4-e40e-445f-8e91-cd06c686a183/image-1.jpg', '$29,285.00', 'Buick', '2023 Buick Encore GX', 'New', '', '', '', '068734', 5),
(10, '2023 Buick Encore GX', 'https://vehicle-photos-published.vauto.com/fc/97/51/6c-0064-44e7-b196-c3292c33380c/image-1.jpg', '$27,690.00', 'Buick', '2023 Buick Encore GX', 'New', '', '', '', '067681', 6),
(11, '2023 GMC Sierra 1500', 'https://vehicle-photos-published.vauto.com/67/68/75/5b-d8b4-48d3-b55a-97980c2c9665/image-1.jpg', '$66,890.00', 'GMC', '2023 GMC Sierra 1500', 'New', '$66,890.00', '', '', '182172', 3),
(12, '2022 Chevrolet Silverado 1500', 'https://vehicle-photos-published.vauto.com/c9/b1/57/dd-a8af-41f6-8aec-82c066336f6c/image-1.jpg', '$69,495.00', 'Chevrolet', '2022 Chevrolet Silverado 1500', 'New', '$70,245.00', '$750.00', '$69,495.00', '584593', 4),
(13, '2022 Buick Encore', 'https://vehicle-photos-published.vauto.com/3f/d0/62/67-d05b-4708-8307-6e971693bf57/image-1.jpg', '$29,245.00', 'Buick', '2022 Buick Encore', 'New', '$29,245.00', '', '', '568445', 6),
(14, '2023 Chevrolet Silverado 1500', 'https://vehicle-photos-published.vauto.com/ed/d3/31/53-8eb5-4f6d-8425-a31d3254202a/image-1.jpg', '$46,870.00', 'Chevrolet', '2023 Chevrolet Silverado 1500', 'New', '$47,120.00', '$250.00', '$46,870.00', '202589', 6),
(15, '2023 GMC Sierra 1500', 'https://vehicle-photos-published.vauto.com/b9/96/51/cf-4c15-402b-a546-deb55a5fd414/image-1.jpg', '$66,890.00', 'GMC', '2023 GMC Sierra 1500', 'New', '$66,890.00', '', '', '187340', 4),
(16, '2022 Chevrolet Trax', 'https://vehicle-photos-published.vauto.com/ca/db/53/f9-8e8f-4c71-bcca-bb9ec7f6a024/image-1.jpg', '$24,805.00', 'Chevrolet', '2022 Chevrolet Trax', 'New', '$25,805.00', '$1,000.00', '$24,805.00', '567303', 7),
(17, '2023 Chevrolet Equinox', 'https://vehicle-photos-published.vauto.com/46/75/7b/85-d117-4d08-8653-51b794bcc090/image-1.jpg', '$35,370.00', 'Chevrolet', '2023 Chevrolet Equinox', 'New', '$36,370.00', '$1,000.00', '$35,370.00', '167876', 3),
(18, '2023 GMC Sierra 1500', 'https://vehicle-photos-published.vauto.com/c0/d2/9a/8b-5424-4290-a880-29afe295622f/image-1.jpg', '$78,205.00', 'GMC', '2023 GMC Sierra 1500', 'New', '$78,205.00', '', '', '225015', 6),
(19, '2023 GMC Sierra 1500', 'https://vehicle-photos-published.vauto.com/0b/f6/dc/8b-2bec-4b7e-b4ca-9d01c77df2d0/image-1.jpg', '$79,775.00', 'GMC', '2023 GMC Sierra 1500', 'New', '$79,775.00', '', '', '222054', 5),
(20, '2023 Chevrolet TrailBlazer', 'https://vehicle-photos-published.vauto.com/e3/5a/a8/b0-9aa2-4508-a3df-e8cdc175c6d5/image-1.jpg', '$29,795.00', 'Chevrolet', '2023 Chevrolet TrailBlazer', 'New', '$29,795.00', '', '', '074388', 7),
(21, '2023 Chevrolet Silverado 1500', 'https://vehicle-photos-published.vauto.com/35/7c/a3/a0-6fed-4854-88d7-867db9b96529/image-1.jpg', '$50,140.00', 'Chevrolet', '2023 Chevrolet Silverado 1500', 'New', '$51,390.00', '$1,250.00', '$50,140.00', '227396', 5),
(22, '2023 Buick Encore GX', 'https://vehicle-photos-published.vauto.com/7b/66/f5/ba-f335-4f6d-a4ac-03d9e160edfa/image-1.jpg', '$30,355.00', 'Buick', '2023 Buick Encore GX', 'New', '$30,605.00', '$250.00', '$30,355.00', '096808', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicleimages`
--
ALTER TABLE `vehicleimages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vehiclelist`
--
ALTER TABLE `vehiclelist`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicleimages`
--
ALTER TABLE `vehicleimages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `vehiclelist`
--
ALTER TABLE `vehiclelist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
