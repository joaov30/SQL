--Nort BD

--SELECT NOME_COLUNA
--FROM TABELA A, TABELA B
--WHERE CONDICAO


--SELFJOIN
--Desafios 28
SELECT *
FROM Customers

SELECT a.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = b.Region

--------

SELECT *
FROM Employees

SELECT A.firstName, A.HireDate, B.firstName, B.HireDate
FROM Employees A, Employees B
Where DATEPART(YEAR, A.hiredate) = DATEPART(YEAR, B.hiredate)


--------

SELECT *
FROM [Order Details]

SELECT A.productID, A.Discount, B.productID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount
--======================================================================================================



--=========================================================================================================

SELECT *
FROM Customers


SELECT c1.contactName as [Nome 1], c2.contactName as [Nome 2], c1.city as Cidade
FROM Customers c1, Customers c2
Where c1.City = c2.City AND c1.contactName <> c2.contactName
Order by c1.City



SELECT c1.contactName as [Nome 1], c2.contactName as [Nome 2],c3.contactName as [Nome 3] , c1.city as Cidade
FROM Customers c1, Customers c2, Customers c3
Where c1.City = c2.City 
AND c2.City = c3.City 
AND c1.City = c3.City 
AND c1.contactName <> c2.contactName 
AND c1.ContactName <> c3.ContactName 
AND c2.ContactName <> c3.ContactName
Order by c1.City


