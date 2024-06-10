-- JOIN LAB 1 --
-- USES THE EMPLOYEES, JOB_HISTORY, JOBS, DEPARTMENTS and LOCATIONS DATASETS --


-- 1) (SELF JOIN) Select the names and job start dates of all employees who work for the department number 5.
;
SELECT E.F_NAME, E.L_NAME, E.DEP_ID, J.START_DATE
FROM EMPLOYEES E, JOB_HISTORY J
WHERE (E.EMP_ID = J.EMPL_ID) AND (E.DEP_ID = 5)
;

-- 2) (INNER JOIN) Select the names and job start dates of all employees who work for the department number 5.
;
SELECT E.F_NAME, E.L_NAME, E.DEP_ID, J.START_DATE
FROM EMPLOYEES E INNER JOIN JOB_HISTORY J ON E.EMP_ID = J.EMPL_ID
WHERE E.DEP_ID = 5
;

-- 3) (INNER JOIN) Select the names, job start dates, and job titles of all employees who work for the department number 5.
;
SELECT E.F_NAME, E.L_NAME, E.DEP_ID, JH.START_DATE, J.JOB_TITLE
FROM EMPLOYEES E 
INNER JOIN JOB_HISTORY JH ON E.JOB_ID = JH.JOBS_ID
INNER JOIN JOBS J ON E.JOB_ID = J.JOB_IDENT 
WHERE E.DEP_ID = 5
;

-- 4 (LEFT OUTER JOIN) Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees.
;
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES E 
LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID = DEPT_ID_DEP
;

-- 5 (LEFT OUTER JOIN) Re-write the previous query but limit the result set to include only the rows for employees born before 1980.
;
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME, E.B_DATE
FROM EMPLOYEES E 
LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID = DEPT_ID_DEP
WHERE YEAR(E.B_DATE) < 1980
;

-- 6 (LEFT OUTER JOIN) Re-write the previous query but have the result set include all the employees but department names for only the employees who were born before 1980.
;
SELECT E.EMP_ID,E.L_NAME,E.DEP_ID,D.DEP_NAME
FROM EMPLOYEES E 
LEFT OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP 
AND YEAR(E.B_DATE) < 1980;
;

-- 7 (FULL OUTER JOIN) Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.
;
SELECT E.F_NAME,E.L_NAME,D.DEP_NAME
FROM EMPLOYEES E 
FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP 
;

-- 8 (FULL OUTER JOIN) Re-write the previous query but have the result set include all employee names but department id and department names only for male employees.
;
SELECT E.F_NAME,E.L_NAME,E.SEX, D.DEP_NAME, D.DEPT_ID_DEP
FROM EMPLOYEES E 
FULL OUTER JOIN DEPARTMENTS D ON E.DEP_ID=D.DEPT_ID_DEP AND E.SEX = 'M'
ORDER BY SEX DESC
;

















