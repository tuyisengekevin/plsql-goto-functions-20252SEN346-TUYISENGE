CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
    v_hire   employees.hire_date%TYPE;
    v_dept   employees.department_id%TYPE;
BEGIN
    SELECT salary, hire_date, department_id
    INTO v_salary, v_hire, v_dept
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'INVALID: salary must be positive';
    ELSIF v_hire IS NULL OR v_hire > SYSDATE THEN
        RETURN 'INVALID: bad hire date';
    ELSIF v_dept IS NULL OR fn_dept_name(v_dept) = 'Unknown' THEN
        RETURN 'INVALID: department not found';
    END IF;

    RETURN 'VALID';
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: employee not found';
    WHEN OTHERS THEN
        RETURN 'ERROR: ' || SQLERRM;
END;
/
