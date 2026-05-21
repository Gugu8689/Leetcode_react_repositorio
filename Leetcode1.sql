SELECT nome
FROM Cliente
WHERE id_do_referente != 2
   OR id_do_referente IS NULL;
