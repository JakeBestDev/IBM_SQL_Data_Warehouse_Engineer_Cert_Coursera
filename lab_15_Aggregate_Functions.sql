-- AGGREGATE FUNCTIONS --

-- 1) Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
;
SELECT SUM(COST) 
FROM PETRESCUE;
;

-- 2) Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
;
SELECT SUM(COST) AS SUM_OF_COST 
FROM PETRESCUE;
;

-- 3) Enter a function that displays the maximum quantity of animals rescued.
;
SELECT MAX(QUANTITY) 
FROM PETRESCUE;
;

-- 4) Enter a function that displays the average cost of animals rescued.
;
SELECT AVG(COST)
FROM PETRESCUE;
;

-- 5) Enter a function that displays the average cost of rescuing a dog.
;
SELECT AVG(COST/QUANTITY) 
FROM PETRESCUE
WHERE ANIMAL = 'Dog';
;