SELECT * FROM Employee
WHERE EmployeeID IN (SELECT EmployeeID FROM Employee WHERE Salary > 70000);

SELECT * FROM Employee


SELECT AVG (Salary) FROM Employee;

SELECT * 
FROM Employee
WHERE Salary > 53000;


SELECT * 
FROM Employee
WHERE Salary > (SELECT AVG (Salary) FROM Employee);


SELECT Id FROM Student;

SELECT * FROM Student 

SELECT *
FROM Student
WHERE Id IN  (SELECT Id FROM Student);

UPDATE Employee 
SET Salary = 76000
WHERE DepartmentId IN (SELECT DepartmentId FROM Employee WHERE DepartmentId = 12);

DELETE FROM Employee
WHERE DepartmentId IN (SELECT DepartmentId FROM Employee WHERE DepartmentId = 12);

