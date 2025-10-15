-- Quais produtos são de RPG ?

-- SELECT * 

-- FROM produtos

-- WHERE DescCateogriaProduto = 'rpg';


SELECT DescCateogriaProduto, count(DescProduto)

FROM produtos

GROUP BY DescCateogriaProduto
ORDER BY count(DescProduto) DESC;