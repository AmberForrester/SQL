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