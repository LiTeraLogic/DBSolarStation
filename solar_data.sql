-- Generation time: Sun, 19 Jul 2020 06:47:24 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `battary_mode`;
CREATE TABLE `battary_mode` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `pwr_spent` double DEFAULT NULL COMMENT 'Мощность затраченная',
  PRIMARY KEY (`id`),
  KEY `fk_battary_mode_user_id` (`user_id`),
  CONSTRAINT `fk_battary_mode_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `battary_mode` VALUES ('1','101','1990-02-02 06:20:17','1999-09-12 01:16:10','2'),
('2','102','2016-08-15 17:30:09','1975-03-19 07:00:16','9'),
('3','104','2006-04-24 04:32:26','1999-08-05 09:59:16','9'),
('4','105','2009-05-07 11:36:52','2005-06-21 13:34:04','7'),
('5','106','1980-06-03 03:16:06','2012-07-13 11:35:21','2'),
('6','107','1984-05-12 14:17:43','1983-06-07 21:54:31','9'),
('7','108','1974-03-18 18:18:39','1992-06-16 21:13:10','4'),
('8','110','2011-07-05 10:32:11','1986-02-12 17:21:06','1'),
('9','112','2018-08-12 01:59:16','2003-10-29 23:17:52','5'),
('10','113','2008-05-24 02:47:16','2003-03-09 03:13:11','2'),
('11','114','2000-11-24 15:32:10','2000-07-12 18:04:36','6'),
('12','115','2013-09-23 23:20:37','1988-03-26 14:09:29','9'),
('13','116','1999-06-18 07:50:23','1989-09-22 06:46:54','7'),
('14','118','1981-07-10 05:11:16','1995-03-26 17:18:31','6'),
('15','119','2001-02-28 01:11:18','2012-12-22 09:01:43','1'),
('16','120','2018-12-27 18:55:22','1971-03-19 03:37:42','2'),
('17','121','2009-12-18 13:35:20','1973-12-20 17:48:20','2'),
('18','123','2000-05-02 22:30:35','2010-07-21 23:18:43','3'),
('19','127','1995-07-14 18:43:01','1998-01-31 13:04:30','6'),
('20','128','2004-08-17 23:16:25','2014-07-27 07:54:48','7'),
('21','129','1992-10-18 13:10:00','1993-03-22 07:12:50','4'),
('22','130','1997-07-06 20:16:55','1996-09-09 20:15:55','8'),
('23','132','1979-03-29 02:38:07','1988-08-31 00:04:30','7'),
('24','134','1993-12-19 22:39:56','2000-06-16 23:35:11','9'),
('25','136','1974-09-04 09:23:39','1990-11-14 01:52:13','4'),
('26','139','1976-06-19 15:48:47','1978-02-24 00:08:01','5'),
('27','140','2001-02-15 23:53:09','2012-07-07 11:42:19','1'),
('28','144','1994-01-08 13:42:39','1999-08-16 00:50:48','6'),
('29','146','2018-09-20 18:57:18','2011-06-07 00:09:30','5'),
('30','147','1980-10-08 12:53:29','2002-11-26 22:03:07','3'),
('31','148','1981-02-16 20:50:06','2007-07-19 02:01:32','9'),
('32','149','1991-07-19 06:31:27','1971-10-17 16:25:40','4'),
('33','150','1982-09-22 14:43:31','1982-12-30 07:57:16','5'),
('34','152','2000-08-20 22:00:50','1995-11-19 05:31:29','4'),
('35','153','2003-05-06 07:23:37','1985-03-29 15:49:01','4'),
('36','154','2002-10-30 14:50:14','1983-06-10 10:51:23','5'),
('37','155','2014-04-01 11:08:24','1977-08-04 15:24:01','4'),
('38','156','1987-06-07 12:14:05','2006-08-11 07:35:29','1'),
('39','157','2013-10-01 03:02:15','1978-06-18 13:53:40','7'),
('40','158','2003-03-01 05:07:38','1988-02-15 10:55:34','5'),
('41','160','2006-08-07 13:47:31','1986-02-10 06:37:11','9'),
('42','162','2016-02-04 20:13:51','2006-10-06 10:31:19','5'),
('43','165','2003-11-02 02:38:08','1981-03-12 02:00:15','6'),
('44','166','1990-04-13 19:51:11','1975-09-16 03:16:07','3'),
('45','167','2012-08-06 11:55:57','1980-04-25 20:40:00','9'),
('46','168','1996-09-29 02:58:28','2008-11-08 03:33:58','8'),
('47','170','1977-04-12 20:10:49','1995-11-21 17:45:40','9'),
('48','171','2015-12-05 22:40:12','1993-02-26 02:43:41','2'),
('49','174','1983-08-01 02:32:02','2007-12-06 09:20:54','1'),
('50','177','2011-12-19 20:49:05','2016-07-02 17:55:38','8'); 


DROP TABLE IF EXISTS `installations`;
CREATE TABLE `installations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `installations_user_id_name_idx` (`user_id`,`name`),
  CONSTRAINT `fk_installations_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `installations` VALUES ('1','101','vel'),
('2','102','sint'),
('3','104','voluptatem'),
('4','105','et'),
('5','106','molestiae'),
('6','107','voluptatem'),
('7','108','dolorem'),
('8','110','placeat'),
('9','112','ab'),
('10','113','repellat'),
('11','114','ad'),
('12','115','quia'),
('13','116','rerum'),
('14','118','fuga'),
('15','119','soluta'),
('16','120','sint'),
('17','121','libero'),
('18','123','non'),
('19','127','nihil'),
('20','128','et'),
('21','129','ratione'),
('22','130','sit'),
('23','132','voluptatem'),
('24','134','minima'),
('25','136','autem'),
('26','139','sit'),
('27','140','alias'),
('28','144','molestias'),
('29','146','repellendus'),
('30','147','officia'),
('31','148','quia'),
('32','149','dolores'),
('33','150','et'),
('34','152','praesentium'),
('35','153','ad'),
('36','154','non'),
('37','155','sequi'),
('38','156','soluta'),
('39','157','dolorem'),
('40','158','inventore'),
('41','160','quaerat'),
('42','162','vero'),
('43','165','aut'),
('44','166','corporis'),
('45','167','unde'),
('46','168','nisi'),
('47','170','temporibus'),
('48','171','perspiciatis'),
('49','174','aliquid'),
('50','177','vitae'),
('51','179','placeat'),
('52','181','voluptas'),
('53','182','in'),
('54','189','necessitatibus'),
('55','190','omnis'),
('56','191','illum'); 


DROP TABLE IF EXISTS `measurements`;
CREATE TABLE `measurements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_id` bigint(20) unsigned NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'YYYY-MM-DD HH:MM:SS',
  `pwr_generated` double DEFAULT NULL COMMENT 'Мощность выработанная',
  `pwr_spent` double DEFAULT NULL COMMENT 'Мощность затраченная',
  PRIMARY KEY (`id`),
  KEY `fk_measurements_name_id` (`name_id`),
  CONSTRAINT `fk_measurements_name_id` FOREIGN KEY (`name_id`) REFERENCES `installations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `measurements` VALUES ('1','1','1999-07-20 08:51:40','34163.659572803','52.5233'),
