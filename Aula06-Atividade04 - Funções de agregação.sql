-- Funções de agregação para integrar registros em um único resultado

-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT
  COUNT (ID) -- COUNT - Retorna a quantidade de registros
FROM
  FUNCIONARIOS;

SELECT
  COUNT (ID),
  SUM (ID) -- SUM - Retorna a soma dos registros
FROM
  FUNCIONARIOS;

SELECT
  COUNT (ID),
  SUM (ID),
  MAX (ID) -- MAX - Retorna o maior valor dos registros
FROM
  FUNCIONARIOS;

SELECT
  COUNT (ID),
  SUM (ID),
  MAX (ID),
  MIN (ID) -- MIN - Retorna o menor valor dos registros
FROM
  FUNCIONARIOS;

SELECT
  COUNT (ID),
  SUM(ID),
  MAX(ID),
  MIN(ID),
  ROUND(AVG(ID), 0) -- AVG - Retorna a média dos registros
FROM
  FUNCIONARIOS;