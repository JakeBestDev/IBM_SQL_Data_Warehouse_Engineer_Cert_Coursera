-- Accessing Multiple Tables with Implicit Joins --

-- 1) Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
;
SELECT *
FROM JOBS, EMPLOYEES;
;

-- 2) Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
;
SELECT *
FROM JOBS, EMPLOYEES
WHERE JOBS.JOB_IDENT = EMPLOYEES.JOB_ID;
;

-- 3) Redo the previous query, using shorter aliases for table names.
;
SELECT *
FROM JOBS J, EMPLOYEES E
WHERE J.JOB_IDENT = E.JOB_ID;
;

-- 4) Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
;
SELECT EMP_ID, F_NAME, L_NAME,JOB_TITLE
FROM JOBS J, EMPLOYEES E
WHERE J.JOB_IDENT = E.JOB_ID;
;

-- 5) Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
;
SELECT E.EMP_ID, E.F_NAME, E.L_NAME,J.JOB_TITLE
FROM JOBS J, EMPLOYEES E
WHERE J.JOB_IDENT = E.JOB_ID;
;