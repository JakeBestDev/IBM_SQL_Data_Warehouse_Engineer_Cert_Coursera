-- Stored Procedures EXAMPLE 1 --
-- Uses the PETSALE Data --


-- 1) Exercise 2 - You will create a stored procedure routine named UPDATE_SALEPRICE with parameters Animal_ID and Animal_Health.

-- A) This UPDATE_SALEPRICE routine will contain SQL queries to update the sale price of the animals in 
-- the PETSALE table depending on their health conditions, BAD or WORSE.

-- B) This procedure routine will take animal ID and health conditon as parameters which will be used to update the sale price of animal 
-- in the PETSALE table by an amount depending on their health condition. Suppose:
--- For animal with ID XX having BAD health condition, the sale price will be reduced further by 25%.
--- For animal with ID YY having WORSE health condition, the sale price will be reduced further by 50%.
--- For animal with ID ZZ having other health condition, the sale price won’t change.
;
    --#SET TERMINATOR @
    CREATE PROCEDURE UPDATE_SALEPRICE ( 
        IN Animal_ID INTEGER, IN Animal_Health VARCHAR(5) )     -- ( { IN/OUT type } { parameter-name } { data-type }, ... )

    LANGUAGE SQL                                                -- Language used in this routine
    MODIFIES SQL DATA                                           -- This routine will only write/modify data in the table

    BEGIN 

        IF Animal_Health = 'BAD' THEN                           -- Start of conditional statement
            UPDATE PETSALE
            SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
            WHERE ID = Animal_ID;
        
        ELSEIF Animal_Health = 'WORSE' THEN
            UPDATE PETSALE
            SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
            WHERE ID = Animal_ID;
            
        ELSE
            UPDATE PETSALE
            SET SALEPRICE = SALEPRICE
            WHERE ID = Animal_ID;

        END IF;                                                 -- End of conditional statement
        
    END
    @                                                           -- Routine termination character

----- DUE TO TERMINATION CHARACTER CANNPT HAVE BELOW ITEMS IN THE SAME FILE WITHOUT ERROR> SO COMMENTED THEM OUT -----
----- TO INCLUDE JUST RUN ABOVE PROCEDURE THEN REMOVE FROM THE CODE AND THEN REMOVE COMMENTS '--' FROM BELOW AND RUN TO VIEW RESULTS




-- C) Let’s call the UPDATE_SALEPRICE routine. We want to update the sale price of animal with ID 1 having BAD health condition in the PETSALE table.
---
--CALL RETRIEVE_ALL;
--CALL UPDATE_SALEPRICE(1, 'BAD');        -- Caller query
--CALL RETRIEVE_ALL;
---


-- D) Let’s call the UPDATE_SALEPRICE routine once again. We want to update the sale price of animal with ID 3 having WORSE health condition in the PETSALE table.
---
--CALL RETRIEVE_ALL;
--CALL UPDATE_SALEPRICE(3, 'WORSE');      -- Caller query
--CALL RETRIEVE_ALL;
---

----- IN DB2 YOU CAN VIEW PROCEDURES BY - Click on the 3-bar menu icon in the top left corner and click EXPLORE > APPLICATION OBJECTS > Stored Procedures.

-- Used To Drop Procedure - 
-- DROP PROCEDURE RETRIEVE_ALL