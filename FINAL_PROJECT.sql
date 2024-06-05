-- FINAL EXAM --
-- USES CENSUS_DATA, CHICAGO_CRIME_DATA, CHICAGO_PUBLIC_SCHOOLS Data sets -- 

-- Problem 1) Find the total number of crimes recorded in the CRIME table.
;
SELECT COUNT(*)
FROM CHICAGO_CRIME_DATA
;


-- Problem 2) Retrieve first 10 rows from the CRIME table.
;
SELECT *
FROM CHICAGO_CRIME_DATA
LIMIT 10
;

-- Problem 3) How many crimes involve an arrest?
;
SELECT COUNT(*)
FROM CHICAGO_CRIME_DATA
WHERE ARREST =  TRUE
;

-- Problem 4) Which unique types of crimes have been recorded at GAS STATION locations?
;
SELECT DISTINCT(PRIMARY_TYPE)
FROM CHICAGO_CRIME_DATA
WHERE LOCATION_DESCRIPTION = 'GAS STATION'
;

-- Problem 5) In the CENUS_DATA table list all Community Areas whose names start with the letter ‘B’.
;
SELECT COMMUNITY_AREA_NAME
FROM CENSUS_DATA
WHERE COMMUNITY_AREA_NAME LIKE 'B%'
;


-- Problem 6) Which schools in Community Areas 10 to 15 are healthy school certified?
;
SELECT NAME_OF_SCHOOL, HEALTHY_SCHOOL_CERTIFIED, COMMUNITY_AREA_NUMBER
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE (COMMUNITY_AREA_NUMBER IN (10, 11, 12, 13, 14, 15)) AND (HEALTHY_SCHOOL_CERTIFIED = 'Yes')
;


-- Problem 7) What is the average school Safety Score?
;
SELECT AVG(SAFETY_SCORE)
FROM CHICAGO_PUBLIC_SCHOOLS
;


-- Problem 8) List the top 5 Community Areas by average College Enrollment [number of students]
;
SELECT COMMUNITY_AREA_NAME, AVG(COLLEGE_ENROLLMENT) AS AVERAGE_ENROLLMENT
FROM CHICAGO_PUBLIC_SCHOOLS
GROUP BY COMMUNITY_AREA_NAME
ORDER BY AVERAGE_ENROLLMENT DESC
LIMIT 5
;

-- Problem 9) Use a sub-query to determine which Community Area has the least value for school Safety Score?
;
SELECT DISTINCT(PRIMARY_TYPE)
FROM CHICAGO_CRIME_DATA
WHERE LOCATION_DESCRIPTION = 'GAS STATION'
;

-- Problem 10) [Without using an explicit JOIN operator] Find the Per Capita Income of the Community Area which has a school Safety Score of 1.
;
SELECT DISTINCT(PRIMARY_TYPE)
FROM CHICAGO_CRIME_DATA
WHERE LOCATION_DESCRIPTION = 'GAS STATION'
;

-- NO JOIN --
SELECT PER_CAPITA_INCOME, COMMUNITY_AREA_NAME, COMMUNITY_AREA_NUMBER
FROM CENSUS_DATA
WHERE COMMUNITY_AREA_NUMBER IN (SELECT COMMUNITY_AREA_NUMBER FROM CHICAGO_PUBLIC_SCHOOLS WHERE SAFETY_SCORE = 1);

