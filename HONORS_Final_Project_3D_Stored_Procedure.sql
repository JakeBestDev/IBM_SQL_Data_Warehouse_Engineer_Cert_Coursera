-- HONORS FINAL PROJECT - PART 3D -- Creating a Stored Procedure  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 4) Write a query to call the stored procedure, passing a valid school ID and a leader score of 50, to check that the procedure works as expected.
;
CALL UPDATE_LEADERS_SCORE(609927,50)
;

SELECT LEADERS_SCORE, SCHOOL_ID, LEADERS_ICON
FROM CHICAGO_PUBLIC_SCHOOLS
WHERE LEADERS_SCORE = '50'































