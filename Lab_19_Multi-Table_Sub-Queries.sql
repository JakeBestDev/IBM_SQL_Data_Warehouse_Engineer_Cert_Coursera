-- Accessing Multiple Tables with Sub-Queries --

-- 1) Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
;
SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);
;

-- 2) Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
;
SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');
;

-- 3) Retrieve JOB information and who earn more than $70,000.
;
SELECT JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (select JOB_ID from employees where SALARY > 70000 );
;

-- 4) Retrieve JOB information and whose birth year is after 1976.
;
SELECT JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE) > 1976 );
;

-- 5) Retrieve JOB information for female employees whose birth year is after 1976.
;
SELECT JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (select JOB_ID from employees where SEX = 'F' AND YEAR(B_DATE) > 1976 );
;