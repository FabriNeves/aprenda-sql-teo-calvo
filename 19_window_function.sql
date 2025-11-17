WITH tb_cliente_dia AS (
    SELECT 
        IdCliente,
        SUBSTR(DtCriacao, 1, 10) AS dtDia,
        COUNT(DISTINCT IdTransacao) AS qtdeTransacao
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
      AND DtCriacao < '2025-08-30'
    GROUP BY  dtDia
)
SELECT *,
       SUM(qtdeTransacao) OVER (ORDER BY dtDia) AS somaAcumuladaDiaria
 FROM tb_cliente_dia;
