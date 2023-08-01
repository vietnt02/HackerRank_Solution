/*
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
*/
-- Solution
SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    CITY LIKE "%[ueoai]"
