-- Função UPDATE

UPDATE ALUNO
SET
    ID = 10
WHERE
    ID = 2;

/*
Nosso código solicitou ao programa a atualização do "id = 2" para o "id = 10", 
mas a execução retorna uma mensagem de erro. Isso acontece pelo mesmo motivo que não conseguíamos apagar os registros antes, ou seja, 
não conseguimos atualizar os dados de uma tabela relacionada a outro banco de dados. Tanto que se tentarmos atualizar o id do João, 
que não está matriculado em nenhum curso, teremos sucesso.*/

UPDATE ALUNO
SET
    ID = 20
WHERE
    ID = 4;

-- Assim como atualizamos com o comando DELETE CASCADE, adicionaremos o código UPDATE CASCADE

DROP TABLE ALUNO_CURSO;

-- apagando a tebala para atulizar o código

-- Se eu altero um dado na tabela de aluno vai ser feito um UPDATE tbm na tabela aluno_curso

CREATE TABLE ALUNO_CURSO (
    ALUNO_ID INTEGER,
    CURSO_ID INTEGER,
    PRIMARY KEY (ALUNO_ID, CURSO_ID),
    FOREIGN KEY (ALUNO_ID) REFERENCES ALUNO (ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CURSO_ID) REFERENCES CURSO (ID)
);

/* Com nosso novo código, quando atualizarmos a tabela "aluno", o banco de dados "aluno_curso" também terá mudanças. 
Para testarmos, faremos as matrículas novamente, tomando cuidado para não incluirmos o Diogo, já que ele não está mais registrado.*/

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

/* Executando a query, confirmaremos que os alunos Vinícius e Nico foram matriculados no cuso de HTML. 
Adicionando aluno.id as aluno_id, e curso.id as curso_id à query, também veremos os id's dos alunos e dos cursos, o que facilitará nosso teste.*/


SELECT
    ALUNO.ID AS ALUNO_ID,
    ALUNO.NOME AS "Nome do Aluno",
    CURSO.ID AS "curso_id",
    CURSO.NOME AS "Nome do Curso"
FROM
    ALUNO
    JOIN ALUNO_CURSO
    ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
    JOIN CURSO
    ON CURSO.ID = ALUNO_CURSO.CURSO_ID UPDATE ALUNO SET ID = 10
WHERE
    ID = 2 -- atualizando a tabela
    SELECT
        *
    FROM
        ALUNO_CURSO;