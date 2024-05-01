-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 07:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `deadline` datetime NOT NULL,
  `filePath` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `department` varchar(250) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `deadline`, `filePath`, `fileName`, `department`, `createdAt`, `updatedAt`) VALUES
(16, 'HEllo', 'addf', '2024-03-20 00:00:00', 'uploads\\1710271922248-Analysis-of-the-South-Sudan-Cyber-Crimes-and-Computer-Misuse-Provisional-Order-2021.pdf', '1710271922248-Analysis-of-the-South-Sudan-Cyber-Crimes-and-Computer-Misuse-Provisional-Order-2021.pdf', 'Computer Science', '2024-03-12 19:32:02', '2024-03-12 19:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `assignmentsubmissions`
--

CREATE TABLE `assignmentsubmissions` (
  `id` int(11) NOT NULL,
  `assignmentId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coursematerials`
--

CREATE TABLE `coursematerials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `fileUrl` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lecturerId` int(11) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `course_level` int(11) NOT NULL,
  `credit_unit` int(11) NOT NULL,
  `courseId` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecturer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `expertise` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correctOption` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correctOption`, `createdAt`, `updatedAt`) VALUES
(2, 'Which is', 'A', 'B', 'C', 'D', 0, '2024-03-08 23:37:20', '2024-03-08 23:37:20'),
(3, 'dsf', 'sfa', 'asfds', 'asdsa', 'asda', 0, '2024-03-08 23:38:00', '2024-03-08 23:38:00'),
(5, 'asd', 'sad', 'sadad', 'sda', 'sa', 1, '2024-03-08 23:43:23', '2024-03-08 23:43:23'),
(6, 'New', 'sds', 'sadas', 'sad', 'sad', 3, '2024-03-08 23:43:58', '2024-03-08 23:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `lecture_name` varchar(255) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_level` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `schedule_date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240205220159-create-user.js'),
('20240205220544-Lecture.js.js'),
('20240205220617-Lecture.js'),
('20240205220711-Course.js'),
('20240205221215-create-course.js'),
('20240205221323-create-lecture.js'),
('20240206091046-add_user_columns.js'),
('20240206104250-add_course_code_to_course.js'),
('20240206105308-add_couse_code.js'),
('20240206105334-add_couse_code_new.js'),
('20240206105735-create-schedule-table.js'),
('20240206113803-add_start_time.js'),
('20240206114601-add_lecturer_id_course.js'),
('20240206213219-add_courser_table.js'),
('20240206213943-add_course.js'),
('20240222115351-add-lecture-details-to-schedule.js'),
('20240222115356-add-lecture-details-to-schedule.js'),
('20240222115627-add-course-update-detials.js'),
('20240222120321-create-course-table.js'),
('20240222122744-add-columns-to-courses.js'),
('20240228134720-create-student-table.js'),
('20240228135745-add-fields-and-foreign-key-to-student.js'),
('20240229051713-add-lecturer-table.js'),
('20240302125308-create-message.js'),
('20240303171307-create_assignment_.js'),
('20240303171628-create-assignment.js'),
('20240303172257-create_assignments_table.js'),
('20240303172822-create_assignments_tables.js'),
('20240303182049-create_new_table.js'),
('20240303182300-assignemnt__table.js'),
('20240304062022-create_assignment_table.js'),
('20240304063436-create_assignments_table.js'),
('20240304063553-create_assignment.js'),
('20240305173545-create_assignment_table.js'),
('20240306142227-create_assignment.js'),
('20240307204532-assignment_submit.js'),
('20240308061829-update-assignment-submission-model.js'),
('20240308062138-assignment_submit-update.js'),
('20240308102349-course_material.js'),
('20240308185524-create-quiz.js'),
('20240308190057-create-option.js'),
('20240308230446-create_quiz_table.js'),
('20240308230449-create_question_table.js'),
('20240308230451-create_answer_table.js'),
('20240308233009-create-quiz.js');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-O5I7-6y9nEYqdkS_UwmJM9CnxsUD6rO', '2024-02-10 07:09:18', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:09:18.332Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:09:18', '2024-02-09 07:09:18'),
('0s1Htgpvtq6Wctc0a16DLkKUwlQtn6xa', '2024-02-09 09:02:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:02:10.340Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 09:02:10', '2024-02-08 09:02:10'),
('1mof6xm9nw4p0tB8PiNWhMdiLSPfVuWB', '2024-02-10 07:15:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:15:06.659Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:15:06', '2024-02-09 07:15:06'),
('2uv3tVEB_DOnLn2zmzPz3d-fwLw-Bobb', '2024-02-09 09:17:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:17:53.356Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 09:17:53', '2024-02-08 09:17:53'),
('7ze-jd9couGK-06bSbWkCLhQ6MtrPDDk', '2024-02-09 09:02:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:02:26.072Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 09:02:26', '2024-02-08 09:02:26'),
('8iE6YNHVhwh_l4N4h4j9yPm4QlfRebrt', '2024-02-10 07:15:20', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:15:20.600Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:15:20', '2024-02-09 07:15:20'),
('8PUPM-PQpm-ojcX6bcamegQLmwPYD3V0', '2024-02-10 07:01:36', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:01:36.976Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:01:36', '2024-02-09 07:01:37'),
('BDjBSyGNYW-hbxoFLn1DbTeoibubD6uK', '2024-02-09 09:22:54', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:22:54.181Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 09:22:54', '2024-02-08 09:22:54'),
('deUbmcnzzkVLhLtDWxAZ7SnDUyEpUwNB', '2024-02-10 07:15:06', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:15:06.919Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:15:06', '2024-02-09 07:15:07'),
('f1p_ueihhbarEVgiwq1wCEpfwC9L29pl', '2024-02-09 06:43:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 06:43:45', '2024-02-08 06:43:45'),
('fJfQrJAkS94SsPZckz6p1oaYvH7xpMhn', '2024-02-10 07:29:19', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:04:54.139Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"strict\"}}', '2024-02-09 06:04:58', '2024-02-09 07:29:19'),
('FmfF_lK5KJvjZ4Mzhfj4HohR2xaLTtSa', '2024-02-09 09:17:10', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:17:10.530Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 09:17:10', '2024-02-08 09:17:10'),
('fYMUp0RPh0jjgQtiqqRapnbXjkH4pF_5', '2024-02-10 06:58:48', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:58:48.533Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:58:48', '2024-02-09 06:58:48'),
('hbAW5iLnhdOTgfWGj3PHM5TK6FmcrbHT', '2024-02-09 09:22:47', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:22:47.220Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 09:22:46', '2024-02-08 09:22:47'),
('hfUJXnjmGrzJfwNJQKkClRh1DHz69mRq', '2024-02-10 06:52:33', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:52:33.335Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:52:33', '2024-02-09 06:52:33'),
('HYhuSxJXVaBTf4IiAFFShxvA_XZZ5Znw', '2024-02-09 09:21:51', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:21:51.648Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 09:21:51', '2024-02-08 09:21:51'),
('lQtpp3ySM2uA59-68HMXlGtVBugSaXWG', '2024-02-10 06:11:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:11:30.802Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"strict\"},\"passport\":{\"user\":3}}', '2024-02-09 06:11:30', '2024-02-09 06:11:30'),
('MGsuKg3MV73YPguCSeYzAhfH_8x_Vh72', '2024-02-09 09:17:46', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:17:46.016Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":8}}', '2024-02-08 09:17:45', '2024-02-08 09:17:46'),
('N0HAKVrMGexdOY6LWbjFujgu5rLHnA5V', '2024-02-10 07:06:44', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:06:44.174Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:06:44', '2024-02-09 07:06:44'),
('nVTHcuwxi65YoQtbrcMSL1O7cX_u1CAf', '2024-02-10 06:50:50', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:50:50.289Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:50:50', '2024-02-09 06:50:50'),
('o7sYtpHSAAdMRoI_LOw06uS0anRufUGx', '2024-02-10 06:54:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:54:03.679Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:54:03', '2024-02-09 06:54:03'),
('ox1lVxzVlfk50jkk-qFgMOInZQhbEhRs', '2024-02-09 09:17:53', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:17:53.527Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 09:17:53', '2024-02-08 09:17:53'),
('pd0POUCfZNS_Pvb0JufrozcfrQIrpnLr', '2024-02-10 06:41:21', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:41:21.242Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:41:21', '2024-02-09 06:41:21'),
('PwMFRyqOt8O61ZFpfHKh60SWbJ0YRBhF', '2024-02-10 06:54:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:54:45.185Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:54:45', '2024-02-09 06:54:45'),
('QbD_B7NYu4tHWu8SF2B8-bScLdyUI5yq', '2024-02-10 07:09:45', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:09:45.425Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:09:45', '2024-02-09 07:09:46'),
('R6xa1iBBbBb67yKizQRclH2o2wBZs3rq', '2024-02-09 08:58:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T08:58:39.063Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 08:58:39', '2024-02-08 08:58:39'),
('rQnhuC3ylnJqziIHVXS3mwSCm89dJuwG', '2024-02-09 09:02:26', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T09:02:26.083Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 09:02:26', '2024-02-08 09:02:26'),
('SdJob3yARhzFFG4Uonk77g7xN8CUHHJH', '2024-02-10 06:11:30', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:11:30.873Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"strict\"},\"passport\":{\"user\":3}}', '2024-02-09 06:11:30', '2024-02-09 06:11:30'),
('T_R4dxB4FdBuTvvJ7aXEETuQdJeU-2vm', '2024-02-10 07:10:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:10:07.269Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:10:07', '2024-02-09 07:10:07'),
('VQqJngNLU25zstit0womPtb-UlRH8WL2', '2024-02-09 08:58:39', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T08:58:39.019Z\",\"httpOnly\":true,\"path\":\"/\"}}', '2024-02-08 08:58:39', '2024-02-08 08:58:39'),
('vS8O_5IoM17NO4kMcBspkNOaS4QFrcc4', '2024-02-10 06:23:33', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:23:33.978Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:23:33', '2024-02-09 06:23:33'),
('Wx8OsdPD6cVW17FzRrcuAhNZV-mikGBP', '2024-02-10 07:01:43', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:01:43.816Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:01:43', '2024-02-09 07:01:43'),
('XbVENhZzOIxgXn3ELS4WgobQKIDaCfE0', '2024-02-09 09:23:13', '{\"cookie\":{\"originalMaxAge\":86399999,\"expires\":\"2024-02-09T09:23:13.863Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 09:23:13', '2024-02-08 09:23:14'),
('yoI5VXU9-MG686eJmWv4wU78kX9EIix-', '2024-02-09 08:58:01', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-09T08:58:01.037Z\",\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-08 08:58:00', '2024-02-08 08:58:01'),
('yr1QiUrU2_dCU6zuUnlr6C75qHqBy575', '2024-02-10 06:57:29', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T06:57:29.742Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 06:57:29', '2024-02-09 06:57:29'),
('zZLn95D86mOrQLsqSIE_yDbOhag6_VeS', '2024-02-10 07:01:03', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-02-10T07:01:03.922Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":3}}', '2024-02-09 07:01:03', '2024-02-09 07:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `reg_no` varchar(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(2, 'aliyu', 'aliyu@gmail.com', '$2b$10$/fvrWefssOGwZaQhzmtsdeQO02WqHkjsaHzOHvYVUHCbMzjs5ZIga', 'user', '2024-02-06 09:29:52', '2024-02-06 09:29:52'),
(3, 'Sadik', 'sani@gmail.com', '$2b$10$uWARMw26F.Lz38ThGoCatu54OxbYwQUPB7YCpzNiIlqniIygqEF3K', 'admin', '2024-02-06 09:34:23', '2024-02-06 09:34:23'),
(6, 'Hasin', 'hasin24@gmail.com', '$2b$10$4n33xWJDY0TSXKXdamRhYuHJj30Gq4NTrIYC42MJQmi616AhMRzIS', 'user', '2024-02-06 23:29:45', '2024-02-06 23:29:45'),
(8, 'hasin', 'hasin2@gmail.com', '$2b$10$Vnk5LJ9SO7k.l3uFgrmxBeRNZmPXX9fzpk2ZcYkEeABxZR/axg2Zm', 'user', '2024-02-07 21:18:03', '2024-02-07 21:18:03'),
(9, 'hasin2024', 'hasin2024@gmail.com', '$2b$10$/f2Ax37KXfGpIfO28HPzDOiXQFcCWsNYCgAGRn5tQbKFJ15F2yk/q', 'user', '2024-02-09 09:44:38', '2024-02-09 09:44:38'),
(12, 'kalil', 'kalil@gmail.com', '$2b$10$mSaIMlguvm2B4sJXs0pjs.jjnL0JohkdwF1AnW29Xz5MEMSkdBw5m', 'user', '2024-02-09 09:56:06', '2024-02-09 09:56:06'),
(13, 'kalil1', 'kalil1@gmail.com', '$2b$10$BB42G6InroQs8DWg.ujCbeReOMCuqgaI4cSkolniYP/A1VfLNodgO', 'user', '2024-02-09 09:57:18', '2024-02-09 09:57:18'),
(14, 'saif', 'saif2024@gmail.com', '$2b$10$buIZteoiKqpLzhfpGRfS6e3YHK4sJXjmzPGMu.BVbjA8qkGG0L1/G', 'user', '2024-02-09 10:19:46', '2024-02-09 10:19:46'),
(15, 'salim', 'salim@gmail.com', '$2b$10$O4E5lSysISa/aLKTRD6Mt.PxKQKsy9wbwIPDaJM/MvzJJsO0oKb9a', 'user', '2024-02-09 10:21:02', '2024-02-09 10:21:02'),
(19, 'kabir@gmail.com', 'kabir@gmail.com', '$2b$10$ouqya0PDtX7NqFBbJI6IfOdvqZMs90zwL6qjOpbGdISaUXnuIFWoa', 'user', '2024-03-07 21:33:35', '2024-03-07 21:33:35'),
(20, '08050000000@gmail.com', '08050000000@gmail.com', '$2b$10$pAFf5KUmLIBTiPeTzXyapOqJ965udzJ72OpAv.1S8bzY7dZCMJavS', 'user', '2024-03-08 08:48:23', '2024-03-08 08:48:23'),
(21, '09032240799@gmail.com', '09032240799@gmail.com', '$2b$10$Qp9GvH6kS9WUckOZVXikYuBENi/mAFIBUM5auNIwD5Y3XXxSnAauC', 'user', '2024-03-08 08:51:54', '2024-03-08 08:51:54'),
(22, '090322407992@gmail.com', '090322407992@gmail.com', '$2b$10$zfM1B6xMsRWjWSgMOTe0leMOXDqlK8GxpYnHUsCu2cZ08eDeJvo4K', 'user', '2024-03-08 08:53:29', '2024-03-08 08:53:29'),
(23, '08020000000@gmail.com', '08020000000@gmail.com', '$2b$10$b9DGvHsizGseMn3SrUsPueYojg/YsHCx3T.dwJIwSc9jYCjXaBmsy', 'user', '2024-03-08 16:16:56', '2024-03-08 16:16:56'),
(24, '08030000000@gmail.com', '08030000000@gmail.com', '$2b$10$l3yI.0jp15cvFuvJbeOJFeCYsvA7FP8UlYgLRrel0lBSJI5JGBd4a', 'instructor', '2024-03-09 05:45:19', '2024-03-09 05:45:19'),
(25, '08040000000@gmail.com', '08040000000@gmail.com', '$2b$10$zVWfXLS4DHP1kc3pIzmPb.m.kf2rMUKO8J6wbj5TQXQE/pVF7S49.', 'user', '2024-03-09 11:56:46', '2024-03-09 11:56:46'),
(26, '09050000000@gmail.com', '09050000000@gmail.com', '$2b$10$VATmjidcsJ3wbZM.00G3r.blCn/sF6Z2K9XS1whjyNScP.SgFt0Vm', 'instructor', '2024-03-11 07:40:57', '2024-03-11 07:40:57'),
(27, 'hasin240799@gmail.com', 'hasin240799@gmail.com', '$2b$10$GRP7Y6mBF/6I6rGvKUrFQO9Y3Dg7xsotz.dBlG.EWNOSXDkmgso4K', 'instructor', '2024-03-13 14:16:24', '2024-03-13 14:16:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignmentsubmissions`
--
ALTER TABLE `assignmentsubmissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_assignmentId` (`assignmentId`);

--
-- Indexes for table `coursematerials`
--
ALTER TABLE `coursematerials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assignmentsubmissions`
--
ALTER TABLE `assignmentsubmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coursematerials`
--
ALTER TABLE `coursematerials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `lecturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignmentsubmissions`
--
ALTER TABLE `assignmentsubmissions`
  ADD CONSTRAINT `assignmentsubmissions_ibfk_1` FOREIGN KEY (`assignmentId`) REFERENCES `assignments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_assignmentId` FOREIGN KEY (`assignmentId`) REFERENCES `assignments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
