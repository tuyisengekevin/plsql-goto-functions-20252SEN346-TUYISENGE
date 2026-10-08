CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id NUMBER
)
RETURN NUMBER
IS
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_salary * 12;
END;
/
--TO TEST IT
SELECT fn_annual_salary(1) AS annual_salary
FROM dual;
