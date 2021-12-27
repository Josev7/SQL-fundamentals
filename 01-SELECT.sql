--NOTA: Para ejecutar las querys solo selecciono la Querys 

-- OPERADORES ARITMETICOS
-- Necesitamos conocer la ganancia por producto

SELECT	Nombre, 
		Costo,
		Precio As PrecioMayorista,
		Precio - Costo as Ganancia,
		(Precio * 1.21) + 1 As Impuestos,
		Precio + (Precio * 20)/100 As PrecioMinorista 
FROM Productos;

--Cantidad que quiero mostrar 'TOP #Numero de filas a mostrar'
SELECT TOP 5 Nombre, 
			 Costo,
			 Precio, 
			 Precio - Costo as Ganancia,
			 Precio + (Precio * 20)/100 As PrecioMinorista 
FROM Productos;

-- DISTINCT: Elimina duplicados
-- Muestro solo una fila de los duplicados que hay. Devuelve un solo valor de casa codigo de pais

SELECT DISTINCT CodigoPais FROM Ciudades 



--EJERCICIOS

-- 1) Devolver Id y Nombre de todas las Categorias y renombrarlas como Numero y Categoria

SELECT	Id AS Numero,
		Nombre AS Categoria 
FROM Categorias

--2) Devolver Apellido, Nombre y Fecha de Nacimiento de todos los Clientes del Sistema

SELECT	Apellido, 
		Nombre, 
		FechaNacimiento 
FROM Clientes

-- 2b) Apellido y Nombre en una unica columna llamada Nombre Completo, separados sus valores por coma

SELECT Apellido + ', ' + Nombre AS 'Nombre Completo'
FROM Clientes

-- 3) 
-- 3a) Devolver Nombre, Costo y Precio
-- 3b) Costo con descuento del 30%
-- 3c) Ganancia	si el costo tiene un descuento del 30%
-- 3d) Ganancia con costo regular 
-- 3e) Ganancia con costo regular y un 10% de descuento

-- 3a) 
SELECT	Nombre,
		Costo,
		Precio
FROM Productos

-- 3b) Costo y Descuento del 30%

SELECT	Costo, 
		Costo * 0.7 
FROM Productos

-- 3c) Ganancia	si el costo tiene un descuento del 30%

SELECT	Costo,
		Precio,
		(Costo * 0.7) As Descuento,
		Precio - (Costo * 0.7) As Ganancia
FROM Productos

-- 3d) Ganancia con costo regular 

SELECT	Costo,
		Precio,
		Precio - Costo As Ganancia
FROM Productos

-- 3e) Ganancia con costo regular y un 10% de descuento

SELECT	Costo,
		Precio,
		(Precio - Costo) * 0.9 As Ganancia 
FROM Productos

