CREATE OR REPLACE TRIGGER trg_after_result_insert
AFTER INSERT ON Result_table
FOR EACH ROW
DECLARE
    v_wood_reward NUMBER;
    v_brick_reward NUMBER;
    v_gold_reward NUMBER;
    v_xp_reward NUMBER;
BEGIN
    IF LOWER(:NEW.result) = 'win' THEN
        SELECT wood_reward, brick_reward, gold_reward, xp_reward
        INTO v_wood_reward, v_brick_reward, v_gold_reward, v_xp_reward
        FROM Map_table
        WHERE map_id = :NEW.map_id;

        UPDATE Resource_table
        SET wood = wood + v_wood_reward,
            brick = brick + v_brick_reward,
            gold = gold + v_gold_reward
        WHERE user_id = :NEW.user_id;

        UPDATE User_table
        SET xp = xp + v_xp_reward
        WHERE user_id = :NEW.user_id;

    ELSIF LOWER(:NEW.result) = 'lose' THEN
        NULL; 
    ELSE
        DBMS_OUTPUT.PUT_LINE('Unexpected result value: ' || :NEW.result);
    END IF;
END;
