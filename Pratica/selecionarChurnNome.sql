/*

SELECT
 *
FROM
  produtos 
WHERE
  DescProduto IN ('Churn_10pp' , 'Churn_2pp' , 'Churn_5pp');



SELECT
 *
FROM
  produtos 
WHERE
  DescProduto = 'Churn_10pp' OR DescProduto = 'Churn_2pp' OR DescProduto = 'Churn_5pp';
*/
SELECT
 *
FROM
  produtos 
WHERE
  DescProduto LIKE 'Churn_%pp';
