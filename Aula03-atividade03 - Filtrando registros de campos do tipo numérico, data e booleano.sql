'''
Nesta aula aprenderemos os filtros para os outros campos, mas primeiro 
aprenderemos dois modelos que funcionam para qualquer tipo de campo, incluindo os de texto, o IS e IS NOT.

Começaremos então IS e usaremos o campo "cpf" como exemplo. 
Ao selecionarmos a nossa tabela com SELECT * FROM aluno; , 
notamos que apenas o CPF do "Diogo" está preenchido, enquanto os demais estão nulos.
Para filtrar esses dados, não podemos usar WHERE cpf = NULL , porque "= NULL" não é um resultado válido, 
então não retornará nenhum resultado.
'''
SELECT *
    FROM aluno
 WHERE cpf IS NULL;


SELECT *
    FROM aluno
 WHERE cpf IS NOT NULL;


SELECT *
    FROM aluno
 WHERE idade = 35;


SELECT *
    FROM aluno
 WHERE idade <> 36;


SELECT *
    FROM aluno
 WHERE idade >= 36;


SELECT *
    FROM aluno
 WHERE idade <= 36;


SELECT *
    FROM aluno
 WHERE idade > 35;


SELECT *
    FROM aluno
 WHERE idade < 100;


SELECT *
    FROM aluno
 WHERE idade BETWEEN 10 AND 40;



'''
Filtros Booleano
'''
SELECT * FROM aluno WHERE ativo = false

SELECT * FROM aluno WHERE ativo = true

	
SELECT * FROM aluno WHERE ativo IS Null

SELECT * FROM aluno WHERE ativo IS NOT Null







