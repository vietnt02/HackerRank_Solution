/*
https://www.hackerrank.com/challenges/placements/problem
*/
-- Solution
SELECT
    S.Name
FROM
    Students S
    INNER JOIN Friends F ON S.ID = F.ID
    INNER JOIN Packages P ON S.ID = P.ID
    INNER JOIN Packages PP ON F.Friend_ID = PP.ID
WHERE
    PP.Salary > P.Salary
ORDER BY
    PP.Salary
