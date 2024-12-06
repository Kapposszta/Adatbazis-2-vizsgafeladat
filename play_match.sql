CREATE PROCEDURE play_match (
    p_user_id IN NUMBER,
    p_result IN VARCHAR2,
    p_map_id IN NUMBER
)
AS
BEGIN
    INSERT INTO Results (result_id, user_id, map_id, win_loss)
    VALUES (result_id_seq.NEXTVAL, p_user_id, p_map_id, p_result);

    COMMIT;
END;
/
