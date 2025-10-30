 -- Lista de transações de um produto específico usando subquery 


SELECT * 
FROM transacao_produto AS t1
WHERE IdProduto IN 
    (SELECT IdProduto
     FROM produtos 
     WHERE DescProduto  = 'Resgatar Ponei');

--  SELECT IdProduto
--  FROM produtos 
--  WHERE DescProduto  = 'Resgatar Ponei';