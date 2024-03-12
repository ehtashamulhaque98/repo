USE[Sample]
GO

CREATE TABLE Employee (
     EmployeeID  INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

SELECT * FROM Employee