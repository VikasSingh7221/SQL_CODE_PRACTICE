WITH distinct_resources AS (
    SELECT
        DISTINCT name,
        resources
    FROM
        entries
),
agg_resources AS (
    SELECT
        name,
        GROUP_CONCAT(resources, ',') AS used_resources
    FROM
        distinct_resources
    GROUP BY
        name
),
total_visits AS (
    SELECT
        name,
        COUNT(*) AS total_visits
    FROM
        entries
    GROUP BY
        name
),
floor_visit AS (
    SELECT
        name,
        floor,
        COUNT(*) AS no_of_floor_visit,
        RANK() OVER (
            PARTITION BY name
            ORDER BY
                COUNT(*) DESC
        ) AS rn
    FROM
        entries
    GROUP BY
        name,
        floor
)
SELECT
    fv.name,
    fv.floor AS most_visited_floor,
    tv.total_visits,
    ar.used_resources
FROM
    floor_visit fv
    JOIN total_visits tv ON fv.name = tv.name
    JOIN agg_resources ar ON fv.name = ar.name
WHERE
    fv.rn = 1;