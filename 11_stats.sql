SELECT 
avg(QtdePontos) AS MediaPontos,
1. * sum(QtdePontos) / count(IdCliente),
min(QtdePontos) AS MinimoPontos,
max(QtdePontos) AS MaximoPontos,
sum(FlTwitch),
sum(FlEmail)
FROM clientes;