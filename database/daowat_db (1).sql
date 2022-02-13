-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 12:03 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daowat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `user_name`, `user_pass`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `daowat`
--

CREATE TABLE `daowat` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date_added` date NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(32) NOT NULL,
  `photos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daowat_comments`
--

CREATE TABLE `daowat_comments` (
  `id` int(11) NOT NULL,
  `daowat_body` text NOT NULL,
  `date_added` date NOT NULL,
  `time` datetime NOT NULL,
  `daowat_by` varchar(32) NOT NULL,
  `daowat_to` varchar(32) NOT NULL,
  `opened` varchar(3) NOT NULL DEFAULT 'no',
  `daowat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dwt_likes`
--

CREATE TABLE `dwt_likes` (
  `id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `dwt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emoticons`
--

CREATE TABLE `emoticons` (
  `id` int(11) NOT NULL,
  `chars` text NOT NULL,
  `photos` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `user_from` varchar(32) NOT NULL,
  `user_to` varchar(32) NOT NULL,
  `time` datetime NOT NULL,
  `opened` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `user_from`, `user_to`, `time`, `opened`) VALUES
(142, 'immah', 'felixkandie', '2021-07-01 08:08:00', 'yes'),
(143, 'eldoretpoly', 'felixkandie', '2021-07-04 00:59:25', 'yes'),
(144, 'health', 'felixkandie', '2021-07-04 01:45:03', 'yes'),
(145, 'williamruto', 'felixkandie', '2021-07-04 02:45:23', 'yes'),
(146, 'williamruto', 'health', '2021-07-04 02:55:49', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `daowat_body` text NOT NULL,
  `date_added` date NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL,
  `share_post` int(11) NOT NULL,
  `daowat_post` int(11) NOT NULL,
  `daowat_give` tinyint(1) NOT NULL DEFAULT '0',
  `discription` text NOT NULL,
  `photos` text NOT NULL,
  `newsfeedshow` tinyint(1) NOT NULL DEFAULT '1',
  `report` tinyint(1) NOT NULL DEFAULT '0',
  `note` tinyint(1) NOT NULL DEFAULT '0',
  `note_privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `daowat_body`, `date_added`, `post_time`, `added_by`, `user_posted_to`, `share_post`, `daowat_post`, `daowat_give`, `discription`, `photos`, `newsfeedshow`, `report`, `note`, `note_privacy`) VALUES
(229, '', '', '2021-07-01', '2021-07-01 13:11:16', 'felixkandie', 'felixkandie', 0, 0, 0, 'changed his profile picture.', 'felixkandie/1625145076.jpg', 1, 0, 0, ''),
(232, '', '', '2021-07-01', '2021-07-01 13:45:45', 'felixkandie', 'felixkandie', 0, 0, 0, 'updated his cover photo.', 'felixkandie/1625147145.png', 1, 0, 0, ''),
(233, '', '', '2021-07-01', '2021-07-01 14:22:10', 'immah', 'immah', 0, 0, 0, 'changed her profile picture.', 'immah/1625149330.jpg', 1, 0, 0, ''),
(234, 'Never Let Anyone Steal Your Joy', '', '2021-07-01', '2021-07-01 14:24:07', 'immah', 'immah', 0, 0, 0, '', 'immah/1625149447.jpg', 1, 0, 0, ''),
(235, '', '', '2021-07-04', '2021-07-04 07:20:15', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, 'changed his profile picture.', 'eldoretpoly/1625383215.jpg', 1, 0, 0, ''),
(238, '', '', '2021-07-04', '2021-07-04 07:46:56', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, 'updated his cover photo.', 'eldoretpoly/1625384815.jpg', 1, 0, 0, ''),
(239, 'The Annual International Conference on Innovation for Advancement of Humanity (CIRIS 2021) will be held from today 2nd to 4th june, 2021 at the Eldoret National Polytechnic.', '', '2021-07-04', '2021-07-04 07:49:09', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', '', 1, 0, 0, ''),
(240, 'new calender dates......tenp.ac.ke', '', '2021-07-04', '2021-07-04 07:49:45', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', '', 1, 0, 0, ''),
(241, 'We have launched the following courses to be administered online starting on 15th february 2021\r\n.....link elearning.tenp.ac.ke', '', '2021-07-04', '2021-07-04 07:51:47', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', '', 1, 0, 0, ''),
(242, 'January online courses loading...', '', '2021-07-04', '2021-07-04 07:52:19', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', '', 1, 0, 0, ''),
(243, 'The administration is working with the ict strategic committee toto launch an eLearning platform before end of the year. The platform will enable students to learn online at the comfort of their homes.', '', '2021-07-04', '2021-07-04 07:55:01', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', '', 1, 0, 0, ''),
(244, 'Eldoret polytechnic ICT stuff members', '', '2021-07-04', '2021-07-04 07:58:36', 'eldoretpoly', 'eldoretpoly', 0, 0, 0, '', 'eldoretpoly/1625385516.png', 1, 0, 0, ''),
(245, '', '', '2021-07-04', '2021-07-04 08:43:31', 'health', 'health', 0, 0, 0, 'changed his profile picture.', 'health/1625388211.jpg', 1, 0, 0, ''),
(246, '', '', '2021-07-04', '2021-07-04 08:44:38', 'health', 'health', 0, 0, 0, 'updated his cover photo.', 'health/1625388278.jpg', 1, 0, 0, ''),
(247, 'We advise everyone everywhere to follow the @NOH_Kenya directives to combat the spread of COVID19.', '', '2021-07-04', '2021-07-04 08:51:14', 'health', 'health', 0, 0, 0, '', 'health/1625388674.jpg', 1, 0, 0, ''),
(248, '', '', '2021-07-04', '2021-07-04 08:56:10', 'health', 'health', 0, 0, 0, '', 'health/1625388970.jpg', 1, 0, 0, ''),
(249, '', '', '2021-07-04', '2021-07-04 08:57:12', 'health', 'health', 0, 0, 0, '', 'health/1625389032.jpg', 1, 0, 0, ''),
(250, 'The uptake of the second dose by priority Groups ias follows: Aged 58years and above 140,779, Other 125,572, Health workers 90,214, Teachers 61,688 while security Officers are at 34,465.', '', '2021-07-04', '2021-07-04 09:00:29', 'health', 'health', 0, 0, 0, '', '', 1, 0, 0, ''),
(251, '', 'VACCINATION UPDATE: 1,468,908 vaccines had so far been administered across the country as of today. Of these, total first doses are 1,016,190 while second doses are 452,718', '2021-07-04', '2021-07-04 09:03:15', 'health', 'health', 0, 0, 1, '', '', 1, 0, 0, ''),
(252, '152 patients are separately on supplemental oxygen with 137 of them in general wards and 15 in High Dependency Units (HDU)', '', '2021-07-04', '2021-07-04 09:05:12', 'health', 'health', 0, 0, 0, '', '', 1, 0, 0, ''),
(253, '', '', '2021-07-04', '2021-07-04 09:44:03', 'williamruto', 'williamruto', 0, 0, 0, 'changed his profile picture.', 'williamruto/1625391843.jpeg', 1, 0, 0, ''),
(254, '', '', '2021-07-04', '2021-07-04 09:44:46', 'williamruto', 'williamruto', 0, 0, 0, 'updated his cover photo.', 'williamruto/1625391886.jpg', 1, 0, 0, ''),
(255, 'Sunday service at presbyterian Church of East Africa )PCEA) Umoja, Embakasi West, Nairobi County.', '', '2021-07-04', '2021-07-04 09:48:45', 'williamruto', 'williamruto', 0, 0, 0, '', '', 1, 0, 0, ''),
(256, 'Let us compete on ideas, plans, agenda and policies. Ours is the bottom-up approach-empowering the common man.', '', '2021-07-04', '2021-07-04 09:50:31', 'williamruto', 'williamruto', 0, 0, 0, '', '', 1, 0, 0, ''),
(257, 'As we seek to find the most suitable diagnosis and solution to the issues afflicting kenya, the young people should spectate but contribute to the discourse.', '', '2021-07-04', '2021-07-04 09:53:30', 'williamruto', 'williamruto', 0, 0, 0, '', '', 1, 0, 0, ''),
(258, 'presided over the empowerment of the Akirimet reformed warriors in sigor constituency, west pokot County', '', '2021-07-04', '2021-07-04 09:55:28', 'williamruto', 'williamruto', 0, 0, 0, '', '', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `date_added` date NOT NULL,
  `time` datetime NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `posted_to` varchar(255) NOT NULL,
  `opened` varchar(3) NOT NULL DEFAULT 'no',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_body`, `date_added`, `time`, `posted_by`, `posted_to`, `opened`, `post_id`) VALUES
