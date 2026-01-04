SELECT 
    * 
FROM
    (SELECT 
        emp_id,
        'salary' as salary_component_type,
        salary as val
    FROM 
        employee_salary
    UNION
    SELECT 
        emp_id,
        'bonus' as salary_component_type,
        bonus as val
    FROM 
        employee_salary
    UNION
    SELECT 
        emp_id,
        'hike_percent' as salary_component_type,
        hike_percent as val
    FROM 
        employee_salary) c
ORDER BY c.emp_id
