CREATE TABLE Employee (
   Id INT IDENTITY(1,1),
   Name VARCHAR(30),
   Gender VARCHAR(30),
   DepartmentId INT
);

SELECT * FROM Employee

INSERT INTO Employee (Name,Gender,DepartmentId) VALUES ('Nadra','Female','3');

DELETE FROM Employee;

TRUNCATE TABLE Employee;

CREATE TABLE Department (
   DepartmentId INT, 
   DepartmentName VARCHAR(30)
);

SELECT * FROM Employee

SELECT * FROM Department

INSERT INTO Department (DepartmentId,DepartmentName) VALUES ('3','Admin');

WITH EmployeeCount(DepartmentId, Name)
AS
(   
   SELECT DepartmentId,COUNT(*) AS TotalEmployee
   FROM  Employee
   GROUP BY DepartmentId  
)

SELECT DepartmentName,Employee.Name
FROM Department
JOIN Employee ON Department.DepartmentId = Employee.DepartmentId
ORDER BY DepartmentName