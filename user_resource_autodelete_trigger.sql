CREATE OR REPLACE TRIGGER trg_after_user_delete
AFTER DELETE ON User_table
FOR EACH ROW
BEGIN
    DELETE FROM Resource_table WHERE user_id = :OLD.user_id;
END;
