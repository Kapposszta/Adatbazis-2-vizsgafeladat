CREATE OR REPLACE PROCEDURE delete_user (
    p_user_id IN NUMBER
)
AS
BEGIN
    DELETE FROM Results WHERE user_id = p_user_id;   
    DELETE FROM Resources WHERE user_id = p_user_id;
    DELETE FROM Users_table WHERE user_id = p_user_id;
    COMMIT;
END;
/
