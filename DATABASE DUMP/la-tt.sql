-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 13 2016 р., 22:28
-- Версія сервера: 10.1.8-MariaDB
-- Версія PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `la-tt`
--

-- --------------------------------------------------------

--
-- Структура таблиці `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `image`
--

INSERT INTO `image` (`id`, `user_id`, `image_name`) VALUES
(1, 5, 'c05ef5f1f97e31e8a9252d71b84a0df.jpg'),
(2, 6, '.ec7a44c8f68c01fcbe5c121789b2aac.jpg'),
(3, 9, 'pdf3f117786509f08e16d54fb33369b9.jpg'),
(4, 10, '15c413c2529eab301b6df198ee005c5.jpg'),
(5, 11, 'p04f1bdb4035fcc3360918648e681fcb.jpg'),
(6, 12, 'd0de632fa603e81e7b85caeec041c10.jpg'),
(7, 13, '9dc589be1d10caab74e640c2028c252.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
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
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `name`, `s_name`, `email`, `pass`, `access`) VALUES
(13, 'name', 's_name', 'ram@email.ru', 'e3ceb5881a0a1fdaad01296d7554868d', 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
