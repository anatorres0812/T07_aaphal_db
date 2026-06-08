CREATE DATABASE IF NOT EXISTS aaphal_db;

USE aaphal_db;

CREATE TABLE UBIGEO (
    id_ubigeo INT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) NOT NULL,
    distrito VARCHAR(100) NOT NULL
);

CREATE TABLE TIPO_DOCUMENTO (
    id_tipo_documento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE ASUNTO_CONTACTO (
    id_asunto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE CONTACTO (
    id_contacto INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    id_asunto INT NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_contacto_asunto
    FOREIGN KEY (id_asunto)
    REFERENCES ASUNTO_CONTACTO(id_asunto)
);

CREATE TABLE LIBRO_RECLAMACIONES (
    id_reclamo INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    id_tipo_documento INT NOT NULL,
    numero_documento VARCHAR(20) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(200) NOT NULL,
    id_ubigeo INT NOT NULL,
    detalle_reclamo TEXT NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_reclamo_tipo_documento
    FOREIGN KEY (id_tipo_documento)
    REFERENCES TIPO_DOCUMENTO(id_tipo_documento),

    CONSTRAINT fk_reclamo_ubigeo
    FOREIGN KEY (id_ubigeo)
    REFERENCES UBIGEO(id_ubigeo)
);
