/*
https://www.hackerrank.com/challenges/sql-projects/submissions
*/
-- Solution
SELECT
    MIN(Start_Date)
    , MAX(End_Date)
FROM (
    SELECT
        Start_Date
        , End_Date
        , SUM(cal) OVER(ORDER BY End_Date) AS cal2
    FROM (    
        SELECT
            Start_Date
            , End_Date
            , CASE WHEN Start_Date = LAG(End_Date,1) OVER(ORDER BY End_Date) THEN 0 ELSE 1 END AS cal
        FROM
            Projects
        ) AS Table1
    ) AS Table2
GROUP BY
    cal2
ORDER BY
    DATEDIFF(day,MIN(Start_Date),MAX(End_Date))
    , MIN(Start_Date)
