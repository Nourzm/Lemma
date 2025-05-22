-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 jan. 2025 à 17:44
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Base de données : `lemma`
--
-- --------------------------------------------------------
--
-- Structure de la table `chat_history`
--
CREATE TABLE `chat_history` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_message` text NOT NULL,
  `bot_response` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
-- --------------------------------------------------------
--
-- Structure de la table `event`
--
CREATE TABLE `event` (
  `Event_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `event`
--
INSERT INTO `event` (`Event_Id`, `Name`, `Description`, `photo`)
VALUES (
    1,
    'Graduation',
    'A proud moment deserves an unforgettable celebration.',
    '../assets/Images/photos/graduations.jpg'
  ),
  (
    2,
    'Weddings',
    'Your love story deserves the perfect beginning.',
    '../assets/Images/photos/weddings.jpg'
  ),
  (
    3,
    'Birthday',
    'Celebrate life with a party as unique as you are.',
    '../assets/Images/photos/birthday2s.jpg'
  ),
  (
    4,
    'Corporate Prestige Events',
    'Creating memorable experiences for your business and team.',
    '../assets/Images/photos/formal partys.jpg'
  ),
  (
    5,
    'Signature Events for Every Occasion',
    'Because every moment deserves to be celebrated.',
    '../assets/Images/photos/party1s.jpg'
  ),
  (
    6,
    'Baby Arrival Celebration',
    'Welcoming a precious new life with love and laughter!',
    '../assets/Images/photos/babys.jpg'
  );
-- --------------------------------------------------------
--
-- Structure de la table `feedback`
--
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `feedback_text` text NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `feedback`
--
INSERT INTO `feedback` (
    `feedback_id`,
    `user_name`,
    `feedback_text`,
    `event_type`,
    `image_path`,
    `created_at`,
    `updated_at`
  )
VALUES (
    1,
    'srgws',
    'fsdf',
    'Wedding Celebration',
    NULL,
    '2025-01-05 12:45:47',
    '2025-01-05 12:45:47'
  ),
  (
    2,
    'Nour Zamiche',
    's',
    'Wedding Celebration',
    'uploads/677a7f29283a2.png',
    '2025-01-05 12:46:33',
    '2025-01-05 12:46:33'
  );
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `product`
--
INSERT INTO `product` (
    `product_id`,
    `User_Id`,
    `Name`,
    `photo`,
    `price`,
    `discription`,
    `theme_id`
  )
