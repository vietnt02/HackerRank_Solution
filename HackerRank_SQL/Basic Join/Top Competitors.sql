/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level
Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge.
Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission.
*/
-- Solution
SELECT
    H.hacker_id,
    H.name
FROM
    Hackers H INNER JOIN Submissions S
ON  H.hacker_id = S.hacker_id INNER JOIN Challenges C
ON  S.challenge_id = C.challenge_id INNER JOIN Difficulty D
ON  C.Difficulty_level = D.difficulty_level
WHERE
    S.score = D.score
GROUP BY
    H.hacker_id,
    H.name
HAVING
    COUNT(H.Hacker_id) > 1
ORDER BY
    COUNT(H.Hacker_id) DESC,
    H.hacker_id ASC
