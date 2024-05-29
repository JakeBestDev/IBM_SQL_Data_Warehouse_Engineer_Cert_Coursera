-- Using DISTINCT --

-- 1 - Get ID's of all Departments --
;
SELECT DISTINCT DEP_ID
FROM EMPLOYEES
;

-- 2 - COUNT number of DEPARTMENTS (Distnct), was 10 in if DISTINCT not used --
;
SELECT COUNT(DISTINCT DEP_ID)
FROM EMPLOYEES
;


-- 3 - Get the first names and departments of all employees who work under manager 30001--
;
SELECT DISTINCT(F_NAME), DEP_ID
FROM EMPLOYEES
WHERE MANAGER_ID = 30001
;

