#
# TABLE STRUCTURE FOR: configuration
#

DROP TABLE IF EXISTS `configuration`;

CREATE TABLE `configuration` (
  `user_id` int(10) unsigned NOT NULL,
  `parol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `verification` tinyint(1) DEFAULT NULL,
  `url_adress` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `visible_id` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `parol` (`parol`),
  UNIQUE KEY `url_adress` (`url_adress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (31, 'a', 'es', 1, 'http://dubuque.com/', 8);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (5, 'ab', 'it', 0, 'http://www.dibbert.com/', 32);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (83, 'ad', 'cn', 0, 'http://schroeder.info/', 95);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (83, 'amet', 'es', 0, 'http://hettingerwilkinson.com/', 93);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (10, 'animi', 'de', 1, 'http://www.dietrich.com/', 87);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (12, 'aperiam', 'en', 0, 'http://kutcherdman.com/', 52);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (51, 'asperiores', 'ru', 1, 'http://hoeger.com/', 92);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (87, 'assumenda', 'it', 1, 'http://www.klockocrona.info/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (21, 'at', 'es', 1, 'http://runolfsdottir.biz/', 95);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (63, 'atque', 'fr', 1, 'http://jacobs.com/', 48);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (56, 'aut', 'it', 0, 'http://www.boganhirthe.com/', 26);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (3, 'autem', 'de', 1, 'http://crookshamill.com/', 94);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (10, 'beatae', 'es', 1, 'http://beierstroman.com/', 43);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (14, 'blanditiis', 'en', 0, 'http://www.gerholdschultz.com/', 21);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (58, 'consequatur', 'en', 0, 'http://www.hermannhammes.com/', 69);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (26, 'consequuntur', 'en', 0, 'http://www.andersongoodwin.com/', 67);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (49, 'cum', 'de', 1, 'http://sanford.com/', 84);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (13, 'cumque', 'de', 1, 'http://rogahnbuckridge.net/', 10);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (87, 'debitis', 'fr', 0, 'http://www.gislason.net/', 22);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (15, 'deserunt', 'es', 1, 'http://www.klein.com/', 80);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (95, 'distinctio', 'it', 0, 'http://douglas.com/', 39);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (96, 'dolor', 'it', 0, 'http://kuhlman.com/', 40);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (34, 'dolorem', 'ru', 0, 'http://kinggibson.com/', 25);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (36, 'doloremque', 'ru', 1, 'http://kuvalisdonnelly.net/', 92);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (45, 'dolores', 'pt', 0, 'http://www.osinskiwisozk.biz/', 38);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (26, 'doloribus', 'es', 0, 'http://www.shields.org/', 62);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (19, 'dolorum', 'cn', 1, 'http://www.hettingerkutch.com/', 30);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (80, 'enim', 'fr', 1, 'http://robel.com/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (39, 'eos', 'es', 0, 'http://zulauf.com/', 90);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (78, 'est', 'es', 0, 'http://runolfsson.org/', 66);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (50, 'et', 'fr', 0, 'http://lowe.com/', 2);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (88, 'eum', 'it', 0, 'http://kautzerjohnston.com/', 59);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (38, 'eveniet', 'pt', 0, 'http://www.emmerichhettinger.com/', 4);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (50, 'exercitationem', 'pt', 1, 'http://stanton.com/', 50);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (21, 'expedita', 'de', 0, 'http://www.windlerzulauf.com/', 54);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (51, 'explicabo', 'it', 0, 'http://schaeferblick.com/', 36);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (81, 'facere', 'en', 1, 'http://metzmcclure.com/', 44);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (59, 'fuga', 'it', 1, 'http://www.brakus.com/', 99);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (41, 'fugiat', 'es', 0, 'http://schulistschuster.com/', 83);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (76, 'fugit', 'cn', 0, 'http://daniel.info/', 83);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (58, 'harum', 'cn', 0, 'http://kilbackpagac.com/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (95, 'illum', 'fr', 0, 'http://www.lowe.net/', 6);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (33, 'in', 'fr', 1, 'http://mills.com/', 47);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (52, 'ipsum', 'ru', 1, 'http://graham.biz/', 53);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (29, 'laboriosam', 'fr', 0, 'http://www.kiehn.net/', 10);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (42, 'laudantium', 'de', 0, 'http://boyle.com/', 66);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (37, 'libero', 'fr', 0, 'http://www.ernser.com/', 14);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (69, 'magnam', 'ru', 0, 'http://www.runolfsson.com/', 14);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (67, 'maiores', 'pt', 0, 'http://romaguera.com/', 83);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (10, 'maxime', 'cn', 0, 'http://hoppe.com/', 38);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (29, 'modi', 'pt', 1, 'http://www.nicolasbergstrom.com/', 59);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (94, 'molestiae', 'fr', 0, 'http://okeefedoyle.net/', 38);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (54, 'nam', 'cn', 1, 'http://skilesbalistreri.com/', 5);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (54, 'natus', 'ru', 1, 'http://gusikowski.com/', 84);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (52, 'necessitatibus', 'pt', 0, 'http://cormier.com/', 48);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (49, 'neque', 'de', 0, 'http://gulgowskicole.com/', 3);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (63, 'nesciunt', 'es', 1, 'http://kilback.com/', 45);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (41, 'nihil', 'fr', 0, 'http://stehr.com/', 64);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (53, 'nisi', 'ru', 0, 'http://www.metz.net/', 88);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (19, 'non', 'cn', 1, 'http://satterfield.com/', 50);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (49, 'nulla', 'en', 0, 'http://www.dibbert.net/', 83);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (74, 'numquam', 'pt', 0, 'http://www.watsicahettinger.org/', 87);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (34, 'odit', 'pt', 1, 'http://goyette.com/', 13);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (38, 'officia', 'cn', 1, 'http://wilkinsondietrich.com/', 25);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (30, 'omnis', 'ru', 1, 'http://www.wisoky.biz/', 2);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (99, 'perferendis', 'de', 1, 'http://www.bogisich.com/', 96);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (39, 'perspiciatis', 'it', 1, 'http://schummjerde.com/', 26);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (53, 'porro', 'fr', 1, 'http://marks.com/', 90);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (42, 'possimus', 'es', 0, 'http://www.hintz.com/', 86);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (80, 'praesentium', 'ru', 1, 'http://www.hesselparisian.com/', 30);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (47, 'quaerat', 'en', 0, 'http://nader.org/', 38);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (28, 'quam', 'de', 1, 'http://www.kesslerlynch.net/', 61);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (58, 'quas', 'en', 0, 'http://jakubowski.net/', 68);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (75, 'quasi', 'fr', 1, 'http://www.green.com/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (64, 'qui', 'es', 1, 'http://kulas.com/', 55);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (84, 'quia', 'pt', 1, 'http://heidenreichfay.com/', 17);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (8, 'quibusdam', 'en', 0, 'http://www.gottliebdicki.net/', 97);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (95, 'quis', 'it', 1, 'http://schmitt.com/', 20);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (64, 'quisquam', 'fr', 0, 'http://www.bogan.net/', 59);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (44, 'ratione', 'pt', 1, 'http://www.ullrichupton.com/', 50);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (55, 'recusandae', 'pt', 1, 'http://www.rogahn.com/', 30);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (73, 'reiciendis', 'fr', 1, 'http://romaguerayost.com/', 85);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (69, 'repudiandae', 'en', 1, 'http://osinski.com/', 64);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (4, 'rerum', 'ru', 1, 'http://labadiemills.biz/', 91);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (68, 'saepe', 'pt', 1, 'http://kerluke.net/', 16);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (6, 'sapiente', 'en', 0, 'http://www.weimannstoltenberg.com/', 73);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (53, 'sed', 'pt', 0, 'http://pollichnikolaus.org/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (96, 'similique', 'de', 1, 'http://doyle.com/', 86);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (37, 'sint', 'cn', 0, 'http://padberg.org/', 79);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (63, 'sit', 'ru', 1, 'http://monahan.info/', 5);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (2, 'sunt', 'ru', 0, 'http://kessler.com/', 59);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (91, 'suscipit', 'es', 1, 'http://mraz.info/', 12);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (19, 'tempora', 'fr', 0, 'http://www.bradtke.com/', 99);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (93, 'ut', 'es', 1, 'http://sawayn.com/', 26);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (54, 'vel', 'it', 0, 'http://danielkohler.org/', 57);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (51, 'veniam', 'fr', 0, 'http://wildermanreichel.com/', 96);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (60, 'vero', 'es', 1, 'http://schaden.com/', 46);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (13, 'vitae', 'cn', 1, 'http://www.jenkinsgrant.com/', 95);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (75, 'voluptas', 'pt', 0, 'http://boylejaskolski.info/', 25);
INSERT INTO `configuration` (`user_id`, `parol`, `language`, `verification`, `url_adress`, `visible_id`) VALUES (99, 'voluptatem', 'ru', 0, 'http://windler.com/', 95);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Adolphus', 'Rath', 'npurdy@example.com', '(417)952-7943x0339', '2014-01-18 21:24:18', '2018-04-07 23:27:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Erna', 'King', 'gusikowski.kayleigh@example.net', '(453)560-3459x05049', '2016-09-24 18:52:26', '2010-06-08 12:31:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Dorian', 'Monahan', 'orval.hermiston@example.org', '(753)531-1398x196', '2011-04-01 00:41:24', '2013-01-10 02:00:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Caleigh', 'Gislason', 'berta67@example.com', '1-168-696-5521x554', '2013-08-25 10:47:48', '2020-01-27 07:12:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Clinton', 'Baumbach', 'pblick@example.org', '052-063-3765x86450', '2012-04-02 08:35:24', '2017-07-25 18:18:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Antonietta', 'Lesch', 'denesik.vivian@example.org', '1-912-376-3204x1969', '2011-09-02 12:01:07', '2016-11-24 19:29:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Mabelle', 'Marquardt', 'saige.heidenreich@example.org', '784-853-3513', '2012-02-21 08:24:04', '2018-08-11 00:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Alyson', 'Veum', 'walter.dana@example.org', '123.288.8507', '2015-02-21 08:53:37', '2013-04-18 19:05:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Hillary', 'Kunde', 'terrell99@example.net', '1-885-879-5673x55309', '2010-12-15 14:31:15', '2011-05-17 15:52:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Helen', 'Wehner', 'sreichel@example.com', '(821)526-1177x112', '2018-05-04 13:41:07', '2019-03-13 04:26:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Arlie', 'Wilkinson', 'kenna48@example.net', '809-881-9392x15242', '2020-02-11 18:53:25', '2010-06-15 01:04:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Reese', 'Price', 'jziemann@example.org', '09634847821', '2011-07-13 22:22:03', '2012-10-05 01:52:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Moises', 'Simonis', 'litzy45@example.net', '711-682-4026', '2013-11-24 16:05:54', '2016-04-28 02:15:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Carolanne', 'Nolan', 'kihn.eliezer@example.net', '+44(1)7487362045', '2016-10-19 08:21:45', '2012-06-01 18:21:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Everett', 'Lemke', 'ohilll@example.org', '(361)144-0485', '2011-02-14 01:39:29', '2010-09-23 13:03:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Robyn', 'Hammes', 'gdach@example.org', '566-458-7468x27418', '2019-11-14 18:37:46', '2011-12-25 06:16:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Corine', 'Oberbrunner', 'runolfsdottir.toby@example.net', '(365)288-0938x9450', '2016-10-23 21:36:19', '2018-06-14 12:43:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Gene', 'Kulas', 'joey.runte@example.net', '732-369-0234', '2014-03-12 06:28:09', '2011-03-15 22:55:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jovani', 'Satterfield', 'ryan.kunze@example.com', '1-507-865-1361x66682', '2014-10-03 22:01:43', '2017-06-01 12:52:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Joanny', 'Veum', 'madaline.mosciski@example.net', '03647698719', '2019-04-17 07:31:23', '2019-03-07 23:43:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Sherwood', 'Braun', 'ihyatt@example.net', '1-126-124-9304', '2017-03-06 09:10:43', '2010-08-05 08:29:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Judy', 'Kuhn', 'hammes.mina@example.org', '05646564133', '2016-04-05 13:03:00', '2016-03-22 10:19:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Freeda', 'Zemlak', 'mercedes.gutmann@example.net', '(674)050-0857', '2014-01-24 19:48:55', '2010-08-24 02:08:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Jensen', 'Gislason', 'providenci.rempel@example.net', '(072)118-1104x60671', '2012-10-16 17:02:19', '2018-10-31 01:25:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Pearlie', 'Krajcik', 'kailee77@example.net', '923-059-0945x49214', '2018-10-08 18:01:50', '2011-03-23 19:10:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Carlee', 'Jerde', 'ocummerata@example.net', '(551)763-9487x228', '2015-08-01 10:40:30', '2012-03-19 01:15:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Ward', 'Gottlieb', 'mante.mckenna@example.org', '(750)619-0440x0643', '2016-10-11 09:31:52', '2017-12-09 03:31:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Krystal', 'Kub', 'clara32@example.net', '781.114.0191x97714', '2017-08-11 16:53:00', '2013-04-07 11:41:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Khalil', 'Donnelly', 'ipowlowski@example.com', '514-488-6059x11790', '2014-12-07 04:10:48', '2011-12-02 19:53:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Scotty', 'Cronin', 'garland.lemke@example.com', '08196006532', '2012-06-24 18:10:54', '2015-07-15 02:18:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Horacio', 'Kulas', 'llabadie@example.org', '1-531-097-4182x8929', '2014-09-14 20:05:06', '2014-05-15 22:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Henriette', 'McGlynn', 'douglas.dolly@example.org', '+58(7)8621443971', '2019-12-23 01:35:12', '2013-11-16 13:29:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Eloise', 'Larson', 'minerva88@example.com', '09182112257', '2016-07-27 05:19:10', '2012-06-21 21:00:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Ross', 'Jerde', 'zwill@example.net', '(806)912-6555', '2013-02-19 00:31:01', '2012-01-12 03:16:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Morton', 'Collier', 'srussel@example.org', '02985554095', '2015-02-08 05:59:43', '2013-02-19 15:31:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Eleazar', 'Dare', 'lakin.lempi@example.org', '04848655582', '2010-10-03 16:05:50', '2016-01-28 02:45:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Spencer', 'Leuschke', 'kayla68@example.com', '073-499-0779', '2014-01-02 02:06:46', '2016-02-28 00:50:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Mertie', 'Rogahn', 'jaydon.little@example.com', '1-967-987-8647x234', '2017-02-01 14:24:11', '2017-11-03 09:55:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Ervin', 'Daugherty', 'uwitting@example.net', '179.642.8759', '2012-12-03 23:01:57', '2013-05-21 07:16:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Cloyd', 'Lesch', 'jennifer39@example.org', '1-019-747-0580x3606', '2014-02-09 14:45:07', '2011-01-19 18:38:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Zora', 'Hagenes', 'xgreen@example.org', '+88(4)4659280971', '2014-11-01 09:01:46', '2018-10-31 21:56:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Ayana', 'Hansen', 'daugherty.lizeth@example.com', '411-017-9647', '2016-03-15 17:37:54', '2016-11-03 12:48:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Adele', 'Hermiston', 'streich.eric@example.net', '198-374-6990x014', '2016-01-01 19:36:53', '2016-05-20 11:38:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Baron', 'Pollich', 'toy.mateo@example.com', '180.981.1917', '2017-12-28 15:46:05', '2014-02-21 01:14:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Lorena', 'Mills', 'ross44@example.com', '105.446.7049x7920', '2015-05-03 15:13:55', '2014-07-20 18:39:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Madisyn', 'Stiedemann', 'daniel.floyd@example.com', '(516)951-7742', '2010-06-06 13:31:58', '2010-12-07 15:52:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Brandt', 'O\'Connell', 'jschuster@example.com', '656.904.7281x603', '2012-11-01 05:24:48', '2017-12-11 14:45:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Leanna', 'Luettgen', 'morgan.kihn@example.net', '(567)176-2372x107', '2016-07-28 13:38:44', '2014-12-29 06:44:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Janis', 'Ruecker', 'hollis.schaden@example.net', '1-759-821-6975x7846', '2018-02-23 12:32:06', '2019-01-22 13:21:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Boris', 'Hegmann', 'uhahn@example.net', '067-786-8672x81970', '2011-11-03 20:15:42', '2011-03-08 14:13:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Grace', 'Hansen', 'dschinner@example.net', '094-230-5041x3169', '2010-11-06 18:03:01', '2015-01-14 05:15:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Randi', 'Weissnat', 'shayna.brakus@example.com', '1-652-100-9848', '2019-05-29 13:58:20', '2016-05-26 06:25:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Therese', 'Herman', 'lue.sanford@example.com', '1-110-891-8557x886', '2018-02-08 03:46:06', '2013-07-12 20:46:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Mercedes', 'Baumbach', 'hayes.allison@example.net', '(135)627-5813x0542', '2017-07-22 06:09:08', '2018-04-18 03:36:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Dixie', 'Nicolas', 'boyd.predovic@example.net', '1-840-063-0191x63459', '2016-04-16 11:04:13', '2018-10-22 23:30:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Sally', 'Nicolas', 'hegmann.rebekah@example.org', '1-664-018-7710', '2018-10-21 05:10:54', '2019-11-09 11:49:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Dariana', 'Osinski', 'langosh.ana@example.net', '1-943-332-7844x775', '2012-03-24 14:11:10', '2018-01-06 20:35:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Luz', 'Cassin', 'crooks.geovanny@example.org', '+95(7)9549329441', '2016-08-25 22:10:29', '2015-04-28 21:17:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Tillman', 'Kuhn', 'eliza.jerde@example.com', '700.645.7855x891', '2017-01-16 18:15:05', '2012-01-14 08:47:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Adolf', 'Corwin', 'jfunk@example.net', '1-547-274-9301', '2013-01-25 18:10:15', '2019-01-15 06:05:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Janae', 'Walter', 'gibson.nathanael@example.net', '118.642.6712', '2016-01-06 22:58:55', '2011-12-18 17:31:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Theresa', 'Effertz', 'lockman.clementina@example.net', '05059519096', '2015-03-21 02:01:53', '2016-03-10 06:46:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Mercedes', 'Ebert', 'spencer.destin@example.net', '510.666.1417x126', '2010-08-08 17:46:42', '2015-01-11 03:15:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Heather', 'Buckridge', 'flegros@example.org', '(775)950-9527', '2019-03-08 10:51:12', '2015-06-04 06:24:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Amanda', 'Hessel', 'mquigley@example.org', '179-142-2316', '2016-06-15 14:29:50', '2019-01-04 04:38:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Frederic', 'Kuhic', 'berge.alphonso@example.net', '625.799.5385', '2013-01-15 13:50:28', '2015-08-17 18:45:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Julianne', 'Littel', 'bernice34@example.net', '389-042-8129', '2015-04-28 21:01:00', '2019-12-28 10:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Destini', 'Schiller', 'schmeler.janae@example.net', '1-274-069-9849', '2013-08-22 05:57:09', '2015-04-30 13:50:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Jonas', 'Hettinger', 'herbert60@example.com', '06335167708', '2016-01-31 06:11:00', '2010-11-01 16:24:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Stanton', 'Jenkins', 'hester02@example.com', '1-000-715-1650x49590', '2012-07-01 08:44:13', '2013-01-09 12:05:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Jessy', 'Runolfsson', 'kassulke.hunter@example.org', '1-028-053-0531x2045', '2011-03-25 23:05:05', '2018-03-20 23:29:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Francesca', 'Hayes', 'aida.corwin@example.com', '(357)038-7650x257', '2012-06-08 12:14:00', '2013-11-18 14:28:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Blanca', 'Reichel', 'senger.alysha@example.com', '09211016097', '2015-09-19 06:42:48', '2014-05-22 16:35:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Idella', 'Crist', 'monserrate16@example.com', '1-911-468-4262x182', '2014-10-05 08:55:49', '2018-09-05 15:07:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Brycen', 'Glover', 'runolfsson.aurore@example.org', '(406)991-5018x6320', '2013-05-23 01:58:05', '2018-07-11 12:27:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Felipa', 'Barrows', 'gjohnson@example.net', '(629)532-0652x545', '2017-11-20 20:18:31', '2017-04-24 12:50:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Ward', 'Stoltenberg', 'bahringer.fiona@example.com', '1-767-977-4920x5811', '2012-02-02 03:06:20', '2016-03-05 22:13:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Helmer', 'Flatley', 'grant.trent@example.com', '1-434-201-8827x681', '2017-08-01 17:40:21', '2019-01-15 10:37:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Christina', 'Robel', 'pollich.austen@example.com', '(590)805-6891x48139', '2010-09-22 03:20:50', '2016-12-01 18:17:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Hallie', 'Daniel', 'zella.hirthe@example.com', '+41(5)7405812941', '2018-01-15 05:29:22', '2017-12-23 15:49:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Arlene', 'Champlin', 'agleichner@example.com', '630-743-8506x68482', '2018-02-16 04:32:55', '2012-06-14 18:09:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Cooper', 'Tillman', 'sstiedemann@example.org', '1-262-245-5156x10802', '2015-07-28 03:10:12', '2019-08-17 11:10:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Alverta', 'Grady', 'remard@example.net', '1-712-966-1647', '2013-04-03 00:35:05', '2018-11-18 21:20:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Alva', 'Braun', 'ludie.rempel@example.org', '(534)711-3298x34253', '2013-06-08 01:48:21', '2014-05-19 10:54:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Pat', 'Ortiz', 'mwilliamson@example.com', '109-120-6263', '2018-07-13 15:18:44', '2018-09-06 11:55:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Maddison', 'Morar', 'sawayn.brielle@example.com', '+38(1)8751001284', '2019-04-01 09:55:02', '2016-01-18 19:25:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Tatyana', 'Klocko', 'macejkovic.jerel@example.org', '247-648-9441x73701', '2017-12-02 19:42:21', '2011-03-20 16:51:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Darrick', 'Ryan', 'mcronin@example.com', '1-855-698-1910', '2013-09-23 23:14:12', '2020-02-08 16:15:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Lucious', 'Hickle', 'jordyn06@example.org', '605.598.1852x05266', '2012-03-01 03:03:50', '2011-12-17 10:16:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Nels', 'Huel', 'leonel.donnelly@example.net', '1-186-118-0530', '2012-05-29 10:17:17', '2015-03-29 12:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Ruby', 'Larkin', 'judge01@example.net', '091.391.5643x7057', '2015-04-27 10:40:26', '2014-12-25 15:01:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Maegan', 'Legros', 'chanel68@example.org', '1-703-365-1605', '2012-05-15 21:01:25', '2013-07-11 15:21:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Claudine', 'Gerhold', 'hahn.gilda@example.org', '(545)756-9946x1600', '2016-07-11 18:47:33', '2017-08-05 09:58:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Jamey', 'Volkman', 'iabshire@example.org', '09089734130', '2013-10-13 23:19:25', '2020-02-06 13:10:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Dianna', 'West', 'thiel.annalise@example.net', '1-733-829-1170', '2016-02-23 17:31:18', '2010-07-26 13:46:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Amber', 'Kirlin', 'angelita46@example.com', '267.656.4805x667', '2015-11-28 18:09:43', '2015-11-19 22:48:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Sylvan', 'Cormier', 'marina19@example.org', '623.167.2546', '2016-05-27 05:15:55', '2015-05-31 04:40:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Roger', 'Bailey', 'pparisian@example.com', '+64(8)0291547732', '2010-11-19 16:40:14', '2019-10-30 12:54:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Alphonso', 'Brekke', 'cecile.thompson@example.net', '700-139-5844', '2015-06-15 16:39:57', '2018-01-26 12:10:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Amelie', 'Cronin', 'chermann@example.com', '+09(3)0166431901', '2012-08-08 15:34:38', '2013-12-01 16:11:12');


#
# TABLE STRUCTURE FOR: visibility
#

DROP TABLE IF EXISTS `visibility`;

CREATE TABLE `visibility` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `viz` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `visibility` (`id`, `viz`) VALUES (1, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (2, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (3, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (4, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (5, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (6, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (7, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (8, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (9, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (10, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (11, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (12, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (13, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (14, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (15, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (16, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (17, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (18, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (19, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (20, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (21, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (22, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (23, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (24, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (25, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (26, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (27, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (28, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (29, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (30, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (31, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (32, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (33, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (34, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (35, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (36, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (37, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (38, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (39, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (40, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (41, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (42, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (43, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (44, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (45, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (46, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (47, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (48, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (49, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (50, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (51, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (52, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (53, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (54, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (55, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (56, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (57, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (58, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (59, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (60, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (61, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (62, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (63, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (64, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (65, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (66, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (67, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (68, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (69, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (70, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (71, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (72, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (73, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (74, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (75, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (76, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (77, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (78, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (79, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (80, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (81, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (82, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (83, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (84, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (85, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (86, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (87, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (88, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (89, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (90, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (91, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (92, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (93, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (94, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (95, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (96, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (97, 'VisibleForFriends');
INSERT INTO `visibility` (`id`, `viz`) VALUES (98, 'Visible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (99, 'NonVisible');
INSERT INTO `visibility` (`id`, `viz`) VALUES (100, 'Visible');


