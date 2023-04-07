USE Banking;

CREATE TABLE BankCustomer
( 
	customer_id INT PRIMARY KEY IDENTITY(400, 1) NOT NULL,
	GovId INT FOREIGN KEY(GovId) REFERENCES GovernmentId(GovId),
	branch_id INT FOREIGN KEY(branch_id) REFERENCES BankBranch(branch_id),
	customer_mobile_number BIGINT,
	customere_emailId VARCHAR(50),
	customer_total_balance BIGINT,
	joining_date DATE
)

SELECT * FROM dbo.BankCustomer

INSERT INTO dbo.BankCustomer(GovId, branch_id, customer_mobile_number, customere_emailId, customer_total_balance, joining_date) VALUES
(102, 1, 987654321, 'ravi@gmail.com', 12, '12.12.1999'),
(104, 1, 987651234, 'ria@gmail.com', 10, '12.09.2000'),
(104, 1, 5678904321, 'hari@gmail.com', 10, '12.06.2001')