VALUES (
    14,
    14,
    'Soft Girly Outfit - A',
    '../assets/Images/AttireImages/Images4/image1a.jpg',
    110,
    'Soft girly outfit A',
    28
  ),
  (
    15,
    15,
    'Soft Girly Outfit - B',
    '../assets/Images/AttireImages/Images4/image1b.jpg',
    115,
    'Soft girly outfit B',
    28
  ),
  (
    16,
    16,
    'Soft Girly Outfit - C',
    '../assets/Images/AttireImages/Images4/image1c.jpg',
    120,
    'Soft girly outfit C',
    28
  ),
  (
    17,
    17,
    'Soft Girly Outfit - D',
    '../assets/Images/AttireImages/Images4/image1d.jpg',
    125,
    'Soft girly outfit D',
    28
  ),
  (
    18,
    18,
    'Soft Girly Outfit - E',
    '../assets/Images/AttireImages/Images4/image1e.jpg',
    130,
    'Soft girly outfit E',
    28
  ),
  (
    19,
    19,
    'Cute Boyish Outfit - A',
    '../assets/Images/AttireImages/Images4/image2a.jpg',
    110,
    'Cute boyish outfit A',
    29
  ),
  (
    20,
    20,
    'Cute Boyish Outfit - B',
    '../assets/Images/AttireImages/Images4/image2b.jpg',
    115,
    'Cute boyish outfit B',
    29
  ),
  (
    21,
    21,
    'Cute Boyish Outfit - C',
    '../assets/Images/AttireImages/Images4/image2c.jpg',
    120,
    'Cute boyish outfit C',
    29
  ),
  (
    22,
    22,
    'Cute Boyish Outfit - D',
    '../assets/Images/AttireImages/Images4/image2d.jpg',
    125,
    'Cute boyish outfit D',
    29
  ),
  (
    23,
    23,
    'Cute Boyish Outfit - E',
    '../assets/Images/AttireImages/Images4/image2e.jpg',
    130,
    'Cute boyish outfit E',
    29
  ),
  (
    24,
    24,
    'Neutral Beige Outfit - A',
    '../assets/Images/AttireImages/Images4/image3a.jpg',
    115,
    'Neutral beige outfit A',
    30
  ),
  (
    25,
    25,
    'Neutral Beige Outfit - B',
    '../assets/Images/AttireImages/Images4/image3b.jpg',
    120,
    'Neutral beige outfit B',
    30
  ),
  (
    26,
    26,
    'Neutral Beige Outfit - C',
    '../assets/Images/AttireImages/Images4/image3c.jpg',
    125,
    'Neutral beige outfit C',
    30
  ),
  (
    27,
    27,
    'Neutral Beige Outfit - D',
    '../assets/Images/AttireImages/Images4/image3d.jpg',
    130,
    'Neutral beige outfit D',
    30
  ),
  (
    28,
    28,
    'Neutral Beige Outfit - E',
    '../assets/Images/AttireImages/Images4/image3e.jpg',
    135,
    'Neutral beige outfit E',
    30
  ),
  (
    29,
    29,
    'Elegant Mom Outfit - A',
    '../assets/Images/AttireImages/Images4/image4a.jpg',
    130,
    'Elegant mom outfit A',
    31
  ),
  (
    30,
    30,
    'Elegant Mom Outfit - B',
    '../assets/Images/AttireImages/Images4/image4b.jpg',
    135,
    'Elegant mom outfit B',
    31
  ),
  (
    31,
    31,
    'Elegant Mom Outfit - C',
    '../assets/Images/AttireImages/Images4/image4c.jpg',
    140,
    'Elegant mom outfit C',
    31
  ),
  (
    32,
    32,
    'Elegant Mom Outfit - D',
    '../assets/Images/AttireImages/Images4/image4d.jpg',
    145,
    'Elegant mom outfit D',
    31
  ),
  (
    33,
    33,
    'Elegant Mom Outfit - E',
    '../assets/Images/AttireImages/Images4/image4e.jpg',
    150,
    'Elegant mom outfit E',
    31
  ),
  (
    34,
    34,
    'Semi Formal Classic Outfit - A',
    '../assets/Images/AttireImages/Images5/image1a.jpg',
    160,
    'Semi formal classic outfit A',
    36
  ),
  (
    35,
    35,
    'Semi Formal Classic Outfit - B',
    '../assets/Images/AttireImages/Images5/image1b.jpg',
    165,
    'Semi formal classic outfit B',
    36
  ),
  (
    36,
    36,
    'Semi Formal Classic Outfit - C',
    '../assets/Images/AttireImages/Images5/image1c.jpg',
    170,
    'Semi formal classic outfit C',
    36
  ),
  (
    37,
    37,
    'Semi Formal Classic Outfit - D',
    '../assets/Images/AttireImages/Images5/image1d.jpg',
    175,
    'Semi formal classic outfit D',
    36
  ),
  (
    38,
    38,
    'Semi Formal Classic Outfit - E',
    '../assets/Images/AttireImages/Images5/image1e.jpg',
    180,
    'Semi formal classic outfit E',
    36
  ),
  (
    39,
    39,
    'Formal Classic Outfit - A',
    '../assets/Images/AttireImages/Images5/image2a.jpg',
    170,
    'Formal classic outfit A',
    37
  ),
  (
    40,
    40,
    'Formal Classic Outfit - B',
    '../assets/Images/AttireImages/Images5/image2b.jpg',
    175,
    'Formal classic outfit B',
    37
  ),
  (
    41,
    41,
    'Formal Classic Outfit - C',
    '../assets/Images/AttireImages/Images5/image2c.jpg',
    180,
    'Formal classic outfit C',
    37
  ),
  (
    42,
    42,
    'Formal Classic Outfit - D',
    '../assets/Images/AttireImages/Images5/image2d.jpg',
    185,
    'Formal classic outfit D',
    37
  ),
  (
    43,
    43,
    'Formal Classic Outfit - E',
    '../assets/Images/AttireImages/Images5/image2e.jpg',
    190,
    'Formal classic outfit E',
    37
  ),
  (
    44,
    44,
    'Hijabies Outfit - A',
    '../assets/Images/AttireImages/Images5/image3a.jpg',
    150,
    'Hijabies outfit A',
    38
  ),
  (
    45,
    45,
    'Hijabies Outfit - B',
    '../assets/Images/AttireImages/Images5/image3b.jpg',
    155,
    'Hijabies outfit B',
    38
  ),
  (
    46,
    46,
    'Hijabies Outfit - C',
    '../assets/Images/AttireImages/Images5/image3c.jpg',
    160,
    'Hijabies outfit C',
    38
  ),
  (
    47,
    47,
    'Hijabies Outfit - D',
    '../assets/Images/AttireImages/Images5/image3d.jpg',
    165,
    'Hijabies outfit D',
    38
  ),
  (
    48,
    48,
    'Hijabies Outfit - E',
    '../assets/Images/AttireImages/Images5/image3e.jpg',
    170,
    'Hijabies outfit E',
    38
  ),
  (
    49,
    49,
    'Formal Men Classic Outfit - A',
    '../assets/Images/AttireImages/Images5/image4a.jpg',
    180,
    'Formal men classic outfit A',
    39
  ),
  (
    50,
    50,
    'Formal Men Classic Outfit - B',
    '../assets/Images/AttireImages/Images5/image4b.jpg',
    185,
    'Formal men classic outfit B',
    39
  ),
  (
    51,
    51,
    'Formal Men Classic Outfit - C',
    '../assets/Images/AttireImages/Images5/image4c.jpg',
    190,
    'Formal men classic outfit C',
    39
  ),
  (
    52,
    52,
    'Formal Men Classic Outfit - D',
    '../assets/Images/AttireImages/Images5/image4d.jpg',
    195,
    'Formal men classic outfit D',
    39
  ),
  (
    53,
    53,
    'Formal Men Classic Outfit - E',
    '../assets/Images/AttireImages/Images5/image4e.jpg',
    200,
    'Formal men classic outfit E',
    39
  ),
  (
    106,
    6,
    'Classic Black Graduation Outfit - A',
    '../assets/Images/AttireImages/Images2/image1a.jpg',
    120,
    'Classic black graduation outfit A',
    55
  ),
  (
    107,
    7,
    'Classic Black Graduation Outfit - B',
    '../assets/Images/AttireImages/Images2/image1b.jpg',
    125,
    'Classic black graduation outfit B',
    55
  ),
  (
    108,
    8,
    'Classic Black Graduation Outfit - C',
    '../assets/Images/AttireImages/Images2/image1c.jpg',
    130,
    'Classic black graduation outfit C',
    55
  ),
  (
    109,
    9,
    'Classic Black Graduation Outfit - D',
    '../assets/Images/AttireImages/Images2/image1d.jpg',
    135,
    'Classic black graduation outfit D',
    55
  ),
  (
    110,
    10,
    'Classic Black Graduation Outfit - E',
    '../assets/Images/AttireImages/Images2/image1e.jpg',
    140,
    'Classic black graduation outfit E',
    55
  ),
  (
    111,
    11,
    'Soft Blue Graduation Outfit - A',
    '../assets/Images/AttireImages/Images2/image2a.jpg',
    130,
    'Soft blue graduation outfit A',
    56
  ),
  (
    112,
    12,
    'Soft Blue Graduation Outfit - B',
    '../assets/Images/AttireImages/Images2/image2b.jpg',
    135,
    'Soft blue graduation outfit B',
    56
  ),
  (
    113,
    13,
    'Soft Blue Graduation Outfit - C',
    '../assets/Images/AttireImages/Images2/image2c.jpg',
    140,
    'Soft blue graduation outfit C',
    56
  ),
  (
    114,
    14,
    'Soft Blue Graduation Outfit - D',
    '../assets/Images/AttireImages/Images2/image2d.jpg',
    145,
    'Soft blue graduation outfit D',
    56
  ),
  (
    115,
    15,
    'Soft Blue Graduation Outfit - E',
    '../assets/Images/AttireImages/Images2/image2e.jpg',
    150,
    'Soft blue graduation outfit E',
    56
  ),
  (
    116,
    16,
    'Baby Pink Graduation Outfit - A',
    '../assets/Images/AttireImages/Images2/image3a.jpg',
    125,
    'Baby pink graduation outfit A',
    57
  ),
  (
    117,
    17,
    'Baby Pink Graduation Outfit - B',
    '../assets/Images/AttireImages/Images2/image3b.jpg',
    130,
    'Baby pink graduation outfit B',
    57
  ),
  (
    118,
    18,
    'Baby Pink Graduation Outfit - C',
    '../assets/Images/AttireImages/Images2/image3c.jpg',
    135,
    'Baby pink graduation outfit C',
    57
  ),
  (
    119,
    19,
    'Baby Pink Graduation Outfit - D',
    '../assets/Images/AttireImages/Images2/image3d.jpg',
    140,
    'Baby pink graduation outfit D',
    57
  ),
  (
    120,
    20,
    'Baby Pink Graduation Outfit - E',
    '../assets/Images/AttireImages/Images2/image3e.jpg',
    145,
    'Baby pink graduation outfit E',
    57
  ),
  (
    121,
    21,
    'Other Graduation Outfit - A',
    '../assets/Images/AttireImages/Images2/image4a.jpg',
    140,
    'Other graduation outfit A',
    58
  ),
  (
    122,
    22,
    'Other Graduation Outfit - B',
    '../assets/Images/AttireImages/Images2/image4b.jpg',
    145,
    'Other graduation outfit B',
    58
  ),
  (
    123,
    23,
    'Other Graduation Outfit - C',
    '../assets/Images/AttireImages/Images2/image4c.jpg',
    150,
    'Other graduation outfit C',
    58
  ),
  (
    124,
    24,
    'Other Graduation Outfit - D',
    '../assets/Images/AttireImages/Images2/image4d.jpg',
    155,
    'Other graduation outfit D',
    58
  ),
  (
    125,
    25,
    'Other Graduation Outfit - E',
    '../assets/Images/AttireImages/Images2/image4e.jpg',
    160,
    'Other graduation outfit E',
    58
  ),
  (
    126,
    6,
    'Celebrate the memories of your dream day - A',
    '../assets/Images/PhotographyImages/image1a.jpg',
    200,
    'Celebrate the memories of your dream day A',
    50
  ),
  (
    127,
    7,
    'Celebrate the memories of your dream day - B',
    '../assets/Images/PhotographyImages/image1b.jpg',
    220,
    'Celebrate the memories of your dream day B',
    50
  ),
  (
    128,
    8,
    'Celebrate the memories of your dream day - C',
    '../assets/Images/PhotographyImages/image1c.jpg',
    240,
    'Celebrate the memories of your dream day C',
    50
  ),
  (
    129,
    9,
    'Celebrate the memories of your dream day - D',
    '../assets/Images/PhotographyImages/image1d.jpg',
    260,
    'Celebrate the memories of your dream day D',
    50
  ),
  (
    130,
    10,
    'Celebrate the memories of your dream day - E',
    '../assets/Images/PhotographyImages/image1e.jpg',
    280,
    'Celebrate the memories of your dream day E',
    50
  ),
  (
    131,
    11,
    'Capture Your Pride At Your Graduation Ceremony - A',
    '../assets/Images/PhotographyImages/image2a.jpg',
    200,
    'Capture Your Pride At Your Graduation Ceremony A',
    51
  ),
  (
    132,
    12,
    'Capture Your Pride At Your Graduation Ceremony - B',
    '../assets/Images/PhotographyImages/image2b.jpg',
    220,
    'Capture Your Pride At Your Graduation Ceremony B',
    51
  ),
  (
    133,
    13,
    'Capture Your Pride At Your Graduation Ceremony - C',
    '../assets/Images/PhotographyImages/image2c.jpg',
    240,
    'Capture Your Pride At Your Graduation Ceremony C',
    51
  ),
  (
    134,
    14,
    'Capture Your Pride At Your Graduation Ceremony - D',
    '../assets/Images/PhotographyImages/image2d.jpg',
    260,
    'Capture Your Pride At Your Graduation Ceremony D',
    51
  ),
  (
    135,
    15,
    'Capture Your Pride At Your Graduation Ceremony - E',
    '../assets/Images/PhotographyImages/image2e.jpg',
    280,
    'Capture Your Pride At Your Graduation Ceremony E',
    51
  ),
  (
    136,
    16,
    'Honor your moments of professional achievement - A',
    '../assets/Images/PhotographyImages/image3a.jpg',
    200,
    'Honor your moments of professional achievement A',
    52
  ),
  (
    137,
    17,
    'Honor your moments of professional achievement - B',
    '../assets/Images/PhotographyImages/image3b.jpg',
    220,
    'Honor your moments of professional achievement B',
    52
  ),
  (
    138,
    18,
    'Honor your moments of professional achievement - C',
    '../assets/Images/PhotographyImages/image3c.jpg',
    240,
    'Honor your moments of professional achievement C',
    52
  ),
  (
    139,
    19,
    'Honor your moments of professional achievement - D',
    '../assets/Images/PhotographyImages/image3d.jpg',
    260,
    'Honor your moments of professional achievement D',
    52
  ),
  (
    140,
    20,
    'Honor your moments of professional achievement - E',
    '../assets/Images/PhotographyImages/image3e.jpg',
    280,
    'Honor your moments of professional achievement E',
    52
  ),
  (
    141,
    21,
    'Let Your Birthday Memories Live Forever - A',
    '../assets/Images/PhotographyImages/image4a.jpg',
    200,
    'Let Your Birthday Memories Live Forever A',
    53
  ),
  (
    142,
    22,
    'Let Your Birthday Memories Live Forever - B',
    '../assets/Images/PhotographyImages/image4b.jpg',
    220,
    'Let Your Birthday Memories Live Forever B',
    53
  ),
  (
    143,
    23,
    'Let Your Birthday Memories Live Forever - C',
    '../assets/Images/PhotographyImages/image4c.jpg',
    240,
    'Let Your Birthday Memories Live Forever C',
    53
  ),
  (
    144,
    24,
    'Let Your Birthday Memories Live Forever - D',
    '../assets/Images/PhotographyImages/image4d.jpg',
    260,
    'Let Your Birthday Memories Live Forever D',
    53
  ),
  (
    145,
    25,
    'Let Your Birthday Memories Live Forever - E',
    '../assets/Images/PhotographyImages/image4e.jpg',
    280,
    'Let Your Birthday Memories Live Forever E',
    53
  ),
  (
    146,
    26,
    'Take The Loveliest Picture Of Your Baby - A',
    '../assets/Images/PhotographyImages/image5a.jpg',
    200,
    'Take The Loveliest Picture Of Your Baby A',
    54
  ),
  (
    147,
    27,
    'Take The Loveliest Picture Of Your Baby - B',
    '../assets/Images/PhotographyImages/image5b.jpg',
    220,
    'Take The Loveliest Picture Of Your Baby B',
    54
  ),
  (
    148,
    28,
    'Take The Loveliest Picture Of Your Baby - C',
    '../assets/Images/PhotographyImages/image5c.jpg',
    240,
    'Take The Loveliest Picture Of Your Baby C',
    54
  ),
  (
    149,
    29,
    'Take The Loveliest Picture Of Your Baby - D',
    '../assets/Images/PhotographyImages/image5d.jpg',
    260,
    'Take The Loveliest Picture Of Your Baby D',
    54
  ),
  (
    150,
    30,
    'Take The Loveliest Picture Of Your Baby - E',
    '../assets/Images/PhotographyImages/image5e.jpg',
    280,
    'Take The Loveliest Picture Of Your Baby E',
    54
  ),
  (
    151,
    31,
    'Order Baklwaoua - A',
    '../assets/Images/GourmetImages/Images1/image1a.jpg',
    50,
    'Order Baklwaoua A',
    64
  ),
  (
    152,
    32,
    'Order Baklwaoua - B',
    '../assets/Images/GourmetImages/Images1/image1b.jpg',
    55,
    'Order Baklwaoua B',
    64
  ),
  (
    153,
    33,
    'Order Baklwaoua - C',
    '../assets/Images/GourmetImages/Images1/image1c.jpg',
    60,
    'Order Baklwaoua C',
    64
  ),
  (
    154,
    34,
    'Order Baklwaoua - D',
    '../assets/Images/GourmetImages/Images1/image1d.jpg',
    65,
    'Order Baklwaoua D',
    64
  ),
  (
    155,
    35,
    'Order Baklwaoua - E',
    '../assets/Images/GourmetImages/Images1/image1e.jpg',
    70,
    'Order Baklwaoua E',
    64
  ),
  (
    156,
    36,
    'Order Makrout Ellouz - A',
    '../assets/Images/GourmetImages/Images1/image2a.jpg',
    50,
    'Order Makrout Ellouz A',
    65
  ),
  (
    157,
    37,
    'Order Makrout Ellouz - B',
    '../assets/Images/GourmetImages/Images1/image2b.jpg',
    55,
    'Order Makrout Ellouz B',
    65
  ),
  (
    158,
    38,
    'Order Makrout Ellouz - C',
    '../assets/Images/GourmetImages/Images1/image2c.jpg',
    60,
    'Order Makrout Ellouz C',
    65
  ),
  (
    159,
    39,
    'Order Makrout Ellouz - D',
    '../assets/Images/GourmetImages/Images1/image2d.jpg',
    65,
    'Order Makrout Ellouz D',
    65
  ),
  (
    160,
    40,
    'Order Makrout Ellouz - E',
    '../assets/Images/GourmetImages/Images1/image2e.jpg',
    70,
    'Order Makrout Ellouz E',
    65
  ),
  (
    161,
    41,
    'Order Charek Mseker - A',
    '../assets/Images/GourmetImages/Images1/image3a.jpg',
    50,
    'Order Charek Mseker A',
    66
  ),
  (
    162,
    42,
    'Order Charek Mseker - B',
    '../assets/Images/GourmetImages/Images1/image3b.jpg',
    55,
    'Order Charek Mseker B',
    66
  ),
  (
    163,
    43,
    'Order Charek Mseker - C',
    '../assets/Images/GourmetImages/Images1/image3c.jpg',
    60,
    'Order Charek Mseker C',
    66
  ),
  (
    164,
    44,
    'Order Charek Mseker - D',
    '../assets/Images/GourmetImages/Images1/image3d.jpg',
    65,
    'Order Charek Mseker D',
    66
  ),
  (
    165,
    45,
    'Order Charek Mseker - E',
    '../assets/Images/GourmetImages/Images1/image3e.jpg',
    70,
    'Order Charek Mseker E',
    66
  ),
  (
    166,
    46,
    'Order Mkhebez - A',
    '../assets/Images/GourmetImages/Images1/image4a.jpg',
    50,
    'Order Mkhebez A',
    67
  ),
  (
    167,
    47,
    'Order Mkhebez - B',
    '../assets/Images/GourmetImages/Images1/image4b.jpg',
    55,
    'Order Mkhebez B',
    67
  ),
  (
    168,
    48,
    'Order Mkhebez - C',
    '../assets/Images/GourmetImages/Images1/image4c.jpg',
    60,
    'Order Mkhebez C',
    67
  ),
  (
    169,
    49,
    'Order Mkhebez - D',
    '../assets/Images/GourmetImages/Images1/image4d.jpg',
    65,
    'Order Mkhebez D',
    67
  ),
  (
    170,
    50,
    'Order Mkhebez - E',
    '../assets/Images/GourmetImages/Images1/image4e.jpg',
    70,
    'Order Mkhebez E',
    67
  ),
  (
    171,
    51,
    'Order Laaraiche - A',
    '../assets/Images/GourmetImages/Images1/image5a.jpg',
    50,
    'Order Laaraiche A',
    68
  ),
  (
    172,
    52,
    'Order Laaraiche - B',
    '../assets/Images/GourmetImages/Images1/image5b.jpg',
    55,
    'Order Laaraiche B',
    68
  ),
  (
    173,
    53,
    'Order Laaraiche - C',
    '../assets/Images/GourmetImages/Images1/image5c.jpg',
    60,
    'Order Laaraiche C',
    68
  ),
  (
    174,
    54,
    'Order Laaraiche - D',
    '../assets/Images/GourmetImages/Images1/image5d.jpg',
    65,
    'Order Laaraiche D',
    68
  ),
  (
    175,
    55,
    'Order Laaraiche - E',
    '../assets/Images/GourmetImages/Images1/image5e.jpg',
    70,
    'Order Laaraiche E',
    68
  ),
  (
    176,
    56,
    'Order Thouma - A',
    '../assets/Images/GourmetImages/Images1/image6a.jpg',
    50,
    'Order Thouma A',
    69
  ),
  (
    177,
    57,
    'Order Thouma - B',
    '../assets/Images/GourmetImages/Images1/image6b.jpg',
    55,
    'Order Thouma B',
    69
  ),
  (
    178,
    58,
    'Order Thouma - C',
    '../assets/Images/GourmetImages/Images1/image6c.jpg',
    60,
    'Order Thouma C',
    69
  ),
  (
    179,
    59,
    'Order Thouma - D',
    '../assets/Images/GourmetImages/Images1/image6d.jpg',
    65,
    'Order Thouma D',
    69
  ),
  (
    180,
    60,
    'Order Thouma - E',
    '../assets/Images/GourmetImages/Images1/image6e.jpg',
    70,
    'Order Thouma E',
    69
  ),
  (
    181,
    61,
    'Order  Dziriet - A',
    '../assets/Images/GourmetImages/Images1/image7a.jpg',
    50,
    'Order Mkhebez Dziriet A',
    70
  ),
  (
    182,
    62,
    'Order  Dziriet - B',
    '../assets/Images/GourmetImages/Images1/image7b.jpg',
    55,
    'Order Mkhebez Dziriet B',
    70
  ),
  (
    183,
    63,
    'Order  Dziriet - C',
    '../assets/Images/GourmetImages/Images1/image7c.jpg',
    60,
    'Order Mkhebez Dziriet C',
    70
  ),
  (
    184,
    64,
    'Order  Dziriet - D',
    '../assets/Images/GourmetImages/Images1/image7d.jpg',
    65,
    'Order Mkhebez Dziriet D',
    70
  ),
  (
    185,
    65,
    'Order  Dziriet - E',
    '../assets/Images/GourmetImages/Images1/image7e.jpg',
    70,
    'Order Mkhebez Dziriet E',
    70
  ),
  (
    186,
    66,
    'Order Mekrout - A',
    '../assets/Images/GourmetImages/Images1/image8a.jpg',
    50,
    'Order Mekrout A',
    71
  ),
  (
    187,
    67,
    'Order Mekrout - B',
    '../assets/Images/GourmetImages/Images1/image8b.jpg',
    55,
    'Order Mekrout B',
    71
  ),
  (
    188,
    68,
    'Order Mekrout - C',
    '../assets/Images/GourmetImages/Images1/image8c.jpg',
    60,
    'Order Mekrout C',
    71
  ),
  (
    189,
    69,
    'Order Mekrout - D',
    '../assets/Images/GourmetImages/Images1/image8d.jpg',
    65,
    'Order Mekrout D',
    71
  ),
  (
    190,
    70,
    'Order Mekrout - E',
    '../assets/Images/GourmetImages/Images1/image8e.jpg',
    70,
    'Order Mekrout E',
    71
  ),
  (
    191,
    71,
    'Order Charek El Aariane - A',
    '../assets/Images/GourmetImages/Images1/image9a.jpg',
    50,
    'Order Charek El Aariane A',
    72
  ),
  (
    192,
    72,
    'Order Charek El Aariane - B',
    '../assets/Images/GourmetImages/Images1/image9b.jpg',
    55,
    'Order Charek El Aariane B',
    72
  ),
  (
    193,
    73,
    'Order Charek El Aariane - C',
    '../assets/Images/GourmetImages/Images1/image9c.jpg',
    60,
    'Order Charek El Aariane C',
    72
  ),
  (
    194,
    74,
    'Order Charek El Aariane - D',
    '../assets/Images/GourmetImages/Images1/image9d.jpg',
    65,
    'Order Charek El Aariane D',
    72
  ),
  (
    195,
    75,
    'Order Charek El Aariane - E',
    '../assets/Images/GourmetImages/Images1/image9e.jpg',
    70,
    'Order Charek El Aariane E',
    72
  ),
  (
    196,
    76,
    'Order your dream day cake - A',
    '../assets/Images/GourmetImages/Images1/image10a.jpg',
    200,
    'Order your dream day cake A',
    73
  ),
  (
    197,
    77,
    'Order your dream day cake - B',
    '../assets/Images/GourmetImages/Images1/image10b.jpg',
    220,
    'Order your dream day cake B',
    73
  ),
  (
    198,
    78,
    'Order your dream day cake - C',
    '../assets/Images/GourmetImages/Images1/image10c.jpg',
    240,
    'Order your dream day cake C',
    73
  ),
  (
    199,
    79,
    'Order your dream day cake - D',
    '../assets/Images/GourmetImages/Images1/image10d.jpg',
    260,
    'Order your dream day cake D',
    73
  ),
  (
    200,
    80,
    'Order your dream day cake - E',
    '../assets/Images/GourmetImages/Images1/image10e.jpg',
    280,
    'Order your dream day cake E',
    73
  ),
  (
    201,
    81,
    'Order sweety cupcakes - A',
    '../assets/Images/GourmetImages/Images1/image11a.jpg',
    50,
    'Order sweety cupcakes A',
    74
  ),
  (
    202,
    82,
    'Order sweety cupcakes - B',
    '../assets/Images/GourmetImages/Images1/image11b.jpg',
    55,
    'Order sweety cupcakes B',
    74
  ),
  (
    203,
    83,
    'Order sweety cupcakes - C',
    '../assets/Images/GourmetImages/Images1/image11c.jpg',
    60,
    'Order sweety cupcakes C',
    74
  ),
  (
    204,
    84,
    'Order sweety cupcakes - D',
    '../assets/Images/GourmetImages/Images1/image11d.jpg',
    65,
    'Order sweety cupcakes D',
    74
  ),
  (
    205,
    85,
    'Order sweety cupcakes - E',
    '../assets/Images/GourmetImages/Images1/image11e.jpg',
    70,
    'Order sweety cupcakes E',
    74
  ),
  (
    206,
    31,
    'No Photography Team - A',
    '../assets/Images/AttireImages/Images6/image1a.jpg',
    200,
    'No Photography Team A',
    40
  ),
  (
    207,
    32,
    'No Photography Team - B',
    '../assets/Images/AttireImages/Images6/image1b.jpg',
    220,
    'No Photography Team B',
    40
  ),
  (
    208,
    33,
    'No Photography Team - C',
    '../assets/Images/AttireImages/Images6/image1c.jpg',
    240,
    'No Photography Team C',
    40
  ),
  (
    209,
    34,
    'No Photography Team - D',
    '../assets/Images/AttireImages/Images6/image1d.jpg',
    260,
    'No Photography Team D',
    40
  ),
  (
    210,
    35,
    'No Photography Team - E',
    '../assets/Images/AttireImages/Images6/image1e.jpg',
    280,
    'No Photography Team E',
    40
  ),
  (
    211,
    36,
    'Event Service Staff - A',
    '../assets/Images/AttireImages/Images6/image2a.jpg',
    200,
    'Event Service Staff A',
    41
  ),
  (
    212,
    37,
    'Event Service Staff - B',
    '../assets/Images/AttireImages/Images6/image2b.jpg',
    220,
    'Event Service Staff B',
    41
  ),
  (
    213,
    38,
    'Event Service Staff - C',
    '../assets/Images/AttireImages/Images6/image2c.jpg',
    240,
    'Event Service Staff C',
    41
  ),
  (
    214,
    39,
    'Event Service Staff - D',
    '../assets/Images/AttireImages/Images6/image2d.jpg',
    260,
    'Event Service Staff D',
    41
  ),
  (
    215,
    40,
    'Event Service Staff - E',
    '../assets/Images/AttireImages/Images6/image2e.jpg',
    280,
    'Event Service Staff E',
    41
  ),
  (
    216,
    41,
    'Baby Sitting Service - A',
    '../assets/Images/AttireImages/Images6/image3a.jpg',
    200,
    'Baby Sitting Service A',
    42
  ),
  (
    217,
    42,
    'Baby Sitting Service - B',
    '../assets/Images/AttireImages/Images6/image3b.jpg',
    220,
    'Baby Sitting Service B',
    42
  ),
  (
    218,
    43,
    'Baby Sitting Service - C',
    '../assets/Images/AttireImages/Images6/image3c.jpg',
    240,
    'Baby Sitting Service C',
    42
  ),
  (
    219,
    44,
    'Baby Sitting Service - D',
    '../assets/Images/AttireImages/Images6/image3d.jpg',
    260,
    'Baby Sitting Service D',
    42
  ),
  (
    220,
    45,
    'Baby Sitting Service - E',
    '../assets/Images/AttireImages/Images6/image3e.jpg',
    280,
    'Baby Sitting Service E',
    42
  ),
  (
    221,
    46,
    'Cooking Team - A',
    '../assets/Images/AttireImages/Images6/image4a.jpg',
    200,
    'Cooking Team A',
    43
  ),
  (
    222,
    47,
    'Cooking Team - B',
    '../assets/Images/AttireImages/Images6/image4b.jpg',
    220,
    'Cooking Team B',
    43
  ),
  (
    223,
    48,
    'Cooking Team - C',
    '../assets/Images/AttireImages/Images6/image4c.jpg',
    240,
    'Cooking Team C',
    43
  ),
  (
    224,
    49,
    'Cooking Team - D',
    '../assets/Images/AttireImages/Images6/image4d.jpg',
    260,
    'Cooking Team D',
    43
  ),
  (
    225,
    50,
    'Cooking Team - E',
    '../assets/Images/AttireImages/Images6/image4e.jpg',
    280,
    'Cooking Team E',
    43
  ),
  (
    301,
    31,
    'Book A Greenhouse - A',
    '../assets/Images/VenueImages/image1a.jpg',
    200,
    'Book A Greenhouse A',
    45
  ),
  (
    302,
    32,
    'Book A Greenhouse - B',
    '../assets/Images/VenueImages/image1b.jpg',
    220,
    'Book A Greenhouse B',
    45
  ),
  (
    303,
    33,
    'Book A Greenhouse - C',
    '../assets/Images/VenueImages/image1c.jpg',
    240,
    'Book A Greenhouse C',
    45
  ),
  (
    304,
    34,
    'Book A Greenhouse - D',
    '../assets/Images/VenueImages/image1d.jpg',
    260,
    'Book A Greenhouse D',
    45
  ),
  (
    305,
    35,
    'Book A Greenhouse - E',
    '../assets/Images/VenueImages/image1e.jpg',
    280,
    'Book A Greenhouse E',
    45
  ),
  (
    306,
    36,
    'Rent A Beach Area - A',
    '../assets/Images/VenueImages/image2a.jpg',
    200,
    'Rent A Beach Area A',
    46
  ),
  (
    307,
    37,
    'Rent A Beach Area - B',
    '../assets/Images/VenueImages/image2b.jpg',
    220,
    'Rent A Beach Area B',
    46
  ),
  (
    308,
    38,
    'Rent A Beach Area - C',
    '../assets/Images/VenueImages/image2c.jpg',
    240,
    'Rent A Beach Area C',
    46
  ),
  (
    309,
    39,
    'Rent A Beach Area - D',
    '../assets/Images/VenueImages/image2d.jpg',
    260,
    'Rent A Beach Area D',
    46
  ),
  (
    310,
    40,
    'Rent A Beach Area - E',
    '../assets/Images/VenueImages/image2e.jpg',
    280,
    'Rent A Beach Area E',
    46
  ),
  (
    311,
    41,
    'Reserve A Garden Venue - A',
    '../assets/Images/VenueImages/image3a.jpg',
    200,
    'Reserve A Garden Venue A',
    47
  ),
  (
    312,
    42,
    'Reserve A Garden Venue - B',
    '../assets/Images/VenueImages/image3b.jpg',
    220,
    'Reserve A Garden Venue B',
    47
  ),
  (
    313,
    43,
    'Reserve A Garden Venue - C',
    '../assets/Images/VenueImages/image3c.jpg',
    240,
    'Reserve A Garden Venue C',
    47
  ),
  (
    314,
    44,
    'Reserve A Garden Venue - D',
    '../assets/Images/VenueImages/image3d.jpg',
    260,
    'Reserve A Garden Venue D',
    47
  ),
  (
    315,
    45,
    'Reserve A Garden Venue - E',
    '../assets/Images/VenueImages/image3e.jpg',
    280,
    'Reserve A Garden Venue E',
    47
  ),
  (
    316,
    46,
    'Book a Ballroom - A',
    '../assets/Images/VenueImages/image4a.jpg',
    200,
    'Book a Ballroom A',
    48
  ),
  (
    317,
    47,
    'Book a Ballroom - B',
    '../assets/Images/VenueImages/image4b.jpg',
    220,
    'Book a Ballroom B',
    48
  ),
  (
    318,
    48,
    'Book a Ballroom - C',
    '../assets/Images/VenueImages/image4c.jpg',
    240,
    'Book a Ballroom C',
    48
  ),
  (
    319,
    49,
    'Book a Ballroom - D',
    '../assets/Images/VenueImages/image4d.jpg',
    260,
    'Book a Ballroom D',
    48
  ),
  (
    320,
    50,
    'Book a Ballroom - E',
    '../assets/Images/VenueImages/image4e.jpg',
    280,
    'Book a Ballroom E',
    48
  ),
  (
    321,
    51,
    'Book A Restaurant Or A Cafe - A',
    '../assets/Images/VenueImages/image5a.jpg',
    200,
    'Book A Restaurant Or A Cafe A',
    49
  ),
  (
    322,
    52,
    'Book A Restaurant Or A Cafe - B',
    '../assets/Images/VenueImages/image5b.jpg',
    220,
    'Book A Restaurant Or A Cafe B',
    49
  ),
  (
    323,
    53,
    'Book A Restaurant Or A Cafe - C',
    '../assets/Images/VenueImages/image5c.jpg',
    240,
    'Book A Restaurant Or A Cafe C',
    49
  ),
  (
    324,
    54,
    'Book A Restaurant Or A Cafe - D',
    '../assets/Images/VenueImages/image5d.jpg',
    260,
    'Book A Restaurant Or A Cafe D',
    49
  ),
  (
    325,
    55,
    'Book A Restaurant Or A Cafe - E',
    '../assets/Images/VenueImages/image5e.jpg',
    280,
    'Book A Restaurant Or A Cafe E',
    49
  );
