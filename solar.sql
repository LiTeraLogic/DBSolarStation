DROP DATABASE IF EXISTS `solar_station`;
CREATE DATABASE `solar_station` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `solar_station`;

/*DROP TABLE IF EXISTS `measurements`;
CREATE TABLE `measurements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_name` int(11) unsigned NOT NULL,
  `date_time` datetime NOT NULL COMMENT 'YYYY-MM-DD HH:MM:SS',
  `pwr_generated` double DEFAULT NULL COMMENT 'Мощность выработанная',
  `pwr_spent` double DEFAULT NULL COMMENT 'Мощность затраченная',
  PRIMARY KEY (`id`),
  KEY `name_idx` (`id_name`),
  CONSTRAINT `name` FOREIGN KEY (`id_name`) REFERENCES `name_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COMMENT='public';



DROP TABLE IF EXISTS `mechanism_types`;
CREATE TABLE `mechanism_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mechanism_type` varchar(45) NOT NULL,
  `mechanism_type_nickname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mechanism_type_UNIQUE` (`mechanism_type`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `mechanism_type_nickname_UNIQUE` (`mechanism_type_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='public';

DROP TABLE IF EXISTS `methods_orient`;
CREATE TABLE `methods_orient` (
  `id` int(11) unsigned NOT NULL,
  `method_orient` varchar(45) NOT NULL,
  `method_nickname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `method_orient_UNIQUE` (`method_orient`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `method_nickname_UNIQUE` (`method_nickname`)
);

DROP TABLE IF EXISTS `name_address`;
CREATE TABLE `name_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_name` (`id`)
);

DROP TABLE IF EXISTS `specifications`;
CREATE TABLE `specifications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_name` int(11) unsigned NOT NULL,
  `id_method_orient` int(11) unsigned DEFAULT NULL,
  `id_mechanism_type` int(11) unsigned DEFAULT NULL,
  `cost` double unsigned DEFAULT NULL,
  `pwr_rated` int(11) unsigned DEFAULT NULL COMMENT 'Номинальная мощность',
  `panel_nmbr` int(11) DEFAULT NULL COMMENT 'Кол-во панелей',
  PRIMARY KEY (`id`),
  KEY `spec_mech_orient_id_name_id_idx` (`id_method_orient`),
  KEY `spec_mech_type_id_name_id_idx` (`id_mechanism_type`),
  KEY `name_idx` (`id_name`),
  KEY `name_id` (`id_name`),
  CONSTRAINT `id_name_spec` FOREIGN KEY (`id_name`) REFERENCES `name_address` (`id`),
  CONSTRAINT `spec_mech_orient_id_name_id` FOREIGN KEY (`id_method_orient`) REFERENCES `methods_orient` (`id`),
  CONSTRAINT `spec_mech_type_id_name_id` FOREIGN KEY (`id_mechanism_type`) REFERENCES `mechanism_types` (`id`)
);*/
-- --------------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `login` VARCHAR(50),
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100), -- 123456 => vzx;clvgkajrpo9udfxvsldkrn24l5456345t
	phone BIGINT UNSIGNED UNIQUE, 
	
    INDEX users_login_idx(`login`)
) COMMENT 'Пользователи';

-- фото с местности
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    photo VARCHAR(50)COMMENT 'Путь до файла'
);

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    -- не должно быть уникальным
	-- user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	user_id BIGINT UNSIGNED NOT NULL,
    photo_id BIGINT UNSIGNED NOT NULL,
    
    CONSTRAINT fk_media_user_id FOREIGN KEY (user_id) REFERENCES users(id), 
    CONSTRAINT fk_media_photo_id FOREIGN KEY (photo_id) REFERENCES photo(id) 
);

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия',
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    homeplace VARCHAR(100) COMMENT 'Местонахождение электростанции',
    photo_id BIGINT UNSIGNED NOT NULL COMMENT 'Фото на профиле',
	
    INDEX profiles_homeplace_idx(`homeplace`),
    FOREIGN KEY (photo_id) REFERENCES media(id) 
);

