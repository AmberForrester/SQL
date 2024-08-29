-- JOINS
-- Queries work in set + subset
-- JOINS table multiples the rows 

-- Example Query: 
select p.ProductID, m.Name as Model, p.Name as Product
from SalesLT.Product as p, SalesLT.ProductModel as M
where p.ProductModelID = m.ProductModelID


-- Always show your data first
select * from SalesLT.Product as P --295

select * from SalesLT.ProductModel as M --128 

-- Looking manually at the data you would have found below:
--ProductID	Product					Model
--680			HL Road Frame - Black	HL Road Frame
--707			Sport-100 Helmet - Red	Sport-100

-- Give me the prodcut name and the product model
select p.ProductModelID, p.ProductID, p.Name as Product from SalesLT.Product as P

select m.ProductModelID, m.Name as Model from SalesLT.ProductModel as M

--SQL89
-- Eq JOIN OR 'EQUALS': 
-- All the products were using the model that existed for this query.
select * from SalesLT.Product as p, SalesLT.ProductModel as m --37,760 (295 x 128)
where m.ProductModelID = p.ProductModelID --295 

select p.ProductID, p.Name as Product, m.Name as Model from SalesLT.Product as p, SalesLT.ProductModel as m
where m.ProductModelID = p.ProductModelID --295
order by 1

select distinct p.ProductModelID from SalesLT.Product p --119
-- In the ProductModelID table - only have 119 products they relate to.
-- Leaving 8 products without an association to a ProductModelID


--SQL92
select p.ProductID, p.Name as Product, m.Name as Model from SalesLT.Product as p join SalesLT.ProductModel m on m.productModelID = p.ProductModelID
order by 1 --295



-- Inner JOIN: finding records that match both tables
-- Most frequent join