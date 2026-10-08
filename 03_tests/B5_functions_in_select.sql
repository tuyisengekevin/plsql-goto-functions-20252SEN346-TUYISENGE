SELECT employee_id,
       employee_name,
       fn_dept_name(department_id)   AS department,
       salary,
       fn_annual_salary(employee_id) AS annual_salary,
       fn_years_of_service(employee_id) AS years_service,
       fn_calculate_tax(salary)      AS tax
FROM employees
ORDER BY employee_id;
