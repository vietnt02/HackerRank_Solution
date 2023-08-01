/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
*/
-- Solution
SELECT
    ROUND(
        SQRT(
            SQUARE(MAX(LAT_N) - MIN(LAT_N))
            +
            SQUARE(MAX(LONG_W) - MIN(LONG_W))
        )
    ,4)
FROM
    STATION

-- When I did this exercise, maybe HackerRank's MS SQL Server system crashed, the answer returned 184.16159999999 instead of 184.1616
/*
This issue has been resolved, the fault is mine. In this case, we have to use extra CAST function and set the data type to NUMERIC or similar to limit the number of numbers after the decimal point
*/
-- Correct Solution
SELECT
    CAST(
        ROUND(
            SQRT(
                SQUARE(MAX(LAT_N) - MIN(LAT_N))
                +
                SQUARE(MAX(LONG_W) - MIN(LONG_W))
            )
        ,4)
     AS NUMERIC(12,4))
FROM
    STATION
