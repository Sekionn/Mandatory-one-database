USE choose_your_fate;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `sp_create_character`(
IN p_account_id INT,
IN p_race_detail_id INT,
IN p_name varchar(50)
)
BEGIN
DECLARE v_character_count INT;
DECLARE v_character_limit INT;

SELECT character_limit INTO v_character_limit
FROM account WHERE id = p_account_id;

SELECT COUNT(character_id) INTO v_character_count
FROM `character` WHERE account_id = p_account_id;

IF v_character_count < v_character_limit THEN
	INSERT INTO `character` (account_id, chapter_id, scene_id, race_detail_id, name)
    VALUES (p_account_id, 1, 1, p_race_detail_id, p_name);
ELSE
	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Character limit reached.';
END IF;

END$$

DELIMITER ;