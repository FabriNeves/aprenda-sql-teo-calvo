-- Qual categorias tem mais produtos vendidos ? 


SELECT 
    t2.DescCateogriaProduto,
    COUNT(distinct t1.IdTransacao) AS qtdeTransacao
    FROM transacao_produto AS t1
    LEFT JOIN produtos AS t2
    ON t1.IdProduto = t2.IdProduto
    GROUP BY t2.DescCateogriaProduto
    ORDER BY qtdeTransacao DESC;





-- SELECT t1.IdProduto,t2.IdProduto, t2.DescCateogriaProduto
-- FROM transacao_produto AS t1
-- LEFT JOIN produtos AS t2
-- ON t1.IdProduto = t2.IdProduto
-- LIMIT 100;




-- SELECT t1.*,t2.IdProduto, t2.DescProduto  
-- FROM transacao_produto AS t1
-- LEFT JOIN produtos AS t2
-- ON t1.IdProduto = t2.IdProduto
-- LIMIT 100;



-- SELECT *  
-- FROM transacao_produto AS t1
-- LEFT JOIN produtos AS t2
-- ON t1.IdProduto = t2.IdProduto
-- WHERE t2.IdProduto IS NULL;
