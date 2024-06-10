-- HONORS FINAL PROJECT - PART 3C -- Creating a Stored Procedure  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 3) Inside your stored procedure, write a SQL IF statement to update the Leaders_Icon field in the CHICAGO_PUBLIC_SCHOOLS table for the school 
-- identified by in_School_ID using the following information.

/*
Score lower limit	Score upper limit	Icon
80	99	Very strong
60	79	Strong
40	59	Average
20	39	Weak
0	19	Very weak
 */

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(       -- Name of this stored procedure routine

IN in_School_ID INTEGER, IN in_Leader_Score INTEGER) -- ( { IN/OUT type } { parameter-name } { data-type }, ... )

LANGUAGE SQL                        -- Language used in this routine 
MODIFIES SQL DATA                      -- This routine will only read data from the table

BEGIN

IF in_Leader_Score > 0 AND in_Leader_Score < 20 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Icon = 'Very Weak'
	WHERE SCHOOL_ID = in_School_ID;

ELSEIF in_Leader_Score < 40 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Icon = 'Weak'
	WHERE SCHOOL_ID = in_School_ID;

ELSEIF in_Leader_Score < 60 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Icon = 'Average'
	WHERE SCHOOL_ID = in_School_ID;

ELSEIF in_Leader_Score < 80 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Icon = 'Strong'
	WHERE SCHOOL_ID = in_School_ID;

ELSEIF in_Leader_Score < 100 THEN
	UPDATE CHICAGO_PUBLIC_SCHOOLS
	SET Leaders_Icon = 'Very strong'
	WHERE SCHOOL_ID = in_School_ID;

END IF;
END

@                               -- Routine termination character


















