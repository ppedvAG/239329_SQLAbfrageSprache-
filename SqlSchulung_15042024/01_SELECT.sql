-- Auskommentieren Shortcut (STRG + K STRG + C)
-- Umkehren = (STRG + K STRG + U)

-- 2 Möglichkeiten unsere Datenbank auszuwählen
-- 1. USE Datenbankname wechselt angesproche Datenbank
-- 2. Dropdown Menü "oben links"
USE Northwind -- (STRG + E)

-- einzeilige Kommentare

/*
	Mehrzeiliger
	Kommentar
*/
-------------------------------------------------
/*
	SELECT = wählt Spalten aus, die in unserem Ergebnisfenster
	ausgeben werden sollen
*/
SELECT * FROM Customers -- * = Alle Spalten in der angesprochen Tabelle ausgeben
SELECT * FROM [Order Details]

SELECT ContactName, CompanyName FROM Customers

-- "Custom" -Werte und ausgeben

SELECT 100

SELECT 'Hallo!' as [Te st] -- "Alias" = Spaltenname vergeben
-- 'Einzelne Hochkomma' weil String!!!

SELECT 'Hallo', 100

-- Berechnungen durchführen
SELECT 100 + 5, 7 * 8, 100 - 5, 100 / 25

-- SQL IST NICHT CASE-sensitive, Formatierung spielt keine Rolle, keine Semikolons nötig

SeLeCt				Country 

		FROm

			CuStoMerS

-- Ich möchte das Ihr mir die Tablle "Orders" mit Spalten:
-- OrderDate & ShippedDate ausgibt
SELECT ShippedDate, OrderDate FROM Orders

-- Sortieren mit ORDER BY
SELECT * FROM Customers
ORDER BY City

-- Absteigend sortiert Z-A
SELECT * FROM Customers
ORDER BY City DESC
-- Order By syntaktisch IMMER am Ende steht
-- ASC = Aufsteigend (standard)
-- DESC = absteigend

-- Auch mehrere Spalten gleichzeitig sortieren
SELECT City, Country FROM Customers
ORDER BY City ASC, Country DESC

-- Bestimmte oberste Zeilen uns ausgeben lassen
-- Nur die ersten 10 Zeilen von der Tabelle "Customers"
SELECT TOP 10 * FROM Customers 
SELECT TOP 100 * FROM Customers 

-- Prozentual
SELECT TOP 10 PERCENT * FROM Customers

-- Die 10 untersten
/*
	WICHTIG!: "BOTTOM" existiert nicht, wie wirds richtig gemacht?
	Mit Order by Umdrehen
*/

SELECT TOP 10 * FROM Customers
ORDER BY CustomerID DESC

-- Die 20 kleinsten Freight Werte ausgeben lassen
SELECT TOP 20 * FROM Orders
ORDER BY Freight ASC

-- Die 20 größten Freight Werte ausgeben lassen
SELECT TOP 20 * FROM Orders
ORDER BY Freight DESC

-- Duplikate "filtern" mit DISTINCT
-- Filtert alle Ergebnisse/Datensätze deren Werte exakt gleich sind

SELECT Country FROM Customers

SELECT DISTINCT Country FROM Customers


-------------------------
--UNION führt mehrere Ergebnistabellen vertikal in eine Tabelle zusammen
--UNION macht automatisch ein DISTINCT
--Spaltenanzahl muss gleich sein & Datentypen müssen Kompatibel sein

SELECT * FROM Customers
UNION
SELECT * FROM Customers

-- mit UNION ALL wird KEIN DISTINCT ausgeführt
SELECT * FROM Customers
UNION ALL
SELECT * FROM Customers

SELECT 100 as Zahl, 'Hallo' as String
UNION
SELECT 5, 'Welt!'

-- Funktioniert das?
SELECT 100, 'Hallo', 5
UNION
SELECT 5, 'Welt!'

-- Funktioniert das?
SELECT 'Hallo', 5 
UNION
SELECT 5, 'Welt!'