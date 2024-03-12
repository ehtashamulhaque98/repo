SELECT * FROM Department

SELECT * FROM Employee

ALTER TABLE Employee
DROP COLUMN Department;

ALTER TABLE Employee
ADD DepartmentId INT;

UPDATE Employee
SET DepartmentId='6'
WHERE EmployeeID =12;

SELECT * FROM Employee  INNER JOIN Department 
ON Employee.DepartmentId = Department.Id
WHERE Department.NAME = 'HR';
ORDER BY  Employee.NAME;







SELECT * FROM Employee E  INNER JOIN Department D 
ON E.DepartmentId = D.Id;



