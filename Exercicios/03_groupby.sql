-- Qual cliente fez mais transações no ano de 2024

-- SELECT IdCliente, 
--        COUNT(IdTransacao) AS TotalTransacoes 
--     from transacoes 
--     WHERE DtCriacao >= '2024-01-01' 
--     AND DtCriacao < '2025-01-01'
--     GROUP BY IdCliente 
--     ORDER BY COUNT(IdTransacao) 
--     DESC 
--     LIMIT 10;



SELECT IdCliente, 
       COUNT(IdTransacao) AS TotalTransacoes
    from transacoes 
    WHERE strftime('%Y',substr(DtCriacao,1,19)) = '2024'
    GROUP BY IdCliente 
    ORDER BY COUNT(IdTransacao) 
    DESC 
    LIMIT 10;

--    2024-06-30 23:59:59


-- IdTransacao	IdCliente	DtCriacao	QtdePontos	DescSistemaOrigem0 UTC	5