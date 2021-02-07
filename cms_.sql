-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 28 Νοε 2020 στις 10:15:32
-- Έκδοση διακομιστή: 10.4.10-MariaDB
-- Έκδοση PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `cms_`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(4, 'JAVA'),
(7, 'TEST2'),
(10, 'HTML5');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(3) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 10, 'Edwin Diaz', 'edwindiaz@edwindiaz.com', 'This just an example content, thank you', 'approve', '2020-11-19'),
(2, 10, 'Cindy', 'cindy@cindy.com', 'Hey Edwin', 'unapprove', '2020-11-20'),
(4, 10, 'Juan', 'juan234@gmail.com', 'ddd', 'unapproved', '2020-11-20'),
(6, 10, 'maria p', 'maripapa14@gmail.com', 'ddd', 'unapproved', '2020-11-27'),
(11, 13, 'maria', 'maripapa14@gmail.com', 'www', 'unapproved', '2020-11-27');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(3) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) DEFAULT NULL,
  `post_user` varchar(255) DEFAULT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) DEFAULT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(13, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-26', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', '0', 'published', 9),
(14, 3, 'Example post 3', 'Maria P', NULL, '2020-11-26', 'image_3.jpg', '<p>rrr</p>', 'javascript', '0', 'published', 0),
(15, 3, 'Example post 4', 'Edwin Diaz', NULL, '2020-11-26', 'image_3.jpg', '<p>ttt</p>', 'PHP,best', '0', 'published', 0),
(16, 4, 'Example post 5', 'Maria P', NULL, '2020-11-26', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', '0', 'published', 0),
(17, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-26', 'image_1.jpg', '<p>aaa</p>', 'javascript', '0', 'published', 1),
(18, 10, 'Example post 7', 'Belindaa', NULL, '2020-11-26', 'image_1.jpg', '<p>sss</p>', 'PHP,best', '0', 'published', 0),
(19, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', 0),
(20, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', 0),
(21, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', 0),
(22, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', 0),
(23, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(24, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(25, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(26, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(27, 10, 'Example post 7', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>sss</p>', 'PHP,best', NULL, 'published', NULL),
(28, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(29, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(30, 3, 'Example post 4', 'Edwin Diaz', NULL, '2020-11-27', 'image_3.jpg', '<p>ttt</p>', 'PHP,best', NULL, 'published', NULL),
(31, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(32, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(33, 2, 'Best PHP Course EVER', 'Edwin Diaz', NULL, '2020-11-27', 'image_2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor augue eu luctus bibendum. Maecenas mi lorem, vehicula a lectus eget, mattis accumsan quam. Donec auctor justo tellus, eget tincidunt quam dapibus ac. Proin sed magna vitae neque feugiat consectetur. Quisque id metus at neque dictum luctus. Pellentesque placerat mauris odio, at semper tellus pellentesque et. Ut at velit euismod, tincidunt magna ultrices, sollicitudin nulla. Vestibulum nec bibendum nibh. Sed imperdiet, mauris id dictum egestas, orci massa consequat nulla, sit amet lobortis lacus nibh vel tortor. Aliquam faucibus sollicitudin elit, sit amet ultricies lectus auctor id. Sed in dui ante. Maecenas volutpat sit amet justo nec luctus. Praesent mollis nisi sit amet leo aliquet dapibus. Proin egestas tempus augue, et aliquet dui gravida non. Quisque fermentum nisl eget velit tempus sagittis.</p>', 'PHP,best', NULL, 'published', NULL),
(34, 2, 'Best PHP Course EVER', 'Edwin Diaz', NULL, '2020-11-27', 'image_2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor augue eu luctus bibendum. Maecenas mi lorem, vehicula a lectus eget, mattis accumsan quam. Donec auctor justo tellus, eget tincidunt quam dapibus ac. Proin sed magna vitae neque feugiat consectetur. Quisque id metus at neque dictum luctus. Pellentesque placerat mauris odio, at semper tellus pellentesque et. Ut at velit euismod, tincidunt magna ultrices, sollicitudin nulla. Vestibulum nec bibendum nibh. Sed imperdiet, mauris id dictum egestas, orci massa consequat nulla, sit amet lobortis lacus nibh vel tortor. Aliquam faucibus sollicitudin elit, sit amet ultricies lectus auctor id. Sed in dui ante. Maecenas volutpat sit amet justo nec luctus. Praesent mollis nisi sit amet leo aliquet dapibus. Proin egestas tempus augue, et aliquet dui gravida non. Quisque fermentum nisl eget velit tempus sagittis.</p>', 'PHP,best', NULL, 'published', NULL),
(35, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(36, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(37, 3, 'Example post 4', 'Edwin Diaz', NULL, '2020-11-27', 'image_3.jpg', '<p>ttt</p>', 'PHP,best', NULL, 'published', NULL),
(38, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(39, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(40, 10, 'Example post 7', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>sss</p>', 'PHP,best', NULL, 'published', NULL),
(41, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(42, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(43, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(44, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(45, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(46, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(47, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(48, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(49, 10, 'Example post 7', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>sss</p>', 'PHP,best', NULL, 'published', NULL),
(50, 4, 'Example post 6', 'Belindaa', NULL, '2020-11-27', 'image_1.jpg', '<p>aaa</p>', 'javascript', NULL, 'published', NULL),
(51, 4, 'Example post 5', 'Maria P', NULL, '2020-11-27', 'image_5.jpg', '<p>yyy</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(52, 3, 'Example post 4', 'Edwin Diaz', NULL, '2020-11-27', 'image_3.jpg', '<p>ttt</p>', 'PHP,best', NULL, 'published', NULL),
(53, 3, 'Example post 3', 'Maria P', NULL, '2020-11-27', 'image_3.jpg', '<p>rrr</p>', 'javascript', NULL, 'published', NULL),
(54, 2, 'Example post 2', 'Belindaa', NULL, '2020-11-27', 'image_2.jpg', '<p>eee</p>', 'javascript,course,class,great', NULL, 'published', NULL),
(55, 2, 'Best PHP Course EVER', 'Edwin Diaz', NULL, '2020-11-27', 'image_2.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor augue eu luctus bibendum. Maecenas mi lorem, vehicula a lectus eget, mattis accumsan quam. Donec auctor justo tellus, eget tincidunt quam dapibus ac. Proin sed magna vitae neque feugiat consectetur. Quisque id metus at neque dictum luctus. Pellentesque placerat mauris odio, at semper tellus pellentesque et. Ut at velit euismod, tincidunt magna ultrices, sollicitudin nulla. Vestibulum nec bibendum nibh. Sed imperdiet, mauris id dictum egestas, orci massa consequat nulla, sit amet lobortis lacus nibh vel tortor. Aliquam faucibus sollicitudin elit, sit amet ultricies lectus auctor id. Sed in dui ante. Maecenas volutpat sit amet justo nec luctus. Praesent mollis nisi sit amet leo aliquet dapibus. Proin egestas tempus augue, et aliquet dui gravida non. Quisque fermentum nisl eget velit tempus sagittis.</p>', 'PHP,best', NULL, 'published', NULL),
(61, 1, 'Example post 8', NULL, 'marpap', '2020-11-27', 'image_1.jpg', '<p>ppp</p>', 'PHP,best', '0', 'published', NULL);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text DEFAULT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) DEFAULT '$2y$10iusesomecrazystrings22',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'rico', '$2y$12$j3bbbizLkqy7wsDNH4FZG.jUwG3WWvz0BkhIzc7mfkCo7kpsSe/gi', 'Ricos', 'Suave', 'ricosuave@gmail.com', '', 'admin', ''),
(3, 'asdasd', 'ffff', 'Ro', 'Bo', 'asdasd@gmail.com', NULL, 'subscriber', NULL),
(4, 'marpap', 'dddd', 'maria', 'pap', 'maripapa14@gmail.com', NULL, 'subscriber', '$2y$10iusesomestring17'),
(5, 'maripapa14', 'www', 'maria', 'papachr', 'maripapa14@gmail.com', NULL, 'subscriber', '$2y$10iusesomestring17'),
(6, 'demo4000', 'www', NULL, NULL, 'demo4000@gmail.com', NULL, 'subscriber', '$2y$10iusesomestring17'),
(7, 'Gambit', 'rrrr', 'Robert', 'Sandro', 'gambit@gmail.com', NULL, 'subscriber', '$2y$10iusesomestring17'),
(8, 'maria', '333', '', '', 'maria@gmail.com', NULL, 'subscriber', '$2y$10iusesomestring17'),
(9, 'maria', 'fff', '', '', 'maripapa14@gmail.com', NULL, 'subscriber', '$2y$10iusesomecrazystrings22'),
(10, 'edwin', '$1$5rVp7NA3$EbgfVdksXoFlXLochg0uu0', '', '', 'edwin@gmail.com', NULL, 'subscriber', '$2y$10iusesomecrazystrings22'),
(11, 'maripapa14', '$1$x1j49By8$XgZYjjg9E0FVSvkPNm3Ie0', NULL, NULL, 'maripapa14@gmail.com', NULL, 'subscriber', '$2y$10iusesomecrazystrings22'),
(12, 'maripapa14', '$2y$12$e8X6U4id12p3zfJ0lH3bKeP4n8wqW1CrbapKSRyoL.Re2EISPrOMa', NULL, NULL, 'maripapa14@gmail.com', NULL, 'subscriber', '$2y$10iusesomecrazystrings22'),
(13, 'peteeee', '$2y$10$XdkIpA.tnrw5/5hn0E0QIuWVo/Zpn9FLXY1lqlzFPrAq4fjEiUwUi', 'Pete', 'William', 'pete@gmail.com', NULL, 'admin', '$2y$10iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users_online`
--

DROP TABLE IF EXISTS `users_online`;
CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'bo8uqgco31eprpa7amn7ei02c0', 1606551696),
(2, 'rcnt54mkspkru33ogcu4smcfvj', 1606553789);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
