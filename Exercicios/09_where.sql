-- Exercício 09: Utilizando a tabela transacoes, crie uma consulta que retorne o IdTransacao,
SELECT IdTransacao,
       QtdePontos,
       CASE 
           WHEN QtdePontos < 100 THEN 'Baixo'
           WHEN QtdePontos < 500 THEN 'Médio'
           ELSE 'Alto' 
       END AS FlQtdePontos
  FROM transacoes ORDER BY QtdePontos DESC;
