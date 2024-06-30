-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 04:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT 'title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Books'),
(2, 'Games'),
(3, 'Software'),
(4, 'Hardware');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `category_id`) VALUES
(1, 'Diablo 4', 'Diablo 4 puts players back into the bleak world of Sanctuary, where forces from heaven and hell manipulate humans to do their bidding. The Mother of Sanctuary, Lilith, has returned and intends to spread her evil across the world. Its up to the players to take on her forces and stop her before its to', 70, 2),
(2, 'Playstation 5', 'The base model includes an optical disc drive compatible with Ultra HD Blu-ray discs. The Digital Edition lacks this drive, as a lower-cost model for buying games only through download. The two variants were launched simultaneously. Slimmer hardware revisions of both models replaced the original mod', 440, 4),
(3, 'XBOX One X', 'All games look and play great on Xbox One X. But selected titles are optimised to take advantage of the power of Xbox One X with higher resolutions, faster framerates, improved textures and more. These games are Xbox One X Enhanced.', 400, 4),
(4, 'Chaos', 'A journalist\'s twenty-year fascination with the Manson murders leads to gobsmacking (The Ringer) new revelations about the FBI\'s involvement in this kaleidoscopic (The New York Times) reassessment of an infamous case in American history.', 22, 1),
(5, 'Boneshaker', 'In the early days of the Civil War, rumors of gold in the frozen Klondike brought hordes of newcomers to the Pacific Northwest. Anxious to compete, Russian prospectors commissioned inventor Leviticus Blue to create a great machine that could mine through Alaska’s ice. Thus was Dr. Blue’s Incredible ', 13, 1),
(7, 'Resident Evil 4', 'A remake of the 2005 game Resident Evil 4, players control the US agent Leon S. Kennedy, who must save Ashley Graham, the daughter of the United States president, from the mysterious Los Illuminados cult. The remake has an updated plot, new visuals, characters, cast, and altered gameplay.', 70, 2),
(20, 'Windows 11', 'Windows 11 is a major release of the Windows NT operating system and is the successor to Windows 10. It introduces new features such as a redesigned interface, new productivity and social features, and updates to security and accessibility, along with improvements to performance.', 60, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
