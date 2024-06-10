-- HONORS FINAL PROJECT - PART 3B -- Creating a Stored Procedure  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 1) Inside your stored procedure, write a SQL statement to update the Leaders_Score field in the CHICAGO_PUBLIC_SCHOOLS table for the school 
-- identified by in_School_ID to the value in the in_Leader_Score parameter.

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(       -- Name of this stored procedure routine

IN in_School_ID INTEGER, IN in_Leader_Score INTEGER) -- ( { IN/OUT type } { parameter-name } { data-type }, ... )

LANGUAGE SQL                        -- Language used in this routine 
MODIFIES SQL DATA                      -- This routine will only read data from the table


UPDATE CHICAGO_PUBLIC_SCHOOLS
SET Leaders_Score = in_Leader_Score
WHERE SCHOOL_ID = in_School_ID

@                               -- Routine termination character


