(1, 'the government is really working on it.', '2021-07-04', '2021-07-04 03:01:41', 'felixkandie', 'health', 'no', 251);

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_name`, `post_id`) VALUES
(258, 'felixkandie', 229),
(259, 'felixkandie', 234),
(260, 'felixkandie', 251),
(261, 'felixkandie', 250),
(262, 'felixkandie', 252),
(263, 'felixkandie', 254);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE `pvt_messages` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_body` text NOT NULL,
  `date` date NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `opened` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_body`, `date`, `msg_time`, `opened`, `user_id`) VALUES
(291, 'immah', 'felixkandie', 'hi', '2021-07-01', '0000-00-00 00:00:00', 'yes', 0),
(292, 'felixkandie', 'immah', 'hi too', '2021-07-01', '0000-00-00 00:00:00', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `hometown` text NOT NULL,
  `sign_up_date` date NOT NULL,
  `activated` enum('0','1') NOT NULL,
  `confirmCode` int(11) NOT NULL DEFAULT '0',
  `blocked_user` enum('0','1') NOT NULL DEFAULT '0',
  `bio` text NOT NULL,
  `queote` text NOT NULL,
  `profile_pic` text NOT NULL,
  `cover_pic` text NOT NULL,
  `friend_array` text NOT NULL,
  `closed` varchar(3) NOT NULL DEFAULT 'no',
  `relationship` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `pub_email` varchar(255) NOT NULL,
  `company` text NOT NULL,
  `position` text NOT NULL,
  `school` text NOT NULL,
  `concentration` text NOT NULL,
  `nick_name` varchar(32) NOT NULL,
  `verify_id` varchar(3) NOT NULL DEFAULT 'no',
  `pass_question` text NOT NULL,
  `pass_ans` text NOT NULL,
  `chatOnlineTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `username`, `email`, `password`, `gender`, `birthday`, `country`, `city`, `hometown`, `sign_up_date`, `activated`, `confirmCode`, `blocked_user`, `bio`, `queote`, `profile_pic`, `cover_pic`, `friend_array`, `closed`, `relationship`, `mobile`, `pub_email`, `company`, `position`, `school`, `concentration`, `nick_name`, `verify_id`, `pass_question`, `pass_ans`, `chatOnlineTime`) VALUES
