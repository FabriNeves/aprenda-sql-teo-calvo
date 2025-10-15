-- Em 2024, quantas transações foram realizadas de lovers ?

.tables 
-- SELECT * from transacao_produto LIMIT 5;
-- SELECT * from clientes LIMIT 5;
-- SELECT * from produtos LIMIT 5;
-- SELECT * from transacoes LIMIT 5;

SELECT COUNT(DISTINCT t1.IdTransacao) AS QtdeTransacoesLovers 
FROM transacao_produto AS t1
LEFT JOIN produtos AS t2 
ON t1.IdProduto = t2.IdProduto
LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao
WHERE t2.DescCateogriaProduto = 'lovers'
  AND t3.DtCriacao >= '2024-01-01'
  AND t3.DtCriacao < '2025-01-01';
-- LIMIT 10;



-- SELECT * 

-- FROM transacoes AS t1
-- WHERE t1.DtCriacao >= '2024-01-01'
--   AND t1.DtCriacao < '2025-01-01'
-- LIMIT 10; 