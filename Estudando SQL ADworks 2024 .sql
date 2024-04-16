SELECT * 
FROM Person.Person

SELECT pp.FirstName
from Person.Person pp;
/* =============================================== */
SELECT SUBSTRING(pp.MiddleName, 1, 1) as [letras iniciais], COUNT(*) quantidade
	FROM Person.Person pp
	where pp.MiddleName is not null
	group by SUBSTRING(pp.MiddleName, 1,1)
	order by quantidade


/* =============================================== */

SELECT * 
FROM Person.Person

SELECT * 
FROM Person.PersonPhone

SELECT * 
FROM Person.PhoneNumberType

select pp.FirstName, pp.LastName, pp.Title, pph.PhoneNumber, pnt.Name [Tipo de aparelho]
from Person.Person pp
left Join Person.PersonPhone pph
on pp.BusinessEntityID = pph.BusinessEntityID
join Person.PhoneNumberType pnt
on pph.PhoneNumberTypeID = pnt.PhoneNumberTypeID
where pp.Title is not null and pnt.Name like 'Cell';

/* =============================================== */

SELECT *
FROM Production.Product p
order by p.Name asc

/* =============================================== */

SELECT TOP 10 *
FROM Production.Product P
order by p.ListPrice desc

/* =============================================== */

SELECT COUNT(ps.ProductSubcategoryID) as TOTAL
FROM Production.ProductSubcategory ps

/* =============================================== */

SELECT *
FROM Production.Product

select *
from Production.ProductCategory

select *
from Production.ProductSubcategory

SELECT pp.Name Product_Name, pc.Name Product_Category, ps.Name Product_SubCategory
FROM Production.Product pp
left join Production.ProductSubcategory ps
on pp.ProductSubcategoryID = ps.ProductSubcategoryID
join Production.ProductCategory pc
on pc.ProductCategoryID = ps.ProductCategoryID
/* =============================================== */

SELECT *
FROM Production.Product

SELECT * 
FROM Production.ProductInventory

SELECT pp.Name, inv.Quantity
FROM Production.Product pp
JOIN Production.ProductInventory inv
on pp.ProductID = inv.ProductID
order by Quantity desc;

/* =============================================== */

IF EXISTS (SELECT 1 FROM sys.objects WHERE TYPE = 'p' and NAME = 'SP_CONSULTAR_PESSOAS')
BEGIN
DROP PROCEDURE SP_CONSULTAR_PESSOAS
END
GO

CREATE PROCEDURE SP_CONSULTAR_PESSOAS
AS
SELECT * FROM Person.Person
GO

EXEC SP_CONSULTAR_PESSOAS

CREATE PROCEDURE SP_PRODUCT_COLOR_BLACK
AS
	SELECT * 
	FROM Production.Product pp
	WHERE Color  like 'Black'
	ORDER BY pp.SafetyStockLevel desc;
GO


EXEC SP_PRODUCT_COLOR_BLACK

/* ======================
Escreva uma consulta para listar o nome do produto (Product.Name), 
a categoria do produto (ProductCategory.Name) e a 
subcategoria do produto (ProductSubcategory.Name) 
para todos os produtos da tabela Production.Product.
========================= */

SELECT * 
FROM Production.Product

SELECT *
FROM Production.ProductCategory

SELECT * 
FROM Production.ProductSubcategory

SELECT prod.Name, prodCat.Name, prodSub.Name
FROM Production.Product  prod
JOIN Production.ProductSubcategory prodSub
on prod.ProductSubcategoryID = prodSub.ProductSubcategoryID
JOIN Production.ProductCategory prodCat
on prodCat.ProductCategoryID = prodSub.ProductCategoryID




/* =============================================== */

select count(*) total
from Production.Product
where Style is not null

select * from Person.Person

select COUNT(EmailPromotion) TOTAL
FROM Person.Person
WHERE EmailPromotion like '1'


/* =============================================== */

SELECT *
FROM Production.Product pp

select * 
from Production.ProductInventory


SELECT *
FROM Sales.Customer

SELECT * FROM
Sales.SalesTerritory


SELECT sc.CustomerID, sst.TerritoryID, sst.Name,
sst.SalesLastYear, sso.Status
FROM Sales.Customer sc
JOIN Sales.SalesTerritory sst
ON sst.TerritoryID = sc.TerritoryID
JOIN Sales.SalesOrderHeader sso
ON sc.CustomerID = sso.CustomerID
where sst.TerritoryID  not like '6'
order by sst.TerritoryID desc
/* =============================================== */

SELECT pp.Name, pp.Color, sso.Category, ssod.OrderQty, ssod.UnitPrice
FROM Production.Product pp
join Sales.SpecialOfferProduct ssop
on pp.ProductID = ssop.ProductID
join Sales.SalesOrderDetail ssod
on pp.ProductID = ssod.ProductID
join Sales.SpecialOffer sso
on sso.SpecialOfferID = ssop.SpecialOfferID
where Color like 'Silver' and sso.Category like 'Reseller' and pp.Name like '%48'
order by ssod.OrderQty desc;

/* =============================================== */

SELECT Name, pp.StandardCost, pp.DaysToManufacture, pp.SafetyStockLevel, COUNT(*) AS TOTAL
FROM Production.Product pp
WHERE Color = 'Silver'
GROUP BY Name, StandardCost, DaysToManufacture, SafetyStockLevel


SELECT Name, StandardCost, DaysToManufacture, SafetyStockLevel,
	(SELECT COUNT(*) FROM Production.Product WHERE Color = 'Silver') AS TOTAL
	FROM Production.Product
	WHERE Color = 'Silver';
