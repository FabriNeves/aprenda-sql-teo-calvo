-- Exemplo de contagem de registros em uma tabela
SELECT
     count(*),
     count(1),
     count(IdCliente),
     count(DtCriacao)
FROM clientes;

-- SELECT
--      DISTINCT FlTwitch,FlEmail
   
    
-- FROM clientes ORDER BY QtdePontos DESC;

-- SELECT
--      count(DISTINCT IdCliente) AS QtdeClientesComPontos   
-- FROM clientes;