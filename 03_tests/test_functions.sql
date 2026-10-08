SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual salary (1): ' || fn_annual_salary(1));
    DBMS_OUTPUT.PUT_LINE('Years of service (3): ' || fn_years_of_service(3));
    DBMS_OUTPUT.PUT_LINE('Tax 50000: ' || fn_calculate_tax(50000));
    DBMS_OUTPUT.PUT_LINE('Tax 80000: ' || fn_calculate_tax(80000));
    DBMS_OUTPUT.PUT_LINE('Tax 500000: ' || fn_calculate_tax(500000));
    DBMS_OUTPUT.PUT_LINE('Dept 1: ' || fn_dept_name(1));
    DBMS_OUTPUT.PUT_LINE('Dept 99: ' || fn_dept_name(99));
END;
/
