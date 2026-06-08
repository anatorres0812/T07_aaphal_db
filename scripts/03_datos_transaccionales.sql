```sql
USE aaphal_db;

-- =====================================
-- TABLA: CONTACTO
-- =====================================

INSERT INTO CONTACTO
(nombres, apellidos, correo, telefono, id_asunto, mensaje)
VALUES
('Juan','Perez','juan@gmail.com','987654321',1,'Solicito informacion sobre la asociacion'),
('Maria','Gomez','maria@gmail.com','987654322',2,'Consulta sobre exportacion de palta'),
('Carlos','Lopez','carlos@gmail.com','987654323',3,'Consulta sobre certificaciones'),
('Ana','Torres','ana@gmail.com','987654324',4,'Deseo conocer los beneficios de la asociacion'),
('Luis','Rojas','luis@gmail.com','987654325',5,'Consulta sobre capacitaciones'),
('Patricia','Diaz','patricia@gmail.com','987654326',6,'Informacion sobre eventos'),
('Jose','Martinez','jose@gmail.com','987654327',7,'Solicitud de visita guiada'),
('Rosa','Castillo','rosa@gmail.com','987654328',8,'Consulta sobre asistencia tecnica'),
('Miguel','Vargas','miguel@gmail.com','987654329',9,'Informacion de proyectos agricolas'),
('Lucia','Flores','lucia@gmail.com','987654330',10,'Consulta sobre convenios');

-- =====================================
-- TABLA: LIBRO_RECLAMACIONES
-- =====================================

INSERT INTO LIBRO_RECLAMACIONES
(nombres, apellidos, id_tipo_documento, numero_documento,
correo, telefono, direccion, id_ubigeo, detalle_reclamo)
VALUES
('Pedro','Ramirez',1,'76543210','pedro@gmail.com','999111111','Av. Principal 123',1,'Demora en la atencion'),
('Carmen','Soto',1,'76543211','carmen@gmail.com','999111112','Av. Lima 456',2,'Informacion incompleta'),
('Ricardo','Fernandez',1,'76543212','ricardo@gmail.com','999111113','Jr. Los Olivos 789',3,'Problema con respuesta a consulta'),
('Julia','Mendoza',1,'76543213','julia@gmail.com','999111114','Calle Central 101',4,'Retraso en comunicacion'),
('Fernando','Ruiz',1,'76543214','fernando@gmail.com','999111115','Av. Agricultura 202',5,'Atencion deficiente'),
('Elena','Paredes',1,'76543215','elena@gmail.com','999111116','Jr. Comercio 303',6,'Error en informacion publicada'),
('Victor','Salas',1,'76543216','victor@gmail.com','999111117','Av. Principal 404',7,'Consulta no atendida'),
('Sandra','Navarro',1,'76543217','sandra@gmail.com','999111118','Calle Los Pinos 505',8,'Inconveniente con formulario'),
('Oscar','Morales',1,'76543218','oscar@gmail.com','999111119','Av. Libertad 606',9,'Demora en respuesta'),
('Daniela','Herrera',1,'76543219','daniela@gmail.com','999111120','Jr. San Martin 707',10,'Observacion sobre servicio');
```

