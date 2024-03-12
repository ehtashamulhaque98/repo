SELECT * FROM Orders

SELECT * FROM Product

SELECT ProductId, Quntity,
CASE
	WHEN Quntity > 6 THEN 'The quntity is greater than 6'
	WHEN Quntity = 6 THEN 'The quntity is 6'
	ELSE 'The quntity is under 6'
END AS QuntityText
FROM Orders;

SELECT  Salary,
CASE
	WHEN Salary > 35000 THEN 'The Salary is greater than 35000'
	WHEN Salary  = 35000 THEN 'The Salary is 35000'
	ELSE 'The Salary is under 35000'
END AS QuntityText
FROM Employee;

SELECT  Salary,
CASE
	WHEN Salary < 35000 THEN 'The Salary is greater than 35000'
	WHEN Salary  = 35000 THEN 'The Salary is 35000'
	ELSE 'The Salary is under 35000'
END AS QuntityText
FROM Employee;

SELECT * FROM Employee
WHERE Salary = '80000' AND (Name LIKE'E%' OR Name LIKE 'D%');

SELECT * FROM Employee
WHERE Salary <= '80000' AND (Name LIKE'E%' OR Name LIKE 'D%');

SELECT Name FROM Employee
UNION 
SELECT Name FROM Student
ORDER BY Name;

SELECT Name FROM Employee
UNION ALL 
SELECT Name FROM Student
ORDER BY Name;

SELECT Name,Email FROM Employee
WHERE Email = 'ehtashamulhaque98@gmail.com'
UNION 
SELECT Name,Email FROM Student
WHERE Email = 'ehtashamulhaque98@gmail.com'
ORDER BY Name;

SELECT Name,Email FROM Employee
WHERE Email = 'ehtashamulhaque98@gmail.com'
UNION ALL
SELECT Name,Email FROM Student
WHERE Email = 'ehtashamulhaque98@gmail.com'
ORDER BY Name;

SELECT 'Name' AS PName , Email
FROM Employee
UNION 
SELECT 'Name', Email
FROM Student;


