-- Drop table if it already exists
DROP TABLE IF EXISTS employee_salary;

-- Create table
CREATE TABLE employee_salary (
    emp_id        INT,
    salary        INT,
    bonus         INT,
    hike_percent  INT
);

-- Insert data
INSERT INTO employee_salary (emp_id, salary, bonus, hike_percent) VALUES
(1, 10000, 5000, 10),
(2, 15000, 7000, 8),
(3, 12000, 6000, 7);

-- Verify data
SELECT * FROM employee_salary;
