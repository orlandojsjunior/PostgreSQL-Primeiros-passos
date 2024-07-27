SELECT
  *
FROM
  ALUNO;

SELECT
  *
FROM
  CURSO;

SELECT
  *
FROM
  ALUNO
  JOIN ALUNO_CURSO
  ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
  SELECT
    *
  FROM
    ALUNO
    JOIN ALUNO_CURSO
    ON ALUNO_CURSO.ALUNO_ID = ALUNO.ID
    JOIN CURSO
    ON CURSO.ID = ALUNO_CURSO.CURSO_ID INSERT INTO ALUNO_CURSO (ALUNO_ID,
    CURSO_ID) VALUES (2,
    2);

SELECT aluno.nome as aluno,
       curso.nome as curso
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso       ON curso.id             = aluno_curso.curso_id




SELECT aluno.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso ON curso.id = aluno_curso.curso_id




/*
Nesta aula aprenderemos como juntar tabelas em uma consulta. 
Começaremos identificando quais os dados temos nas tabelas, 
usando SELECT * FROM aluno; , para checarmos os dois alunos do nosso registro, e SELECT * FROM curso; , 
para recuperarmos os dois cursos registrados.

Até o momento, para sabermos em qual o curso o aluno está matriculado, 
usamos o SELECT * FROM nome_da_tabela WHERE id = para consultar individualmente o id do aluno e do curso em cada tabela. 
Contudo, essa não é uma boa forma para visualizarmos os dados, então aprenderemos como fazer essa consulta em uma única query.

Para isso, faremos uma junção (JOIN), comando que une os dados existentes na tabela "A" com os dados existentes na tabela "B".