SELECT * FROM Department

SELECT * FROM Employee

SELECT * FROM Address


SELECT * FROM Employee  INNER JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;


SELECT * FROM Employee  LEFT JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;


SELECT * FROM Employee  RIGHT JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  FULL OUTER  JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;


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

SELECT * FROM Employee  INNER JOIN Address 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;
