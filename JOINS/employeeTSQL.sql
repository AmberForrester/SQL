-- Give me the first and last name of the Employee with Total Sales

-- Always look at the data you are working with first 
select * from hr.Employees

select e.empid, e.firstname, e.lastname from hr.Employees --9

select o.orderid, o.empid from Sales.Orders o
select od.orderid, od.unitprice*od.qty from Sales.OrderDetails od --830

-- Give me orderID + orderPrice

select e.firstname, e.lastname, o.empid, Sum(odunitprice*od.qty) from Sales.OrderDetails od, Sales.Orders o, hr.Employees empid
where od.orderid = o.orderid 
and e.empid = o.empid
order by 1--21,555

select e.firstname, e.lastname, o.empid, Sum(odunitprice*od.qty) from Sales.OrderDetails od, Sales.Orders o, hr.Employees empid
where od.orderid = o.orderid 
and e.empid = o.empid
group by e.firstname,e.lastname Employee, o.empid
order by 1--9

--SQL92
select e.firstname, e.lastname, o.empid, Sum(odunitprice*od.qty) from Sales.OrderDetails od inner join Sales.Orders o on od.orderid = o.orderid 
inner join hr.Employees e on e.empid = o.empid
group by e.firstname,e.lastname Employee, o.empid
order by 1--9