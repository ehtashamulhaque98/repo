SELECT FirstName, LastName, Salary
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);


SELECT FirstName, LastName, Salary
FROM Employee
WHERE Salary = (SELECT MIN(Salary) FROM Employee);