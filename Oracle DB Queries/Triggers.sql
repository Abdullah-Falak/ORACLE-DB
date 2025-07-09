-- triggers.sql
-- Trigger to automatically log when a document is inserted

CREATE OR REPLACE TRIGGER trg_after_document_insert
AFTER INSERT ON documents
FOR EACH ROW
BEGIN
    INSERT INTO access_logs (log_id, user_id, doc_id, action)
    VALUES (access_logs_seq.NEXTVAL, :NEW.uploaded_by, :NEW.doc_id, 'upload');
END;
/
