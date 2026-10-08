# plsql-goto-functions-20252SEN346-TUYISENGE
# PL/SQL GOTO Statements and Functions

**Course:** Database Development with PL/SQL (INSY 8311)
**Instructor:** Eric Maniraguha
**Student:** Kevin Tuyisenge | **ID:** 20252SEN346

## Description
This individual assignment covers PL/SQL `GOTO` statements, stored functions,
exception handling, and using functions inside SQL queries. It uses a small
payroll database with `departments` and `employees` tables.

## Contents
| Part | Files | What it does |
|---|---|---|
| Setup | `00_setup/create_tables.sql` | Creates and populates the tables |
| A (GOTO) | `01_goto/A1` to `A4` | Number classifier, salary review, illegal GOTO and its fix, rewrite without GOTO |
| B (Functions) | `02_functions/B1` to `B4` | `fn_annual_salary`, `fn_years_of_service`, `fn_calculate_tax`, `fn_dept_name` |
| B5 | `03_tests/B5_functions_in_select.sql` | Calls the functions inside a SELECT |
| C1 | `02_functions/C1_fn_validate_payroll.sql` | Payroll validation function |
| C2 | `docs/REFLECTION.md` | Written reflection |

## How to Run
1. Run `00_setup/create_tables.sql`.
2. Run the functions in `02_functions/`.
3. Run the programs in `01_goto/`.
4. Run the test files in `03_tests/`.
5. Verify the results against the screenshots in `screenshots/`.

## Screenshots
Outputs for A1, A2, A3 (error and fix), A4, B5 and C1 are in `screenshots/`.

## Notes
- Tested in Oracle: <write your tool here, e.g. SQL Developer / Oracle XE / Live SQL>.
- Tax brackets in `fn_calculate_tax` are: 0% up to 60,000; 20% from 60,001 to 100,000; 30% above 100,000.
- **AI usage:** I used an AI assistant (Claude) to help review my repository, draft
  the B2 to C1 functions and test files, and outline this README. I ran and tested
  the code myself and I can explain it.
