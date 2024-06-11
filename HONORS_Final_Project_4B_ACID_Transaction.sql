-- HONORS FINAL PROJECT - PART 4B -- Using Transactions  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --




/*
You realise that if someone calls your code with a score outside of the allowed range (0-99), then the score will be updated with the invalid data and 
the icon will remain at its previous value. There are various ways to avoid this problem, one of which is using a transaction.

2) Update your stored procedure definition again. Add a statement to commit the current unit of work at the end of the procedure. 

TEST DONE IN PART 4C
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
	
ELSE
	ROLLBACK WORK;

END IF;

COMMIT WORK;

END

@    




























