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


