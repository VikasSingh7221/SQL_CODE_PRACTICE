-- Day : 3 Write SQL to find new and repeat customers.
WITH first_visit_table AS (
    SELECT
        customer_id,
        MIN(order_date) AS first_visit_date
    FROM
        customer_orders
    GROUP BY
        customer_id
),
final_table AS (
    SELECT
        co.order_date AS order_date,
        CASE
            WHEN co.order_date = ft.first_visit_date THEN 1
            ELSE 0
        END AS new_customer_flag,
        CASE
            WHEN co.order_date != ft.first_visit_date THEN 1
            ELSE 0
        END AS repeat_customer_flag
    FROM
        customer_orders co
        JOIN first_visit_table ft ON co.customer_id = ft.customer_id
)
SELECT
    order_date,
    SUM(new_customer_flag) AS new_customer,
    SUM(repeat_customer_flag) AS repeat_customers
FROM
    final_table
GROUP BY
    order_date
ORDER BY
    order_date;