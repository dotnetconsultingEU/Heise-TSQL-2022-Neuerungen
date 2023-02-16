-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Es wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen steht der Autor gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

SET NOCOUNT ON
GO
DROP TABLE IF EXISTS #Employee;
GO
CREATE TABLE #Employee 
(
	EmplId INT IDENTITY(1,1) PRIMARY KEY CLUSTERED,
	DeptId INT,
	Salary int
);
GO
INSERT #Employee
VALUES (1, 31), (1, 33), (1, 18), (2, 25), (2, 35), (2, 10), (2, 10), 
       (3, 1), (3, NULL), (4, NULL), (4, NULL);
GO

-- Kontinuierliche Werte
SELECT DISTINCT DeptId,
       PERCENTILE_CONT(0.10) WITHIN GROUP (ORDER BY Salary) OVER (PARTITION BY DeptId) AS 'P10',
       PERCENTILE_CONT(0.90) WITHIN GROUP (ORDER BY Salary) OVER (PARTITION BY DeptId) AS 'P90'  
FROM #Employee;

SELECT DeptId,
	   APPROX_PERCENTILE_CONT(0.10) WITHIN GROUP(ORDER BY Salary) AS 'P10',
	   APPROX_PERCENTILE_CONT(0.90) WITHIN GROUP(ORDER BY Salary) AS 'P90'
FROM #Employee
GROUP BY DeptId;

-- Diskrete Werte
SELECT DISTINCT DeptId,
       PERCENTILE_DISC(0.10) WITHIN GROUP (ORDER BY Salary) OVER (PARTITION BY DeptId) AS 'P10',
       PERCENTILE_DISC(0.90) WITHIN GROUP (ORDER BY Salary) OVER (PARTITION BY DeptId) AS 'P90'  
FROM #Employee;

SELECT DeptId,
       APPROX_PERCENTILE_DISC(0.10) WITHIN GROUP(ORDER BY Salary) AS 'P10',
       APPROX_PERCENTILE_DISC(0.90) WITHIN GROUP(ORDER BY Salary) AS 'P90'
FROM #Employee
GROUP BY DeptId;
