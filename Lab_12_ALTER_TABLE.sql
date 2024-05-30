-- Using ALTER TABLE --
-- Please Note If Ran The Records Will Be ALTER'D And Will Not Work Again, Will Need To Reload Data -- 

-- 1) Add a new QUANTITY column to the PETSALE table and show the altered table.
;
ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;
;
    
CREATE TABLE PET (
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER
    );
;


-- 2) Now update the newly added QUANTITY column of the PETSALE table with some values and show all the records of the table.
;
UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;
;

-- 3) Change the data type to VARCHAR(20) type of the column PET of the table PETSALE and show the altered table
;
ALTER TABLE PETSALE
ALTER COLUMN PET SET DATA TYPE VARCHAR(20);

SELECT * FROM PETSALE;
;


-- 4) Delete the PROFIT column from the PETSALE table and show the altered table.
;
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;
;

-- 5) In the PETSALE table, rename the column PET to ANIMAL and show the altered table.
;
ALTER TABLE PETSALE
RENAME COLUMN PET TO ANIMAL;

SELECT * FROM PETSALE;
;






