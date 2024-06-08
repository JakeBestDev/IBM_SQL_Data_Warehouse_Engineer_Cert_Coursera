-- Views --
-- Uses the EMPLOYEES, JOB_HISTORY, JOBS, DEPARTMENTS and LOCATIONS Data --


-- 1) Create a View - Let’s create a view called EMPSALARY to display salary along with some basic sensitive data of employees from the HR database.
;
CREATE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;
;

-- Using SELECT, query the EMPSALARY view to retrieve all the records.
;
SELECT * FROM EMPSALARY;
;

-- 2) Update a View - It now seems that the EMPSALARY view we created in exercise 1 doesn’t contain enough salary information, 
-- such as max/min salary and the job title of the employees. Let’s update the EMPSALARY view:

-- A) combining two tables EMPLOYEES and JOBS so that we can display our desired information from the HR database.
-- B) including the columns JOB_TITLE, MIN_SALARY, MAX_SALARY of the JOBS table as well as excluding the SALARY column of the EMPLOYEES table.
;
CREATE OR REPLACE VIEW EMPSALARY  AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE, MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
;


-- Using SELECT, query the EMPSALARY view to retrieve all the records.
;
SELECT * FROM EMPSALARY;
;


-- 3) Drop a View - Let’s delete the created EMPSALARY view. 
;
DROP VIEW EMPSALARY;
;

-- Using SELECT, query the EMPSALARY view to retrieve all the records. (Should get an Error)
;
SELECT * FROM EMPSALARY;
;

