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
) VALUES (
    'Diogo',
    '12345678901',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac dui et nisl vestibulum consequat. Integer vitae magna egestas, finibus libero dapibus, maximus magna. Fusce suscipit mi ut dui vestibulum, non vehicula felis fringilla. Vestibulum eget massa blandit, viverra quam non, convallis libero. Morbi ut nunc ligula. Duis tristique purus augue, nec sodales sem scelerisque dignissim. Sed vel rutrum mi. Nunc accumsan magna quis tempus rhoncus. Duis volutpat nulla a aliquet feugiat. Vestibulum rhoncus mi diam, eu consectetur sapien eleifend in. Donec sed facilisis velit. Duis tempus finibus venenatis. Mauris neque nisl, pulvinar eu volutpat eu, laoreet in massa. Quisque vestibulum eros ac tortor facilisis vulputate. Sed iaculis purus non sem tempus mollis. Curabitur felis lectus, aliquam id nunc ut, congue accumsan tellus.',
    35,
    100.50,
    1.81,
    TRUE,
    '1984-08-27',
    '17:30:00',
    '2020-02-08 12:32:45'
);

SELECT * 
	FROM aluno;


SELECT nome,
       idade,
       matriculado_em
    FROM aluno;

'''
A partir dessa seleção, podemos usar o comando AS, ou seja, um alias, para trocar o nome de exibição dos campos na tabela. 
Se escrevermos SELECT matriculado_em AS quando_se_matriculou, essa coluna aparecerá com o nome "quando_se_matriculou".

O alias também pode ser usado para atribuir nomes com espaço para os campos, o que pode ser útil, por exemplo, para elaborar um relatório. 
Nesses casos, os novos nomes precisam estar entre aspas duplas " ", ou o programa não irá reconhecê-los e aparecerá uma mensagem de erro de sintaxe.

'''
	
SELECT nome AS "Nome do Aluno",
       idade,
       matriculado_em AS quando_se_matriculou
    FROM aluno;

