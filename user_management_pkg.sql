CREATE OR REPLACE PACKAGE user_management_package AS
    PROCEDURE add_user(p_username VARCHAR2, p_email VARCHAR2, p_password VARCHAR2);
    PROCEDURE delete_user(p_user_id NUMBER);
    PROCEDURE update_user_data(p_user_id NUMBER, p_username VARCHAR2, p_email VARCHAR2);
    PROCEDURE change_password(p_user_id NUMBER, p_old_password VARCHAR2, p_new_password VARCHAR2);
END user_management_package;
/

CREATE OR REPLACE PACKAGE BODY user_management_package AS
    -- Felhasználó hozzáadása
    PROCEDURE add_user(p_username VARCHAR2, p_email VARCHAR2, p_password VARCHAR2) IS
    BEGIN
        BEGIN
            INSERT INTO User_table (username, email, password)
            VALUES (p_username, p_email, p_password);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                RAISE_APPLICATION_ERROR(-20002, 'A felhasználónév vagy email már létezik.');
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20001, 'Hiba történt a felhasználó hozzáadása során: ' || SQLERRM);
        END;
    END;

    -- Felhasználó törlése
    PROCEDURE delete_user(p_user_id NUMBER) IS
    BEGIN
        BEGIN
            DELETE FROM User_table WHERE user_id = p_user_id;
            IF SQL%ROWCOUNT = 0 THEN
                RAISE_APPLICATION_ERROR(-20003, 'Nem található ilyen felhasználó.');
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20001, 'Hiba történt a felhasználó törlése során: ' || SQLERRM);
        END;
    END;

    -- Felhasználói adatok frissítése
    PROCEDURE update_user_data(p_user_id NUMBER, p_username VARCHAR2, p_email VARCHAR2) IS
    BEGIN
        BEGIN
            UPDATE User_table
            SET username = p_username, email = p_email
            WHERE user_id = p_user_id;
            IF SQL%ROWCOUNT = 0 THEN
                RAISE_APPLICATION_ERROR(-20004, 'Nem található ilyen felhasználó.');
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20001, 'Hiba történt a felhasználói adatok frissítése során: ' || SQLERRM);
        END;
    END;

    -- Jelszó változtatása
    PROCEDURE change_password(p_user_id NUMBER, p_old_password VARCHAR2, p_new_password VARCHAR2) IS
        v_password VARCHAR2(50);
    BEGIN
        BEGIN
            SELECT password INTO v_password FROM User_table WHERE user_id = p_user_id;
            IF v_password = p_old_password THEN
                UPDATE User_table SET password = p_new_password WHERE user_id = p_user_id;
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Hibás régi jelszó.');
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                RAISE_APPLICATION_ERROR(-20005, 'A felhasználó nem található.');
            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20001, 'Hiba történt a jelszó módosítása során: ' || SQLERRM);
        END;
    END;
END user_management_package;
/
