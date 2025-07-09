-- insert_sample_data.sql
-- Sample data for testing

INSERT INTO users (user_id, username, email, role) VALUES (1, 'admin', 'admin@example.com', 'admin');
INSERT INTO users (user_id, username, email, role) VALUES (2, 'john', 'john@example.com', 'editor');

INSERT INTO documents (doc_id, title, description, file_path, uploaded_by)
VALUES (101, 'Company Policy', 'HR policy document', '/docs/hr_policy.pdf', 1);

INSERT INTO permissions (permission_id, user_id, doc_id, access_level)
VALUES (201, 2, 101, 'read');
