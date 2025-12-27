DROP TABLE IF EXISTS customer_orders;

CREATE TABLE customer_orders (
    order_id integer,
    customer_id integer,
    order_date date,
    order_amount integer
);

INSERT INTO
    customer_orders
VALUES
(1, 100, '2022-01-01' , 2000),
(2, 200, '2022-01-01' , 2500),
(3, 300, '2022-01-01' , 2100),
(4, 100, '2022-01-02' , 2000),
(5, 400, '2022-01-02' , 2200),
(6, 500, '2022-01-02' , 2700),
(7, 100, '2022-01-03' , 3000),
(8, 400, '2022-01-03' , 1000),
(9, 600, '2022-01-03' , 3000);

SELECT
    *
FROM
    customer_orders;