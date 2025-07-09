-- procedures.sql
-- Sample PL/SQL procedure to log document access

CREATE OR REPLACE PROCEDURE log_access (
    p_user_id IN NUMBER,
    p_doc_id  IN NUMBER,
    p_action  IN VARCHAR2
) AS
BEGIN
    INSERT INTO access_logs (log_id, user_id, doc_id, action)
    VALUES (access_logs_seq.NEXTVAL, p_user_id, p_doc_id, p_action);

    COMMIT;
END;
/
