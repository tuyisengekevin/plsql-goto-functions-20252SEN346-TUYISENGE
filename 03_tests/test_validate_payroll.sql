SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Emp 1:  ' || fn_validate_payroll(1));
    DBMS_OUTPUT.PUT_LINE('Emp 99: ' || fn_validate_payroll(99));
END;
/