-- --------------------------------------------------------
--
-- Structure de la table `rating`
--
CREATE TABLE `rating` (
  `Rating_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL
);
-- --------------------------------------------------------
--
-- Structure de la table `services`
--
CREATE TABLE `services` (
  `Service_Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `Event_Id` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `services`
--
INSERT INTO `services` (
    `Service_Id`,
    `Name`,
    `Description`,
    `photo`,
    `Event_Id`
  )
VALUES (
    1,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/weddingdeco.jpeg',
    1
  ),
  (
    2,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/Wedding_photographer_at_work.jpg',
    1
  ),
  (
    3,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    1
  ),
  (
    4,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/weddingfood.jpg',
    1
  ),
  (
    5,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/wedding_outfit.jpg',
    1
  ),
  (
    6,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/weddingvenue.jpeg',
    1
  ),
  (
    7,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/graduation_decor.webp',
    2
  ),
  (
    8,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/graduation_photography.png',
    2
  ),
  (
    9,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    2
  ),
  (
    10,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/graduation_food2.jpg',
    2
  ),
  (
    11,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/graduation_outfit.jpg',
    2
  ),
  (
    12,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/graduation_venue.jpeg',
    2
  ),
  (
    13,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/birthday_deco.jpg',
    3
  ),
  (
    14,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/birthday_photgraph.webp',
    3
  ),
  (
    15,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    3
  ),
  (
    16,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/birthday_food.jpeg',
    3
  ),
  (
    17,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/birthday_dress.avif',
    3
  ),
  (
    18,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/birthday_venue.jpg',
    3
  ),
  (
    19,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/Prestige_decor.jpg',
    4
  ),
  (
    20,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/prestige_photographer.webp',
    4
  ),
  (
    21,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    4
  ),
  (
    22,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/prestige_food.jpg',
    4
  ),
  (
    23,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/prestige_outfit.webp',
    4
  ),
  (
    24,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/prestige_venue.jpg',
    4
  ),
  (
    25,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/standard_deco.jpg',
    5
  ),
  (
    26,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/standard_photographer.webp',
    5
  ),
  (
    27,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    5
  ),
  (
    28,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/standard_food.avif',
    5
  ),
  (
    29,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/standard_outfit.jpeg',
    5
  ),
  (
    30,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/standard_venue.jpg',
    5
  ),
  (
    31,
    'Enchanting Décor Creations',
    'Transforming spaces into breathtaking settings.',
    '../assets/Images/EventsPhotos/baby_deco.png',
    6
  ),
  (
    32,
    'Cinematic Photography & Videography',
    'Capturing the essence of your special moments.',
    '../assets/Images/EventsPhotos/baby_photographer.jpg',
    6
  ),
  (
    33,
    'Professional Event Staffing Solutions',
    'Your trusted team for seamless service.',
    '../assets/Images/EventsPhotos/how-to-staff-events-professional-event-staffing-planning.jpeg',
    6
  ),
  (
    34,
    'Gourmet Culinary Experiences',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/baby_food.jpg',
    6
  ),
  (
    35,
    'Stylish Attire & Accessories',
    'Look and feel your best on your special day.',
    '../assets/Images/EventsPhotos/baby_clothes.webp',
    6
  ),
  (
    36,
    'Premier Venue Selection',
    'Find the ideal location for your unforgettable event.',
    '../assets/Images/EventsPhotos/baby_venue.jpeg',
    6
  ),
  (
    37,
    'Catering',
    'Delicious flavors crafted to delight your palate.',
    '../assets/Images/EventsPhotos/catering.jpg',
    NULL
  ),
  (
    38,
    'Photography & Videography',
    'Capture memories of your special moments.',
    '../assets/Images/EventsPhotos/photography.jpg',
    NULL
  ),
  (
    39,
    'Venue Selection',
    'Find the perfect location for your event.',
    '../assets/Images/EventsPhotos/venue.jpg',
    NULL
  ),
  (
    40,
    'Event Staffing',
    'Professional staff to manage your event.',
    '../assets/Images/EventsPhotos/staffing.jpg',
    NULL
  );
-- --------------------------------------------------------
--
-- Structure de la table `theme`
--
CREATE TABLE `theme` (
  `Theme_Id` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Service_Id` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `theme`
--
INSERT INTO `theme` (
    `Theme_Id`,
    `Title`,
    `picture`,
    `description`,
    `Service_Id`
  )
VALUES (
    8,
    'Traditional Caftan',
    '../assets/Images/AttireImages/Images1/img1.jpg',
    'Traditional wedding caftans',
    11
  ),
  (
    9,
    'karako',
    '../assets/Images/AttireImages/Images1/img2.jpg',
    'Traditional Kabyle wedding dresses',
    11
  ),
  (
    10,
    'Melhfa Collection',
    '../assets/Images/AttireImages/Images1/img4.jpg',
    'Traditional Melhfa attire',
    11
  ),
  (
    11,
    'Guendora Collection',
    '../assets/Images/AttireImages/Images1/img5.jpg',
    'Traditional Guendora wear',
    11
  ),
  (
    12,
    'Chedda Tlemcenia',
    '../assets/Images/AttireImages/Images1/img6.jpg',
    'Traditional Tlemcenia dresses',
    11
  ),
  (
    13,
    'Blousa Collection',
    '../assets/Images/AttireImages/Images1/img7.jpg',
    'Traditional Blousa attire',
    11
  ),
  (
    14,
    'Evening Gowns',
    '../assets/Images/AttireImages/Images1/img8.jpg',
    'Modern evening wear',
    11
  ),
  (
    15,
    'Wedding Dresses',
    '../assets/Images/AttireImages/Images1/img9.jpg',
    'Contemporary wedding dresses',
    11
  ),
  (
    16,
    'Home Birthday Décor',
    '../assets/Images/DecorImages/Images3/img1.jpg',
    'Home birthday decorations',
    13
  ),
  (
    17,
    'Garden Birthday Décor',
    '../assets/Images/DecorImages/Images3/img2.jpg',
    'Garden party settings',
    13
  ),
  (
    18,
    'Dark Theme Birthday Décor',
    '../assets/Images/DecorImages/Images3/img4.jpg',
    'Elegant dark themed décor',
    13
  ),
  (
    19,
    'Pink Birthday Décor',
    '../assets/Images/DecorImages/Images3/img5.jpg',
    'Pink themed celebrations',
    13
  ),
  (
    20,
    'Soft White Outfit',
    '../assets/Images/AttireImages/Images3/img1.jpg',
    'Elegant white birthday attire',
    17
  ),
  (
    21,
    'Classy Black Outfit',
    '../assets/Images/AttireImages/Images3/img2.jpg',
    'Sophisticated black attire',
    17
  ),
  (
    22,
    'Refreshing Floral Style',
    '../assets/Images/AttireImages/Images3/img3.jpg',
    'Floral birthday outfits',
    17
  ),
  (
    23,
    'Other Colors Outfits',
    '../assets/Images/AttireImages/Images3/img4.jpg',
    'Various colored attire',
    17
  ),
  (
    24,
    'Baby Girl Arrival Décor',
    '../assets/Images/DecorImages/Images4/img1.jpg',
    'Pink themed baby decorations',
    31
  ),
  (
    25,
    'Baby Boy Arrival Décor',
    '../assets/Images/DecorImages/Images4/img2.jpg',
    'Blue themed baby decorations',
    31
  ),
  (
    26,
    'Neutral Theme Decor',
    '../assets/Images/DecorImages/Images4/img3.jpg',
    'Gender neutral decorations',
    31
  ),
  (
    27,
    'Modern Outdoor Baby Décor',
    '../assets/Images/DecorImages/Images4/img4.jpg',
    'Contemporary baby celebration',
    31
  ),
  (
    28,
    'Soft girly Outfit',
    '../assets/Images/AttireImages/Images4/img1.jpg',
    'Elegant baby girl arrival attire',
    35
  ),
  (
    29,
    'Cute Boyish Outfit',
    '../assets/Images/AttireImages/Images4/img2.jpg',
    'Stylish baby boy arrival attire',
    35
  ),
  (
    30,
    'Calm Neutral Beige Outfit',
    '../assets/Images/AttireImages/Images4/img3.jpg',
    'Gender-neutral baby arrival attire',
    35
  ),
  (
    31,
    'Elegant Mom Outfits',
    '../assets/Images/AttireImages/Images4/img4.jpg',
    'Sophisticated maternity wear',
    35
  ),
  (
    32,
    'Outdoor Corporate Décor',
    '../assets/Images/DecorImages/Images5/img1.jpg',
    'Professional outdoor settings',
    19
  ),
  (
    33,
    'Indoor Corporate Décor',
    '../assets/Images/DecorImages/Images5/img2.jpg',
    'Elegant indoor arrangements',
    19
  ),
  (
    34,
    'Luxurious Corporate Décor',
    '../assets/Images/DecorImages/Images5/img3.jpg',
    'High-end corporate settings',
    19
  ),
  (
    35,
    'Modern Conference Room',
    '../assets/Images/DecorImages/Images5/img4.jpg',
    'Contemporary meeting spaces',
    19
  ),
  (
    36,
    'Semi Formal Classic',
    '../assets/Images/AttireImages/Images5/img1.jpg',
    'Professional semi-formal wear',
    23
  ),
  (
    37,
    'Formal Classic Suit',
    '../assets/Images/AttireImages/Images5/img2.jpg',
    'Traditional business attire',
    23
  ),
  (
    38,
    'Hijabi Professional',
    '../assets/Images/AttireImages/Images5/img3.jpg',
    'Modest business wear',
    23
  ),
  (
    39,
    'Formal Men Classic',
    '../assets/Images/AttireImages/Images5/img4.jpg',
    'Men business attire',
    23
  ),
  (
    40,
    'No Photography Team',
    '../assets/Images/AttireImages/Images6/img1.jpg',
    'Professional photography team services',
    40
  ),
  (
    41,
    'Event Service Staff',
    '../assets/Images/AttireImages/Images6/img2.jpg',
    'Professional event service staff',
    40
  ),
  (
    42,
    'Baby Sitting Service',
    '../assets/Images/AttireImages/Images6/img3.jpg',
    'Professional Baby Sitting Service',
    40
  ),
  (
    43,
    'Cooking Team',
    '../assets/Images/AttireImages/Images6/img4.jpg',
    'Expert cooking  team',
    40
  ),
  (
    45,
    'Book A Greenhouse',
    '../assets/Images/VenueImages/img1.jpg',
    'Beautiful greenhouse venues',
    39
  ),
  (
    46,
    'Rent A Beach Area',
    '../assets/Images/VenueImages/img2.jpg',
    'Scenic beach locations',
    39
  ),
  (
    47,
    'Reserve A Garden Venue',
    '../assets/Images/VenueImages/img3.jpg',
    'Elegant garden venues',
    39
  ),
  (
    48,
    'Book a Ballroom',
    '../assets/Images/VenueImages/img4.jpg',
    'Luxurious ballroom spaces',
    39
  ),
  (
    49,
    'Book A Restaurant Or A Cafe',
    '../assets/Images/VenueImages/img5.jpg',
    'Charming restaurant or cafe venues',
    39
  ),
  (
    50,
    'Celebrate the memories of your dream day',
    '../assets/Images/PhotographyImages/img1.jpg',
    'Capture the essence of your wedding day',
    38
  ),
  (
    51,
    'Capture Your Pride At Your Graduation Ceremony',
    '../assets/Images/PhotographyImages/img2.jpg',
    'Memorable graduation photography',
    38
  ),
  (
    52,
    'Honor your moments of professional achievement',
    '../assets/Images/PhotographyImages/img3.jpg',
    'Professional corporate photography',
    38
  ),
  (
    53,
    'Let Your Birthday Memories Live Forever',
    '../assets/Images/PhotographyImages/img4.jpg',
    'Cherish your birthday moments',
    38
  ),
  (
    54,
    'Take The Loveliest Picture Of Your Baby',
    '../assets/Images/PhotographyImages/img5.jpg',
    'Adorable baby photography',
    38
  ),
  (
    55,
    'Classic Black Graduation Outfit',
    '../assets/Images/AttireImages/Images2/img1.jpg',
    'Classic black graduation outfits',
    5
  ),
  (
    56,
    'Soft Blue Graduation Outfits',
    '../assets/Images/AttireImages/Images2/img2.jpg',
    'Soft blue graduation attire',
    5
  ),
  (
    57,
    'Baby Pink Graduation Outfits',
    '../assets/Images/AttireImages/Images2/img3.jpg',
    'Baby pink graduation outfits',
    5
  ),
  (
    58,
    'Other Graduation Outfits Themes',
    '../assets/Images/AttireImages/Images2/img4.jpg',
    'Various graduation outfit options',
    5
  ),
  (
    59,
    'Enchanting Outdoor Graduation Décor',
    '../assets/Images/DecorImages/Images2/img1.jpg',
    'Enchanting outdoor graduation settings',
    7
  ),
  (
    60,
    'Elegant Home Graduation Décor',
    '../assets/Images/DecorImages/Images2/img2.jpg',
    'Elegant home graduation decorations',
    7
  ),
  (
    61,
    'Garden Graduation Décor',
    '../assets/Images/DecorImages/Images2/img3.jpg',
    'Beautiful garden graduation settings',
    7
  ),
  (
    62,
    'Modern Indoor Graduation Décor',
    '../assets/Images/DecorImages/Images2/img4.jpg',
    'Modern indoor graduation decorations',
    7
  ),
  (
    63,
    'Luxurious Ballroom Graduation Décor',
    '../assets/Images/DecorImages/Images2/img5.jpg',
    'Luxurious ballroom graduation decorations',
    7
  ),
  (
    64,
    'Order Baklwaoua',
    '../assets/Images/GourmetImages/Images1/img1.jpg',
    'Traditional Baklwaoua desserts',
    37
  ),
  (
    65,
    'Order Makrout Ellouz',
    '../assets/Images/GourmetImages/Images1/img2.jpg',
    'Delicious Makrout Ellouz treats',
    37
  ),
  (
    66,
    'Order Charek Mseker',
    '../assets/Images/GourmetImages/Images1/img3.jpg',
    'Traditional Charek Mseker sweets',
    37
  ),
  (
    67,
    'Order Mkhebez',
    '../assets/Images/GourmetImages/Images1/img4.jpg',
    'Classic Mkhebez pastries',
    37
  ),
  (
    68,
    'Order Laaraiche',
    '../assets/Images/GourmetImages/Images1/img5.jpg',
    'Traditional Laaraiche desserts',
    37
  ),
  (
    69,
    'Order Thouma',
    '../assets/Images/GourmetImages/Images1/img6.jpg',
    'Classic Thouma treats',
    37
  ),
  (
    70,
    'Order Mkhebez Dziriet',
    '../assets/Images/GourmetImages/Images1/img7.jpg',
    'Traditional Mkhebez Dziriet sweets',
    37
  ),
  (
    71,
    'Order Mekrout',
    '../assets/Images/GourmetImages/Images1/img8.jpg',
    'Delicious Mekrout pastries',
    37
  ),
  (
    72,
    'Order Charek El Aariane',
    '../assets/Images/GourmetImages/Images1/img9.jpg',
    'Classic Charek El Aariane sweets',
    37
  ),
  (
    73,
    'Order your dreamday cake',
    '../assets/Images/GourmetImages/Images1/img10.jpg',
    'Custom dreamday cakes',
    37
  ),
  (
    74,
    'Order sweety cupcakes',
    '../assets/Images/GourmetImages/Images1/img11.jpg',
    'Delicious sweety cupcakes',
    37
  ),
  (
    75,
    'Refreshing and Serene Beach Birthday Decor',
    '../assets/Images/DecorImages/Images3/img3.jpg',
    'Refreshing and Serene Beach Birthday Decor',
    13
  ),
  (
    76,
    'Robe Kabyle',
    '../assets/Images/AttireImages/Images1/img3.jpg',
    'traditional Robe Kabyle',
    5
  );
-- --------------------------------------------------------
--
-- Structure de la table `user`
--
CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Surname` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Mobile_Number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Déchargement des données de la table `user`
--
INSERT INTO `user` (
    `User_Id`,
    `Name`,
    `Surname`,
    `Address`,
    `Photo`,
    `Mobile_Number`,
    `email`,
    `password`
  )
VALUES (
    1,
    'Nour',
    'Zamiche',
    '5454',
    'uploads/1_1736081629.png',
    '5454555555555',
    'nour.zamiche@ensia.edu.dz',
    '$2y$10$KmqSHNCawCI5Ybe5kRsVW.u2UZ3A.wTAmh4IMNJrbbLXIZJ00CCIG'
  ),
  (
    2,
    'Ahmed',
    'Alnajar',
    NULL,
    NULL,
    '',
    'ahmed.alnajar@example.com',
    '$2y$10$JuV1aT6EmG/FfNKjH4uuke2ttGtUgW125Td/qrvKxte6bRjI56/a.'
  ),
  (
    3,
    'Mohamed',
    'Alattar',
    NULL,
    NULL,
    '',
    'mohamed.alattar@example.com',
    '$2y$10$4xjI3R5D/4e6rX1vR3uH1uO1rM7Q3sN7Y4Skbs5JQH5uH6QjL5Y7W.'
  ),
  (
    4,
    'Ali',
    'Alhaddad',
    NULL,
    NULL,
    '',
    'ali.alhaddad@example.com',
    '$2y$10$3xkJ2R6E/5e7sW2yR4vI2vP2sN8R4tO8Z5Tkcs6KRJ6vJ7QkM6X8X.'
  ),
  (
    5,
    'Youssef',
    'Alkhateeb',
    NULL,
    NULL,
    '',
    'youssef.alkhateeb@example.com',
    '$2y$10$2xlK3S7F/6f8tX3zR5wJ3wQ3tO9S5uP9A6Ulct7LRK7wK8RlN7Y9Y.'
  ),
  (
    6,
    'Ibrahim',
    'Alhusseini',
    NULL,
    NULL,
    '',
    'ibrahim.alhusseini@example.com',
    '$2y$10$1xmL4T8G/7g9uY4aR6xK4xR4uP0T6vQ0B7Vmdu8MSL8xL9SmO8Z0Z.'
  ),
  (
    7,
    'Saeed',
    'Alzahrani',
    NULL,
    NULL,
    '',
    'saeed.alzahrani@example.com',
    '$2y$10$0xlL5U9H/8h0vZ5bS7yL5yS5vQ1U7wR1C8Wneev9NTM9yM0UnP9P1P.'
  ),
  (
    8,
    'Khaled',
    'Alsharif',
    NULL,
    NULL,
    '',
    'khaled.alsharif@example.com',
    '$2y$10$9wlM6V0I/9i1wA6cT8zM6zT6wR2V8xS2D9Xofwf0OUO0zN1VoQ0Q2Q.'
  ),
  (
    9,
    'Majed',
    'Alhumaidi',
    NULL,
    NULL,
    '',
    'majed.alhumaidi@example.com',
    '$2y$10$8xlN7W1J/0j2xB7dU9zN7xU7xS3W9yT3E0Ypggf1PVQ1aO2WpR1R3R.'
  ),
  (
    10,
    'Abdullah',
    'Alali',
    NULL,
    NULL,
    '',
    'abdullah.alali@example.com',
    '$2y$10$7xlO8X2K/1k3yC8eV0zO8yV8yT4X0zU4F1Zqhgf2QWR2bP3XqS2S4S.'
  ),
  (
    11,
    'Faisal',
    'Alghanem',
    NULL,
    NULL,
    '',
    'faisal.alghanem@example.com',
    '$2y$10$6xlP9Y3L/2l4zD9fW1zP9zW9zU5Y1aV5G2Arijg3RXR3cQ4YrT3T5T.'
  ),
  (
    12,
    'Noura',
    'Albrahim',
    NULL,
    NULL,
    '',
    'noura.albrahim@example.com',
    '$2y$10$5xlQ0Z4M/3m5aE0gX2zQ0aX0aV6Z2bW6H3Bsjkh4SYR4dR5ZsU4U6U.'
  ),
  (
    13,
    'Layla',
    'Alsaleh',
    NULL,
    NULL,
    '',
    'layla.alsaleh@example.com',
    '$2y$10$4xlR1A5N/4n6bF1hY3zR1bY1bW7A3cX7I4Ctkli5TZR5eS6atV5V7V.'
  ),
  (
    14,
    'Fatima',
    'Alnasser',
    NULL,
    NULL,
    '',
    'fatima.alnasser@example.com',
    '$2y$10$3xlS2B6O/5o7cG2iZ4zS2cZ2cX8B4dY8J5Dulmj6U0U6fT7buW6W8W.'
  ),
  (
    15,
    'Mariam',
    'Alhassan',
    NULL,
    NULL,
    '',
    'mariam.alhassan@example.com',
    '$2y$10$2xlT3C7P/6p8dH3jA5zT3dA3dY9C5eZ9K6Evmnk7V1V7gU8cvX7X9X.'
  ),
  (
    16,
    'Zainab',
    'Altamimi',
    NULL,
    NULL,
    '',
    'zainab.altamimi@example.com',
    '$2y$10$1xlU4D8Q/7q9eI4kB6zU4eB4eZ0D6fA0L7Fwnol8W2W8hV9dwY8Y0Y.'
  ),
  (
    17,
    'Aisha',
    'Alobaidi',
    NULL,
    NULL,
    '',
    'aisha.alobaidi@example.com',
    '$2y$10$0xlV5E9R/8r0fJ5lC7zV5fC5fA1E7gB1M8Gxopl9X3X9iW0exZ9Z1Z.'
  ),
  (
    18,
    'Hind',
    'Almousa',
    NULL,
    NULL,
    '',
    'hind.almousa@example.com',
    '$2y$10$9xlW6F0S/9s1gK6mD8zW6gD6gB2F8hC2N9Hyqpm0Y4Y0jX1fyA0A2A.'
  ),
  (
    19,
    'Sara',
    'Almalki',
    NULL,
    NULL,
    '',
    'sara.almalki@example.com',
    '$2y$10$8xlX7G1T/0t2hL7nE9zX7hE7hC3G9iD3O0Izrqn1Z5Z1kY2gzB1B3B.'
  ),
  (
    20,
    'Reem',
    'Aldosari',
    NULL,
    NULL,
    '',
    'reem.aldosari@example.com',
    '$2y$10$7xlY8H2U/1u3iM8oF0zY8iF8iD4H0jE4P1Jasro2a6a2lZ3hA2C4C.'
  ),
  (
    21,
    'Mona',
    'Alfaris',
    NULL,
    NULL,
    '',
    'mona.alfaris@example.com',
    '$2y$10$6xlZ9I3V/2v4jN9pG1zZ9jG9jE5I1kF5Q2Kbtsq3b7b3mA4iB3D5D.'
  ),
  (
    22,
    'Rashed',
    'Alansari',
    NULL,
    NULL,
    '',
    'rashed.alansari@example.com',
    '$2y$10$5xlA0J4W/3w5kO0qH2zA0kH0kF6J2lG6R3Lcutr4c8c4nB5jC4E6E.'
  ),
  (
    23,
    'Talal',
    'Albadr',
    NULL,
    NULL,
    '',
    'talal.albadr@example.com',
    '$2y$10$4xlB1K5X/4x6lP1rI3zB1lI1lG7K3mH7S4Mduvs5d9d5oC6kD5F7F.'
  ),
  (
    24,
    'Omar',
    'Alhashimi',
    NULL,
    NULL,
    '',
    'omar.alhashimi@example.com',
    '$2y$10$3xlC2L6Y/5y7mQ2sJ4zC2mJ2mH8L4nI8T5Nevwt6eAe6pD7lE6G8G.'
  ),
  (
    25,
    'Abdulrahman',
    'Alsayed',
    NULL,
    NULL,
    '',
    'abdulrahman.alsayed@example.com',
    '$2y$10$2xlD3M7Z/6z8nR3tK5zD3nK3nI9M5oJ9U6Ofw0v7fBf7qE8mF7H9H.'
  ),
  (
    26,
    'Abdulaziz',
    'Alhamoud',
    NULL,
    NULL,
    '',
    'abdulaziz.alhamoud@example.com',
    '$2y$10$1xlE4N8a/7a9oS4uL6zE4oL4oJ0N6pK0V7Pgw1w8Cg8rF9nG8I0I.'
  ),
  (
    27,
    'Khalil',
    'Aljuhani',
    NULL,
    NULL,
    '',
    'khalil.aljuhani@example.com',
    '$2y$10$0xlF5O9b/8b0pT5vM7zF5pM5pK1O7qL1W8Qhx2x9Dh9sG0oH9J1J.'
  ),
  (
    28,
    'Fouad',
    'Alqarni',
    NULL,
    NULL,
    '',
    'fouad.alqarni@example.com',
    '$2y$10$9xlG6P0c/9c1qU6wN8zG6qN6qL2P8rM2X9Riy3yA0I0tH1pI0K2K.'
  ),
  (
    29,
    'Wissam',
    'Albukhait',
    NULL,
    NULL,
    '',
    'wissam.albukhait@example.com',
    '$2y$10$0xlL5U9H/8h0vZ5bS7yL5yS5vQ1U7wR1C8Wneev9NTM9yM0UnP9P1P.'
  ),
  (
    30,
    'Bassam',
    'Alhajri',
    NULL,
    NULL,
    '',
    'bassam.alhajri@example.com',
    '$2y$10$9wlM6V0I/9i1wA6cT8zM6zT6wR2V8xS2D9Xofwf0OUO0zN1VoQ0Q2Q.'
  ),
  (
    31,
    'Munir',
    'Alsibai',
    NULL,
    NULL,
    '',
    'munir.alsibai@example.com',
    '$2y$10$8xlN7W1J/0j2xB7dU9zN7xU7xS3W9yT3E0Ypggf1PVQ1aO2WpR1R3R.'
  ),
  (
    32,
    'Sultan',
    'Altowail',
    NULL,
    NULL,
    '',
    'sultan.altowail@example.com',
    '$2y$10$7xlO8X2K/1k3yC8eV0zO8yV8yT4X0zU4F1Zqhgf2QWR2bP3XqS2S4S.'
  ),
  (
    33,
    'Salman',
    'Alsibti',
    NULL,
    NULL,
    '',
    'salman.alsibti@example.com',
    '$2y$10$6xlP9Y3L/2l4zD9fW1zP9zW9zU5Y1aV5G2Arijg3RXR3cQ4YrT3T5T.'
  ),
  (
    34,
    'Anas',
    'Alhameed',
    NULL,
    NULL,
    '',
    'anas.alhameed@example.com',
    '$2y$10$5xlQ0Z4M/3m5aE0gX2zQ0aX0aV6Z2bW6H3Bsjkh4SYR4dR5ZsU4U6U.'
  ),
  (
    35,
    'Jasim',
    'Almohammed',
    NULL,
    NULL,
    '',
    'jasim.almohammed@example.com',
    '$2y$10$4xlR1A5N/4n6bF1hY3zR1bY1bW7A3cX7I4Ctkli5TZR5eS6atV5V7V.'
  ),
  (
    36,
    'Nawaf',
    'Alajmi',
    NULL,
    NULL,
    '',
    'nawaf.alajmi@example.com',
    '$2y$10$3xlS2B6O/5o7cG2iZ4zS2cZ2cX8B4dY8J5Dulmj6U0U6fT7buW6W8W.'
  ),
  (
    37,
    'Turki',
    'Alshammari',
    NULL,
    NULL,
    '',
    'turki.alshammari@example.com',
    '$2y$10$2xlT3C7P/6p8dH3jA5zT3dA3dY9C5eZ9K6Evmnk7V1V7gU8cvX7X9X.'
  ),
  (
    38,
    'Adel',
    'Alharithi',
    NULL,
    NULL,
    '',
    'adel.alharithi@example.com',
    '$2y$10$1xlU4D8Q/7q9eI4kB6zU4eB4eZ0D6fA0L7Fwnol8W2W8hV9dwY8Y0Y.'
  ),
  (
    39,
    'Samer',
    'Alkhoury',
    NULL,
    NULL,
    '',
    'samer.alkhoury@example.com',
    '$2y$10$0xlV5E9R/8r0fJ5lC7zV5fC5fA1E7gB1M8Gxopl9X3X9iW0exZ9Z1Z.'
  ),
  (
    40,
    'Tamer',
    'Alkhatib',
    NULL,
    NULL,
    '',
    'tamer.alkhatib@example.com',
    '$2y$10$9xlW6F0S/9s1gK6mD8zW6gD6gB2F8hC2N9Hyqpm0Y4Y0jX1fyA0A2A.'
  ),
  (
    41,
    'Bilal',
    'Alhassan',
    NULL,
    NULL,
    '',
    'bilal.alhassan@example.com',
    '$2y$10$8xlX7G1T/0t2hL7nE9zX7hE7hC3G9iD3O0Izrqn1Z5Z1kY2gzB1B3B.'
  ),
  (
    42,
    'Rania',
    'Alnasser',
    NULL,
    NULL,
    '',
    'rania.alnasser@example.com',
    '$2y$10$7xlY8H2U/1u3iM8oF0zY8iF8iD4H0jE4P1Jasro2a6a2lZ3hA2C4C.'
  ),
  (
    43,
    'Leila',
    'Alhassan',
    NULL,
    NULL,
    '',
    'leila.alhassan@example.com',
    '$2y$10$6xlZ9I3V/2v4jN9pG1zZ9jG9jE5I1kF5Q2Kbtsq3b7b3mA4iB3D5D.'
  ),
  (
    44,
    'Hana',
    'Almohammed',
    NULL,
    NULL,
    '',
    'hana.almohammed@example.com',
    '$2y$10$5xlA0J4W/3w5kO0qH2zA0kH0kF6J2lG6R3Lcutr4c8c4nB5jC4E6E.'
  ),
  (
    45,
    'Dina',
    'Alobaidi',
    NULL,
    NULL,
    '',
    'dina.alobaidi@example.com',
    '$2y$10$4xlB1K5X/4x6lP1rI3zB1lI1lG7K3mH7S4Mduvs5d9d5oC6kD5F7F.'
  ),
  (
    46,
    'Omar',
    'Almousa',
    NULL,
    NULL,
    '',
    'omar.almousa@example.com',
    '$2y$10$3xlC2L6Y/5y7mQ2sJ4zC2mJ2mH8L4nI8T5Nevwt6eAe6pD7lE6G8G.'
  ),
  (
    47,
    'Nadia',
    'Almalki',
    NULL,
    NULL,
    '',
    'nadia.almalki@example.com',
    '$2y$10$2xlD3M7Z/6z8nR3tK5zD3nK3nI9M5oJ9U6Ofw0v7fBf7qE8mF7H9H.'
  ),
  (
    48,
    'Alaa',
    'Aldosari',
    NULL,
    NULL,
    '',
    'alaa.aldosari@example.com',
    '$2y$10$1xlE4N8a/7a9oS4uL6zE4oL4oJ0N6pK0V7Pgw1w8Cg8rF9nG8I0I.'
  ),
  (
    49,
    'Nada',
    'Alfaris',
    NULL,
    NULL,
    '',
    'nada.alfaris@example.com',
    '$2y$10$0xlF5O9b/8b0pT5vM7zF5pM5pK1O7qL1W8Qhx2x9Dh9sG0oH9J1J.'
  ),
  (
    50,
    'Lina',
    'Alansari',
    NULL,
    NULL,
    '',
    'lina.alansari@example.com',
    '$2y$10$9xlG6P0c/9c1qU6wN8zG6qN6qL2P8rM2X9Riy3yA0I0tH1pI0K2K.'
  ),
  (
    51,
    'Huda',
    'Albadr',
    NULL,
    NULL,
    '',
    'huda.albadr@example.com',
    '$2y$10$8xlH7Q1d/0d2rV7xO9zH7rO7rM3Q9sN3Y0Siz4zB1J1uI2qJ1L3L.'
  ),
  (
    52,
    'Rami',
    'Alhashimi',
    NULL,
    NULL,
    '',
    'rami.alhashimi@example.com',
    '$2y$10$9xlG6P0c/9c1qU6wN8zG6qN6qL2P8rM2X9Riy3yA0I0tH1pI0K2K.'
  ),
  (
    53,
    'Nabil',
    'Alsayed',
    NULL,
    NULL,
    '',
    'nabil.alsayed@example.com',
    '$2y$10$8xlH7Q1d/0d2rV7xO9zH7rO7rM3Q9sN3Y0Siz4zB1J1uI2qJ1L3L.'
  ),
  (
    54,
    'Hassan',
    'Alhamoud',
    NULL,
    NULL,
    '',
    'hassan.alhamoud@example.com',
    '$2y$10$7xlI8R2e/1e3sW8yP0zI8sP8sN4R0tO4Z1Tja5aC2K2vJ3rK2M4M.'
  ),
  (
    55,
    'Sami',
    'Aljuhani',
    NULL,
    NULL,
    '',
    'sami.aljuhani@example.com',
    '$2y$10$6xlJ9S3f/2f4tX9zQ1zJ9tQ9tO5S1uP5a2Ukb6bD3L3wK4sL3N5N.'
  ),
  (
    56,
    'Tariq',
    'Alqarni',
    NULL,
    NULL,
    '',
    'tariq.alqarni@example.com',
    '$2y$10$5xlK0T4g/3g5uY0aR2zK0uR0uP6T2vQ6b3Vlc7cE4M4xL5tM4O6O.'
  ),
  (
    57,
    'Riyad',
    'Albukhait',
    NULL,
    NULL,
    '',
    'riyad.albukhait@example.com',
    '$2y$10$4xlL1U5h/4h6vZ1bS3zL1vS1vQ7U3wR7c4Wmd8dF5N5yM6uN5P7P.'
  ),
  (
    58,
    'Bashar',
    'Alhajri',
    NULL,
    NULL,
    '',
    'bashar.alhajri@example.com',
    '$2y$10$3xlM2V6i/5i7wA2cT4zM2wT2wR8V4xS8d5Xne9eG6O6zN7vO6Q8Q.'
  ),
  (
    59,
    'Mustafa',
    'Alsibai',
    NULL,
    NULL,
    '',
    'mustafa.alsibai@example.com',
    '$2y$10$2xlN3W7j/6j8xB3dU5zN3xU3xS9W5yT9e6Yof0fH7P7aO8wP7R9R.'
  ),
  (
    60,
    'Hazem',
    'Altowail',
    NULL,
    NULL,
    '',
    'hazem.altowail@example.com',
    '$2y$10$1xlO4X8k/7k9yC4eV6zO4yV4yT0X6zU0f7Zpg1gI8Q8bP9xQ8S0S.'
  ),
  (
    61,
    'Yasir',
    'Alsibti',
    NULL,
    NULL,
    '',
    'yasir.alsibti@example.com',
    '$2y$10$0xlP5Y9l/8l0zD5fW7zP5zW5zU1Y7aV1g8aqh2hJ9R9cQ0yR9T1T.'
  ),
  (
    62,
    'Karam',
    'Alhameed',
    NULL,
    NULL,
    '',
    'karam.alhameed@example.com',
    '$2y$10$9xlQ6Z0m/9m1aE6gX8zQ6aX6aV2Z8bW2h9brj3iKa0aD1zS0U2U.'
  ),
  (
    63,
    'Ziad',
    'Almohammed',
    NULL,
    NULL,
    '',
    'ziad.almohammed@example.com',
    '$2y$10$8xlR7a1n/0n2bF7hY9zR7bY7bW3A9cX3i0csj4jLb1bE2aT1V3V.'
  ),
  (
    64,
    'Mazen',
    'Alajmi',
    NULL,
    NULL,
    '',
    'mazen.alajmi@example.com',
    '$2y$10$7xlS8b2o/1o3cG8iZ0zS8cZ8cX4B0dY4j1dtk5kMc2cF3bU2W4W.'
  ),
  (
    65,
    'Rashid',
    'Alshammari',
    NULL,
    NULL,
    '',
    'rashid.alshammari@example.com',
    '$2y$10$6xlT9c3p/2p4dH9jA1zT9dA9dY5C1eZ5k2eul6lNd3dG4cV3X5X.'
  ),
  (
    66,
    'Fadi',
    'Alharithi',
    NULL,
    NULL,
    '',
    'fadi.alharithi@example.com',
    '$2y$10$5xlU0d4q/3q5eI0kB2zU0eB0eZ6D2fA6l3fvm7mOe4eH5dW4Y6Y.'
  ),
  (
    67,
    'Othman',
    'Alkhoury',
    NULL,
    NULL,
    '',
    'othman.alkhoury@example.com',
    '$2y$10$4xlV1e5r/4r6fJ1lC3zV1fC1fA7E3gB7m4gwn8nPf5fI6eX5Z7Z.'
  ),
  (
    68,
    'Ayman',
    'Alkhatib',
    NULL,
    NULL,
    '',
    'ayman.alkhatib@example.com',
    '$2y$10$3xlW2f6s/5s7gK2mD4zW2gD2gB8F4hC8n5hx0oQf6gJ7fY6A8A.'
  ),
  (
    69,
    'Jamal',
    'Alhassan',
    NULL,
    NULL,
    '',
    'jamal.alhassan@example.com',
    '$2y$10$2xlX3g7t/6t8hL3nE5zX3hE3hC9G5iD9o6iy1pRf7hK8gZ7B9B.'
  ),
  (
    70,
    'Salwa',
    'Alnasser',
    NULL,
    NULL,
    '',
    'salwa.alnasser@example.com',
    '$2y$10$1xlY4h8u/7u9iM4oF6zY4iF4iD0H6jE0p7jz2qSg8iL9hA8C0C.'
  ),
  (
    71,
    'Najat',
    'Alhassan',
    NULL,
    NULL,
    '',
    'najat.alhassan@example.com',
    '$2y$10$0xlZ5i9v/8v0jN5pG7zZ5jG5jE1I7kF1q8ka3rTh9jM0iB9D1D.'
  ),
  (
    72,
    'Hiba',
    'Almohammed',
    NULL,
    NULL,
    '',
    'hiba.almohammed@example.com',
    '$2y$10$9xlA6j0w/9w1kO6qH8zA6kH6kF2J8lG2r9lb4sUi0kN1jC0E2E.'
  ),
  (
    73,
    'Amira',
    'Alobaidi',
    NULL,
    NULL,
    '',
    'amira.alobaidi@example.com',
    '$2y$10$8xlB7k1x/0x2lP7rI9zB7lI7lG3K9mH3s0mc5tVj1lO2kD1F3F.'
  ),
  (
    74,
    'Nour',
    'Almousa',
    NULL,
    NULL,
    '',
    'nour.almousa@example.com',
    '$2y$10$7xlC8l2y/1y3mQ8uJ0zC8mJ8mH4L9nK4T5Nfvwt6eBe6pE7mE7G.'
  ),
  (
    75,
    'Maha',
    'Almalki',
    NULL,
    NULL,
    '',
    'maha.almalki@example.com',
    '$2y$10$6xlD9m3z/2z4nR9vK1zD9nK9nI5M0oL5U6Ofw0v7fC7qF8nG8H9H.'
  ),
  (
    76,
    'Dalia',
    'Aldosari',
    NULL,
    NULL,
    '',
    'dalia.aldosari@example.com',
    '$2y$10$5xlE0n4a/3a5oS0wL2zE0oL0oJ6N1pM6V7Pgw1w8Dg8sG9oH9I0I.'
  ),
  (
    77,
    'Rasha',
    'Alfaris',
    NULL,
    NULL,
    '',
    'rasha.alfaris@example.com',
    '$2y$10$4xlF1o5b/4b6pT1xM3zF1pM1pK7O2qN7W8Qhx2x9Eh9tH0oI0J1J.'
  ),
  (
    78,
    'Samir',
    'Alansari',
    NULL,
    NULL,
    '',
    'samir.alansari@example.com',
    '$2y$10$3xlG2p6c/5c7qU2yN4zG2qN2qL8P3rO8X9Riy3yA1I1uI1pJ1K2K.'
  ),
  (
    79,
    'Farah',
    'Albadr',
    NULL,
    NULL,
    '',
    'farah.albadr@example.com',
    '$2y$10$2xlH3q7d/6d8rV3zO5zH3rO3rM9Q4sP9Y0Siz4zB2J2vJ2qK2L3L.'
  ),
  (
    80,
    'Waleed',
    'Alhashimi',
    NULL,
    NULL,
    '',
    'waleed.alhashimi@example.com',
    '$2y$10$1xlI4r8e/7e9sW4aP6zI4sP4sN0R5tQ0Z1Tja5aC3K3wK3rL3M4M.'
  ),
  (
    81,
    'Mona',
    'Alsayed',
    NULL,
    NULL,
    '',
    'mona.alsayed@example.com',
    '$2y$10$0xlJ5s9f/8f0tX5bQ7zJ5tQ5tO1S6uR1a2Ukb6bD4L4xL4sM4N5N.'
  ),
  (
    82,
    'Mahmoud',
    'Alhamoud',
    NULL,
    NULL,
    '',
    'mahmoud.alhamoud@example.com',
    '$2y$10$9xlK6t0g/9g1uY6cR8zK6uR6uP2T7vS2b3Vlc7cE5M5yM5tN5O6O.'
  ),
  (
    83,
    'Zaki',
    'Aljuhani',
    NULL,
    NULL,
    '',
    'zaki.aljuhani@example.com',
    '$2y$10$8xlL7u1h/0h2vZ7dS9zL7vS7vQ3U8wT3c4Wmd8dF6N6zN6uO6P7P.'
  ),
  (
    84,
    'Yahya',
    'Alqarni',
    NULL,
    NULL,
    '',
    'yahya.alqarni@example.com',
    '$2y$10$7xlM8v2i/1i3wA8eT0zM8wT8wR4V0xU4d5Xne9eG7O7aO7vP7Q8Q.'
  ),
  (
    85,
    'Samir',
    'Albukhait',
    NULL,
    NULL,
    '',
    'samir.albukhait@example.com',
    '$2y$10$6xlN9w3j/2j4xB9fU1zN9xU9xS5W1yV5e6Yof0fH8P8aP8wQ8R9R.'
  ),
  (
    86,
    'Hussein',
    'Alhajri',
    NULL,
    NULL,
    '',
    'hussein.alhajri@example.com',
    '$2y$10$5xlO0x4k/3k5yC0gV2zO0yV0yT6X2zW6f7Zpg1gI9Q9bQ9xR9S0S.'
  ),
  (
    87,
    'Nader',
    'Alsibai',
    NULL,
    NULL,
    '',
    'nader.alsibai@example.com',
    '$2y$10$4xlP1y5l/4l6zD1hW3zP1zW1zU7Y3aX7g8aqh2hJ0R0cR0yS0T1T.'
  ),
  (
    88,
    'Samer',
    'Altowail',
    NULL,
    NULL,
    '',
    'samer.altowail@example.com',
    '$2y$10$3xlQ2z6m/5m7aE2iX4zQ2aX2aV8Z4bY8h9brj3iKa1aD1zT1U2U.'
  ),
  (
    89,
    'Tamer',
    'Alsibti',
    NULL,
    NULL,
    '',
    'tamer.alsibti@example.com',
    '$2y$10$2xlR3a7n/6n8bF3jY5zR3bY3bW0A5cZ0i0csj4jLb2bE2aU2V3V.'
  ),
  (
    90,
    'Bilal',
    'Alhameed',
    NULL,
    NULL,
    '',
    'bilal.alhameed@example.com',
    '$2y$10$1xlS4b8o/7o9cG4kZ6zS4cZ4cX1B6dY1j1dtk5kMc3cF3bV3W4W.'
  ),
  (
    91,
    'Rania',
    'Almohammed',
    NULL,
    NULL,
    '',
    'rania.almohammed@example.com',
    '$2y$10$0xlT5c9p/8p0dH5lA7zT5dA5dY2C7eZ2k2eul6lNd4dG4cW4X5X.'
  ),
  (
    92,
    'Leila',
    'Alajmi',
    NULL,
    NULL,
    '',
    'leila.alajmi@example.com',
    '$2y$10$9xlU6d0q/9q1eI6mB8zU6eB6eZ3D8fA3l3fvm7mOe5eH5dX5Y6Y.'
  ),
  (
    93,
    'Hana',
    'Alshammari',
    NULL,
    NULL,
    '',
    'hana.alshammari@example.com',
    '$2y$10$8xlV7e1r/0r2fJ7nC9zV7fC7fA4E9gB4m4gwn8nPf6fI6eY6Z7Z.'
  ),
  (
    94,
    'Dina',
    'Alharithi',
    NULL,
    NULL,
    '',
    'dina.alharithi@example.com',
    '$2y$10$7xlW8f2s/1s3gK8oD0zW8gD8gB5F0hC5n5hx0oQf7gJ7fZ7A8A.'
  ),
  (
    95,
    'Omar',
    'Alkhoury',
    NULL,
    NULL,
    '',
    'omar.alkhoury@example.com',
    '$2y$10$6xlX9g3t/2t4hL9pE1zX9hE9hC6G2iD6o6iy1pRf8hK8gA8B9B.'
  ),
  (
    96,
    'Nadia',
    'Alkhatib',
    NULL,
    NULL,
    '',
    'nadia.alkhatib@example.com',
    '$2y$10$5xlY0h4u/3u5iM0qF2zY0iF0iD7H3jE7p7jz2qSg9iL9hB9C0C.'
  ),
  (
    97,
    'Alaa',
    'Alhassan',
    NULL,
    NULL,
    '',
    'alaa.alhassan@example.com',
    '$2y$10$4xlZ1i5v/4v6jN1rG3zZ1jG1jE8I4kF8q8ka3rTh0jM0iC0D1D.'
  ),
  (
    98,
    'Nada',
    'Alnasser',
    NULL,
    NULL,
    '',
    'nada.alnasser@example.com',
    '$2y$10$3xlA2j6w/5w7kO2sH4zA2kH2kF9J5lG9r9lb4sUi1kN1jD1E2E.'
  ),
  (
    99,
    'Lina',
    'Alhassan',
    NULL,
    NULL,
    '',
    'lina.alhassan@example.com',
    '$2y$10$2xlB3k7x/6x8lP3uI5zB3lI3lG0K6mH0s0mc5tVj2lO2kE2F3F.'
  ),
  (
    100,
    'Huda',
    'Almohammed',
    NULL,
    NULL,
    '',
    'huda.almohammed@example.com',
    '$2y$10$1xlC4l8y/7y9mQ4vJ6zC4mJ4mH1L7nI1t1mc6uWk3mP3lG3H4H.'
  ),
  (
    101,
    'Rami',
    'Alobaidi',
    NULL,
    NULL,
    '',
    'rami.alobaidi@example.com',
    '$2y$10$0xlD5m9z/8z0nR5wK7zD5nK5nI2M8oJ2u2mc7vXl4nQ4mH4I5I.'
  ),
  (
    102,
    'r&quot;ede',
    'ede',
    NULL,
    NULL,
    '',
    'ahmed.alnajar1@example.com',
    '$2y$10$JuV1aT6EmG/FfNKjH4uuke2ttGtUgW125Td/qrvKxte6bRjI56/a.'
  ),
  (
    103,
    'choukrane',
    'boukhama',
    NULL,
    NULL,
    '',
    'choukrane.boukhama@ensia.edu.dz',
    '$2y$10$RWKJ5PV1zma3R5m.Y/ip1OwjoEBMxoJa.nuzV6BizALq3Ki87mUpK'
  );
--
-- Index pour les tables déchargées
--
--
-- Index pour la table `chat_history`
--
ALTER TABLE `chat_history`
ADD PRIMARY KEY (`message_id`),
  ADD KEY `idx_user_session` (`user_id`),
  ADD KEY `idx_user_chat` (`user_id`, `timestamp`);
--
-- Index pour la table `event`
--
ALTER TABLE `event`
ADD PRIMARY KEY (`Event_Id`);
--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
ADD PRIMARY KEY (`feedback_id`);
--
-- Index pour la table `product`
--
ALTER TABLE `product`
ADD PRIMARY KEY (`product_id`),
  ADD KEY `foreign_key_theme_product` (`theme_id`),
  ADD KEY `foreign_key_user_product` (`User_Id`);
--
-- Index pour la table `rating`
--
ALTER TABLE `rating`
ADD PRIMARY KEY (`Rating_id`),
  ADD KEY `foreign_key_rating_product` (`Product_id`),
  ADD KEY `foreign_key_rating_user` (`User_Id`);
--
-- Index pour la table `services`
--
ALTER TABLE `services`
ADD PRIMARY KEY (`Service_Id`),
  ADD KEY `Event_Id_fk` (`Event_Id`);
--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
ADD PRIMARY KEY (`Theme_Id`),
  ADD KEY `rel_theme_service` (`Service_Id`);
--
-- Index pour la table `user`
--
ALTER TABLE `user`
ADD PRIMARY KEY (`User_Id`),
  ADD UNIQUE KEY `email` (`email`);
--
-- AUTO_INCREMENT pour les tables déchargées
--
--
-- AUTO_INCREMENT pour la table `chat_history`
--
ALTER TABLE `chat_history`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
MODIFY `Event_Id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 326;
--
-- AUTO_INCREMENT pour la table `rating`
--
ALTER TABLE `rating`
MODIFY `Rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
MODIFY `Service_Id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 41;
--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
MODIFY `Theme_Id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 77;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 104;
--
-- Contraintes pour les tables déchargées
--
--
-- Contraintes pour la table `chat_history`
--
ALTER TABLE `chat_history`
ADD CONSTRAINT `chat_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE;
--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `foreign_key_theme_product` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`Theme_Id`),
  ADD CONSTRAINT `foreign_key_user_product` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`);
--
-- Contraintes pour la table `rating`
--
ALTER TABLE `rating`
ADD CONSTRAINT `foreign_key_rating_product` FOREIGN KEY (`Product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `user_rating_fk` FOREIGN KEY (`User_Id`) REFERENCES `user` (`User_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
ADD CONSTRAINT `Event_Id_fk` FOREIGN KEY (`Event_Id`) REFERENCES `event` (`Event_Id`) ON DELETE CASCADE;
--
-- Contraintes pour la table `theme`
--
ALTER TABLE `theme`
ADD CONSTRAINT `rel_theme_service` FOREIGN KEY (`Service_Id`) REFERENCES `services` (`Service_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;