integer
real
serial
numeric

varchar
char(n)
text

boolean

date
time
timestamp

CREATE TABLE aluno(
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinehiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP
	
);

select * from aluno;

'''
Corrigigindo a coluna dinehiro

'''

ALTER TABLE aluno RENAME COLUMN dinehiro TO dinheiro;
