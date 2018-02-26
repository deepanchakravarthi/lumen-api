-- Adminer 4.3.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2016_03_08_164317_create_users_table',	1),
(2,	'2016_03_08_164400_create_password_resets_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'John Doe',	'johndoe@example.com',	'$2y$10$Wexe6aja6O5lQzVgBWqRdOmSF7u9FF0pEgjIxdyrbdybEihpTiEsG',	'iPYDWpSOJF',	NULL,	NULL),
(2,	'Deepan',	'deepan@test.com',	'$2y$10$JadiHxmujMvQ/kAjNzVPo.2pmoK/dwEss4VNHRxgqmZdOvPYjcoAi',	NULL,	'2018-02-25 08:58:13',	'2018-02-25 08:58:13'),
(3,	'Thiru',	'thiru@test.com',	'$2y$10$nUlhgdsafpKQ1wE3/BnY/u0SEWUsKOwXuoqYehjCQS4LQSpiBFJ5O',	NULL,	'2018-02-25 13:43:22',	'2018-02-25 13:43:22'),
(4,	'muru',	'thiru1@test.com',	'$2y$10$MK9KHv6OFGvqpQz.j3wCjeBQImADUFUt.3e9cGHO3KwwlVPFwPgCG',	NULL,	'2018-02-25 13:50:12',	'2018-02-25 13:50:12');

-- 2018-02-26 20:28:28
