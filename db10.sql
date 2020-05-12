

-- CALL sale;
-- SELECT name_of_equip, price, amount
-- FROM equip_storage
-- inner join equipment ON equip_storage.id_equip = equipment.id_equip;
Select name_of_equip, id_dealer, up_price(700, price, id_dealer, 2)
From equip_storage
inner join  equipment ON equip_storage.id_equip = equipment.id_equip

-- SET GLOBAL log_bin_trust_function_creators = 1;
-- CREATE FUNCTION up_price(extra_charge INT, price INT, id_dealer INT, id_to_up INT)
-- 	returns int
-- 	return if(id_dealer = id_to_up, price+extra_charge, price);