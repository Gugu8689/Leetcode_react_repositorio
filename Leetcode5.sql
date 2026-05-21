SELECT p.nome_do_produto, s.ano, s.preco
FROM Sales s
JOIN Product p
ON s.id_do_produto = p.id_do_produto;
