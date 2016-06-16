-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2016 at 03:52 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `la-tt`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `user_id`, `image_name`) VALUES
(9, 16, 'eb98efda1fe32d4438fab745158c310b.jpg'),
(10, 17, 's1d5ad0864edad8cb411e8aa7be418b5.jpg'),
(11, 18, 'gd26197678aa25bbac8fed824c13c0ce.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order play`
--

CREATE TABLE `order play` (
  `id` int(255) NOT NULL,
  `play_id` int(11) NOT NULL,
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `score` varchar(10) NOT NULL,
  `winner` varchar(11) NOT NULL,
  `loser` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order play`
--

INSERT INTO `order play` (`id`, `play_id`, `a`, `b`, `score`, `winner`, `loser`) VALUES
(11497, 60, '4', '5', '5:1', '4', '5'),
(11498, 60, '4', '6', '3:2', '4', '6'),
(11499, 60, '4', '7', '1:2', '7', '4'),
(11500, 60, '4', '8', '2:5', '8', '4'),
(11501, 60, '4', '9', '1:4', '9', '4'),
(11502, 60, '4', '10', '5:0', '4', '10'),
(11503, 60, '4', '11', '3:1', '4', '11'),
(11504, 60, '4', '12', '3:3', 'drow', 'drow'),
(11505, 60, '4', '13', '0:3', '13', '4'),
(11506, 60, '4', '14', '1:1', 'drow', 'drow'),
(11507, 60, '4', '15', '2:2', 'drow', 'drow'),
(11508, 60, '4', '16', '4:5', '16', '4'),
(11509, 60, '4', '17', '2:2', 'drow', 'drow'),
(11510, 60, '4', '18', '4:0', '4', '18'),
(11511, 60, '4', '19', '4:2', '4', '19'),
(11512, 61, '5', '19', '2:0', '5', '19'),
(11513, 61, '4', '19', '5:4', '4', '19'),
(11514, 61, '5', '6', '0:2', '6', '5'),
(11515, 61, '5', '7', '0:2', '7', '5'),
(11516, 61, '5', '8', '2:4', '8', '5'),
(11517, 61, '5', '9', '5:0', '5', '9'),
(11518, 61, '5', '10', '2:2', 'drow', 'drow'),
(11519, 61, '5', '11', '1:2', '11', '5'),
(11520, 61, '5', '12', '4:0', '5', '12'),
(11521, 61, '5', '13', '5:0', '5', '13'),
(11522, 61, '5', '14', '0:2', '14', '5'),
(11523, 61, '5', '15', '3:0', '5', '15'),
(11524, 61, '5', '16', '2:2', 'drow', 'drow'),
(11525, 61, '5', '17', '5:4', '5', '17'),
(11526, 61, '5', '18', '1:4', '18', '5'),
(11527, 61, '5', '19', '4:1', '5', '19'),
(11528, 62, '6', '19', '5:3', '6', '19'),
(11529, 62, '4', '19', '3:5', '19', '4'),
(11530, 62, '6', '5', '5:0', '6', '5'),
(11531, 62, '6', '7', '5:5', 'drow', 'drow'),
(11532, 62, '6', '8', '0:5', '8', '6'),
(11533, 62, '6', '9', '1:3', '9', '6'),
(11534, 62, '6', '10', '5:4', '6', '10'),
(11535, 62, '6', '11', '0:2', '11', '6'),
(11536, 62, '6', '12', '1:1', 'drow', 'drow'),
(11537, 62, '6', '13', '1:1', 'drow', 'drow'),
(11538, 62, '6', '14', '4:1', '6', '14'),
(11539, 62, '6', '15', '3:5', '15', '6'),
(11540, 62, '6', '16', '2:1', '6', '16'),
(11541, 62, '6', '17', '5:0', '6', '17'),
(11542, 62, '6', '18', '3:1', '6', '18'),
(11543, 62, '6', '19', '4:2', '6', '19'),
(11544, 63, '7', '19', '0:3', '19', '7'),
(11545, 63, '4', '19', '2:4', '19', '4'),
(11546, 63, '7', '5', '5:5', 'drow', 'drow'),
(11547, 63, '7', '6', '3:4', '6', '7'),
(11548, 63, '7', '8', '1:0', '7', '8'),
(11549, 63, '7', '9', '3:5', '9', '7'),
(11550, 63, '7', '10', '2:5', '10', '7'),
(11551, 63, '7', '11', '1:5', '11', '7'),
(11552, 63, '7', '12', '1:5', '12', '7'),
(11553, 63, '7', '13', '3:4', '13', '7'),
(11554, 63, '7', '14', '2:5', '14', '7'),
(11555, 63, '7', '15', '0:4', '15', '7'),
(11556, 63, '7', '16', '4:4', 'drow', 'drow'),
(11557, 63, '7', '17', '3:0', '7', '17'),
(11558, 63, '7', '18', '5:0', '7', '18'),
(11559, 63, '7', '19', '5:0', '7', '19'),
(11560, 64, '8', '19', '2:0', '8', '19'),
(11561, 64, '4', '19', '3:4', '19', '4'),
(11562, 64, '8', '5', '3:5', '5', '8'),
(11563, 64, '8', '6', '4:2', '8', '6'),
(11564, 64, '8', '7', '3:0', '8', '7'),
(11565, 64, '8', '9', '0:4', '9', '8'),
(11566, 64, '8', '10', '3:2', '8', '10'),
(11567, 64, '8', '11', '0:4', '11', '8'),
(11568, 64, '8', '12', '1:4', '12', '8'),
(11569, 64, '8', '13', '5:5', 'drow', 'drow'),
(11570, 64, '8', '14', '2:3', '14', '8'),
(11571, 64, '8', '15', '0:0', 'drow', 'drow'),
(11572, 64, '8', '16', '5:4', '8', '16'),
(11573, 64, '8', '17', '1:0', '8', '17'),
(11574, 64, '8', '18', '2:1', '8', '18'),
(11575, 64, '8', '19', '1:4', '19', '8'),
(11576, 65, '9', '19', '2:5', '19', '9'),
(11577, 65, '4', '19', '3:3', 'drow', 'drow'),
(11578, 65, '9', '5', '0:2', '5', '9'),
(11579, 65, '9', '6', '1:3', '6', '9'),
(11580, 65, '9', '7', '0:1', '7', '9'),
(11581, 65, '9', '8', '0:5', '8', '9'),
(11582, 65, '9', '10', '1:5', '10', '9'),
(11583, 65, '9', '11', '0:2', '11', '9'),
(11584, 65, '9', '12', '2:0', '9', '12'),
(11585, 65, '9', '13', '4:5', '13', '9'),
(11586, 65, '9', '14', '0:2', '14', '9'),
(11587, 65, '9', '15', '5:5', 'drow', 'drow'),
(11588, 65, '9', '16', '0:5', '16', '9'),
(11589, 65, '9', '17', '1:2', '17', '9'),
(11590, 65, '9', '18', '1:0', '9', '18'),
(11591, 65, '9', '19', '3:5', '19', '9'),
(11592, 66, '10', '19', '5:5', 'drow', 'drow'),
(11593, 66, '4', '19', '1:4', '19', '4'),
(11594, 66, '10', '5', '4:2', '10', '5'),
(11595, 66, '10', '6', '5:4', '10', '6'),
(11596, 66, '10', '7', '2:3', '7', '10'),
(11597, 66, '10', '8', '5:4', '10', '8'),
(11598, 66, '10', '9', '1:1', 'drow', 'drow'),
(11599, 66, '10', '11', '0:3', '11', '10'),
(11600, 66, '10', '12', '0:5', '12', '10'),
(11601, 66, '10', '13', '0:5', '13', '10'),
(11602, 66, '10', '14', '4:3', '10', '14'),
(11603, 66, '10', '15', '4:2', '10', '15'),
(11604, 66, '10', '16', '4:4', 'drow', 'drow'),
(11605, 66, '10', '17', '4:0', '10', '17'),
(11606, 66, '10', '18', '0:2', '18', '10'),
(11607, 66, '10', '19', '4:2', '10', '19'),
(11608, 67, '11', '19', '0:0', 'drow', 'drow'),
(11609, 67, '4', '19', '2:1', '4', '19'),
(11610, 67, '11', '5', '4:2', '11', '5'),
(11611, 67, '11', '6', '2:5', '6', '11'),
(11612, 67, '11', '7', '2:3', '7', '11'),
(11613, 67, '11', '8', '0:1', '8', '11'),
(11614, 67, '11', '9', '2:4', '9', '11'),
(11615, 67, '11', '10', '4:0', '11', '10'),
(11616, 67, '11', '12', '2:4', '12', '11'),
(11617, 67, '11', '13', '3:5', '13', '11'),
(11618, 67, '11', '14', '2:1', '11', '14'),
(11619, 67, '11', '15', '0:4', '15', '11'),
(11620, 67, '11', '16', '5:5', 'drow', 'drow'),
(11621, 67, '11', '17', '0:0', 'drow', 'drow'),
(11622, 67, '11', '18', '4:4', 'drow', 'drow'),
(11623, 67, '11', '19', '2:5', '19', '11'),
(11624, 68, '12', '19', '3:2', '12', '19'),
(11625, 68, '4', '19', '5:2', '4', '19'),
(11626, 68, '12', '5', '4:5', '5', '12'),
(11627, 68, '12', '6', '4:2', '12', '6'),
(11628, 68, '12', '7', '4:5', '7', '12'),
(11629, 68, '12', '8', '1:4', '8', '12'),
(11630, 68, '12', '9', '0:2', '9', '12'),
(11631, 68, '12', '10', '1:1', 'drow', 'drow'),
(11632, 68, '12', '11', '5:1', '12', '11'),
(11633, 68, '12', '13', '1:2', '13', '12'),
(11634, 68, '12', '14', '3:2', '12', '14'),
(11635, 68, '12', '15', '0:0', 'drow', 'drow'),
(11636, 68, '12', '16', '0:2', '16', '12'),
(11637, 68, '12', '17', '3:0', '12', '17'),
(11638, 68, '12', '18', '0:0', 'drow', 'drow'),
(11639, 68, '12', '19', '2:5', '19', '12'),
(11640, 69, '13', '19', '5:3', '13', '19'),
(11641, 69, '4', '19', '1:0', '4', '19'),
(11642, 69, '13', '5', '2:4', '5', '13'),
(11643, 69, '13', '6', '2:1', '13', '6'),
(11644, 69, '13', '7', '1:0', '13', '7'),
(11645, 69, '13', '8', '2:1', '13', '8'),
(11646, 69, '13', '9', '4:3', '13', '9'),
(11647, 69, '13', '10', '4:0', '13', '10'),
(11648, 69, '13', '11', '3:0', '13', '11'),
(11649, 69, '13', '12', '2:0', '13', '12'),
(11650, 69, '13', '14', '3:3', 'drow', 'drow'),
(11651, 69, '13', '15', '0:2', '15', '13'),
(11652, 69, '13', '16', '1:2', '16', '13'),
(11653, 69, '13', '17', '3:3', 'drow', 'drow'),
(11654, 69, '13', '18', '4:3', '13', '18'),
(11655, 69, '13', '19', '2:2', 'drow', 'drow'),
(11656, 70, '14', '19', '4:3', '14', '19'),
(11657, 70, '4', '19', '3:4', '19', '4'),
(11658, 70, '14', '5', '3:3', 'drow', 'drow'),
(11659, 70, '14', '6', '2:3', '6', '14'),
(11660, 70, '14', '7', '4:5', '7', '14'),
(11661, 70, '14', '8', '1:0', '14', '8'),
(11662, 70, '14', '9', '3:1', '14', '9'),
(11663, 70, '14', '10', '3:5', '10', '14'),
(11664, 70, '14', '11', '5:0', '14', '11'),
(11665, 70, '14', '12', '2:3', '12', '14'),
(11666, 70, '14', '13', '3:2', '14', '13'),
(11667, 70, '14', '15', '1:0', '14', '15'),
(11668, 70, '14', '16', '0:5', '16', '14'),
(11669, 70, '14', '17', '0:1', '17', '14'),
(11670, 70, '14', '18', '2:1', '14', '18'),
(11671, 70, '14', '19', '2:3', '19', '14'),
(11672, 71, '15', '19', '1:2', '19', '15'),
(11673, 71, '4', '19', '1:1', 'drow', 'drow'),
(11674, 71, '15', '5', '0:5', '5', '15'),
(11675, 71, '15', '6', '2:3', '6', '15'),
(11676, 71, '15', '7', '0:0', 'drow', 'drow'),
(11677, 71, '15', '8', '2:1', '15', '8'),
(11678, 71, '15', '9', '4:4', 'drow', 'drow'),
(11679, 71, '15', '10', '1:3', '10', '15'),
(11680, 71, '15', '11', '0:3', '11', '15'),
(11681, 71, '15', '12', '3:4', '12', '15'),
(11682, 71, '15', '13', '4:3', '15', '13'),
(11683, 71, '15', '14', '0:1', '14', '15'),
(11684, 71, '15', '16', '3:1', '15', '16'),
(11685, 71, '15', '17', '3:5', '17', '15'),
(11686, 71, '15', '18', '1:3', '18', '15'),
(11687, 71, '15', '19', '5:2', '15', '19'),
(11688, 72, '16', '19', '2:0', '16', '19'),
(11689, 72, '4', '19', '3:0', '4', '19'),
(11690, 72, '16', '5', '4:3', '16', '5'),
(11691, 72, '16', '6', '1:3', '6', '16'),
(11692, 72, '16', '7', '4:1', '16', '7'),
(11693, 72, '16', '8', '0:5', '8', '16'),
(11694, 72, '16', '9', '4:5', '9', '16'),
(11695, 72, '16', '10', '4:4', 'drow', 'drow'),
(11696, 72, '16', '11', '2:3', '11', '16'),
(11697, 72, '16', '12', '5:5', 'drow', 'drow'),
(11698, 72, '16', '13', '4:5', '13', '16'),
(11699, 72, '16', '14', '3:0', '16', '14'),
(11700, 72, '16', '15', '1:3', '15', '16'),
(11701, 72, '16', '17', '2:5', '17', '16'),
(11702, 72, '16', '18', '4:2', '16', '18'),
(11703, 72, '16', '19', '0:2', '19', '16'),
(11704, 73, '17', '19', '2:0', '17', '19'),
(11705, 73, '4', '19', '5:0', '4', '19'),
(11706, 73, '17', '5', '1:0', '17', '5'),
(11707, 73, '17', '6', '3:2', '17', '6'),
(11708, 73, '17', '7', '5:4', '17', '7'),
(11709, 73, '17', '8', '3:1', '17', '8'),
(11710, 73, '17', '9', '3:1', '17', '9'),
(11711, 73, '17', '10', '2:1', '17', '10'),
(11712, 73, '17', '11', '1:2', '11', '17'),
(11713, 73, '17', '12', '1:5', '12', '17'),
(11714, 73, '17', '13', '2:3', '13', '17'),
(11715, 73, '17', '14', '2:2', 'drow', 'drow'),
(11716, 73, '17', '15', '5:5', 'drow', 'drow'),
(11717, 73, '17', '16', '4:2', '17', '16'),
(11718, 73, '17', '18', '4:0', '17', '18'),
(11719, 73, '17', '19', '1:2', '19', '17'),
(11720, 74, '18', '19', '0:4', '19', '18'),
(11721, 74, '4', '19', '1:4', '19', '4'),
(11722, 74, '18', '5', '2:1', '18', '5'),
(11723, 74, '18', '6', '2:3', '6', '18'),
(11724, 74, '18', '7', '5:5', 'drow', 'drow'),
(11725, 74, '18', '8', '5:3', '18', '8'),
(11726, 74, '18', '9', '5:4', '18', '9'),
(11727, 74, '18', '10', '3:1', '18', '10'),
(11728, 74, '18', '11', '4:5', '11', '18'),
(11729, 74, '18', '12', '1:2', '12', '18'),
(11730, 74, '18', '13', '2:5', '13', '18'),
(11731, 74, '18', '14', '1:5', '14', '18'),
(11732, 74, '18', '15', '2:3', '15', '18'),
(11733, 74, '18', '16', '5:2', '18', '16'),
(11734, 74, '18', '17', '5:3', '18', '17'),
(11735, 74, '18', '19', '2:4', '19', '18'),
(11736, 75, '19', '19', '4:3', '19', '19'),
(11737, 75, '4', '19', '1:5', '19', '4'),
(11738, 75, '19', '5', '5:3', '19', '5'),
(11739, 75, '19', '6', '1:5', '6', '19'),
(11740, 75, '19', '7', '0:3', '7', '19'),
(11741, 75, '19', '8', '5:4', '19', '8'),
(11742, 75, '19', '9', '3:4', '9', '19'),
(11743, 75, '19', '10', '4:5', '10', '19'),
(11744, 75, '19', '11', '1:3', '11', '19'),
(11745, 75, '19', '12', '3:0', '19', '12'),
(11746, 75, '19', '13', '3:0', '19', '13'),
(11747, 75, '19', '14', '0:2', '14', '19'),
(11748, 75, '19', '15', '4:4', 'drow', 'drow'),
(11749, 75, '19', '16', '0:1', '16', '19'),
(11750, 75, '19', '17', '1:2', '17', '19'),
(11751, 75, '19', '18', '2:2', 'drow', 'drow');

-- --------------------------------------------------------

--
-- Table structure for table `play`
--

CREATE TABLE `play` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `p9` int(11) NOT NULL,
  `p10` int(11) NOT NULL,
  `p11` int(11) NOT NULL,
  `p12` int(11) NOT NULL,
  `p13` int(11) NOT NULL,
  `p14` int(11) NOT NULL,
  `p15` int(11) NOT NULL,
  `p16` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `play`
--

INSERT INTO `play` (`id`, `team_id`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `tournament_id`) VALUES
(60, 4, 0, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(61, 5, 4, 0, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(62, 6, 4, 5, 0, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(63, 7, 4, 5, 6, 0, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(64, 8, 4, 5, 6, 7, 0, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(65, 9, 4, 5, 6, 7, 8, 0, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(66, 10, 4, 5, 6, 7, 8, 9, 0, 11, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(67, 11, 4, 5, 6, 7, 8, 9, 10, 0, 12, 13, 14, 15, 16, 17, 18, 19, 6),
(68, 12, 4, 5, 6, 7, 8, 9, 10, 11, 0, 13, 14, 15, 16, 17, 18, 19, 6),
(69, 13, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 14, 15, 16, 17, 18, 19, 6),
(70, 14, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 0, 15, 16, 17, 18, 19, 6),
(71, 15, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 0, 16, 17, 18, 19, 6),
(72, 16, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 17, 18, 19, 6),
(73, 17, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 0, 18, 19, 6),
(74, 18, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 19, 6),
(75, 19, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `round`
--

CREATE TABLE `round` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `round`
--

INSERT INTO `round` (`id`, `type`) VALUES
(1, 'Tournament table'),
(2, 'Playoff');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `order_play_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `country`) VALUES
(4, 'Real', 'France'),
(5, 'Mets', 'German'),
(6, 'Bordo', 'German'),
(7, 'Nancy', 'German'),
(8, 'Monpele', 'German'),
(9, 'Nicca', 'German'),
(10, 'Dijon', 'German'),
(11, 'Monako', 'German'),
(12, 'Kan', 'German'),
(13, 'Renn', 'German'),
(14, 'Tylyza', 'German'),
(15, 'Nant', 'German'),
(16, 'Gengam', 'German'),
(17, 'Loryan', 'German'),
(18, 'Loryan', 'German'),
(19, 'Lil', 'German');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `round_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`id`, `name`, `status`, `round_id`) VALUES
(6, 'German championship', 'running', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `s_name` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `access` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `s_name`, `email`, `pass`, `access`) VALUES
(16, 'bogdan', 's_name', 'bog@ram.ru', '96e79218965eb72c92a549dd5a330112', 1),
(17, 'name', 's_name', 'admin@ram.ru', '96e79218965eb72c92a549dd5a330112', 2),
(18, 'name', 's_name', 'bog2222@ram.ru', 'b0baee9d279d34fa1dfd71aadb908c3f', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order play`
--
ALTER TABLE `order play`
  ADD PRIMARY KEY (`id`),
  ADD KEY `play_id` (`play_id`);

--
-- Indexes for table `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `round`
--
ALTER TABLE `round`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_play_id` (`order_play_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `round_id` (`round_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order play`
--
ALTER TABLE `order play`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11752;
--
-- AUTO_INCREMENT for table `play`
--
ALTER TABLE `play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `round`
--
ALTER TABLE `round`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
