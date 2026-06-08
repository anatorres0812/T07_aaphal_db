# DICCIONARIO DE DATOS

El diccionario de datos describe detalladamente cada tabla de la base de datos, sus atributos, tipos de datos, restricciones y descripción funcional dentro del sistema de la Asociación de Agricultores de Palto en Huamanpali - Alto Larán.


## TABLA: UBIGEO

| Campo       | Tipo de dato   | Restricción            | Descripción                          |
|------------|----------------|------------------------|--------------------------------------|
| ubigeo_id  | INT            | PK, AUTO_INCREMENT     | Identificador único del ubigeo       |
| department | VARCHAR(100)   | NOT NULL               | Nombre del departamento              |
| province   | VARCHAR(100)   | NOT NULL               | Nombre de la provincia               |
| district   | VARCHAR(100)   | NOT NULL               | Nombre del distrito                  |


## TABLA: TIPO_DOCUMENTO

| Campo             | Tipo de dato   | Restricción            | Descripción                          |
|------------------|----------------|------------------------|--------------------------------------|
| document_type_id | INT            | PK, AUTO_INCREMENT     | Identificador del tipo de documento  |
| name             | VARCHAR(50)    | NOT NULL               | Nombre del tipo de documento         |


## TABLA: ASUNTO_CONTACTO

| Campo      | Tipo de dato   | Restricción            | Descripción                          |
|------------|----------------|------------------------|--------------------------------------|
| subject_id | INT            | PK, AUTO_INCREMENT     | Identificador del asunto             |
| name       | VARCHAR(100)   | NOT NULL               | Nombre del asunto de contacto        |


## TABLA: CONTACT

| Campo       | Tipo de dato   | Restricción                        | Descripción                          |
|------------|----------------|------------------------------------|--------------------------------------|
| contact_id | INT            | PK, AUTO_INCREMENT                 | Identificador del contacto           |
| first_name | VARCHAR(100)   | NOT NULL                           | Nombres del usuario                  |
| last_name  | VARCHAR(100)   | NOT NULL                           | Apellidos del usuario                |
| email      | VARCHAR(150)   | NOT NULL                           | Correo electrónico                   |
| phone      | VARCHAR(20)    | NULL                               | Teléfono de contacto                 |
| subject_id | INT            | FK → CONTACT_SUBJECT(subject_id)   | Asunto del mensaje                   |
| message    | TEXT           | NOT NULL                           | Mensaje enviado                      |
| created_at | DATETIME       | DEFAULT CURRENT_TIMESTAMP          | Fecha de registro                    |


## TABLA: CLAIM_BOOK

| Campo             | Tipo de dato   | Restricción                                | Descripción                          |
|------------------|----------------|--------------------------------------------|--------------------------------------|
| claim_id         | INT            | PK, AUTO_INCREMENT                         | Identificador del reclamo            |
| first_name       | VARCHAR(100)   | NOT NULL                                   | Nombres del reclamante               |
| last_name        | VARCHAR(100)   | NOT NULL                                   | Apellidos del reclamante             |
| document_type_id | INT            | FK → TIPO_DOCUMENTO(document_type_id)      | Tipo de documento                    |
| document_number  | VARCHAR(20)    | NOT NULL                                   | Número de documento                  |
| email            | VARCHAR(150)   | NOT NULL                                   | Correo electrónico                   |
| phone            | VARCHAR(20)    | NULL                                       | Teléfono                             |
| address          | VARCHAR(200)   | NOT NULL                                   | Dirección del reclamante             |
| ubigeo_id        | INT            | FK → UBIGEO(ubigeo_id)                     | Ubicación geográfica                 |
| claim_detail     | TEXT           | NOT NULL                                   | Detalle del reclamo                  |
| created_at       | DATETIME       | DEFAULT CURRENT_TIMESTAMP                  | Fecha de registro                    |
