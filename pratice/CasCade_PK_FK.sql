--Relationship in between table PK and Fh with and without using Cascade Rule
---WITHOUT CASDE
--Step1:
CREATE TABLE P1(EId INT PRIMARY KEY, EName VARCHAR(40), EmpSalary MONEY)
--Step 2:
INSERT INTO P1 VALUES (10, 'ADAMS', 85000), (20, 'SCOTT', 34000),(30, 'JAMES', 55000), (40, 'WARNER', 12000); 

--Step3:
CREATE TABLE C1(PhoneNo BIGINT, EAddress VARCHAR(100), Eid INT FOREIGN KEY REFERENCES P1(EId) );
INSERT INTO C1 VALUES(1234567890, 'Delhi', 10), (6543217890, 'Delhi', 10), (0987654321, 'VZG', 20), (1234560987, 'CH', 30);

SELECT * FROM P1;
SELECT * FROM C1;

--TESTING (without cascade)
--Rule 1 : Insertion Rule :- Update/add value in child FK data which is not exist in parent PK data
INSERT INTO C1 VALUES(1231231234, 'CH', 50); -- give error bcz 50 is not in P1 EId
--Rule 2 : Updation Rule :-
UPDATE P1 SET EId = 1 WHERE Eid = 10; -- not allow to update parent table PK data 
--Rule 3 : Deletion Rule :-
DELETE FROM P1 WHERE Eid = 10; -- not allow in parent table pk data

--------------------------------------------------------------------------------------
---WITH CASCADE
--Step1:
CREATE TABLE P2(EId INT PRIMARY KEY, EName VARCHAR(40), EmpSalary MONEY)
INSERT INTO P2 VALUES (10, 'ADAMS', 85000), (20, 'SCOTT', 34000),(30, 'JAMES', 55000), (40, 'WARNER', 12000); 

--Step2:
CREATE TABLE C2(PhoneNo BIGINT, EAddress VARCHAR(100), Eid INT FOREIGN KEY REFERENCES P2(EId) ON UPDATE CASCADE ON DELETE CASCADE);
INSERT INTO C2 VALUES(1234567890, 'Delhi', 10), (6543217890, 'Delhi', 10), (0987654321, 'VZG', 20), (1234560987, 'CH', 30);

SELECT * FROM P2;
SELECT * FROM C2;

--TESTING (with cascade)
--Rule 1 : Insertion Rule :-(FIXED not allow) Update/add value in child FK data which is not exist in parent PK data
INSERT INTO C1 VALUES(1231231234, 'CH', 50); -- give error bcz 50 is not in P1 EId
--Rule 2 : Updation Rule :-
UPDATE P2 SET EId = 1 WHERE Eid = 10; -- allowed
--Rule 3 : Deletion Rule :-
DELETE FROM P2 WHERE Eid = 1; -- allowed