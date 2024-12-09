CREATE OR REPLACE PACKAGE game_management_package AS
    PROCEDURE add_map(p_map_name VARCHAR2, p_path_data VARCHAR2, p_gold_reward NUMBER, p_xp_reward NUMBER, p_wood_reward NUMBER, p_brick_reward NUMBER);
    PROCEDURE play_match(p_user_id NUMBER, p_map_id NUMBER, p_result VARCHAR2);
    PROCEDURE delete_result(p_result_id NUMBER);
END game_management_package;
CREATE OR REPLACE PACKAGE BODY game_management_package AS

    -- Pálya hozzáadása
    PROCEDURE add_map(p_map_name VARCHAR2, p_path_data VARCHAR2, p_gold_reward NUMBER, p_xp_reward NUMBER, p_wood_reward NUMBER, p_brick_reward NUMBER) IS
    BEGIN
        INSERT INTO Map_table (map_name, path_data, gold_reward, xp_reward, Wood_Reward, Brick_Reward)
        VALUES (p_map_name, p_path_data, p_gold_reward, p_xp_reward, p_wood_reward, p_brick_reward);
    END;

    -- Meccs lejátszása
    PROCEDURE play_match(p_user_id NUMBER, p_map_id NUMBER, p_result VARCHAR2) IS
BEGIN
    INSERT INTO Result_table (user_id, map_id, result)
    VALUES (p_user_id, p_map_id, LOWER(p_result));
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Hiba történt: ' || SQLERRM);
END;

    -- Meccs törlése
    PROCEDURE delete_result(p_result_id NUMBER) IS
    BEGIN
        DELETE FROM Result_table WHERE result_id = p_result_id;
    END;

END game_management_package;
