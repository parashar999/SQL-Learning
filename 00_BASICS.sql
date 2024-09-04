-- Create a Database
CREATE DATABASE temp;

-- Use the table
USE temp;

-- Create Tables in Database
CREATE TABLE student( 
	id INT PRIMARY KEY,  -- Column 1 in table with Attribute Id which will be primary key
    name VARCHAR(255)   -- Column 2 in table 
    );

-- Inserting Values into table    
INSERT INTO student VALUES(1, 'Ankit'); 

-- Selecting From Table
Select * FROM student;

/*
	Data Types of SQL
    1. INT:4 Byte Integer
    // VARCHAR DO NOT HAVE FIXED SIZE
    2. VARCHAR:0-255 Bytes
    // Fixed-Size of 255 Bytes
    3. CHAR:0-255 Bytes
    4. TEXT
    5. BLOB
    6. TINY INT
    7. SMALL INT
    8. BIGINT
    9. FLOAT
    10. DOUBLE
    11. BOOLEAN
    12. BIT
    13. JSON
*/

-- SIGNED : TINYINT -128->127
-- UNSIGNED : UNSIGNED TINYINT 0->255
