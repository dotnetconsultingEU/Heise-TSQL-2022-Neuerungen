-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Es wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen steht der Autor gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

USE AdventureWorks;
GO
SELECT Name, ListPrice,
       FIRST_VALUE(Name) RESPECT NULLS OVER (ORDER BY ListPrice ASC) AS LeastExpensive
FROM Production.Product
WHERE ProductSubcategoryID = 37;

SELECT Name, ListPrice,
       FIRST_VALUE(Name) IGNORE NULLS OVER (ORDER BY ListPrice ASC) AS LeastExpensive
FROM Production.Product
WHERE ProductSubcategoryID = 37;
