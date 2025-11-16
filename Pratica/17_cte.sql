
WITH tb_cliente_primeiro_dia AS (
 SELECT DISTINCT IdCliente
 FROM transacoes 
 WHERE substr(dtCriacao,1,10) = '2025-08-25'
),
tb_cliente_ultimo_dia AS (
 SELECT DISTINCT IdCliente
 FROM  transacoes 
 WHERE substr(dtCriacao,1,10) = '2025-08-29'
),

tb_join AS (
SELECT t1.IdCliente AS IdCliente_Primeiro_Dia,
       t2.IdCliente AS IdCliente_Ultimo_Dia
FROM tb_cliente_primeiro_dia AS t1 
LEFT JOIN tb_cliente_ultimo_dia AS t2
ON  t1.IdCliente = t2.IdCliente
)
SELECT count(IdCliente_Primeiro_Dia)AS Clientes_No_Primeiro_Dia,
       count(IdCliente_Ultimo_Dia) AS Clientes_No_Ultimo_Dia,
       1. * count(IdCliente_Ultimo_Dia) / count(IdCliente_Primeiro_Dia) AS Proporcao
 FROM tb_join;
