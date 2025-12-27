-- program to print employees who earn more than their manager.
SELECT 
	e1.emp_id AS EmpId,
	e1.emp_name AS EmployeeName,
	e1.salary AS Salary,
	e1.manager_id AS ManagerId,
	e2.emp_name AS ManagerName,
	e2.salary AS ManagerSalary
FROM 
	emp e1
JOIN
	emp e2
ON e1.manager_id = e2.emp_id 
WHERE e1.salary > e2.salary
ORDER BY e1.emp_id;