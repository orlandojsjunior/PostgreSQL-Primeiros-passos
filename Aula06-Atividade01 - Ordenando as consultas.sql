-- Ordenando Consultas 

-- criando um banco de dados simulando o cadastro de funcionários.

CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);

-- Adicionaremos dados à tabela.

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');


/* Com o SELECT * FROM funcionarios , observamos que os registros foram efetuados com sucesso. 
Agora podemos definir uma ordem para os dados aparecerem na busca. Para isso, utilizamos a cláusula ORDER BY nome_do_campo .*/

SELECT * 
    FROM funcionarios
    ORDER BY nome;

SELECT * 
    FROM funcionarios
    ORDER BY nome, matricula;

SELECT * 
    FROM funcionarios
    ORDER BY nome, matricula DESC;

SELECT * 
    FROM funcionarios
    ORDER BY 3,2;



-- Inserindo mais um "Diogo" na nossa tabela

INSERT INTO funcionarios (
	matricula, 
	nome, 
	sobrenome
) 	
VALUES ('M007', 'Diogo', 'Oliveira');

SELECT *
    FROM funcionarios
    ORDER BY 3, 4, 2

/* Agora nossa tabela retorna os Diogo's Marcarenhas's antes do Diogo Oliveira, porque na ordenação por nome eles ficaram juntos,
mas pelo sobrenome, o "Macarenhas" aparece antes de "Oliveira". Testaremos uma busca diferente, com a ordenação começará pelo sobrenome em ordem decrescente, 
seguida pelo nome em ordem decrescente e pela matrícula em ordem crescente.*/

SELECT *
    FROM funcionarios
    ORDER BY 4 DESC, nome DESC, 2


SELECT 
        aluno.id as aluno_id,
        aluno.nome as "Nome do Aluno",
        curso.id as "curso_id",
        curso.nome as "Nome do Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
    ORDER BY nome

-- podemos priorizar a organização pelo nome do curso. Então mudaremos nosso comando de ordem.
	
SELECT 
        aluno.id as aluno_id,
        aluno.nome as "Nome do Aluno",
        curso.id as "curso_id",
        curso.nome as "Nome do Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
    ORDER BY curso.nome, aluno.nome DESC

SELECT * FROM CURSO;
SELECT * FROM ALUNO;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (20, 3);

