USE [Sample]
GO

CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Position VARCHAR(50)
);

Select * from Employee

INSERT INTO Employee (FirstName, LastName, Department, Position, Salary) VALUES ('Sachin', 'Kumar', 'Civil', 'Civil Engineer', '30000');


INSERT INTO Employee (FirstName, LastName, Department, Position, Salary) VALUES ('Nadra','Fatma', 'Dentist', 'physician', '38000');


ALTER TABLE Employee
ADD Salary INT;


ALTER TABLE Employee
DROP COLUMN Salary;

SELECT MAX(Salary) AS HighestSalary
FROM Employee;

SELECT MIN(Salary) AS LowestSalary
FROM Employee;

SELECT Department, MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department;

SELECT Department, MIN(Salary) AS LowestSalary
FROM Employee
GROUP BY Department;

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department;







