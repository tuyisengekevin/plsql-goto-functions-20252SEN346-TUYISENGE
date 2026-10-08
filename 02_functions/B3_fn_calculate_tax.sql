CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RETURN NULL;
    ELSIF p_salary <= 60000 THEN
        v_tax := 0;
    ELSIF p_salary <= 100000 THEN
        v_tax := (p_salary - 60000) * 0.20;
    ELSE
        v_tax := (40000 * 0.20) + (p_salary - 100000) * 0.30;
    END IF;
    RETURN v_tax;
END;
/
