USE Northwind

-- Die Customers und Orders Tabelle in ein Ergebnisfenster ausgeben
SELECT * FROM Customers
SELECT * FROM Orders

/*
	JOIN Syntax:

	SELECT * FROM Tabelle A
	JOIN Tabelle B ON A.Spalte1 = B.Spalte1
*/

SELECT * FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID = 'ALFKI'

SELECT * FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID

-- Aliasen
SELECT CompanyName, Country, Ord.* FROM Orders as Ord
JOIN Customers as Cus ON Ord.CustomerID = Cus.CustomerID

-- Verknüpfung zwischen Products - Orders - Order Details
SELECT * FROM Orders
JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
JOIN Products ON [Order Details].ProductID = Products.ProductID


-- Übungen
-- 1. Alle Produkte (ProductNames) aus den Kategorien "Beverages" und "Produce"
-- (CategoryName in Categories)
-- Products - Categories Tables
SELECT * FROM Products 
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE CategoryName IN ('Beverages', 'Produce')

-- 2. Welche Produkte (ProductName) hat "Leverling" bisher verkauft?
-- Tabellen: Employees - Orders - [Order Details] - Products
SELECT DISTINCT ProductName, LastName FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
JOIN Products ON Products.ProductID = [Order Details].ProductID
WHERE LastName = 'Leverling'


-- 3. Was war die größte Bestellmenge (Quantity) von Chai Tee (ProductName = 'Chai')?
-- Tabellen: [Order Details] - Products
SELECT TOP 1 ProductName, Quantity FROM Products
JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE ProductName = 'Chai'
ORDER BY Quantity DESC

-------------------------------
-- OUTER JOINS: Left/Right und Full Outer

-- LEFT:
SELECT * FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

-- RIGHT: Z: 189 & 502
SELECT * FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID

-- "invertieren", d.h keine Schnittmenge anzeigen, durch filtern nach NULL
SELECT * FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.OrderID IS NULL

SELECT * FROM Customers
LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE Orders.CustomerID IS NULL

-- CROSS JOIN: Erstellt karthesisches Produkt zweier Tabellen (A x B)
SELECT * FROM Orders CROSS JOIN Customers -- (830 x 91)

-- SELF JOIN
SELECT E1.EmployeeID, E1.LastName as Vorgesetzter, E2.EmployeeID, E2.LastName as Angestellter
FROM Employees as E1
RIGHT JOIN Employees as E2 ON E1.EmployeeID = E2.ReportsTo

-- Aufgabe kombination
-- Wieviele Bestellungen haben Kunden aus Argentinien 
-- aufgegeben (Anzahl OrderIDs bzw. Anzahl Ergebniszeile)
-- Tabellen: Orders - Customers
SELECT COUNT(*) as BestAnzahl FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Country = 'Argentina'