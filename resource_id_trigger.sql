CREATE OR REPLACE TRIGGER set_resource_id
BEFORE INSERT ON Resource_table
FOR EACH ROW
BEGIN
    SELECT resource_id_seq.NEXTVAL INTO :NEW.resource_id FROM dual;
END;
