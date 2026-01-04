-- Write a query to find PersonID, Name, number of Friends,sum of marks of 
-- person who have friends with total score greater than 100.
WITH cte1 AS (
    SELECT
        p.personid,
        p.name,
        f.fid
    FROM
        person p
        LEFT JOIN friend f ON p.personid = f.pid
),
cte2 AS (
    SELECT
        c1.personid AS pid,
        COUNT(c1.fid) AS no_of_friends,
        SUM(p.score) AS total_friend_score
    FROM
        cte1 c1
        JOIN person p ON c1.fid = p.personid
    GROUP BY
        c1.personid
)
SELECT
    distinct c2.pid,
    c2.total_friend_score,
    c2.no_of_friends,
    c1.name as person_name
FROM
    cte1 c1
    JOIN cte2 c2 ON c1.personid = c2.pid
    and c2.total_friend_score > 100;