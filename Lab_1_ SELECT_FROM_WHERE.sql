-- Using SELECT FROM and WHERE Basic Statements --

-- 1 - Retrieve all records with all columns from the EMPLOYEES table.--
;
SELECT *
FROM EMPLOYEES
;

-- 2 - Retrieve the names of all employees with department ID --
;
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
;


-- 3 - Retrieve the names of all employees with department ID = 5--
;
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
WHERE DEP_ID = 5
;