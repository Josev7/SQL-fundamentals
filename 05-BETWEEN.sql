--BETWEEN:Que se encuentre entre dos condiciones (INCLUYE A LOS EXTREMOS)

SELECT *
FROM Ciudades
WHERE Id BETWEEN 100 AND 200

SELECT *
FROM Clientes
WHERE FechaNacimiento BETWEEN '1990-01-01' AND '1990-12-31'


--EJERCICIO 1
--Devolver clientes nacidos entre 1950 y 1980, y clientes  nacidos entre 1990 y 2010
 SELECT *
 FROM Clientes
 WHERE FechaNacimiento BETWEEN '1950-01-01' AND '1980-12-31' OR FechaNacimiento BETWEEN '1990-01-01' AND '2020-12-31'

 --EJERCICIO 2
 --Devolver Ordenes realizadas:
 --Antes de enero del 2016
 --Entre Marzo y noviembre del 2017  o Marzo y noviembre del 2018
 --Despues de enero del 2019

 SELECT * 
 FROM Ordenes 
 WHERE Fecha < '2016-01-01' 
	OR Fecha BETWEEN '2017-03-01' AND '2017-11-30' 
	OR Fecha BETWEEN '2018-03-01' AND '2018-11-30' 
	OR fecha > '2019-01-01'

--EJERCICIO 3
--Devolver Id,nombre,Apellido y Direccion de los clientes con Id mayores a 80 pero menores a 125
--exepto los clientes 99 o 100
--Y ademas devolver los clientes con Id 13,17,19,28,56

SELECT Id, Nombre, Apellido, Direccion
FROM Clientes
WHERE Id BETWEEN 80 AND 125 AND Id NOT IN (99, 100)
	OR Id IN (13, 17, 19, 28, 56)