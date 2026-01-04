SELECT
    emp_id,
    SUM(CASE WHEN salary_component_type = 'salary' THEN val ELSE 0 END) as salary,
    SUM(CASE WHEN salary_component_type = 'bonus' THEN val ELSE 0  END) as bonus,
    SUM(CASE WHEN salary_component_type = 'hike_percent' THEN val ELSE 0  END) as hike_percent
FROM 
    emp_compensation
group BY emp_id;
