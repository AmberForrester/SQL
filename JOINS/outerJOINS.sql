-- Outer Joins: Rows that do NOT match. 

select * from salesLT.Customer --847
select * from SalesLT.SalesOrderHeader --32

-- Header table is combined with Customer table to give first and last name 
select c.FirstName, C.LastName, oh.SalesOrderNumber
from SalesLT.Customer as c
inner join salesLT.SalesOrderHeader as oh
	on c.customerID = oh.CustomerID
order by c.CustomerID --32

-- Bring matched and unmatched customers 
select c.FirstName, C.LastName, oh.SalesOrderNumber
from SalesLT.Customer as c
left outer join salesLT.SalesOrderHeader as oh
	on c.customerID = oh.CustomerID
order by c.CustomerID --847

-- Customers not placing orders
select c.FirstName, C.LastName, oh.SalesOrderNumber
from SalesLT.Customer as c
left outer join salesLT.SalesOrderHeader as oh
	on c.customerID = oh.CustomerID
	where SalesOrderNumber is null
order by c.CustomerID --815



-- Cross Joins: Multiply the data
select p.Name, c.FirstName, c.LastName, c.EmailAddress
from SalesLT.Product as p
cross join SalesLT.Customer as c --249,865