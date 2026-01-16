DELIMITER $$

CREATE FUNCTION adjacent_characters(p_str TEXT)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE len INT;

    SET len = CHAR_LENGTH(p_str);

    WHILE i < len DO
        IF SUBSTRING(p_str, i, 1) = SUBSTRING(p_str, i + 1, 1) THEN
            RETURN TRUE;
        END IF;
        SET i = i + 1;
    END WHILE;

    RETURN FALSE;
END$$

DELIMITER ;


SELECT adjacent_characters('AABBCC');  -- TRUE(1)
SELECT adjacent_characters('ABCDE');  -- FALSE(0)
SELECT adjacent_characters('112345');  -- TRUE(1)
