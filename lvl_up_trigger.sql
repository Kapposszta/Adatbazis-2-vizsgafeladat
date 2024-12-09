CREATE OR REPLACE TRIGGER level_up_trigger
BEFORE UPDATE ON User_table
FOR EACH ROW
BEGIN
    IF :NEW.xp >= 100 AND :NEW.xp - :OLD.xp >= 100 THEN
        :NEW.user_level := :NEW.user_level + 1;
    END IF;
END;
