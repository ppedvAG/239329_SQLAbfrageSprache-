USE Northwind

-- WHERE: filtert Ergebniszeilen
SELECT * FROM Customers
WHERE Country = 'Germany'

-- alle boolsche Vergleichsoperatoren
/*
	= -> exakte Suche
	> -> größer als
	< -> kleiner als
	>= -> größer oder gleich als
	<=  ->kleiner oder gleich als
	!= & <> -> Ungleich
*/

SELECT * FROM Orders
WHERE Freight > 100

SELECT * FROM Customers
WHERE Country != 'Germany'

-- Kombinieren mit AND oder OR
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin'

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'France'

-- AND = Müssen beide Bedingungen wahr sein
-- OR = Muss nur eine Bedingung wahr sein

-- "Vorsicht" bei Kombination aus AND und OR
SELECT * FROM Customers
WHERE (City = 'Paris' OR City = 'Berlin') AND Country = 'Germany'

SELECT * FROM Orders
WHERE Freight >= 100 AND Freight <= 500

-- Alternative mit Between, Randwerte mit dabei
SELECT * FROM Orders
WHERE Freight BETWEEN 100 AND 500

SELECT * FROM Customers
WHERE Country = 'Brazil' OR Country = 'Germany' OR Country = 'France'

-- Alternative: IN (Wert1, Wert2 ...)
SELECT * FROM Customers
WHERE Country IN ('Brazil', 'Germany', 'France')
-- IN verbindung aus mehreren OR Bedingungen

-- Übungen:
-- 1. Alle ContactNames die als Titel "Owner" aus Tabelle Customers
SELECT * FROM Customers
WHERE ContactTitle = 'Owner'

-- 2. Alle Order Details die mit der ProductID 43 bestellt haben
SELECT * FROM [Order Details]
WHERE ProductID = 43

-- 3. Alle Kunden aus Paris, Berlin, Madrid und Brazilien haben
--    die in der Customers Tabelle zu finden sind
SELECT * FROM Customers
WHERE City IN ('Paris', 'Berlin', 'Madrid') OR Country = 'Brazil'

-- Bonus: Alle ContactNames haben die den Titel "Manager" beinhalten
-- Tabelle: Customers (LIKE möglich)
SELECT * FROM Customers
WHERE ContactTitle LIKE '%Manager%'

-- Bonus: Alle Kunden die eine Fax Nummer haben
-- Tabelle Customers
SELECT * FROM Customers
WHERE Fax IS NOT NULL