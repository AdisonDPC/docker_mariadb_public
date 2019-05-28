-- CREATE USER 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'testuser@docker';
-- FLUSH PRIVILEGES;

USE db_test;

-- USERS

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

-- POKEMONS

CREATE TABLE `pokemons` (
    `id` int(11) NOT NULL,
    `name` varchar(250) NOT NULL,
    `types` text NOT NULL,
    `hp` int(11) NOT NULL DEFAULT 0,
    `attack` int(11) NOT NULL DEFAULT 0,
    `defense` int(11) NOT NULL DEFAULT 0,
    `speed` int(11) NOT NULL DEFAULT 0,
    `special` int(11) NOT NULL DEFAULT 0,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pokemons` (`id`, `name`, `types`, `hp`, `attack`, `defense`, `speed`, `special`, `created_at`, `updated_at`) VALUES
    (1, "bulbasaur", '["grass","poison"]', 45, 49, 49, 45, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (2, "ivysaur", '["grass","poison"]', 60, 62, 63, 60, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (3, "venusaur", '["grass","poison"]', 80, 82, 83, 80, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (4, "charmander", '["fire"]', 39, 52, 43, 65, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (5, "charmeleon", '["fire"]', 58, 64, 58, 80, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (6, "charizard", '["fire","flying"]', 78, 84, 78, 100, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (7, "squirtle", '["water"]', 44, 48, 65, 43, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (8, "wartortle", '["water"]', 59, 63, 80, 58, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (9, "blastoise", '["water"]', 79, 83, 100, 78, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (10, "caterpie", '["bug"]', 45, 30, 35, 45, 20, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (11, "metapod", '["bug"]', 50, 20, 55, 30, 25, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (12, "butterfree", '["bug","flying"]', 60, 45, 50, 70, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (13, "weedle", '["bug","poison"]', 40, 35, 30, 50, 20, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (14, "kakuna", '["bug","poison"]', 45, 25, 50, 35, 25, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (15, "beedrill", '["bug","poison"]', 65, 80, 40, 75, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (16, "pidgey", '["normal","flying"]', 40, 45, 40, 56, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (17, "pidgeotto", '["normal","flying"]', 63, 60, 55, 71, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (18, "pidgeot", '["normal","flying"]', 83, 80, 75, 91, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (19, "rattata", '["normal"]', 30, 56, 35, 72, 25, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (20, "raticate", '["normal"]', 55, 81, 60, 97, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (21, "spearow", '["normal","flying"]', 40, 60, 30, 70, 31, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (22, "fearow", '["normal","flying"]', 65, 90, 65, 100, 61, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (23, "ekans", '["poison"]', 35, 60, 44, 55, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (24, "arbok", '["poison"]', 60, 85, 69, 80, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (25, "pikachu", '["electric"]', 35, 55, 30, 90, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (26, "raichu", '["electric"]', 60, 90, 55, 100, 90, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (27, "sandshrew", '["ground"]', 50, 75, 85, 40, 30, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (28, "sandslash", '["ground"]', 75, 100, 110, 65, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (29, "nidoran♀", '["poison"]', 55, 47, 52, 41, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (30, "nidorina", '["poison"]', 70, 62, 67, 56, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (31, "nidoqueen", '["poison","ground"]', 90, 82, 87, 76, 75, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (32, "nidoran♂", '["poison"]', 46, 57, 40, 50, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (33, "nidorino", '["poison"]', 61, 72, 57, 65, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (34, "nidoking", '["poison","ground"]', 81, 92, 77, 85, 75, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (35, "clefairy", '["fairy"]', 70, 45, 48, 35, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (36, "clefable", '["fairy"]', 95, 70, 73, 60, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (37, "vulpix", '["fire"]', 38, 41, 40, 65, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (38, "ninetales", '["fire"]', 73, 76, 75, 100, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (39, "jigglypuff", '["normal","fairy"]', 115, 45, 20, 20, 25, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (40, "wigglytuff", '["normal","fairy"]', 140, 70, 45, 45, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (41, "zubat", '["poison","flying"]', 40, 45, 35, 55, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (42, "golbat", '["poison","flying"]', 75, 80, 70, 90, 75, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (43, "oddish", '["grass","poison"]', 45, 50, 55, 30, 75, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (44, "gloom", '["grass","poison"]', 60, 65, 70, 40, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (45, "vileplume", '["grass","poison"]', 75, 80, 85, 50, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (46, "paras", '["bug","grass"]', 35, 70, 55, 25, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (47, "parasect", '["bug","grass"]', 60, 95, 80, 30, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (48, "venonat", '["bug","poison"]', 60, 55, 50, 45, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (49, "venomoth", '["bug","poison"]', 70, 65, 60, 90, 90, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (50, "diglett", '["ground"]', 10, 55, 25, 95, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (51, "dugtrio", '["ground"]', 35, 80, 50, 120, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (52, "meowth", '["normal"]', 40, 45, 35, 90, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (53, "persian", '["normal"]', 65, 70, 60, 115, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (54, "psyduck", '["water"]', 50, 52, 48, 55, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (55, "golduck", '["water"]', 80, 82, 78, 85, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (56, "mankey", '["fighting"]', 40, 80, 35, 70, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (57, "primeape", '["fighting"]', 65, 105, 60, 95, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (58, "growlithe", '["fire"]', 55, 70, 45, 60, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (59, "arcanine", '["fire"]', 90, 110, 80, 95, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (60, "poliwag", '["water"]', 40, 50, 40, 90, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (61, "poliwhirl", '["water"]', 65, 65, 65, 90, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (62, "poliwrath", '["water","fighting"]', 90, 85, 95, 70, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (63, "abra", '["psychic"]', 25, 20, 15, 90, 105, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (64, "kadabra", '["psychic"]', 40, 35, 30, 105, 120, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (65, "alakazam", '["psychic"]', 55, 50, 45, 120, 135, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (66, "machop", '["fighting"]', 70, 80, 50, 35, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (67, "machoke", '["fighting"]', 80, 100, 70, 45, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (68, "machamp", '["fighting"]', 90, 130, 80, 55, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (69, "bellsprout", '["grass","poison"]', 50, 75, 35, 40, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (70, "weepinbell", '["grass","poison"]', 65, 90, 50, 55, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (71, "victreebel", '["grass","poison"]', 80, 105, 65, 70, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (72, "tentacool", '["water","poison"]', 40, 40, 35, 70, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (73, "tentacruel", '["water","poison"]', 80, 70, 65, 100, 120, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (74, "geodude", '["rock","ground"]', 40, 80, 100, 20, 30, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (75, "graveler", '["rock","ground"]', 55, 95, 115, 35, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (76, "golem", '["rock","ground"]', 80, 110, 130, 45, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (77, "ponyta", '["fire"]', 50, 85, 55, 90, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (78, "rapidash", '["fire"]', 65, 100, 70, 105, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (79, "slowpoke", '["water","psychic"]', 90, 65, 65, 15, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (80, "slowbro", '["water","psychic"]', 95, 75, 110, 30, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (81, "magnemite", '["electric","steel"]', 25, 35, 70, 45, 95, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (82, "magneton", '["electric","steel"]', 50, 60, 95, 70, 120, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (83, "farfetch'd", '["normal","flying"]', 52, 65, 55, 60, 58, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (84, "doduo", '["normal","flying"]', 35, 85, 45, 75, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (85, "dodrio", '["normal","flying"]', 60, 110, 70, 100, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (86, "seel", '["water"]', 65, 45, 55, 45, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (87, "dewgong", '["water","ice"]', 90, 70, 80, 70, 95, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (88, "grimer", '["poison"]', 80, 80, 50, 25, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (89, "muk", '["poison"]', 105, 105, 75, 50, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (90, "shellder", '["water"]', 30, 65, 100, 40, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (91, "cloyster", '["water","ice"]', 50, 95, 180, 70, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (92, "gastly", '["ghost","poison"]', 30, 35, 30, 80, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (93, "haunter", '["ghost","poison"]', 45, 50, 45, 95, 115, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (94, "gengar", '["ghost","poison"]', 60, 65, 60, 110, 130, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (95, "onix", '["rock","ground"]', 35, 45, 160, 70, 30, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (96, "drowzee", '["psychic"]', 60, 48, 45, 42, 90, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (97, "hypno", '["psychic"]', 85, 73, 70, 67, 115, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (98, "krabby", '["water"]', 30, 105, 90, 50, 25, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (99, "kingler", '["water"]', 55, 130, 115, 75, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (100, "voltorb", '["electric"]', 40, 30, 50, 100, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (101, "electrode", '["electric"]', 60, 50, 70, 140, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (102, "exeggcute", '["grass","psychic"]', 60, 40, 80, 40, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (103, "exeggutor", '["grass","psychic"]', 95, 95, 85, 55, 125, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (104, "cubone", '["ground"]', 50, 50, 95, 35, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (105, "marowak", '["ground"]', 60, 80, 110, 45, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (106, "hitmonlee", '["fighting"]', 50, 120, 53, 87, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (107, "hitmonchan", '["fighting"]', 50, 105, 79, 76, 35, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (108, "lickitung", '["normal"]', 90, 55, 75, 30, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (109, "koffing", '["poison"]', 40, 65, 95, 35, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (110, "weezing", '["poison"]', 65, 90, 120, 60, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (111, "rhyhorn", '["ground","rock"]', 80, 85, 95, 25, 30, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (112, "rhydon", '["ground","rock"]', 105, 130, 120, 40, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (113, "chansey", '["normal"]', 250, 5, 5, 50, 105, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (114, "tangela", '["grass"]', 65, 55, 115, 60, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (115, "kangaskhan", '["normal"]', 105, 95, 80, 90, 40, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (116, "horsea", '["water"]', 30, 40, 70, 60, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (117, "seadra", '["water"]', 55, 65, 95, 85, 95, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (118, "goldeen", '["water"]', 45, 67, 60, 63, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (119, "seaking", '["water"]', 80, 92, 65, 68, 80, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (120, "staryu", '["water"]', 30, 45, 55, 85, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (121, "starmie", '["water","psychic"]', 60, 75, 85, 115, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (122, "mr. mime", '["psychic","fairy"]', 40, 45, 65, 90, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (123, "scyther", '["bug","flying"]', 70, 110, 80, 105, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (124, "jynx", '["ice","psychic"]', 65, 50, 35, 95, 95, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (125, "electabuzz", '["electric"]', 65, 83, 57, 105, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (126, "magmar", '["fire"]', 65, 95, 57, 93, 85, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (127, "pinsir", '["bug"]', 65, 125, 100, 85, 55, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (128, "tauros", '["normal"]', 75, 100, 95, 110, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (129, "magikarp", '["water"]', 20, 10, 55, 80, 20, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (130, "gyarados", '["water","flying"]', 95, 125, 79, 81, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (131, "lapras", '["water","ice"]', 130, 85, 80, 60, 95, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (132, "ditto", '["normal"]', 48, 48, 48, 48, 48, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (133, "eevee", '["normal"]', 55, 55, 50, 55, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (134, "vaporeon", '["water"]', 130, 65, 60, 65, 110, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (135, "jolteon", '["electric"]', 65, 65, 60, 130, 110, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (136, "flareon", '["fire"]', 65, 130, 60, 65, 110, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (137, "porygon", '["normal"]', 65, 60, 70, 40, 75, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (138, "omanyte", '["rock","water"]', 35, 40, 100, 35, 90, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (139, "omastar", '["rock","water"]', 70, 60, 125, 55, 115, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (140, "kabuto", '["rock","water"]', 30, 80, 90, 55, 45, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (141, "kabutops", '["rock","water"]', 60, 115, 105, 80, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (142, "aerodactyl", '["rock","flying"]', 80, 105, 65, 130, 60, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (143, "snorlax", '["normal"]', 160, 110, 65, 30, 65, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (144, "articuno", '["ice","flying"]', 90, 85, 100, 85, 125, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (145, "zapdos", '["electric","flying"]', 90, 90, 85, 100, 125, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (146, "moltres", '["fire","flying"]', 90, 100, 90, 90, 125, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (147, "dratini", '["dragon"]', 41, 64, 45, 50, 50, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (148, "dragonair", '["dragon"]', 61, 84, 65, 70, 70, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (149, "dragonite", '["dragon","flying"]', 91, 134, 95, 80, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (150, "mewtwo", '["psychic"]', 106, 110, 90, 130, 154, '2017-08-06 11:47:24', '2017-08-06 17:06:57'),
    (151, "mew", '["psychic"]', 100, 100, 100, 100, 100, '2017-08-06 11:47:24', '2017-08-06 17:06:57');

ALTER TABLE `pokemons` ADD PRIMARY KEY (`id`);
ALTER TABLE `pokemons` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
