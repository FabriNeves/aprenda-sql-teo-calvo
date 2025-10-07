-- SELECT IdCliente,
--         sum( QtdePontos),
--         count(DISTINCT IdTransacao) AS QtdeTransacoes
--  FROM transacoes
--  WHERE DtCriacao >= '2025-07-01'
--    AND DtCriacao <  '2025-08-01'
--  GROUP BY IdCliente
--  HAVING sum( QtdePontos) >=3000
--  ORDER BY sum( QtdePontos) DESC , QtdeTransacoes DESC;

--  SELECT 
--         count(DISTINCT IdCliente) AS QtdeClientes,
--         sum( QtdePontos) AS TotalPontos,
--         count(DISTINCT IdTransacao) AS TotalTransacoes
        
-- FROM transacoes
--     WHERE DtCriacao >= '2025-07-01'
--     AND DtCriacao <  '2025-08-01';
  

  

-- SELECT IdCliente,
--        DtCriacao
--  FROM transacoes
--  WHERE DtCriacao >= '2025-07-01'
--    AND DtCriacao <  '2025-08-01'
--    ORDER BY DtCriacao DESC;