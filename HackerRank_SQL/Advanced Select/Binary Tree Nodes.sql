/*
https://www.hackerrank.com/challenges/binary-search-tree-1/problem
*/
-- Solution
SELECT
    CASE
        WHEN P IS NULL THEN CONCAT(N,' Root')
        WHEN N IN (SELECT P FROM BST) THEN CONCAT(N,' Inner')
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN CONCAT(N,' Leaf')
    END AS Tree
FROM
    BST
ORDER BY
    N
