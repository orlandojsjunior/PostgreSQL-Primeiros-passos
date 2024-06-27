SELECT
    *
FROM
    ALUNO;

SELECT
    *
FROM
    CURSO;

DROP TABLE ALUNO;

CREATE TABLE ALUNO (
    ID SERIAL PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL
);

INSERT INTO ALUNO (
    NOME
) VALUES (
    'Diogo'
);

INSERT INTO ALUNO (
    NOME
) VALUES (
    'Vinícius'
);

-- Temos uma tabela com dois alunos e outra tabela com dois cursos. Para relacionarmos os dois bancos de dados, criaremos uma tabela nova.

CREATE TABLE ALUNO_CURSO (
    ALUNO_ID INTEGER,
    CURSO_ID INTEGER,
    PRIMARY KEY (ALUNO_ID, CURSO_ID)
);

-- Relacionando as tabelas

SELECT
    *
FROM
    ALUNO;

SELECT
    *
FROM
    CURSO;

'''
Ao criarmos nossa tabela, codamos uma chave primária com dois campos, ou seja, uma chave primária composta. 
Dessa forma, declaramos que tanto o id do aluno, quanto o id do curso é um campo único que não pode ser nulo.
'''

SELECT
    *
FROM
    ALUNO_CURSO;

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    1,
    1
);

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    2,
    1
);

SELECT
    *
FROM
    ALUNO
WHERE
    ID = 1;

SELECT
    *
FROM
    CURSO
WHERE
    ID = 1;

SELECT
    *
FROM
    ALUNO
WHERE
    ID = 2;

SELECT
    *
FROM
    CURSO
WHERE
    ID = 1;

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    3,
    1
);

-- Inserindo um aluno que nao existe na tabela, (Query returned successfully), nesse caso cria uma inconsistência no BD por causa da auxencia de chave estrangeira.


DROP TABLE ALUNO_CURSO;

-- Criando a tabela com as chave primaria e estrangeira e referenciando os campos nas tabelas.

CREATE TABLE ALUNO_CURSO (
    ALUNO_ID INTEGER,
    CURSO_ID INTEGER,
    PRIMARY KEY (ALUNO_ID, CURSO_ID),
    FOREIGN KEY (ALUNO_ID) -- CAMPO_NA_TABELA_ORIGEM
    REFERENCES ALUNO (ID), -- CAMPO_NA_TABELA DESTINO
    FOREIGN KEY (CURSO_ID) -- CAMPO_NA_TABELA_ORIGEM
    REFERENCES CURSO (ID) -- CAMPO_NA_TABELA DESTINO
);

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    1,
    1
);

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    2,
    1
);

INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    3,
    1
);

-- Agora a tabela não aceita a inclusao de registros de um aluno ou curso que nao existe no BD.
INSERT INTO ALUNO_CURSO (
    ALUNO_ID,
    CURSO_ID
) VALUES (
    3,
    3
);

-- Obs.: as chaves desempenham um papel crucial na prevenção de inconsistências em bancos de dados (BD).