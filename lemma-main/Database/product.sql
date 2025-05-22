-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 jan. 2025 à 19:50
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lemma`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `discription` varchar(255) NOT NULL,
  `theme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `User_Id`, `Name`, `photo`, `price`, `discription`, `theme_id`) VALUES
(1, 1, 'Caftan - A', '../assets/Images/AttireImages/Images1/image1a.jpg', 150, 'Beautiful traditional Caftan A', 1),
(2, 2, 'Caftan - B', '../assets/Images/AttireImages/Images1/image1b.jpg', 160, 'Beautiful traditional Caftan B', 1),
(3, 3, 'Caftan - C', '../assets/Images/AttireImages/Images1/image1c.jpg', 170, 'Beautiful traditional Caftan C', 1),
(4, 4, 'Caftan - D', '../assets/Images/AttireImages/Images1/image1d.jpg', 180, 'Beautiful traditional Caftan D', 1),
(5, 5, 'Caftan - E', '../assets/Images/AttireImages/Images1/image1e.jpg', 190, 'Beautiful traditional Caftan E', 1),
(6, 6, 'Karako - A', '../assets/Images/AttireImages/Images1/image2a.jpg', 200, 'Elegant Karako A', 2),
(7, 7, 'Karako - B', '../assets/Images/AttireImages/Images1/image2b.jpg', 210, 'Elegant Karako B', 2),
(8, 8, 'Karako - C', '../assets/Images/AttireImages/Images1/image2c.jpg', 220, 'Elegant Karako C', 2),
(9, 9, 'Karako - D', '../assets/Images/AttireImages/Images1/image2d.jpg', 230, 'Elegant Karako D', 2),
(10, 10, 'Karako - E', '../assets/Images/AttireImages/Images1/image2e.jpg', 240, 'Elegant Karako E', 2),
(11, 11, 'Robe Kabyle - A', '../assets/Images/AttireImages/Images1/image3a.jpg', 175, 'Traditional Kabyle Robe A', 3),
(12, 12, 'Robe Kabyle - B', '../assets/Images/AttireImages/Images1/image3b.jpg', 185, 'Traditional Kabyle Robe B', 3),
(13, 13, 'Robe Kabyle - C', '../assets/Images/AttireImages/Images1/image3c.jpg', 195, 'Traditional Kabyle Robe C', 3),
(14, 14, 'Robe Kabyle - D', '../assets/Images/AttireImages/Images1/image3d.jpg', 205, 'Traditional Kabyle Robe D', 3),
(15, 15, 'Robe Kabyle - E', '../assets/Images/AttireImages/Images1/image3e.jpg', 215, 'Traditional Kabyle Robe E', 3),
(16, 16, 'Melhfa - A', '../assets/Images/AttireImages/Images1/image4a.jpg', 180, 'Stylish Melhfa A', 4),
(17, 17, 'Melhfa - B', '../assets/Images/AttireImages/Images1/image4b.jpg', 190, 'Stylish Melhfa B', 4),
(18, 18, 'Melhfa - C', '../assets/Images/AttireImages/Images1/image4c.jpg', 200, 'Stylish Melhfa C', 4),
(19, 19, 'Melhfa - D', '../assets/Images/AttireImages/Images1/image4d.jpg', 210, 'Stylish Melhfa D', 4),
(20, 20, 'Melhfa - E', '../assets/Images/AttireImages/Images1/image4e.jpg', 220, 'Stylish Melhfa E', 4),
(21, 21, 'Guendora - A', '../assets/Images/AttireImages/Images1/image5a.jpg', 160, 'Classic Guendora A', 5),
(22, 22, 'Guendora - B', '../assets/Images/AttireImages/Images1/image5b.jpg', 170, 'Classic Guendora B', 5),
(23, 23, 'Guendora - C', '../assets/Images/AttireImages/Images1/image5c.jpg', 180, 'Classic Guendora C', 5),
(24, 24, 'Guendora - D', '../assets/Images/AttireImages/Images1/image5d.jpg', 190, 'Classic Guendora D', 5),
(25, 25, 'Guendora - E', '../assets/Images/AttireImages/Images1/image5e.jpg', 200, 'Classic Guendora E', 5),
(26, 26, 'Chedda Tlemcenia - A', '../assets/Images/AttireImages/Images1/image6a.jpg', 220, 'Luxurious Chedda Tlemcenia A', 6),
(27, 27, 'Chedda Tlemcenia - B', '../assets/Images/AttireImages/Images1/image6b.jpg', 230, 'Luxurious Chedda Tlemcenia B', 6),
(28, 28, 'Chedda Tlemcenia - C', '../assets/Images/AttireImages/Images1/image6c.jpg', 240, 'Luxurious Chedda Tlemcenia C', 6),
(29, 29, 'Chedda Tlemcenia - D', '../assets/Images/AttireImages/Images1/image6d.jpg', 250, 'Luxurious Chedda Tlemcenia D', 6),
(30, 30, 'Chedda Tlemcenia - E', '../assets/Images/AttireImages/Images1/image6e.jpg', 260, 'Luxurious Chedda Tlemcenia E', 6),
(31, 31, 'Blousa - A', '../assets/Images/AttireImages/Images1/image7a.jpg', 140, 'Elegant Blousa A', 7),
(32, 32, 'Blousa - B', '../assets/Images/AttireImages/Images1/image7b.jpg', 150, 'Elegant Blousa B', 7),
(33, 33, 'Blousa - C', '../assets/Images/AttireImages/Images1/image7c.jpg', 160, 'Elegant Blousa C', 7),
(34, 34, 'Blousa - D', '../assets/Images/AttireImages/Images1/image7d.jpg', 170, 'Elegant Blousa D', 7),
(35, 35, 'Blousa - E', '../assets/Images/AttireImages/Images1/image7e.jpg', 180, 'Elegant Blousa E', 7),
(36, 36, 'Robe Soirée - A', '../assets/Images/AttireImages/Images1/image8a.jpg', 190, 'Chic Robe Soirée A', 8),
(37, 37, 'Robe Soirée - B', '../assets/Images/AttireImages/Images1/image8b.jpg', 200, 'Chic Robe Soirée B', 8),
(38, 38, 'Robe Soirée - C', '../assets/Images/AttireImages/Images1/image8c.jpg', 210, 'Chic Robe Soirée C', 8),
(39, 39, 'Robe Soirée - D', '../assets/Images/AttireImages/Images1/image8d.jpg', 220, 'Chic Robe Soirée D', 8),
(40, 40, 'Robe Soirée - E', '../assets/Images/AttireImages/Images1/image8e.jpg', 230, 'Chic Robe Soirée E', 8),
(41, 41, 'Robe Blanche - A', '../assets/Images/AttireImages/Images1/image9a.jpg', 210, 'White Robe A', 9),
(42, 42, 'Robe Blanche - B', '../assets/Images/AttireImages/Images1/image9b.jpg', 220, 'White Robe B', 9),
(43, 43, 'Robe Blanche - C', '../assets/Images/AttireImages/Images1/image9c.jpg', 230, 'White Robe C', 9),
(44, 44, 'Robe Blanche - D', '../assets/Images/AttireImages/Images1/image9d.jpg', 240, 'White Robe D', 9),
(45, 45, 'Robe Blanche - E', '../assets/Images/AttireImages/Images1/image9e.jpg', 250, 'White Robe E', 9),
(46, 46, 'Soft White Outfit - A', '../assets/Images/AttireImages/Images3/image1a.jpg', 130, 'White outfit for birthdays A', 29),
(47, 47, 'Soft White Outfit - B', '../assets/Images/AttireImages/Images3/image1b.jpg', 140, 'White outfit for birthdays B', 29),
(48, 48, 'Soft White Outfit - C', '../assets/Images/AttireImages/Images3/image1c.jpg', 150, 'White outfit for birthdays C', 29),
(49, 49, 'Soft White Outfit - D', '../assets/Images/AttireImages/Images3/image1d.jpg', 160, 'White outfit for birthdays D', 29),
(50, 50, 'Soft White Outfit - E', '../assets/Images/AttireImages/Images3/image1e.jpg', 170, 'White outfit for birthdays E', 29),
(51, 51, 'Classy Black Outfit - A', '../assets/Images/AttireImages/Images3/image2a.jpg', 140, 'Black outfit for formal events A', 30),
(52, 52, 'Classy Black Outfit - B', '../assets/Images/AttireImages/Images3/image2b.jpg', 150, 'Black outfit for formal events B', 30),
(53, 53, 'Classy Black Outfit - C', '../assets/Images/AttireImages/Images3/image2c.jpg', 160, 'Black outfit for formal events C', 30),
(54, 54, 'Classy Black Outfit - D', '../assets/Images/AttireImages/Images3/image2d.jpg', 170, 'Black outfit for formal events D', 30),
(55, 55, 'Classy Black Outfit - E', '../assets/Images/AttireImages/Images3/image2e.jpg', 180, 'Black outfit for formal events E', 30),
(56, 56, 'Floral Style Outfit - A', '../assets/Images/AttireImages/Images3/image3a.jpg', 120, 'Floral style outfit for birthdays A', 31),
(57, 57, 'Floral Style Outfit - B', '../assets/Images/AttireImages/Images3/image3b.jpg', 130, 'Floral style outfit for birthdays B', 31),
(58, 58, 'Floral Style Outfit - C', '../assets/Images/AttireImages/Images3/image3c.jpg', 140, 'Floral style outfit for birthdays C', 31),
(59, 59, 'Floral Style Outfit - D', '../assets/Images/AttireImages/Images3/image3d.jpg', 150, 'Floral style outfit for birthdays D', 31),
(60, 60, 'Floral Style Outfit - E', '../assets/Images/AttireImages/Images3/image3e.jpg', 160, 'Floral style outfit for birthdays E', 31),
(61, 61, 'Other Colors Outfits - A', '../assets/Images/AttireImages/Images3/image4a.jpg', 150, 'Various colorful outfits A', 32),
(62, 62, 'Other Colors Outfits - B', '../assets/Images/AttireImages/Images3/image4b.jpg', 160, 'Various colorful outfits B', 32),
(63, 63, 'Other Colors Outfits - C', '../assets/Images/AttireImages/Images3/image4c.jpg', 170, 'Various colorful outfits C', 32),
(64, 64, 'Other Colors Outfits - D', '../assets/Images/AttireImages/Images3/image4d.jpg', 180, 'Various colorful outfits D', 32),
(65, 65, 'Other Colors Outfits - E', '../assets/Images/AttireImages/Images3/image4e.jpg', 190, 'Various colorful outfits E', 32),
(66, 66, 'Soft Girly Outfit - A', '../assets/Images/AttireImages/Images4/image1a.jpg', 110, 'Soft girly outfit A', 33),
(67, 67, 'Soft Girly Outfit - B', '../assets/Images/AttireImages/Images4/image1b.jpg', 115, 'Soft girly outfit B', 33),
(68, 68, 'Soft Girly Outfit - C', '../assets/Images/AttireImages/Images4/image1c.jpg', 120, 'Soft girly outfit C', 33),
(69, 69, 'Soft Girly Outfit - D', '../assets/Images/AttireImages/Images4/image1d.jpg', 125, 'Soft girly outfit D', 33),
(70, 70, 'Soft Girly Outfit - E', '../assets/Images/AttireImages/Images4/image1e.jpg', 130, 'Soft girly outfit E', 33),
(71, 71, 'Cute Boyish Outfit - A', '../assets/Images/AttireImages/Images4/image2a.jpg', 110, 'Cute boyish outfit A', 34),
(72, 72, 'Cute Boyish Outfit - B', '../assets/Images/AttireImages/Images4/image2b.jpg', 115, 'Cute boyish outfit B', 34),
(73, 73, 'Cute Boyish Outfit - C', '../assets/Images/AttireImages/Images4/image2c.jpg', 120, 'Cute boyish outfit C', 34),
(74, 74, 'Cute Boyish Outfit - D', '../assets/Images/AttireImages/Images4/image2d.jpg', 125, 'Cute boyish outfit D', 34),
(75, 75, 'Cute Boyish Outfit - E', '../assets/Images/AttireImages/Images4/image2e.jpg', 130, 'Cute boyish outfit E', 34),
(76, 76, 'Neutral Beige Outfit - A', '../assets/Images/AttireImages/Images4/image3a.jpg', 115, 'Neutral beige outfit A', 35),
(77, 77, 'Neutral Beige Outfit - B', '../assets/Images/AttireImages/Images4/image3b.jpg', 120, 'Neutral beige outfit B', 35),
(78, 78, 'Neutral Beige Outfit - C', '../assets/Images/AttireImages/Images4/image3c.jpg', 125, 'Neutral beige outfit C', 35),
(79, 79, 'Neutral Beige Outfit - D', '../assets/Images/AttireImages/Images4/image3d.jpg', 130, 'Neutral beige outfit D', 35),
(80, 80, 'Neutral Beige Outfit - E', '../assets/Images/AttireImages/Images4/image3e.jpg', 135, 'Neutral beige outfit E', 35),
(81, 81, 'Elegant Mom Outfit - A', '../assets/Images/AttireImages/Images4/image4a.jpg', 130, 'Elegant mom outfit A', 36),
(82, 82, 'Elegant Mom Outfit - B', '../assets/Images/AttireImages/Images4/image4b.jpg', 135, 'Elegant mom outfit B', 36),
(83, 83, 'Elegant Mom Outfit - C', '../assets/Images/AttireImages/Images4/image4c.jpg', 140, 'Elegant mom outfit C', 36),
(84, 84, 'Elegant Mom Outfit - D', '../assets/Images/AttireImages/Images4/image4d.jpg', 145, 'Elegant mom outfit D', 36),
(85, 85, 'Elegant Mom Outfit - E', '../assets/Images/AttireImages/Images4/image4e.jpg', 150, 'Elegant mom outfit E', 36),
(86, 86, 'Semi Formal Classic Outfit - A', '../assets/Images/AttireImages/Images5/image1a.jpg', 160, 'Semi formal classic outfit A', 45),
(87, 87, 'Semi Formal Classic Outfit - B', '../assets/Images/AttireImages/Images5/image1b.jpg', 165, 'Semi formal classic outfit B', 45),
(88, 88, 'Semi Formal Classic Outfit - C', '../assets/Images/AttireImages/Images5/image1c.jpg', 170, 'Semi formal classic outfit C', 45),
(89, 89, 'Semi Formal Classic Outfit - D', '../assets/Images/AttireImages/Images5/image1d.jpg', 175, 'Semi formal classic outfit D', 45),
(90, 90, 'Semi Formal Classic Outfit - E', '../assets/Images/AttireImages/Images5/image1e.jpg', 180, 'Semi formal classic outfit E', 45),
(91, 91, 'Formal Classic Outfit - A', '../assets/Images/AttireImages/Images5/image2a.jpg', 170, 'Formal classic outfit A', 46),
(92, 92, 'Formal Classic Outfit - B', '../assets/Images/AttireImages/Images5/image2b.jpg', 175, 'Formal classic outfit B', 46),
(93, 93, 'Formal Classic Outfit - C', '../assets/Images/AttireImages/Images5/image2c.jpg', 180, 'Formal classic outfit C', 46),
(94, 94, 'Formal Classic Outfit - D', '../assets/Images/AttireImages/Images5/image2d.jpg', 185, 'Formal classic outfit D', 46),
(95, 95, 'Formal Classic Outfit - E', '../assets/Images/AttireImages/Images5/image2e.jpg', 190, 'Formal classic outfit E', 46),
(96, 96, 'Hijabies Outfit - A', '../assets/Images/AttireImages/Images5/image3a.jpg', 150, 'Hijabies outfit A', 47),
(97, 97, 'Hijabies Outfit - B', '../assets/Images/AttireImages/Images5/image3b.jpg', 155, 'Hijabies outfit B', 47),
(98, 98, 'Hijabies Outfit - C', '../assets/Images/AttireImages/Images5/image3c.jpg', 160, 'Hijabies outfit C', 47),
(99, 99, 'Hijabies Outfit - D', '../assets/Images/AttireImages/Images5/image3d.jpg', 165, 'Hijabies outfit D', 47),
(100, 100, 'Hijabies Outfit - E', '../assets/Images/AttireImages/Images5/image3e.jpg', 170, 'Hijabies outfit E', 47),
(101, 1, 'Formal Men Classic Outfit - A', '../assets/Images/AttireImages/Images5/image4a.jpg', 180, 'Formal men classic outfit A', 48),
(102, 2, 'Formal Men Classic Outfit - B', '../assets/Images/AttireImages/Images5/image4b.jpg', 185, 'Formal men classic outfit B', 48),
(103, 3, 'Formal Men Classic Outfit - C', '../assets/Images/AttireImages/Images5/image4c.jpg', 190, 'Formal men classic outfit C', 48),
(104, 4, 'Formal Men Classic Outfit - D', '../assets/Images/AttireImages/Images5/image4d.jpg', 195, 'Formal men classic outfit D', 48),
(105, 5, 'Formal Men Classic Outfit - E', '../assets/Images/AttireImages/Images5/image4e.jpg', 200, 'Formal men classic outfit E', 48),
(106, 6, 'Classic Black Graduation Outfit - A', '../assets/Images/AttireImages/Images2/image1a.jpg', 120, 'Classic black graduation outfit A', 55),
(107, 7, 'Classic Black Graduation Outfit - B', '../assets/Images/AttireImages/Images2/image1b.jpg', 125, 'Classic black graduation outfit B', 55),
(108, 8, 'Classic Black Graduation Outfit - C', '../assets/Images/AttireImages/Images2/image1c.jpg', 130, 'Classic black graduation outfit C', 55),
(109, 9, 'Classic Black Graduation Outfit - D', '../assets/Images/AttireImages/Images2/image1d.jpg', 135, 'Classic black graduation outfit D', 55),
(110, 10, 'Classic Black Graduation Outfit - E', '../assets/Images/AttireImages/Images2/image1e.jpg', 140, 'Classic black graduation outfit E', 55),
(111, 11, 'Soft Blue Graduation Outfit - A', '../assets/Images/AttireImages/Images2/image2a.jpg', 130, 'Soft blue graduation outfit A', 56),
(112, 12, 'Soft Blue Graduation Outfit - B', '../assets/Images/AttireImages/Images2/image2b.jpg', 135, 'Soft blue graduation outfit B', 56),
(113, 13, 'Soft Blue Graduation Outfit - C', '../assets/Images/AttireImages/Images2/image2c.jpg', 140, 'Soft blue graduation outfit C', 56),
(114, 14, 'Soft Blue Graduation Outfit - D', '../assets/Images/AttireImages/Images2/image2d.jpg', 145, 'Soft blue graduation outfit D', 56),
(115, 15, 'Soft Blue Graduation Outfit - E', '../assets/Images/AttireImages/Images2/image2e.jpg', 150, 'Soft blue graduation outfit E',56 ),
(116, 16, 'Baby Pink Graduation Outfit - A', '../assets/Images/AttireImages/Images2/image3a.jpg', 125, 'Baby pink graduation outfit A', 57),
(117, 17, 'Baby Pink Graduation Outfit - B', '../assets/Images/AttireImages/Images2/image3b.jpg', 130, 'Baby pink graduation outfit B', 57),
(118, 18, 'Baby Pink Graduation Outfit - C', '../assets/Images/AttireImages/Images2/image3c.jpg', 135, 'Baby pink graduation outfit C', 57),
(119, 19, 'Baby Pink Graduation Outfit - D', '../assets/Images/AttireImages/Images2/image3d.jpg', 140, 'Baby pink graduation outfit D', 57),
(120, 20, 'Baby Pink Graduation Outfit - E', '../assets/Images/AttireImages/Images2/image3e.jpg', 145, 'Baby pink graduation outfit E', 57),
(121, 21, 'Other Graduation Outfit - A', '../assets/Images/AttireImages/Images2/image4a.jpg', 140, 'Other graduation outfit A', 58),
(122, 22, 'Other Graduation Outfit - B', '../assets/Images/AttireImages/Images2/image4b.jpg', 145, 'Other graduation outfit B', 58),
(123, 23, 'Other Graduation Outfit - C', '../assets/Images/AttireImages/Images2/image4c.jpg', 150, 'Other graduation outfit C', 58),
(124, 24, 'Other Graduation Outfit - D', '../assets/Images/AttireImages/Images2/image4d.jpg', 155, 'Other graduation outfit D', 58),
(125, 25, 'Other Graduation Outfit - E', '../assets/Images/AttireImages/Images2/image4e.jpg', 160, 'Other graduation outfit E', 58),
(126, 6, 'Celebrate the memories of your dream day - A', '../assets/Images/PhotographyImages/image1a.jpg', 200, 'Celebrate the memories of your dream day A', 1),
(127, 7, 'Celebrate the memories of your dream day - B', '../assets/Images/PhotographyImages/image1b.jpg', 220, 'Celebrate the memories of your dream day B', 1),
(128, 8, 'Celebrate the memories of your dream day - C', '../assets/Images/PhotographyImages/image1c.jpg', 240, 'Celebrate the memories of your dream day C', 1),
(129, 9, 'Celebrate the memories of your dream day - D', '../assets/Images/PhotographyImages/image1d.jpg', 260, 'Celebrate the memories of your dream day D', 1),
(130, 10, 'Celebrate the memories of your dream day - E', '../assets/Images/PhotographyImages/image1e.jpg', 280, 'Celebrate the memories of your dream day E', 1),
(131, 11, 'Capture Your Pride At Your Graduation Ceremony - A', '../assets/Images/PhotographyImages/image2a.jpg', 200, 'Capture Your Pride At Your Graduation Ceremony A', 2),
(132, 12, 'Capture Your Pride At Your Graduation Ceremony - B', '../assets/Images/PhotographyImages/image2b.jpg', 220, 'Capture Your Pride At Your Graduation Ceremony B', 2),
(133, 13, 'Capture Your Pride At Your Graduation Ceremony - C', '../assets/Images/PhotographyImages/image2c.jpg', 240, 'Capture Your Pride At Your Graduation Ceremony C', 2),
(134, 14, 'Capture Your Pride At Your Graduation Ceremony - D', '../assets/Images/PhotographyImages/image2d.jpg', 260, 'Capture Your Pride At Your Graduation Ceremony D', 2),
(135, 15, 'Capture Your Pride At Your Graduation Ceremony - E', '../assets/Images/PhotographyImages/image2e.jpg', 280, 'Capture Your Pride At Your Graduation Ceremony E', 2),
(136, 16, 'Honor your moments of professional achievement - A', '../assets/Images/PhotographyImages/image3a.jpg', 200, 'Honor your moments of professional achievement A', 3),
(137, 17, 'Honor your moments of professional achievement - B', '../assets/Images/PhotographyImages/image3b.jpg', 220, 'Honor your moments of professional achievement B', 3),
(138, 18, 'Honor your moments of professional achievement - C', '../assets/Images/PhotographyImages/image3c.jpg', 240, 'Honor your moments of professional achievement C', 3),
(139, 19, 'Honor your moments of professional achievement - D', '../assets/Images/PhotographyImages/image3d.jpg', 260, 'Honor your moments of professional achievement D', 3),
(140, 20, 'Honor your moments of professional achievement - E', '../assets/Images/PhotographyImages/image3e.jpg', 280, 'Honor your moments of professional achievement E', 3),
(141, 21, 'Let Your Birthday Memories Live Forever - A', '../assets/Images/PhotographyImages/image4a.jpg', 200, 'Let Your Birthday Memories Live Forever A', 4),
(142, 22, 'Let Your Birthday Memories Live Forever - B', '../assets/Images/PhotographyImages/image4b.jpg', 220, 'Let Your Birthday Memories Live Forever B', 4),
(143, 23, 'Let Your Birthday Memories Live Forever - C', '../assets/Images/PhotographyImages/image4c.jpg', 240, 'Let Your Birthday Memories Live Forever C', 4),
(144, 24, 'Let Your Birthday Memories Live Forever - D', '../assets/Images/PhotographyImages/image4d.jpg', 260, 'Let Your Birthday Memories Live Forever D', 4),
(145, 25, 'Let Your Birthday Memories Live Forever - E', '../assets/Images/PhotographyImages/image4e.jpg', 280, 'Let Your Birthday Memories Live Forever E', 4),
(146, 26, 'Take The Loveliest Picture Of Your Baby - A', '../assets/Images/PhotographyImages/image5a.jpg', 200, 'Take The Loveliest Picture Of Your Baby A', 5),
(147, 27, 'Take The Loveliest Picture Of Your Baby - B', '../assets/Images/PhotographyImages/image5b.jpg', 220, 'Take The Loveliest Picture Of Your Baby B', 5),
(148, 28, 'Take The Loveliest Picture Of Your Baby - C', '../assets/Images/PhotographyImages/image5c.jpg', 240, 'Take The Loveliest Picture Of Your Baby C', 5),
(149, 29, 'Take The Loveliest Picture Of Your Baby - D', '../assets/Images/PhotographyImages/image5d.jpg', 260, 'Take The Loveliest Picture Of Your Baby D', 5),
(150, 30, 'Take The Loveliest Picture Of Your Baby - E', '../assets/Images/PhotographyImages/image5e.jpg', 280, 'Take The Loveliest Picture Of Your Baby E', 5),
(151, 31, 'Order Baklwaoua - A', '../assets/Images/GourmetImages/image1a.jpg', 50, 'Order Baklwaoua A', 54),
(152, 32, 'Order Baklwaoua - B', '../assets/Images/GourmetImages/image1b.jpg', 55, 'Order Baklwaoua B', 54),
(153, 33, 'Order Baklwaoua - C', '../assets/Images/GourmetImages/image1c.jpg', 60, 'Order Baklwaoua C', 54),
(154, 34, 'Order Baklwaoua - D', '../assets/Images/GourmetImages/image1d.jpg', 65, 'Order Baklwaoua D', 54),
(155, 35, 'Order Baklwaoua - E', '../assets/Images/GourmetImages/image1e.jpg', 70, 'Order Baklwaoua E', 54),
(156, 36, 'Order Makrout Ellouz - A', '../assets/Images/GourmetImages/image2a.jpg', 50, 'Order Makrout Ellouz A', 55),
(157, 37, 'Order Makrout Ellouz - B', '../assets/Images/GourmetImages/image2b.jpg', 55, 'Order Makrout Ellouz B', 55),
(158, 38, 'Order Makrout Ellouz - C', '../assets/Images/GourmetImages/image2c.jpg', 60, 'Order Makrout Ellouz C', 55),
(159, 39, 'Order Makrout Ellouz - D', '../assets/Images/GourmetImages/image2d.jpg', 65, 'Order Makrout Ellouz D', 55),
(160, 40, 'Order Makrout Ellouz - E', '../assets/Images/GourmetImages/image2e.jpg', 70, 'Order Makrout Ellouz E', 55),
(161, 41, 'Order Charek Mseker - A', '../assets/Images/GourmetImages/image3a.jpg', 50, 'Order Charek Mseker A', 56),
(162, 42, 'Order Charek Mseker - B', '../assets/Images/GourmetImages/image3b.jpg', 55, 'Order Charek Mseker B', 56),
(163, 43, 'Order Charek Mseker - C', '../assets/Images/GourmetImages/image3c.jpg', 60, 'Order Charek Mseker C', 56),
(164, 44, 'Order Charek Mseker - D', '../assets/Images/GourmetImages/image3d.jpg', 65, 'Order Charek Mseker D', 56),
(165, 45, 'Order Charek Mseker - E', '../assets/Images/GourmetImages/image3e.jpg', 70, 'Order Charek Mseker E', 56),
(166, 46, 'Order Mkhebez - A', '../assets/Images/GourmetImages/image4a.jpg', 50, 'Order Mkhebez A', 57),
(167, 47, 'Order Mkhebez - B', '../assets/Images/GourmetImages/image4b.jpg', 55, 'Order Mkhebez B', 57),
(168, 48, 'Order Mkhebez - C', '../assets/Images/GourmetImages/image4c.jpg', 60, 'Order Mkhebez C', 57),
(169, 49, 'Order Mkhebez - D', '../assets/Images/GourmetImages/image4d.jpg', 65, 'Order Mkhebez D', 57),
(170, 50, 'Order Mkhebez - E', '../assets/Images/GourmetImages/image4e.jpg', 70, 'Order Mkhebez E', 57),
(171, 51, 'Order Laaraiche - A', '../assets/Images/GourmetImages/image5a.jpg', 50, 'Order Laaraiche A', 58),
(172, 52, 'Order Laaraiche - B', '../assets/Images/GourmetImages/image5b.jpg', 55, 'Order Laaraiche B', 58),
(173, 53, 'Order Laaraiche - C', '../assets/Images/GourmetImages/image5c.jpg', 60, 'Order Laaraiche C', 58),
(174, 54, 'Order Laaraiche - D', '../assets/Images/GourmetImages/image5d.jpg', 65, 'Order Laaraiche D', 58),
(175, 55, 'Order Laaraiche - E', '../assets/Images/GourmetImages/image5e.jpg', 70, 'Order Laaraiche E', 58),
(176, 56, 'Order Thouma - A', '../assets/Images/GourmetImages/image6a.jpg', 50, 'Order Thouma A', 59),
(177, 57, 'Order Thouma - B', '../assets/Images/GourmetImages/image6b.jpg', 55, 'Order Thouma B', 59),
(178, 58, 'Order Thouma - C', '../assets/Images/GourmetImages/image6c.jpg', 60, 'Order Thouma C', 59),
(179, 59, 'Order Thouma - D', '../assets/Images/GourmetImages/image6d.jpg', 65, 'Order Thouma D', 59),
(180, 60, 'Order Thouma - E', '../assets/Images/GourmetImages/image6e.jpg', 70, 'Order Thouma E', 59),
(181, 61, 'Order Mkhebez Dziriet - A', '../assets/Images/GourmetImages/image7a.jpg', 50, 'Order Mkhebez Dziriet A', 60),
(182, 62, 'Order Mkhebez Dziriet - B', '../assets/Images/GourmetImages/image7b.jpg', 55, 'Order Mkhebez Dziriet B', 60),
(183, 63, 'Order Mkhebez Dziriet - C', '../assets/Images/GourmetImages/image7c.jpg', 60, 'Order Mkhebez Dziriet C', 60),
(184, 64, 'Order Mkhebez Dziriet - D', '../assets/Images/GourmetImages/image7d.jpg', 65, 'Order Mkhebez Dziriet D', 60),
(185, 65, 'Order Mkhebez Dziriet - E', '../assets/Images/GourmetImages/image7e.jpg', 70, 'Order Mkhebez Dziriet E', 60),
(186, 66, 'Order Mekrout - A', '../assets/Images/GourmetImages/image8a.jpg', 50, 'Order Mekrout A', 61),
(187, 67, 'Order Mekrout - B', '../assets/Images/GourmetImages/image8b.jpg', 55, 'Order Mekrout B', 61),
(188, 68, 'Order Mekrout - C', '../assets/Images/GourmetImages/image8c.jpg', 60, 'Order Mekrout C', 61),
(189, 69, 'Order Mekrout - D', '../assets/Images/GourmetImages/image8d.jpg', 65, 'Order Mekrout D', 61),
(190, 70, 'Order Mekrout - E', '../assets/Images/GourmetImages/image8e.jpg', 70, 'Order Mekrout E', 61),
(191, 71, 'Order Charek El Aariane - A', '../assets/Images/GourmetImages/image9a.jpg', 50, 'Order Charek El Aariane A', 62),
(192, 72, 'Order Charek El Aariane - B', '../assets/Images/GourmetImages/image9b.jpg', 55, 'Order Charek El Aariane B', 62),
(193, 73, 'Order Charek El Aariane - C', '../assets/Images/GourmetImages/image9c.jpg', 60, 'Order Charek El Aariane C', 62),
(194, 74, 'Order Charek El Aariane - D', '../assets/Images/GourmetImages/image9d.jpg', 65, 'Order Charek El Aariane D', 62),
(195, 75, 'Order Charek El Aariane - E', '../assets/Images/GourmetImages/image9e.jpg', 70, 'Order Charek El Aariane E', 62),
(196, 76, 'Order your dream day cake - A', '../assets/Images/GourmetImages/image10a.jpg', 200, 'Order your dream day cake A', 63),
(197, 77, 'Order your dream day cake - B', '../assets/Images/GourmetImages/image10b.jpg', 220, 'Order your dream day cake B', 63),
(198, 78, 'Order your dream day cake - C', '../assets/Images/GourmetImages/image10c.jpg', 240, 'Order your dream day cake C', 63),
(199, 79, 'Order your dream day cake - D', '../assets/Images/GourmetImages/image10d.jpg', 260, 'Order your dream day cake D', 63),
(200, 80, 'Order your dream day cake - E', '../assets/Images/GourmetImages/image10e.jpg', 280, 'Order your dream day cake E', 63),
(201, 81, 'Order sweety cupcakes - A', '../assets/Images/GourmetImages/image11a.jpg', 50, 'Order sweety cupcakes A', 64),
(202, 82, 'Order sweety cupcakes - B', '../assets/Images/GourmetImages/image11b.jpg', 55, 'Order sweety cupcakes B', 64),
(203, 83, 'Order sweety cupcakes - C', '../assets/Images/GourmetImages/image11c.jpg', 60, 'Order sweety cupcakes C', 64),
(204, 84, 'Order sweety cupcakes - D', '../assets/Images/GourmetImages/image11d.jpg', 65, 'Order sweety cupcakes D', 64),
(205, 85, 'Order sweety cupcakes - E', '../assets/Images/GourmetImages/image11e.jpg', 70, 'Order sweety cupcakes E', 64),
(206, 31, 'No Photography Team - A', '../assets/Images/AttireImages/Images6/image1a.jpg', 200, 'No Photography Team A', 68),
(207, 32, 'No Photography Team - B', '../assets/Images/AttireImages/Images6/image1b.jpg', 220, 'No Photography Team B', 68),
(208, 33, 'No Photography Team - C', '../assets/Images/AttireImages/Images6/image1c.jpg', 240, 'No Photography Team C', 68),
(209, 34, 'No Photography Team - D', '../assets/Images/AttireImages/Images6/image1d.jpg', 260, 'No Photography Team D', 68),
(210, 35, 'No Photography Team - E', '../assets/Images/AttireImages/Images6/image1e.jpg', 280, 'No Photography Team E', 68),
(211, 36, 'Event Service Staff - A', '../assets/Images/AttireImages/Images6/image2a.jpg', 200, 'Event Service Staff A', 69),
(212, 37, 'Event Service Staff - B', '../assets/Images/AttireImages/Images6/image2b.jpg', 220, 'Event Service Staff B', 69),
(213, 38, 'Event Service Staff - C', '../assets/Images/AttireImages/Images6/image2c.jpg', 240, 'Event Service Staff C', 69),
(214, 39, 'Event Service Staff - D', '../assets/Images/AttireImages/Images6/image2d.jpg', 260, 'Event Service Staff D', 69),
(215, 40, 'Event Service Staff - E', '../assets/Images/AttireImages/Images6/image2e.jpg', 280, 'Event Service Staff E', 69),
(216, 41, 'Baby Sitting Service - A', '../assets/Images/AttireImages/Images6/image3a.jpg', 200, 'Baby Sitting Service A', 70),
(217, 42, 'Baby Sitting Service - B', '../assets/Images/AttireImages/Images6/image3b.jpg', 220, 'Baby Sitting Service B', 70),
(218, 43, 'Baby Sitting Service - C', '../assets/Images/AttireImages/Images6/image3c.jpg', 240, 'Baby Sitting Service C', 70),
(219, 44, 'Baby Sitting Service - D', '../assets/Images/AttireImages/Images6/image3d.jpg', 260, 'Baby Sitting Service D', 70),
(220, 45, 'Baby Sitting Service - E', '../assets/Images/AttireImages/Images6/image3e.jpg', 280, 'Baby Sitting Service E', 70),
(221, 46, 'Cooking Team - A', '../assets/Images/AttireImages/Images6/image4a.jpg', 200, 'Cooking Team A', 71),
(222, 47, 'Cooking Team - B', '../assets/Images/AttireImages/Images6/image4b.jpg', 220, 'Cooking Team B', 71),
(223, 48, 'Cooking Team - C', '../assets/Images/AttireImages/Images6/image4c.jpg', 240, 'Cooking Team C', 71),
(224, 49, 'Cooking Team - D', '../assets/Images/AttireImages/Images6/image4d.jpg', 260, 'Cooking Team D', 71),
(225, 50, 'Cooking Team - E', '../assets/Images/AttireImages/Images6/image4e.jpg', 280, 'Cooking Team E', 71),
(301, 31, 'Book A Greenhouse - A', '../assets/Images/VenueImages/image1a.jpg', 200, 'Book A Greenhouse A', 65),
(302, 32, 'Book A Greenhouse - B', '../assets/Images/VenueImages/image1b.jpg', 220, 'Book A Greenhouse B', 65),
(303, 33, 'Book A Greenhouse - C', '../assets/Images/VenueImages/image1c.jpg', 240, 'Book A Greenhouse C', 65),
(304, 34, 'Book A Greenhouse - D', '../assets/Images/VenueImages/image1d.jpg', 260, 'Book A Greenhouse D', 65),
(305, 35, 'Book A Greenhouse - E', '../assets/Images/VenueImages/image1e.jpg', 280, 'Book A Greenhouse E', 65),
(306, 36, 'Rent A Beach Area - A', '../assets/Images/VenueImages/image2a.jpg', 200, 'Rent A Beach Area A', 66),
(307, 37, 'Rent A Beach Area - B', '../assets/Images/VenueImages/image2b.jpg', 220, 'Rent A Beach Area B', 66),
(308, 38, 'Rent A Beach Area - C', '../assets/Images/VenueImages/image2c.jpg', 240, 'Rent A Beach Area C', 66),
(309, 39, 'Rent A Beach Area - D', '../assets/Images/VenueImages/image2d.jpg', 260, 'Rent A Beach Area D', 66),
(310, 40, 'Rent A Beach Area - E', '../assets/Images/VenueImages/image2e.jpg', 280, 'Rent A Beach Area E', 66),
(311, 41, 'Reserve A Garden Venue - A', '../assets/Images/VenueImages/image3a.jpg', 200, 'Reserve A Garden Venue A', 67),
(312, 42, 'Reserve A Garden Venue - B', '../assets/Images/VenueImages/image3b.jpg', 220, 'Reserve A Garden Venue B', 67),
(313, 43, 'Reserve A Garden Venue - C', '../assets/Images/VenueImages/image3c.jpg', 240, 'Reserve A Garden Venue C', 67),
(314, 44, 'Reserve A Garden Venue - D', '../assets/Images/VenueImages/image3d.jpg', 260, 'Reserve A Garden Venue D', 67),
(315, 45, 'Reserve A Garden Venue - E', '../assets/Images/VenueImages/image3e.jpg', 280, 'Reserve A Garden Venue E', 67),
(316, 46, 'Book a Ballroom - A', '../assets/Images/VenueImages/image4a.jpg', 200, 'Book a Ballroom A', 66),
(317, 47, 'Book a Ballroom - B', '../assets/Images/VenueImages/image4b.jpg', 220, 'Book a Ballroom B', 66),
(318, 48, 'Book a Ballroom - C', '../assets/Images/VenueImages/image4c.jpg', 240, 'Book a Ballroom C', 66),
(319, 49, 'Book a Ballroom - D', '../assets/Images/VenueImages/image4d.jpg', 260, 'Book a Ballroom D', 66),
(320, 50, 'Book a Ballroom - E', '../assets/Images/VenueImages/image4e.jpg', 280, 'Book a Ballroom E', 66),
(321, 51, 'Book A Restaurant Or A Cafe - A', '../assets/Images/VenueImages/image5a.jpg', 200, 'Book A Restaurant Or A Cafe A', 67),
(322, 52, 'Book A Restaurant Or A Cafe - B', '../assets/Images/VenueImages/image5b.jpg', 220, 'Book A Restaurant Or A Cafe B', 67),
(323, 53, 'Book A Restaurant Or A Cafe - C', '../assets/Images/VenueImages/image5c.jpg', 240, 'Book A Restaurant Or A Cafe C', 67),
(324, 54, 'Book A Restaurant Or A Cafe - D', '../assets/Images/VenueImages/image5d.jpg', 260, 'Book A Restaurant Or A Cafe D', 67),
(325, 55, 'Book A Restaurant Or A Cafe - E', '../assets/Images/VenueImages/image5e.jpg', 280, 'Book A Restaurant Or A Cafe E', 67);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `foreign_key_theme_product` (`theme_id`),
  ADD KEY `foreign_key_user_product` (`User_Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `foreign_key_theme_product` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`Theme_Id`),
  ADD CONSTRAINT `foreign_key_user_product` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
