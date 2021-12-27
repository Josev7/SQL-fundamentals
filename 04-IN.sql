-- IN: La usamos cuando queremos comparar una columna con una lista de valores!

SELECT *
FROM Paises
WHERE Codigo = 'ARG' OR Codigo='AGO' OR Codigo='AND'

--Utilizando 'IN' Simplifico la query anterior

SELECT *
FROM Paises
WHERE Codigo IN('ARG','AGO','AND')

--Otro EJEMPLO
SELECT *
FROM Ciudades
WHERE Id IN(1,10,20,30)

--Tambien puedo utilizar 'NOT IN' Para negar la lista

SELECT *
FROM Paises
WHERE Codigo NOT IN('ARG','AGO','AND')

--EJERCICIO 1
--Devolver Clientes cuyos apellidos sean: Myers, Lewis, Kent, Case o Berger
SELECT *
FROM Clientes
WHERE Apellido IN('Myers', 'Lewis', 'Kent', 'Case','Berger')

--EJERCICIO 2
--Devolver Codigo, Nombre, Continente y Region de todos los Paises de America
SELECT * 
FROM Paises 
WHERE Continente IN('North America','South America','Central America')

--EJERCICIO 3
--Devolver todas las ciudades de los paises hispanohablantes
SELECT *
FROM Ciudades
WHERE CodigoPais IN('ABW','AND','ARG','BLZ','BOL','CAN','CHL','COL','CRI','CUB',
'DOM','ECU','ESP','FRA','GTM','HND','MEX','NIC','PAN','PER','PRI','PRY','SLV','SWE','URY','USA','VEN','VIR')