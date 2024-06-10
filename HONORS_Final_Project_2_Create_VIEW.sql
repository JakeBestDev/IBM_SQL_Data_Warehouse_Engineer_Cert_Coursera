-- HONORS FINAL PROJECT - PART 2 - Creating a View --
-- USES THE CENSUS_DATA, CHICAGO_PUBLIC_SCHOOLS, and CHICAGO_CRIME_DATA DATASETS --


-- 1) Write and execute a SQL statement to create a view showing the columns listed in the following table, with new column names as shown in the second column.
/*
Column name in CHICAGO_PUBLIC_SCHOOLS	Column name in view
NAME_OF_SCHOOL	School_Name
Safety_Icon	Safety_Rating
Family_Involvement_Icon	Family_Rating
Environment_Icon	Environment_Rating
Instruction_Icon	Instruction_Rating
Leaders_Icon	Leaders_Rating
Teachers_Icon	Teachers_Rating
 */
;
CREATE OR REPLACE VIEW SCHOOL_VIEW (School_Name,Safety_Rating,	Family_Rating,Environment_Rating,Instruction_Rating,Leaders_Rating,Teachers_Rating)
AS SELECT NAME_OF_SCHOOL, Safety_Icon, Family_Involvement_Icon, Environment_Icon, Instruction_Icon, Leaders_Icon, Teachers_Icon 
FROM CHICAGO_PUBLIC_SCHOOLS
;

-- 2) Write and execute a SQL statement that returns all of the columns from the view.
;
SELECT *
FROM SCHOOL_VIEW;
;

-- 3) Write and execute a SQL statement that returns just the school name and leaders rating from the view.
;

SELECT School_Name, Leaders_Rating
FROM SCHOOL_VIEW;
;


















