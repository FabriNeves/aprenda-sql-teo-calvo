-- Exemplo de contagem de registros em uma tabela
SELECT
     count(*),
     count(1),
     count(IdCliente),
     count(DtCriacao)
FROM clientes;