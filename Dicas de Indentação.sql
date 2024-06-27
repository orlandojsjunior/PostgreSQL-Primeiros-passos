/*

A indentação em SQL é essencial para melhorar a legibilidade e a manutenção do código.

*/

-- Exemplo 1: SELECT com Vários Campos

SELECT 
    id, 
    name, 
    email, 
    phone 
FROM 
    customers 
WHERE 
    state = 'SP' 
    AND age > 18 
ORDER BY 
    name;


-- Exemplo 2: SELECT com JOIN

SELECT 
    customers.name, 
    orders.order_date, 
    orders.total 
FROM 
    customers 
INNER JOIN 
    orders 
    ON customers.id = orders.customer_id 
WHERE 
    customers.state = 'SP';


-- Exemplo 3: SELECT com Subquery

SELECT 
    name, 
    (SELECT COUNT(*) 
     FROM orders 
     WHERE orders.customer_id = customers.id) AS order_count 
FROM 
    customers 
WHERE 
    state = 'SP';


-- Exemplo 4: INSERT

INSERT INTO aluno (
    nome,
    cpf,
    observacao,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matriculado_em
)
VALUES (
    'Orlando',
    '12345678901',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    44,
    100.50,
    1.82,
    TRUE,
    '1979-11-01',
    '17:30:00',
    '2024-06-22 13:01:00'
);


-- Exemplo 5: UPDATE

UPDATE aluno
SET 
    nome = 'Orlando Silva',
    idade = 45,
    dinheiro = 150.75
WHERE 
    id = 1;


-- Exemplo 6: DELETE

DELETE FROM aluno 
WHERE id = 1;


/*
Dicas de Indentação:

Consistência: Use a mesma quantidade de espaços (geralmente 2 ou 4) para cada nível de indentação.

Clareza: Separe as cláusulas principais (SELECT, FROM, WHERE, ORDER BY) em linhas diferentes.

Legibilidade: Alinhe as condições dentro das cláusulas WHERE para facilitar a leitura.


Seguindo essas práticas, seu código SQL ficará mais organizado e fácil de entender.

*/


-- Artigo - SQL sem bagunça: como organizar melhor seus códigos com indentação e exemplos:

-- https://medium.com/@panData/sql-sem-bagun%C3%A7a-como-organizar-melhor-seus-c%C3%B3digos-com-indenta%C3%A7%C3%A3o-e-exemplos-6b67d120ac66

