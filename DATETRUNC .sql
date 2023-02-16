-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Es wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen steht der Autor gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

DECLARE @d DATETIME2 = GETDATE();
SELECT 'Year', DATETRUNC(YEAR, @d); -- 2022-01-01 00:00:00.0000000
SELECT 'Quarter', DATETRUNC(QUARTER, @d); --2022-10-01 00:00:00.0000000
SELECT 'Month', DATETRUNC(MONTH, @d); -- 2022-12-01 00:00:00.0000000
SELECT 'Week', DATETRUNC(WEEK, @d); -- 2022-12-11 00:00:00.0000000
SELECT 'Iso_week', DATETRUNC(ISO_WEEK, @d); -- 2022-12-12 00:00:00.0000000
SELECT 'DayOfYear', DATETRUNC(DAYOFYEAR, @d); -- 2022-12-17 00:00:00.0000000
SELECT 'Day', DATETRUNC(DAY, @d); -- 2022-12-17 00:00:00.0000000
SELECT 'Hour', DATETRUNC(HOUR, @d); -- 2022-12-17 19:00:00.0000000
SELECT 'Minute', DATETRUNC(MINUTE, @d); -- 2022-12-17 19:45:00.0000000
SELECT 'Second', DATETRUNC(SECOND, @d); -- 2022-12-17 19:45:17.0000000
SELECT 'Millisecond', DATETRUNC(MILLISECOND, @d); -- 2022-12-17 19:45:17.5800000
SELECT 'Microsecond', DATETRUNC(MICROSECOND, @d); -- 2022-12-17 19:45:17.5800000

-- Relevant f�r 'WEEK'
SELECT @@DATEFIRST '@@DATEFIRST', DATENAME(WEEKDAY, @@DATEFIRST) 'Weekday'
