# DISEÑO FÍSICO

El diseño físico representa la implementación de la base de datos en el sistema gestor MySQL. En esta etapa se definen las tablas, tipos de datos, claves primarias, claves foráneas y restricciones necesarias para el funcionamiento del sistema de la Asociación de Agricultores de Palto en Huamanpali - Alto Larán.

CREATE DATABASE IF NOT EXISTS aaphal_db;

USE aaphal_db;

CREATE TABLE UBIGEO (
  ubigeo_id INT AUTO_INCREMENT PRIMARY KEY,
  department VARCHAR(100) NOT NULL,
  province VARCHAR(100) NOT NULL,
  district VARCHAR(100) NOT NULL
);

CREATE TABLE TIPO_DOCUMENTO (
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
    FOREIGN KEY (subject_id) REFERENCES CONTACT_SUBJECT(subject_id)
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
    FOREIGN KEY (document_type_id) REFERENCES TIPO_DOCUMENTO(document_type_id),
    FOREIGN KEY (ubigeo_id) REFERENCES UBIGEO(ubigeo_id)
);

# RELACIONES:
- CONTACT_SUBJECT (1) → (N) CONTACT
- TIPO_DOCUMENTO (1) → (N) CLAIM_BOOK
- UBIGEO (1) → (N) CLAIM_BOOK

# CONSIDERACIONES:
- AUTO_INCREMENT en claves primarias
- FOREIGN KEY para integridad referencial
- NOT NULL en campos obligatorios
- DEFAULT CURRENT_TIMESTAMP en fechas
- Base de datos implementada en MySQL
