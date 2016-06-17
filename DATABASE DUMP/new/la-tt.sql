-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 03:57 PM
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
(11, 18, 'gd26197678aa25bbac8fed824c13c0ce.jpg'),
(12, 19, '2cb6455a835f8dfd349de453e766aab.png'),
(13, 20, 'g3c0f1fccc25de0c2a1a142b00536ad2.png'),
(14, 21, '5b5a249642c642ce3c05cfb32a527a0.png'),
(15, 22, 'nd46e40056fbbdb46c70dc255c945cf8.png'),
(16, 23, '9e89c7761af6a023ad7be449d127623.png'),
(17, 24, '3f0caf68e1334ffebe7b7dc02648b5e5.png'),
(18, 25, 'f60b1cc4468de7eef0c142008c9fc1d.png'),
(19, 26, 'g14c20c0b22b693579156ae2572d1746.png'),
(20, 27, 'e6bc5230889403bb996f933992846a2.png'),
(21, 28, '0c01ceee4bc17643acb794824aab246.png'),
(22, 29, '275fd713f4bc5d3578b67b5b0dcb980.png'),
(23, 30, 'g107896cf9724761d3cf46e9421c60de.png'),
(24, 31, '60fbdffaf5aa84a252338b4cc54f84e.png'),
(25, 32, 'd400b3f2d92d1e1dafb57161bd8b88f.png');

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
  `loser` varchar(11) NOT NULL,
  `tournament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order play`
--

