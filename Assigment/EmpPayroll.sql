CREATE DATABASE payroll_service;
USE payroll_service;

CREATE TABLE employee_payroll
(
	id Int primary key Identity(1,1),
	name varchar(150) NOT NULL,
	slaray bigint NOT NULL,
	start DATE NOT NULL
);

--UC3
INSERT INTO employee_payroll(name, slaray, start) VALUES
	('Sourav', 10000000000000.00,'2021-12-07'),
	('Divya',2000000000000.0,'2022-10-01'),
	('Sid',1000000000.0,'2022-12-01')

--UC4
SELECT * FROM employee_payroll;

--UC5
SELECT slaray FROM employee_payroll WHERE name ='Sourav';
SELECT * FROM employee_payroll WHERE start BETWEEN CAST('2018-01-03' AS DATE) AND GETDATE();

--UC6
ALTER TABLE employee_payroll ADD gender CHAR(1);
update employee_payroll set gender = 'M' WHERE name = 'Sourav';
update employee_payroll set gender = 'F' WHERE name = 'Divya' or name = 'Soni';
update employee_payroll set gender = 'M' WHERE id = 5;

--UC7
SELECT AVG(slaray) From employee_payroll WHERE gender = 'M' ;

SP_HELP employee_payroll;