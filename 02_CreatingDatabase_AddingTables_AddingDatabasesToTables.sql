/*
	-- Create A database with tables names 
		-- Worker(worker_ID, fname, lastname, salary, join_date, Department)
		-- Bounus(worker_ref_id, bonus_amt, bonus_data)
        -- Title(worker_ref_id, worker_title, affected_from )
*/

CREATE DATABASE ORG;
SHOW DATABASES; -- Show all available database

USE ORG;

-- Creating Worker Table
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME CHAR(25),
    LAST_NAME CHAR(25),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(25)
);

-- Inserting Values into table
INSERT INTO Worker(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001 , 'Monika' , 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
        (002,'Niharika','Verma', 80000 ,'14-06-11 09.00.00','Admin'),
        (003,'Vishal','Singhal', 300000,'14-02-20 09.00.00',' HR'),
        (004,'Amitabh','Singh',500000,'14-02-20 09.00.00','Admin'),
        (005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
        (006,'Vipul','Diwan',200000,'14-06-11 09.00.00','Account'),
        (007,'Satish','Kumar',75000,'14-01-11 09.00.00','Account'),
        (008,'Geetika','Chauhan', 90000 ,'14-04-11 09.00.00','Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
    BONUS_AMOUNT INT(10),
    BOUNUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE -- Taking Primary key of other table as it's foreign key
);

INSERT INTO bonus() VALUES
	(001,5000,'16-02-20'),
    (002,3000,'16-06-11'),
    (002,4000,'16-02-20'),
    (001,4500,'16-02-20'),
    (02,3500,'16-06-11');

CREATE TABLE Title
(
	WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY(WORKER_REF_ID) references Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (001, 'Manager' , '2016-02-20 00:00:000'),
    (002, 'Executive' , '2016-06-11 00:00:000'),
    (008, 'Executive' , '2016-06-11 00:00:000'),
    (005, 'Manager' , '2016-06-11 00:00:000'),
    (004, 'Ass. Manager' , '2016-06-11 00:00:000'),
    (007, 'Executive' , '2016-06-11 00:00:000'),
    (006, 'Lead' , '2016-06-11 00:00:000'),
    (003, 'Lead' , '2016-06-11 00:00:000');
