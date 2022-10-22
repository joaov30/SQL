---------TESTES---------
SELECT *
FROM person.person
WHERE LastName = 'Miller' AND FirstName = 'anna';


SELECT * from Production.Product
WHERE ListPrice > 1500 and ListPrice < 3000


SELECT *
FROM Production.Product
WHERE Color <>  'Silver';

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate asc

SELECT *
FROM Person.Person
WHERE BusinessEntityID in (52,17,24)

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ke%';

SELECT SUM(LineTotal) as Total
FROM Sales.SalesOrderDetail

SELECT MAX(LineTotal) as Total
FROM Sales.SalesOrderDetail

SELECT MIN(LineTotal) as Total
FROM Sales.SalesOrderDetail

SELECT AVG(LineTotal) as Total
FROM Sales.SalesOrderDetail


SELECT s.SpecialOfferID, SUM(UnitPrice) as Soma
from Sales.SalesOrderDetail as s
GROUP BY SpecialOfferID

SELECT ProductID, COUNT(ProductID) as Contagem
FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT p.FirstName, COUNT(FirstName) as Contagem
FROM Person.Person AS p
GROUP BY FirstName

SELECT s.ProductID, SUM(LineTotal) as TotalVendas
FROM Sales.SalesOrderDetail as s
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 and 500000;

SELECT p.firstname, COUNT(firstname) AS Quantidade
FROM Person.Person as p
WHERE p.Title = 'MR.'
GROUP BY FirstName
HAVING COUNT(firstname) > 10
-------------------------------------------END-----------------------------------------------


-------------------------------------------LEVEL 1-------------------------------------------

--Desafio 1
SELECT *
FROM Production.Product
WHERE Weight > 500 AND Weight < 700;
-------------------------------------------
--Desafio 2
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;
-------------------------------------------
--Desafio 3
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.BusinessEntityID, pe.EmailAddress
FROM Person.Person AS p
LEFT JOIN Person.EmailAddress as pe
on p.BusinessEntityID = pe.BusinessEntityID
WHERE FirstName = 'Peter' AND LastName = 'Krebs';
-------------------------------------------
--Desafio 4
SELECT COUNT(DISTINCT p.FirstName) as PrimeiroNome
FROM Person.Person as p
-------------------------------------------
--Desafio 5
SELECT COUNT(*)
FROM Production.Product
-------------------------------------------
--Desafio 6
SELECT COUNT(Size)
FROM Production.Product
-------------------------------------------
--Desafio 7
SELECT COUNT(DISTINCT p.Size) as Tamanho
FROM Production.Product as p
-------------------------------------------
--Desafio 8
SELECT TOP (10) *
FROM Production.Product
-------------------------------------------
--Desafio 9
SELECT TOP (10) P.ProductID, p.ListPrice
FROM Production.Product as p
ORDER BY  ListPrice DESC
-------------------------------------------
--Desafio 10
SELECT TOP (4) p.Name, p.ProductNumber
FROM Production.Product as p
ORDER BY ProductID ASC;
-------------------------------------------
--Desafio 11
SELECT COUNT(p.ListPrice) as listaPreco
FROM Production.Product as p
WHERE ListPrice > '1500'
-------------------------------------------
--Desafio 12
SELECT COUNT(p.LastName) as LastName
FROM Person.Person as p
WHERE LastName LIKE 'P%'
-------------------------------------------
--Desafio 13
SELECT COUNT(DISTINCT a.City) AS City
FROM Person.Address AS a
-------------------------------------------
--Desafio 14
SELECT DISTINCT a.City AS City
FROM Person.Address AS a
-------------------------------------------
--Desafio 15
SELECT COUNT(Color) as color
FROM Production.Product 
WHERE Color LIKE 'Red' 
AND ListPrice BETWEEN '500' AND '1000';
-------------------------------------------
--Desafio 16
SELECT COUNT(p.Name) AS Name
FROM Production.Product as p
WHERE Name LIKE '%road%';
-------------------------------------------

-------------------------------------------LEVEL 2-------------------------------------------

--Desafio 17
SELECT middlename, COUNT(p.MiddleName) AS Calculo
FROM Person.Person AS p
GROUP BY MiddleName
-------------------------------------------

--Desafio 18
SELECT ProductID, AVG(p.OrderQty) as QuantidadeMedia
FROM Sales.SalesOrderDetail as p
GROUP BY ProductID
-------------------------------------------

--Desafio 19
SELECT TOP 10 s.ProductID, SUM(s.LineTotal) AS VendaTotal
FROM Sales.SalesOrderDetail AS s
GROUP BY ProductID
ORDER BY SUM(LineTotal)DESC;
-------------------------------------------

--Desafio 20
SELECT p.productid, COUNT(p.productid) as Contagem, AVG(orderqty) AS MEDIA
FROM Production.WorkOrder AS P
GROUP BY ProductID
-------------------------------------------

--Desafio 21
SELECT a.StateProvinceID, COUNT(a.StateProvinceID) as SomaTotal
FROM Person.Address AS a
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000
-------------------------------------------

--Desafio 22
SELECT s.ProductID, AVG(s.LineTotal) AS media
FROM Sales.SalesOrderDetail AS s
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000

-------------------------------------------

--Desafio 23, 24, 25
SELECT p.FirstName AS 'Nome', p.LastName AS 'Sobrenome'
FROM Person.Person AS p

SELECT p.ProductNumber as 'Numero do Produto'
FROM Production.Product as p

SELECT s.unitPrice AS 'Preço Unitario'
FROM Sales.SalesOrderDetail AS s
-------------------------------------------

------------------JOINS--------------------

--Desafio 26

SELECT *
FROM Person.PhoneNumberType

SELECT *
FROM Person.PersonPhone


SELECT pe.BusinessEntityID, ph.Name, ph.PhoneNumberTypeID, pe.PhoneNumber
FROM Person.PersonPhone AS pe
INNER JOIN Person.PhoneNumberType AS ph
ON ph.PhoneNumberTypeID = pe.PhoneNumberTypeID;
-------------------------------------------

--Desafio 27
SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 100 ad.AddressID, ad.City, st.StateProvinceID, st.Name
FROM Person.Address as ad
INNER JOIN Person.StateProvince as st
ON st.StateProvinceID = ad.StateProvinceID

-------------------------------------------
--Desafio 28,29
--Estão em outra Query
-------------------------------------------

--Desafio 30
SELECT *
FROM Person.Address


SELECT *
FROM Person.StateProvince

--V1 SUBQUERY
SELECT *
FROM Person.Address
WHERE StateProvinceID 
IN (SELECT StateProvinceID FROM Person.StateProvince PS
WHERE NAME = 'Alberta')

--V2 JOIN
SELECT PP.stateProvinceID, PP.AddressLine1, PP.City, PS.name Estado
FROM Person.Address PP
JOIN Person.StateProvince as PS
ON pp.StateProvinceID = ps.StateProvinceID
WHERE PS.Name = 'Alberta'

-------------------------------------------


-------------------------------------------LEVEL 3-------------------------------------------


--Desafio 31
--DATEPART
SELECT * FROM
Purchasing.PurchaseOrderDetail

SELECT productID, DATEPART(month, DueDate) as Mes,  DATEPART(year, DueDate) as Ano
FROM Purchasing.PurchaseOrderDetail








-------------------------------------------








