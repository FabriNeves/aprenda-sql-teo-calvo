-- Exercício 03: Quais clientes não possuem pontos acumulados
SELECT IdCliente,
        QtdePontos
FROM clientes
WHERE QtdePontos = 0;