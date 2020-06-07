-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2020 at 04:30 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formationphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'World News'),
(2, 'Asian News'),
(3, 'Sports'),
(4, 'Showbiz'),
(5, 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `comment_name` varchar(100) NOT NULL,
  `comment_email` varchar(100) NOT NULL,
  `comment_text` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_name`, `comment_email`, `comment_text`, `status`) VALUES
(1, 9, 'john', 'hohn@john', 'amaaaaaazinggggggg', 'approve'),
(2, 6, 'malek bezzina', 'malek@maloouka', 'waaaaaaaw', 'approve'),
(3, 4, 'khouloud bezzina', 'khouloud@khouloud', 'i loove asia <3', 'approve'),
(4, 7, 'meh', 'meh@mi', 'apology accepted', 'approve'),
(5, 6, 'malek bezzina', 'malek@maloouka', 'nice one', 'approve'),
(7, 9, 'saiida', 'saiida@saada', 'i like this', 'approve'),
(10, 4, 'malek bezzina', 'malek@maloouka', 'love it!!', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_keywords` text NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `post_title`, `post_date`, `post_author`, `post_keywords`, `post_image`, `post_content`) VALUES
(5, 3, 'VOLLEYY', '21-12-19', 'MALEK BEZZINA', 'BALL sport sports', 'im21.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo elit at. Erat velit scelerisque in dictum non. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Vel risus commodo viverra maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ipsum suspendisse ultrices gravida dictum fusce. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Ut etiam sit amet nisl. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Ultrices sagittis orci a scelerisque purus semper eget duis. Mauris in aliquam sem fringilla ut morbi tincidunt augue interdum.'),
(3, 1, 'THE WORLD', '21-12-19', 'MALEK BEZZINA', 'WORLD news', 'im22.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo elit at. Erat velit scelerisque in dictum non. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Vel risus commodo viverra maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ipsum suspendisse ultrices gravida dictum fusce. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Ut etiam sit amet nisl. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Ultrices sagittis orci a scelerisque purus semper eget duis. Mauris in aliquam sem fringilla ut morbi tincidunt augue interdum.'),
(4, 2, 'ASIAN PEOPLE', '21-12-19', 'MALEK BEZZINA', 'ASIA news asian', 'im26.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo elit at. Erat velit scelerisque in dictum non. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Vel risus commodo viverra maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ipsum suspendisse ultrices gravida dictum fusce. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Ut etiam sit amet nisl. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Ultrices sagittis orci a scelerisque purus semper eget duis. Mauris in aliquam sem fringilla ut morbi tincidunt augue interdum.'),
(6, 4, 'PRETTY PEOPLE', '21-12-19', 'MALEK BEZZINA', 'showbiz', 'im28.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo elit at. Erat velit scelerisque in dictum non. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Vel risus commodo viverra maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ipsum suspendisse ultrices gravida dictum fusce. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Ut etiam sit amet nisl. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Ultrices sagittis orci a scelerisque purus semper eget duis. Mauris in aliquam sem fringilla ut morbi tincidunt augue interdum.'),
(7, 5, 'ALWAYS APOLOGIZING', '21-12-19', 'MALEK BEZZINA', 'politics', 'im23.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A iaculis at erat pellentesque adipiscing commodo elit at. Erat velit scelerisque in dictum non. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Vel risus commodo viverra maecenas. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ipsum suspendisse ultrices gravida dictum fusce. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Ut etiam sit amet nisl. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Ultrices sagittis orci a scelerisque purus semper eget duis. Mauris in aliquam sem fringilla ut morbi tincidunt augue interdum.'),
(8, 2, 'Last One', '22-12-19', 'MALEK BEZZINA', 'ASIA news asian', 'im24.jpg', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(9, 4, 'Just one more', '22-12-19', 'MALEK BEZZINA', 'showbiz', 'im27.jpg', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
