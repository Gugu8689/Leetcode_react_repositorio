SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND descricao != 'boring'
ORDER BY classificacao DESC;
