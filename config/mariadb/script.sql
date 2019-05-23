-- CREATE USER 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- FLUSH PRIVILEGES;

USE db_test;

CREATE TABLE `users` (
    `id` int(11) NOT NULL,
    `name` varchar(250) NOT NULL,
    `email` varchar(250) NOT NULL,
    `password` varchar(250) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
    (1, 'John Doe 01', 'johndoe01@adpcprojects.com', 'adpcprojects', '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (2, 'John Doe 02', 'johndoe02@adpcprojects.com', 'adpcprojects', '2017-08-06 16:43:12', '2018-08-06 17:06:57'),
    (3, 'John Doe 03', 'johndoe03@adpcprojects.com', 'adpcprojects', '2017-08-06 17:06:57', '2017-08-06 17:06:57'),
    (4, 'John Doe 04', 'johndoe04@adpcprojects.com', 'adpcprojects', '2017-08-06 17:06:57', '2017-08-06 17:06:57'),
    (5, 'John Doe 05', 'johndoe05@adpcprojects.com', 'adpcprojects', '2017-08-06 17:06:57', '2016-08-06 17:06:57');

ALTER TABLE `users` ADD PRIMARY KEY (`id`);
ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
