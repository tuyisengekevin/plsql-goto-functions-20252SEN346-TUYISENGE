SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = 1;

    IF v_salary < 500000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 800000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Category: Low Salary');
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Category: Medium Salary');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Category: High Salary');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
