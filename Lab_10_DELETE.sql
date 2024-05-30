-- Using DELETE --
-- Please Note If Ran The Records Will Be DELETED And Will Not Work Again, Will Need To Reload Data -- 

-- 1) DELETE DEPARTMENT with an ID of 9
;
DELETE FROM DEPARTMENTS 
WHERE DEPT_ID_DEP = 9
;


-- 2) DELETE DEPARTMENT'S where DEP ID is 9,11,13,or 15.
;
DELETE FROM DEPARTMENTS 
WHERE DEPT_ID_DEP IN (9,11,13,15)
;