(68, 'Felix Kimutai Kandie', 'felixkandie', 'felixkandie7507@gmail.com', '55399f3202792e814341656ec3abe27c', '1', '0000-00-00', 'Kenya', 'Eldoret', 'Iten', '2021-07-01', '1', 0, '0', 'Seek respect. not Attention, it lasts longer', '', 'felixkandie/1625145076.jpg', 'felixkandie/1625147145.png', '', 'no', '', '0703882818', '', '', '', 'Eldoret National Polytechnic', 'Computer Studies', '', 'yes', '', '', '2021-07-04 10:01:46'),
(69, 'Immah Hammie(Jebet)', 'immah', 'immah@gmail.com', '94a4a9b8eee0e7822b2f5ed541e2e223', '2', '0000-00-00', '', 'Eldoret', 'Iten', '2021-07-01', '1', 0, '0', 'Shy girl\r\nAlways cool and humble\r\nGod fearing babe', '', 'immah/1625149330.jpg', '', '', 'no', '', '', '', '', '', 'Kabarak University', '', '', 'no', '', '', '2021-07-01 15:08:36'),
(70, 'Eldoret National Polytechnic', 'eldoretpoly', 'eldoretpoly@gmail.com', '0138e36249a739b506b40b224dd5d776', '1', '0000-00-00', 'Kenya', 'Eldoret', '', '2021-07-04', '1', 0, '0', 'To be a Centre of Excellence in Technological Advancement.', 'To produce Human Capital and Advance Technology through Innovation Training for a Dynamic Economy.', 'eldoretpoly/1625383215.jpg', 'eldoretpoly/1625384815.jpg', '', 'no', '', '0714871685', '', '', '', '', '', '', 'yes', '', '', '2021-07-04 08:37:31'),
(71, 'Ministry Of Health', 'health', 'ministryofhealth@gmail.com', '555bf8344ca0caf09b42f55e185526d8', '1', '0000-00-00', '', '', '', '2021-07-04', '1', 0, '0', 'Working towards building a healthy, productive and globally competitive nation.', '', 'health/1625388211.jpg', 'health/1625388278.jpg', '', 'no', '', '', '', '', '', '', '', '', 'yes', '', '', '2021-07-04 09:06:53'),
(72, 'William Samoei Ruto', 'williamruto', 'williamruto@gmail.com', '89decd01ea5e0d7891ee1e2e8b6e35b1', '1', '0000-00-00', '', '', '', '2021-07-04', '1', 0, '0', '', '', 'williamruto/1625391843.jpeg', 'williamruto/1625391886.jpg', '', 'no', '', '', '', 'Office Of The Presiodent', 'Deputy President', '', '', '', 'yes', '', '', '2021-07-04 09:56:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daowat`
--
ALTER TABLE `daowat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daowat_comments`
--
ALTER TABLE `daowat_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dwt_likes`
--
ALTER TABLE `dwt_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emoticons`
--
ALTER TABLE `emoticons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `daowat`
--
ALTER TABLE `daowat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daowat_comments`
--
ALTER TABLE `daowat_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dwt_likes`
--
ALTER TABLE `dwt_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emoticons`
--
ALTER TABLE `emoticons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
