CREATE OR REPLACE TRIGGER set_reward_id
BEFORE INSERT ON MapReward
FOR EACH ROW
BEGIN
    SELECT reward_id_seq.NEXTVAL INTO :NEW.reward_id FROM dual;
END;
