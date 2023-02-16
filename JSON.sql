-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Es wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen steht der Autor gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

DECLARE @jsonInfo NVARCHAR(MAX)=N'{"info":{"address":[{"town":"Nidderau-Erbstadt"},{"town":"Rom"}]}}';

-- JSON_ARRAY
SELECT JSON_ARRAY();
SELECT JSON_ARRAY('a', 1, 'b', 2);
SELECT JSON_ARRAY('name', name, 'id', database_id) FROM sys.databases;
GO

-- JSON_OBJECT
SELECT JSON_OBJECT('name':'value', 'type':null, 'abc': 3);
SELECT JSON_OBJECT('name':'value', 'type':null, 'abc': 3 NULL ON NULL /* Standard */ );
SELECT JSON_OBJECT('name':'value', 'type':null, 'abc': 3 ABSENT ON NULL);
GO

-- ISJSON
DECLARE @json VARCHAR(MAX) = '["a",1,"b",2]';
SELECT ISJSON(@json, ARRAY); -- 1
SELECT ISJSON(@json, SCALAR); -- 0
-- ARRAY, SCALAR, VALUE, OBJECT
GO

-- JSON_PATH_EXISTS
DECLARE @jsonInfo NVARCHAR(MAX)=N'{"info":{"address":[{"town":"Nidderau-Erbstadt"},{"town":"Rom"}]}}';
SELECT JSON_PATH_EXISTS(@jsonInfo,'$.info.address'); -- 1
SELECT JSON_PATH_EXISTS(@jsonInfo,'$.info.email'); -- 0
GO
