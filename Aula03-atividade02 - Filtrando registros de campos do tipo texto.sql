''' 
	Inserindo dados na tabela
'''
INSERT INTO aluno (nome) VALUES ('Vinícius Dias');
INSERT INTO aluno (nome) VALUES ('Nico Steppat');
INSERT INTO aluno (nome) VALUES ('João Roberto');
INSERT INTO aluno (nome) VALUES ('Diego');


''' 
	Usar o = quando precisar pesquisar exatamente o 'texto'.
'''
SELECT *
    FROM aluno
 WHERE nome = 'Diogo';

''' 
	Usar o <> ou != quando precisar pesquisar diferente do 'texto'.
'''
SELECT *
    FROM aluno
 WHERE nome <> 'Diogo';


''' 
	Usar o LIKE quando precisar usar um operador (_ ou %) especial na pesquisa.
'''
SELECT * 
    FROM aluno
 WHERE nome LIKE 'Di_go';

SELECT * 
    FROM aluno
 WHERE nome LIKE 'D%';

SELECT * 
    FROM aluno
 WHERE nome LIKE '%s';

SELECT * 
    FROM aluno
 WHERE nome LIKE '% %';

SELECT * 
    FROM aluno
 WHERE nome LIKE '%i%a%';


''' 
	Usar o NOT LIKE quando precisar ignorar uma condição na pesquisa.
'''
SELECT * 
    FROM aluno
 WHERE nome NOT LIKE 'Di_go';