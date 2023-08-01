/*
https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem
*/
-- Solution
WITH Table1 AS
(
    SELECT
        H.hacker_id
        , H.name
        , S.submission_date
        , RANK() OVER(PARTITION BY H.hacker_id ORDER BY S.submission_date) AS num_date
        , ROW_NUMBER() OVER(PARTITION BY S.submission_date ORDER BY COUNT(*) DESC,H.hacker_id) AS rank_sub
    FROM
        Hackers H
        INNER JOIN Submissions S ON H.hacker_id = S.hacker_id
    GROUP BY
        H.hacker_id
        , H.name
        , S.submission_date
)
, Table2 AS
(
    SELECT
        submission_date
        , RANK() OVER(ORDER BY submission_date) AS num_date
    FROM
        Submissions
    GROUP BY
        submission_date
),
Table3 AS
(
    SELECT
        T1.submission_date
        , COUNT(*) OVER(PARTITION BY T1.Submission_date) AS count_sub
    FROM
        Table1 T1
        LEFT JOIN Table2 T2 ON T1.submission_date = T2.submission_date AND T1.num_date = T2.num_date
    WHERE
        T2.num_date IS NOT NULL
)
SELECT DISTINCT
    T1.submission_date
    , T3.count_sub
    , T1.hacker_id
    , T1.name
FROM
    Table1 T1
    LEFT JOIN Table3 T3 ON T1.submission_date = T3.submission_date
WHERE
    T1.rank_sub = 1
ORDER BY
    T1.submission_date
    , T1.hacker_id
