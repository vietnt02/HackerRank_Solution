/*
https://www.hackerrank.com/challenges/symmetric-pairs/problem
*/
-- Solution
SELECT
    X, Y
FROM
    (
    SELECT
        F.X, F.Y,
        CASE 
            WHEN F.X >= F.Y THEN COUNT(*)
            WHEN F.X < F.Y THEN 2
        END AS XXX
    FROM
        Functions F
        INNER JOIN Functions FF ON F.X = FF.Y AND F.Y = FF.X
    GROUP BY
        F.X, F.Y
    ) AS XXY
WHERE
    XXX > 1
ORDER BY
    X

