# ANÁLISIS DE REQUISITOS

La Asociación de Agricultores de Palto en Huamanpali - Alto Larán es una organización conformada por productores agrícolas dedicados al cultivo y comercialización de palta. La asociación tiene como finalidad fortalecer la actividad agrícola de sus asociados mediante la difusión de información, promoción de actividades, capacitaciones y participación en eventos relacionados con el sector agrícola.

Con el objetivo de mejorar la comunicación con la comunidad, clientes potenciales e instituciones interesadas, se propone el desarrollo de un sitio web informativo. Este portal permitirá mostrar información institucional de la asociación, difundir noticias y actividades, recibir consultas mediante un formulario de contacto y atender sugerencias o reclamos a través del libro de reclamaciones.

El sitio web tendrá carácter informativo, por lo que no incluirá procesos de venta en línea, pagos electrónicos ni gestión de pedidos.

## OBJETIVO DEL SISTEMA

Desarrollar una base de datos que soporte un sistema web informativo para la Asociación de Agricultores de Palto en Huamanpali - Alto Larán, permitiendo:

- Registrar contactos de usuarios interesados.
- Gestionar consultas mediante un formulario de contacto.
- Registrar reclamos a través del libro de reclamaciones.
- Estandarizar información mediante tablas maestras (UBIGEO, tipo de documento y asunto de contacto).
- Garantizar integridad y organización de la información.

## ALCANCE DEL SISTEMA

El sistema contempla:

- Registro de contactos mediante formulario web.
- Registro de reclamos de usuarios.
- Gestión de tablas maestras:
  - UBIGEO
  - TIPO_DOCUMENTO
  - ASUNTO_CONTACTO
- Almacenamiento estructurado de datos en una base de datos relacional MySQL.

No incluye:

- Ventas en línea.
- Pagos electrónicos.
- Gestión de inventarios o pedidos.

## REQUERIMIENTOS FUNCIONALES

- RF01: Registrar contactos de usuarios mediante un formulario web.
- RF02: Registrar mensajes de contacto asociados a un asunto.
- RF03: Registrar reclamos de usuarios en el libro de reclamaciones.
- RF04: Gestionar tipos de documento de identidad.
- RF05: Gestionar información de UBIGEO (departamento, provincia, distrito).
- RF06: Gestionar asuntos de contacto.
- RF07: Permitir almacenamiento y consulta de información registrada.

## REQUERIMIENTOS NO FUNCIONALES

- RNF01: La base de datos debe estar implementada en MySQL.
- RNF02: Debe garantizar integridad referencial mediante claves primarias y foráneas.
- RNF03: Los datos deben estar normalizados.
- RNF04: El sistema debe permitir consultas rápidas y eficientes.
- RNF05: Debe asegurar consistencia en la información almacenada.

## USUARIOS DEL SISTEMA

- Usuario visitante: Envía consultas o reclamos mediante el sistema web.
- Administrador: Gestiona y consulta la información almacenada en la base de datos.

## ENTIDADES PRINCIPALES

- UBIGEO
- TIPO_DOCUMENTO
- ASUNTO_CONTACTO
- CONTACT
- CLAIM_BOOK
