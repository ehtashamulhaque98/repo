CREATE TABLE Address (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeId INT,
    Address_type VARCHAR(255),
	Address VARCHAR(255)
); 

SELECT * FROM Address

SELECT * FROM Employee

SET IDENTITY_INSERT Address ON;

INSERT INTO Address (Id, EmployeeId, Address_type, Address) VALUES (12, 12, 'Permanent', 'Ward No 23, Mahua');

DELETE FROM Address WHERE Id ='1';