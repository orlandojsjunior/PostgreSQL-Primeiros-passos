CREATE TABLE CURSO (
    ID INTEGER,
    NOME VARCHAR(255)
);

-- Criando a tabela "curso".


INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    NULL,
    NULL
);

-- Inserindo valores vazios na tabela curso.

SELECT
    *
FROM
    CURSO;

'''
É importante sabermos quais os campos não podem ficar vazios para informarmos
no momento em que criarmos a tabela, ou será permitido o registro de valores nulos.
'''

DROP TABLE CURSO;

-- Apagando a tabela.

CREATE TABLE CURSO (
    ID INTEGER NOT NULL,
    NOME VARCHAR(255) NOT NULL
);

-- Criando a tabela "curso" e informando que os campos não podem receber o valores nulos.


INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    NULL,
    NULL
);

-- testando a inserção de valores vazios(nulos) na tabela curso.
INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    NULL
);

INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    NULL,
    'HTML'
);

INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'HTML'
);

-- Inserindo valores na tabela curso.

INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'JavaScript'
);

-- Inserindo valores na tabela curso mas com os mesmos indetificadores (id).


DROP TABLE CURSO;

-- Apagando a tabela.

CREATE TABLE CURSO (
    ID INTEGER NOT NULL UNIQUE,
    NOME VARCHAR(255) NOT NULL
);

-- Criando novamente a tabela "curso" e informando que os campos não podem receber o valores nulos e que os identificadores serão unicos.


INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'HTML'
);

-- Inserindo valores na tabela curso.
INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'JavaScript'
);

-- testando se a tabela vai permitir valores com o mesmo indetificador (id).


INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    2,
    'JavaScript'
);

DROP TABLE CURSO;

-- Apagando a tabela.

CREATE TABLE CURSO (
    ID INTEGER PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL
);

-- Criando novamente a tabela "curso" com a chave primaria.

INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'HTML'
);

-- Inserindo valores na tabela curso.
INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    1,
    'JavaScript'
);

-- testando se a tabela vai permitir valores com o mesmo indetificador (id).

INSERT INTO CURSO (
    ID,
    NOME
) VALUES (
    2,
    'JavaScript'
);

SELECT
    *
FROM
    CURSO;