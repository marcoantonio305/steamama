-- Tabla de clientes de tienda online


DROP TABLE IF EXISTS clientes CASCADE;

CREATE TABLE clientes (
    id          BIGSERIAL       PRIMARY KEY,
    dni         VARCHAR(9)      NOT NULL UNIQUE,
    nombre      VARCHAR(255)    NOT NULL,
    apellidos   VARCHAR(255),
    direccion   VARCHAR(255),
    codpostal   NUMERIC(5),
    telefono    VARCHAR(255)
);

-- Tabla de desarrolladoras

DROP TABLE IF EXISTS desarrolladoras CASCADE;

CREATE TABLE desarrolladoras (
    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Tabla de videojuegos

DROP TABLE IF EXISTS videojuegos CASCADE;

CREATE TABLE videojuegos (
    id      BIGSERIAL       PRIMARY KEY,
    nombre  VARCHAR(255)    NOT NULL,
    salida  TIMESTAMP(0)       NOT NULL,
    precio  NUMERIC(6, 2),
    desarrolladora_id       BIGINT NOT NULL REFERENCES desarrolladoras(id)
);

--Tabla de usuarios
DROP TABLE IF EXISTS usuarios CASCADE;
CREATE TABLE usuarios (
    id          BIGSERIAL       PRIMARY KEY,
    nick        VARCHAR(255)    NOT NULL UNIQUE,
    password    VARCHAR(255)    NOT NULL
);



-- Datos de prueba

INSERT INTO clientes (dni, nombre, apellidos, direccion, codpostal, telefono)
VALUES ('1111111A', 'Juan ', 'Martínez', 'C/. Su casa', 11540, '12345678'),
('22222222A', 'María ', 'González', 'C/. Su otra casa', 11540, '111111222');

INSERT INTO desarrolladoras (nombre)
VALUES ('The Game Kitchen'), ('Valve');

INSERT INTO videojuegos (nombre, salida, precio, desarrolladora_id)
VALUES ('Blasphemous', '2019-04-20 14:12:00', 39.90, 1),
('Half-life 3', '2025-11-30 20:00:00', 59.90, 2);

INSERT INTO usuarios(nick, password)
VALUES ('usuario', crypt('usuario', gen_salt('bf', 10)));
