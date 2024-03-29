/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/
-- Solution
SELECT
    CAST(
        (
            (SELECT MAX(LAT_N) FROM(
                                    SELECT TOP 50 PERCENT LAT_N 
                                    FROM STATION 
                                    ORDER BY LAT_N ASC) AS A)
            +
            (SELECT MIN(LAT_N) FROM(
                                    SELECT TOP 50 PERCENT LAT_N 
                                    FROM STATION 
                                    ORDER BY LAT_N DESC) AS B)
        )/2 AS NUMERIC(10,4)
    )
