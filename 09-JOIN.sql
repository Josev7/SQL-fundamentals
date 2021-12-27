--INNER JOIN: 

SELECT *
FROM Productos p
INNER JOIN Categorias c ON p.CategoriaId = c.Id

--MULTIPLE JOINS

SELECT *
FROM Productos p
INNER JOIN Categorias c ON p.CategoriaId = c.Id
INNER JOIN Proveedores pr ON p.CategoriaId = pr.Id

--PALABRAS OPCIONALES: INNER JOIN es igual a JOIN  

--EJERCICIO 1
--Devolver Nombre de Proveedores, Precio y costo de productos cuya ganancia sea mayor a 20

USE CursoSQL
SELECT prod.Nombre,
	   Precio,
	   Costo,
	   (Precio - Costo) AS Ganancia
FROM Productos prod
INNER JOIN Proveedores prov ON prod.ProveedorId = prov.Id
WHERE (Precio - Costo) > 20

-- EJERCICIO 2