-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 08:36 AM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'demo1@gmail.com', NULL, '$2y$10$MksDJiDaQzDRVGIrLU5tiOUXaY81C5DrEYmktgKKBLeaZWRvJyONG', NULL, '2023-10-07 20:36:37', '2023-10-07 20:36:37'),
(2, 'John Doe', 'johndoe@example.com', NULL, '$2y$10$omjMHlLmPAlzjZ8tnr92uOy8s5uw17GaMTW4ao9tdGZ5tJU68HfnG', NULL, '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(3, 'Prof. Tanner Crist', 'kacie96@example.org', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KY8IEC6B6D', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(4, 'Hermina Runolfsson III', 'jackson.anderson@example.org', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bP7RY5mfMq', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(5, 'Spencer Kshlerin', 'kelly.collier@example.org', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VjGjkXAXxm', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(6, 'Clementine Koepp', 'grady.erik@example.com', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xqafNsBc7w', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(7, 'Christina Quigley', 'marion27@example.net', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U6xVjd0PVx', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(8, 'Marshall Boyer', 'fcormier@example.org', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qLZ6Uzdmsy', '2023-10-07 21:47:36', '2023-10-07 21:47:36'),
(9, 'Jevon Tillman', 'maximillia.swift@example.net', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kD320kW2Hk', '2023-10-07 21:47:37', '2023-10-07 21:47:37'),
(10, 'Dannie Prosacco', 'rudy83@example.net', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k5UftAYZzq', '2023-10-07 21:47:37', '2023-10-07 21:47:37'),
(11, 'Xavier Rath', 'ookon@example.net', '2023-10-07 21:47:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ugX6HuoEfr', '2023-10-07 21:47:37', '2023-10-07 21:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
