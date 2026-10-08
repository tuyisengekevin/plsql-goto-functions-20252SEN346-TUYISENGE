SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = 4;

    IF v_salary < 500000 THEN
        GOTO increase;
    ELSIF v_salary <= 800000 THEN
        GOTO satisfactory;
    ELSE
        GOTO high_salary;
    END IF;

    <<increase>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Increase Recommended');
    GOTO finish;

    <<satisfactory>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Satisfactory');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: High Salary');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);
END;
/
