USE ORG;
SELECT * FROM Worker;

-- JOINS
	-- Used to fetch data using realtions
    -- INNER JOIN :- RETURNS TABLE THAT HAS MATCHING VALUES FROM BOTH THE TABLES
	
    -- LEFT JOIN 
		-- `SELECT * FROM <table 1> LEFT JOIN <table 2> WHERE <condition>`
        

-- ALIAS IN MY SQL
	-- TABLE_NAME AS ALIAS_NAME
    
SELECT * FROM Worker INNER JOIN BONUS ON WORKER_ID=WORKER_REF_ID;

-- OUTER JOINS
SELECT * FROM Worker LEFT JOIN BONUS ON WORKER_ID=WORKER_REF_ID;
SELECT * FROM Bonus RIGHT JOIN Worker ON WORKER_REF_ID=WORKER_ID;

-- FULL JOIN
SELECT * FROM Worker AS W LEFT JOIN BONUS AS B ON W.WORKER_ID=B.WORKER_REF_ID UNION SELECT * FROM Worker AS W RIGHT JOIN Bonus AS B ON W.WORKER_ID=B.WORKER_REF_ID;

-- CROS JOIN
	-- CARTESIAN PRODUCT
    -- NO INDUSTRIAL USE
    
SELECT W.FIRST_NAME, B.WORKER_REF_ID FROM Worker AS W CROSS JOIN Bonus AS B;
    
-- SELF JOIN
	-- Emulated using 'INNER JOIN' and Alias 'As'

SELECT DISTINCT w1.salary, w2.salary, w1.FIRST_NAME, w2.FIRST_NAME FROM Worker as w1 INNER JOIN Worker as w2 ON w1.salary=w2.salary AND w1.FIRST_NAME != W2.FIRST_NAME; 
