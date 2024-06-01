-- Date and Time Functions --

-- 1) Enter a function that displays the day of the month when cats have been rescued.
;
SELECT DAY(RESCUEDATE)
FROM PETRESCUE
WHERE ANIMAL = 'cat';
;

-- 2) Enter a function that displays the number of rescues on the 5th month.
;
SELECT SUM(QUANTITY)
FROM PETRESCUE
WHERE MONTH(RESCUEDATE)= 05;
;

-- 3) Enter a function that displays the number of rescues on the 14th day of the month.
;
SELECT SUM(QUANTITY) 
FROM PETRESCUE
WHERE DAY(RESCUEDATE)= 14 ;
;

-- 4) Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
;
SELECT (RESCUEDATE + 3 DAYS)
FROM PETRESCUE;
;

-- 5) Enter a function that displays the length of time the animals have been rescued; the difference between todays date and the rescue date.
;
SELECT (CURRENT DATE - RESCUEDATE)
FROM PETRESCUE
;