ALTER TABLE `profiles` ADD CONSTRAINT fk_profiles_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE restrict;

-- можно ли посмотреть данные таблицы не в пользовательсоком режиме
DROP TABLE IF EXISTS `open_mode`;
CREATE TABLE `open_mode` (
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
    is_open BIT NOT NULL,
    
    CONSTRAINT fk_open_mode_user_id FOREIGN KEY (`user_id`) REFERENCES users(`id`)    
);

-- работа режиме батареи, т.е. потребление энергии
DROP TABLE IF EXISTS `battary_mode`;
CREATE TABLE `battary_mode` (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
    /*
    время включения режима
    время выключения режима 
    кол-во потребляемой энергии 
    */
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(),
	`pwr_spent` DOUBLE DEFAULT NULL COMMENT 'Мощность затраченная',
    
     CONSTRAINT fk_battary_mode_user_id FOREIGN KEY (user_id) REFERENCES users(id)
    
);

DROP TABLE IF EXISTS `installations`;
CREATE TABLE `installations` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id BIGINT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,  
  
  PRIMARY KEY (`id`),
  
  CONSTRAINT fk_installations_user_id FOREIGN KEY (user_id) REFERENCES users(id),
  INDEX installations_user_id_name_idx(user_id, `name`) 
);

DROP TABLE IF EXISTS `measurements`;
CREATE TABLE `measurements` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_id` BIGINT UNSIGNED NOT NULL,
  `date_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'YYYY-MM-DD HH:MM:SS',
  `pwr_generated` DOUBLE DEFAULT NULL COMMENT 'Мощность выработанная',
  `pwr_spent` DOUBLE DEFAULT NULL COMMENT 'Мощность затраченная',
  
  PRIMARY KEY (`id`),
  
  CONSTRAINT fk_measurements_name_id FOREIGN KEY (name_id) REFERENCES installations(id)
);


DROP TABLE IF EXISTS `mechanism_types`;
CREATE TABLE `mechanism_types` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mechanism_type` VARCHAR(50) NOT NULL,
  `mechanism_type_nickname` VARCHAR(50) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ;

DROP TABLE IF EXISTS `methods_orient`;
CREATE TABLE `methods_orient` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_orient` VARCHAR(50) NOT NULL,
  `method_nickname` VARCHAR(50) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);



DROP TABLE IF EXISTS `name_address`;
CREATE TABLE `name_address` (
  `name_id` BIGINT UNSIGNED NOT NULL UNIQUE,
  `address` VARCHAR(50) DEFAULT NULL UNIQUE,  
  
  CONSTRAINT fk_name_address_name_id FOREIGN KEY (name_id) REFERENCES installations(id),
  INDEX name_address_name_id_idx(name_id) -- очень частый поиск по полю name
  
);

DROP TABLE IF EXISTS `specifications`;
CREATE TABLE `specifications` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_id` BIGINT UNSIGNED NOT NULL,
  `method_orient_id` BIGINT UNSIGNED DEFAULT NULL,
  `mechanism_type_id` BIGINT UNSIGNED DEFAULT NULL,
  `cost` DOUBLE UNSIGNED DEFAULT NULL,
  `pwr_rated` DOUBLE UNSIGNED DEFAULT NULL COMMENT 'Номинальная мощность',
  `panel_nmbr` INT(11) DEFAULT NULL COMMENT 'Кол-во панелей',
  
  PRIMARY KEY (`id`),
  
  CONSTRAINT fk_specifications_name_id FOREIGN KEY (name_id) REFERENCES installations(id),
  CONSTRAINT fk_specifications_method_orient_id FOREIGN KEY (method_orient_id) REFERENCES methods_orient(id),
  CONSTRAINT fk_specifications_mechanism_type_id FOREIGN KEY (mechanism_type_id) REFERENCES mechanism_types(id)
);
