SELECT 
        sum(QtdePontos) AS TotalPontos,
        sum(CASE 
            WHEN QtdePontos > 0 
            THEN QtdePontos
            ELSE 0
        END) AS PontosPositivos,
        sum(CASE 
            WHEN QtdePontos < 0 
            THEN QtdePontos
            ELSE 0
        END) AS PontosNegativos,
        count(CASE 
            WHEN QtdePontos > 0 
            THEN 1
            
        END) AS QtdeTransacoesPositivas,
        count(CASE 
            WHEN QtdePontos < 0 
            THEN 1
           
        END) AS QtdeTransacoesNegativas
FROM transacoes
WHERE DtCriacao >= '2025-07-01'  AND DtCriacao < '2025-08-01'
ORDER BY QtdePontos ASC;