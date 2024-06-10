-- HONORS FINAL PROJECT - PART 3A -- Creating a Stored Procedure  --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 1) Write the structure of a query to create or replace a stored procedure called UPDATE_LEADERS_SCORE that takes 
-- a in_School_ID parameter as an integer and a in_Leader_Score parameter as an integer. 
-- Don’t forget to use the #SET TERMINATOR statement to use the @ for the CREATE statement terminator.

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(       -- Name of this stored procedure routine

IN in_School_ID INTEGER, IN in_Leader_Score INTEGER) -- ( { IN/OUT type } { parameter-name } { data-type }, ... )

LANGUAGE SQL                        -- Language used in this routine 
READS SQL DATA                      -- This routine will only read data from the table


@                               -- Routine termination character



















