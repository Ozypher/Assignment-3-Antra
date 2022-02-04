--Sherwin Rahimi 2/3/2022

--List all cities that have both Employees and Customers.
SELECT DISTINCT City
FROM Customers
WHERE City IN (SELECT City FROM Employees)

--List all cities that have Customers but no Employee.
--subquery
SELECT DISTINCT City
FROM Customers
WHERE City NOT IN (SELECT City FROM Employees)

-- List all products and their total order quantities throughout all orders. -- 
SELECT p.ProductName, SUM(Quantity) TotalQuant
FROM Products p JOIN [Order Details] od ON od.ProductID = p.ProductID
GROUP BY p.ProductName

--List all Customer Cities and total products ordered by that city.--
SELECT c.City, SUM(Quantity) TotalQuant
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY c.City

-- List all Customer Cities that have at least two customers.--
--Cant figure this one out yet.

--6.      List all Customer Cities that have ordered at least two different kinds of products.
--Still working on this

--