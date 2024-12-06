CREATE PROCEDURE add_map (
    p_map_name IN VARCHAR2,
    p_path_data IN CLOB,
    p_resource_reward IN NUMBER
)
AS
BEGIN
    INSERT INTO Maps (map_id, map_name, path_data, resource_reward)
    VALUES (map_id_seq.NEXTVAL, p_map_name, p_path_data, p_resource_reward);

    COMMIT;
END;
/
