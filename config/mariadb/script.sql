-- CREATE USER 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- FLUSH PRIVILEGES;

USE db_test;

-- CREATE TABLE `users` (
--     `id` int(11) NOT NULL,
--     `name` varchar(250) NOT NULL,
--     `email` varchar(250) NOT NULL,
--     `password` varchar(250) NOT NULL,
--     `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--     `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
--     (1, 'shahroze nawaz', 'shahroze.nawaz@adpcprojects.com', '', '2017-08-06 11:47:24', '0000-00-00 00:00:00'),
--     (2, 'Pere Hospital', 'pere@adpcprojects.com', '', '2017-08-06 16:43:12', '0000-00-00 00:00:00'),
--     (3, 'jane doe', 'janedoe@adpcprojects.com', 'iamstupid', '2017-08-06 17:06:57', '2017-08-06 17:06:57');

-- ALTER TABLE `users` ADD PRIMARY KEY (`id`);
-- ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;