--IS NULL: Cuando un dato se encuentra vacio

SELECT *
FROM Clientes
WHERE Telefono IS NULL

--Tambien puedo negar y sacar el complemento
SELECT *
FROM Clientes
WHERE Telefono IS NOT NULL

--EJERCICIO 1
--Devolver todos los Productos que tengan proveedor

SELECT *
FROM Productos
WHERE ProveedorId IS NOT NULL

--Devolver todos los Clientes que NO tengan Telefono

SELECT *
FROM Clientes
WHERE Telefono IS NULL