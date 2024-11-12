SELECT * FROM Employee;

SELECT * FROM Department;

SELECT * FROM Employee
WHERE Name = 'Ehtashamul';

SELECT * FROM Employee
WHERE Gender = 'Male';

SELECT * FROM Employee
WHERE Gender = 'female';

SELECT * FROM Employee
WHERE Id = 1;

SELECT * FROM Employee
WHERE Salary > 70000;

SELECT * FROM Employee
WHERE Salary >= 70000;

SELECT * FROM Employee
ORDER BY Salary;

SELECT * FROM Employee
ORDER BY Salary DESC;

SELECT * FROM Employee
ORDER BY Name;

SELECT * FROM Employee
ORDER BY Name DESC;

SELECT * FROM Employee
ORDER BY Name DESC , Salary ASC;

SELECT * FROM Employee
WHERE Id = 1 AND Salary =80000;

SELECT * FROM Employee
WHERE Id = 1 OR Salary = 70000;

SELECT * FROM Employee
WHERE NOT Name = 'Ehtashamul';

SELECT * FROM Employee
WHERE Salary NOT BETWEEN 70000 AND 80000;

SELECT * FROM Employee
WHERE NOT Salary > 70000;

SELECT * FROM Employee
WHERE NOT Salary < 70000;

SELECT TOP 3 * FROM Employee;

SELECT TOP 70 PERCENT * FROM Employee;

SELECT TOP 3 * FROM Employee
WHERE Id= '1';

SELECT TOP 3 * FROM Employee
ORDER BY Name DESC;

SELECT TOP 3 * FROM Employee
ORDER BY Name;

SELECT MIN(Salary)
FROM Employee;

SELECT MIN(Salary) AS Second_Smallest_Salary
FROM Employee
WHERE Salary >(SELECT MIN(Salary) FROM Employee);

SELECT MIN(Salary) AS Third_Smallest_Salary
FROM Employee
WHERE Salary >(SELECT MIN(Salary) FROM Employee
WHERE Salary >(SELECT MIN(Salary) FROM Employee));

SELECT MAX(Salary)
FROM Employee;

SELECT MAX(Salary) AS Second_Highest_Salary
FROM Employee
WHERE Salary <(SELECT MAX(Salary) FROM Employee);

SELECT MAX(Salary) AS Third_Highest_Salary
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee));

SELECT COUNT(*)
FROM Employee;

SELECT COUNT(*)
FROM Department;

SELECT COUNT (Salary)
FROM Employee
WHERE Salary > 70000;

SELECT COUNT (Salary)
FROM Employee
WHERE Salary >= 70000;

SELECT SUM(Salary)
FROM Employee;

SELECT SUM(Salary)
FROM Employee
WHERE Id = 1; 

SELECT * FROM Employee
WHERE Name IN('Ehtashamul','Ehtramul','Nada');

SELECT * FROM Employee 
INNER JOIN Department
ON Employee.DepartmentId = Department.DepartmentId;

SELECT * FROM Employee
LEFT JOIN Department
ON Employee.DepartmentId = Department.DepartmentId;

SELECT * FROM Employee
RIGHT JOIN Department
ON Employee.DepartmentId = Department.DepartmentId;

SELECT DISTINCT (Salary) FROM Employee E1
WHERE 3-1=(SELECT COUNT(DISTINCT(E2.Salary))FROM Employee E2
		   WHERE E2.Salary>E1.Salary)

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp
WHERE Salary_Rank =3;

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp
WHERE Salary_Rank =4;

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary ASC) AS Salary_Rank
FROM Employee)
AS Temp
WHERE Salary_Rank =4;

SELECT * FROM Employee
ORDER BY Salary DESC;

UPDATE Employee
SET Salary = 65000
WHERE Id= 4;


SELECT Id,Name,Salary,
AS SalaryRank
FROM Employee;

SELECT * FROM (
SELECT Name,Salary,RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp
WHERE Salary_Rank =4;

SELECT Id,Name,Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC)
AS SalaryRank
FROM Employee;

SELECT * FROM (
SELECT Name,Salary,DENSE_RANK()
OVER (ORDER BY Salary DESC) AS Salary_Rank
FROM Employee)
AS Temp
WHERE Salary_Rank =4;

DELETE FROM Employee WHERE Id = 4;

WITH CTE AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY Id, Name, DepartmentId, Salary ORDER BY Id) AS rn
    FROM Employee
)
DELETE FROM CTE
WHERE rn > 1;

SELECT Salary,COUNT (*) 
FROM Employee
GROUP BY Salary
Having COUNT(*) > 1;