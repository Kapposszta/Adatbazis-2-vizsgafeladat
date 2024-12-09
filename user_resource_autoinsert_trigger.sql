CREATE OR REPLACE TRIGGER trg_after_user_insert
AFTER INSERT ON User_table
FOR EACH ROW
BEGIN
    INSERT INTO Resource_table (user_id, gold, wood, brick)
    VALUES (:NEW.user_id, 1000, 50, 50);
END;
