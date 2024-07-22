CREATE DATABASE veterinario;

USE veterinario;

CREATE TABLE tb_veterinarios(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
especialidade VARCHAR(255) NOT NULL,
telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

drop table tb_veterinarios;

CREATE TABLE tb_clientes(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
endereco VARCHAR(255) NOT NULL,
telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pets(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
especie VARCHAR(255) NOT NULL,
raca VARCHAR(255) NOT NULL,
data_nascimento DATETIME NOT NULL,
id_cliente BINARY(16) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id)
);

CREATE TABLE tb_atendimentos(
id BINARY(16) NOT NULL,
id_pet BINARY(16) NOT NULL,
id_veterinario BINARY(16) NOT NULL,
data_atendimento DATETIME NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_pet) REFERENCES tb_pets(id),
FOREIGN KEY (id_veterinario) REFERENCES tb_veterinarios(id)
);

SELECT *, BIN_TO_UUID(id) FROM tb_veterinarios;

INSERT INTO tb_veterinarios VALUES(
UUID_TO_BIN(UUID()),
"renata",
"cirurgia",
"11987865499"
);

INSERT INTO tb_veterinarios VALUES(
UUID_TO_BIN(UUID()),
"monica",
"cardiologia",
"11901861439"
);

INSERT INTO tb_veterinarios VALUES(
UUID_TO_BIN(UUID()),
"aline",
"banho e tosa",
"11901511439"
);

SELECT *, BIN_TO_UUID(id) FROM tb_clientes;


INSERT INTO tb_clientes VALUES(
UUID_TO_BIN(UUID()),
"Robert",
"Rua paulista das flores",
"11986734566"
);

INSERT INTO tb_clientes VALUES(
UUID_TO_BIN(UUID()),
"Bonifaçio",
"Rua orquideas das dores",
"11986734576"
);

INSERT INTO tb_clientes VALUES(
UUID_TO_BIN(UUID()),
"ADEMIR",
"Rua Das trevas ",
"11916934506"
);

SELECT *, BIN_TO_UUID(id) FROM tb_clientes;

INSERT INTO tb_pets VALUES(
UUID_TO_BIN(UUID()),
"bombom do xamdom",
"cao",
"chihuahua",
"2001-09-11",
UUID_TO_BIN("01add7c8-4851-11ef-a1ca-b445067b7e54")
);

INSERT INTO tb_pets VALUES(
UUID_TO_BIN(UUID()),
"miau",
"gato",
"felino",
"2009-11-13",      
UUID_TO_BIN("043e2ae3-4851-11ef-a1ca-b445067b7e54")
);

INSERT INTO tb_pets VALUES(
UUID_TO_BIN(UUID()),
"Leao",
"calopsita",
"passaroo",
"2022-10-23",      
UUID_TO_BIN("f9d866ca-4850-11ef-a1ca-b445067b7e54")
);

SELECT *, BIN_TO_UUID(id) FROM tb_pets;

INSERT INTO tb_atendimentos VALUES(
UUID_TO_BIN(UUID()),
UUID_TO_BIN("64b69006-4855-11ef-a1ca-b445067b7e54"),
UUID_TO_BIN("088fbe41-484b-11ef-a1ca-b445067b7e54"),
"2024-07-12",
"infecção urinária"
);

INSERT INTO tb_atendimentos VALUES(
UUID_TO_BIN(UUID()),
UUID_TO_BIN("684c7f66-4855-11ef-a1ca-b445067b7e54"),
UUID_TO_BIN("15fccb5d-484b-11ef-a1ca-b445067b7e54"),
"2024-06-22",
"infarto"
);

INSERT INTO tb_atendimentos VALUES(
UUID_TO_BIN(UUID()),
UUID_TO_BIN("cd46c2fd-4852-11ef-a1ca-b445067b7e54"),
UUID_TO_BIN("2d27c9dd-484b-11ef-a1ca-b445067b7e54"),
"2024-09-21",
"Banho de tosa"
);

SELECT *, BIN_TO_UUID(id) FROM tb_atendimentos;
SELECT * FROM tb_atendimentos;

SELECT MIN(data_nascimento) FROM tb_pets;
SELECT MAX(data_nascimento) FROM tb_pets;

SELECT COUNT(id) FROM tb_pets;

SELECT * FROM tb_veterinarios ORDER BY nome ASC;
SELECT * FROM tb_veterinarios ORDER BY nome DESC;

SELECT MIN(data_atendimento) FROM tb_atendimentos;
SELECT MAX(data_atendimento) FROM tb_atendimentos;