('2','2','2008-05-16 11:42:23','201960.22302511','32365782.299765'),
('3','3','1970-03-11 11:50:40','360.349','332.0347356'),
('4','4','1971-02-03 04:58:21','2298.9737249','64764819.33'),
('5','5','2004-07-06 11:40:23','21228.583094','8177.3472813'),
('6','6','2018-11-16 18:28:19','26292.44','24148522.2'),
('7','7','1990-10-31 05:15:31','3.12310744','288453.589'),
('8','8','1999-02-13 16:34:30','48472607.770216','4'),
('9','9','1994-08-10 22:50:23','0','15.206'),
('10','10','2011-09-01 22:40:33','104.083','0'),
('11','11','2018-09-11 09:31:38','132.4479','643665334.8'),
('12','12','1999-09-18 20:03:36','6757','78437063.598964'),
('13','13','2020-02-12 23:45:15','20.576239','800617.72'),
('14','14','1971-11-23 21:46:52','4163741.24','24304559.17'),
('15','15','2001-03-02 22:57:59','157305.3994','0'),
('16','16','1993-01-30 22:28:18','823245143.84','0'),
('17','17','2007-07-09 14:19:46','1659.4','333180'),
('18','18','2014-03-15 20:52:35','5048376.4','16.34'),
('19','19','2004-08-16 07:33:34','7531488','248170.40037529'),
('20','20','1983-05-07 20:16:30','22031.38899','0'),
('21','21','2017-07-08 14:16:27','195148692.87','5526861.37405'),
('22','22','2013-12-24 10:17:08','67557679.30734','314093.03'),
('23','23','1979-04-10 15:26:45','21105239.95498','25482.7994034'),
('24','24','1971-01-23 07:56:51','3076649.76','1456817'),
('25','25','2013-12-25 05:54:27','4635.9','120722425.7'),
('26','26','1988-06-15 09:05:03','0','452143.67068273'),
('27','27','1973-10-30 10:37:28','4.23681574','3'),
('28','28','1973-12-08 09:43:47','47186','42768.967'),
('29','29','2002-09-26 18:25:14','27.3781651','2110.451'),
('30','30','1979-12-19 14:25:35','4.17','1086721.1319306'),
('31','31','2016-02-07 13:30:10','447756','751263.04067202'),
('32','32','2008-10-29 23:56:33','26861','313626206.5'),
('33','33','2004-03-15 01:23:02','0','407995.19883'),
('34','34','1983-04-17 21:18:09','27993.050539476','934.9845'),
('35','35','1974-01-29 05:12:44','54268695.3454','9.019'),
('36','36','1992-04-30 00:19:57','17298579.568501','7.5986'),
('37','37','2016-03-01 14:58:28','555555974.02126','2262.1815'),
('38','38','1975-07-13 10:22:48','4.587779885','400.254'),
('39','39','1984-02-21 18:40:11','0','721568397.95272'),
('40','40','1986-11-30 04:20:05','115094.2498','241.040425497'),
('41','41','2003-03-01 09:55:20','344086928.88258','6.3'),
('42','42','2005-10-21 05:58:21','601499.04','5.6076597'),
('43','43','2007-02-12 06:16:34','9717902.66','0'),
('44','44','1998-02-20 12:21:28','117.27719173','114197.76076'),
('45','45','2005-03-07 14:27:23','256119.14567','7.885845'),
('46','46','2017-06-04 04:57:25','39.441','0'),
('47','47','1977-05-26 23:24:37','6.98102225','30636.316255'),
('48','48','2014-08-31 15:05:20','105767.56221428','0'),
('49','49','2016-09-21 21:19:23','0','6520616.5906236'),
('50','50','2017-04-19 12:35:08','0','96.9'); 


