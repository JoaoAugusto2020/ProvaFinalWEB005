BANCO DE DADOS - CARROS

LETRA D:

SELECT dp.nome, COUNT(fu.codigo) AS qtd_fun, SUM(fu.salario) AS salario_total
	FROM departamento AS dp
	INNER JOIN funcionario AS fu
	ON fu.codigo_departamento = dp.codigo
	GROUP BY dp.nome;