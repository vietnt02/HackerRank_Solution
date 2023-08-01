/*
https://www.hackerrank.com/challenges/interviews/problem
*/
-- Solution
WITH Contest_details AS
(
    SELECT
        Ct.contest_id
        , Ct.hacker_id
        , Ct.name
        , Ch.challenge_id
    FROM
        Contests Ct
        INNER JOIN Colleges Cl ON Ct.contest_id = Cl.contest_id
        RIGHT JOIN Challenges Ch ON Cl.college_id = Ch.college_id
)
, View_details AS
(
    SELECT
        challenge_id
        , SUM(total_views) AS sum_total_views
        , SUM(total_unique_views) AS sum_total_unique_view
    FROM
        View_Stats
    GROUP BY
        challenge_id
)
, Submission_details AS
(
    SELECT
        challenge_id
        , SUM(total_submissions) AS sum_total_submissions
        , SUM(total_accepted_submissions) AS sum_total_accepted_submission
    FROM
        Submission_Stats
    GROUP BY
        challenge_id
)
SELECT
    C.contest_id
    , C.hacker_id
    , C.name
    , SUM(ISNULL(S.sum_total_submissions,0))
    , SUM(ISNULL(S.sum_total_accepted_submission,0))
    , SUM(ISNULL(V.sum_total_views,0))
    , SUM(ISNULL(V.sum_total_unique_view,0))
FROM
    Contest_details C
    LEFT JOIN View_details V ON C.challenge_id = V.challenge_id
    LEFT JOIN Submission_details S ON C.challenge_id = S.challenge_id
GROUP BY
    C.contest_id
    , C.hacker_id
    , C.name
HAVING
    SUM(ISNULL(S.sum_total_submissions,0))
    + SUM(ISNULL(S.sum_total_accepted_submission,0))
    + SUM(ISNULL(V.sum_total_views,0))
    + SUM(ISNULL(V.sum_total_unique_view,0)) > 0
ORDER BY
    C.contest_id
