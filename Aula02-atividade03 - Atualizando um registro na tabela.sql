SELECT
	*
FROM
	ALUNO
WHERE
	ID = 1;

UPDATE ALUNO
SET
	NOME = 'Nico',
	CPF = '10987654321',
	OBSERVACAO ='Teste',
	IDADE = 38,
	DINHEIRO = 15.32,
	ALTURA = 1.90,
	ATIVO = FALSE,
	DATA_NASCIMENTO = '1980-01-15',
	HORA_AULA = '13:00:00',
	MATRICULADO_EM = '2020-01-02 15:00:00'
WHERE
	ID = 1;

SELECT
	*
FROM
	ALUNO;