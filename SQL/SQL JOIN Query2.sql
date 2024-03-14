SELECT * FROM Department

SELECT * FROM Employee

SELECT * FROM Address


SELECT * FROM Employee  INNER JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR' ;
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

SELECT * FROM Address ORDER BY EmployeeId DESC

SELECT * FROM Employee

INSERT INTO Address (EmployeeId, Address_type, Address) VALUES (1,'Permanent','Sector No 14,New York');


DELETE FROM Address WHERE Id ='14';

SELECT * FROM Employee  INNER JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT Employee.EmployeeId,Employee.Name,Employee.Salary,Address.Address_Type,Address.Address FROM Employee  INNER JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  LEFT JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  RIGHT JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId;
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;

SELECT * FROM Employee  FULL OUTER JOIN Address 
ON Employee.EmployeeId = Address.EmployeeId
WHERE Address_Type = 'Permanent';
ORDER BY  Employee.NAME;


