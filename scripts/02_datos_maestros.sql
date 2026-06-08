USE aaphal_db;

-- =====================================
-- TABLA: TIPO_DOCUMENTO
-- =====================================

INSERT INTO TIPO_DOCUMENTO (nombre) VALUES
('DNI'),
('Pasaporte'),
('Carnet de Extranjeria'),
('RUC'),
('Licencia de Conducir'),
('Documento Militar'),
('Carnet Universitario'),
('Carnet Institucional'),
('Partida de Nacimiento'),
('Permiso Temporal'),
('Documento Provisional'),
('Documento Especial'),
('Documento Agrario'),
('Documento Comercial'),
('Documento Tributario'),
('Documento Laboral'),
('Documento Consular'),
('Documento Regional'),
('Documento Nacional'),
('Otro');

-- =====================================
-- TABLA: ASUNTO_CONTACTO
-- =====================================

INSERT INTO ASUNTO_CONTACTO (nombre) VALUES
('Informacion General'),
('Exportacion de Palta'),
('Certificaciones'),
('Asociacion de Agricultores'),
('Capacitaciones'),
('Eventos'),
('Visitas Guiadas'),
('Asistencia Tecnica'),
('Proyectos Agricolas'),
('Convenios'),
('Noticias'),
('Consultas Comerciales'),
('Reclamos'),
('Sugerencias'),
('Felicitaciones'),
('Documentacion'),
('Produccion Agricola'),
('Mercados Internacionales'),
('Contacto Institucional'),
('Otros');

-- =====================================
-- TABLA: UBIGEO
-- =====================================

INSERT INTO UBIGEO (departamento, provincia, distrito) VALUES
('Ica','Chincha','Alto Laran'),
('Ica','Chincha','Chincha Alta'),
('Ica','Chincha','Sunampe'),
('Ica','Chincha','Grocio Prado'),
('Ica','Chincha','Pueblo Nuevo'),
('Ica','Chincha','El Carmen'),
('Ica','Chincha','Tambo de Mora'),
('Ica','Chincha','San Juan de Yanac'),
('Ica','Chincha','San Pedro de Huacarpana'),
('Ica','Pisco','Pisco'),
('Ica','Pisco','Paracas'),
('Ica','Pisco','San Andres'),
('Ica','Ica','Ica'),
('Ica','Ica','Parcona'),
('Ica','Ica','La Tinguiña'),
('Lima','Lima','San Isidro'),
('Lima','Lima','Miraflores'),
('Lima','Lima','Santiago de Surco'),
('Lima','Lima','La Molina'),
('Lima','Lima','San Borja');
