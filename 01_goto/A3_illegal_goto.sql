SET SERVEROUTPUT ON;

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('This is inside the IF statement');
    END IF;
END;
/

--FIXING IT
SET SERVEROUTPUT ON;

BEGIN
    GOTO valid_label;

    <<valid_label>>
    DBMS_OUTPUT.PUT_LINE('GOTO successfully reached the label');
END;
/
