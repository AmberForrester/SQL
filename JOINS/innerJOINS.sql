-- Inner JOIN: finding records that match both tables
-- Most frequent join

SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[ThumbNailPhoto]
      ,[ThumbnailPhotoFileName]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [adventureworks].[SalesLT].[Product]

select SalesLT.Product.Name as ProductName, SalesLT.ProductCategory.Name as category
from SalesLT.Product
inner join SalesLT.ProductCategory
on SalesLT.Product.ProductCategoryID = SalesLT.ProductCategory.ProductCategoryID

-- Always explore your data first
select p.Name from SalesLT.Product as p--295
select c.Name from SalesLT.ProductCategory c--41

-- Inner JOINS: Rows that DO match.

select p.Name as Products, c.Name as Categories
from SalesLT.Product as p inner join SalesLT.ProductCategory c
on p.ProductCategoryID = c.ProductCategoryID --295 all of the products in the products table have a category


select oh.OrderDate, oh.SalesOrderNumber, p.Name as ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
 from SalesLT.SalesOrderHeader as oh
 join SalesLT.SalesOrderDetail as od
	 on od.SalesOrderID = oh.SalesOrderID
 join SalesLT.Product as p 
	 on od.ProductID = p.ProductID
 order by oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;

-- Transaction Table
-- Transaction Details Table 

-- Order Table = SalesOrderHeader
-- Order Details = SalesOrderDetail

select * from SalesLT.SalesOrderHeader as oh --32
select * from SalesLT.SalesOrderDetail as od --574
select * from salesLT.product --295


select * from SalesLT.SalesOrderHeader as oh
where oh.SalesOrderID = 71774
select * from SalesLT.SalesOrderDetail as od
where od.SalesOrderID = 71774
select * from salesLT.product as p
where p.ProductID in (836, 822)

-- Focus on 1 product
select od.SalesOrderID, oh.OrderDate, oh.SalesOrderNumber, p.Name as ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
 from SalesLT.SalesOrderHeader as oh
 join SalesLT.SalesOrderDetail as od
	 on od.SalesOrderID = oh.SalesOrderID
 join SalesLT.Product as p 
	 on od.ProductID = p.ProductID
where od.SalesOrderID = 71780
 order by oh.OrderDate, oh.SalesOrderID, od.SalesOrderDetailID;

-- Invoice Total
select od.SalesOrderID, oh.OrderDate, oh.SalesOrderNumber, p.Name as ProductName, od.OrderQty, od.UnitPrice, Sum(od.LineTotal)
 from SalesLT.SalesOrderHeader as oh
 join SalesLT.SalesOrderDetail as od
	 on od.SalesOrderID = oh.SalesOrderID
 join SalesLT.Product as p 
	 on od.ProductID = p.ProductID
where od.SalesOrderID = 71780
group by od.SalesOrderID, oh.OrderDate, oh.SalesOrderNumber, p.Name, od.OrderQty, od.UnitPrice

select a.InvoiceTotal from (
select Sum(od.LineTotal) InvoiceTotal
 from SalesLT.SalesOrderHeader as oh
 join SalesLT.SalesOrderDetail as od
	 on od.SalesOrderID = oh.SalesOrderID
 join SalesLT.Product as p 
	 on od.ProductID = p.ProductID
where od.SalesOrderID = 71780
) as a
,
(
select oh.OrderDate, oh.SalesOrderNumber, p.Name as ProductName, od.OrderQty, od.UnitPrice, od.LineTotal
from SalesLT.SalesOrderHeader as oh
join SalesLT.SalesOrderDetail as od
	on od.SalesOrderId = oh.SalesOrderID
join SalesLT.Product as p
	on od.ProductID = p.ProductID
where oh.SalesOrderID = 71786
) as b