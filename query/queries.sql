--Exploring the table structure
select * from SalesLT.Address

select * from SalesLT.Product

--Using alias
select * from SalesLT.CustomerAddress as ca
order by ca.AddressID 

select * from SalesLT.Address as a 
order by a.AddressID

--Select all columns and rows from a table_name
select * from SalesLT.Customer

--Select column from the table 
select p.Name, p.ListPrice from SalesLT.Product as p

--select all column and rows from a table and assigning a alias
SELECT * FROM SalesLT.Product as p
 
--selecting column from the table
SELECT p.Name,p.StandardCost, p.ListPrice FROM SalesLT.Product as p;

SELECT Name,ListPrice ,StandardCost, ListPrice - StandardCost
FROM SalesLT.Product;

SELECT Name AS ProductName, ListPrice - StandardCost AS Markup
FROM SalesLT.Product;

SELECT ProductNumber, Color, Size, Color + ', ' + Size AS ProductDetails
FROM SalesLT.Product;

SELECT ProductNumber, cOLoR, Size, Color + ', ' + Size AS ProductDetails
FROM SalesLT.Product;

select c.FirstName+' ' + c.MiddleName+' ' +c.LastName as 'Full Name' from SalesLT.Customer as c

--Subquery
select * from SalesLT.Customer as c --106 rows
where c.CustomerID in (	
						select ca.CustomerID from SalesLT.CustomerAddress as ca--107 rows
						where ca.AddressID in (
												select a.AddressID from SalesLT.Address as a --115 rows
												where a.CountryRegion= 'Canada'
												)
						)
					
--Joins --SQL89 Queries
select * from SalesLT.CustomerAddress as c, SalesLT.CustomerAddress as ca, SalesLT.Address as a 
where c.CustomerID = ca.CustomerID
and ca.AddressID = a.AddressID
and a.CountryRegion= 'Canada'

--Joins --SQL92 Queries
select * from SalesLT.CustomerAddress as c
inner join SalesLT.CustomerAddress as ca
on C.CustomerID = ca.CustomerID
inner join SalesLT.Address as a 
on ca.AddressID = a.AddressID
and a.CountryRegion= 'Canada'