
-- DELIMITER //
-- CREATE TRIGGER `test_user_pass2` BEFORE UPDATE ON `sport_shop`.`users`
--     FOR EACH ROW
-- BEGIN
--     SET NEW.user_surname = LEFT(NEW.user_surname,1);
--     SET NEW.user_password = md5(NEW.user_password);
-- END//
-- DELIMITER ;
-- INSERT INTO users values(`id_user`, "Max", "Biletskyi", "Lviv", "0552968325", "seaman", "228335max");


-- CREATE TRIGGER equip_delete BEFORE DELETE ON `sport_shop`.`equipment`
-- 	FOR EACH ROW
-- UPDATE sport_shop.equip_storage SET amount=0 WHERE id_equip=OLD.id_equip;

-- delete from equipment where id_equip = 8;
-- select * from equip_storage;

CREATE TRIGGER `cascade_change` BEFORE UPDATE ON `sport_shop`.`equip_storage`
    FOR EACH ROW
UPDATE sport_shop.equipment SET descriptions="-" WHERE id_equip=OLD.id_equip;

UPDATE `equip_storage` SET `name_of_equip` = "Ball" WHERE id_equip=1;