/*SELECT *
FROM person.person
WHERE LastName = 'Miller' AND FirstName = 'anna';
*/

/*SELECT * from Production.Product
WHERE ListPrice > 1500 and ListPrice < 3000
*/

/*SELECT *
FROM Production.Product
WHERE Color <>  'Silver';

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate asc

SELECT *
FROM Person.Person
WHERE BusinessEntityID in (2,7,24)

*/
USE AdventureWorks2017;

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


-------------------------------------------



