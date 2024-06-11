-- HONORS FINAL PROJECT - PART 4C -- Creating a Stored Procedure  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 1) Write and run another query to check that the updated stored procedure works as expected when you use an invalid score of 101. (Leaders_Icon Should Stay As 'Weak' Due To Else Rollback And 'WEAK' being orginally in that field)

;
CALL UPDATE_LEADERS_SCORE(610298,101)
;

;
SELECT LEADERS_SCORE, SCHOOL_ID, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE SCHOOL_ID = '610298'
;

-- 2) Write and run one query to check that the updated stored procedure works as expected when you use a valid score of 50. (Leaders_Icon Should be updated to 'Average')
;
CALL UPDATE_LEADERS_SCORE(610298,50)
;

;
SELECT LEADERS_SCORE, SCHOOL_ID, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE SCHOOL_ID = '610298'
;

-- 3) Test with additional calls by going to 50 or whatever leader number and grabbing the corresponding School_ID and making a new call. 
;
SELECT LEADERS_SCORE, SCHOOL_ID, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE LEADERS_SCORE = '50'
;