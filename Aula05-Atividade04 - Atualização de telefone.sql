-- Você está trabalhando em um projeto de agenda telefônica, que existe com a estrutura abaixo:

CREATE TABLE PESSOAS (
    ID INTEGER PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL
);

CREATE TABLE TELEFONES (
    ID INTEGER PRIMARY KEY,
    PESSOA_ID INTEGER,
    NUMERO VARCHAR(15) NOT NULL,
    FOREIGN KEY (PESSOA_ID) REFERENCES PESSOAS (ID) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO PESSOAS (
    ID,
    NOME
) VALUES (
    1,
    'Diogo'
);

INSERT INTO TELEFONES (
    ID,
    PESSOA_ID,
    NUMERO
) VALUES (
    1,
    1,
    '(21) 98765-4321'
);

-- Ao executar os comandos abaixo:

UPDATE PESSOAS
SET
    ID = 2
WHERE
    NOME = 'Diogo';

-- Sucesso na alteração do id da pessoa
DELETE FROM PESSOAS
WHERE
    NOME = 'Diogo';

-- Erro na exclusão da pessoa


-- Qual será o resultado?

/*
	
Sucesso na alteração do id da pessoa e erro na exclusão da pessoa

Alternativa correta! A atualização ocorrerá com sucesso, atualizando o campo pessoa_id, na tabela telefones, para 2, e retornará erro na exclusão, 
pois existe registro na tabela de telefones para a pessoa com nome Diogo.
*/