INSERT INTO `order play` (`id`, `play_id`, `a`, `b`, `score`, `winner`, `loser`, `tournament_id`) VALUES
(15322, 236, '16', '17', '1:1', 'drow', 'drow', 17),
(15323, 236, '16', '18', '4:1', '16', '18', 17),
(15324, 236, '16', '19', '5:0', '16', '19', 17),
(15325, 236, '16', '20', '4:1', '16', '20', 17),
(15326, 236, '16', '21', '2:4', '21', '16', 17),
(15327, 236, '16', '22', '0:4', '22', '16', 17),
(15328, 236, '16', '23', '4:4', 'drow', 'drow', 17),
(15329, 236, '16', '24', '2:4', '24', '16', 17),
(15330, 236, '16', '25', '2:0', '16', '25', 17),
(15331, 236, '16', '26', '4:5', '26', '16', 17),
(15332, 236, '16', '27', '2:2', 'drow', 'drow', 17),
(15333, 236, '16', '28', '2:5', '28', '16', 17),
(15334, 236, '16', '29', '1:3', '29', '16', 17),
(15335, 236, '16', '30', '3:2', '16', '30', 17),
(15336, 236, '16', '31', '5:0', '16', '31', 17),
(15337, 237, '17', '31', '0:4', '31', '17', 17),
(15338, 237, '16', '31', '5:2', '16', '31', 17),
(15339, 237, '17', '18', '5:5', 'drow', 'drow', 17),
(15340, 237, '17', '19', '5:2', '17', '19', 17),
(15341, 237, '17', '20', '1:3', '20', '17', 17),
(15342, 237, '17', '21', '4:2', '17', '21', 17),
(15343, 237, '17', '22', '3:1', '17', '22', 17),
(15344, 237, '17', '23', '4:5', '23', '17', 17),
(15345, 237, '17', '24', '2:1', '17', '24', 17),
(15346, 237, '17', '25', '4:5', '25', '17', 17),
(15347, 237, '17', '26', '5:2', '17', '26', 17),
(15348, 237, '17', '27', '4:5', '27', '17', 17),
(15349, 237, '17', '28', '3:4', '28', '17', 17),
(15350, 237, '17', '29', '1:5', '29', '17', 17),
(15351, 237, '17', '30', '0:4', '30', '17', 17),
(15352, 237, '17', '31', '0:2', '31', '17', 17),
(15353, 238, '18', '31', '3:3', 'drow', 'drow', 17),
(15354, 238, '16', '31', '2:1', '16', '31', 17),
(15355, 238, '18', '17', '0:1', '17', '18', 17),
(15356, 238, '18', '19', '1:5', '19', '18', 17),
(15357, 238, '18', '20', '4:1', '18', '20', 17),
(15358, 238, '18', '21', '0:4', '21', '18', 17),
(15359, 238, '18', '22', '0:0', 'drow', 'drow', 17),
(15360, 238, '18', '23', '0:0', 'drow', 'drow', 17),
(15361, 238, '18', '24', '5:3', '18', '24', 17),
(15362, 238, '18', '25', '4:0', '18', '25', 17),
(15363, 238, '18', '26', '3:3', 'drow', 'drow', 17),
(15364, 238, '18', '27', '5:1', '18', '27', 17),
(15365, 238, '18', '28', '1:2', '28', '18', 17),
(15366, 238, '18', '29', '0:2', '29', '18', 17),
(15367, 238, '18', '30', '2:1', '18', '30', 17),
(15368, 238, '18', '31', '2:2', 'drow', 'drow', 17),
(15369, 239, '19', '31', '0:0', 'drow', 'drow', 17),
(15370, 239, '16', '31', '5:4', '16', '31', 17),
(15371, 239, '19', '17', '2:5', '17', '19', 17),
(15372, 239, '19', '18', '3:3', 'drow', 'drow', 17),
(15373, 239, '19', '20', '5:3', '19', '20', 17),
(15374, 239, '19', '21', '0:3', '21', '19', 17),
(15375, 239, '19', '22', '3:1', '19', '22', 17),
(15376, 239, '19', '23', '0:2', '23', '19', 17),
(15377, 239, '19', '24', '0:3', '24', '19', 17),
(15378, 239, '19', '25', '3:4', '25', '19', 17),
(15379, 239, '19', '26', '2:2', 'drow', 'drow', 17),
(15380, 239, '19', '27', '5:3', '19', '27', 17),
(15381, 239, '19', '28', '1:3', '28', '19', 17),
(15382, 239, '19', '29', '1:3', '29', '19', 17),
(15383, 239, '19', '30', '1:4', '30', '19', 17),
(15384, 239, '19', '31', '1:1', 'drow', 'drow', 17),
(15385, 240, '20', '31', '5:4', '20', '31', 17),
(15386, 240, '16', '31', '1:3', '31', '16', 17),
(15387, 240, '20', '17', '2:4', '17', '20', 17),
(15388, 240, '20', '18', '5:5', 'drow', 'drow', 17),
(15389, 240, '20', '19', '4:2', '20', '19', 17),
(15390, 240, '20', '21', '0:3', '21', '20', 17),
(15391, 240, '20', '22', '5:2', '20', '22', 17),
(15392, 240, '20', '23', '2:1', '20', '23', 17),
(15393, 240, '20', '24', '3:0', '20', '24', 17),
(15394, 240, '20', '25', '4:3', '20', '25', 17),
(15395, 240, '20', '26', '4:2', '20', '26', 17),
(15396, 240, '20', '27', '4:2', '20', '27', 17),
(15397, 240, '20', '28', '4:1', '20', '28', 17),
(15398, 240, '20', '29', '1:2', '29', '20', 17),
(15399, 240, '20', '30', '4:0', '20', '30', 17),
(15400, 240, '20', '31', '5:3', '20', '31', 17),
(15401, 241, '21', '31', '0:2', '31', '21', 17),
(15402, 241, '16', '31', '2:4', '31', '16', 17),
(15403, 241, '21', '17', '3:2', '21', '17', 17),
(15404, 241, '21', '18', '1:0', '21', '18', 17),
(15405, 241, '21', '19', '5:3', '21', '19', 17),
(15406, 241, '21', '20', '1:4', '20', '21', 17),
(15407, 241, '21', '22', '4:1', '21', '22', 17),
(15408, 241, '21', '23', '0:3', '23', '21', 17),
(15409, 241, '21', '24', '4:4', 'drow', 'drow', 17),
(15410, 241, '21', '25', '3:2', '21', '25', 17),
(15411, 241, '21', '26', '4:5', '26', '21', 17),
(15412, 241, '21', '27', '1:3', '27', '21', 17),
(15413, 241, '21', '28', '3:4', '28', '21', 17),
(15414, 241, '21', '29', '1:1', 'drow', 'drow', 17),
(15415, 241, '21', '30', '4:4', 'drow', 'drow', 17),
(15416, 241, '21', '31', '5:0', '21', '31', 17),
(15417, 242, '22', '31', '4:1', '22', '31', 17),
(15418, 242, '16', '31', '0:4', '31', '16', 17),
(15419, 242, '22', '17', '0:4', '17', '22', 17),
(15420, 242, '22', '18', '2:3', '18', '22', 17),
(15421, 242, '22', '19', '4:0', '22', '19', 17),
(15422, 242, '22', '20', '2:4', '20', '22', 17),
(15423, 242, '22', '21', '2:4', '21', '22', 17),
(15424, 242, '22', '23', '5:1', '22', '23', 17),
(15425, 242, '22', '24', '5:2', '22', '24', 17),
(15426, 242, '22', '25', '4:4', 'drow', 'drow', 17),
(15427, 242, '22', '26', '0:0', 'drow', 'drow', 17),
(15428, 242, '22', '27', '2:5', '27', '22', 17),
(15429, 242, '22', '28', '2:1', '22', '28', 17),
(15430, 242, '22', '29', '4:3', '22', '29', 17),
(15431, 242, '22', '30', '0:5', '30', '22', 17),
(15432, 242, '22', '31', '3:3', 'drow', 'drow', 17),
(15433, 243, '23', '31', '0:5', '31', '23', 17),
(15434, 243, '16', '31', '2:3', '31', '16', 17),
(15435, 243, '23', '17', '4:3', '23', '17', 17),
(15436, 243, '23', '18', '2:1', '23', '18', 17),
(15437, 243, '23', '19', '4:1', '23', '19', 17),
(15438, 243, '23', '20', '3:2', '23', '20', 17),
(15439, 243, '23', '21', '2:2', 'drow', 'drow', 17),
(15440, 243, '23', '22', '0:0', 'drow', 'drow', 17),
(15441, 243, '23', '24', '3:5', '24', '23', 17),
(15442, 243, '23', '25', '1:4', '25', '23', 17),
(15443, 243, '23', '26', '0:1', '26', '23', 17),
(15444, 243, '23', '27', '0:1', '27', '23', 17),
(15445, 243, '23', '28', '2:2', 'drow', 'drow', 17),
(15446, 243, '23', '29', '0:2', '29', '23', 17),
(15447, 243, '23', '30', '3:0', '23', '30', 17),
(15448, 243, '23', '31', '2:0', '23', '31', 17),
(15449, 244, '24', '31', '2:4', '31', '24', 17),
(15450, 244, '16', '31', '0:5', '31', '16', 17),
(15451, 244, '24', '17', '2:4', '17', '24', 17),
(15452, 244, '24', '18', '4:4', 'drow', 'drow', 17),
(15453, 244, '24', '19', '0:1', '19', '24', 17),
(15454, 244, '24', '20', '3:2', '24', '20', 17),
(15455, 244, '24', '21', '0:2', '21', '24', 17),
(15456, 244, '24', '22', '5:3', '24', '22', 17),
(15457, 244, '24', '23', '0:5', '23', '24', 17),
(15458, 244, '24', '25', '5:5', 'drow', 'drow', 17),
(15459, 244, '24', '26', '0:3', '26', '24', 17),
(15460, 244, '24', '27', '5:1', '24', '27', 17),
(15461, 244, '24', '28', '2:0', '24', '28', 17),
(15462, 244, '24', '29', '0:2', '29', '24', 17),
(15463, 244, '24', '30', '1:0', '24', '30', 17),
(15464, 244, '24', '31', '4:5', '31', '24', 17),
(15465, 245, '25', '31', '3:4', '31', '25', 17),
(15466, 245, '16', '31', '1:3', '31', '16', 17),
(15467, 245, '25', '17', '0:4', '17', '25', 17),
(15468, 245, '25', '18', '5:1', '25', '18', 17),
(15469, 245, '25', '19', '2:3', '19', '25', 17),
(15470, 245, '25', '20', '1:4', '20', '25', 17),
(15471, 245, '25', '21', '5:0', '25', '21', 17),
(15472, 245, '25', '22', '5:4', '25', '22', 17),
(15473, 245, '25', '23', '5:1', '25', '23', 17),
(15474, 245, '25', '24', '4:1', '25', '24', 17),
(15475, 245, '25', '26', '3:2', '25', '26', 17),
(15476, 245, '25', '27', '1:5', '27', '25', 17),
(15477, 245, '25', '28', '1:4', '28', '25', 17),
(15478, 245, '25', '29', '2:1', '25', '29', 17),
(15479, 245, '25', '30', '0:4', '30', '25', 17),
(15480, 245, '25', '31', '5:1', '25', '31', 17),
(15481, 246, '26', '31', '5:0', '26', '31', 17),
(15482, 246, '16', '31', '3:1', '16', '31', 17),
(15483, 246, '26', '17', '3:4', '17', '26', 17),
(15484, 246, '26', '18', '2:0', '26', '18', 17),
(15485, 246, '26', '19', '0:1', '19', '26', 17),
(15486, 246, '26', '20', '3:5', '20', '26', 17),
(15487, 246, '26', '21', '0:4', '21', '26', 17),
(15488, 246, '26', '22', '4:2', '26', '22', 17),
(15489, 246, '26', '23', '2:4', '23', '26', 17),
(15490, 246, '26', '24', '2:1', '26', '24', 17),
(15491, 246, '26', '25', '4:0', '26', '25', 17),
(15492, 246, '26', '27', '4:3', '26', '27', 17),
(15493, 246, '26', '28', '0:3', '28', '26', 17),
(15494, 246, '26', '29', '1:4', '29', '26', 17),
(15495, 246, '26', '30', '5:0', '26', '30', 17),
(15496, 246, '26', '31', '3:4', '31', '26', 17),
(15497, 247, '27', '31', '3:2', '27', '31', 17),
(15498, 247, '16', '31', '0:0', 'drow', 'drow', 17),
(15499, 247, '27', '17', '4:1', '27', '17', 17),
(15500, 247, '27', '18', '2:2', 'drow', 'drow', 17),
(15501, 247, '27', '19', '2:5', '19', '27', 17),
(15502, 247, '27', '20', '3:5', '20', '27', 17),
(15503, 247, '27', '21', '1:3', '21', '27', 17),
(15504, 247, '27', '22', '1:1', 'drow', 'drow', 17),
(15505, 247, '27', '23', '5:0', '27', '23', 17),
(15506, 247, '27', '24', '1:0', '27', '24', 17),
(15507, 247, '27', '25', '2:5', '25', '27', 17),
(15508, 247, '27', '26', '2:2', 'drow', 'drow', 17),
(15509, 247, '27', '28', '2:0', '27', '28', 17),
(15510, 247, '27', '29', '2:5', '29', '27', 17),
(15511, 247, '27', '30', '3:1', '27', '30', 17),
(15512, 247, '27', '31', '5:1', '27', '31', 17),
(15513, 248, '28', '31', '5:0', '28', '31', 17),
(15514, 248, '16', '31', '4:1', '16', '31', 17),
(15515, 248, '28', '17', '4:1', '28', '17', 17),
(15516, 248, '28', '18', '3:3', 'drow', 'drow', 17),
(15517, 248, '28', '19', '4:2', '28', '19', 17),
(15518, 248, '28', '20', '5:1', '28', '20', 17),
(15519, 248, '28', '21', '3:5', '21', '28', 17),
(15520, 248, '28', '22', '2:5', '22', '28', 17),
(15521, 248, '28', '23', '5:1', '28', '23', 17),
(15522, 248, '28', '24', '4:1', '28', '24', 17),
(15523, 248, '28', '25', '4:0', '28', '25', 17),
(15524, 248, '28', '26', '5:0', '28', '26', 17),
(15525, 248, '28', '27', '3:2', '28', '27', 17),
(15526, 248, '28', '29', '3:1', '28', '29', 17),
(15527, 248, '28', '30', '0:4', '30', '28', 17),
(15528, 248, '28', '31', '2:1', '28', '31', 17),
(15529, 249, '29', '31', '3:5', '31', '29', 17),
(15530, 249, '16', '31', '2:5', '31', '16', 17),
(15531, 249, '29', '17', '1:0', '29', '17', 17),
(15532, 249, '29', '18', '5:5', 'drow', 'drow', 17),
(15533, 249, '29', '19', '4:2', '29', '19', 17),
(15534, 249, '29', '20', '3:0', '29', '20', 17),
(15535, 249, '29', '21', '4:0', '29', '21', 17),
(15536, 249, '29', '22', '0:2', '22', '29', 17),
(15537, 249, '29', '23', '5:3', '29', '23', 17),
(15538, 249, '29', '24', '1:3', '24', '29', 17),
(15539, 249, '29', '25', '0:5', '25', '29', 17),
(15540, 249, '29', '26', '3:2', '29', '26', 17),
(15541, 249, '29', '27', '5:4', '29', '27', 17),
(15542, 249, '29', '28', '0:4', '28', '29', 17),
(15543, 249, '29', '30', '1:4', '30', '29', 17),
(15544, 249, '29', '31', '2:0', '29', '31', 17),
(15545, 250, '30', '31', '1:0', '30', '31', 17),
(15546, 250, '16', '31', '5:4', '16', '31', 17),
(15547, 250, '30', '17', '2:1', '30', '17', 17),
(15548, 250, '30', '18', '2:3', '18', '30', 17),
(15549, 250, '30', '19', '3:0', '30', '19', 17),
(15550, 250, '30', '20', '3:5', '20', '30', 17),
(15551, 250, '30', '21', '5:1', '30', '21', 17),
(15552, 250, '30', '22', '1:2', '22', '30', 17),
(15553, 250, '30', '23', '0:2', '23', '30', 17),
(15554, 250, '30', '24', '0:5', '24', '30', 17),
(15555, 250, '30', '25', '5:3', '30', '25', 17),
(15556, 250, '30', '26', '5:0', '30', '26', 17),
(15557, 250, '30', '27', '0:2', '27', '30', 17),
(15558, 250, '30', '28', '2:5', '28', '30', 17),
(15559, 250, '30', '29', '1:3', '29', '30', 17),
(15560, 250, '30', '31', '3:5', '31', '30', 17),
(15561, 251, '31', '31', '4:3', '31', '31', 17),
(15562, 251, '16', '31', '1:4', '31', '16', 17),
(15563, 251, '31', '17', '4:5', '17', '31', 17),
(15564, 251, '31', '18', '5:5', 'drow', 'drow', 17),
(15565, 251, '31', '19', '5:3', '31', '19', 17),
(15566, 251, '31', '20', '4:4', 'drow', 'drow', 17),
(15567, 251, '31', '21', '4:4', 'drow', 'drow', 17),
(15568, 251, '31', '22', '4:4', 'drow', 'drow', 17),
(15569, 251, '31', '23', '0:1', '23', '31', 17),
(15570, 251, '31', '24', '4:0', '31', '24', 17),
(15571, 251, '31', '25', '4:3', '31', '25', 17),
(15572, 251, '31', '26', '0:0', 'drow', 'drow', 17),
(15573, 251, '31', '27', '1:5', '27', '31', 17),
(15574, 251, '31', '28', '5:4', '31', '28', 17),
(15575, 251, '31', '29', '2:3', '29', '31', 17),
(15576, 251, '31', '30', '4:5', '30', '31', 17);

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
(236, 16, 0, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(237, 17, 16, 0, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(238, 18, 16, 17, 0, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(239, 19, 16, 17, 18, 0, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(240, 20, 16, 17, 18, 19, 0, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(241, 21, 16, 17, 18, 19, 20, 0, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(242, 22, 16, 17, 18, 19, 20, 21, 0, 23, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(243, 23, 16, 17, 18, 19, 20, 21, 22, 0, 24, 25, 26, 27, 28, 29, 30, 31, 17),
(244, 24, 16, 17, 18, 19, 20, 21, 22, 23, 0, 25, 26, 27, 28, 29, 30, 31, 17),
(245, 25, 16, 17, 18, 19, 20, 21, 22, 23, 24, 0, 26, 27, 28, 29, 30, 31, 17),
(246, 26, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 27, 28, 29, 30, 31, 17),
(247, 27, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 0, 28, 29, 30, 31, 17),
(248, 28, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 0, 29, 30, 31, 17),
(249, 29, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 0, 30, 31, 17),
(250, 30, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 0, 31, 17),
(251, 31, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 0, 17);

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
  `round_id` int(11) NOT NULL,
  `team` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`id`, `name`, `status`, `round_id`, `team`) VALUES
(17, 'ffff', 'end', 1, 1);

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
  `access` tinyint(4) NOT NULL,
  `is_play` tinyint(4) NOT NULL DEFAULT '0',
  `score` int(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `s_name`, `email`, `pass`, `access`, `is_play`, `score`) VALUES
(16, 'bogdan', 's_name', 'bog@ram.ru', '96e79218965eb72c92a549dd5a330112', 1, 0, 0),
(17, 'name', 't_1name', 'admin@ram.ru', '96e79218965eb72c92a549dd5a330112', 2, 0, 0),
(18, 'name', 'j_name', 'bog2222@ram.ru', 'b0baee9d279d34fa1dfd71aadb908c3f', 1, 0, 0),
(19, 'nadfggdfgme', 'fgdgdgs_name', 'bo34345g@ram.ru', '4823ae846416d1d590b3ae9628e94d44', 1, 0, 0),
(20, '3423434name', '33s333_name', 'b23432434og@ram.ru', '379c49d9af30f6f730cd5dbfd12c7010', 1, 0, 0),
(21, 'fghgfhfgh', 'hhhs_name', '345345435bog@ram.ru', '7c2410c8be77b896e8a5b26d1a994a23', 1, 0, 0),
(22, 'vcbcvbname', 'cvbvcbs_name', '234234bog@ram.ru', '36df0354bbd3511484eb8d285762d1aa', 1, 0, 0),
(23, 'ghname', 'ghs_name', 'g3hbog@ram.ru', 'cb19cb88a75f0fa37023b84d1058acd6', 1, 0, 0),
(24, 'hjhjname', 'hjhs_name', 'jhgjhjbog@ram.ru', '1cac7b4039bda42941c21a035666151f', 1, 0, 0),
(25, 'vbnvbname', 'svbnvbn_name', 'bnvbnbvnbog@ram.ru', '35527829deb5989ae1bbdb3772ac070f', 1, 0, 0),
(26, 'nfdgdffdgfdgame', 'fgfdgfdgs_name', 'j23cxcvbofgg@ram.ru', '22571b74ea04a8092cf82e4dc7c938b5', 1, 0, 0),
(27, '234234name', '234234s_name', 'b3234og@ram.ru', 'd4f46ffaa69d1a4fb238a073a2e2ef91', 1, 0, 0),
(28, 'dfgfdgdfgname', 'fdgfdgs_name', 'fdgdfgfdgbog@ram.ru', 'eefe1596ac3dc6046cbe9393418ecc2b', 1, 0, 0),
(29, '324234name', '234234s_name', '324234234bog@ram.ru', '2a270a0eebd5ba1530fa38b5988289c0', 1, 0, 0),
(30, 'sdfdsfname', 'sdfdsfs_name', 'sdfdfbog@ram.ru', '30d11029b49f3fd837db93ebcfa2334b', 1, 0, 0),
(31, 'ytutuname', 'uys_name', 'tryrtytrbog@ram.ru', '04e0dd9c76902b1bfc5c7b3bb4b1db92', 1, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `order play`
--
ALTER TABLE `order play`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15577;
--
-- AUTO_INCREMENT for table `play`
--
ALTER TABLE `play`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
