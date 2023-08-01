/*
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.
Grades contains the following data: Grade, Min_Mark, Max_Mark
Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.
*/
-- Solution
SELECT
    CASE
        WHEN G.Grade >=8 THEN S.Name
        ELSE NULL
    END AS Name2,
    G.Grade,
    S.Marks
FROM
    Students S,
    Grades G
WHERE
    S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY
    G.Grade DESC,
    Name2 ASC,
    S.Marks ASC
