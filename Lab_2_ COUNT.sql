-- Using COUNT --

-- 1 - Get COUNT of employees with department ID = 5--
;
SELECT COUNT(*)
FROM EMPLOYEES
WHERE DEP_ID = 5
;

-- 2 - COUNT number of DEPARTMENTS (Non-Distnct), notice its same number of records (10), Check DISTINCT for this improved solution. --
;
SELECT COUNT(DEP_ID)
FROM EMPLOYEES
;


-- 3 - Get COUNT of employees with that were born in the 70's and name it 'COUNTER'--
;
SELECT COUNT(EMP_ID) as Counter
FROM EMPLOYEES
WHERE B_DATE LIKE '197%'
;

