--OPERADORES AND, OR y NOT

--OPERADOR 'AND'

SELECT *
FROM Clientes
WHERE Nombre = 'Carla' AND Apellido = 'Snider'

--EL OPERADOR 'AND' SIEMPRE SE EJECUTARA PRIMERO EN SQL


--OPERADOR 'OR'

SELECT * 
FROM Clientes
WHERE Nombre = 'Carla' OR Nombre = 'Abel' AND Apellido = 'Snider' --Ejecutara el AND primero

--Hago explicita la ejecución

SELECT * 
FROM Clientes
WHERE (Nombre = 'Carla' OR Nombre = 'Abel') AND Apellido = 'Snider' --Ejecutara primero el 'OR'


--OPERADOR 'NOT'
SELECT * 
FROM Clientes
WHERE NOT (Nombre = 'Carla' OR Nombre = 'Herrod') --Similar a '!='

--EJERCICIO 1
--Devolver todos los productos cuyo precio sea mayor que el costo incrementado en un 40% o la ganancia sea de al menos 25

SELECT *, Costo * 1.40 AS CostoIncrementado
FROM Productos 
WHERE Precio > (Costo * 1.40) 
	  OR (Costo - Precio) > 25

--EJERCICIO 2
-- Devolver todas las ciudades argentinas y todas las ciudades brasileras excepto Buenos Aires y recife

SELECT *
FROM Ciudades
WHERE (CodigoPais = 'ARG' AND NOT(Nombre = 'Buenos Aires')) 
   OR (CodigoPais = 'BRA' AND NOT(Nombre = 'Recife'))


--EJERCICIO 3
--Devolver solo Ordenes realizadas antes de febrero  del 2018 que hayan vendido mas de 100 productos
--o ordenes realizadas despues de julio del 2018 que hayan vendido al menos 50 productos

SELECT *
FROM Ordenes
WHERE (Cantidad > 100 AND Fecha < '2018-02-01') 
	  OR (Fecha >= '2018-07-01' AND Cantidad >= 50)
