SELECT eu.id_unico, e.nome
FROM Employee e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;
