-- Write SQL to get 3rd Sunday.


WITH vars AS (
    SELECT 
        DATE('2026-01-01') AS today_date,
        3 AS n
)
SELECT 
    today_date,
    strftime('%w', today_date) as Day_of_weeek,
    n,
    DATE(today_date, '+' || (7-strftime('%w', today_date)+7*n) || ' day') AS result_date
FROM vars;