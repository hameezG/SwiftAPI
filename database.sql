-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2025 at 11:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` bigint(11) NOT NULL,
  `newName` varchar(255) NOT NULL,
  `thumbnail` tinyint(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(1) NOT NULL,
  `important` tinyint(1) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `type`, `size`, `newName`, `thumbnail`, `date`, `deleted`, `important`, `hash`, `id_user`) VALUES
(503, 'README.md', 'text/plain', 8585, 'moAJO.md', 0, '2025-03-03 12:03:01', 1, 0, '22b3518e7e5469ef2caa029aee999a9b', 6250),
(504, 'Screenshot (2).png', 'image/png', 257855, 'sIcXd.png', 1, '2025-03-03 12:38:23', 0, 1, 'a657d739a18b4e05e4870a9818335075', 6250),
(505, 'Screenshot (30).png', 'image/png', 465054, 'tyZUC.png', 1, '2025-03-03 12:40:40', 0, 0, '6324edf8d242516e5aad7c1655b87f32', 6250),
(506, 'Cloud_Storage_Comparison_Updated.docx', 'application/octet-stream', 37608, 'EjsvF.docx', 0, '2025-03-03 12:43:49', 0, 0, 'f93cca43e870a66a724ca2cf1d1adac0', 6250),
(507, 'Comprehensive_Cloud_Storage_Comparison.docx', 'application/octet-stream', 37584, 'vxcYi.docx', 0, '2025-03-04 14:03:18', 0, 0, '57a392817d2d2f630a77d8386bc6e586', 6251),
(508, 'test.png', 'image/png', 17126, 'AQxYS.png', 0, '2025-03-04 14:16:42', 0, 0, '787c14f45635f5e00012429a8c6fe5bc', 6251),
(509, 'test.png', 'image/png', 17126, 'ZseMw.png', 0, '2025-03-04 14:24:26', 0, 0, '787c14f45635f5e00012429a8c6fe5bc', 6251),
(510, 'test2.png', 'image/png', 17126, 'gfreG.png', 0, '2025-03-04 14:25:51', 0, 0, '787c14f45635f5e00012429a8c6fe5bc', 6251),
(511, 'test.png', 'image/png', 17126, 'UMuPy.png', 0, '2025-03-04 14:26:13', 0, 0, '787c14f45635f5e00012429a8c6fe5bc', 6253),
(512, 'Perfect.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 16306, 'abxZB.docx', 0, '2025-03-04 15:49:04', 0, 0, 'ce23ef11579378e3040acfb4a5afd54f', 6251),
(513, 'Perfect.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 16306, 'CYOMp.docx', 0, '2025-03-04 15:50:07', 0, 0, 'ce23ef11579378e3040acfb4a5afd54f', 6253),
(514, 'Perfect.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 16306, 'uADvB.docx', 0, '2025-03-04 16:03:06', 0, 0, 'ce23ef11579378e3040acfb4a5afd54f', 6253),
(515, 'PlayerProfile.sav', 'application/octet-stream', 1242498, 'eDowk.sav', 0, '2025-03-04 16:03:57', 0, 0, '795ac4150bac6779db4cbbdf576cc2b3', 6253),
(516, 'Screenshot (2).png', 'image/png', 257855, 'lXYqE.png', 1, '2025-03-04 19:16:18', 0, 0, 'a657d739a18b4e05e4870a9818335075', 6250),
(517, 'Screenshot (8).png', 'image/png', 1121341, 'kiEpJ.png', 1, '2025-03-04 19:16:26', 0, 0, '034c989335658bac2213845644f0319d', 6250),
(518, 'Screenshot (51).png', 'image/png', 155602, 'pCcUr.png', 1, '2025-03-04 19:16:31', 0, 0, '7c4145a6100f23ff66973ef0e3348b63', 6250),
(519, 'Screenshot (50).png', 'image/png', 143491, 'mDcCV.png', 1, '2025-03-04 19:16:45', 0, 0, '69960bdbf0d90fbab9e83b05f7d4a4b0', 6250),
(520, 'Screenshot (43).png', 'image/png', 199407, 'DuncB.png', 1, '2025-03-04 19:51:05', 0, 0, '0678577797a79ef95fffa684402fb481', 6250),
(521, 'Screenshot (50).png', 'image/png', 143491, 'esCyO.png', 1, '2025-03-04 19:51:13', 0, 0, '69960bdbf0d90fbab9e83b05f7d4a4b0', 6250),
(522, 'Screenshot (38).png', 'image/png', 318524, 'otFxV.png', 1, '2025-03-04 19:51:24', 0, 0, '8d7ec2b591cec3001c3b94cad1a8ffde', 6250),
(523, 'Screenshot (50).png', 'image/png', 143491, 'EFSXP.png', 1, '2025-03-04 19:51:30', 0, 0, '69960bdbf0d90fbab9e83b05f7d4a4b0', 6250),
(524, 'Screenshot (3).png', 'image/png', 198885, 'BVPjR.png', 1, '2025-03-04 19:51:34', 0, 0, '4230c854ba3c88a1f8159f76885d1d15', 6250),
(525, 'Screenshot (15).png', 'image/png', 409180, 'fheBK.png', 1, '2025-03-04 19:51:38', 0, 0, '7074639d37f93584a4c67e017c55b994', 6250),
(526, 'Screenshot (12).png', 'image/png', 170183, 'ONvhP.png', 1, '2025-03-04 19:51:42', 0, 0, 'c633e50edcd4e26478927f06ac2a2034', 6250),
(527, 'Screenshot (6).png', 'image/png', 224756, 'odNgA.png', 1, '2025-03-05 06:12:06', 0, 0, '1dd08e54169e992bb8434d39792155da', 6250),
(528, 'Screenshot (2).png', 'image/png', 257855, 'ZWKUi.png', 1, '2025-03-05 07:14:24', 1, 1, 'a657d739a18b4e05e4870a9818335075', 6254),
(529, 'Screenshot (1).png', 'image/png', 251085, 'Jqdie.png', 1, '2025-03-05 07:17:37', 0, 0, '328ddd15f62b1d2e76786d8293ff70d1', 6254),
(530, 'Screenshot (2).png', 'image/png', 257855, 'YzDHK.png', 1, '2025-03-05 07:17:48', 1, 1, 'a657d739a18b4e05e4870a9818335075', 6254),
(531, 'hasantext.txt', 'text/plain', 7, 'lHOcK.txt', 0, '2025-03-05 07:24:37', 0, 0, '49adf456377437bd4d5ed3991a85523c', 6254),
(532, 'Screenshot (2).png', 'image/png', 257855, 'ywmGV.png', 1, '2025-03-05 07:49:12', 0, 0, 'a657d739a18b4e05e4870a9818335075', 6254),
(533, 'Screenshot (5).png', 'image/png', 231022, 'ZfDEO.png', 1, '2025-03-05 07:49:27', 0, 0, '65a2da41e7fc389f11a750902ae6374f', 6254),
(534, 'test.png', 'image/png', 17126, 'sUIgE.png', 0, '2025-03-05 08:01:17', 0, 0, '787c14f45635f5e00012429a8c6fe5bc', 6253),
(535, 'impppp.txt', 'text/plain', 178, 'bviDM.txt', 0, '2025-03-05 08:08:41', 0, 0, 'e47fce7f8213b5bfb6098e090c2d2829', 6253),
(536, 'impppp.txt', 'text/plain', 178, 'Elskq.txt', 0, '2025-03-05 08:08:44', 0, 0, 'e47fce7f8213b5bfb6098e090c2d2829', 6253),
(537, 'impppp.txt', 'text/plain', 178, 'SLvuK.txt', 0, '2025-03-05 08:09:51', 1, 0, 'e47fce7f8213b5bfb6098e090c2d2829', 6250),
(538, 'impppp.txt', 'text/plain', 178, 'DKOFa.txt', 0, '2025-03-05 08:11:04', 1, 0, 'e47fce7f8213b5bfb6098e090c2d2829', 6250),
(539, 'impppp.txt', 'text/plain', 178, 'DNcWb.txt', 0, '2025-03-05 08:15:07', 0, 0, 'e47fce7f8213b5bfb6098e090c2d2829', 6250);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `maxSize` bigint(11) NOT NULL,
  `fileCount` int(11) NOT NULL,
  `fileCountWDel` int(11) NOT NULL,
  `actSize` int(11) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  `apikey` varchar(256) NOT NULL,
  `allowed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mail`, `maxSize`, `fileCount`, `fileCountWDel`, `actSize`, `pwd`, `apikey`, `allowed`) VALUES
(6250, 'gg', 'hameez@gmail.com', 104857600, 16, 19, 4246901, '$2y$10$6JHFuJIMhz1Lyh8/hDcYm.WaAddeFl4t178Njgc8lKmHfm/aGgG5G', '6BMHjujfcIzdUzs260Dv5cM9gcbZLJcBgIQQ8SFsbi0kgfc', 1),
(6251, 'ff', 'hh@as.com', 104857600, 5, 5, 105268, '$2y$10$vQZLw6V6o9UI9YTxqaPed.vYy6aJe1ae5WxKiNKljwxIg08OxYPlG', 'DocZgTGWwRJC0iwSIi04bcaLFFbTQnT0THj1JlHsbwg4', 1),
(6252, 'tt', 'safa@fsa.com', 104857600, 0, 0, 0, '$2y$10$Gq3dKykhZTQ4CyOpLV4K..q4YCwy7AoOeI8TFfqeup89xEL79Lriy', 'dY8FbrEeIIIcGF9nqHtnQrLShbURHntMXI7PNiLNM2hTw0g', 1),
(6253, 'inco', 'inco@asd.com', 104857600, 7, 7, 1309718, '$2y$10$JppZN/xx3XOHoJQFT14n3.NAxZaXENEFvg0vcvsYO7rGRmaWT6ODi', 'N2NiYfPUOEOdN6GKCP3CEHQCVZcIBbf3CdAhHEIbLclI', 1),
(6254, 'hasan', 'hasan@gmail.com', 104857600, 4, 6, 739969, '$2y$10$kYVoE3xhXJ6M3fP.nd8TWeo22a0fKKBzv8IJWUH86PpEgn/4d/oJm', 'uMBmG45vzGsBaPpKhDy3ZMKFCww13BfjeOXz634x5RmI', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_files_id_users` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6255;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_files_id_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
