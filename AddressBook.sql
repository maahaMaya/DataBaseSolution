CREATE DATABASE AddressBookSystemDB --UC 1
USE  AddressBookSystemDB;

CREATE TABLE AddressBook(FirstName  VARCHAR(10) NOT NULL,LastName VARCHAR(10)NOT NULL,Address VARCHAR(255), City VARCHAR(20)NOT NULL,
Zip INT NOT NULL, PhoneNumber bigint PRIMARY KEY , Email VARCHAR(25)); --UC2

SELECT * FROM AddressBook;

--UC3
INSERT INTO AddressBook VALUES ('Sid', 'Gandhi', 'Lic Colony Bhopal Naka', 'Sehore', 466001, 74153574154,'sid.jain@gmail.com');
INSERT INTO AddressBook VALUES ('Lalit', 'Raghu', 'RamNagar Colony', 'Vidisha', 429001, 74102589630,'lalit.raghu@gmail.com');
INSERT INTO AddressBook VALUES ('Arpit', 'Jain', 'Lisa Talkies', 'Budhar', 469001, 70003963586,'arpit.jain@gmail.com');
INSERT INTO AddressBook VALUES ('Ajay', 'Jadhao', 'Nehru Colony', 'Pune', 566001, 9632587410,'ajay.jadhao@gmail.com');
INSERT INTO AddressBook VALUES ('Rajesh', 'Barle', 'Tatiban', 'Raipur', 620147, 70008529630,'raju.barle@gmail.com');
INSERT INTO AddressBook VALUES ('Agrim', 'Tripathi', 'Tehsil Chouraha', 'Lucknow', 226001, 7539514568,'argrim.tripati@gmail.com');

SELECT * FROM AddressBook;

UPDATE AddressBook SET PhoneNumber = 1234567890 WHERE FirstName = 'Lalit'; --UC4

SELECT * FROM AddressBook;

DELETE FROM AddressBook WHERE FirstName='Agrim'; -- UC5

SELECT * FROM AddressBook;

SELECT * FROM AddressBook WHERE City = 'Raipur'; --UC6

SELECT COUNT(City) FROM AddressBook; -- UC7

SELECT FirstName, LastName FROM AddressBook ORDER BY City ASC; --UC8

--UC9
ALTER TABLE AddressBook ADD RelationTye varchar(30);
UPDATE AddressBook SET RelationTye = 'friend' WHERE FirstName = 'Lalit';
UPDATE AddressBook SET RelationTye = 'family' WHERE FirstName = 'Ajay';
UPDATE AddressBook SET RelationTye = 'office' WHERE FirstName = 'Arpit';
UPDATE AddressBook SET RelationTye = 'others' WHERE FirstName = 'Rajesh';
UPDATE AddressBook SET RelationTye = 'friend' WHERE FirstName = 'Sid';

--UC10



