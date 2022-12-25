CREATE DATABASE CompanyDb;
USE CompanyDb;
CREATE TABLE Employee (EmpId INT PRIMARY KEY, EmpName VARCHAR(40), EmpJob VARCHAR(40), EmpSalary MONEY, EmpDeptName VARCHAR(40));
INSERT INTO EMployee VALUES (1, 'Sourav', 'DEV+TEST', 12345, 'CS'), (2, 'Kumar', 'Test',6543332, 'IT'), (3, 'vicky', 'Dev', 22345, 'CS');