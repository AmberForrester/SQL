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

--What is the order that you can execute DML "Data Manipulation Language" by 
--6. Select: Column we need
--1. From: Table we need
--2. Where: Rows we need
--3. Group by: Arranges rows by groups - must include the column in select statement
--4. Having: Filters the groups
--5. Order by: Sorts the output

--When you are filtering the columns it will NOT change the rows
-- If there are no Where clause - you are working on the whole data set and the total number of rows acts upon 


--Using group by statement you must select the column
select a.StateProvince, count(*) as Count from SalesLT.Address as a
group by a.StateProvince

--Order by can be used to filter 
--"Give me the country where we have the most customers" shown as addresses assuming 1 customer per address"
select top 1 a.StateProvince, count(*) as Count from SalesLT.Address as a
group by a.StateProvince --Groups the information
order by 2 desc

--"Give me the country where we have more than 50 customers" shown as addresses assuming 1 customer per address
select a.StateProvince, count(*) as Count from SalesLT.Address as a
group by a.StateProvince
having count(*) > 50 --Filters the information
order by 2 desc

--Inline grouping
select sum(A.individual_count) from (
select a.CountryRegion, count(*) individual_count from SalesLT.Address as a
group by a.CountryRegion
) A

select * from SalesLT.Address as a
where a.CountryRegion= 'Canada'

select * from SalesLT.Address as a
where a.StateProvince= 'Ontario'

select * from SalesLT.Address as a
where a.City= 'Toronto'

--Grouping and creating an Order by to suite what you want to see and how you see it
select a.CountryRegion,City, count(*) as Count from SalesLT.Address as a
group by a.CountryRegion,City
order by CountryRegion desc, City desc

select * from SalesLT.SalesOrderHeader

--What will this query help us understand about our orders
--Where do we have more than one order placed on a date
--"I need to know on which date, that I got more than 1 order"
select OrderDate, count(salesOrderID) as Orders
from SalesLT.SalesOrderHeader
group by OrderDate
having count(salesOrderID) > 1
order by OrderDate desc