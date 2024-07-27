-- Nesta aula aprenderemos como limitar a quantidade de resultados ao realizarmos uma consulta.


SELECT
  *
FROM
  FUNCIONARIOS;

SELECT
  *
FROM
  FUNCIONARIOS LIMIT 5;

SELECT
  *
FROM
  FUNCIONARIOS
ORDER BY
  NOME LIMIT 5;

SELECT
  *
FROM
  FUNCIONARIOS
ORDER BY
  ID LIMIT 5 OFFSET 1;

-- Essa cláusula pula a quantidade de linhas que estipularmos antes de exibir a busca