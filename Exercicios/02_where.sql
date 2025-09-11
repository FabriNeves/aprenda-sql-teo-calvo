-- Exercício 02: Quais clientes realizaram transações em finais de semana (sábado e domingo)
SELECT IdCliente,
       IdTransacao,
      strftime ('%w',datetime (substr(DtCriacao,1,19))) AS DiaSemana
FROM transacoes WHERE DiaSemana IN ('0','6');    