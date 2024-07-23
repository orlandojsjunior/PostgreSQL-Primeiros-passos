-- Você está trabalhando em um projeto de agenda telefônica, que existe com a estrutura abaixo:

CREATE TABLE pessoas (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE telefones (
    id INTEGER PRIMARY KEY,
    pessoa_id INTEGER,
    numero VARCHAR(15) NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

INSERT INTO pessoas (id, nome) VALUES (1,'Diogo');
INSERT INTO telefones (id, pessoa_id, numero) VALUES (1,1,'(21) 98765-4321');


-- Ao executar os comandos abaixo:

UPDATE pessoas SET id = 2 WHERE nome = 'Diogo'; -- Sucesso na alteração do id da pessoa
DELETE FROM pessoas WHERE nome = 'Diogo'; -- Erro na exclusão da pessoa


-- Qual será o resultado?

/*
	
Sucesso na alteração do id da pessoa e erro na exclusão da pessoa

Alternativa correta! A atualização ocorrerá com sucesso, atualizando o campo pessoa_id, na tabela telefones, para 2, e retornará erro na exclusão, 
pois existe registro na tabela de telefones para a pessoa com nome Diogo.
*/