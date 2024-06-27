/*
Nesta aula aprenderemos como utilizar os operadores AND (e) e OR (ou) para combinar os filtros. 
Começaremos pelo operador AND .
Imaginemos a situação em que precisássemos resgatar todos os nomes que comecem com a letra "D" e tenham o CPF preenchido.
Para isso, usamos o operador AND , que funciona como uma soma de condições, 
apresentando apenas os resultados que atendam às duas exigências que colocamos.
*/

SELECT
	*
FROM
	ALUNO
WHERE
	NOME LIKE 'Diogo'
	AND CPF IS NOT NULL;

SELECT
	*
FROM
	ALUNO
WHERE
	NOME LIKE 'Diogo'
	OR NOME LIKE 'Rodrigo'
	OR NOME LIKE 'Nico%'