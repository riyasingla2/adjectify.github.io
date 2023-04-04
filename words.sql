-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 06:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `num` int(255) NOT NULL,
  `word` varchar(10000) CHARACTER SET latin1 NOT NULL,
  `synonym` varchar(10000) CHARACTER SET latin1 NOT NULL,
  `antonym` varchar(10000) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`num`, `word`, `synonym`, `antonym`) VALUES
(1, 'good ', 'excellent, exceptional\r\n', 'unsatisfactory, unpleasant'),
(2, 'bad ', 'atrocious, arduous\r\n', 'sophisticated, amicable'),
(3, 'amazing ', 'improbable, prodigious ', 'ordinary, plausible\r\n\r\n'),
(4, 'anger	', 'exasperated, furious', 'delight, glee\r\n\r\n'),
(5, 'beautiful	', 'gorgeous, dazzling	\r\n', 'inelegant, hideous\r\n\r\n'),
(6, 'big', 'enormous, immense	\r\n', 'inconsiderable, minute\r\n'),
(7, 'cold', 'frosty, frigid', 'mild, lukewarm'),
(8, 'bright	', 'shimmering, glistening', 'dark, dull'),
(9, 'funny	', 'amusing, hysterical\r\n\r\n', 'serious, tragic'),
(10, 'delicious', 'appetizing, luscious', 'inedible, unpalatable'),
(11, 'small', 'tiny, trivial', 'enormous, epic'),
(12, 'handsome', 'sharp, striking', 'unfashionable, ruffled'),
(13, 'gentle', 'clement, soothing', 'agitated, callous'),
(14, 'embarrassed', 'humiliating, abashed', 'unbashed'),
(15, 'proud', 'haughty, insolent', 'undignified, humble'),
(16, 'scary', 'frightened, horrifying ', 'courageous, intrepid'),
(17, 'happy', 'delightful, alluring', 'sad, unfortunate'),
(18, 'curious', 'inquisitive, interested', 'disinterested, indifferent\r\n'),
(19, 'evil', 'wicked, immoral ', 'virtuous, pleasant '),
(20, 'precious', 'treasured, esteemed ', 'worthless, awful'),
(21, 'rich', 'affluent, prosperous ', 'meagre, destitute'),
(22, 'alert ', 'admonition, vigilance ', 'absentminded, oblivious'),
(23, 'careful ', 'observant, guarded ', 'impetuous, negligent '),
(24, 'dangerous ', 'precarious, hazardous ', 'harmless, innocuous '),
(25, 'stubborn ', 'adamant, obdurate', 'acquiescent, complying'),
(26, 'sensitive ', 'susceptible, delicate ', 'invulnerable, sheltered '),
(27, 'outgoing', 'extroverted, gregarious', 'reclusive, antisocial '),
(28, 'depressed ', 'sunken, despondent ', 'blissful, jubilant '),
(29, 'dry ', 'arid, sere ', 'humid, damp'),
(30, 'troubled ', 'bothered, dithery', 'collected, nerveless '),
(31, 'important ', 'meaningful, significant ', 'trifling, inconsequential '),
(32, 'shy ', 'bashful, demure', 'outgoing, extroverted '),
(33, 'tense ', 'antsy, apprehensive ', 'nerveless, collected '),
(34, 'outstanding ', 'eminent, distinguished ', 'mediocre, average'),
(35, 'obedient ', 'complaint, tractable ', 'defiant, unruly '),
(36, 'filthy ', 'befouled, bemired', 'immaculate, spotless '),
(37, 'early ', 'ancient, primal ', 'developed, complex '),
(38, 'enthusiastic ', 'voracious, avid ', 'apathetic, indifferent '),
(39, 'wet ', 'drenched, soggy ', 'arid, waterless '),
(40, 'sweet', 'amicable, courteous ', 'ungracious, ill-natured '),
(41, 'lucky ', 'fortunate, blessed ', 'star-crossed, unfortunate '),
(42, 'energetic ', 'robust, lively ', 'lethargic, torpid '),
(43, 'fast', 'briskly, hastily ', 'sluggishly, laggardly '),
(44, 'tender ', 'frail, sensitive ', 'firm, robust'),
(45, 'confused ', 'bewildered, dazed ', 'clearheaded, attentive '),
(46, 'strong ', 'sinewy, brawny', 'feeble, weak '),
(47, 'cute ', 'glamorous, appealing ', 'grotesque, hideous '),
(48, 'frequent', 'habitual, incessant ', 'inconstant anomalous '),
(49, 'difficult ', 'strenuous, challenging ', 'effortless, facile '),
(50, 'deeply ', 'vehemently, profoundly ', 'marginally, minimally'),
(51, 'clear', 'hygienic, immaculate', 'impure, contaminated'),
(52, 'friendly ', 'affable, congenial', 'hostile, belligerent'),
(53, 'pleasant ', 'agreeable, gratifying', 'discordant, ungracious'),
(54, 'rude', 'presumptuous, churlish', 'chivalrous, polite'),
(55, 'long ', 'elongated, extended ', 'concise, fleeting '),
(56, 'short ', 'fleeting, concise ', 'lasting, unabridged '),
(57, 'horrible', 'ghastly, abhorrent', 'magnificent, reputable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `num` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
