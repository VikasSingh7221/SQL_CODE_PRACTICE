DROP TABLE IF EXISTS entries;
CREATE TABLE entries (
    name varchar(20),
    address varchar(20),
    email varchar(20),
    floor int,
    resources varchar(10)
);

INSERT INTO
    entries
VALUES
    ('A', 'Bangalore', 'A@gmail.com', 1, 'CPU'),
('A', 'Bangalore', 'A1@gmail.com', 1, 'CPU'),
('A', 'Bangalore', 'A2@gmail.com', 2, 'DESKTOP'),
('B', 'Bangalore', 'B@gmail.com', 2, 'DESKTOP'),
('B', 'Bangalore', 'B1@gmail.com', 2, 'DESKTOP'),
('B', 'Bangalore', 'B2@gmail.com', 1, 'MONITOR');

SELECT
    *
FROM
    entries;