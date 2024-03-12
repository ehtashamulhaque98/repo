SELECT * FROM Department

SELECT * FROM Employee

SELECT * FROM Employee
WHERE Salary='35000';

SELECT * FROM Employee
WHERE EmployeeID=2;

SELECT * FROM Employee
WHERE Name='Ehtashamul Haque' AND Salary='80000';

SELECT * FROM Employee
WHERE Name='EHtashamul Haque' OR Salary='80000'

SELECT * FROM Employee
WHERE Salary > 50000;

SELECT * FROM Employee
WHERE Salary < 50000;

SELECT * FROM Employee
WHERE Salary >= 50000;

SELECT * FROM Employee
WHERE Salary <= 50000;

SELECT * FROM Employee
WHERE Salary  <> 50000;

SELECT * FROM Employee
WHERE Salary BETWEEN  50000 AND 80000;

SELECT * FROM Employee
WHERE NOT Name='Ehtashamul Haque';

SELECT * FROM Employee
WHERE Name='Ehtashamul Haque' AND Department='Development' OR Salary='80000';

SELECT * FROM Employee
ORDER BY Name;

SELECT * FROM Employee
ORDER BY Name DESC;

SELECT * FROM Employee
ORDER BY Name ASC;

SELECT * FROM Employee
ORDER BY Name ASC, Salary DESC;

SELECT TOP 12 * FROM Employee

SELECT TOP 50 PERCENT * FROM Employee

SELECT TOP 5 * FROM Employee
WHERE Salary > '50000'

SELECT MIN(Salary) AS SmallestSalary 
FROM Employee;

SELECT MAX(Salary) AS LargestSalary
FROM Employee;

SELECT COUNT(Salary)
FROM Employee

SELECT AVG(Salary)
FROM Employee;

SELECT SUM(Salary)
FROM Employee;

SELECT * FROM Employee
WHERE Name LIKE 'a%';

SELECT * FROM Employee
WHERE Name LIKE '%a';

SELECT * FROM Employee
WHERE Name LIKE '%e%';

SELECT * FROM Employee
WHERE Name LIKE '_a%';

SELECT * FROM Employee
WHERE Name LIKE 'a_%';

SELECT * FROM Employee
WHERE Name LIKE 'a__%';

SELECT * FROM Employee
WHERE Name LIKE 'a%e';

SELECT * FROM Employee
WHERE Salary IN ('80000', '75000', '76000');

SELECT * FROM Employee
WHERE Salary NOT IN ('80000', '75000', '76000');

SELECT * FROM Employee
WHERE Salary BETWEEN 50000 AND 80000;

SELECT * FROM Employee
WHERE Salary NOT BETWEEN 50000 AND 80000;



