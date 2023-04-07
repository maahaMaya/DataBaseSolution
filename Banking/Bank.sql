USE Banking;

CREATE TABLE EmployeeLevel 
( 
	employee_level_id INT PRIMARY KEY IDENTITY NOT NULL, 
	employee_level VARCHAR(50),
	employeeLevel_details VARCHAR(100)
)
SELECT * FROM dbo.EmployeeLevel;
INSERT INTO dbo.EmployeeLevel (employee_level, employeeLevel_details) VALUES ('MANAGER', 'X'), ('ACCOUNTANT', 'X'), ('GENERAL', 'Z');

CREATE TABLE BankBranch
( 
	branch_id INT PRIMARY KEY IDENTITY NOT NULL,
	branch_total_money_deposite BIGINT,
	branch_address VARCHAR(500)
)
SELECT * FROM dbo.BankBranch;

INSERT INTO dbo.BankBranch (branch_total_money_deposite, branch_address) VALUES (100, 'Pune'), (300, 'Delhi'), (500, 'Ranchi');

CREATE TABLE BankEmployee 
( 
	employee_id INT PRIMARY KEY IDENTITY(200, 1) NOT NULL,
	GovId INT FOREIGN KEY(GovId) REFERENCES GovernmentId(GovId),
	branch_id INT FOREIGN KEY(branch_id) REFERENCES BankBranch(branch_id),
	employee_level_id INT FOREIGN KEY(employee_level_id) REFERENCES EmployeeLevel(employee_level_id),
	employee_mobile_number BIGINT,
	employee_emailId VARCHAR(50),
	joining_date DATE
)

SELECT * FROM dbo.BankEmployee
 INSERT INTO dbo.BankEmployee(GovId, branch_id, employee_level_id, employee_mobile_number, employee_emailId, joining_date) VALUES 
 (122, 1, 1, 2345678901,'prem@gmail.com','11.03.2019'),
 (124, 1, 2, 987654223,'ria@gmail.com', '12.04.2019'),
 (126, 1, 3, 1234567891,'om@gmail.com', '11.03.2019')



