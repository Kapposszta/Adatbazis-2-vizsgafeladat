CREATE OR REPLACE TRIGGER set_result_id
BEFORE INSERT ON Result_table
FOR EACH ROW
BEGIN
    SELECT result_id_seq.NEXTVAL INTO :NEW.result_id FROM dual;
END;
