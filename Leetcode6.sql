SELECT v.id_do_cliente,
       COUNT(v.id_da_visita) AS contagem_sem_transacoes
FROM Visitas v
LEFT JOIN Transactions t
ON v.id_da_visita = t.id_da_visita
WHERE t.id_da_transacao IS NULL
GROUP BY v.id_do_cliente;
