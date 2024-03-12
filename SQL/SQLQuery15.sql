USE[Sample]
GO

SELECT * FROM Employee

SELECT * FROM Department

INSERT INTO Employee (Name, Department, Salary) VALUES ('Tashim Ali', 'Account', 55000);

ALTER TABLE Employee
ADD Email VARCHAR(50);



UPDATE Employee
SET Email = 'tashimali99@gmail.com'
WHERE EmployeeID = 12;





ALTER TABLE Employee
DROP COLUMN First Name;

ALTER TABLE Employee
DROP COLUMN Last Name;

ALTER TABLE Employee
DROP COLUMN Position;

ALTER TABLE Employee
DROP COLUMN Email;

ALTER TABLE Employee
DROP COLUMN Department;

ALTER TABLE Employee
ADD Name VARCHAR(30);

ALTER TABLE Employee
ADD Department VARCHAR(30);





