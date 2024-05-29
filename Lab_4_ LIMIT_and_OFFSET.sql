-- Using LIMIT and OFFSET --

-- 1 - Get First 5 records --
;
SELECT *
FROM EMPLOYEES
LIMIT 5
;

-- 2 - Get First 3 records after the first 5. So 6-9 --
;
SELECT *
FROM EMPLOYEES
LIMIT 3 OFFSET 5
;


-- 3 - Get the 2nd and 3rd records for employees in department 2--
;
SELECT *
FROM EMPLOYEES
WHERE DEP_ID = 2
LIMIT 2 OFFSET 1
;

