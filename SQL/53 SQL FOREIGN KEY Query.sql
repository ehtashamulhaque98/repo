SELECT * FROM Employee

SELECT * FROM Department
 
SELECT * FROM Address

CREATE TABLE Address (
	AddressId INT PRIMARY KEY,
	Address_Type VARCHAR(50),
	Address VARCHAR (50),
	EmployeeId INT, FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId)

);

ALTER TABLE Address
ADD FOREIGN KEY (EmployeeId) REFERENCES Employee (EmployeeId);

DELETE FROM Employee WHERE EmployeeID = 8;

ALTER TABLE Address
DROP CONSTRAINT FK_EmployeeID;

SELECT Employee.Name,Employee.Salary,Employee.Email,Department.Name,Address.Address_type,Address.Address
FROM Employee  INNER JOIN Department
ON Employee.DepartmentId = Department.Id
INNER JOIN Address
ON Employee.EmployeeId =Address.EmployeeId;

EXEC sp_rename 'Department.Name','Department_Name','COLUMN';

EXEC sp_rename 'Department.Department_Name','Name','COLUMN';

SELECT Name AS Department_Name
FROM Department;

SELECT Employee.Name,Employee.Salary,Employee.Email, Department.Name AS "Department Name",Address.Address_type,Address.Address
FROM Employee  INNER JOIN Department
ON Employee.DepartmentId = Department.Id
INNER JOIN Address
ON Employee.EmployeeId =Address.EmployeeId;




