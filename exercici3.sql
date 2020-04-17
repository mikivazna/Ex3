/'EX.1'/

SELECT COUNT(*) FROM Flights;

/'EX.2'/

SELECT AVG(DepDelay), Origin FROM Flights GROUP BY Origin;

SELECT AVG(ArrDelay), Origin FROM Flights GROUP BY Origin;

/'EX.3'/

SELECT Origin, colyear, colmonth, AVG(ArrDelay) FROM Flights GROUP BY Origin, colyear, colmonth order by origin, colyear, colmonth;

/'EX.4'/

ELECT City, colyear, colmonth, AVG(ArrDelay) FROM Flights INNER JOIN USAirports ON Flights.Origin = USAirports.IATA GROUP BY City, colyear, colmonth order by City, colyear, colmonth;

/'EX.5'/

SELECT UniqueCarrier, COUNT(Cancelled) From Flights GROUP BY UniqueCarrier ORDER BY COUNT(Cancelled) DESC;

/'EX.6'/

SELECT tailnum, SUM(distance) from Flights WHERE tailnum != 'NA' GROUP BY tailnum order by SUM(distance) desc limit 10;

/'EX.7'/

SELECT UniqueCarrier, AVG(ArrDelay) FROM Flights  GROUP BY UniqueCarrier having AVG(ArrDelay) > 10;
