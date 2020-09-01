use solar_station;

-- все данные о пользователях  
SELECT  users.id, login, email, phone, CONCAT(firstname, ' ', lastname) as `name`, birthday, homeplace, photo.photo
	FROM users
	INNER JOIN `profiles`
    INNER JOIN media
    INNER JOIN photo
    ON users.id=`profiles`.user_id AND `profiles`.photo_id=media.id AND media.photo_id=photo.id; 
    
SELECT  users.id, login, email, phone, CONCAT(firstname, ' ', lastname) as `name`, birthday, homeplace, photo.photo
	FROM users
	LEFT JOIN `profiles` ON users.id=`profiles`.user_id
    LEFT JOIN media ON `profiles`.photo_id=media.id
    LEFT JOIN photo ON  media.photo_id=photo.id; 
 
-- все данные о пользователе c id = 101        
SET @id_user=101;        
SELECT  users.id, login, email, phone, CONCAT(firstname, ' ', lastname) as `name`, birthday, homeplace, photo.photo
	FROM users
	INNER JOIN `profiles`
    INNER JOIN media
    INNER JOIN photo
    ON users.id=`profiles`.user_id AND `profiles`.photo_id=media.id AND media.photo_id=photo.id
    WHERE users.id=@id_user;  
    
-- Данные всех замеров пользователя
SET @id_name_install=36; 
SELECT measurements.id, `name`, date_time, pwr_generated, pwr_spent FROM measurements 
		INNER JOIN installations
        on name_id=@id_name_install and name_id=installations.id;

-- Вывод информации по установкам (таблица specifications)
SELECT * FROM specifications;

SELECT  specifications.id, installations.`name`, cost, pwr_rated, panel_nmbr, methods_orient.method_orient, mechanism_types.mechanism_type
	FROM specifications
	LEFT JOIN installations ON installations.id=specifications.name_id
    LEFT JOIN methods_orient ON  specifications.method_orient_id=methods_orient.id
    LEFT JOIN mechanism_types ON specifications.mechanism_type_id=mechanism_types.id; 

-- изменение адреса установки

-- вывод всех фото пользователя
SET @id_user=2; 
SELECT users.id, users.login, photo.photo
	FROM users
    INNER JOIN media
    INNER JOIN photo
    ON users.id=media.user_id AND media.photo_id=photo.id
    where users.id=@id_user; 

-- проверка разрешено ли чтение данных другими пользователями
SET @id_user=2; 
SELECT user_id, login, is_open 
FROM open_mode
	INNER JOIN users 
    ON open_mode.user_id=users.id
     where users.id=@id_user;
     
-- получить данные о выработанной и потраченной энегии по устанвке
SET @id_name_install=36; 
SELECT measurements.id, `name`, SUM(pwr_generated), SUM(pwr_spent) FROM measurements 
		INNER JOIN installations
        on name_id=@id_name_install and name_id=installations.id
        GROUP BY measurements.name_id;



