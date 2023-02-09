use AdventureWorks2017

select *
from Sales.SalesOrderDetail

select SpecialOfferID, sum(unitPrice) [preço de venda], AVG(unitPrice) [média], min(unitPrice) [MENOR VALOR DE VENDA], MAX(unitPrice) [MAIOR VALOR DE VENDA]
from Sales.SalesOrderDetail
group by SpecialOfferID
order by SpecialOfferID
-------------------------------------------------------------

select ProductID, OrderQty
from Sales.SalesOrderDetail
order by OrderQty desc


select ProductID, COUNT(productID) quantidade
from Sales.SalesOrderDetail
group by ProductID
order by quantidade desc
-------------------------------------------------------------
SELECT * 
FROM Person.Person

SELECT FirstName, count(FirstName) [MESMO NOME]
FROM Person.Person
group by FirstName
order by [MESMO NOME] desc


-------------------------------------------------------------
select *
from Production.Product

Select Color, avg(listPrice) [Média de Preços]
from Production.Product
where color = 'Silver'
group by Color

select avg(listPrice) Média
from Production.Product
where color = 'Silver'
-------------------------------------------------------------

select MiddleName, COUNT(MiddleName) SOBRENOME
from Person.Person
group by MiddleName
ORDER BY SOBRENOME desc
-------------------------------------------------------------
select *
from Sales.SalesOrderDetail

select ProductID, COUNT(OrderQty)  Quantidade
from Sales.SalesOrderDetail
group by ProductID
-------------------------------------------------------------
select *
from Sales.SalesOrderDetail

select top 10 * 
from Sales.SalesOrderDetail
order by LineTotal desc

select top 10 ProductID,SUM(linetotal) total
from Sales.SalesOrderDetail
group by ProductID
order by SUM(linetotal) desc

-------------------------------------------------------------
select *
from Production.WorkOrder

select ProductID, COUNT(orderQTY)[Total], AVG(OrderQty)[Média]
from Production.WorkOrder
group by  ProductID
ORDER BY ProductID

select ProductID, COUNT(ProductID)[Total], AVG(OrderQty)[Média]
from Production.WorkOrder
group by  ProductID
ORDER BY ProductID
-------------------------------------------------------------
select *
from Sales.SalesOrderDetail

select ProductID, sum(linetotal) total
from Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) between 162000 and 500000
-------------------------------------------------------------
select *
from Person.Address

select count(City)
from Person.Address
where City = 'Chicago'


select StateProvinceID,COUNT(StateProvinceID) Quantidade
from Person.Address
group by StateProvinceID
having COUNT(StateProvinceID) > 1000

select City,COUNT(StateProvinceID) Quantidade
from Person.Address
group by City
having COUNT(StateProvinceID) > 10
order by Quantidade desc
-------------------------------------------------------------

select *
from Sales.SalesOrderDetail

select ProductID, AVG(linetotal) [Abaixo da Média]
from Sales.SalesOrderDetail
group by ProductID
having avg(linetotal) < 1000000
-------------------------------------------------------------

select top 10 *
from Person.Person

select top 10 *
from Person.EmailAddress

select pp.BusinessEntityID, pp.FirstName,pp.LastName,pe.EmailAddress
from Person.Person pp
join Person.EmailAddress pe
on pp.BusinessEntityID = pe.BusinessEntityID
order by pp.BusinessEntityID
-------------------------------------------------------------

SELECT TOP 10 *
FROM Person.PhoneNumberType

Select top 10*
from Person.PersonPhone

select pp.BusinessEntityID, pph.Name, pp.PhoneNumberTypeID, pp.PhoneNumber
from Person.PhoneNumberType pph
join Person.PersonPhone pp
on pph.PhoneNumberTypeID = pp.PhoneNumberTypeID
order by pp.BusinessEntityID
-------------------------------------------------------------

select top 10*
from Person.StateProvince

select top 10*
from Person.Address

select pa.addressID,pa.City , ps.StateProvinceID, ps.Name
from Person.StateProvince ps
join Person.Address pa
on ps.StateProvinceID = pa.StateProvinceID






