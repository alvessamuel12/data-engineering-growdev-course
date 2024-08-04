CREATE TABLE "editora" (
  "id_editora" SERIAL PRIMARY KEY,
  "id_livro" INT
);

CREATE TABLE "cliente" (
  "id_cliente" SERIAL PRIMARY KEY,
  "nome" VARCHAR(255) NOT NULL,
  "email" VARCHAR(255) NOT NULL,
  "cpf" VARCHAR(14) NOT NULL,
  "telefone" VARCHAR(11) NOT NULL,
  "data_nascimento" DATE NOT NULL,
  "id_endereco" INT,
  "data_criacao" DATE NOT NULL
);

CREATE TABLE "emprestimo" (
  "id_emprestimo" SERIAL PRIMARY KEY,
  "id_cliente" INT,
  "valor" FLOAT NOT NULL,
  "ativo" INT NOT NULL,
  "data_emprestimo" DATE NOT NULL,
  "data_devolucao" DATE
);

CREATE TABLE "livro" (
  "id_livro" SERIAL PRIMARY KEY,
  "nome" VARCHAR(255),
  "id_autor" INT,
  "id_editora" INT,
  "ano_lancamento" int,
  "edicao" int,
  "id_genero" int,
  "codigo_barras" int,
  "id_idioma_impresso" int,
  "id_idioma_original" int
);

CREATE TABLE "idioma" (
  "id_idioma" SERIAL PRIMARY KEY,
  "nome" VARCHAR(255)
);

CREATE TABLE "genero" (
  "id_genero" SERIAL PRIMARY KEY,
  "nome" VARCHAR(255)
);

CREATE TABLE "autor" (
  "id_autor" SERIAL PRIMARY KEY,
  "nome" VARCHAR(255) NOT NULL,
  "nacionalidade" VARCHAR(255)
);

CREATE TABLE "livros_emprestimo" (
  "id_livro_emprestimo" SERIAL PRIMARY KEY,
  "id_emprestimo" INT,
  "id_livro" INT,
  "valor" float,
  "quantidade" INT,
  "classificacao_etaria" INT
);

CREATE TABLE "endereco" (
  "id_endereco" SERIAL PRIMARY KEY,
  "id_cidade" INT NOT NULL
);

CREATE TABLE "cidade" (
  "id_cidade" SERIAL PRIMARY KEY,
  "id_estado" INT,
  "nome" VARCHAR(255)
);

CREATE TABLE "estado" (
  "id_estado" SERIAL PRIMARY KEY
);

CREATE UNIQUE INDEX ON "cliente" ("email", "cpf");

ALTER TABLE "emprestimo" ADD FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente");

ALTER TABLE "livros_emprestimo" ADD FOREIGN KEY ("id_emprestimo") REFERENCES "emprestimo" ("id_emprestimo");

ALTER TABLE "livros_emprestimo" ADD FOREIGN KEY ("id_livro") REFERENCES "livro" ("id_livro");

ALTER TABLE "endereco" ADD FOREIGN KEY ("id_cidade") REFERENCES "cidade" ("id_cidade");

ALTER TABLE "cidade" ADD FOREIGN KEY ("id_estado") REFERENCES "estado" ("id_estado");

ALTER TABLE "livro" ADD FOREIGN KEY ("id_autor") REFERENCES "autor" ("id_autor");

ALTER TABLE "endereco" ADD FOREIGN KEY ("id_endereco") REFERENCES "cliente" ("id_endereco");

ALTER TABLE "livro" ADD FOREIGN KEY ("id_genero") REFERENCES "genero" ("id_genero");

ALTER TABLE "livro" ADD FOREIGN KEY ("id_idioma_impresso") REFERENCES "idioma" ("id_idioma");

ALTER TABLE "livro" ADD FOREIGN KEY ("id_idioma_original") REFERENCES "idioma" ("id_idioma");

ALTER TABLE "livro" ADD FOREIGN KEY ("id_editora") REFERENCES "editora" ("id_editora");
