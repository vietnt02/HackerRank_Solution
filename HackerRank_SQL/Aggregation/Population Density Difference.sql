/*
Query the difference between the maximum and minimum populations in CITY.
*/
-- Solution
SELECT
    MAX(POPULATION) - MIN(POPULATION)
FROM
    CITY
