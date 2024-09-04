/*
	Pattern Searching / Wildcard('%','_')
    -- '%', any number of charters.
    -- '_', only one character.alter
    -- SELECT * FROM <table name> Where <column name> LIKE 'Data';
*/

SELECT * FROM Worker WHERE DEPARTMENT LIKE 'H%';
SELECT * FROM Worker WHERE DEPARTMENT LIKE '%MI%';

/*
	SORTING OF DATA
	-- ORDER BY
		-- SELECT * FROM <table name> ORDER BY <cloumn name>;
    
*/
SELECT * FROM Worker ORDER BY SALARY; -- Ascending order
SELECT * FROM Worker ORDER BY SALARY DESC; -- Descending order
SELECT * FROM Worker ORDER BY SALARY ASC; -- Ascending order

-- DISTINCT
SELECT DISTINCT DEPARTMENT FROM Worker;

/*
	GROUPING OF DATA
    -- GROUP BY (used with some aggregation functions)
		-- SELECT <column name> FROM <table> name GROUP BY <column name> , attribute list before from will be same as after Group By
*/

SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT; -- By default behave as DISTINCT
SELECT DEPARTMENT , COUNT(*) FROM Worker group by DEPARTMENT;

-- AVG Salary per department
SELECT DEPARTMENT , AVG(SALARY) FROM Worker GROUP BY DEPARTMENT;

-- MIN
SELECT DEPARTMENT , MIN(SALARY) FROM WORKER GROUP BY DEPARTMENT;

-- MAX
SELECT DEPARTMENT , MAX(SALARY) FROM WORKER GROUP BY DEPARTMENT;

-- SUM
SELECT DEPARTMENT , SUM(SALARY) FROM WORKER GROUP BY DEPARTMENT;
