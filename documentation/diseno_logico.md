# DISEÑO LÓGICO

El diseño lógico representa la estructura de la base de datos mediante tablas, atributos, claves primarias y claves foráneas, permitiendo modelar las reglas de negocio de la Asociación de Agricultores de Palto en Huamanpali - Alto Larán.

# TABLAS DEL SISTEMA

    UBIGEO
      id_ubigeo (PK)
      departamento
      provincia
      distrito
    
    TIPO_DOCUMENTO
      id_tipo_documento (PK)
      descripcion
    
    ASUNTO_CONTACTO
      id_asunto (PK)
      descripcion
    
    CONTACTO
      id_contacto (PK)
      nombres
      apellidos
      correo
      telefono
      id_asunto (FK → ASUNTO_CONTACTO)
      mensaje
      fecha_registro
    
    LIBRO_RECLAMACIONES
      id_reclamo (PK)
      nombres
      apellidos
      tipo_documento
      numero_documento
      correo
      telefono
      direccion
      id_ubigeo (FK → UBIGEO)
      detalle_reclamo
      fecha_registro

# RELACIONES
- ASUNTO_CONTACTO (1) → (N) CONTACTO
- TIPO_DOCUMENTO (1) → (N) LIBRO_RECLAMACIONES
- UBIGEO (1) → (N) LIBRO_RECLAMACIONES

# REGLAS DE NEGOCIO

- Un asunto de contacto puede tener muchos contactos.
- Cada contacto pertenece a un solo asunto de contacto.
- Un tipo de documento puede estar en varios reclamos.
- Cada reclamo pertenece a un solo tipo de documento.
- Un ubigeo puede estar asociado a varios reclamos.
- Cada reclamo pertenece a un solo ubigeo.
- Todo contacto debe contener nombres, correo y mensaje.
- Todo reclamo debe contener datos completos del usuario y detalle del reclamo.
