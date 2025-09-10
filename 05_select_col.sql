SELECT QtdePontos,
    --    QtdePontos +10 AS PontosMais10,
    --    QtdePontos * 0.05 AS Pontos5PorCento,
       datetime (substr(DtCriacao,1,19)) AS DataCriacao,
       strftime ('%w',datetime (substr(DtCriacao,1,19))) AS DiaSemana
FROM clientes 
LIMIT  100;
