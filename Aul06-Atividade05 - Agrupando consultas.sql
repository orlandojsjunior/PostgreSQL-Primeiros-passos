-- Nesta aula aprenderemos como realizar agrupamentos em consultas.

/*
Adicionando o comando ORDER BY nome; à nossa busca, perceberemos a presença de três "Diogo"'s. 
Existem duas formas desse nome não se repetir nos resultados. A primeira que conheceremos será a partir do DISTINCT.
*/

SELECT *
FROM funcionarios;


SELECT DISTINCT -- O DISTINCT garante que os dados do campo solicitado não se repitam.
        nome
  FROM funcionarios
  ORDER BY nome;

/*
O DISTINCT garante que os dados do campo solicitado não se repitam, a partir do agrupamento de informações.
No nosso exemplo, estamos aplicando ao campo "nome", então ao executarmos o código acima, a lista retorna "Diogo" uma única vez. 
Observemos o que acontece se, além do nome, pedirmos o sobrenome.
*/

SELECT DISTINCT
        nome,
        sobrenome
  FROM funcionarios
  ORDER BY nome;

/*
Agora temos o retorno de dois "Diogo"'s, mas apenas um deles tem o sobrenome Mascarenhas, isso porque o agrupamento 
considerou o sobrenome para remover os registros duplicados. Contudo, como faríamos para contar quantos "Diogo Mascarenhas"'s temos no nosso banco? 
Vamos tentar com o COUNT(*)
*/

SELECT DISTINCT
       nome,
       sobrenome,
       COUNT(*)
  FROM funcionarios
  ORDER BY nome; -- Esse código retorna uma mensagem de erro, informando que nossos dados precisam estar no GROUP BY .

SELECT
       nome,
       sobrenome,
       COUNT(*) -- Executando esse código, notamos que função COUNT() retornou a quantidade de dados agrupados no nome "Diogo".
  FROM funcionarios
  GROUP BY nome, sobrenome
  ORDER BY nome;


/*
Para entendermos melhor esse agrupamento, faremos simulações com as tabelas "aluno", "curso" e "aluno_curso", 
criadas nas últimas aulas. Nossa primeira situação será contar todos os cursos com alunos. Para isso, precisamos do 
retorno dessas tabelas.
*/

SELECT *
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN curso ON curso.id = aluno_curso.curso_id

	
SELECT curso.nome,
        COUNT(aluno.id)
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN curso ON curso.id = aluno_curso.curso_id
    GROUP BY 1
    ORDER BY 1

