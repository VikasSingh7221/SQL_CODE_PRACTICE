DROP TABLE IF EXISTS emp;

CREATE TABLE
    emp (
        emp_id INT,
        emp_name VARCHAR(10),
        salary INT,
        manager_id INT
    );

INSERT INTO
    emp
VALUES
    (1, 'Ankit', 10000, 4);

INSERT INTO
    emp
VALUES
    (2, 'Mohit', 15000, 5);

INSERT INTO
    emp
VALUES
    (3, 'Vikas', 10000, 4);

INSERT INTO
    emp
VALUES
    (4, 'Rohit', 5000, 2);

INSERT INTO
    emp
VALUES
    (5, 'Mudit', 12000, 6);

INSERT INTO
    emp
VALUES
    (6, 'Agam', 12000, 2);

INSERT INTO
    emp
VALUES
    (7, 'Sanjay', 9000, 2);

INSERT INTO
    emp
VALUES
    (8, 'Ashish', 5000, 2);

SELECT
    *
FROM
    emp;