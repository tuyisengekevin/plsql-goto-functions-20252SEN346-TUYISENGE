-- =========================================
-- EMPLOYEE PAYROLL SYSTEM
-- =====================================
-- DEPARTMENTS TABLE
-- =========================================

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);


-- =========================================
-- EMPLOYEES TABLE
-- =========================================

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    salary NUMBER(10,2),
    hire_date DATE,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

--INSERTING DEPARTMENTS
INSERT INTO departments VALUES (1, 'IT');
INSERT INTO departments VALUES (2, 'HR');
INSERT INTO departments VALUES (3, 'Finance');
--INSERTING EMPLOYEES
INSERT INTO employees
VALUES (1, 'Kevin', 1, 500000, DATE '2023-01-10');

INSERT INTO employees
VALUES (2, 'Eric', 2, 700000, DATE '2021-05-15');

INSERT INTO employees
VALUES (3, 'Alice', 3, 900000, DATE '2019-08-20');

INSERT INTO employees
VALUES (4, 'David', 1, 350000, DATE '2024-03-12');

INSERT INTO employees
VALUES (5, 'Sarah', 3, 1200000, DATE '2018-06-05');

COMMIT;
