/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
Sample Input
  For example, CITY has four entries: DEF, ABC, PQRS and WXY.
Sample Output
  ABC 3
  PQRS 4
Explanation
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.
Note
You can write two separate queries to get the desired output. It need not be a single query.
*/
-- Solution

-- USING TEMP TABLE AND UNION
-- SHORTEST
SELECT TOP 1
    CITY,
    LEN(CITY) AS CITY_LEN
INTO
    TEMP_TABLE_ASC
FROM
    STATION
ORDER BY
    LEN(CITY) ASC,
    CITY ASC
-- LONGEST
SELECT TOP 1
    CITY,
    LEN(CITY) AS CITY_LEN
INTO
    TEMP_TABLE_DESC
FROM
    STATION
ORDER BY
    LEN(CITY) DESC,
    CITY ASC
-- UNION
SELECT * FROM TEMP_TABLE_ASC
UNION
SELECT * FROM TEMP_TABLE_DESC    
