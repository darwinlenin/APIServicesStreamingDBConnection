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
-- Database: sitio_videos
--
 -- --------------------------------------------------------
 --
-- Table structure for table videos
--

CREATE TABLE IF NOT EXISTS heroku_0af1e6e8cd1d76c.videos ( id text COLLATE utf8_spanish2_ci NOT NULL,
                                                                                            titulo tinytext COLLATE utf8_spanish2_ci NOT NULL,
                                                                                                                                     descripcion mediumtext COLLATE utf8_spanish2_ci NOT NULL,
                                                                                                                                                                                     video_src text COLLATE utf8_spanish2_ci NOT NULL,
                                                                                                                                                                                                                             imagen_src text COLLATE utf8_spanish2_ci NOT NULL,
                                                                                                                                                                                                                                                                      uniqueID int(11) NOT NULL) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT
CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table videos
--

INSERT INTO heroku_0af1e6e8cd1d76c.videos (id, titulo, descripcion, video_src, imagen_src, uniqueID)
VALUES ('123',
        'Mi video',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        '0ade473ec2b1c81b516e079252909d00.mp4',
        'BBde473ec2b1c81b516e079252909d00.png',
        1), ('345',
             'Mi video 2',
             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
             '0ade473ec2b1c81b516e079252909d00.mp4',
             '0ade473ec2b1c81b516e079252909d83.png',
             2);

--
-- Indexes for dumped tables
--
 --
-- Indexes for table 'videos'
--

ALTER TABLE heroku_0af1e6e8cd1d76c.videos ADD UNIQUE KEY uniqueID (uniqueID);

--
-- AUTO_INCREMENT for dumped tables
--
 --
-- AUTO_INCREMENT for table 'videos'
--

ALTER TABLE heroku_0af1e6e8cd1d76c.videos MODIFY uniqueID int(11) NOT NULL AUTO_INCREMENT,
                                                                           AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE heroku_0af1e6e8cd1d76c.videos ADD componenthtml varchar(1000) AFTER uniqueID;

UPDATE heroku_0af1e6e8cd1d76c.videos
SET videos.componenthtml='<div style="width: 100%;"><div style="position: relative; padding-bottom: 56.25%; padding-top: 0; height: 0;"><iframe frameborder="0" width="1600px" height="900px" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="https://view.genial.ly/59860bf8a3a6171eb4d5f7ad" type="text/html" allowscriptaccess="always" allowfullscreen="true" scrolling="yes" allownetworking="all"></iframe> </div> </div>'
WHERE videos.uniqueID=1;

