CREATE DATABASE IF NOT EXISTS aaphal_db;

USE aaphal_db;

CREATE TABLE UBIGEO (
    ubigeo_id INT AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(100) NOT NULL,
    province VARCHAR(100) NOT NULL,
    district VARCHAR(100) NOT NULL
);

CREATE TABLE DOCUMENT_TYPE (
    document_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE CONTACT_SUBJECT (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE CONTACT (
    contact_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    subject_id INT NOT NULL,
    message TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_contact_subject
    FOREIGN KEY (subject_id)
    REFERENCES CONTACT_SUBJECT(subject_id)
);

CREATE TABLE CLAIM_BOOK (
    claim_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    document_type_id INT NOT NULL,
    document_number VARCHAR(20) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(200) NOT NULL,
    ubigeo_id INT NOT NULL,
    claim_detail TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_claim_document_type
    FOREIGN KEY (document_type_id)
    REFERENCES DOCUMENT_TYPE(document_type_id),

    CONSTRAINT fk_claim_ubigeo
    FOREIGN KEY (ubigeo_id)
    REFERENCES UBIGEO(ubigeo_id)
);
