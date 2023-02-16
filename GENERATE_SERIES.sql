-- Disclaimer:
-- Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
-- Auflagen oder Einschr�nkungen verwendet oder ver�ndert werden.
-- Es wird keine Garantie �bernommen, dass eine Funktionsf�higkeit mit aktuellen und 
-- zuk�nftigen API-Versionen besteht. Der Autor �bernimmt daher keine direkte oder indirekte 
-- Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgef�hrt wird.
-- F�r Anregungen und Fragen steht der Autor gerne zur Verf�gung.

-- Thorsten Kansy, www.dotnetconsulting.eu

-- Von 1 bis <=50 in 5er Schritten => 1..6..11..41..46
SELECT value FROM GENERATE_SERIES(/* Start */ 1, /*STOP*/ 50, /*STEP*/ 5);

-- Alle Kalenderwochen 2022
SELECT CAST(DATEADD(WEEK, value - 1, '2022-01-03') AS DATE), value FROM GENERATE_SERIES(1, 52);