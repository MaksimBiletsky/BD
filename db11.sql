SET autocommit = 0;
START TRANSACTION;
INSERT INTO sport_shop.equip_storage VALUE (`id_equip`, "Sneackers", 1, 5);
INSERT INTO sport_shop.equip_storage VALUE (`id_equip`, "barbell", 2, 3);
INSERT INTO sport_shop.equip_storage VALUE (`id_equip`, "barbell", 1, 3);
INSERT INTO sport_shop.equip_storage VALUE (`id_equip`, "Sneackers", 2, 7);
INSERT INTO sport_shop.equip_storage VALUE (`id_equip`, "Sneackers", 3, 10);
COMMIT;
rollback;