CREATE DATABASE Pratice;
USE Pratice;

CREATE TABLE EMP_BANG(EID INT, ENAME VARCHAR(20), SALARY MONEY);
CREATE TABLE EMP_GURU(EID INT, ENAME VARCHAR(20), SALARY MONEY);

INSERT INTO EMP_BANG VALUES (101, 'ADAMS', 85000), (102, 'SCOTT', 34000),(103, 'JAMES', 55000), (104, 'WARNER', 12000); 
INSERT INTO EMP_GURU VALUES (101, 'ADAMS', 85000), (105, 'ALLEN', 11000),(106, 'MILLER', 98000); 

SELECT * FROM  EMP_GURU;
SELECT * FROM EMP_BANG;
-- SET OPERTAION :- (To combined two or more selected statements) : 4 types
--1. UNION : NO Duplicate values
SELECT * FROM  EMP_GURU
UNION
SELECT * FROM EMP_BANG;

--RULE 1: Columns must be same 
-- This is not allow because colums is not same.
--SELECT EID FROM  EMP_GURU
--UNION
--SELECT EID, ENAME FROM EMP_BANG;
SELECT EID, ENAME FROM  EMP_GURU
UNION
SELECT EID, ENAME FROM EMP_BANG;

--RULE 2 : Order of colums must match
--Order of columns is not match so not run
--SELECT ENAME, EID FROM  EMP_GURU
--UNION
--SELECT EID, ENAME FROM EMP_BANG;
SELECT EID, ENAME FROM  EMP_GURU
UNION
SELECT EID, ENAME FROM EMP_BANG;

--RULE 3 : DataTypes of Columns must match
--SELECT EID FROM  EMP_GURU
--UNION
--SELECT ENAME FROM EMP_BANG;
SELECT ENAME FROM  EMP_GURU
UNION
SELECT ENAME FROM EMP_BANG;

--2. UNION ALL : Same as UNION But here duplicate values are allowed
SELECT * FROM  EMP_GURU
UNION ALL
SELECT * FROM EMP_BANG;

--3. INTERSECT : Return Common values in a table 
SELECT * FROM  EMP_GURU
INTERSECT
SELECT * FROM EMP_BANG; 

--4. EXCEPT : Return all values from the left hand table which are not found in right hand table.
SELECT * FROM  EMP_GURU
EXCEPT
SELECT * FROM EMP_BANG;


