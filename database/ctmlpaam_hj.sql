-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 62.108.32.152:3306
-- Erstellungszeit: 02. Dez 2021 um 22:26
-- Server-Version: 5.7.36
-- PHP-Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ctmlpaam_hj`
--

--
-- Daten für Tabelle `static_pages`
--

INSERT INTO `static_pages` (`id`, `title_short`, `title_long`, `body`, `created_at`, `updated_at`) VALUES
(1, 'VITA', 'VITA', '<div class=\"text-muted\">\r\n<p>Born in Seoul, South Korea</p>\r\n<p>Based in D&uuml;sseldorf, Germany</p>\r\n<h3>Education</h3>\r\n<p>2018</p>\r\n<p>Master-class student (\"Meistersch&uuml;lerin\") of Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2018-2012</p>\r\n<p>Liberal arts (\"Freie Kunst\"), Class Prof. Stefan K&uuml;rten, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>2011-2010</p>\r\n<p>Internship, The Great Photostudio, Seoul, South Korea</p>\r\n<p>2008-2005</p>\r\n<p>Art Photography, Kaywon University of Art&amp;Design, Gyeonggi, South Korea</p>\r\n<h3>Exhibitions</h3>\r\n<p>2020</p>\r\n<p>&ldquo;Le Grand 2&rdquo;, G&auml;stezimmer, Kunstmuseum Gelsenkirchen, Gelsenkirchen, Deutschland</p>\r\n<p>2019</p>\r\n<p>&ldquo;Luft&rdquo;, kabawil e.V., D&uuml;sseldorf, Deutschland</p>\r\n<p>&ldquo;Vernetzt&rdquo;, Chorraum, St. Marien Kirche Eickel, Herne, Deutschland</p>\r\n<p>\"Planet 58\", K21 Kunstsammlung Nordrhein-Westfalen, D&uuml;sseldorf, Germany</p>\r\n<p>2018</p>\r\n<p>Conclusion Presentation, Kunstakademie D&uuml;sseldorf, Germany</p>\r\n<p>Die Grosse, Museum Kunstpalast D&uuml;sseldorf, Germany</p>\r\n<p>2017</p>\r\n<p>\"Journy\", KUMA, Gyeonggi, South Korea</p>\r\n<p>2015</p>\r\n<p>\"Behind the Curtain\", Gallery Anna Klinkhammer, D&uuml;sseldorf, Germany</p>\r\n<p>2007</p>\r\n<p>\"Kaywon Photo wanderer\", Gallery Deokwon, Seoul, South Korea</p>\r\n<p>&nbsp;</p>\r\n</div>', '2018-07-24 19:35:00', '2020-03-11 09:53:45'),
(3, 'ABOUT', 'ABOUT', '<p class=\"MsoNormal\"><span class=\"text-muted\" lang=\"EN-US\" style=\"line-height: 2em;\">My work is based on my own past and I try to materialize my memories. I have always been interested in everyday objects. Rather than trying to create a new object, I want to give, with my own eyes, a third pupil that interprets and provides a new look and expression of existing objects, figures, and spaces. It is the point of my work to visualize the invisible thing by pulling out the nature that is inherent to the inanimate object. There is a third pupil for all of us. Though it is not visible.</span></p>', '2019-02-07 13:23:00', '2019-02-09 14:03:45');

--
-- Daten für Tabelle `works`
--

INSERT INTO `works` (`id`, `link_title`, `slug`, `title_short`, `title_long`, `year`, `work_type`, `materials_used`, `description`, `cover_image`, `front_page`, `work_images`, `work_video`, `created_at`, `updated_at`) VALUES
(2, '2017 / 2018', '2017-2018', '2017 / 2018', '2017 / 2018', '2018', 'images', 'polyester resin', NULL, 'works/February2019/x87LpdkGvl2hShekE5jr.jpg', 0, '[\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_01.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_02.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_03.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_04.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_05.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_06.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_07.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_08.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_09.jpg\",\"works/2017-2018/HarryJeon_2017_2018_HarryJeon_10.jpg\"]', NULL, '2019-02-07 13:11:00', '2021-11-29 18:59:06'),
(3, 'LE GRAND', 'le-grand-2018', 'LE GRAND', 'LE GRAND', '2018', 'video', 'video', NULL, 'works/February2019/l4nLmcsB7wGdc3FYe9TC.jpg', 0, NULL, 'https://player.vimeo.com/video/316267772, https://player.vimeo.com/video/316586394', '2019-02-09 13:26:00', '2019-08-25 18:40:44'),
(5, 'deflower', 'deflower', 'deflower', 'deflower', '2015', 'video', 'video', NULL, 'works/July2019/MilrG5W4cYDv7kepH5Pj.jpg', 0, NULL, 'https://player.vimeo.com/video/327604511', '2019-07-30 22:32:00', '2019-07-30 22:36:30'),
(6, 'instinctively', 'instinctively', 'instinctively', 'instinctively', '2013', 'video', 'video', NULL, NULL, 0, NULL, 'https://player.vimeo.com/video/79070417', '2019-07-30 22:45:44', '2019-07-30 22:45:44'),
(7, 'fake it', 'fake-it', 'fake it', 'fake it', '2013', 'images', 'foto', NULL, NULL, 0, '[\"works/August2019/0pC3duTzqtIJ12XgMbdV.JPG\",\"works/August2019/ED2dvXlpmVIDzLKZjaKo.jpg\",\"works/August2019/ih38iGGvq0onVbsnBagc.JPG\",\"works/August2019/SNHG9hVU6JZ6M41GEl85.jpg\"]', NULL, '2019-08-25 18:44:00', '2020-03-11 10:44:30'),
(8, 'LE GRAND 2', 'le-grand-2-2020', 'LE GRAND 2', 'LE GRAND 2', '2020', 'images', 'various, installation & video', NULL, NULL, 0, '[\"works/le-grand-2/IMG_5453 복사본_1.jpg\",\"works/le-grand-2/IMG_5401 복사본_1.jpg\",\"works/le-grand-2/IMG_5435 복사본_1.jpg\",\"works/le-grand-2/IMG_5374 복사본_1.jpg\",\"works/le-grand-2/IMG_5381 복사본_1.jpg\",\"works/le-grand-2/IMG_5444 복사본_1.jpg\"]', NULL, '2020-03-11 10:42:00', '2020-03-11 10:44:14'),
(9, 'AU MAGASIN DE NOUV', 'au-magasin-de-nouv', 'AU MAGASIN DE NOUV', 'AU MAGASIN DE NOUV', '2021', 'images', 'glas, photo on acrylic glas, photo', NULL, 'works/November2021/PpmAwfAOt8VBnpl4OdnL.jpg', 1, '[\"works/au-magasin-de-nouv/0.jpg\",\"works/au-magasin-de-nouv/1.jpg\",\"works/au-magasin-de-nouv/2.jpg\",\"works/au-magasin-de-nouv/3.jpg\",\"works/au-magasin-de-nouv/4.jpg\",\"works/au-magasin-de-nouv/5.jpg\"]', NULL, '2021-09-14 19:51:00', '2021-11-29 19:22:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
