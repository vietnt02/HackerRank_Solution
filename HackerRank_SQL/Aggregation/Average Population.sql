/*
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/
-- Solution
SELECT
    FLOOR(AVG(POPULATION))
FROM
    CITY
