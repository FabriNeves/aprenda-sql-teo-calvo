-- Exercício 6: Listar os 100 primeiros clientes que possuem Twitch, ordenados pela data de criação (mais antigos primeiro) e, em caso de empate, pela quantidade de pontos (maior primeiro).


SELECT IdCliente,
       QtdePontos,
       DtCriacao,
       datetime (substr(DtCriacao,1,19)) AS DataCriacao

FROM clientes 

WHERE FlTwitch = '1'
ORDER BY DataCriacao ASC ,QtdePontos DESC
LIMIT 100;