DROP TABLE IF EXISTS `mechanism_types`;
CREATE TABLE `mechanism_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mechanism_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `mechanism_types` VALUES ('1','tenetur'),
('2','optio'),
('3','ut'),
('4','nostrum'),
('5','illo'); 


DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `photo_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `fk_media_photo_id` (`photo_id`),
  CONSTRAINT `fk_media_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`),
  CONSTRAINT `fk_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` VALUES ('101','101','1'),
('102','102','2'),
('103','104','3'),
('104','105','4'),
('105','106','5'),
('106','107','6'),
('107','108','7'),
('108','110','8'),
('109','112','9'),
('110','113','10'),
('111','114','11'),
('112','115','12'),
('113','116','13'),
('114','118','14'),
('115','119','15'),
('116','120','16'),
('117','121','17'),
('118','123','18'),
('119','127','19'),
('120','128','20'),
('121','129','21'),
('122','130','22'),
('123','132','23'),
('124','134','24'),
('125','136','25'),
('126','139','26'),
('127','140','27'),
('128','144','28'),
('129','146','29'),
('130','147','30'),
('131','148','31'),
('132','149','32'),
('133','150','33'),
('134','152','34'),
('135','153','35'),
('136','154','36'),
('137','155','37'),
('138','156','38'),
('139','157','39'),
('140','158','40'),
('141','160','41'),
('142','162','42'),
('143','165','43'),
('144','166','44'),
('145','167','45'),
('146','168','46'),
('147','170','47'),
('148','171','48'),
('149','174','49'),
('150','177','50'),
('151','179','1'),
('152','181','2'),
('153','182','3'),
('154','189','4'),
('155','190','5'),
('156','191','6'),
('157','193','7'),
('158','195','8'),
('159','197','9'),
('160','198','10'),
('161','199','11'); 


DROP TABLE IF EXISTS `methods_orient`;
CREATE TABLE `methods_orient` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_orient` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `methods_orient` VALUES ('1','nihil'),
('2','omnis'),
('3','aspernatur'),
('4','consequatur'),
('5','iste'); 


DROP TABLE IF EXISTS `name_address`;
CREATE TABLE `name_address` (
  `name_id` bigint(20) unsigned NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `name_id` (`name_id`),
  UNIQUE KEY `address` (`address`),
  KEY `name_address_name_id_idx` (`name_id`),
  CONSTRAINT `fk_name_address_name_id` FOREIGN KEY (`name_id`) REFERENCES `installations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `name_address` VALUES ('5',''),
('19','1'),
('10','162'),
('9','1675'),
('6','19909'),
('56','207192'),
('35','207821'),
('11','212288116'),
('28','22388'),
('30','234380'),
('39','2405137'),
('25','2554'),
('32','26251265'),
('21','2713290'),
('53','28534'),
('47','30'),
('46','30662256'),
('3','36'),
('4','366543'),
('33','406'),
('12','415014'),
('50','4188'),
('49','4199'),
('42','502'),
('17','52'),
('55','545'),
('54','5452518'),
('27','55593'),
('37','5567'),
('38','56218891'),
('40','565'),
('52','6'),
('26','612363'),
('24','62896'),
('23','6578'),
('45','66'),
('36','6698'),
('13','67'),
('41','683'),
('43','7'),
('7','70'),
('48','748282584'),
('14','76'),
('34','78566'),
('44','80477'),
('2','83'),
('22','8553835'),
('18','8584290'),
('15','8823021'),
('31','88626'),
('29','9'),
('16','928'),
('20','92951233'),
('1','95103'),
('8','98'),
('51','98638313'); 


