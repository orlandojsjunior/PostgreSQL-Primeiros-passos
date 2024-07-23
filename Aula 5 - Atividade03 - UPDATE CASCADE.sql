-- Função UPDATE

UPDATE aluno
    SET id = 10
    WHERE id = 2;

/*
Nosso código solicitou ao programa a atualização do "id = 2" para o "id = 10", 
mas a execução retorna uma mensagem de erro. Isso acontece pelo mesmo motivo que não conseguíamos apagar os registros antes, ou seja, 
não conseguimos atualizar os dados de uma tabela relacionada a outro banco de dados. Tanto que se tentarmos atualizar o id do João, 
que não está matriculado em nenhum curso, teremos sucesso.*/

UPDATE aluno
    SET id = 20
    WHERE id = 4;

-- Assim como atualizamos com o comando DELETE CASCADE, adicionaremos o código UPDATE CASCADE

DROP TABLE aluno_curso; -- apagando a tebala para atulizar o código

-- Se eu altero um dado na tabela de aluno vai ser feito um UPDATE tbm na tabela aluno_curso

CREATE TABLE aluno_curso (
    aluno_id INTEGER,
        curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),

        FOREIGN KEY (aluno_id)
         REFERENCES aluno (id)
         ON DELETE CASCADE
         ON UPDATE CASCADE,

        FOREIGN KEY (curso_id)
         REFERENCES curso (id)

);

/* Com nosso novo código, quando atualizarmos a tabela "aluno", o banco de dados "aluno_curso" também terá mudanças. 
Para testarmos, faremos as matrículas novamente, tomando cuidado para não incluirmos o Diogo, já que ele não está mais registrado.*/

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1);


/* Executando a query, confirmaremos que os alunos Vinícius e Nico foram matriculados no cuso de HTML. 
Adicionando aluno.id as aluno_id, e curso.id as curso_id à query, também veremos os id's dos alunos e dos cursos, o que facilitará nosso teste.*/


SELECT 
        aluno.id as aluno_id,
        aluno.nome as "Nome do Aluno",
        curso.id as "curso_id",
        curso.nome as "Nome do Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id


UPDATE aluno SET id = 10 WHERE id = 2 -- atualizando a tabela
	
SELECT * FROM aluno_curso;
