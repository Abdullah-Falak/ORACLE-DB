-- views.sql
-- View to see documents with uploader name

CREATE OR REPLACE VIEW document_info AS
SELECT 
    d.doc_id,
    d.title,
    d.description,
    u.username AS uploaded_by,
    d.uploaded_at
FROM 
    documents d
JOIN 
    users u ON d.uploaded_by = u.user_id;
