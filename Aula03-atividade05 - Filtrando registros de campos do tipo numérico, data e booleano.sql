/*
Nesta aula aprenderemos os filtros para os outros campos, mas primeiro 
aprenderemos dois modelos que funcionam para qualquer tipo de campo, incluindo os de texto, o IS e IS NOT.

Começaremos então IS e usaremos o campo "cpf" como exemplo. 
Ao selecionarmos a nossa tabela com SELECT * FROM aluno; , 
notamos que apenas o CPF do "Diogo" está preenchido, enquanto os demais estão nulos.
Para filtrar esses dados, não podemos usar WHERE cpf = NULL , porque "= NULL" não é um resultado válido, 
então não retornará nenhum resultado.
*/

SELECT
    *
FROM
    ALUNO
WHERE
    CPF IS NULL;

SELECT
    *
FROM
    ALUNO
WHERE
    CPF IS NOT NULL;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE = 35;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE <> 36;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE >= 36;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE <= 36;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE > 35;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE < 100;

SELECT
    *
FROM
    ALUNO
WHERE
    IDADE BETWEEN 10 AND 40;

-- Filtros Booleano

SELECT
    *
FROM
    ALUNO
WHERE
    ATIVO = FALSE
    SELECT
        *
    FROM
        ALUNO
    WHERE
        ATIVO = TRUE
        SELECT
            *
        FROM
            ALUNO
        WHERE
            ATIVO IS NULL
            SELECT
                *
            FROM
                ALUNO
            WHERE
                ATIVO IS NOT NULL