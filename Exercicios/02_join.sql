-- Quais clientes assinaram presença no dia 2025/08/25
-- SELECT * FROM clientes LIMIT 5;
-- SELECT * FROM transacoes LIMIT 5;   
-- SELECT * FROM produtos LIMIT 5;  
-- SELECT * FROM transacao_produto LIMIT 5;    

SELECT *
FROM transacoes AS t1
LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao
LEFT JOIN produtos AS t3
WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25'
AND t3.DescProduto LIKE 'Lista de Presença%'
