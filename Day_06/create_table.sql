WITH vars AS (
    SELECT 
        DATE('2022-01-01') AS today_date,
        3 AS n
)
SELECT 
    today_date,
    n,
    DATE(today_date, '+' || n || ' day') AS result_date
FROM vars;