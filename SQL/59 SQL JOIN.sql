select * from Employee;

select * from Department;

ALTER  TABLE Employee
ADD Salary int;

SELECT DISTINCT Name,Gender FROM Employee;

SELECT DISTINCT Name,DepartmentId FROM  Employee;

SELECT Name FROM Employee;

SELECT COUNT (DISTINCT Name) FROM Employee;

SELECT COUNT (Name) FROM Employee;

SELECT * FROM Employee
WHERE Name= 'Ehtashamul';

SELECT * FROM Employee
WHERE Id = 1;

SELECT * FROM Employee
WHERE Gender= 'Male';

SELECT * FROM Employee
WHERE DepartmentId = 1;

SELECT * FROM Employee
ORDER BY Name;

SELECT * FROM Employee
ORDER BY Gender;

SELECT * FROM Employee
ORDER BY Name DESC;

SELECT * FROM Employee
WHERE Name = 'Ehtashamul' AND DepartmentId= 1;

SELECT * FROM Employee
WHERE Name = 'Ehtashamul' AND Gender = 'Male';

SELECT * FROM Employee
WHERE Name = 'Ehtashamul' OR DepartmentId = 2;

SELECT * FROM Employee
WHERE Gender = 'Male' OR DepartmentId = 1;

SELECT * FROM Employee
WHERE NOT Name = 'Ehtashamul';

SELECT * FROM Employee
WHERE  DepartmentId NOT BETWEEN 1 AND 2;

SELECT * FROM Employee
WHERE Name NOT IN ('Nada', 'Nadra');

SELECT * FROM Employee
WHERE Salary BETWEEN 60000 AND 80000;

SELECT * FROM Employee
WHERE Salary BETWEEN 70000 AND 80000;

--SELECT * FROM Employee
--WHERE DateOfBirth BETWEEN 2000-07-23 AND 2003-09-05;

SELECT * FROM Employee
WHERE Salary NOT BETWEEN 70000 AND 80000;

SELECT * FROM Employee
WHERE NOT Salary > 70000; 

SELECT * FROM Employee
WHERE NOT Salary < 70000;

UPDATE Employee
SET Salary = '50000'
WHERE Id = 6;

DELETE FROM Employee WHERE Id = 8;

SELECT TOP 3 * FROM Employee;

SELECT TOP 2 * FROM Employee;

SELECT TOP 60 PERCENT * FROM Employee;

SELECT TOP 3 * FROM Employee
WHERE Gender = 'Male';

SELECT Top 3 * FROM Employee;

SELECT MAX (Salary)
FROM Employee;

SELECT MAX(Salary) AS Second_Highest_Salary
FROM Employee
WHERE Salary <(SELECT MAX(Salary) FROM Employee);

SELECT MAX(Salary) AS Thrid_Highest_Salary
FROM Employee
WHERE Salary <(SELECT MAX (Salary) FROM Employee 
WHERE Salary <(SELECT MAX (Salary) FROM Employee));

SELECT MIN (Salary) AS SmallestSalary
FROM Employee;

SELECT MIN(Salary) AS Second_Smallest_Salary
FROM Employee
WHERE Salary >(SELECT MIN(Salary) FROM Employee);

SELECT MIN(Salary) AS Third_Smallest_Salary
FROM Employee
WHERE Salary >(SELECT MIN (Salary) FROM Employee
WHERE Salary > (SELECT MIN (Salary) FROM Employee));

SELECT MIN(Salary) AS SmallestSalary,Id
FROM Employee
GROUP BY Id;

SELECT MAX(Salary) AS HighestSalary,Name
FROM Employee
GROUP BY Name;

SELECT COUNT(*)
FROM Employee;

SELECT COUNT (Name)
FROM Employee;

SELECT COUNT(Salary)
FROM Employee
WHERE Salary >= 70000;

SELECT COUNT(Salary)
FROM Employee
WHERE Salary > 70000;

SELECT COUNT(Salary)
FROM Employee
WHERE Salary < 70000;

