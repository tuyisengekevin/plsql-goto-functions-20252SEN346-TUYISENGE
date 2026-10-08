SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = 4;

    IF v_salary < 500000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Increase Recommended');

    ELSIF v_salary <= 800000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Satisfactory');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Review: High Salary');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);
END;
/
