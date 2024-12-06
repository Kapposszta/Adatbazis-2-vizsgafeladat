CREATE TRIGGER limit_users
BEFORE INSERT ON Users_table
FOR EACH ROW
DECLARE
    user_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO user_count FROM Users;

    IF user_count >= 20 THEN
        RAISE_APPLICATION_ERROR(-20001, 'A maximális 20 felhasználó már elérve.');
    END IF;
END;
/
