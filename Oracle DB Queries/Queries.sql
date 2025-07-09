-- queries.sql
-- Useful test queries

-- List all documents with uploader name
SELECT * FROM document_info;

-- Check access logs
SELECT * FROM access_logs ORDER BY access_time DESC;

-- Show user permissions
SELECT u.username, d.title, p.access_level
FROM permissions p
JOIN users u ON p.user_id = u.user_id
JOIN documents d ON p.doc_id = d.doc_id;
