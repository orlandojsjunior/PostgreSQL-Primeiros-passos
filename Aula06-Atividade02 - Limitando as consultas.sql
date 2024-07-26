-- Nesta aula aprenderemos como limitar a quantidade de resultados ao realizarmos uma consulta.


SELECT * FROM funcionarios; 

SELECT * FROM funcionarios LIMIT 5; 

SELECT *
  FROM funcionarios
  ORDER BY nome
LIMIT 5;


SELECT *
  FROM funcionarios
  ORDER BY id
 LIMIT 5
OFFSET 1; -- Essa cláusula pula a quantidade de linhas que estipularmos antes de exibir a busca