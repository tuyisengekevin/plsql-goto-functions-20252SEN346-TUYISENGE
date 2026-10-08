# Reflection: GOTO Statements and Functions

**Course:** Database Development with PL/SQL (INSY 8311)
**Student:** Kevin Tuyisenge | **ID:** 20252SEN346

## What GOTO is
`GOTO` is an unconditional jump statement. It sends execution straight to a
label written as `<<label_name>>`, skipping everything in between. A label must
be followed by an executable statement. In Part A, I used GOTO to see how
program flow can be redirected manually.

## Why GOTO is discouraged
- It makes the flow hard to follow, because you have to search for the label to
  know where the program goes next.
- It can lead to "spaghetti code", which is harder to debug and maintain.
- Structured tools such as `IF/ELSIF`, `CASE`, and loops with `EXIT` express the
  same logic more clearly.
- It has strict scope rules that are easy to break. PL/SQL cannot jump into an
  `IF` block, a loop, or a nested block.

## The illegal GOTO and the fix (A3)
In A3, my first block used `GOTO inside_if` to jump to a label placed inside an
`IF` statement. Oracle rejected it with PLS-00375 (illegal GOTO statement)
because PL/SQL does not allow branching into an IF block. I fixed it by moving
the label `<<valid_label>>` out of the IF, to the same block level as the GOTO,
followed by an executable statement. After that, the program ran and printed
"GOTO successfully reached the label".

## Rewriting without GOTO (A4)
When I rewrote the salary review without GOTO, I used `IF / ELSIF / ELSE`
(below 500,000: increase recommended; up to 800,000: satisfactory; above:
high salary). The logic reads top to bottom with no jumps, so it is easier to
follow and debug. For employee 4 (David, salary 350,000), the output is
"Increase Recommended", the same result as the GOTO version.

## What I learned about functions
- A function must `RETURN` a value, unlike a procedure, which does not have to.
- Functions can be called inside SQL statements, as in B5, so logic like tax,
  annual salary, or years of service is written once and reused in many queries.
- Exception handling matters. For example, `fn_dept_name` returns `'Unknown'`
  on `NO_DATA_FOUND` instead of crashing the whole query.
- Using `%TYPE` ties variables to the column data types, so the code stays
  correct if the table definition changes.
- In C1, I combined several checks (salary, hire date, department) into one
  validation function that returns a clear message for each failure.

## Challenges
The main challenge was understanding why GOTO cannot jump into an IF block.
At first I thought a label anywhere in the program would work, but the compiler
only allows jumps within the same block or to an enclosing one. Seeing the
PLS-00375 error myself made the scope rule clear.

## What I would do differently
In a real project I would avoid GOTO completely and use structured control flow,
because it is clearer and easier for other developers to maintain. I would also
add more test cases for edge conditions, such as NULL salaries and employees
that do not exist.

## AI usage
I used an AI assistant (Claude) to help review my repository, draft some of the
function and test files, and structure this reflection. I ran and tested the
code myself, and I can explain every part of it.
