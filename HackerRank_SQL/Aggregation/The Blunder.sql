-- Solution
SELECT
    CEILING(
        AVG(CAST(Salary AS NUMERIC(12,2)))
        -
        AVG(CAST(REPLACE(Salary,'0','') AS NUMERIC(12,2)))
    )
FROM
    EMPLOYEES
