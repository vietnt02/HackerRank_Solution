/*
Query the following two values from the STATION table:
The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
Where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.
*/
-- Solution
SELECT
    CAST(ROUND(SUM(LAT_N),2) AS NUMERIC(12,2)) AS lat,
    CAST(ROUND(SUM(LONG_W),2) AS NUMERIC(12,2)) AS lon
FROM
    STATION
/*
I learned from this exercise, when using ROUND() function in MS SQL Server, numbers are rounded but the numbers after the rounded number are not lost (Example 100.3 will become 100.300000) .
Therefore, we must use the CAST function and set the data type to limit the number of numbers after the decimal point
*/
