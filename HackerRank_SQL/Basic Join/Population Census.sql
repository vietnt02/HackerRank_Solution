/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/
-- Solution
SELECT
    SUM(CITY.POPULATION) AS CONTINENT_POPULATION
FROM
    CITY
INNER JOIN COUNTRY ON COUNTRY.CODE = CITY.COUNTRYCODE
WHERE
    COUNTRY.CONTINENT = 'Asia'
GROUP BY
    COUNTRY.CONTINENT
