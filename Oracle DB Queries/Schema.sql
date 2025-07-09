-- schema.sql
-- Create core tables for the DBMS

CREATE TABLE users (
    user_id      NUMBER PRIMARY KEY,
    username     VARCHAR2(50) UNIQUE NOT NULL,
    email        VARCHAR2(100),
    role         VARCHAR2(20),
    created_at   DATE DEFAULT SYSDATE
);

CREATE TABLE documents (
    doc_id       NUMBER PRIMARY KEY,
    title        VARCHAR2(100) NOT NULL,
    description  VARCHAR2(255),
    file_path    VARCHAR2(200),
    uploaded_by  NUMBER REFERENCES users(user_id),
    uploaded_at  DATE DEFAULT SYSDATE
);

CREATE TABLE permissions (
    permission_id  NUMBER PRIMARY KEY,
    user_id        NUMBER REFERENCES users(user_id),
    doc_id         NUMBER REFERENCES documents(doc_id),
    access_level   VARCHAR2(20) CHECK (access_level IN ('read', 'write', 'admin'))
);

CREATE TABLE access_logs (
    log_id       NUMBER PRIMARY KEY,
    user_id      NUMBER REFERENCES users(user_id),
    doc_id       NUMBER REFERENCES documents(doc_id),
    action       VARCHAR2(20),
    access_time  TIMESTAMP DEFAULT SYSTIMESTAMP
);
