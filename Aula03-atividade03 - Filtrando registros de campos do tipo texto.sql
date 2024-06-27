
-- Inserindo dados na tabela


INSERT INTO ALUNO (
    NOME
) VALUES (
    'Vinícius Dias'
);

INSERT INTO ALUNO (
    NOME
) VALUES (
    'Nico Steppat'
);

INSERT INTO ALUNO (
    NOME
) VALUES (
    'João Roberto'
);

INSERT INTO ALUNO (
    NOME
) VALUES (
    'Diego'
);


-- Usar o = quando precisar pesquisar exatamente o 'TEXTO'.


SELECT
    *
FROM
    ALUNO
WHERE
    NOME = 'Diogo';


-- Usar o <> ou != quando precisar pesquisar diferente do 'TEXTO'.


SELECT
    *
FROM
    ALUNO
WHERE
    NOME <> 'Diogo';


-- Usar o LIKE quando precisar usar um operador (_ ou %) especial na pesquisa.


SELECT
    *
FROM
    ALUNO
WHERE
    NOME LIKE 'Di_go';

SELECT
    *
FROM
    ALUNO
WHERE
    NOME LIKE 'D%';

SELECT
    *
FROM
    ALUNO
WHERE
    NOME LIKE '%s';

SELECT
    *
FROM
    ALUNO
WHERE
    NOME LIKE '% %';

SELECT
    *
FROM
    ALUNO
WHERE
    NOME LIKE '%i%a%';


-- Usar o NOT LIKE quando precisar ignorar uma condição na pesquisa.


SELECT
    *
FROM
    ALUNO
WHERE
    NOME NOT LIKE 'Di_go';