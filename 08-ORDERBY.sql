--ORDER BY: Ordena por columnas 
USE CursoSQL

SELECT *
FROM Clientes --Hasta acá, por default ordena ASCENDENTE POR CLAVE PRIMARIA.
ORDER BY Apellido --Ordena por apellido de forma descendente. Si Agrego 'DESC' sera DESCENDENTE
--ORDER BY Apellido DESC

--Orden ascendente de forma Explicita 'ASC'
USE CursoSQL
SELECT *
FROM Clientes
ORDER BY Apellido ASC--Ordena por apellido de forma ascendente (de menor a mayor). Si Agrego 'DESC' sera DESCENDENTE

--Orden por columnas

SELECT *
FROM Clientes
ORDER BY FechaNacimiento, Apellido --Primero ordena por FechaNacimiento y luego por apellido, puedo ponerlo tmb por ASC y DESC
--ORDER BY FechaNacimiento ASC, Apellido DESC, Nombre DESC

--EJERCICIO 1
--Devolver Nombre, apellido, y dirección de todos los clientes ordenados por por fecha de Nacimiento desde el mas reciente 
--al mas antiguo
SELECT Nombre, Apellido, Direccion, FechaNacimiento
FROM Clientes
ORDER BY FechaNacimiento DESC --Clientes que nacieron mas recientemente

--EJERCICIO 2 
--Devolver Nombre, ProveedorId, y Ganancia de todos los productos, ordenados de mayor a menor, con el producto de 
--mayor ganancia primero en la lista
USE CursoSQL
SELECT Nombre, ProveedorId, Precio - Costo AS Ganancia
FROM Productos
ORDER BY Ganancia DESC


--EJERCICIO 3
--Devolver todos los Clientes y ordenarlos por nombre de A-Z
--Si el nombre coincide, ordenar por apellido de Z-A
--Si ambos coinciden, elegir primero el cliente de mayor edad


SELECT * 
FROM Clientes
ORDER BY Nombre ASC, Apellido DESC, FechaNacimiento ASC