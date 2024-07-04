SELECT * FROM aluno;
SELECT * FROM curso;



SELECT *
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id



SELECT aluno.nome as aluno,
       curso.nome as curso
  FROM aluno
  JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
  JOIN curso ON curso.id = aluno_curso.curso_id


INSERT INTO aluno_curso


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
