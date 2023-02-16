-- Disclaimer
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Jedoch wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen stehe ich jedoch gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

SELECT * FROM sys.Databases;

SELECT * FROM sys.Databases WHERE source_database_id = NULL; -- Leer

SELECT * FROM sys.Databases
WHERE source_database_id IS NOT DISTINCT FROM NULL; -- Leer, weil NULL als Wert gleich NULL als Wert ist

-- Alte Logik mit '='
SELECT * FROM sys.Databases WHERE 0 = 0;
SELECT * FROM sys.Databases WHERE 0 = 1;
SELECT * FROM sys.Databases WHERE 0 = NULL;
SELECT * FROM sys.Databases WHERE NULL = NULL;

-- IS DISTINCT FROM
SELECT * FROM sys.Databases WHERE 0 IS DISTINCT FROM 0; -- ... 0 ist unterscheidbar von 0? Nein
SELECT * FROM sys.Databases WHERE 0 IS DISTINCT FROM 1; -- ... 1 ist unterscheidbar von 0? Ja
SELECT * FROM sys.Databases WHERE 0 IS DISTINCT FROM NULL; -- ... 0 ist unterscheidbar von NULL? Ja
SELECT * FROM sys.Databases WHERE NULL IS DISTINCT FROM NULL;  -- ... NULL ist unterscheidbar von NULL? Nein

-- IS NOT DISTINCT FROM
SELECT * FROM sys.Databases WHERE 0 IS NOT DISTINCT FROM 0; -- ... 0 ist nicht unterscheidbar von 0? Ja
SELECT * FROM sys.Databases WHERE 0 IS NOT DISTINCT FROM 1; -- ... 1 ist nicht unterscheidbar von 0? Nein
SELECT * FROM sys.Databases WHERE 0 IS NOT DISTINCT FROM NULL; -- ... 0 ist nicht unterscheidbar von NULL? Nein
SELECT * FROM sys.Databases WHERE NULL IS NOT DISTINCT FROM NULL;  -- ... NULL ist nicht unterscheidbar von NULL? Ja