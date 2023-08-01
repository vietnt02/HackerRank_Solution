/*
https://www.hackerrank.com/challenges/the-pads/problem
*/
-- Solution
SELECT
    CONCAT(NAME,'(', LEFT(OCCUPATION,1), ')') AS A
INTO Temp1
FROM OCCUPATIONS
ORDER BY NAME;
SELECT
    CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION),'s.') AS A
INTO Temp2
FROM OCCUPATIONS
GROUP BY
    OCCUPATION
ORDER BY
    COUNT(OCCUPATION),
    OCCUPATION ASC;
SELECT * FROM Temp1
UNION
SELECT * FROM Temp2
