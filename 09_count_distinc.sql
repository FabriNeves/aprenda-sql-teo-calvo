-- Exemplo de contagem com distinct
-- Contar o número total de transações e o número de clientes distintos que fizeram transações
SELECT 
    count(*),
    count(DISTINCT IdTransacao),
    count(DISTINCT (IdCliente))
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01'
ORDER BY DtCriacao DESC;