SELECT SUM (Salary)
FROM Employee;

SELECT SUM (Salary)
FROM Employee
WHERE Id = 1;

SELECT SUM (Salary) AS TotalSalary
FROM Employee;

SELECT AVG(Salary) AS Average
FROM Employee;

SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

SELECT * FROM Employee
WHERE Salary <  (SELECT AVG(Salary) FROM Employee);

SELECT * FROM Employee
WHERE Salary = (SELECT AVG(Salary) FROM Employee);

SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

SELECT * FROM Employee
WHERE Name LIKE 'E%';

SELECT * FROM Employee
WHERE Name LIKE 'N%';

SELECT * FROM Employee
WHERE Name LIKE '%E%';

SELECT * FROM Employee
WHERE Name LIKE '%N%';

SELECT * FROM Employee
WHERE Name LIKE 'T%';

SELECT * FROM Employee
WHERE Name LIKE 'E%' OR Name LIKE 'N%';

SELECT * FROM Employee
WHERE Name LIKE 'E%l';

SELECT * FROM Employee
WHERE Name IN ('Ehtashamul','Ehtramul','Nada');

SELECT * FROM Employee
WHERE Name NOT IN ('Ehtashamul','Ehtramul','Nada');

SELECT * FROM Employee
WHERE Salary BETWEEN 70000 AND 80000; 

SELECT * FROM Employee
WHERE Salary NOT BETWEEN 70000 AND 80000;

SELECT * FROM Employee
WHERE Salary BETWEEN 70000 AND 80000
AND Id IN (1,2,3);

SELECT Name AS FULLNAME
FROM Employee;

SELECT * FROM Employee;

SELECT * FROM Department;

INSERT INTO Department (DepartmentId, DepartmentName)  VALUES ('4','Accounting');

DELETE FROM Department WHERE DepartmentName = 'HR';

SELECT * FROM Employee INNER JOIN Department
ON Employee.DepartmentId = Department.DepartmentId
WHERE Department.DepartmentName ='HR'
ORDER BY Employee.Name;

SELECT * FROM Employee LEFT JOIN Department
ON Employee.DepartmentId = Department.DepartmentId
WHERE Department.DepartmentName ='HR'
ORDER BY Employee.Name;

SELECT * FROM Employee RIGHT JOIN Department
ON Employee.DepartmentId = Department.DepartmentId
WHERE Department.DepartmentName ='HR'
ORDER BY Employee.Name;

SELECT * FROM Employee FULL OUTER JOIN Department
ON Employee.DepartmentId = Department.DepartmentId;
WHERE Department.DepartmentName = 'HR'
ORDER BY Employee.Name;

SELECT Employee.Name, Employee.Gender, Employee.DepartmentId, Employee.DateOfBirth, Employee.Salary
FROM Employee
INNER JOIN Department ON Employee.DepartmentId = Department.DepartmentId;

SELECT Employee.Name, Employee.Gender, Employee.DepartmentId, Employee.DateOfBirth, Employee.Salary
FROM Employee
LEFT JOIN Department ON Employee.DepartmentId = Department.DepartmentId;

SELECT Employee.Name, Employee.Gender, Employee.DepartmentId, Employee.DateOfBirth, Employee.Salary
FROM Employee
RIGHT JOIN Department ON Employee.DepartmentId = Department.DepartmentId;

SELECT Employee.Name, Employee.Gender, Employee.DepartmentId, Employee.DateOfBirth, Employee.Salary
FROM Employee
FULL OUTER JOIN Department ON Employee.DepartmentId = Department.DepartmentId;

SELECT DepartmentId FROM Employee
UNION 
SELECT DepartmentId FROM Department;

SELECT DepartmentId FROM Employee
UNION ALL 
SELECT DepartmentId FROM Department;

SELECT COUNT(Salary)  FROM Employee;

SELECT COUNT(Salary) FROM Employee
WHERE Salary >= 70000;






