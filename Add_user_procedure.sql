CREATE PROCEDURE add_user (
    p_username IN VARCHAR2,
    p_email IN VARCHAR2,
    p_password IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Users_table (user_id, username, email, password)
    VALUES (user_id_seq.NEXTVAL, p_username, p_email, p_password);

    INSERT INTO Resources (user_id, gold, energy)
    VALUES (user_id_seq.CURRVAL, 0, 0);

    COMMIT;
END;
/
