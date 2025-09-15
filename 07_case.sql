-- Exercício 07: Utilizando a tabela clientes, crie uma consulta que retorne o IdCliente, QtdePontos e uma nova coluna chamada Categoria. A coluna Categoria deve ser preenchida com base na seguinte lógica:
SELECT IdCliente,QtdePontos,
CASE 
    WHEN QtdePontos <= 500 THEN 'Ponei' 
    WHEN QtdePontos > 500 AND QtdePontos <= 1000 THEN 'Ponei Premium' 
    WHEN QtdePontos > 1000 AND QtdePontos <= 5000 THEN 'Mago Aprendiz' 
    WHEN QtdePontos > 5000 AND QtdePontos <= 10000 THEN 'Mago Mestre' 
    WHEN QtdePontos > 10000 THEN 'Mago Supremo'
END AS Categoria
FROM clientes 
ORDER BY QtdePontos DESC;