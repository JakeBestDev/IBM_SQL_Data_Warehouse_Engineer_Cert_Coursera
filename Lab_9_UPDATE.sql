-- Using UPDATE --
-- Please Note If Ran The Records Will Be UPDATED And Will Not Work Again, Will Need To Reload Data -- 

-- 1) UPDATE DEPARTMENT with an ID of 11 to be named 'Accounting Team'
;
UPDATE DEPARTMENTS 
SET DEP_NAME='Accounting Team'
WHERE DEPT_ID_DEP = 11;
;


-- 2) UPDATE DEPARTMENT with an ID of 13 to be named 'Tech Team' and the Manager ID to be 30007
;
UPDATE DEPARTMENTS 
SET DEP_NAME='Tech Team' , MANAGER_ID = 30007
WHERE DEPT_ID_DEP =13;
;









