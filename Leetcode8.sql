SELECT p.id_do_produto,
       ROUND(
           IFNULL(SUM(p.preco * u.unidades) / SUM(u.unidades), 0),
           2
       ) AS preco_medio
FROM Prices p
LEFT JOIN UnitsSold u
ON p.id_do_produto = u.id_do_produto
AND u.data_da_compra 
BETWEEN p.data_inicial AND p.data_final
GROUP BY p.id_do_produto;
