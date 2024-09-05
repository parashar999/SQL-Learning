-- An Attribute can be PRIMARY KEY or FOREIGN KEY Both.
USE ORG;

-- ALTER OPERATIONS :- To change Schema
	-- ADD
		-- `ALTER TABLE <table name> ADD <new col-name> col-datatype;`
	-- MODIFY 
		-- Change datatype of an Attribute
        -- `ALTER TABLE <table name> MODIFY <col-name> col-datatype;`
	-- CHANGE COLUMN
		-- Rename column name
        -- `ALTER TABLE <table name> CHANGE COLUMN old_name new_name new_datatype;
	-- DROP COLUMN
		-- Drop a column completely.
        -- ALTER TABLE <table name> DROP COLUMN <col-name>
	-- RENAME
		-- Rename table name itself.
        -- `ALTER TABLE <table name> RENAME TO <new name>`

ALTER TABLE Worker ADD Gender VARCHAR(1) default 'N';
ALTER TABLE Worker MODIFY Gender CHAR(1);
ALTER TABLE Worker CHANGE COLUMN Gender Gen VARCHAR(1) default 'N';
ALTER TABLE Worker DROP Gen;
ALTER TABLE Worker RENAME TO Employee;
ALTER TABLE Employee RENAME TO Worker;

SELECT * FROM Worker;
