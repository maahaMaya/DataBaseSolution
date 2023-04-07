USE Banking;


CREATE TABLE GovernmentId
(
	GovId INT PRIMARY KEY IDENTITY(100, 2) NOT NULL,
	PersonName VARCHAR(100) NOT NULL,
	PersonDOB DATE  NOT NULL,
	PersonSex VARCHAR(10) NOT NULL,
	PersonAddress VARCHAR(500) NOT NULL,
	PersonMobileNumber BIGINT NOT NULL,
	PersonEmailId VARCHAR(100) NOT NULL,
	CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
	LastUpdate DATETIME
)

SELECT * FROM dbo.GovernmentId;

INSERT INTO GovernmentId(PersonName, PersonDOB, PersonSex, PersonAddress, PersonMobileNumber, PersonEmailId) VALUES ('Sourav Kumar', '11.NOV.2011', 'Male', 'Jsr_India', 1234567890, 'sourav@gmail.com');

--customer data
INSERT INTO GovernmentId(PersonName, PersonDOB, PersonSex, PersonAddress, PersonMobileNumber, PersonEmailId) VALUES 
('Ravi raj', '12.Jan.2001', 'Male', 'Kolkata_India', 0987654321, 'ravi@gmail.com'),
('Ria Kumari', '12.Jan.1999', 'Female', 'Kolkata_India', 0987651234, 'ria@gmail.com'),
('Hari om', '19.Jan.2001', 'Male', 'Kolkata_India', 5678904321, 'hari@gmail.com'),
('Priya raj', '12.Aug.2015', 'Female', 'Pune_India', 1234567821, 'priya@gmail.com'),
('Sri Ram', '12.Jan.2000', 'Male', 'Kolkata_India', 1231231234, 'ram@gmail.com'),
('shiv Kumar', '01.Jan.2001', 'Male', 'Kolkata_India', 4321789065, 'Shiv@gmail.com');

--employee data - 122 
INSERT INTO GovernmentId(PersonName, PersonDOB, PersonSex, PersonAddress, PersonMobileNumber, PersonEmailId) VALUES 
('Prem raj', '30.Jan.2001', 'Male', 'delhi_India', 2345678901, 'prem@gmail.com'),
('Rani Kumari', '29.Aug.1999', 'Female', 'pune_India', 098765422, 'ria@gmail.com'),
('Om', '11.Jan.2000', 'Male', 'ranchi_India', 1234567891, 'om@gmail.com'),
('Sid k', '30.Jan.2000', 'Male', 'delhi_India', 2345678978, 'sid@gmail.com'),
('Ranu Kumari', '29.Aug.1998', 'Female', 'pune_India', 098765433, 'ranu@gmail.com'),
('Omkar', '11.Jan.1999', 'Male', 'ranchi_India', 1234567892, 'omkar@gmail.com');