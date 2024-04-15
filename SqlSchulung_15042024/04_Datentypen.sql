/*
	Datentypen in SQL: 3 große Gruppen

	1. Charakter/String Datentypen:
	char(10) = 'Hallo     ' = 10 Byte Speicherplatz
	varchar(10) = 'Hallo' = 5 Byte Speicherplatz

	nchar() = 1 Charakter = 2 Byte => UTF-16
	nvarchar() = 1 Charakter = 2 Byte => UTF-16

	Legacy: text --> varchar(max) = bis zu 2GB
	varchar(8000) & nvarchar(4000) sind maximum

	2. Numerische Datentypen:
	tinyint = 8 Bit = bis 255
	smallint = 16 Bit = 32K
	int = 32 Bit = 2,14Mrd
	bigint = 64 Bit = 9,2 Trillion ca

	bit = 1 oder o (True = 1, False = 0) => Es gibt kein Bool!

	decimal(x, y) =  x Ziffern sind gesamt, davon sind y Nachkommastellen
	decimal(10, 2) = 10 Ziffern insgesamt, davon sind 2 Nachkommastellen 
	money = ca 9,2 Trillion
	smallmoney = ca 214 Tausend

	3. Datum/Zeit Datentypen:
	time = hh:mm:ss.nnnnnnn
	date = YYYY-MM-DD
	datetime = date + time in MS = YYYY-MM-DD hh:mm:ss.mmm
	datetime2 = YYYY-MM-DD hh:mm:ss:nnnnnnn
	smalldatetime = präzise bis Sekunden = YYYY-MM-DD hh:mm:ss

	Andere:
	XML
	JSON
	geometry
	geography
*/
