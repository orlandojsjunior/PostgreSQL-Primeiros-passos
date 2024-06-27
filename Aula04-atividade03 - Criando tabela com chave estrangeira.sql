SELECT * FROM aluno;
SELECT * FROM curso;

DROP TABLE aluno;
	

CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
); 

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Vinícius');

-- Temos uma tabela com dois alunos e outra tabela com dois cursos. Para relacionarmos os dois bancos de dados, criaremos uma tabela nova.

CREATE TABLE aluno_curso (
    aluno_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno_id, curso_id)
); -- Relacionando as tabelas

SELECT * FROM aluno;
SELECT * FROM curso; 

'''
Ao criarmos nossa tabela, codamos uma chave primária com dois campos, ou seja, uma chave primária composta. 
Dessa forma, declaramos que tanto o id do aluno, quanto o id do curso é um campo único que não pode ser nulo.
'''

SELECT * FROM aluno_curso;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

SELECT * FROM aluno WHERE id = 1;
SELECT * FROM curso WHERE id = 1;

SELECT * FROM aluno WHERE id = 2;
SELECT * FROM curso WHERE id = 1;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1); -- Inserindo um aluno que nao existe na tabela, (Query returned successfully), nesse caso cria uma inconsistência no BD por causa da auxencia de chave estrangeira. 


DROP TABLE aluno_curso;

-- Criando a tabela com as chave primaria e estrangeira e referenciando os campos nas tabelas.
	
CREATE TABLE aluno_curso (
    aluno_id INTEGER,
        curso_id INTEGER,
        PRIMARY KEY (aluno_id, curso_id),

        FOREIGN KEY (aluno_id) -- CAMPO_NA_TABELA_ORIGEM
         REFERENCES aluno (id), -- CAMPO_NA_TABELA DESTINO

        FOREIGN KEY (curso_id) -- CAMPO_NA_TABELA_ORIGEM
         REFERENCES curso (id) -- CAMPO_NA_TABELA DESTINO

); 

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,1); -- Agora a tabela não aceita a inclusao de registros de um aluno ou curso que nao existe no BD.
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,3);


-- Obs.: as chaves desempenham um papel crucial na prevenção de inconsistências em bancos de dados (BD).





