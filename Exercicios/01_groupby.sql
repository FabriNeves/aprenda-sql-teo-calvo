-- Exercício 01: Utilizando a tabela clientes, crie uma consulta que retorne a contagem total de clientes e a soma da coluna FlEmail.
SELECT count(*),sum(FlEmail) FROM clientes;

-- Filtrar registros com WHERE contando apenas os clientes que possuem email cadastrado
SELECT count(*) FROM clientes WHERE FlEmail=1;