DROP TABLE IF EXISTS `open_mode`;
CREATE TABLE `open_mode` (
  `user_id` bigint(20) unsigned NOT NULL,
  `is_open` bit(1) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_open_mode_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `open_mode` VALUES ('101','1'),
('102','1'),
('104','1'),
('105','1'),
('106','0'),
('107','1'),
('108','1'),
('110','1'),
('112','0'),
('113','0'),
('114','0'),
('115','0'),
('116','1'),
('118','1'),
('119','0'),
('120','1'),
('121','0'),
('123','0'),
('127','0'),
('128','1'),
('129','0'),
('130','1'),
('132','0'),
('134','0'),
('136','1'),
('139','0'),
('140','0'),
('144','1'),
('146','1'),
('147','0'),
('148','1'),
('149','0'),
('150','1'),
('152','1'),
('153','1'),
('154','0'),
('155','0'),
('156','1'),
('157','1'),
('158','1'),
('160','1'),
('162','1'),
('165','0'),
('166','1'),
('167','1'),
('168','1'),
('170','0'),
('171','1'),
('174','1'),
('177','0'),
('179','0'),
('181','0'),
('182','0'),
('189','1'),
('190','1'),
('191','1'),
('193','1'),
('195','0'),
('197','1'),
('198','1'),
('199','1'); 


DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Путь до файла',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `photo` VALUES ('1','tmp//3f1f8b34955f426721d817278ea2d0be.jpg'),
('2','tmp//cce436fe7f83a619845b59b2e3661abd.jpg'),
('3','tmp//433598b91f6de021afa1742985349782.jpg'),
('4','tmp//dec9091b84fa9919e86e22661446270f.jpg'),
('5','tmp//9d561ad04b56e9705f5d682702b82fda.jpg'),
('6','tmp//7ac9ae7e07a1e88d8d42c9d11fd369ac.jpg'),
('7','tmp//2cb0142a88a7579be3d46786e51ec6f5.jpg'),
('8','tmp//0f2ba27fbf27344c38dd763f3e62b0a7.jpg'),
('9','tmp//65bed2f0551fdd1f4b45c16e6a4eb6f5.jpg'),
('10','tmp//7f38bb611bc9df1a04a0499ad09af7e6.jpg'),
('11','tmp//a733780f1a80a1b55e8389da7c1fe18b.jpg'),
('12','tmp//7998603356ee1f20e49af670e5aa9ee5.jpg'),
('13','tmp//c824d73a90c179d35b6361e9dd112c48.jpg'),
('14','tmp//5701f466b97c0735e2b6dd275bd0d129.jpg'),
('15','tmp//45a9a666f5378eeedc548cea2bc7bdfd.jpg'),
('16','tmp//99ac230b9041041d1ec858d412081d15.jpg'),
('17','tmp//de1708499df1403f213dfd700feb6408.jpg'),
('18','tmp//62832c0ebcd85086217a54ea228671f7.jpg'),
('19','tmp//e1a393efae03ff9b8c6f79f008a87c8f.jpg'),
('20','tmp//648cad14528e7ed113d752049846aed0.jpg'),
('21','tmp//454169bd9a2d7c668e328b8ea649452a.jpg'),
('22','tmp//355c8c9660ba37be01fcb361b69c9c3f.jpg'),
('23','tmp//0c35a55d8abb5b2132e899abe548fe16.jpg'),
('24','tmp//fe40e569d402eea557de6fd7ae199804.jpg'),
('25','tmp//21f8741bdc3fbc61d42e6204c914b3eb.jpg'),
('26','tmp//5934769513d3f3e89cc77241bc760129.jpg'),
('27','tmp//bf0509897e2cb37c5ad82148d0243e88.jpg'),
('28','tmp//c8913b8590b1dfa2f62a558096d54dc2.jpg'),
('29','tmp//9d2b5b24592ca0a133b3a23a17de1ceb.jpg'),
('30','tmp//a9d4b1a9c7679a501ab64fcdb31a159a.jpg'),
('31','tmp//fffccdd27f09fd6bd8a0f103e0665b5b.jpg'),
('32','tmp//9ab6c094bd76dbbce5ac3631501093ba.jpg'),
('33','tmp//76a0ef426f82fb7538e8a9c51b7e4f3d.jpg'),
('34','tmp//82aeae0f2bc17782552ab64cac59a57e.jpg'),
('35','tmp//2e4177d4fbb8227f338fe401cafa4c82.jpg'),
('36','tmp//3eb530e4d5190a1b74f5903d8a734554.jpg'),
('37','tmp//2c02f5933a2b95213c89008d128b380f.jpg'),
('38','tmp//c9fe28b5678e7b6706171ec246f78a22.jpg'),
('39','tmp//1ae77fcb4efad1e3a66286e930668452.jpg'),
('40','tmp//9c33caa27243a1a1b32937d56854b463.jpg'),
('41','tmp//bf1139b494dc47968d085c4b73a58959.jpg'),
('42','tmp//eed8d6b396c033e8f6de212be87125af.jpg'),
('43','tmp//8e00ef6edd015defcb2e3e46f6cb0574.jpg'),
('44','tmp//4fafbacc9258c7216fb33acfc6fb5625.jpg'),
('45','tmp//72259a7c790b7410e4424e094394ccc6.jpg'),
('46','tmp//a9c28f3b037c0ff93414400bd3d3454e.jpg'),
('47','tmp//fd8c8e3f7027379663366510e4b88dd4.jpg'),
('48','tmp//74bb7eeb27acdffbba9cb8be22e5b06c.jpg'),
('49','tmp//19769a25d04bc534c2ccd8b04c68f6cb.jpg'),
('50','tmp//d5e5a0a2cd38301100b78b1a36d2cab9.jpg'); 


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `birthday` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `homeplace` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Местонахождение электростанции',
  `photo_id` bigint(20) unsigned NOT NULL COMMENT 'Фото на профиле',
  UNIQUE KEY `user_id` (`user_id`),
  KEY `profiles_homeplace_idx` (`homeplace`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `fk_profiles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` VALUES ('101','Buddy','Abernathy','2010-12-11','1984-10-15 11:13:22','South','101'),
('102','Eryn','Morissette','1996-03-06','1988-06-29 15:13:51','North','102'),
('104','Hubert','Marquardt','2014-01-16','2011-10-25 13:14:40','Port','103'),
('105','Thea','Leuschke','1998-04-09','1990-06-30 06:32:21','Port','104'),
('106','Isidro','Veum','1986-06-30','2001-07-11 22:47:42','Port','105'),
('107','Daryl','Hand','2013-04-04','1981-05-16 13:32:13','New','106'),
('108','Joan','Crist','2016-02-09','2003-12-06 00:07:41','North','107'),
('110','Isaiah','Kuhlman','1981-05-11','2014-12-28 23:36:47','New','108'),
('112','Reva','Bailey','2001-07-02','1989-06-12 00:41:32','West','109'),
('113','Kelsi','Schaden','1985-04-22','2005-09-24 23:42:13','Lake','110'),
('114','Victoria','Donnelly','2002-02-12','1982-08-12 01:48:44','Port','111'),
('115','Chanelle','Halvorson','2003-11-01','1972-05-03 15:05:38','East','112'),
('116','Jovan','Waters','2001-10-17','2012-02-23 20:05:25','Lake','113'),
('118','Neva','Bernhard','1990-07-31','2001-07-13 03:34:00','South','114'),
('119','Randi','Kris','1974-09-10','1974-02-17 17:53:14','East','115'),
('120','Robert','Moore','2010-01-31','1995-02-05 02:25:14','West','116'),
('121','Andreane','Moore','1981-09-04','2009-03-13 08:12:31','South','117'),
('123','Elise','Murazik','2013-04-01','1979-03-10 16:04:11','South','118'),
('127','Martin','Hane','1981-06-09','2012-10-22 16:46:12','Lake','119'),
('128','Rosamond','Barrows','2017-01-08','1980-12-05 10:33:19','South','120'),
('129','Abdiel','Dicki','1976-12-05','1987-04-18 05:01:45','Lake','121'),
('130','Electa','Wiegand','1995-12-18','2007-11-27 22:33:06','Port','122'),
('132','Marilou','Kub','1987-02-06','2018-10-25 17:29:21','West','123'),
('134','Ian','Jerde','2016-07-21','1972-01-26 03:27:09','West','124'),
('136','Colin','Jenkins','2018-11-14','1972-03-01 14:12:49','East','125'),
('139','Roscoe','Olson','2007-12-09','2019-10-12 02:02:59','Lake','126'),
('140','Denis','Ritchie','1989-11-27','2019-04-14 17:03:25','North','127'),
('144','Jillian','Moore','1983-10-04','2010-10-19 04:22:06','Lake','128'),
('146','Rhianna','Bogan','2010-04-28','1994-01-03 11:53:16','North','129'),
('147','Constance','Heaney','2018-12-14','2013-03-23 17:36:51','South','130'),
('148','Shemar','Hyatt','2016-03-28','1984-02-09 09:31:06','South','131'),
('149','Rachelle','Wolf','1986-04-24','1986-05-25 06:19:20','South','132'),
('150','Afton','Bernier','1988-07-28','1977-03-12 03:29:46','Port','133'),
('152','Dandre','Kohler','1999-11-17','1970-04-30 09:23:52','South','134'),
('153','Arlene','Wunsch','2013-08-13','2008-05-30 16:38:57','North','135'),
('154','Travon','Halvorson','1987-11-21','1988-06-12 21:36:41','New','136'),
('155','Keegan','Schmeler','1996-03-19','2008-11-26 15:15:46','North','137'),
('156','Ashlynn','McDermott','1983-09-03','2000-09-26 22:43:35','Lake','138'),
('157','Clifton','Purdy','1978-03-10','1976-08-07 11:15:45','South','139'),
('158','Magnolia','Collier','1994-08-12','1970-10-23 05:06:52','North','140'),
('160','Trycia','Langosh','1972-02-01','1972-04-29 22:49:52','New','141'),
('162','Giuseppe','Kohler','1979-08-29','1990-11-11 19:49:02','South','142'),
('165','Maurice','Walter','2016-02-03','1993-12-20 07:57:28','Port','143'),
('166','Leola','Cormier','2001-01-29','1985-05-12 01:04:21','West','144'),
('167','Skyla','Kuhlman','1999-04-03','1978-05-09 22:42:13','East','145'),
('168','Jamar','Heller','1993-11-24','1991-03-29 20:14:41','East','146'),
('170','Graciela','Labadie','1982-11-18','2018-03-17 04:35:28','West','147'),
('171','Stephen','Kshlerin','2014-06-03','1999-11-17 14:06:59','North','148'),
('174','Tia','Schmitt','1996-06-09','1983-03-23 19:49:35','North','149'),
('177','Shanel','Boehm','1976-07-01','1977-08-01 14:06:34','South','150'); 


DROP TABLE IF EXISTS `specifications`;
CREATE TABLE `specifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_id` bigint(20) unsigned NOT NULL,
  `method_orient_id` bigint(20) unsigned DEFAULT NULL,
  `mechanism_type_id` bigint(20) unsigned DEFAULT NULL,
  `cost` double unsigned DEFAULT NULL,
  `pwr_rated` double unsigned DEFAULT NULL COMMENT 'Номинальная мощность',
  `panel_nmbr` int(11) DEFAULT NULL COMMENT 'Кол-во панелей',
  PRIMARY KEY (`id`),
  KEY `fk_specifications_name_id` (`name_id`),
  KEY `fk_specifications_method_orient_id` (`method_orient_id`),
  KEY `fk_specifications_mechanism_type_id` (`mechanism_type_id`),
  CONSTRAINT `fk_specifications_mechanism_type_id` FOREIGN KEY (`mechanism_type_id`) REFERENCES `mechanism_types` (`id`),
  CONSTRAINT `fk_specifications_method_orient_id` FOREIGN KEY (`method_orient_id`) REFERENCES `methods_orient` (`id`),
  CONSTRAINT `fk_specifications_name_id` FOREIGN KEY (`name_id`) REFERENCES `installations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `specifications` VALUES ('1','1','1','1','3315.46861','7739684','5'),
('2','2','2','2','531816.32675856','787','2'),
('3','3','3','3','0.06890985','1903','2'),
('4','4','4','4','4334.1736097','2','5'),
('5','5','5','5','8897596.3641','634712602','9'),
('6','6','1','1','9328204.72','7694609','3'),
('7','7','2','2','4646.47371743','12876282','9'),
('8','8','3','3','1795685.1','21','2'),
('9','9','4','4','0','460','8'),
('10','10','5','5','54932436.947831','4','1'),
('11','11','1','1','446.1237657','53459','4'),
('12','12','2','2','17459529.8','759','8'),
('13','13','3','3','5','150','2'),
('14','14','4','4','136.534718','4647','5'),
('15','15','5','5','0','198','3'),
('16','16','1','1','52653774.1831','0','8'),
('17','17','2','2','0','3061399','9'),
('18','18','3','3','0','1736912','8'),
('19','19','4','4','174.2225','188','6'),
('20','20','5','5','18.912978','662','2'),
('21','21','1','1','0','41429456','7'),
('22','22','2','2','19161880.71906','589','7'),
('23','23','3','3','221645.423664','967624','5'),
('24','24','4','4','6.7','0','5'),
('25','25','5','5','121.2453','10','6'),
('26','26','1','1','0.05','76197','6'),
('27','27','2','2','12098.695048233','8078','3'),
('28','28','3','3','0','42','6'),
('29','29','4','4','211908677.84902','4','1'),
('30','30','5','5','14.99454','240','3'),
('31','31','1','1','4.1','6','7'),
('32','32','2','2','0','77','9'),
('33','33','3','3','235613567.68902','68','1'),
('34','34','4','4','3257.007382231','817','8'),
('35','35','5','5','9257.682180648','78355496','2'),
('36','36','1','1','84607.99138','60626','3'),
('37','37','2','2','37.322','49840','5'),
('38','38','3','3','482591481.2','2890','5'),
('39','39','4','4','116584108','0','6'),
('40','40','5','5','541.14921','37661211','9'),
('41','41','1','1','332272850.74208','686665','8'),
('42','42','2','2','38573404.74939','7','6'),
('43','43','3','3','0','464841709','4'),
('44','44','4','4','51873237.067','405892','1'),
('45','45','5','5','158664.281598','0','2'),
('46','46','1','1','2257642.9382071','3616467','1'),
('47','47','2','2','85795259','7830675','4'),
('48','48','3','3','2.463','499900','1'),
('49','49','4','4','554958.9434842','829','3'),
('50','50','5','5','3808017.1627428','809478','8'),
('51','51','1','1','0','771042','5'),
('52','52','2','2','10449470.2','295920452','7'),
('53','53','3','3','4.5','63756790','3'),
('54','54','4','4','0','9','3'),
('55','55','5','5','1.0488','426748','2'),
('56','56','1','1','0','458721','7'),
('57','1','2','2','9642.98','926300','4'),
('58','2','3','3','2.950361','744','4'),
('59','3','4','4','46970306.94','621','3'),
('60','4','5','5','411843.09527','4442','3'); 


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_login_idx` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` VALUES ('101','eos','glang@example.com','0172bb1cbffa927b8ec0b1fed1f73fbade060fe5','0'),
('102','delectus','ihartmann@example.net','5a5476a8a47b28c97a04004ad5d3bbb98c0478b9','464468'),
('104','aspernatur','savanna80@example.com','5226c8936897d149ee0142a9aaaeef1379d8edd4','467'),
('105','sit','jaida.terry@example.net','f03da898db2723950ea43f4640791d434e89641e','1'),
('106','eveniet','jaqueline60@example.net','7604414da9cdf70ffaeaad6fe2216b7ee2770694','196'),
('107','doloremque','fahey.alexandrine@example.net','ad9fce5f28c06e341e2884ff04a7c820184f6c58','382'),
('108','voluptatem','murphy.frederic@example.net','a3923da82ec466044834ce38c8f5941b318d0f55','48'),
('110','labore','dianna14@example.net','d0d48f485ee6c1d655931344078ef7685ee9cb1d','9'),
('112','animi','daphney.goldner@example.net','e42e8babf039f35d2e9f20afb726a45903e87030','594'),
('113','illo','abernathy.jacinto@example.net','3ba681e86a82a59bedd5ae4b5c8024f5d0ac85fa','958842'),
('114','eius','jbahringer@example.com','c83669b3cf13e4cece29b0553ef9902bda5c977f','459'),
('115','similique','efren92@example.com','5f13d24780fc302b38c3b16f409d680f70c4add5','41408'),
('116','ea','baumbach.marilyne@example.com','8e54a72c561fb2a9a08aca0a472740a24919a1d0','103'),
('118','facere','jayne.watsica@example.org','8803d6793d8d9629d1b50c0ca1007120d0790183','158'),
('119','et','whegmann@example.org','e04746e583650d2ebd3410e93f1d45a3dbe4b17b','810'),
('120','ea','sauer.rowena@example.org','ff60b483fc1f95297aed4cb7a6b00d1b59ff0f03','606342'),
('121','non','kiana.bogisich@example.com','a94d5bf5b14d119a229a32167b8be3b681ebfa1d','910730'),
('123','rerum','owyman@example.org','ec795699f619f48a6890fbcb687fc490123ac2d4','28028'),
('127','est','ursula07@example.org','42259ab36e589c0c40501ab18dc9d0cddf89468f','4943539028'),
('128','et','brandy30@example.net','a5be48a6f8b05bdbca7f3fec0c01e61f5698003a','2278042598'),
('129','dolore','edythe.o\'kon@example.org','c3adb787d7a9fad659de68e52a7ecccedfc4b8fb','705034'),
('130','et','logan00@example.com','a38a3017e3345f37c4abe0515baddbe863dc464d','467987'),
('132','atque','aniya15@example.org','db0d51529026130b3834d8c1ba992a97309485a9','9971069190'),
('134','est','emma07@example.net','bdcd05dae0e24a887127aaeaa7acda598aa31b8a','149'),
('136','facere','verna.pollich@example.com','45f6b2a73f79aa259fa27a8df2634320dc066ee2','3'),
('139','aut','nturcotte@example.org','09a2fd62a42e9f27d14c74da4b505dd126778ab0','378911'),
('140','deleniti','mikayla10@example.com','2ef06005660f070dfc4bbe63b1036abe93587515','608'),
('144','est','ezekiel.labadie@example.org','5217eff56a952bcb40040ecbdca4a575ab3ebb00','690218'),
('146','est','hills.joshuah@example.org','200b5b2afd06c7dcaaaee0eb22d1541d30f1d362','945'),
('147','totam','elsie.tillman@example.net','ba30d57eb4f5c8cd50ffae33670c866cd103267e','561'),
('148','ex','mmorar@example.net','26816384d2df6dfaeec40b9dc49b80ed231fa070','851'),
('149','aut','gottlieb.rico@example.com','149faccdb87d07d8d6be1f8f454a6f6f1f84ea32','798'),
('150','rerum','alverta30@example.net','1930b2d8813a2a261afe93a388538c0afeb00de5','142'),
('152','rerum','rosanna.deckow@example.org','f16a04c4be8330bd165af7fa8480f95a1352f4a7','21'),
('153','excepturi','corene.carter@example.net','f317f543bacb616b0e865ea095278c592a9bda8e','240'),
('154','dicta','baby19@example.org','3f8bbf2f900adcff824734a8d516f0b740bccab1','953'),
('155','iusto','margaretta63@example.net','20eb9b8029b4c83edd233da0138821472653be7e','797'),
('156','non','emmett13@example.com','4288898634538a322275614026de53db167c4ac2','177'),
('157','quas','rbatz@example.com','9f8f6353f9255344f066491fe0473067eb1b3948','809427'),
('158','consequatur','daugherty.claudia@example.com','820245f407a2de8195067610a6ddc5dc2e18d1fa','72'),
('160','odio','antonette07@example.net','4864954fe1e96b9241acd3aba23e7339619de27e','1711889840'),
('162','qui','cullen.schimmel@example.org','d6838d86c9525f0c304844cd3ca0c5c19fd7a282','482257'),
('165','laboriosam','lonnie.lesch@example.com','43a06a7e1c95e6c6a2bc3fdc7b05334cb2a65b97','925892175'),
('166','cumque','rbins@example.net','494a373287cc3ce2ccf44c260aa1ac2dbf7c76f8','7261558858'),
('167','suscipit','fharber@example.net','4190239fb28cc6bdbf6039768c3349c6a1814e94','3836481798'),
('168','dolorum','kreiger.marcus@example.com','c53c3ac381f3f6cc13649445878d6ab453e60470','8'),
('170','id','vlittle@example.com','8f5d2682d2e6e2b74acfc28432a434d60b8bed7f','870450'),
('171','debitis','brekke.dianna@example.net','d80a385e64cca0b49c2ed9e6da4e9036a6947d16','25'),
('174','omnis','dmccullough@example.net','ae6d425b37e1fe8ee5d2f339a53c1a74b05d0e97','259978'),
('177','beatae','roberts.fabiola@example.com','0182e140a547aaa24ea8de535517d2f7049a4e6d','585832'),
('179','rem','brenda.kuvalis@example.com','b45248de4ec3754bda00eeb1a3891516d9f56905','637259'),
('181','consectetur','ludie03@example.org','b454576518365f012b4dea746ce9640022ba5406','170628774'),
('182','porro','xkoelpin@example.org','180cc8ebf60f9988539439324cedf4d28d624e9f','676'),
('189','itaque','marks.sabryna@example.net','3c08d0394ff6a5570a472808f92cb39f3aa5b751','362'),
('190','rerum','dubuque.nova@example.net','7496200cbdf50357b70eef3cb0237760fd477d0d','974729'),
('191','consequuntur','miracle47@example.org','157606e3c54a25ef958664fec987c04d4cad0ce9','429'),
('193','laudantium','bradly54@example.org','4966aa92e9588200c9d141e7d352ffe4c7870ebc','393772'),
('195','nemo','hans.williamson@example.net','ff8bc269ad172d4752e1de3aafbc72622af71b5e','137541'),
('197','beatae','d\'amore.eudora@example.com','04f8602258ac17ab89296b573a2ea854a1637681','202'),
('198','qui','cruz.eichmann@example.org','2bd9430b3593904578ecfb6557cb7c29619e129e','964758'),
('199','nulla','uhodkiewicz@example.net','f16960214f5262926c2238ae48790306ffa79650','65'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

