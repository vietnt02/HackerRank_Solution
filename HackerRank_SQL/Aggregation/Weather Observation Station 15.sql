/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
*/
-- Solution
SELECT
    CAST(
        LONG_W
        AS NUMERIC(14,4))
FROM
    STATION
WHERE
    LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)
