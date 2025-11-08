-- program to print employees who earn more than their manager.
SELECT
    e1.emp_id,
    e1.emp_name,
    e2.emp_name AS manager_name,
    e1.salary,
    e2.salary AS manager_salary
FROM
    emp e1
    JOIN emp e2 ON e1.manager_id = e2.emp_id
WHERE
    e1.salary > e2.salary
ORDER BY
    e1.emp_id;