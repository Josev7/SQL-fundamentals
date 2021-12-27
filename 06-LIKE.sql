--LIKE: La ventaja e que puedo usar como comodin

SELECT * 
FROM Clientes
WHERE Apellido LIKE 'Guerra'

--COMODINES
-- '%' Iguala cualquier cantidad de caracteres. En el ejemplo, trae todos los Apellidos que empiecen con G
SELECT * 
FROM Clientes
WHERE Apellido LIKE 'G%'

--Tambien puedo usar el comodin por delante y por detras
SELECT * 
FROM Clientes
WHERE Apellido LIKE '%ue%'

-- '_' : Iguala solo un caracter
SELECT * 
FROM Clientes
WHERE Apellido LIKE '_uerra'

--O tambien:
SELECT * 
FROM Clientes
WHERE Apellido LIKE '_____a'

--EJERCICIO 1:
--Devolver Id, Nombre, Costo y Precio de todos los productos relacionados con queso
--siempre y cuando su costo no sea menor a 10 ni mayor a 30

SELECT Id, Nombre, Costo, Precio
FROM Productos
WHERE Nombre LIKE '%queso%' AND Costo BETWEEN 10 AND 30

--EJERCICIO 2
--Devolver todos los clientes cuyo nombre tenga como segunda letra, la letra 'a' y termine con la letra 'e'

SELECT * 
FROM Clientes
WHERE Nombre LIKE '_a%e'

--EJERCICIO 3
--Devolver todos los Clientes cuyo apellido no tenga la letra 'r' en la tercera posición y su penultima posicion sea e

SELECT * 
FROM Clientes
WHERE Apellido NOT LIKE '__r%' AND Apellido LIKE '%e__'
