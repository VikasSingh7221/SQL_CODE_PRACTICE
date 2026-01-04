with product_sales AS (
    select
        product_id,
        SUM(sales) as product_sales
    FROM
        orders
    group by
        product_id
),
cte2 as (
    select
        product_id,
        product_sales,
        SUM(product_sales) OVER(
            ORDER BY
                product_sales DESC ROWS BETWEEN UNBOUNDED PRECEDING
                AND CURRENT ROW
        ) AS running_sales,
        0.8 * SUM(product_sales) OVER() as total_sales
    FROM
        product_sales
)
select
    *
from
    cte2
where
    running_sales <= total_sales;