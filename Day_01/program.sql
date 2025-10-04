-- program to print worldcup points table.
WITH CTE AS
(SELECT 
	team_1,
	CASE WHEN team_1 = winner THEN 1 ELSE 0 END AS point
FROM
	icc_world_cup
UNION ALL
SELECT 
	team_2,
	CASE WHEN team_2 = winner THEN 1 ELSE 0 END AS point
FROM
	icc_world_cup)

SELECT 
	team_1 team_name,
	COUNT(1) AS no_of_matches_played,
	SUM(point) AS no_of_matches_won,
	COUNT(1) - SUM(point) AS no_of_losses,
    SUM(point) * 2 AS Total_points
FROM 
	CTE
GROUP BY team_1
ORDER BY no_of_matches_won DESC;