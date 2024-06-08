-- ACID PROCEDURE EXAMPLE 1 --
-- Uses the BankAccounts and ShoeShop tables. RUN SQL CREATE STATEMENTS FIRST TO CREATE THE DATA!! --


-- 1) Exercise 1 - ACID STATEMENTS

-- A) You will create a stored procedure routine named TRANSACTION_ROSE which will include TCL commands like COMMIT and ROLLBACK.

-- B) Now develop the routine based on the given scenario to execute a transaction.

-- C) Scenario: Let’s buy Rose a pair of Boots from ShoeShop. So we have to update the Rose balance as well as the ShoeShop balance in the BankAccounts table. 
-- Then we also have to update Boots stock in the ShoeShop table. After Boots, let’s also attempt to buy Rose a pair of Trainers.

--#SET TERMINATOR @
CREATE PROCEDURE TRANSACTION_ROSE                           -- Name of this stored procedure routine

LANGUAGE SQL                                                -- Language used in this routine 
MODIFIES SQL DATA                                           -- This routine will only write/modify data in the table

BEGIN

        DECLARE SQLCODE INTEGER DEFAULT 0;                  -- Host variable SQLCODE declared and assigned 0
        DECLARE retcode INTEGER DEFAULT 0;                  -- Local variable retcode with declared and assigned 0
        DECLARE CONTINUE HANDLER FOR SQLEXCEPTION           -- Handler tell the routine what to do when an error or warning occurs
        SET retcode = SQLCODE;                              -- Value of SQLCODE assigned to local variable retcode
        
        UPDATE BankAccounts
        SET Balance = Balance-200
        WHERE AccountName = 'Rose';
        
        UPDATE BankAccounts
        SET Balance = Balance+200
        WHERE AccountName = 'Shoe Shop';
        
        UPDATE ShoeShop
        SET Stock = Stock-1
        WHERE Product = 'Boots';
        
        UPDATE BankAccounts
        SET Balance = Balance-300
        WHERE AccountName = 'Rose';

        
        IF retcode < 0 THEN                                  --  SQLCODE returns negative value for error, zero for success, positive value for warning
            ROLLBACK WORK;
        
        ELSE
            COMMIT WORK;
        
        END IF;
        
END
@                                                            -- Routine termination character


CALL TRANSACTION_ROSE  -- Caller query

-- CANNOT RUN MORE STATEMENTS IN THIS FILE DUE TO TERMINATION CHARACTER. 
-- DELETE ABOVE AND REMOVE COMMENTS '--' FROM BELOW TO COMPLETE LESSON.

--- Let’s now check if the transaction can successfully be committed or not. ---
-- CALL TRANSACTION_ROSE;  -- Caller query
-- SELECT * FROM BankAccounts;
-- SELECT * FROM ShoeShop;


/*
 * 
EXPLINATION 
 * 
 * 
We can observe that the transaction has been executed. But when we observe the tables, no changes have permanently been saved through COMMIT. 
All the possible changes happened might have been undone through ROLLBACK since the whole transaction fails due to the failure of a SQL statement or more. 
Let’s go through the possible reason behind the failure of the transaction and how COMMIT - ROLLBACK works on a stored procedure:

The first three UPDATEs should run successfully. Both the balance of Rose and ShoeShop should have been updated in the BankAccounts table. 
The current balance of Rose should stand at 300 - 200 (price of a pair of Boots) = 100. The current balance of ShoeShop should stand at 124200 + 200 = 124400. 
The stock of Boots should also be updated in the ShoeShop table after the successful purchase for Rose, 11 - 1 = 10.

The last UPDATE statement tries to buy Rose a pair of Trainers, but her balance becomes insufficient (Current balance of Rose: 100 < Price of Trainers: 300) 
after buying a pair of Boots. So, the last UPDATE statement fails. Since the whole transaction fails if any of the SQL statements fail, 
the transaction won’t be committed.

The SQLCODE which is a stand-alone host variable contains success/failure/warning information of each SQL statement execution. 
Now since SQLCODE variable gets reset back as the next SQL statement runs, retcode is our local variable to catch the return value of this SQLCODE. 
SQLCODE returns negative value for each SQL statement if not executed successfully. So, on any error occurrence, all the changes are rolled back. 
Commit only takes place after the transaction gets executed successfully without any error.
 * 
 * 
 */