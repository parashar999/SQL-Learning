-- DATA MODIFICATION LANGUAGE
	-- INSERT
		-- TO INSERT DATA INTO THE TABLE
        -- `INSERT INTO <table name> (column names) VALUES (values), (values) , (values); `
        
	-- UPDATE
		-- TO UPDATE DATA FROM THE TABLE
        -- `UPDATE <table name> SET col_1=val_1, col_2=val_2, .... , WHERE <condition>`
	
    -- DELETE 
		-- TO DELETE DATA FROM THE TABLE
	
    -- Refrential Constrains
		-- INSERT
        -- DELETE
			-- To Overcome this `ON DELETE CASCASE` and `ON DELETE SET NULL` are used.
            -- Foreign Key can have `NULL` Value.
            -- `FOREIGN KEY(child_id) References ParentTable(parent_id) ON DELETE CASCADE`, Child will be delete if parent is deleted.
            -- `FOREIGN KEY(child_id) REFERENECES ParentTable(parent_id) ON DELETE SET NULL`, Child will not be delete but will be setted to NULL.
        
	-- REPLACE
		-- TO REPLACE DATA OF TUPLE ALREADY PRESENT IN THE TABLE
		-- Data Already Present :- Data will be replaces.
        -- Data Already Not Present :- REPLACE Will behave like INSERT.
        
	-- If row is not present , Replace will add a new row, while update will do nothing.
        
USE ORG;
SELECT * FROM WORKER;
UPDATE Worker SET SALARY =100000, LAST_NAME='NONE' WHERE WORKER_ID=1;

SET SQL_SAFE_UPDATES=0;

-- UPDATE IN Multiple ROWS
UPDATE Worker SET DEPARTMENT='HR';
UPDATE Worker SET SALARY=SALARY+1;

DELETE FROM Worker;
DELETE FROM Worker WHERE WORKER_ID='7';

REPLACE INTO Worker (Worker_ID, Salary) VALUES (7,'55000');
REPLACE INTO Worker SET Worker_ID=6 , FIRST_NAME='Tarun'; 
REPLACE INTO Worker(FIRST_NAME, LAST_NAME) SELECT FIRST_NAME, LAST_NAME FROM WORKER WHERE WORKER_ID='4'; -- INSERTING FROM ONE TABLE TO ANOTHER
