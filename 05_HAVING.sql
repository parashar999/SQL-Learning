/*
	-- HAVING
		-- Used with GROUP BY Filtering
        -- Similar to Where
        -- SELECT <column name>, <agreegate> FROM <table name> GROUP BY <column name> HAVING condiition;
        -- WHERE VS HAVING
			-- Both have same function of filtering the row base n certain conditions.
            -- WHERE clause is used to filter rows from the table based on specified condition and HAVING is used to filter from the group by based on specific conditions.
            -- HAVING is used after GROUP BY while WHERE is used before GROUP BY clause.
            -- IF YOU ARE USING HAVING , GROUP BY IS NECESSARY
            -- WHERE can be used with SELECT, UPDATE and DELTE Keywords while GROUP BY used with SELECT.
*/
SELECT SALARY FROM Worker GROUP BY  SALARY HAVING SALARY>100000;
SELECT DEPARTMENT, COUNT(*) FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(*)>0; 
