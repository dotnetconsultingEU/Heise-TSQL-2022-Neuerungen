-- Disclaimer
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Jedoch wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen stehe ich jedoch gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

DECLARE @caption VARCHAR(100) = '-== SQL Server 2022 ==-';

SELECT LTRIM(@caption, '-= ') AS [LTRIM],
	   RTRIM(@caption, '-= ') AS [RTRIM];

SELECT TRIM(LEADING '-= ' FROM @caption) AS [LEADING],
	   TRIM(TRAILING '-= ' FROM @caption) AS [TRAILING],
	   TRIM(BOTH '-= ' FROM @caption) AS [BOTH];
