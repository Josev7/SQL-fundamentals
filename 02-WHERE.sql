--WHERE: Devuelve una tabla resultante en donde se cumpla la condicion

SELECT * 
FROM Clientes 
WHERE Id < 15	--Puede ser con distintos operadores

--OPERADORES LOGICOS =, <, >, >=, <= ó '<>'(!=)

SELECT *
FROM Clientes
WHERE FechaNacimiento > '20020101' --Para consultas fechas uso formato texto. Puedo usar los operadores.

--Puedo comparar cualquier tipo de datos
SELECT *
FROM Clientes
WHERE Apellido = 'Simon'

SELECT *
FROM Clientes
WHERE Nombre = 'Abel'

--EJERCICIO 1
--Devolver ClienteId  y Fecha de todas las ordenes realizadas hasta Octubre del año 2017

SELECT ClienteId, Fecha
FROM Ordenes
WHERE Fecha <= '20171001'

--EJERCICIO 2 
--Devolver Nombre, Codigo y NombreLocal renombradoscomo 'Pais', 'Abreviatura' y 'Nomenclatura Local' de todos
--los paises de la región Polynesia

SELECT	Nombre As Pais,
		Codigo As Abreviatura,
		NombreLocal As 'Nomenclatura Local'
FROM Paises
WHERE Region = 'Polynesia'

--EJERCICIO 3
--Devolver en una sola columna Nombre, Apellido y Direccion de todos los Clientes de la ciudad Bari (1473)
--El formato debe ser Nombre: nombre, Apellido: apellido, Direccion: Direccion

SELECT 'Nombre: ' + Nombre + ', Apellido: ' + Apellido + ', Direccion: ' + Direccion AS 'Nombre, Apellido, Direccion'
FROM Clientes
WHERE CiudadId = 1473
