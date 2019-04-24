CREATE DATABASE	projeto_cursos;
CREATE TABLE usuarios(
	id_usuario INT NOT NULL PRIMARY KEY UNIQUE auto_increment,
    nome VARCHAR(65) NOT NULL,
    email VARCHAR(65) NOT NULL,
    senha VARCHAR(65) NOT NULL,
    cpf INT,
    foto VARCHAR(65),
    tipo_usuario INT
);

CREATE TABLE tipo_usuario (
	id_tipo_usuario INT NOT NULL PRIMARY KEY UNIQUE auto_increment,
    nome VARCHAR(65) NOT NULL
);

CREATE TABLE cursos (
	id_curso INT NOT NULL PRIMARY KEY UNIQUE AUTO_INCREMENT,
    nome VARCHAR(65) NOT NULL,
    descricao VARCHAR(1000),
    preco FLOAT DEFAULT 0.0,
    tag VARCHAR(65),
    imagem VARCHAR(6500),
    professor INT
);

CREATE TABLE professor (
	id_professor INT NOT NULL PRIMARY KEY UNIQUE AUTO_INCREMENT,
    nome VARCHAR(111) NOT NULL
);

ALTER TABLE usuariosusuariosid_usuario
CHANGE tipo_usuario tipo_usuario_fk INT;

ALTER TABLE usuarios ADD FOREIGN KEY (tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario);

ALTER TABLE cursos
CHANGE professor_fk professor_fk int;

ALTER TABLE cursos
ADD FOREIGN KEY (pcursosrofessor_fk) REFERENCES professor(id_professor);
