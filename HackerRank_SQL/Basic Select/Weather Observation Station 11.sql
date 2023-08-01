/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/
-- Solution
SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    CITY NOT LIKE "[ueoai]%[ueoai]"
