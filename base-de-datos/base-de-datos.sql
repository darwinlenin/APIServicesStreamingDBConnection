-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2017 at 04:19 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitio_videos`
--

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` text COLLATE utf8_spanish2_ci NOT NULL,
  `titulo` tinytext COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8_spanish2_ci NOT NULL,
  `video_src` text COLLATE utf8_spanish2_ci NOT NULL,
  `imagen_src` text COLLATE utf8_spanish2_ci NOT NULL,
  `uniqueID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `titulo`, `descripcion`, `video_src`, `imagen_src`, `uniqueID`) VALUES
('123', 'Mi video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '0ade473ec2b1c81b516e079252909d00.mp4', 'BBde473ec2b1c81b516e079252909d00.png', 1),
('345', 'Mi video 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '0ade473ec2b1c81b516e079252909d00.mp4', '0ade473ec2b1c81b516e079252909d83.png', 2);


UPDATE heroku_0af1e6e8cd1d76c.videos
SET videos.titulo='Unity Photon tutorial part 1',
    videos.descripcion='configuration of photon multiplayer game',
    videos.video_src='photonpart1.mp4',
    videos.imagen_src='photonpart1.png'
WHERE videos.uniqueID=1;


UPDATE heroku_0af1e6e8cd1d76c.videos
SET videos.titulo='Unity Photon tutorial part 2',
    videos.descripcion='configuration of photon multiplayer game synchronized players',
    videos.video_src='photonplayerenglish.mp4',
    videos.imagen_src='photonplayerenglish.png'
WHERE videos.uniqueID=2;

INSERT INTO heroku_0af1e6e8cd1d76c.videos (`id`, `titulo`, `descripcion`, `video_src`, `imagen_src`, `uniqueID`)
VALUES ('3',
        'Introduction to Unity',
        'Introduction of Unity Engine Platform and basic animation os object and player scene.',
        'VideoDemostrativoUnity.mp4',
        'VideoDemostrativoUnity.png',
        3), ('4',
             'Materials Animation and Substances in Unity',
             'Configuration of Unity engine and animation basic to enable controls of object in the editor. furthermore we attach materials and sahders of allegorithmic substance.',
             'demo2unity.mp4',
             'demo2unity.png',
             4), ('5',
                  'Introduction to Phaser.JS WebGL HTML5 Snake Game',
                  'Discover with us how to create a classic video game (Snake Game) focused on WebGL with the JavaScript game development framework Phaser.JS enjoy it and share it.',
                  'PhaserSnakeProject.mp4',
                  'PhaserSnakeProject.png',
                  5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD UNIQUE KEY `uniqueID` (`uniqueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `uniqueID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




