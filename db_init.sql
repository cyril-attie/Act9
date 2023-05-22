DROP DATABASE blog;

CREATE DATABASE blog DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE blog;

CREATE TABLE Autores (
    id int NOT NULL AUTO_INCREMENT, 
    nombre varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    imagen varchar(255) NOT NULL DEFAULT 'default.png',
    -- CHECK (`email` REGEXP '/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/g'),
    PRIMARY KEY (id),
    UNIQUE (email)
)
ENGINE InnoDB
DEFAULT CHARACTER SET utf8mb4
COLLATE  utf8mb4_unicode_ci;


CREATE TABLE Posts (
    id int NOT NULL AUTO_INCREMENT, 
    titulo varchar(255) NOT NULL,
    descripcion TEXT NOT NULL,
    fecha TIMESTAMP NOT NULL DEFAULT NOW(),
    categoria varchar(60), 
    autor_id int,
    CONSTRAINT fk_autor FOREIGN KEY (autor_id) REFERENCES Autores(id), 
    PRIMARY Key (id)
)
ENGINE InnoDB
DEFAULT CHARACTER SET utf8mb4
COLLATE  utf8mb4_unicode_ci;



