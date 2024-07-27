/*
Imaginemos a situação em que um aluno não está matriculado em nenhum curso. 
Vamos aprender uma forma de encontrá-lo na nossa pesquisa. Antes disso, 
registraremos esse aluno na nossa tabela com INSERT INTO aluno (nome) VALUES ('Nico'); . 
Ao escrevermos SELECT * FROM aluno , encontramos o registro do Nico na tabela "aluno", 
porém isso muda ao executarmos o código que retorna alunos e cursos.
*/

INSERT INTO ALUNO (
    NOME
) VALUES (
    'Nico'
);

SELECT
    ALUNO.NOME AS "Nome do Aluno",
    CURSO.NOME AS "Nome do Curso"
FROM
    ALUNO
    JOIN ALUNO_CURSO
    ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
    JOIN CURSO
    ON CURSO.ID = ALUNO_CURSO.CURSO_ID
 /*
O registro do Nico não aparece nos resultados porque ele não está matriculado em nenhum curso. 
O mesmo acontece se escrevermos INSERT INTO curso (id, nome) VALUES (3, 'CSS') , 
que aparece na tabela "curso", mas não aparece na busca acima.

Isso acontece porque o comando JOIN só retorna os dados de alunos matriculados, 
o que não é o caso do Nico, e de cursos com alunos, o que não é o caso do CSS. 
Portanto, ao fazer a busca do "id = 3" na tabela aluno_curso, 
o JOIN não encontra correspondência e descarta essa informação dos resultados.

Por isso aprenderemos comandos para juntar tabelas quando há informações faltando. 
O primeiro comando é o LEFT JOIN , que significa que existe um dado na tabela da esquerda, 
mas não existe na tabela da direita.
*/ INSERT INTO CURSO (ID,
    NOME) VALUES (3,
    'CSS');

-- JUNTANDO E PRIORIZANDO OS DADOS DA TABELA DA ESQUERDA
SELECT
    ALUNO.NOME AS "Nome do Aluno",
    CURSO.NOME AS "Nome do Curso"
FROM
    ALUNO
    LEFT JOIN ALUNO_CURSO
    ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
    LEFT JOIN CURSO
    ON CURSO.ID = ALUNO_CURSO.CURSO_ID

 -- JUNTANDO E PRIORIZANDO OS DADOS DA TABELA DA DIREITA
    SELECT
        ALUNO.NOME AS "Nome do Aluno",
        CURSO.NOME AS "Nome do Curso"
    FROM
        ALUNO
        RIGHT JOIN ALUNO_CURSO
        ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
        RIGHT JOIN CURSO
        ON CURSO.ID = ALUNO_CURSO.CURSO_ID
 /*
A terceira situação é quando não importa se o dado está apenas na tabela da direita ou apenas na tabela da esquerda, 
queremos que ele apareça. Para isso usamos o código FULL JOIN , que irá considerar todos os dados, mesmo que o campo da direita ou o campo da esquerda esteja nulo.
*/
        SELECT
            ALUNO.NOME AS "Nome do Aluno",
            CURSO.NOME AS "Nome do Curso"
        FROM
            ALUNO
            FULL JOIN ALUNO_CURSO
            ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
            FULL JOIN CURSO
            ON CURSO.ID = ALUNO_CURSO.CURSO_ID
 /*
Adicionaremos mais um aluno para descobrirmos o que acontece com o comando CROSS JOIN . 
Então codamos INSERT INTO aluno (nome) VALUES ('João'); . Após registramos o João, podemos executar novamente nosso último select.
	
Existe outro tipo de junção que relaciona todos os dados da tabela "A" com todos os dados da tabela "B". 
Para essa junção, escreveremos o select sem passar pela tabela "aluno_curso".
*/ 

INSERT INTO ALUNO (NOME) VALUES ('João');

SELECT
    ALUNO.NOME AS "Nome do Aluno",
    CURSO.NOME AS "Nome do Curso"
FROM
    ALUNO CROSS
    JOIN CURSO