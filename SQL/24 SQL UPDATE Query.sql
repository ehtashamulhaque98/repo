

CREATE TABLE Employee (
     EmployeeID  INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

SELECT * FROM Employee

INSERT INTO Employee (Name, Department, Salary) VALUES ('Tashim Ali', 'Account', 55000);

ALTER TABLE Employee
ADD Email VARCHAR(255);

UPDATE Employee
SET Email = 'tashimali99@gmail.com'
WHERE EmployeeID = 12;