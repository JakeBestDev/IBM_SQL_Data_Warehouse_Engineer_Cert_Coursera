-- Scalar and String Functions --

-- 1) Enter a function that displays the rounded cost of each rescue.
;
SELECT ROUND(COST)
FROM PETRESCUE;
;

-- 2) Enter a function that displays the length of each animal name.
;
SELECT LENGTH(ANIMAL)
FROM PETRESCUE;
;

-- 3) Enter a function that displays the animal name in each rescue in uppercase.
;
SELECT UCASE(ANIMAL) 
FROM PETRESCUE;
;

-- 4) Enter a function that displays the animal name in each rescue in uppercase without duplications.
;
SELECT DISTINCT(UCASE(ANIMAL))
FROM PETRESCUE;
;

-- 5) Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
;
SELECT *
FROM PETRESCUE
WHERE LCASE(ANIMAL) = 'cat'
;