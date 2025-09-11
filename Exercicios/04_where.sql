-- Exercicio 04 - WHERE
-- Listar os IdCliente e QtdePontos dos clientes que possuem entre 100 a 200 pontos.    
SELECT IdCliente,
       QtdePontos
FROM clientes WHERE QtdePontos >= 100 AND QtdePontos <= 200;