USE Northwind

-- LIKE: F�r ungenaue Filterung/Suche k�nnen wir LIKE verwenden

-- Wildcards
-- "%"-Zeichen: Beliebige Symbole, beliebig viele davon
SELECT ContactName, ContactTitle FROM Customers
WHERE ContactTitle LIKE '%Manager%'

-- "_"-Zeichen: EIN beliebiges Symbol
SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '_l%'

-- "[]"-Zeichen: Alles was in den Klammern steht, ist g�ltiges Symbol
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[012345]%'

-- "[a-z]" oder gegenteil mit ^ [^a-z]
SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[0-5]%'

SELECT PostalCode FROM Customers
WHERE PostalCode LIKE '[^0-5]%'

-- Sonderf�lle: % & ''
SELECT * FROM Customers
WHERE CompanyName LIKE '%['']%'

SELECT * FROM Customers
WHERE CompanyName LIKE '%[%]%'

-- �bung:

-- 1. Alle ContactNames die als Title "Owner" beeinhalten
SELECT * FROM Customers
WHERE ContactTitle LIKE '%Owner%'

-- 2. Alle Orders, die die Postleitzahl 0-3 beeinhalten
SELECT * FROM Orders
WHERE ShipPostalCode LIKE '[0-3]%'

-- Bonus: Alle Orders wo die ShipRegion = NULL ist
SELECT * FROM Orders
WHERE ShipRegion IS NULL