CREATE TRIGGER update_resources_after_match
AFTER INSERT ON Results
FOR EACH ROW
DECLARE
    map_reward NUMBER;
BEGIN
    SELECT resource_reward INTO map_reward
    FROM Maps
    WHERE map_id = :NEW.map_id;
    IF :NEW.win_loss = 'win' THEN
        UPDATE Resources
        SET gold = gold + map_reward
        WHERE user_id = :NEW.user_id;
    END IF;
END;
/
