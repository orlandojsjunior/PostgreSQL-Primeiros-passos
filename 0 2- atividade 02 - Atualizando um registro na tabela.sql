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
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fermentum lobortis ornare. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam in dignissim lectus. Suspendisse pellentesque nulla mattis, mollis justo ac, posuere erat. Suspendisse id libero eu quam vestibulum ultrices. Sed eleifend velit enim. Sed ut turpis id lectus elementum laoreet. Duis ultricies nec elit eget porttitor. Praesent eget enim ullamcorper, mattis mi sed, vehicula nunc. Phasellus sodales, neque nec elementum accumsan, massa est vestibulum elit, id placerat elit orci sed massa. Vestibulum ac purus accumsan, iaculis lacus quis, ullamcorper nunc. In dignissim varius risus, et posuere tellus gravida semper. Maecenas sit amet odio tincidunt, luctus nunc convallis, imperdiet augue.',
	44,
	100.50,
	1.82,
	TRUE,
	'1979-11-01',
	'17:30:00',
	'2024-06-22 13:01:00'
);

SELECT * 
	FROM aluno
WHERE id = 1;

UPDATE aluno
    SET nome = 'Nico',
    cpf = '10987654321',
    observacao = 'Teste',
    idade = 38,
    dinheiro = 15.23,
    altura = 1.90,
    ativo = FALSE,
    data_nascimento = '1980-01-15',
    hora_aula = '13:00:00',
    matriculado_em = '2020-01-02 15:00:00'
WHERE id = 1;    
